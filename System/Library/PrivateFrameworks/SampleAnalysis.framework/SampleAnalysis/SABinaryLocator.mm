@interface SABinaryLocator
+ (id)sharedBinaryLocator;
- (SABinaryLocator)init;
- (_BYTE)addURLForSymbolOwner:(_BYTE *)a1;
- (id)mappings;
- (id)urlForUUID:(_BYTE *)a1;
- (uint64_t)addURL:(uint64_t)a3 ForUUID:;
- (uint64_t)removeURLForUUID:(uint64_t)result;
- (void)_saveMappings;
- (void)done;
@end

@implementation SABinaryLocator

+ (id)sharedBinaryLocator
{
  if (qword_1EDD03308 != -1)
  {
    dispatch_once(&qword_1EDD03308, &__block_literal_global_14);
  }

  v2 = qword_1EDD03300;
  objc_sync_enter(v2);
  ++_MergedGlobals_10;
  objc_sync_exit(v2);

  v3 = qword_1EDD03300;

  return v3;
}

- (void)done
{
  obj = self;
  objc_sync_enter(obj);
  if (!--_MergedGlobals_10)
  {
    if (obj->_enabled)
    {
      [(SABinaryLocator *)obj _saveMappings];
    }

    mappings = obj->_mappings;
    obj->_mappings = 0;
  }

  objc_sync_exit(obj);
}

- (void)_saveMappings
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 24) != 1 || geteuid())
    {
      goto LABEL_27;
    }

    if (v1[1])
    {
      v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1[1], "count") + 1}];
      v3 = v1[1];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __32__SABinaryLocator__saveMappings__block_invoke;
      v29[3] = &unk_1E86F8790;
      v4 = v2;
      v30 = v4;
      [v3 enumerateKeysAndObjectsUsingBlock:v29];
      [v4 setObject:v1[2] forKeyedSubscript:@"build_number"];
      memset(&v28, 0, sizeof(v28));
      if (stat("/var/db/spindump", &v28))
      {
        if (*__error() != 2)
        {
          v7 = *__error();
          v14 = _sa_logt();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v20 = *__error();
            v21 = __error();
            v22 = strerror(*v21);
            *buf = 136315650;
            v32 = "/var/db/spindump";
            v33 = 1024;
            v34 = v20;
            v35 = 2080;
            v36 = v22;
            _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "Unable to stat %s: %d %s", buf, 0x1Cu);
          }

          v9 = __error();
          goto LABEL_20;
        }

        v5 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v32 = "/var/db/spindump";
          _os_log_debug_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_DEBUG, "Creating nugget directory %s", buf, 0xCu);
        }

        *__error() = v5;
        if (mkdir("/var/db/spindump", 0x1EDu))
        {
          v7 = *__error();
          v8 = _sa_logt();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v23 = *__error();
            v24 = __error();
            v25 = strerror(*v24);
            *buf = 136315650;
            v32 = "/var/db/spindump";
            v33 = 1024;
            v34 = v23;
            v35 = 2080;
            v36 = v25;
            _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "Unable to create %s: %d %s", buf, 0x1Cu);
          }

          v9 = __error();
LABEL_20:
          *v9 = v7;

          goto LABEL_27;
        }
      }

      v10 = [objc_alloc(MEMORY[0x1E695DFC0]) initToFileAtPath:@"/var/db/spindump/UUIDToBinaryLocations" append:0];
      v11 = v10;
      if (!v10)
      {
        v15 = *__error();
        v16 = _sa_logt();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "Unable to create stream for binary locator path", buf, 2u);
        }

        *__error() = v15;
        goto LABEL_27;
      }

      [v10 open];
      v27 = 0;
      v12 = [MEMORY[0x1E696AE40] writePropertyList:v4 toStream:v11 format:200 options:0 error:&v27];
      v13 = v27;
      [v11 close];
      if (!v12)
      {
        v17 = *__error();
        v18 = _sa_logt();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v26 = [v13 debugDescription];
          *buf = 138412290;
          v32 = v26;
          _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "Unable to save mappings: %@", buf, 0xCu);
        }

        *__error() = v17;
        goto LABEL_27;
      }
    }

    *(v1 + 24) = 0;
LABEL_27:
    objc_sync_exit(v1);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __32__SABinaryLocator__saveMappings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];

    if (v6 != a3)
    {
      v7 = [a3 path];
      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = [a2 UUIDString];
        [v8 setObject:v7 forKey:v9];
      }

      else
      {
        v10 = *__error();
        v11 = _sa_logt();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315138;
          v14 = [a3 fileSystemRepresentation];
          _os_log_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_DEFAULT, "WARNING: Unable to get path for %s", &v13, 0xCu);
        }

        *__error() = v10;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (SABinaryLocator)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"You must call sharedBinaryLocator" reason:0 userInfo:0];
  objc_exception_throw(v2);
}

void __38__SABinaryLocator_sharedBinaryLocator__block_invoke()
{
  v0 = [SABinaryLocator alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = SABinaryLocator;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_enabled = 1;
    }
  }

  v1 = qword_1EDD03300;
  qword_1EDD03300 = v0;
}

- (id)mappings
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[1];
  if (!v2 && (*(v1 + 25) & 1) != 0)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/var/db/spindump/UUIDToBinaryLocations"];
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSObject count](v3, "count")}];
    v5 = v1[1];
    v1[1] = v4;

    if (v1[2])
    {
      goto LABEL_7;
    }

    v6 = _CFCopySystemVersionDictionary();
    v7 = v6;
    if (v6)
    {
      v8 = CFDictionaryGetValue(v6, *MEMORY[0x1E695E1E8]);
      v9 = v1[2];
      v1[2] = v8;

      v10 = v1[2];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_42;
      }

      while (1)
      {
        CFRelease(v7);
LABEL_7:
        if (!v3)
        {
          goto LABEL_23;
        }

LABEL_8:
        v11 = [v3 objectForKeyedSubscript:@"build_number"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v12 = v1[2];
        if (!v12)
        {
          goto LABEL_12;
        }

        if (!v11)
        {
          v13 = 0;
LABEL_14:
          v11 = @"unknown";
          goto LABEL_15;
        }

        v13 = v11;
        if ([v12 isEqualToString:v11])
        {
          goto LABEL_12;
        }

LABEL_15:
        v15 = [@"/var/db/spindump/UUIDToBinaryLocations" UTF8String];
        if (v15)
        {
          if (unlink(v15))
          {
            v16 = *__error();
            v17 = _sa_logt();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v26 = *__error();
              *buf = 138412546;
              v44 = @"/var/db/spindump/UUIDToBinaryLocations";
              v45 = 1024;
              LODWORD(v46) = v26;
              _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "Unable to unlink old binary locator file %@: %{errno}d", buf, 0x12u);
            }

            v18 = __error();
          }

          else
          {
            v16 = *__error();
            v25 = _sa_logt();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v27 = [v3 count];
              *buf = 138412546;
              v44 = v11;
              v45 = 2048;
              v46 = v27;
              _os_log_debug_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_DEBUG, "Deleted old binary locator file from old build %@ with %ld items", buf, 0x16u);
            }

            v18 = __error();
          }

          *v18 = v16;

          v14 = v1[1];
          goto LABEL_34;
        }

        v7 = *__error();
        v3 = _sa_logt();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v3, OS_LOG_TYPE_ERROR, "No cstring path for nsstring path", buf, 2u);
        }

        *__error() = v7;
        _SASetCrashLogMessage(112, "No cstring path for nsstring path", v30, v31, v32, v33, v34, v35, v41);
        _os_crash();
        __break(1u);
LABEL_42:
        v36 = *__error();
        v37 = _sa_logt();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          ClassName = object_getClassName(v1[2]);
          *buf = 136315138;
          v44 = ClassName;
          _os_log_fault_impl(&dword_1E0E2F000, v37, OS_LOG_TYPE_FAULT, "Version dict provided invalid build number (class %s)", buf, 0xCu);
        }

        *__error() = v36;
        v38 = v1[2];
        v1[2] = 0;
      }

      v28 = *__error();
      v29 = _sa_logt();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        v39 = object_getClassName(v11);
        *buf = 136315138;
        v44 = v39;
        _os_log_fault_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_FAULT, "Invalid build number class %s", buf, 0xCu);
      }

      *__error() = v28;
      v13 = 0;
      if (!v1[2])
      {
        v11 = 0;
LABEL_12:
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __27__SABinaryLocator_mappings__block_invoke;
        v42[3] = &unk_1E86F5AC0;
        v42[4] = v1;
        [v3 enumerateKeysAndObjectsUsingBlock:v42];
        v14 = v1[1];

        v13 = v11;
LABEL_34:

        goto LABEL_27;
      }

      goto LABEL_14;
    }

    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_FAULT, "No system version", buf, 2u);
    }

    *__error() = v19;
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_23:
    v21 = *__error();
    v22 = _sa_logt();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_DEFAULT, "WARNING: Unable to open binary locator database", buf, 2u);
    }

    *__error() = v21;
    v2 = v1[1];
  }

  v14 = v2;
LABEL_27:
  objc_sync_exit(v1);

  v23 = *MEMORY[0x1E69E9840];

  return v14;
}

void __27__SABinaryLocator_mappings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      ClassName = object_getClassName(a2);
      v14 = 2080;
      v15 = object_getClassName(a3);
      _os_log_fault_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_FAULT, "Invalid entry in UUIDToBinaryLocations: %s -> %s", buf, 0x16u);
    }

    *__error() = v9;
    goto LABEL_4;
  }

  if ([a2 isEqualToString:@"build_number"])
  {
LABEL_4:
    v6 = *MEMORY[0x1E69E9840];
    return;
  }

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3 isDirectory:0];
  v7 = uuidForString(a2);
  if (v7)
  {
    [*(*(a1 + 32) + 8) setObject:v11 forKey:v7];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)urlForUUID:(_BYTE *)a1
{
  v33[2] = *MEMORY[0x1E69E9840];
  if (!a1 || a1[25] != 1)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v3 = a1;
  objc_sync_enter(v3);
  v4 = [(SABinaryLocator *)v3 mappings];
  v5 = [v4 objectForKey:a2];

  objc_sync_exit(v3);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [MEMORY[0x1E695DFB0] null];

  if (v5 == v6)
  {
    v11 = 0;
    goto LABEL_23;
  }

  v7 = [v5 path];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v5 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (!v10)
  {
LABEL_9:
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [a2 UUIDString];
      v15 = [v5 path];
      *buf = 138412546;
      v30 = v14;
      v31 = 2112;
      v32[0] = v15;
      _os_log_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_INFO, "Found stale entry for UUID %@, mapping to non-existent path %@. This will be ignored and evicted from the cache.", buf, 0x16u);
    }

    *__error() = v12;
    v3[24] = 1;
    v16 = v3;
    objc_sync_enter(v16);
    v17 = [(SABinaryLocator *)v16 mappings];
    [v17 removeObjectForKey:a2];

    objc_sync_exit(v16);
LABEL_12:
    v33[0] = 0;
    v33[1] = 0;
    [a2 getUUIDBytes:v33];
    OSLogLookupPathWithUUID();
    v18 = SAFilepathForCString(0);
    if ([v18 isAbsolutePath])
    {
      v19 = *__error();
      v20 = _sa_logt();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v30 = v18;
        v31 = 1040;
        LODWORD(v32[0]) = 16;
        WORD2(v32[0]) = 2096;
        *(v32 + 6) = v33;
        _os_log_debug_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_DEBUG, "Got %@ for %{uuid_t}.16P from libtrace", buf, 0x1Cu);
      }

      *__error() = v19;
      v21 = [MEMORY[0x1E696AC08] defaultManager];
      v22 = [v21 fileExistsAtPath:v18];

      if (v22)
      {
        v23 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v18 isDirectory:0];

        [(SABinaryLocator *)v3 addURL:v23 ForUUID:a2];
        v5 = v23;
        v11 = v5;
      }

      else
      {
        v24 = *__error();
        v25 = _sa_logt();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [a2 UUIDString];
          *buf = 138412546;
          v30 = v26;
          v31 = 2080;
          v32[0] = 0;
          _os_log_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_INFO, "OSLogLookupPathWithUUID returned stale entry for UUID %@; path %s doesn't exist. This will be ignored.", buf, 0x16u);
        }

        v11 = 0;
        *__error() = v24;
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_23;
  }

  v5 = v5;
  v11 = v5;
LABEL_23:

LABEL_24:
  v27 = *MEMORY[0x1E69E9840];

  return v11;
}

- (uint64_t)addURL:(uint64_t)a3 ForUUID:
{
  v24 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_18;
  }

  v3 = result;
  if (*(result + 25) != 1)
  {
    goto LABEL_17;
  }

  result = 0;
  if (!a2 || !a3)
  {
    goto LABEL_18;
  }

  v6 = [a2 fileSystemRepresentation];
  if (!v6)
  {
LABEL_15:
    v13 = v3;
    objc_sync_enter(v13);
    v14 = [(SABinaryLocator *)v13 mappings];
    v15 = [v14 objectForKey:a3];
    if (!v15)
    {
      v13[24] = 1;
      [v14 setObject:a2 forKey:a3];

      objc_sync_exit(v13);
      result = 1;
      goto LABEL_18;
    }

    objc_sync_exit(v13);
    goto LABEL_17;
  }

  v7 = v6;
  memset(&v18, 0, sizeof(v18));
  if (stat(v6, &v18))
  {
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  memset(&v23, 0, 512);
  if (statfs(v7, &v23))
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = *__error();
      *buf = 136315394;
      v20 = v7;
      v21 = 1024;
      v22 = v17;
      _os_log_debug_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_DEBUG, "Unable to statfs %s: %{errno}d", buf, 0x12u);
    }

    *__error() = v8;
    goto LABEL_15;
  }

  if (v23.f_type != 22)
  {
    goto LABEL_15;
  }

  v10 = *__error();
  v11 = _sa_logt();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v20 = v7;
    _os_log_debug_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_DEBUG, "Not caching translocated path %s", buf, 0xCu);
  }

  v12 = __error();
  result = 0;
  *v12 = v10;
LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (_BYTE)addURLForSymbolOwner:(_BYTE *)a1
{
  v1 = a1;
  if (a1)
  {
    if (a1[25] == 1)
    {
      CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
      Path = CSSymbolOwnerGetPath();
      v4 = SAFilepathForCString(Path);
      v5 = v4;
      if (CFUUIDBytes && [v4 isAbsolutePath])
      {
        v6 = uuidForBytes(CFUUIDBytes);
        v7 = [(SABinaryLocator *)v1 urlForUUID:v6];

        if (v7)
        {
          v1 = 0;
        }

        else
        {
          v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v5 isDirectory:0];
          v1 = [(SABinaryLocator *)v1 addURL:v8 ForUUID:v6];
        }
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (uint64_t)removeURLForUUID:(uint64_t)result
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      if (v3[25])
      {
        v4 = [(SABinaryLocator *)v3 urlForUUID:a2];
        if (v4)
        {
          v5 = *__error();
          v6 = _sa_logt();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            v10 = [a2 UUIDString];
            *buf = 138412546;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = [v4 fileSystemRepresentation];
            _os_log_debug_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_DEBUG, "Deleted %@ -> %s", buf, 0x16u);
          }

          *__error() = v5;
          v3[24] = 1;
          *buf = 0;
          *&buf[8] = 0;
          [a2 getUUIDBytes:buf];
          OSLogLookupPathWithUUID();
          v7 = v3;
          objc_sync_enter(v7);
          v8 = [(SABinaryLocator *)v7 mappings];
          [v8 removeObjectForKey:a2];

          objc_sync_exit(v3);
          result = 1;
        }

        else
        {
          result = 0;
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

@end