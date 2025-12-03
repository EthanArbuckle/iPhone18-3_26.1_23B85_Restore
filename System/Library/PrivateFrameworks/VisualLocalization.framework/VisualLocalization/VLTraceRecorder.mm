@interface VLTraceRecorder
+ (NSURL)defaultDirectory;
- (VLTraceRecorder)initWithDirectory:(id)directory;
- (void)_beginTraceIfNecessary;
- (void)_finishOnIsolationQueue;
- (void)_recordAttemptOnIsolationQueue:(id)queue;
- (void)finish;
- (void)recordAttempt:(id)attempt;
- (void)start;
@end

@implementation VLTraceRecorder

+ (NSURL)defaultDirectory
{
  if (_MergedGlobals_2 == -1)
  {
    v3 = qword_281181C80;
  }

  else
  {
    dispatch_once(&_MergedGlobals_2, &__block_literal_global_2);
    v3 = qword_281181C80;
  }

  return v3;
}

uint64_t __35__VLTraceRecorder_defaultDirectory__block_invoke()
{
  qword_281181C80 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Caches/VisualLocalization/Traces" isDirectory:1];

  return MEMORY[0x2821F96F8]();
}

- (VLTraceRecorder)initWithDirectory:(id)directory
{
  directoryCopy = directory;
  v13.receiver = self;
  v13.super_class = VLTraceRecorder;
  v5 = [(VLTraceRecorder *)&v13 init];
  if (v5)
  {
    if (([directoryCopy isFileURL] & 1) == 0)
    {
      v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Trace directory must be a file URL" userInfo:0];
      objc_exception_throw(v12);
    }

    v6 = [directoryCopy copy];
    destinationDirectory = v5->_destinationDirectory;
    v5->_destinationDirectory = v6;

    v8 = geo_dispatch_queue_create_with_qos();
    queue = v5->_queue;
    v5->_queue = v8;

    v5->_began.lock._os_unfair_lock_opaque = 0;
    v5->_began.didRun = 0;
    v5->_finished.lock._os_unfair_lock_opaque = 0;
    v5->_finished.didRun = 0;
    v10 = v5;
  }

  return v5;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__VLTraceRecorder_start__block_invoke;
  block[3] = &unk_279E2DA70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)finish
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v5 = __25__VLTraceRecorder_finish__block_invoke;
  v6 = &unk_279E2DA70;
  selfCopy = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_finished);
  if (!self->_finished.didRun)
  {
    self->_finished.didRun = 1;
    v5(v3);
  }

  os_unfair_lock_unlock(&self->_finished);
}

void __25__VLTraceRecorder_finish__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__VLTraceRecorder_finish__block_invoke_2;
  block[3] = &unk_279E2DA70;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_beginTraceIfNecessary
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v5 = __41__VLTraceRecorder__beginTraceIfNecessary__block_invoke;
  v6 = &unk_279E2DA70;
  selfCopy = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_began);
  if (!self->_began.didRun)
  {
    self->_began.didRun = 1;
    v5(v3);
  }

  os_unfair_lock_unlock(&self->_began);
}

void __41__VLTraceRecorder__beginTraceIfNecessary__block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAA68];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEBB0] localTimeZone];
  v5 = [v2 stringFromDate:v3 timeZone:v4 formatOptions:371];

  v6 = MEMORY[0x277CBEBC0];
  v7 = NSTemporaryDirectory();
  v8 = [v6 fileURLWithPath:v7];
  v9 = [v8 URLByAppendingPathComponent:@"com.apple.VisualLocalization"];
  v10 = [v9 URLByAppendingPathComponent:v5];
  v11 = *(a1 + 32);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = *(*(a1 + 32) + 40);
  v68 = 0;
  LODWORD(v9) = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v68];
  v15 = v68;

  if (!v9)
  {
    if (qword_281181C90 == -1)
    {
      v63 = qword_281181C88;
      if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        v17 = *(a1 + 32);
        v18 = *(v17 + 40);
        *(v17 + 40) = 0;

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_281181C90, &__block_literal_global_75);
      v63 = qword_281181C88;
      if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }
    }

    *buf = 138543362;
    v70 = v15;
    _os_log_impl(&dword_27103D000, v63, OS_LOG_TYPE_ERROR, "Failed to create trace directory: %{public}@", buf, 0xCu);
    goto LABEL_10;
  }

  if (qword_281181C90 == -1)
  {
    v61 = qword_281181C88;
    if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  dispatch_once(&qword_281181C90, &__block_literal_global_75);
  v61 = qword_281181C88;
  if (os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_DEBUG))
  {
LABEL_5:
    v16 = *(*(a1 + 32) + 40);
    *buf = 138543362;
    v70 = v16;
    _os_log_impl(&dword_27103D000, v61, OS_LOG_TYPE_DEBUG, "Created temporary trace directory: %{public}@", buf, 0xCu);
  }

LABEL_11:
  v19 = [*(*(a1 + 32) + 40) URLByAppendingPathComponent:@"images"];
  v20 = *(a1 + 32);
  v21 = *(v20 + 48);
  *(v20 + 48) = v19;

  v22 = [MEMORY[0x277CCAA00] defaultManager];
  v23 = *(*(a1 + 32) + 48);
  v67 = v15;
  v24 = [v22 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:&v67];
  v25 = v67;

  if (v24)
  {
    goto LABEL_16;
  }

  if (qword_281181C90 != -1)
  {
    dispatch_once(&qword_281181C90, &__block_literal_global_75);
    v26 = qword_281181C88;
    if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v26 = qword_281181C88;
  if (os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    *buf = 138543362;
    v70 = v25;
    _os_log_impl(&dword_27103D000, v26, OS_LOG_TYPE_ERROR, "Failed to create images directory: %{public}@", buf, 0xCu);
  }

LABEL_15:
  v27 = *(a1 + 32);
  v28 = *(v27 + 40);
  *(v27 + 40) = 0;

  v29 = *(a1 + 32);
  v30 = *(v29 + 48);
  *(v29 + 48) = 0;

LABEL_16:
  v31 = [*(*(a1 + 32) + 40) URLByAppendingPathComponent:@"parameters"];
  v32 = *(a1 + 32);
  v33 = *(v32 + 56);
  *(v32 + 56) = v31;

  v34 = [MEMORY[0x277CCAA00] defaultManager];
  v35 = *(*(a1 + 32) + 56);
  v66 = v25;
  v36 = [v34 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:&v66];
  v37 = v66;

  if (v36)
  {
    goto LABEL_21;
  }

  if (qword_281181C90 != -1)
  {
    dispatch_once(&qword_281181C90, &__block_literal_global_75);
    v38 = qword_281181C88;
    if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v38 = qword_281181C88;
  if (os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
  {
LABEL_19:
    *buf = 138543362;
    v70 = v37;
    _os_log_impl(&dword_27103D000, v38, OS_LOG_TYPE_ERROR, "Failed to create parameters directory: %{public}@", buf, 0xCu);
  }

LABEL_20:
  v39 = *(a1 + 32);
  v40 = *(v39 + 40);
  *(v39 + 40) = 0;

  v41 = *(a1 + 32);
  v42 = *(v41 + 48);
  *(v41 + 48) = 0;

  v43 = *(a1 + 32);
  v44 = *(v43 + 56);
  *(v43 + 56) = 0;

LABEL_21:
  v45 = [*(*(a1 + 32) + 40) URLByAppendingPathComponent:@"results"];
  v46 = *(a1 + 32);
  v47 = *(v46 + 64);
  *(v46 + 64) = v45;

  v48 = [MEMORY[0x277CCAA00] defaultManager];
  v49 = *(*(a1 + 32) + 64);
  v65 = v37;
  v50 = [v48 createDirectoryAtURL:v49 withIntermediateDirectories:1 attributes:0 error:&v65];
  v51 = v65;

  if ((v50 & 1) == 0)
  {
    if (qword_281181C90 == -1)
    {
      v52 = qword_281181C88;
      if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
      {
LABEL_25:
        v53 = *(a1 + 32);
        v54 = *(v53 + 40);
        *(v53 + 40) = 0;

        v55 = *(a1 + 32);
        v56 = *(v55 + 48);
        *(v55 + 48) = 0;

        v57 = *(a1 + 32);
        v58 = *(v57 + 56);
        *(v57 + 56) = 0;

        v59 = *(a1 + 32);
        v60 = *(v59 + 64);
        *(v59 + 64) = 0;

        goto LABEL_26;
      }
    }

    else
    {
      dispatch_once(&qword_281181C90, &__block_literal_global_75);
      v52 = qword_281181C88;
      if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }
    }

    *buf = 138543362;
    v70 = v51;
    _os_log_impl(&dword_27103D000, v52, OS_LOG_TYPE_ERROR, "Failed to create results directory: %{public}@", buf, 0xCu);
    goto LABEL_25;
  }

LABEL_26:
}

- (void)recordAttempt:(id)attempt
{
  attemptCopy = attempt;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__VLTraceRecorder_recordAttempt___block_invoke;
  v7[3] = &unk_279E2DA98;
  v7[4] = self;
  v8 = attemptCopy;
  v6 = attemptCopy;
  dispatch_async(queue, v7);
}

- (void)_recordAttemptOnIsolationQueue:(id)queue
{
  v42 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  dispatch_assert_queue_V2(self->_queue);
  [(VLTraceRecorder *)self _beginTraceIfNecessary];
  if (self->_baseDirectory)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    pngData = [queueCopy pngData];
    if (!pngData)
    {
      goto LABEL_8;
    }

    v8 = [(NSURL *)self->_imagesDirectory URLByAppendingPathComponent:uUIDString];
    v9 = [v8 URLByAppendingPathExtension:@"png"];

    v39 = 0;
    v10 = [pngData writeToURL:v9 options:0 error:&v39];
    v11 = v39;
    if ((v10 & 1) == 0)
    {
      if (qword_281181C90 != -1)
      {
        dispatch_once(&qword_281181C90, &__block_literal_global_75);
        v12 = qword_281181C88;
        if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v12 = qword_281181C88;
      if (os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
      {
LABEL_6:
        *buf = 138543362;
        v41 = v11;
        _os_log_impl(&dword_27103D000, v12, OS_LOG_TYPE_ERROR, "Failed to write image: %{public}@", buf, 0xCu);
      }
    }

LABEL_7:

LABEL_8:
    inputParameters = [queueCopy inputParameters];
    v14 = [inputParameters mutableCopy];

    v15 = 0x277CCA000uLL;
    if (!v14)
    {
      goto LABEL_19;
    }

    [v14 setObject:uUIDString forKeyedSubscript:@"uuid"];
    v38 = 0;
    v16 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v14 options:0 error:&v38];
    v17 = v38;
    if (!v16)
    {
      if (qword_281181C90 == -1)
      {
        v23 = qword_281181C88;
        if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }
      }

      else
      {
        dispatch_once(&qword_281181C90, &__block_literal_global_75);
        v23 = qword_281181C88;
        if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }
      }

      *buf = 138543362;
      v41 = v17;
      _os_log_impl(&dword_27103D000, v23, OS_LOG_TYPE_ERROR, "Failed to JSON-encode input parameters: %{public}@", buf, 0xCu);
      goto LABEL_18;
    }

    v18 = [(NSURL *)self->_parametersDirectory URLByAppendingPathComponent:uUIDString];
    v19 = [v18 URLByAppendingPathExtension:@"json"];

    v37 = 0;
    v20 = [v16 writeToURL:v19 options:0 error:&v37];
    v21 = v37;
    if ((v20 & 1) == 0)
    {
      if (qword_281181C90 != -1)
      {
        dispatch_once(&qword_281181C90, &__block_literal_global_75);
        v22 = qword_281181C88;
        if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v22 = qword_281181C88;
      if (os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        *buf = 138543362;
        v41 = v21;
        _os_log_impl(&dword_27103D000, v22, OS_LOG_TYPE_ERROR, "Failed to write input parameters: %{public}@", buf, 0xCu);
      }
    }

LABEL_14:

    v15 = 0x277CCA000;
LABEL_18:

LABEL_19:
    results = [queueCopy results];
    v25 = [results mutableCopy];

    if (!v25)
    {
LABEL_30:

      goto LABEL_31;
    }

    [v25 setObject:uUIDString forKeyedSubscript:@"uuid"];
    v26 = *(v15 + 2720);
    v36 = 0;
    v27 = [v26 dataWithJSONObject:v25 options:0 error:&v36];
    v28 = v36;
    if (!v27)
    {
      if (qword_281181C90 == -1)
      {
        v34 = qword_281181C88;
        if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }
      }

      else
      {
        dispatch_once(&qword_281181C90, &__block_literal_global_75);
        v34 = qword_281181C88;
        if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }
      }

      *buf = 138543362;
      v41 = v28;
      _os_log_impl(&dword_27103D000, v34, OS_LOG_TYPE_ERROR, "Failed to JSON-encode results: %{public}@", buf, 0xCu);
      goto LABEL_29;
    }

    v29 = [(NSURL *)self->_resultsDirectory URLByAppendingPathComponent:uUIDString];
    v30 = [v29 URLByAppendingPathExtension:@"json"];

    v35 = 0;
    v31 = [v27 writeToURL:v30 options:0 error:&v35];
    v32 = v35;
    if ((v31 & 1) == 0)
    {
      if (qword_281181C90 != -1)
      {
        dispatch_once(&qword_281181C90, &__block_literal_global_75);
        v33 = qword_281181C88;
        if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v33 = qword_281181C88;
      if (os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
      {
LABEL_24:
        *buf = 138543362;
        v41 = v32;
        _os_log_impl(&dword_27103D000, v33, OS_LOG_TYPE_ERROR, "Failed to write results: %{public}@", buf, 0xCu);
      }
    }

LABEL_25:

LABEL_29:
    goto LABEL_30;
  }

LABEL_31:
}

- (void)_finishOnIsolationQueue
{
  selfCopy = self;
  v55 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)selfCopy->_destinationDirectory path];
  v5 = [defaultManager fileExistsAtPath:path];

  if ((v5 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    destinationDirectory = selfCopy->_destinationDirectory;
    v51 = 0;
    v8 = [defaultManager2 createDirectoryAtURL:destinationDirectory withIntermediateDirectories:1 attributes:0 error:&v51];
    v9 = v51;

    if (!v8)
    {
      if (qword_281181C90 == -1)
      {
        v40 = qword_281181C88;
        if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }
      }

      else
      {
        dispatch_once(&qword_281181C90, &__block_literal_global_75);
        v40 = qword_281181C88;
        if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }
      }

      *buf = 138543362;
      v54 = v9;
      _os_log_impl(&dword_27103D000, v40, OS_LOG_TYPE_ERROR, "Failed to create trace directory: %{public}@", buf, 0xCu);
      goto LABEL_29;
    }
  }

  v10 = selfCopy->_destinationDirectory;
  v11 = MEMORY[0x277CCACA8];
  lastPathComponent = [(NSURL *)selfCopy->_baseDirectory lastPathComponent];
  v13 = [v11 stringWithFormat:@"VisualLocalization.%@", lastPathComponent];
  v14 = [(NSURL *)v10 URLByAppendingPathComponent:v13];
  v15 = [v14 URLByAppendingPathExtension:@"tar.gz"];

  if (qword_281181C90 == -1)
  {
    v16 = qword_281181C88;
    if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  dispatch_once(&qword_281181C90, &__block_literal_global_75);
  v16 = qword_281181C88;
  if (os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_INFO))
  {
LABEL_6:
    *buf = 138543362;
    v54 = v15;
    _os_log_impl(&dword_27103D000, v16, OS_LOG_TYPE_INFO, "Writing trace archive to %{public}@", buf, 0xCu);
  }

LABEL_7:
  archive_write_new();
  archive_write_set_format_v7tar();
  archive_write_add_filter_gzip();
  v41 = v15;
  path2 = [v15 path];
  [path2 UTF8String];
  archive_write_open_filename();

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  path3 = [(NSURL *)selfCopy->_baseDirectory path];
  v20 = [defaultManager3 subpathsAtPath:path3];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v20;
  v21 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v43 = *v48;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v48 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v47 + 1) + 8 * i);
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = [(NSURL *)selfCopy->_baseDirectory URLByAppendingPathComponent:v24];
        v46 = 0;
        defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
        path4 = [v27 path];
        v30 = [defaultManager4 fileExistsAtPath:path4 isDirectory:&v46];
        v31 = v46;

        if (v30 && (v31 & 1) == 0)
        {
          v45 = 0;
          v32 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v27 options:0 error:&v45];
          v33 = v45;
          if (v32)
          {
            archive_entry_new();
            [v24 UTF8String];
            archive_entry_set_pathname();
            [v32 length];
            archive_entry_set_size();
            archive_entry_set_filetype();
            archive_entry_set_perm();
            archive_write_header();
            archive_entry_free();
            [v32 bytes];
            [v32 length];
            archive_write_data();
          }

          else if (qword_281181C90 == -1)
          {
            v34 = qword_281181C88;
            if (os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }
          }

          else
          {
            dispatch_once(&qword_281181C90, &__block_literal_global_75);
            v34 = qword_281181C88;
            if (os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
            {
LABEL_21:
              *buf = 138543362;
              v54 = v33;
              _os_log_impl(&dword_27103D000, v34, OS_LOG_TYPE_ERROR, "Failed to read data during archiving: %{public}@", buf, 0xCu);
            }
          }
        }

        objc_autoreleasePoolPop(v25);
        selfCopy = v26;
      }

      v22 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v22);
  }

  archive_write_close();
  archive_write_free();
  defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
  baseDirectory = selfCopy->_baseDirectory;
  v44 = 0;
  v37 = [defaultManager5 removeItemAtURL:baseDirectory error:&v44];
  v38 = v44;

  if (v37)
  {
    goto LABEL_28;
  }

  if (qword_281181C90 != -1)
  {
    dispatch_once(&qword_281181C90, &__block_literal_global_75);
    v39 = qword_281181C88;
    if (!os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v39 = qword_281181C88;
  if (os_log_type_enabled(qword_281181C88, OS_LOG_TYPE_ERROR))
  {
LABEL_27:
    *buf = 138543362;
    v54 = v38;
    _os_log_impl(&dword_27103D000, v39, OS_LOG_TYPE_ERROR, "Error removing temporary directory: %{public}@", buf, 0xCu);
  }

LABEL_28:

  v9 = v41;
LABEL_29:
}

@end