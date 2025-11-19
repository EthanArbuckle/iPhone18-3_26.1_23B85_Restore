@interface TSUZipFileWriter
+ (void)zipDirectoryAtURL:(id)a3 customDirectoryFilename:(id)a4 toURL:(id)a5 queue:(id)a6 progressHandler:(id)a7;
+ (void)zipDirectoryAtURL:(id)a3 toURL:(id)a4 queue:(id)a5 completion:(id)a6;
- (TSUZipFileWriter)initWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (TSUZipFileWriter)initWithZipFileArchive:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)prepareWriteChannelWithCloseCompletionHandler:(id)a3;
- (void)copyEntriesFromZipFileWriter:(id)a3 readingFromURL:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)copyRemainingEntries:(id)a3 fromArchive:(id)a4 progress:(id)a5 completionHandler:(id)a6;
@end

@implementation TSUZipFileWriter

- (TSUZipFileWriter)initWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v21.receiver = self;
  v21.super_class = TSUZipFileWriter;
  v9 = [(TSUZipWriter *)&v21 initWithOptions:a4];
  if (v9)
  {
    objc_initWeak(&location, v9);
    v10 = [TSUFileIOChannel alloc];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_2770DEB58;
    v18 = &unk_27A703248;
    objc_copyWeak(&v19, &location);
    v11 = [(TSUFileIOChannel *)v10 initForRandomWritingURL:v8 error:a5 cleanupHandler:&v15];
    writeChannel = v9->_writeChannel;
    v9->_writeChannel = v11;

    v13 = v9->_writeChannel;
    if (v13)
    {
      [(TSURandomWriteChannel *)v13 setLowWater:-1, v15, v16, v17, v18];
    }

    else
    {

      v9 = 0;
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (TSUZipFileWriter)initWithZipFileArchive:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 URL];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_2770DEFA0;
  v39 = sub_2770DEFB0;
  v40 = 0;
  v34.receiver = self;
  v34.super_class = TSUZipFileWriter;
  v10 = [(TSUZipWriter *)&v34 initWithOptions:a4];
  if (!v10)
  {
    v11 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2770DEFB8;
  v32[3] = &unk_27A703270;
  v11 = v10;
  v33 = v11;
  [v8 enumerateEntriesUsingBlock:v32];
  if ([v8 endOfLastEntry] <= 0)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileWriter initWithZipFileArchive:options:error:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:69 isFatal:0 description:"Unexpected offset"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  -[TSUZipWriter setEntryInsertionOffset:](v11, "setEntryInsertionOffset:", [v8 endOfLastEntry]);
  objc_initWeak(&location, v11);
  v14 = [TSUFileIOChannel alloc];
  v15 = v36;
  obj = v36[5];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2770DEFC0;
  v28[3] = &unk_27A703248;
  objc_copyWeak(&v29, &location);
  v16 = [(TSUFileIOChannel *)v14 initForRandomReadingWritingURL:v9 error:&obj cleanupHandler:v28];
  objc_storeStrong(v15 + 5, obj);
  writeChannel = v11->_writeChannel;
  v11->_writeChannel = v16;

  v18 = v11->_writeChannel;
  if (v18)
  {
    [(TSURandomWriteChannel *)v18 setLowWater:-1];
    v19 = dispatch_semaphore_create(0);
    v20 = v11->_writeChannel;
    v21 = [v8 endOfLastEntry];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2770DF040;
    v25[3] = &unk_27A702C68;
    v27 = &v35;
    v22 = v19;
    v26 = v22;
    [(TSURandomWriteChannel *)v20 truncateToLength:v21 completion:v25];
    dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v36[5])
  {

    v11 = 0;
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  if (a5)
  {
LABEL_9:
    *a5 = v36[5];
  }

LABEL_10:
  v23 = v11;
  _Block_object_dispose(&v35, 8);

  return v23;
}

- (void)copyEntriesFromZipFileWriter:(id)a3 readingFromURL:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 isClosed])
  {
    v30 = 0;
    v13 = [[TSUZipFileArchive alloc] initWithWriter:v10 forReadingFromURL:v11 options:a5 error:&v30];
    v14 = v30;
    v15 = v14;
    if (v13)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[TSUZipArchive entriesCount](v13, "entriesCount")}];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_2770DF370;
      v23[3] = &unk_27A703298;
      v17 = v16;
      v24 = v17;
      v25 = &v26;
      [(TSUZipArchive *)v13 enumerateEntriesUsingBlock:v23];
      [v17 sortUsingComparator:&unk_28862B380];
      v18 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:v27[3]];
      [(TSUZipFileWriter *)self copyRemainingEntries:v17 fromArchive:v13 progress:v18 completionHandler:v12];

      _Block_object_dispose(&v26, 8);
    }

    else if (v12)
    {
      if (v14)
      {
        v12[2](v12, v14);
      }

      else
      {
        v22 = [MEMORY[0x277CCA9B8] tsu_fileWriteUnknownErrorWithUserInfo:0];
        v12[2](v12, v22);
      }
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileWriter copyEntriesFromZipFileWriter:readingFromURL:options:completionHandler:]"];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:112 isFatal:0 description:"Closed writer must be closed."];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (v12)
    {
      v21 = [MEMORY[0x277CCA9B8] tsu_fileWriteUnknownErrorWithUserInfo:0];
      v12[2](v12, v21);
    }
  }
}

- (void)copyRemainingEntries:(id)a3 fromArchive:(id)a4 progress:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 firstObject];
  if (v14)
  {
    [v10 removeObjectAtIndex:0];
    v15 = [v11 streamReadChannelForEntry:v14];
    if (v15)
    {
      v16 = [v14 name];
      v17 = [v14 lastModificationDate];
      v22 = [v14 size];
      v21 = [v14 CRC];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_2770DF6B4;
      v23[3] = &unk_27A7032E0;
      v29 = v13;
      v24 = v12;
      v25 = v14;
      v26 = self;
      v27 = v10;
      v28 = v11;
      [(TSUZipWriter *)self writeEntryWithName:v16 force32BitSize:0 lastModificationDate:v17 size:v22 CRC:v21 fromReadChannel:v15 completion:v23];
    }

    else
    {
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileWriter copyRemainingEntries:fromArchive:progress:completionHandler:]"];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileWriter.m"];
      [TSUAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:156 isFatal:0 description:"invalid nil value for '%{public}s'", "channel"];

      +[TSUAssertionHandler logBacktraceThrottled];
      if (v13)
      {
        v20 = [MEMORY[0x277CCA9B8] tsu_fileWriteUnknownErrorWithUserInfo:0];
        (*(v13 + 2))(v13, v20);
      }
    }
  }

  else if (v13)
  {
    (*(v13 + 2))(v13, 0);
  }
}

- (id)prepareWriteChannelWithCloseCompletionHandler:(id)a3
{
  v4 = a3;
  if (self->_writeChannelCompletionHandler)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileWriter prepareWriteChannelWithCloseCompletionHandler:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:177 isFatal:0 description:"expected nil value for '%{public}s'", "_writeChannelCompletionHandler"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v7 = [v4 copy];
  writeChannelCompletionHandler = self->_writeChannelCompletionHandler;
  self->_writeChannelCompletionHandler = v7;

  writeChannel = self->_writeChannel;
  if (!writeChannel)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileWriter prepareWriteChannelWithCloseCompletionHandler:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:180 isFatal:0 description:"invalid nil value for '%{public}s'", "_writeChannel"];

    +[TSUAssertionHandler logBacktraceThrottled];
    writeChannel = self->_writeChannel;
  }

  v12 = writeChannel;

  return writeChannel;
}

+ (void)zipDirectoryAtURL:(id)a3 toURL:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2770DF9DC;
  v12[3] = &unk_27A703308;
  v13 = v10;
  v11 = v10;
  [a1 zipDirectoryAtURL:a3 customDirectoryFilename:0 toURL:a4 queue:a5 progressHandler:v12];
}

+ (void)zipDirectoryAtURL:(id)a3 customDirectoryFilename:(id)a4 toURL:(id)a5 queue:(id)a6 progressHandler:(id)a7
{
  v114[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v71 = a4;
  v12 = a5;
  queue = a6;
  v73 = a7;
  v66 = v11;
  v67 = v12;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:199 isFatal:0 description:"invalid nil value for '%{public}s'", "directoryURL"];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (v67)
    {
      goto LABEL_6;
    }
  }

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]"];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileWriter.m"];
  [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:200 isFatal:0 description:"invalid nil value for '%{public}s'", "URL"];

  +[TSUAssertionHandler logBacktraceThrottled];
LABEL_6:
  if (!queue)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:201 isFatal:0 description:"invalid nil value for '%{public}s'", "queue"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!v73)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]"];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:202 isFatal:0 description:"invalid nil value for '%{public}s'", "progressHandler"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v111 = 0;
  v72 = [[TSUZipFileWriter alloc] initWithURL:v67 error:&v111];
  v21 = v111;
  v65 = v21;
  if (v72)
  {
    v22 = [v11 path];
    v23 = v22;
    if (!v71)
    {
      v24 = [v22 stringByDeletingLastPathComponent];

      v23 = v24;
    }

    v25 = [v23 stringByStandardizingPath];
    v64 = [v25 precomposedStringWithCanonicalMapping];

    v70 = [v64 length];
    v26 = [MEMORY[0x277CCAA00] defaultManager];
    v27 = *MEMORY[0x277CBE868];
    v28 = *MEMORY[0x277CBE838];
    v114[0] = *MEMORY[0x277CBE868];
    v114[1] = v28;
    v76 = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:2];
    v30 = [v26 enumeratorAtURL:v11 includingPropertiesForKeys:v29 options:0 errorHandler:0];

    v107[0] = 0;
    v107[1] = v107;
    v107[2] = 0x2020000000;
    v107[3] = 0;
    v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = v30;
    v31 = [obj countByEnumeratingWithState:&v103 objects:v113 count:16];
    if (v31)
    {
      v77 = 0;
      v32 = *v104;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v104 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v103 + 1) + 8 * i);
          v102 = 0;
          v35 = [v34 getResourceValue:&v102 forKey:v27 error:0];
          v36 = v102;
          v37 = v36;
          if (v35)
          {
            if (([v36 BOOLValue] & 1) == 0)
            {
              v101 = 0;
              v38 = [v34 getResourceValue:&v101 forKey:v76 error:0];
              v39 = v101;
              v40 = v39;
              if (v38)
              {
                v77 += [v39 unsignedLongLongValue];
              }

              [v74 addObject:v34];
            }
          }

          else
          {
            v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]"];
            v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileWriter.m"];
            [TSUAssertionHandler handleFailureInFunction:v41 file:v42 lineNumber:239 isFatal:0 description:"Failed to obtain resource value for %@", v34];

            +[TSUAssertionHandler logBacktraceThrottled];
          }
        }

        v31 = [obj countByEnumeratingWithState:&v103 objects:v113 count:16];
      }

      while (v31);
    }

    else
    {
      v77 = 0;
    }

    v95 = 0;
    v96 = &v95;
    v97 = 0x3032000000;
    v98 = sub_2770DEFA0;
    v99 = sub_2770DEFB0;
    v100 = 0;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v69 = v74;
    v45 = [v69 countByEnumeratingWithState:&v91 objects:v112 count:16];
    if (v45)
    {
      v46 = *v92;
      v75 = *MEMORY[0x277CBE7B0];
      while (2)
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v92 != v46)
          {
            objc_enumerationMutation(v69);
          }

          v48 = *(*(&v91 + 1) + 8 * j);
          v49 = [v48 path];
          v50 = [v49 stringByStandardizingPath];
          v51 = [v50 precomposedStringWithCanonicalMapping];

          v52 = [v51 substringFromIndex:v70 + 1];
          if (v71)
          {
            v53 = [v71 stringByAppendingPathComponent:v52];

            v52 = v53;
          }

          v54 = [TSUFileIOChannel alloc];
          v55 = (v96 + 5);
          v90 = v96[5];
          v56 = [(TSUFileIOChannel *)v54 initForReadingURL:v48 error:&v90];
          objc_storeStrong(v55, v90);
          if (!v56)
          {

            goto LABEL_45;
          }

          v89 = 0;
          v57 = [v48 getResourceValue:&v89 forKey:v76 error:0];
          v58 = v89;
          v59 = v58;
          if ((v57 & 1) == 0)
          {

            v59 = 0;
          }

          v88 = 0;
          v60 = [v48 getResourceValue:&v88 forKey:v75 error:0];
          v61 = v88;
          v62 = v61;
          if ((v60 & 1) == 0)
          {

            v62 = 0;
          }

          v63 = [v59 unsignedLongLongValue];
          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = sub_2770E0480;
          v83[3] = &unk_27A703330;
          v85 = v107;
          v84 = v73;
          v86 = &v95;
          v87 = v77;
          [(TSUZipWriter *)v72 writeEntryWithName:v52 force32BitSize:0 lastModificationDate:v62 size:v63 CRC:0 fromReadChannel:v56 writeHandler:v83];
        }

        v45 = [v69 countByEnumeratingWithState:&v91 objects:v112 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }
    }

LABEL_45:

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = sub_2770E0570;
    v79[3] = &unk_27A703358;
    v80 = v73;
    v81 = &v95;
    v82 = v77;
    [(TSUZipWriter *)v72 closeWithQueue:queue completion:v79];

    _Block_object_dispose(&v95, 8);
    _Block_object_dispose(v107, 8);

    v44 = v64;
  }

  else
  {
    v43 = v21;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770E043C;
    block[3] = &unk_27A702378;
    v110 = v73;
    v109 = v43;
    dispatch_async(queue, block);

    v44 = v110;
  }
}

@end