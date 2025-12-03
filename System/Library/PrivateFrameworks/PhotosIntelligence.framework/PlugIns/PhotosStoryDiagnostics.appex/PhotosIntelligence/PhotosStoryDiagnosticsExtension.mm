@interface PhotosStoryDiagnosticsExtension
+ (BOOL)isAppleInternal;
+ (id)descriptionForFilename:(id)filename withJsonArray:(id)array;
+ (id)displayNameForFilename:(id)filename withJsonArray:(id)array;
+ (id)subtitleForFilename:(id)filename withJsonArray:(id)array;
- (BOOL)repositoryIsEmpty:(id)empty fileManager:(id)manager;
- (id)annotatedAttachmentsForParameters:(id)parameters;
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
- (id)descriptionStringsByFileWithRepositoryURL:(id)l;
- (id)diagnosticAttachmentsForMemoryLocalIdentifier:(id)identifier;
- (id)getStoryDiagnosticsPath;
- (id)internalFullDiagnostics;
- (id)memoryDiagnosticsRepositoryPathForMemoryLocalIdentifier:(id)identifier;
@end

@implementation PhotosStoryDiagnosticsExtension

- (BOOL)repositoryIsEmpty:(id)empty fileManager:(id)manager
{
  v13 = NSURLIsDirectoryKey;
  managerCopy = manager;
  emptyCopy = empty;
  v7 = 1;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v12 = 0;
  v9 = [managerCopy contentsOfDirectoryAtURL:emptyCopy includingPropertiesForKeys:v8 options:4 error:&v12];

  v10 = v12;
  if (!v10)
  {
    v7 = [v9 count] == 0;
  }

  return v7;
}

- (id)memoryDiagnosticsRepositoryPathForMemoryLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  getStoryDiagnosticsPath = [(PhotosStoryDiagnosticsExtension *)self getStoryDiagnosticsPath];
  v5 = getStoryDiagnosticsPath;
  if (getStoryDiagnosticsPath)
  {
    v6 = [getStoryDiagnosticsPath stringByAppendingPathComponent:PNStoryDiagnosticsIndexFileName];
    v7 = [[NSData alloc] initWithContentsOfFile:v6];
    if (v7)
    {
      v33 = 0;
      v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v33];
      v9 = v33;
      objc_opt_class();
      v10 = 0;
      if (objc_opt_isKindOfClass())
      {
        v23 = v9;
        v24 = v8;
        v25 = v7;
        v26 = v6;
        v27 = v5;
        v11 = v8;
        allKeys = [v11 allKeys];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v13 = [allKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v13)
        {
          v14 = v13;
          v10 = 0;
          v15 = *v30;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v30 != v15)
              {
                objc_enumerationMutation(allKeys);
              }

              v17 = *(*(&v29 + 1) + 8 * i);
              v18 = [v11 objectForKeyedSubscript:{v17, v23, v24, v25, v26}];
              v19 = [v18 objectForKeyedSubscript:@"generatedMemoryIdentifiers"];
              v20 = v19;
              if (v19 && [v19 count] && objc_msgSend(v20, "containsObject:", identifierCopy))
              {
                v21 = [v27 stringByAppendingPathComponent:v17];

                v10 = v21;
              }
            }

            v14 = [allKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
          }

          while (v14);
        }

        else
        {
          v10 = 0;
        }

        v6 = v26;
        v5 = v27;
        v8 = v24;
        v7 = v25;
        v9 = v23;
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v6;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Cannot access data for index file. Path used is: %@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Cannot access data for index file. Path used is nil", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)descriptionStringsByFileWithRepositoryURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [lCopy URLByAppendingPathComponent:PNNonInternalDiagnosticsStringDescriptionsFileName];

  if (v5)
  {
    path = [v5 path];
    v7 = [NSData dataWithContentsOfFile:path];

    if (v7)
    {
      v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:0];
      [v4 addObjectsFromArray:v8];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Cannot access the file containing the description strings for public diagnostics.", v10, 2u);
  }

  return v4;
}

- (id)diagnosticAttachmentsForMemoryLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v47 = "[PhotosStoryDiagnosticsExtension diagnosticAttachmentsForMemoryLocalIdentifier:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v5 = [(PhotosStoryDiagnosticsExtension *)self memoryDiagnosticsRepositoryPathForMemoryLocalIdentifier:identifierCopy];
  if (v5)
  {
    v34 = identifierCopy;
    v38 = objc_alloc_init(NSMutableArray);
    v33 = v5;
    v6 = [[NSURL alloc] initWithString:v5];
    v7 = objc_alloc_init(NSFileManager);
    v55 = NSURLIsRegularFileKey;
    v8 = [NSArray arrayWithObjects:&v55 count:1];
    v45 = 0;
    v31 = v7;
    v9 = [v7 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:v8 options:4 error:&v45];
    v10 = v45;

    v32 = v6;
    v11 = [(PhotosStoryDiagnosticsExtension *)self descriptionStringsByFileWithRepositoryURL:v6];
    [v11 count];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v9;
    v12 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      v15 = PNNonInternalDiagnosticsStringDescriptionsFileName;
      v35 = PNNonInternalDiagnosticsStringDescriptionsFileName;
      v36 = *v42;
      do
      {
        v16 = 0;
        v37 = v13;
        do
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v41 + 1) + 8 * v16);
          path = [v17 path];
          v19 = [path containsString:v15];

          if ((v19 & 1) == 0)
          {
            lastPathComponent = [v17 lastPathComponent];
            v21 = [PhotosStoryDiagnosticsExtension displayNameForFilename:lastPathComponent withJsonArray:v11];
            if (v21)
            {
              v22 = [PhotosStoryDiagnosticsExtension descriptionForFilename:lastPathComponent withJsonArray:v11];
              v23 = v11;
              v24 = [PhotosStoryDiagnosticsExtension subtitleForFilename:lastPathComponent withJsonArray:v11];
              v25 = v24;
              if (v24)
              {
                v52 = @"subtitle";
                v53 = v24;
                v26 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
              }

              else
              {
                v26 = 0;
              }

              v40 = v10;
              [DEAnnotation annotateURL:v17 displayName:v21 description:v22 iconType:@"text" additionalInfo:v26 error:&v40];
              v27 = v40;

              if (v27)
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412802;
                  v47 = v27;
                  v48 = 2112;
                  v49 = v21;
                  v50 = 2112;
                  v51 = v22;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Annotation failed with error %@, display name: %@, description: %@", buf, 0x20u);
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v47 = v17;
                v48 = 2112;
                v49 = v21;
                v50 = 2112;
                v51 = v22;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Annotation successful for %@, display name: %@, description: %@", buf, 0x20u);
              }

              v11 = v23;
              v15 = v35;
              v14 = v36;
              v13 = v37;
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v47 = lastPathComponent;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "No display name for %@", buf, 0xCu);
              }

              v27 = v10;
            }

            v28 = [DEAttachmentItem attachmentWithPathURL:v17];
            [v38 addObject:v28];

            v10 = v27;
          }

          v16 = v16 + 1;
        }

        while (v13 != v16);
        v13 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v13);
    }

    v29 = v38;
    v5 = v33;
    identifierCopy = v34;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = identifierCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "No repository path for given memory local identifier: %@", buf, 0xCu);
    }

    v29 = &__NSArray0__struct;
  }

  return v29;
}

- (id)internalFullDiagnostics
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[PhotosStoryDiagnosticsExtension internalFullDiagnostics]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v3 = objc_alloc_init(NSMutableArray);
  getStoryDiagnosticsPath = [(PhotosStoryDiagnosticsExtension *)self getStoryDiagnosticsPath];
  if (getStoryDiagnosticsPath)
  {
    v5 = [[NSURL alloc] initWithString:getStoryDiagnosticsPath];
    v6 = objc_alloc_init(NSFileManager);
    v19 = NSURLIsDirectoryKey;
    v7 = [NSArray arrayWithObjects:&v19 count:1];
    v18 = 0;
    v8 = [v6 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v7 options:4 error:&v18];
    v9 = v18;

    if (v9)
    {
      v10 = &__NSArray0__struct;
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100001990;
      v15[3] = &unk_1000041D8;
      v15[4] = self;
      v16 = v6;
      v11 = v3;
      v17 = v11;
      [v8 enumerateObjectsUsingBlock:v15];
      v12 = [getStoryDiagnosticsPath stringByAppendingPathComponent:PNStoryDiagnosticsIndexFileName];
      v13 = [DEAttachmentItem attachmentWithPath:v12];
      [v11 addObject:v13];
      v10 = v11;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Cannot access data for index file. Path used is nil", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)annotatedAttachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[PhotosStoryDiagnosticsExtension annotatedAttachmentsForParameters:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v5 = [(PhotosStoryDiagnosticsExtension *)self attachmentsForParameters:parametersCopy];
  v6 = [DEAnnotatedGroup alloc];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu items", [v5 count]);
  v8 = [v6 initWithDisplayName:@"Memory Movie Details" localizedDescription:v7 iconType:0 additionalInfo:0 attachmentItems:v5];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = [v8 debugDescription];
    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Returning DEAnnotatedGroup %@", buf, 0xCu);
  }

  return v8;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[PhotosStoryDiagnosticsExtension attachmentsForParameters:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v5 = [PHPhotoLibrary alloc];
  v6 = +[PLPhotoLibraryPathManager systemLibraryURL];
  v7 = [v5 initWithPhotoLibraryURL:v6];

  v16 = 0;
  v8 = [v7 openAndWaitWithUpgrade:0 error:&v16];
  v9 = v16;
  if (v8)
  {
    v10 = objc_alloc_init(NSMutableArray);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = parametersCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Parameters received: %@", buf, 0xCu);
    }

    v11 = [parametersCopy objectForKeyedSubscript:PNStoryDiagnosticsExtensionParameterName];
    firstObject = [v11 firstObject];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = firstObject;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "MemoryLocalIdentifier extracted: %@", buf, 0xCu);
    }

    if (firstObject)
    {
      v13 = [(PhotosStoryDiagnosticsExtension *)self diagnosticAttachmentsForMemoryLocalIdentifier:firstObject];
      [v10 addObjectsFromArray:v13];
    }

    if (+[PhotosStoryDiagnosticsExtension isAppleInternal](PhotosStoryDiagnosticsExtension, "isAppleInternal") && ![v10 count])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "No attachment retrieved, falling back to full story diagnostics", buf, 2u);
      }

      internalFullDiagnostics = [(PhotosStoryDiagnosticsExtension *)self internalFullDiagnostics];
      [v10 addObjectsFromArray:internalFullDiagnostics];
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't open library. Error: %@", buf, 0xCu);
    }

    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)attachmentList
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[PhotosStoryDiagnosticsExtension attachmentList]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v3 = [PHPhotoLibrary alloc];
  v4 = +[PLPhotoLibraryPathManager systemLibraryURL];
  v5 = [v3 initWithPhotoLibraryURL:v4];

  v11 = 0;
  v6 = [v5 openAndWaitWithUpgrade:0 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = objc_alloc_init(NSMutableArray);
    if (+[PhotosStoryDiagnosticsExtension isAppleInternal])
    {
      internalFullDiagnostics = [(PhotosStoryDiagnosticsExtension *)self internalFullDiagnostics];
      [v8 addObjectsFromArray:internalFullDiagnostics];
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't open library. Error: %@", buf, 0xCu);
    }

    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (id)getStoryDiagnosticsPath
{
  v2 = +[PLPhotoLibraryPathManager systemLibraryPathManager];
  v3 = [v2 internalDirectoryWithSubType:3 additionalPathComponents:0 createIfNeeded:0 error:0];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Path retrieved: %@", &v5, 0xCu);
  }

  return v3;
}

+ (id)subtitleForFilename:(id)filename withJsonArray:(id)array
{
  filenameCopy = filename;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = array;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v6)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v7 = v6;
  v15 = 0;
  v8 = *v18;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v17 + 1) + 8 * i);
      v11 = [v10 objectForKey:{@"fileName", v15}];
      if ([v11 isEqualToString:filenameCopy])
      {
        allKeys = [v10 allKeys];
        v13 = [allKeys containsObject:@"subtitle"];

        if (!v13)
        {
          continue;
        }

        [v10 objectForKey:@"subtitle"];
        v15 = v11 = v15;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v7);
LABEL_14:

  return v15;
}

+ (id)descriptionForFilename:(id)filename withJsonArray:(id)array
{
  filenameCopy = filename;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = array;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v6)
  {
    v15 = &stru_100004318;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *v18;
  v15 = &stru_100004318;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v17 + 1) + 8 * i);
      v11 = [v10 objectForKey:{@"fileName", v15}];
      if ([v11 isEqualToString:filenameCopy])
      {
        allKeys = [v10 allKeys];
        v13 = [allKeys containsObject:@"description"];

        if (!v13)
        {
          continue;
        }

        [v10 objectForKey:@"description"];
        v15 = v11 = v15;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v7);
LABEL_14:

  return v15;
}

+ (id)displayNameForFilename:(id)filename withJsonArray:(id)array
{
  filenameCopy = filename;
  arrayCopy = array;
  v7 = filenameCopy;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = arrayCopy;
  v8 = [arrayCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  v17 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v17 = v7;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 objectForKey:{@"fileName", v17}];
        if ([v13 isEqualToString:v7])
        {
          allKeys = [v12 allKeys];
          v15 = [allKeys containsObject:@"title"];

          if (!v15)
          {
            continue;
          }

          [v12 objectForKey:@"title"];
          v17 = v13 = v17;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v17;
}

+ (BOOL)isAppleInternal
{
  if (qword_100008268 != -1)
  {
    dispatch_once(&qword_100008268, &stru_100004218);
  }

  return byte_100008260;
}

@end