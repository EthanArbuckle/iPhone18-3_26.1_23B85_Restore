@interface _PASLazyPlist
+ (BOOL)isLazyPlistLikelyContainedInData:(id)a3 format:(unint64_t *)a4;
+ (BOOL)isLazyPlistLikelyContainedInFileAtPath:(id)a3 format:(unint64_t *)a4;
+ (id)arrayWithData:(id)a3 error:(id *)a4;
+ (id)arrayWithPath:(id)a3 error:(id *)a4;
+ (id)dataWithPropertyList:(id)a3 format:(unint64_t)a4 error:(id *)a5;
+ (id)deserializationStatsHandler;
+ (id)dictionaryWithData:(id)a3 error:(id *)a4;
+ (id)dictionaryWithPath:(id)a3 error:(id *)a4;
+ (id)fileBackedDataWithPropertyList:(id)a3 writtenToPath:(id)a4 format:(unint64_t)a5 error:(id *)a6;
+ (id)lazyPlistWithPlist:(id)a3;
+ (id)propertyListWithData:(uint64_t)a3 needsValidation:(void *)a4 error:;
+ (id)propertyListWithPath:(id)a3 error:(id *)a4;
+ (id)propertyListWithPath:(id)a3 fileRange:(_NSRange)a4 error:(id *)a5;
+ (id)serializationStatsHandler;
+ (void)setDeserializationStatsHandler:(id)a3;
+ (void)setSerializationStatsHandler:(id)a3;
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

+ (void)setDeserializationStatsHandler:(id)a3
{
  v3 = a3;
  pthread_mutex_lock(&_statsHandlerLock);
  v4 = MEMORY[0x1AC566DD0](v3);

  v5 = _deserializationStatsHandler;
  _deserializationStatsHandler = v4;

  pthread_mutex_unlock(&_statsHandlerLock);
}

+ (void)setSerializationStatsHandler:(id)a3
{
  v3 = a3;
  pthread_mutex_lock(&_statsHandlerLock);
  v4 = MEMORY[0x1AC566DD0](v3);

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

+ (id)lazyPlistWithPlist:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"_PASLazyPlist.m" lineNumber:486 description:{@"Invalid parameter not satisfying: %@", @"plist"}];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:@"_PASLazyPlist-memoryopt.plplist-"];

  v20 = 0;
  v9 = [_PASFileUtils mkstempWithPrefix:v8 error:&v20];
  v10 = v20;
  if (v9)
  {
    v11 = [v9 path];
    unlink([v11 fileSystemRepresentation]);

    v12 = [a1 fileBackedDataWithPropertyList:v5 appendedToFd:objc_msgSend(v9 startOfs:"fd") error:{0, 0}];
    close([v9 fd]);
    if (v12)
    {
      v13 = [(_PASLazyPlist *)a1 propertyListWithData:v12 needsValidation:0 error:0];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v5;
      }

      v16 = v15;
    }

    else
    {
      v16 = v5;
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

    v16 = v5;
  }

  objc_autoreleasePoolPop(v6);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)propertyListWithData:(uint64_t)a3 needsValidation:(void *)a4 error:
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = objc_opt_self();
  if (!v6)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:sel_propertyListWithData_needsValidation_error_ object:v7 file:@"_PASLazyPlist.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"data"}];
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
  v20 = [(_PASLPReaderV1 *)v10 initWithData:v6 sourcedFromPath:v9 needsValidation:a3 error:v12];
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
  if (a4)
  {
    v26 = v17;
    *a4 = v17;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (BOOL)isLazyPlistLikelyContainedInFileAtPath:(id)a3 format:(unint64_t *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"_PASLazyPlist.m" lineNumber:458 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v8 = objc_autoreleasePoolPush();
  v15 = 0;
  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v7 options:1 error:&v15];
  v10 = v15;
  if (v9)
  {
    v11 = [a1 isLazyPlistLikelyContainedInData:v9 format:a4];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v7;
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

+ (BOOL)isLazyPlistLikelyContainedInData:(id)a3 format:(unint64_t *)a4
{
  v7 = a3;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"_PASLazyPlist.m" lineNumber:427 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = objc_opt_self();
  if ([v9 isSubclassOfClass:objc_opt_class()] && objc_msgSend(v7, "length") >= 6 && ((v10 = objc_msgSend(v7, "bytes"), *v10 == 1768714338) ? (v11 = *(v10 + 4) == 29811) : (v11 = 0), v11))
  {
    if (a4)
    {
      *a4 = 2;
    }

    v12 = 1;
  }

  else if ([v7 length] >= 0x10)
  {
    v15 = *[v7 bytes];
    v12 = (v15 ^ 0x4C50 | BYTE2(v15) ^ 0x50) == 0;
    if (a4 && !(v15 ^ 0x4C50 | BYTE2(v15) ^ 0x50))
    {
      *a4 = BYTE3(v15);
    }
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v8);

  return v12;
}

+ (id)fileBackedDataWithPropertyList:(id)a3 writtenToPath:(id)a4 format:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  if (a5 == 1)
  {
    a6 = [_PASLPWriterV1 fileBackedDataWithPropertyList:v9 writtenToPath:v10 error:a6];
  }

  else if (a6)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"version code %tu is unsupported", a5];
    *a6 = wrongVersionError(v11);

    a6 = 0;
  }

  return a6;
}

+ (id)dataWithPropertyList:(id)a3 format:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (a4 != 2)
  {
    if (a4 == 1)
    {
      v9 = [_PASLPWriterV1 dataWithPropertyList:v8 error:a5];
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  v10 = objc_opt_self();
  if (![v10 isSubclassOfClass:objc_opt_class()])
  {
LABEL_11:
    if (a5)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"version code %tu is unsupported", a4];
      *a5 = wrongVersionError(v16);
    }

    v9 = 0;
    goto LABEL_24;
  }

  v24 = 0;
  v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:&v24];
  v12 = v24;
  v13 = v12;
  if (v11 && !v12)
  {
    v23 = 0;
    v14 = [(_PASLazyPlist *)a1 propertyListWithData:v11 needsValidation:1 error:&v23];
    v13 = v23;
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    DeepCopy = [v8 _pas_unlazyArray];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      DeepCopy = [v8 _pas_unlazyDictionary];
    }

    else
    {
      DeepCopy = CFPropertyListCreateDeepCopy(0, v8, 0);
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
    if (a5)
    {
      v20 = v13;
      v9 = 0;
      *a5 = v13;
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

+ (id)arrayWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 propertyListWithData:v6 error:a4];
  if (!v7)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4 = v7;
    goto LABEL_7;
  }

  if (a4)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<NSData buffer %p>", objc_msgSend(v6, "bytes")];
    v9 = objc_opt_new();
    [v9 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v9 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A368]];

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = [v9 copy];
    v12 = [v10 initWithDomain:@"_PASLazyPlistErrorDomain" code:5 userInfo:v11];

    v13 = v12;
    *a4 = v12;

LABEL_6:
    a4 = 0;
  }

LABEL_7:

  return a4;
}

+ (id)arrayWithPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 propertyListWithPath:v6 error:a4];
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

  if (a4)
  {
    v9 = v6;
    v10 = objc_opt_new();
    [v10 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v10 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A368]];

    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = [v10 copy];
    v13 = [v11 initWithDomain:@"_PASLazyPlistErrorDomain" code:5 userInfo:v12];

    v14 = v13;
    v8 = 0;
    *a4 = v13;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

+ (id)dictionaryWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 propertyListWithData:v6 error:a4];
  if (!v7)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4 = v7;
    goto LABEL_7;
  }

  if (a4)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<NSData buffer %p>", objc_msgSend(v6, "bytes")];
    v9 = objc_opt_new();
    [v9 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v9 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A368]];

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = [v9 copy];
    v12 = [v10 initWithDomain:@"_PASLazyPlistErrorDomain" code:5 userInfo:v11];

    v13 = v12;
    *a4 = v12;

LABEL_6:
    a4 = 0;
  }

LABEL_7:

  return a4;
}

+ (id)dictionaryWithPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 propertyListWithPath:v6 error:a4];
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

  if (a4)
  {
    v9 = v6;
    v10 = objc_opt_new();
    [v10 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v10 setObject:@"The lazy plist archive root object has unexpected type." forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A368]];

    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = [v10 copy];
    v13 = [v11 initWithDomain:@"_PASLazyPlistErrorDomain" code:5 userInfo:v12];

    v14 = v13;
    v8 = 0;
    *a4 = v13;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

+ (id)propertyListWithPath:(id)a3 fileRange:(_NSRange)a4 error:(id *)a5
{
  length = a4.length;
  location = a4.location;
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (!v10)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:a1 file:@"_PASLazyPlist.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v11 = objc_autoreleasePoolPush();
  v40 = 0;
  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v10 options:1 error:&v40];
  v13 = v40;
  v14 = v13;
  if (!v12)
  {
    if (v13)
    {
      v16 = [v13 localizedDescription];
    }

    else
    {
      v16 = @"Unable to open the file.";
    }

    v15 = fileAccessError(v10, v16);

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
    v15 = fileAccessError(v10, @"Specified file range exceeds actual file length.");

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
  if (([a1 isLazyPlistLikelyContainedInData:v17 format:&v39] & 1) == 0)
  {
    v21 = v10;
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

  v30 = [(_PASLPReaderBinaryPlist *)v18 initWithData:v17 sourcedFromPath:v10 needsValidation:1 error:v20];
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
    v32 = corruptionError(v10, v36);

    v31 = v32;
  }

  v14 = v31;
LABEL_39:

  v15 = v14;
LABEL_23:
  objc_autoreleasePoolPop(v11);
  if (a5)
  {
    v26 = v15;
    *a5 = v15;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)propertyListWithPath:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:a1 file:@"_PASLazyPlist.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v8 = objc_autoreleasePoolPush();
  v36 = 0;
  v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v7 options:1 error:&v36];
  v10 = v36;
  v11 = v10;
  if (!v9)
  {
    if (v10)
    {
      v15 = [v10 localizedDescription];
    }

    else
    {
      v15 = @"Unable to open the file.";
    }

    v20 = fileAccessError(v7, v15);

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
  if (([a1 isLazyPlistLikelyContainedInData:v9 format:&v35] & 1) == 0)
  {
    v16 = v7;
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
  v23 = [(_PASLPReaderV1 *)v12 initWithData:v9 sourcedFromPath:v7 needsValidation:1 error:v14];
  v20 = *v13;

  if (!v23)
  {
    goto LABEL_25;
  }

  v32 = 0;
  v24 = [(_PASLPReaderV1 *)v23 rootObjectWithErrMsg:&v32];
  if (!v24)
  {
    v25 = corruptionError(v7, v32);

    v20 = v25;
  }

LABEL_28:
  objc_autoreleasePoolPop(v8);
  if (a4)
  {
    v28 = v20;
    *a4 = v20;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v24;
}

@end