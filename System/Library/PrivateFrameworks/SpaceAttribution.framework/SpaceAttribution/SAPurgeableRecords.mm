@interface SAPurgeableRecords
+ (id)newWithBGTask:(id)task withRunMode:(unint64_t)mode;
- (SAPurgeableRecords)initWithBGTask:(id)task withRunMode:(unint64_t)mode;
- (unsigned)waitForProcessingSUPurgeableUrgencyFiles;
- (void)asyncStartProcessingSUPurgeableUrgencyFiles:(id)files;
- (void)processPurgeableAttributionTagsOnRelevantVolumes:(id)volumes reply:(id)reply;
@end

@implementation SAPurgeableRecords

- (SAPurgeableRecords)initWithBGTask:(id)task withRunMode:(unint64_t)mode
{
  taskCopy = task;
  v14.receiver = self;
  v14.super_class = SAPurgeableRecords;
  v8 = [(SAPurgeableRecords *)&v14 init];
  if (v8)
  {
    v9 = dispatch_group_create();
    group = v8->_group;
    v8->_group = v9;

    v11 = dispatch_get_global_queue(2, 0);
    queue = v8->_queue;
    v8->_queue = v11;

    objc_storeStrong(&v8->_task, task);
    v8->_mode = mode;
  }

  return v8;
}

+ (id)newWithBGTask:(id)task withRunMode:(unint64_t)mode
{
  taskCopy = task;
  v7 = [[self alloc] initWithBGTask:taskCopy withRunMode:mode];

  return v7;
}

- (void)asyncStartProcessingSUPurgeableUrgencyFiles:(id)files
{
  filesCopy = files;
  group = self->_group;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002C6B8;
  v8[3] = &unk_1000658C8;
  v9 = filesCopy;
  selfCopy = self;
  v7 = filesCopy;
  dispatch_group_async(group, queue, v8);
}

- (unsigned)waitForProcessingSUPurgeableUrgencyFiles
{
  v3 = +[SAAppSizerScan appSizerScan];
  mode = self->_mode;
  if (mode == 2)
  {
    group = self->_group;
    v11 = dispatch_time(0, 60000000000);
    dispatch_group_wait(group, v11);
LABEL_8:
    v12 = 0;
  }

  else if (mode == 1)
  {
    while (1)
    {
      v5 = self->_group;
      v6 = dispatch_time(0, 2000000000);
      v7 = dispatch_group_wait(v5, v6);
      task = [(SAPurgeableRecords *)self task];
      shouldDefer = [task shouldDefer];

      if (shouldDefer)
      {
        break;
      }

      if ([v3 runMode] == 2)
      {
        v14 = SALog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315138;
          v19 = "[SAPurgeableRecords waitForProcessingSUPurgeableUrgencyFiles]";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Task interrupted, stopping", &v18, 0xCu);
        }

        v12 = 4;
        goto LABEL_18;
      }

      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v14 = SALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[SAPurgeableRecords waitForProcessingSUPurgeableUrgencyFiles]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Task should defer, stopping", &v18, 0xCu);
    }

    v12 = 2;
LABEL_18:

    v15 = self->_group;
    v16 = dispatch_time(0, 60000000000);
    dispatch_group_wait(v15, v16);
  }

  else
  {
    v13 = SALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100040728(v3, v13);
    }

    v12 = 3;
  }

  return v12;
}

- (void)processPurgeableAttributionTagsOnRelevantVolumes:(id)volumes reply:(id)reply
{
  volumesCopy = volumes;
  replyCopy = reply;
  v49 = +[SAAppSizerScan appSizerScan];
  v7 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = volumesCopy;
  v40 = [v8 countByEnumeratingWithState:&v57 objects:v71 count:16];
  v9 = 0;
  v10 = 0;
  if (v40)
  {
    v42 = *v58;
    *(&v11 + 1) = 3584;
    *&v11 = 67109634;
    v38 = v11;
    v39 = replyCopy;
    v43 = v8;
    v41 = v7;
    while (1)
    {
      v12 = 0;
LABEL_4:
      if (*v58 != v42)
      {
        objc_enumerationMutation(v8);
      }

      v44 = v12;
      v13 = *(*(&v57 + 1) + 8 * v12);
      v14 = SALog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "[SAPurgeableRecords processPurgeableAttributionTagsOnRelevantVolumes:reply:]";
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s for %@", buf, 0x16u);
      }

      v56.tv_sec = 0;
      *&v56.tv_usec = 0;
      v55.tv_sec = 0;
      *&v55.tv_usec = 0;
      v15 = objc_opt_new();
      [v7 setObject:v15 forKey:v13];
      fileSystemRepresentation = [v13 fileSystemRepresentation];
      v16 = malloc_type_malloc(0x8000uLL, 0x1000040FA0F61DDuLL);
      if (!v16)
      {
        break;
      }

      v69 = 0u;
      v68 = 0u;
      *&buf[16] = 512;
      v70 = v16;
      v45 = v16;
      v46 = (v16 + 56);
      *buf = xmmword_10004CDC0;
      while (1)
      {
        v17 = objc_autoreleasePoolPush();
        gettimeofday(&v56, 0);
        if ([v49 shouldDefer:self->_mode BGTask:self->_task])
        {
          free(v45);
          objc_autoreleasePoolPop(v17);

          v7 = v41;
          goto LABEL_27;
        }

        v18 = fsctl(fileSystemRepresentation, 0xC0404A83uLL, buf, 0);
        if (v18)
        {
          break;
        }

        gettimeofday(&v55, 0);
        tv_usec = v55.tv_usec;
        v20 = v56.tv_usec;
        tv_sec = v55.tv_sec;
        v22 = v56.tv_sec;
        v23 = *(&v69 + 1);
        if (*(&v69 + 1))
        {
          v50 = v55.tv_sec;
          v51 = v56.tv_usec;
          v52 = v55.tv_usec;
          v53 = v9;
          v54 = v10;
          v24 = 0;
          v25 = v46;
          do
          {
            v26 = *(v25 - 1);
            v27 = *v25;
            v28 = [NSNumber numberWithUnsignedLongLong:*v25, v38];
            v29 = [v15 objectForKeyedSubscript:v28];

            if (v29)
            {
              v26 += [v29 unsignedLongLongValue];
            }

            v25 += 8;
            v30 = [NSNumber numberWithUnsignedLongLong:v26];
            v31 = [NSNumber numberWithUnsignedLongLong:v27];
            [v15 setObject:v30 forKeyedSubscript:v31];

            ++v24;
            v23 = *(&v69 + 1);
          }

          while (*(&v69 + 1) > v24);
          v9 = v53;
          v10 = v54;
          v20 = v51;
          tv_usec = v52;
          tv_sec = v50;
        }

        v9 = v9 - v20 + tv_usec + 1000000 * (tv_sec - v22);
        v10 += v23;
        objc_autoreleasePoolPop(v17);
        if (!v69)
        {
          goto LABEL_23;
        }
      }

      v32 = v18;
      v33 = SALog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = *__error();
        v35 = __error();
        v36 = strerror(*v35);
        *v61 = v38;
        v62 = v32;
        v63 = 1024;
        v64 = v34;
        v65 = 2080;
        v66 = v36;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "err %d, errno %d %s", v61, 0x18u);
      }

      objc_autoreleasePoolPop(v17);
LABEL_23:
      free(v45);

      v8 = v43;
      v12 = v44 + 1;
      v7 = v41;
      if ((v44 + 1) != v40)
      {
        goto LABEL_4;
      }

      replyCopy = v39;
      v40 = [v43 countByEnumeratingWithState:&v57 objects:v71 count:16];
      if (!v40)
      {
        goto LABEL_25;
      }
    }

    v37 = SALog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1000406A8(v37);
    }

LABEL_27:
    v8 = v43;

    replyCopy = v39;
  }

  else
  {
LABEL_25:

    replyCopy[2](replyCopy, v7, v9, v10);
  }
}

@end