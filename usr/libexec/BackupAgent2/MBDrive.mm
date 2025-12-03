@interface MBDrive
+ (BOOL)singleFromMultiErrorWithReturnValue:(BOOL)value results:(id)results error:(id *)error;
- (BOOL)downloadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)moveItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)removeItemAtPath:(id)path options:(id)options error:(id *)error;
- (BOOL)uploadData:(id)data toPath:(id)path options:(id)options error:(id *)error;
- (BOOL)uploadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)uploadPropertyList:(id)list toPath:(id)path options:(id)options error:(id *)error;
- (BOOL)usageOfDirectoryAtPath:(id)path count:(unint64_t *)count size:(unint64_t *)size options:(id)options error:(id *)error;
- (id)_usageOfDirectoryAtPath:(id)path count:(unint64_t *)count size:(unint64_t *)size options:(id)options;
- (id)dataAtPath:(id)path options:(id)options error:(id *)error;
- (id)enumerateContentsOfDirectoryAtPath:(id)path options:(id)options recurse:(BOOL)recurse foundItem:(id)item;
- (id)propertyListAtPath:(id)path options:(id)options error:(id *)error;
- (void)finishBatchUploadsWithOptions:(id)options completion:(id)completion;
- (void)uploadBatch:(id)batch options:(id)options completion:(id)completion;
@end

@implementation MBDrive

+ (BOOL)singleFromMultiErrorWithReturnValue:(BOOL)value results:(id)results error:(id *)error
{
  resultsCopy = results;
  if (error && !value && [MBError isError:*error withCode:2])
  {
    if ([resultsCopy count] != 1)
    {
      sub_10009BE98(a2, self);
    }

    allValues = [resultsCopy allValues];
    *error = [allValues lastObject];
  }

  return value;
}

- (id)enumerateContentsOfDirectoryAtPath:(id)path options:(id)options recurse:(BOOL)recurse foundItem:(id)item
{
  recurseCopy = recurse;
  pathCopy = path;
  optionsCopy = options;
  itemCopy = item;
  v12 = objc_autoreleasePoolPush();
  v38 = 0;
  selfCopy = self;
  v30 = optionsCopy;
  v31 = pathCopy;
  v13 = [(MBDrive *)self contentsOfDirectoryAtPath:pathCopy options:optionsCopy error:&v38];
  v14 = v38;
  if (v13)
  {
    v27 = v12;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [v13 allKeys];
    v15 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v32 = *v35;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v35 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [v13 objectForKeyedSubscript:v18];
          if ((itemCopy[2](itemCopy, v18, v20) & 1) == 0)
          {
            v25 = [MBError errorWithCode:1 format:@"Enumeration canceled"];

LABEL_18:
            v14 = v25;

            objc_autoreleasePoolPop(v19);
            goto LABEL_19;
          }

          fileType = [v20 fileType];
          v22 = [fileType isEqualToString:NSFileTypeDirectory];

          if (v22)
          {
            v23 = !recurseCopy;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            v24 = [v31 stringByAppendingPathComponent:v18];
            v25 = [(MBDrive *)selfCopy enumerateContentsOfDirectoryAtPath:v24 options:v30 recurse:0 foundItem:itemCopy];

            if (v25)
            {
              goto LABEL_18;
            }

            v14 = 0;
          }

          objc_autoreleasePoolPop(v19);
        }

        v16 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v12 = v27;
  }

  objc_autoreleasePoolPop(v12);

  return v14;
}

- (BOOL)usageOfDirectoryAtPath:(id)path count:(unint64_t *)count size:(unint64_t *)size options:(id)options error:(id *)error
{
  v8 = [(MBDrive *)self _usageOfDirectoryAtPath:path count:count size:size options:options];
  if (error && v8)
  {
    v8 = v8;
    *error = v8;
  }

  v9 = v8 == 0;

  return v9;
}

- (id)_usageOfDirectoryAtPath:(id)path count:(unint64_t *)count size:(unint64_t *)size options:(id)options
{
  pathCopy = path;
  v36 = 0;
  selfCopy = self;
  optionsCopy = options;
  v29 = pathCopy;
  v9 = [MBDrive contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:options:error:" options:pathCopy error:?];
  v10 = 0;
  v11 = v10;
  if (v9)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = v9;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = [v12 objectForKeyedSubscript:v17];
          fileType = [v19 fileType];
          if ([fileType isEqualToString:NSFileTypeDirectory])
          {
            v21 = [v29 stringByAppendingPathComponent:v17];
            v22 = [(MBDrive *)selfCopy _usageOfDirectoryAtPath:v21 count:count size:size options:optionsCopy];
            v23 = v11;
            v11 = v22;

            if (v11)
            {
              v11 = v11;

              objc_autoreleasePoolPop(v18);
              v24 = v11;
              goto LABEL_17;
            }
          }

          else if ([fileType isEqualToString:NSFileTypeRegular])
          {
            ++*count;
            *size += [v19 fileSize];
          }

          objc_autoreleasePoolPop(v18);
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v24 = 0;
LABEL_17:
    v9 = v26;
  }

  else
  {
    v11 = v10;
    v24 = v11;
  }

  return v24;
}

- (BOOL)uploadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  optionsCopy = options;
  toPathCopy2 = toPath;
  pathCopy2 = path;
  v13 = [NSDictionary dictionaryWithObjects:&toPathCopy forKeys:&pathCopy count:1];
  v17 = 0;
  v14 = [(MBDrive *)self uploadFilesAtPaths:v13 options:optionsCopy results:&v17 error:error];

  v15 = v17;
  LOBYTE(error) = [MBDrive singleFromMultiErrorWithReturnValue:v14 results:v15 error:error];

  return error;
}

- (void)uploadBatch:(id)batch options:(id)options completion:(id)completion
{
  batchCopy = batch;
  optionsCopy = options;
  completionCopy = completion;
  memset(v17, 0, sizeof(v17));
  paths = [batchCopy paths];
  v15 = 0;
  v16 = 0;
  v12 = [(MBDrive *)self uploadFilesAtPaths:paths options:optionsCopy results:&v16 error:&v15];
  v13 = v16;
  v14 = v15;

  if ((v12 & 1) == 0 && !v14)
  {
    sub_10009BF0C();
  }

  completionCopy[2](completionCopy, v17, v13, v14);
}

- (void)finishBatchUploadsWithOptions:(id)options completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (BOOL)downloadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  optionsCopy = options;
  toPathCopy2 = toPath;
  pathCopy2 = path;
  v13 = [NSDictionary dictionaryWithObjects:&toPathCopy forKeys:&pathCopy count:1];
  v17 = 0;
  v14 = [(MBDrive *)self downloadFilesAtPaths:v13 options:optionsCopy results:&v17 error:error];

  v15 = v17;
  LOBYTE(error) = [MBDrive singleFromMultiErrorWithReturnValue:v14 results:v15 error:error];

  return error;
}

- (BOOL)uploadData:(id)data toPath:(id)path options:(id)options error:(id *)error
{
  dataCopy = data;
  pathCopy = path;
  optionsCopy = options;
  v26 = 0;
  v13 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:@"/private/var" identifiedBy:@"drive-upload-data" error:&v26];
  v14 = v26;
  if (!v13)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed creating temporary directory to upload data: %@", buf, 0xCu);
      _MBLog();
    }

    if (error)
    {
      v20 = v14;
      v21 = v14;
LABEL_21:
      LOBYTE(self) = 0;
      *error = v21;
      goto LABEL_23;
    }

LABEL_22:
    LOBYTE(self) = 0;
    goto LABEL_23;
  }

  makeTemporaryFilePath = [v13 makeTemporaryFilePath];
  v25 = v14;
  v16 = [dataCopy writeToFile:makeTemporaryFilePath options:1 error:&v25];
  v17 = v25;

  v14 = v17;
  if (v16)
  {
    LOBYTE(self) = [(MBDrive *)self uploadFileAtPath:makeTemporaryFilePath toPath:pathCopy options:optionsCopy error:error];
    v18 = 0;
    goto LABEL_18;
  }

  self = [v17 domain];
  if (-[MBDrive isEqualToString:](self, "isEqualToString:", NSCocoaErrorDomain) && [v17 code] == 640)
  {

    goto LABEL_13;
  }

  domain = [v17 domain];
  if (([domain isEqualToString:NSPOSIXErrorDomain] & 1) == 0)
  {

    goto LABEL_16;
  }

  v23 = [v17 code] == 28;

  if (!v23)
  {
LABEL_16:
    v18 = 1;
    goto LABEL_18;
  }

LABEL_13:
  if (error)
  {
    [MBError errorWithCode:106 format:@"No space writing data to temporary file"];
    v18 = 0;
    *error = LOBYTE(self) = 0;
  }

  else
  {
    v18 = 0;
    LOBYTE(self) = 0;
  }

LABEL_18:

  [v13 dispose];
  if (v18)
  {
    if (error)
    {
      v21 = [MBError errorWithCode:102 format:@"Error writing data to temporary file"];
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_23:

  return self & 1;
}

- (id)dataAtPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  v28 = 0;
  v10 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:@"/private/var" identifiedBy:@"drive-download-data" error:&v28];
  v11 = v28;
  if (v10)
  {
    makeTemporaryFilePath = [v10 makeTemporaryFilePath];
    if (![(MBDrive *)self downloadFileAtPath:pathCopy toPath:makeTemporaryFilePath options:optionsCopy error:error])
    {
      v24 = 0;
LABEL_22:

      [v10 dispose];
      goto LABEL_23;
    }

    v13 = +[NSFileManager defaultManager];
    v14 = [v13 attributesOfItemAtPath:makeTemporaryFilePath error:0];

    v15 = [optionsCopy objectForKeyedSubscript:@"MemoryMapped"];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      v17 = MBGetDefaultLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 8;
        goto LABEL_21;
      }

      v17 = v17;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v14 objectForKeyedSubscript:NSFileSize];
        unsignedIntegerValue = [v18 unsignedIntegerValue];
        *buf = 138412546;
        v30 = makeTemporaryFilePath;
        v31 = 2048;
        v32 = unsignedIntegerValue;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Opening file mapped at '%@' (%{bytes}lu)", buf, 0x16u);
      }

      v20 = [v14 objectForKeyedSubscript:NSFileSize];
      [v20 unsignedIntegerValue];
      _MBLog();
      v21 = 8;
    }

    else
    {
      v17 = MBGetDefaultLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 0;
        goto LABEL_21;
      }

      v17 = v17;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v25 = [v14 objectForKeyedSubscript:NSFileSize];
        unsignedIntegerValue2 = [v25 unsignedIntegerValue];
        *buf = 138412546;
        v30 = makeTemporaryFilePath;
        v31 = 2048;
        v32 = unsignedIntegerValue2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Opening file unmapped at '%@' (%{bytes}lu)", buf, 0x16u);
      }

      v20 = [v14 objectForKeyedSubscript:NSFileSize];
      [v20 unsignedIntegerValue];
      _MBLog();
      v21 = 0;
    }

LABEL_21:
    v24 = [NSData dataWithContentsOfFile:makeTemporaryFilePath options:v21 error:error];

    goto LABEL_22;
  }

  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed creating temporary directory to download file: %@", buf, 0xCu);
    _MBLog();
  }

  if (error)
  {
    v23 = v11;
    v24 = 0;
    *error = v11;
  }

  else
  {
    v24 = 0;
  }

LABEL_23:

  return v24;
}

- (BOOL)uploadPropertyList:(id)list toPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  v15 = 0;
  v12 = [NSPropertyListSerialization dataFromPropertyList:list format:200 errorDescription:&v15];
  if (v12)
  {
    v13 = [(MBDrive *)self uploadData:v12 toPath:pathCopy options:optionsCopy error:error];
  }

  else if (error)
  {
    [MBError errorWithCode:10 format:@"Error serializing property list: %@", v15];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)propertyListAtPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  v14 = 0;
  v9 = [(MBDrive *)self dataAtPath:pathCopy options:options error:error];
  if (v9)
  {
    v10 = [NSPropertyListSerialization propertyListFromData:v9 mutabilityOption:0 format:0 errorDescription:&v14];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else if (error)
    {
      *error = [MBError errorWithCode:11 path:pathCopy format:@"Error deserializing property list: %@", v14];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)moveItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  optionsCopy = options;
  toPathCopy2 = toPath;
  pathCopy2 = path;
  v13 = [NSDictionary dictionaryWithObjects:&toPathCopy forKeys:&pathCopy count:1];
  v17 = 0;
  v14 = [(MBDrive *)self moveItemsAtPaths:v13 options:optionsCopy results:&v17 error:error];

  v15 = v17;
  LOBYTE(error) = [MBDrive singleFromMultiErrorWithReturnValue:v14 results:v15 error:error];

  return error;
}

- (BOOL)removeItemAtPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  pathCopy2 = path;
  v10 = [NSArray arrayWithObjects:&pathCopy count:1];
  v14 = 0;
  v11 = [(MBDrive *)self removeItemsAtPaths:v10 options:optionsCopy results:&v14 error:error];

  v12 = v14;
  LOBYTE(error) = [MBDrive singleFromMultiErrorWithReturnValue:v11 results:v12 error:error];

  return error;
}

@end