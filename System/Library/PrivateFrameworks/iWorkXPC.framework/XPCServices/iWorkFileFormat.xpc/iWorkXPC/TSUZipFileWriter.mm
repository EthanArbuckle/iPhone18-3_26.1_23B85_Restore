@interface TSUZipFileWriter
+ (void)zipDirectoryAtURL:(id)l customDirectoryFilename:(id)filename toURL:(id)rL queue:(id)queue progressHandler:(id)handler;
+ (void)zipDirectoryAtURL:(id)l toURL:(id)rL queue:(id)queue completion:(id)completion;
- (TSUZipFileWriter)initWithURL:(id)l options:(unint64_t)options error:(id *)error;
- (TSUZipFileWriter)initWithZipFileArchive:(id)archive options:(unint64_t)options error:(id *)error;
- (id)prepareWriteChannelWithCloseCompletionHandler:(id)handler;
- (void)copyEntriesFromZipFileWriter:(id)writer readingFromURL:(id)l options:(unint64_t)options completionHandler:(id)handler;
- (void)copyRemainingEntries:(id)entries fromArchive:(id)archive progress:(id)progress completionHandler:(id)handler;
@end

@implementation TSUZipFileWriter

- (TSUZipFileWriter)initWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v21.receiver = self;
  v21.super_class = TSUZipFileWriter;
  v9 = [(TSUZipWriter *)&v21 initWithOptions:options];
  if (v9)
  {
    objc_initWeak(&location, v9);
    v10 = [TSUFileIOChannel alloc];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10007EFC8;
    v18 = &unk_1001CC6F8;
    objc_copyWeak(&v19, &location);
    v11 = [(TSUFileIOChannel *)v10 initForRandomWritingURL:lCopy error:error cleanupHandler:&v15];
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

- (TSUZipFileWriter)initWithZipFileArchive:(id)archive options:(unint64_t)options error:(id *)error
{
  archiveCopy = archive;
  v9 = [archiveCopy URL];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10007F468;
  v39 = sub_10007F478;
  v40 = 0;
  v34.receiver = self;
  v34.super_class = TSUZipFileWriter;
  v10 = [(TSUZipWriter *)&v34 initWithOptions:options];
  if (!v10)
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10007F480;
  v32[3] = &unk_1001CC720;
  v11 = v10;
  v33 = v11;
  [archiveCopy enumerateEntriesUsingBlock:v32];
  if ([archiveCopy endOfLastEntry] <= 0)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015AA68();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015AA90();
    }

    v12 = [NSString stringWithUTF8String:"[TSUZipFileWriter initWithZipFileArchive:options:error:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:69 isFatal:0 description:"Unexpected offset"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  -[TSUZipWriter setEntryInsertionOffset:](v11, "setEntryInsertionOffset:", [archiveCopy endOfLastEntry]);
  objc_initWeak(&location, v11);
  v14 = [TSUFileIOChannel alloc];
  v15 = v36;
  obj = v36[5];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10007F4CC;
  v28[3] = &unk_1001CC6F8;
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
    endOfLastEntry = [archiveCopy endOfLastEntry];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10007F54C;
    v25[3] = &unk_1001CC768;
    v27 = &v35;
    v22 = v19;
    v26 = v22;
    [(TSURandomWriteChannel *)v20 truncateToLength:endOfLastEntry completion:v25];
    dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v36[5])
  {

    v11 = 0;
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  if (error)
  {
LABEL_13:
    *error = v36[5];
  }

LABEL_14:
  v23 = v11;
  _Block_object_dispose(&v35, 8);

  return v23;
}

- (void)copyEntriesFromZipFileWriter:(id)writer readingFromURL:(id)l options:(unint64_t)options completionHandler:(id)handler
{
  writerCopy = writer;
  lCopy = l;
  handlerCopy = handler;
  if ([writerCopy isClosed])
  {
    v28 = 0;
    v13 = [[TSUZipFileArchive alloc] initWithWriter:writerCopy forReadingFromURL:lCopy options:options error:&v28];
    v14 = v28;
    v15 = v14;
    if (v13)
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10007F910;
      v21[3] = &unk_1001CC7B0;
      v16 = [[NSMutableArray alloc] initWithCapacity:{-[TSUZipArchive entriesCount](v13, "entriesCount")}];
      v22 = v16;
      v23 = &v24;
      [(TSUZipArchive *)v13 enumerateEntriesUsingBlock:v21];
      [v16 sortUsingComparator:&stru_1001CC7F0];
      v17 = [NSProgress progressWithTotalUnitCount:v25[3]];
      [(TSUZipFileWriter *)self copyRemainingEntries:v16 fromArchive:v13 progress:v17 completionHandler:handlerCopy];

      _Block_object_dispose(&v24, 8);
    }

    else if (handlerCopy)
    {
      if (v14)
      {
        handlerCopy[2](handlerCopy, v14);
      }

      else
      {
        v20 = [NSError tsu_fileWriteUnknownErrorWithUserInfo:0];
        handlerCopy[2](handlerCopy, v20);
      }
    }

    goto LABEL_11;
  }

  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_10015AB24();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10015AB38();
  }

  v18 = [NSString stringWithUTF8String:"[TSUZipFileWriter copyEntriesFromZipFileWriter:readingFromURL:options:completionHandler:]"];
  v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileWriter.m"];
  [TSUAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:112 isFatal:0 description:"Closed writer must be closed."];

  +[TSUAssertionHandler logBacktraceThrottled];
  if (handlerCopy)
  {
    v15 = [NSError tsu_fileWriteUnknownErrorWithUserInfo:0];
    handlerCopy[2](handlerCopy, v15);
LABEL_11:
  }
}

- (void)copyRemainingEntries:(id)entries fromArchive:(id)archive progress:(id)progress completionHandler:(id)handler
{
  entriesCopy = entries;
  archiveCopy = archive;
  progressCopy = progress;
  handlerCopy = handler;
  firstObject = [entriesCopy firstObject];
  if (firstObject)
  {
    [entriesCopy removeObjectAtIndex:0];
    v15 = [archiveCopy streamReadChannelForEntry:firstObject];
    if (v15)
    {
      name = [firstObject name];
      lastModificationDate = [firstObject lastModificationDate];
      v22 = [firstObject size];
      v21 = [firstObject CRC];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10007FCF0;
      v23[3] = &unk_1001CC838;
      v29 = handlerCopy;
      v24 = progressCopy;
      v25 = firstObject;
      selfCopy = self;
      v27 = entriesCopy;
      v28 = archiveCopy;
      [(TSUZipWriter *)self writeEntryWithName:name force32BitSize:0 lastModificationDate:lastModificationDate size:v22 CRC:v21 fromReadChannel:v15 completion:v23];

      v18 = v29;
    }

    else
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015ABCC();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015ABE0();
      }

      v19 = [NSString stringWithUTF8String:"[TSUZipFileWriter copyRemainingEntries:fromArchive:progress:completionHandler:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileWriter.m"];
      [TSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:156 isFatal:0 description:"invalid nil value for '%{public}s'", "channel"];

      +[TSUAssertionHandler logBacktraceThrottled];
      if (!handlerCopy)
      {
        goto LABEL_13;
      }

      v18 = [NSError tsu_fileWriteUnknownErrorWithUserInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v18);
    }

LABEL_13:
    goto LABEL_14;
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_14:
}

- (id)prepareWriteChannelWithCloseCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_writeChannelCompletionHandler)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015AC74();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015AC88();
    }

    v5 = [NSString stringWithUTF8String:"[TSUZipFileWriter prepareWriteChannelWithCloseCompletionHandler:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:177 isFatal:0 description:"expected nil value for '%{public}s'", "_writeChannelCompletionHandler"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v7 = [handlerCopy copy];
  writeChannelCompletionHandler = self->_writeChannelCompletionHandler;
  self->_writeChannelCompletionHandler = v7;

  writeChannel = self->_writeChannel;
  if (!writeChannel)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015AD1C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015AD44();
    }

    v10 = [NSString stringWithUTF8String:"[TSUZipFileWriter prepareWriteChannelWithCloseCompletionHandler:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:180 isFatal:0 description:"invalid nil value for '%{public}s'", "_writeChannel"];

    +[TSUAssertionHandler logBacktraceThrottled];
    writeChannel = self->_writeChannel;
  }

  v12 = writeChannel;

  return writeChannel;
}

+ (void)zipDirectoryAtURL:(id)l toURL:(id)rL queue:(id)queue completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080140;
  v11[3] = &unk_1001CC8A0;
  completionCopy = completion;
  v10 = completionCopy;
  [self zipDirectoryAtURL:l customDirectoryFilename:0 toURL:rL queue:queue progressHandler:v11];
}

+ (void)zipDirectoryAtURL:(id)l customDirectoryFilename:(id)filename toURL:(id)rL queue:(id)queue progressHandler:(id)handler
{
  lCopy = l;
  filenameCopy = filename;
  rLCopy = rL;
  queue = queue;
  handlerCopy = handler;
  v68 = lCopy;
  if (!lCopy)
  {
    v13 = rLCopy;
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015ADD8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015ADEC();
    }

    v14 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSUZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]");
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:199 isFatal:0 description:"invalid nil value for '%{public}s'", "directoryURL"];

    +[TSUAssertionHandler logBacktraceThrottled];
    rLCopy = v13;
  }

  v67 = rLCopy;
  if (!rLCopy)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015AE80();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015AEA8();
    }

    v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSUZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]");
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:200 isFatal:0 description:"invalid nil value for '%{public}s'", "URL"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!queue)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015AF3C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015AF64();
    }

    v18 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSUZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]");
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:201 isFatal:0 description:"invalid nil value for '%{public}s'", "queue"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!handlerCopy)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015AFF8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015B020();
    }

    v20 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSUZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]");
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:202 isFatal:0 description:"invalid nil value for '%{public}s'", "progressHandler"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v104 = 0;
  v73 = [[TSUZipFileWriter alloc] initWithURL:v67 error:&v104];
  v22 = v104;
  v66 = v22;
  if (v73)
  {
    path = [v68 path];
    v24 = path;
    if (!filenameCopy)
    {
      stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

      v24 = stringByDeletingLastPathComponent;
    }

    stringByStandardizingPath = [v24 stringByStandardizingPath];
    precomposedStringWithCanonicalMapping = [stringByStandardizingPath precomposedStringWithCanonicalMapping];

    v71 = [precomposedStringWithCanonicalMapping length];
    v27 = +[NSFileManager defaultManager];
    v109[0] = NSURLIsDirectoryKey;
    v109[1] = NSURLFileSizeKey;
    v28 = [NSArray arrayWithObjects:v109 count:2];
    v29 = [v27 enumeratorAtURL:v68 includingPropertiesForKeys:v28 options:0 errorHandler:0];

    v100[0] = 0;
    v100[1] = v100;
    v100[2] = 0x2020000000;
    v100[3] = 0;
    v75 = objc_alloc_init(NSMutableArray);
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v29;
    v30 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
    if (v30)
    {
      v76 = 0;
      v31 = *v97;
      do
      {
        v32 = 0;
        do
        {
          if (*v97 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v96 + 1) + 8 * v32);
          v95 = 0;
          v34 = [v33 getResourceValue:&v95 forKey:NSURLIsDirectoryKey error:0];
          v35 = v95;
          v36 = v35;
          if (v34)
          {
            if (([v35 BOOLValue] & 1) == 0)
            {
              v94 = 0;
              v37 = [v33 getResourceValue:&v94 forKey:NSURLFileSizeKey error:0];
              v38 = v94;
              v39 = v38;
              if (v37)
              {
                v76 += [v38 unsignedLongLongValue];
              }

              [v75 addObject:v33];
            }
          }

          else
          {
            v40 = +[TSUAssertionHandler _atomicIncrementAssertCount];
            if (TSUAssertCat_init_token != -1)
            {
              sub_10015B0B4();
            }

            v41 = TSUAssertCat_log_t;
            if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              *&buf[4] = v40;
              *v107 = 2082;
              *&v107[2] = "+[TSUZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]";
              *&v107[10] = 2082;
              *&v107[12] = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileWriter.m";
              *&v107[20] = 1024;
              *&v107[22] = 239;
              *&v107[26] = 2112;
              *&v107[28] = v33;
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to obtain resource value for %@", buf, 0x2Cu);
            }

            v42 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSUZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]");
            v43 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileWriter.m"];
            [TSUAssertionHandler handleFailureInFunction:v42 file:v43 lineNumber:239 isFatal:0 description:"Failed to obtain resource value for %@", v33];

            +[TSUAssertionHandler logBacktraceThrottled];
          }

          v32 = v32 + 1;
        }

        while (v30 != v32);
        v30 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
      }

      while (v30);
    }

    else
    {
      v76 = 0;
    }

    *buf = 0;
    *v107 = buf;
    *&v107[8] = 0x3032000000;
    *&v107[16] = sub_10007F468;
    *&v107[24] = sub_10007F478;
    *&v107[32] = 0;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v70 = v75;
    v46 = [v70 countByEnumeratingWithState:&v90 objects:v105 count:16];
    if (v46)
    {
      v47 = *v91;
      while (2)
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v91 != v47)
          {
            objc_enumerationMutation(v70);
          }

          v49 = *(*(&v90 + 1) + 8 * i);
          path2 = [v49 path];
          stringByStandardizingPath2 = [path2 stringByStandardizingPath];
          precomposedStringWithCanonicalMapping2 = [stringByStandardizingPath2 precomposedStringWithCanonicalMapping];

          v53 = [precomposedStringWithCanonicalMapping2 substringFromIndex:v71 + 1];
          if (filenameCopy)
          {
            v54 = [filenameCopy stringByAppendingPathComponent:v53];

            v53 = v54;
          }

          v55 = [TSUFileIOChannel alloc];
          v56 = (*v107 + 40);
          v89 = *(*v107 + 40);
          v57 = [(TSUFileIOChannel *)v55 initForReadingURL:v49 error:&v89];
          objc_storeStrong(v56, v89);
          if (!v57)
          {

            goto LABEL_64;
          }

          v88 = 0;
          v58 = [v49 getResourceValue:&v88 forKey:NSURLFileSizeKey error:0];
          v59 = v88;
          v60 = v59;
          if ((v58 & 1) == 0)
          {

            v60 = 0;
          }

          v87 = 0;
          v61 = [v49 getResourceValue:&v87 forKey:NSURLContentModificationDateKey error:0];
          v62 = v87;
          v63 = v62;
          if ((v61 & 1) == 0)
          {

            v63 = 0;
          }

          unsignedLongLongValue = [v60 unsignedLongLongValue];
          v82[0] = _NSConcreteStackBlock;
          v82[1] = 3221225472;
          v82[2] = sub_100080F4C;
          v82[3] = &unk_1001CC968;
          v84 = v100;
          v83 = handlerCopy;
          v85 = buf;
          v86 = v76;
          [(TSUZipWriter *)v73 writeEntryWithName:v53 force32BitSize:0 lastModificationDate:v63 size:unsignedLongLongValue CRC:0 fromReadChannel:v57 writeHandler:v82];
        }

        v46 = [v70 countByEnumeratingWithState:&v90 objects:v105 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }
    }

LABEL_64:

    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_10008103C;
    v78[3] = &unk_1001CC990;
    v79 = handlerCopy;
    v80 = buf;
    v81 = v76;
    [(TSUZipWriter *)v73 closeWithQueue:queue completion:v78];

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v100, 8);

    v45 = precomposedStringWithCanonicalMapping;
  }

  else
  {
    v44 = v22;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100080EC4;
    block[3] = &unk_1001CC3D8;
    v103 = handlerCopy;
    v102 = v44;
    dispatch_async(queue, block);

    v45 = v103;
  }
}

@end