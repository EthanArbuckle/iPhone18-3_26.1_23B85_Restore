@interface _PASLazyPlist
+ (BOOL)isLazyPlistLikelyContainedInData:(id)data format:(unint64_t *)format;
+ (BOOL)isLazyPlistLikelyContainedInFileAtPath:(id)path format:(unint64_t *)format;
+ (id)arrayWithData:(id)data error:(id *)error;
+ (id)arrayWithPath:(id)path error:(id *)error;
+ (id)dataWithPropertyList:(id)list format:(unint64_t)format error:(id *)error;
+ (id)deserializationStatsHandler;
+ (id)dictionaryWithData:(id)data error:(id *)error;
+ (id)dictionaryWithPath:(id)path error:(id *)error;
+ (id)fileBackedDataWithPropertyList:(id)list writtenToPath:(id)path format:(unint64_t)format error:(id *)error;
+ (id)lazyPlistWithPlist:(id)plist;
+ (id)propertyListWithData:(uint64_t)data needsValidation:(void *)validation error:;
+ (id)propertyListWithPath:(id)path error:(id *)error;
+ (id)propertyListWithPath:(id)path fileRange:(_NSRange)range error:(id *)error;
+ (id)serializationStatsHandler;
+ (void)setDeserializationStatsHandler:(id)handler;
+ (void)setSerializationStatsHandler:(id)handler;
@end

@implementation _PASLazyPlist

+ (id)deserializationStatsHandler
{
  pthread_mutex_lock(&_statsHandlerLock);
  v2 = MEMORY[0x1AC566DD0](_deserializationStatsHandler);
  pthread_mutex_unlock(&_statsHandlerLock);
  v3 = MEMORY[0x1AC566DD0](v2);

  return v3;
}

+ (void)setDeserializationStatsHandler:(id)handler
{
  handlerCopy = handler;
  pthread_mutex_lock(&_statsHandlerLock);
  v4 = MEMORY[0x1AC566DD0](handlerCopy);

  v5 = _deserializationStatsHandler;
  _deserializationStatsHandler = v4;

  pthread_mutex_unlock(&_statsHandlerLock);
}

+ (void)setSerializationStatsHandler:(id)handler
{
  handlerCopy = handler;
  pthread_mutex_lock(&_statsHandlerLock);
  v4 = MEMORY[0x1AC566DD0](handlerCopy);

  v5 = _serializationStatsHandler;
  _serializationStatsHandler = v4;

  pthread_mutex_unlock(&_statsHandlerLock);
}

+ (id)serializationStatsHandler
{
  pthread_mutex_lock(&_statsHandlerLock);
  v2 = MEMORY[0x1AC566DD0](_serializationStatsHandler);
  pthread_mutex_unlock(&_statsHandlerLock);
  v3 = MEMORY[0x1AC566DD0](v2);

  return v3;
}

+ (id)lazyPlistWithPlist:(id)plist
{
  v23 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  if (!plistCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLazyPlist.m" lineNumber:486 description:{@"Invalid parameter not satisfying: %@", @"plist"}];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:@"_PASLazyPlist-memoryopt.plplist-"];

  v20 = 0;
  v9 = [_PASFileUtils mkstempWithPrefix:v8 error:&v20];
  v10 = v20;
  if (v9)
  {
    path = [v9 path];
    unlink([path fileSystemRepresentation]);

    v12 = [self fileBackedDataWithPropertyList:plistCopy appendedToFd:objc_msgSend(v9 startOfs:"fd") error:{0, 0}];
    close([v9 fd]);
    if (v12)
    {
      v13 = [(_PASLazyPlist *)self propertyListWithData:v12 needsValidation:0 error:0];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = plistCopy;
      }

      v16 = v15;
    }

    else
    {
      v16 = plistCopy;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v10;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASLazyPlist: Unable to create tempfile for temporary _PASLazyPlist backing storage: %@", buf, 0xCu);
    }

    v16 = plistCopy;
  }

  objc_autoreleasePoolPop(v6);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)propertyListWithData:(uint64_t)data needsValidation:(void *)validation error:
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = objc_opt_self();
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_propertyListWithData_needsValidation_error_ object:v7 file:@"_PASLazyPlist.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<NSData buffer %p>", objc_msgSend(v6, "bytes")];
  v33 = 0;
  if (([v7 isLazyPlistLikelyContainedInData:v6 format:&v33] & 1) == 0)
  {
    v13 = v9;
    v14 = objc_opt_new();
    [v14 setObject:@"The file is not a lazy plist archive." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v14 setObject:0 forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A368]];

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = [v14 copy];
    v17 = [v15 initWithDomain:@"_PASLazyPlistErrorDomain" code:2 userInfo:v16];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v17;
      v18 = MEMORY[0x1E69E9C10];
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (v33 != 2)
  {
    if (v33 == 1)
    {
      v10 = [_PASLPReaderV1 alloc];
      v32 = 0;
      v11 = &v32;
      v12 = &v32;
      goto LABEL_11;
    }

LABEL_16:
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    v25 = [v24 initWithFormat:@"Unsupported format version %tu", v33];
    v17 = wrongVersionError(v25);

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    v35 = v17;
    v18 = MEMORY[0x1E69E9C10];
LABEL_24:
    _os_log_error_impl(&dword_1A7F47000, v18, OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", buf, 0xCu);
    goto LABEL_17;
  }

  v19 = objc_opt_self();
  if (![v19 isSubclassOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v10 = [_PASLPReaderBinaryPlist alloc];
  v31 = 0;
  v11 = &v31;
  v12 = &v31;
LABEL_11:
  v20 = [(_PASLPReaderV1 *)v10 initWithData:v6 sourcedFromPath:v9 needsValidation:data error:v12];
  v21 = *v11;
  v17 = v21;
  if (!v20)
  {
    if (!v21)
    {
      goto LABEL_16;
    }

LABEL_17:
    v22 = 0;
    goto LABEL_18;
  }

  v30 = 0;
  v22 = [(_PASLPReaderV1 *)v20 rootObjectWithErrMsg:&v30];
  if (!v22)
  {
    v23 = corruptionError(v9, v30);

    v17 = v23;
  }

LABEL_18:
  objc_autoreleasePoolPop(v8);
  if (validation)
  {
    v26 = v17;
    *validation = v17;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (BOOL)isLazyPlistLikelyContainedInFileAtPath:(id)path format:(unint64_t *)format
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLazyPlist.m" lineNumber:458 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v8 = objc_autoreleasePoolPush();
  v15 = 0;
  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:pathCopy options:1 error:&v15];
  v10 = v15;
  if (v9)
  {
    v11 = [self isLazyPlistLikelyContainedInData:v9 format:format];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = pathCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASLazyPlist: Unable to load file %@: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)isLazyPlistLikelyContainedInData:(id)data format:(unint64_t *)format
{
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLazyPlist.m" lineNumber:427 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = objc_opt_self();
  if ([v9 isSubclassOfClass:objc_opt_class()] && objc_msgSend(dataCopy, "length") >= 6 && ((v10 = objc_msgSend(dataCopy, "bytes"), *v10 == 1768714338) ? (v11 = *(v10 + 4) == 29811) : (v11 = 0), v11))
  {
    if (format)
    {
      *format = 2;
    }

    v12 = 1;
  }

  else if ([dataCopy length] >= 0x10)
  {
    v15 = *[dataCopy bytes];
    v12 = (v15 ^ 0x4C50 | BYTE2(v15) ^ 0x50) == 0;
    if (format && !(v15 ^ 0x4C50 | BYTE2(v15) ^ 0x50))
    {
      *format = BYTE3(v15);
    }
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v8);

  return v12;
}

+ (id)fileBackedDataWithPropertyList:(id)list writtenToPath:(id)path format:(unint64_t)format error:(id *)error
{
  listCopy = list;
  pathCopy = path;
  if (format == 1)
  {
    error = [_PASLPWriterV1 fileBackedDataWithPropertyList:listCopy writtenToPath:pathCopy error:error];
  }

  else if (error)
  {
    format = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"version code %tu is unsupported", format];
    *error = wrongVersionError(format);

    error = 0;
  }

  return error;
}

+ (id)dataWithPropertyList:(id)list format:(unint64_t)format error:(id *)error
{
  listCopy = list;
  if (format != 2)
  {
    if (format == 1)
    {
      v9 = [_PASLPWriterV1 dataWithPropertyList:listCopy error:error];
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  v10 = objc_opt_self();
  if (![v10 isSubclassOfClass:objc_opt_class()])
  {
LABEL_11:
    if (error)
    {
      format = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"version code %tu is unsupported", format];
      *error = wrongVersionError(format);
    }

    v9 = 0;
    goto LABEL_24;
  }

  v24 = 0;
  v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:listCopy format:200 options:0 error:&v24];
  v12 = v24;
  v13 = v12;
  if (v11 && !v12)
  {
    v23 = 0;
    v14 = [(_PASLazyPlist *)self propertyListWithData:v11 needsValidation:1 error:&v23];
    v13 = v23;
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    DeepCopy = [listCopy _pas_unlazyArray];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      DeepCopy = [listCopy _pas_unlazyDictionary];
    }

    else
    {
      DeepCopy = CFPropertyListCreateDeepCopy(0, listCopy, 0);
    }
  }

  v17 = DeepCopy;
  if (!DeepCopy)
  {
    goto LABEL_19;
  }

  v22 = 0;
  v18 = [MEMORY[0x1E696AE40] dataWithPropertyList:DeepCopy format:200 options:0 error:&v22];
  v19 = v22;

  v11 = v18;
  v13 = v19;
  if (v19)
  {
LABEL_19:
    if (error)
    {
      v20 = v13;
      v9 = 0;
      *error = v13;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
LABEL_21:
    v11 = v11;
    v13 = 0;
    v9 = v11;
  }

LABEL_24:

  return v9;
}

+ (id)arrayWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [self propertyListWithData:dataCopy error:error];
  if (!v7)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    error = v7;
    goto LABEL_7;
  }

  if (error)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<NSData buffer %p>", objc_msgSend(dataCopy, "bytes")];
    v9 = objc_opt_new();
    [v9 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v9 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A368]];

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = [v9 copy];
    v12 = [v10 initWithDomain:@"_PASLazyPlistErrorDomain" code:5 userInfo:v11];

    v13 = v12;
    *error = v12;

LABEL_6:
    error = 0;
  }

LABEL_7:

  return error;
}

+ (id)arrayWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [self propertyListWithPath:pathCopy error:error];
  if (!v7)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_7;
  }

  if (error)
  {
    v9 = pathCopy;
    v10 = objc_opt_new();
    [v10 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v10 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A368]];

    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = [v10 copy];
    v13 = [v11 initWithDomain:@"_PASLazyPlistErrorDomain" code:5 userInfo:v12];

    v14 = v13;
    v8 = 0;
    *error = v13;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

+ (id)dictionaryWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [self propertyListWithData:dataCopy error:error];
  if (!v7)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    error = v7;
    goto LABEL_7;
  }

  if (error)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<NSData buffer %p>", objc_msgSend(dataCopy, "bytes")];
    v9 = objc_opt_new();
    [v9 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v9 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A368]];

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = [v9 copy];
    v12 = [v10 initWithDomain:@"_PASLazyPlistErrorDomain" code:5 userInfo:v11];

    v13 = v12;
    *error = v12;

LABEL_6:
    error = 0;
  }

LABEL_7:

  return error;
}

+ (id)dictionaryWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [self propertyListWithPath:pathCopy error:error];
  if (!v7)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_7;
  }

  if (error)
  {
    v9 = pathCopy;
    v10 = objc_opt_new();
    [v10 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v10 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A368]];

    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = [v10 copy];
    v13 = [v11 initWithDomain:@"_PASLazyPlistErrorDomain" code:5 userInfo:v12];

    v14 = v13;
    v8 = 0;
    *error = v13;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

+ (id)propertyListWithPath:(id)path fileRange:(_NSRange)range error:(id *)error
{
  length = range.length;
  location = range.location;
  v43 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLazyPlist.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v11 = objc_autoreleasePoolPush();
  v40 = 0;
  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:pathCopy options:1 error:&v40];
  v13 = v40;
  v14 = v13;
  if (!v12)
  {
    if (v13)
    {
      localizedDescription = [v13 localizedDescription];
    }

    else
    {
      localizedDescription = @"Unable to open the file.";
    }

    v15 = fileAccessError(pathCopy, localizedDescription);

    if (v14)
    {
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v15;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", buf, 0xCu);
    }

    goto LABEL_22;
  }

  if (location + length > [v12 length])
  {
    v15 = fileAccessError(pathCopy, @"Specified file range exceeds actual file length.");

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v15;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", buf, 0xCu);
    }

LABEL_22:
    v25 = 0;
    goto LABEL_23;
  }

  v17 = [v12 subdataWithRange:{location, length}];

  v39 = 0;
  if (([self isLazyPlistLikelyContainedInData:v17 format:&v39] & 1) == 0)
  {
    v21 = pathCopy;
    v22 = objc_opt_new();
    [v22 setObject:@"The file is not a lazy plist archive." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v22 setObject:0 forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v22 setObject:v21 forKeyedSubscript:*MEMORY[0x1E696A368]];

    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = [v22 copy];
    v15 = [v23 initWithDomain:@"_PASLazyPlistErrorDomain" code:2 userInfo:v24];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v15;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", buf, 0xCu);
    }

    goto LABEL_22;
  }

  if (v39 == 2)
  {
    v29 = objc_opt_self();
    if (![v29 isSubclassOfClass:objc_opt_class()])
    {
      goto LABEL_35;
    }

    v18 = [_PASLPReaderBinaryPlist alloc];
    v37 = v14;
    v19 = &v37;
    v20 = &v37;
  }

  else
  {
    if (v39 != 1)
    {
      goto LABEL_35;
    }

    v18 = [_PASLPReaderV1 alloc];
    v38 = v14;
    v19 = &v38;
    v20 = &v38;
  }

  v30 = [(_PASLPReaderBinaryPlist *)v18 initWithData:v17 sourcedFromPath:pathCopy needsValidation:1 error:v20];
  v31 = *v19;

  if (!v30)
  {
    v14 = v31;
LABEL_35:
    if (!v14)
    {
      v33 = objc_alloc(MEMORY[0x1E696AEC0]);
      v34 = [v33 initWithFormat:@"Unsupported format version %tu", v39];
      v14 = wrongVersionError(v34);

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v14;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", buf, 0xCu);
      }
    }

    v25 = 0;
    goto LABEL_39;
  }

  v36 = 0;
  v25 = [(_PASLPReaderBinaryPlist *)v30 rootObjectWithErrMsg:&v36];
  if (!v25)
  {
    v32 = corruptionError(pathCopy, v36);

    v31 = v32;
  }

  v14 = v31;
LABEL_39:

  v15 = v14;
LABEL_23:
  objc_autoreleasePoolPop(v11);
  if (error)
  {
    v26 = v15;
    *error = v15;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)propertyListWithPath:(id)path error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLazyPlist.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v8 = objc_autoreleasePoolPush();
  v36 = 0;
  v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:pathCopy options:1 error:&v36];
  v10 = v36;
  v11 = v10;
  if (!v9)
  {
    if (v10)
    {
      localizedDescription = [v10 localizedDescription];
    }

    else
    {
      localizedDescription = @"Unable to open the file.";
    }

    v20 = fileAccessError(pathCopy, localizedDescription);

    if (v11)
    {
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 138412290;
    v38 = v20;
    v21 = MEMORY[0x1E69E9C10];
    goto LABEL_17;
  }

  v35 = 0;
  if (([self isLazyPlistLikelyContainedInData:v9 format:&v35] & 1) == 0)
  {
    v16 = pathCopy;
    v17 = objc_opt_new();
    [v17 setObject:@"The file is not a lazy plist archive." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v17 setObject:0 forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v17 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696A368]];

    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = [v17 copy];
    v20 = [v18 initWithDomain:@"_PASLazyPlistErrorDomain" code:2 userInfo:v19];

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_27:
      v24 = 0;
      goto LABEL_28;
    }

    *buf = 138412290;
    v38 = v20;
    v21 = MEMORY[0x1E69E9C10];
LABEL_17:
    _os_log_error_impl(&dword_1A7F47000, v21, OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", buf, 0xCu);
    goto LABEL_27;
  }

  if (v35 != 2)
  {
    if (v35 == 1)
    {
      v12 = [_PASLPReaderV1 alloc];
      v34 = v11;
      v13 = &v34;
      v14 = &v34;
      goto LABEL_20;
    }

LABEL_24:
    v20 = v11;
LABEL_25:
    if (v20)
    {
      goto LABEL_27;
    }

    v26 = objc_alloc(MEMORY[0x1E696AEC0]);
    v27 = [v26 initWithFormat:@"Unsupported format version %tu", v35];
    v20 = wrongVersionError(v27);

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 138412290;
    v38 = v20;
    v21 = MEMORY[0x1E69E9C10];
    goto LABEL_17;
  }

  v22 = objc_opt_self();
  if (![v22 isSubclassOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v12 = [_PASLPReaderBinaryPlist alloc];
  v33 = v11;
  v13 = &v33;
  v14 = &v33;
LABEL_20:
  v23 = [(_PASLPReaderV1 *)v12 initWithData:v9 sourcedFromPath:pathCopy needsValidation:1 error:v14];
  v20 = *v13;

  if (!v23)
  {
    goto LABEL_25;
  }

  v32 = 0;
  v24 = [(_PASLPReaderV1 *)v23 rootObjectWithErrMsg:&v32];
  if (!v24)
  {
    v25 = corruptionError(pathCopy, v32);

    v20 = v25;
  }

LABEL_28:
  objc_autoreleasePoolPop(v8);
  if (error)
  {
    v28 = v20;
    *error = v20;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v24;
}

@end