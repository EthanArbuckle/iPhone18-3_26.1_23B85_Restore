@interface TCCDAdhocSignatureCache
- (TCCDAdhocSignatureCache)initWithDirectoryPath:(id)a3 capacity:(unint64_t)a4;
- (id)cacheKeyForStaticCode:(__SecCode *)a3;
- (id)getSignatureForStaticCode:(__SecCode *)a3;
- (id)loadSignatureWithUUID:(id)a3;
- (id)logHandle;
- (id)stateDump;
- (void)addSignature:(id)a3 forStaticCode:(__SecCode *)a4;
- (void)createStateHandler;
- (void)loadKeysFromDirectory;
- (void)maintainSize;
- (void)saveKeysToDirectory;
- (void)saveSignature:(id)a3 withUUID:(id)a4;
@end

@implementation TCCDAdhocSignatureCache

- (id)logHandle
{
  if (qword_1000C11D0 != -1)
  {
    sub_100046318();
  }

  v3 = qword_1000C11D8;

  return v3;
}

- (TCCDAdhocSignatureCache)initWithDirectoryPath:(id)a3 capacity:(unint64_t)a4
{
  v6 = a3;
  v29.receiver = self;
  v29.super_class = TCCDAdhocSignatureCache;
  v7 = [(TCCDAdhocSignatureCache *)&v29 init];
  if (v7)
  {
    if (!v6)
    {
      v25 = 0;
      goto LABEL_15;
    }

    v8 = [v6 copy];
    directoryPath = v7->_directoryPath;
    v7->_directoryPath = v8;

    v10 = [(NSString *)v7->_directoryPath stringByAppendingPathComponent:@"keys"];
    keysPath = v7->_keysPath;
    v7->_keysPath = v10;

    v7->_capacity = a4;
    v12 = +[NSFileManager defaultManager];
    fileManager = v7->_fileManager;
    v7->_fileManager = v12;

    v28 = 0;
    if ([(NSFileManager *)v7->_fileManager fileExistsAtPath:v7->_directoryPath isDirectory:&v28]&& v28 == 1)
    {
      [(TCCDAdhocSignatureCache *)v7 loadKeysFromDirectory];
      v14 = 0;
    }

    else
    {
      v15 = v7->_fileManager;
      v16 = v7->_directoryPath;
      v27 = 0;
      v17 = [(NSFileManager *)v15 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v27];
      v14 = v27;
      if ((v17 & 1) == 0)
      {
        v18 = [(TCCDAdhocSignatureCache *)v7 logHandle];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10004632C();
        }
      }
    }

    if (!v7->_keys)
    {
      v19 = objc_alloc_init(NSMutableDictionary);
      keys = v7->_keys;
      v7->_keys = v19;
    }

    v21 = objc_alloc_init(NSCache);
    signatures = v7->_signatures;
    v7->_signatures = v21;

    [(NSCache *)v7->_signatures setName:@"AdhocSignatureCache"];
    [(NSCache *)v7->_signatures setTotalCostLimit:v7->_capacity];
    v23 = dispatch_queue_create("com.apple.tcc.AdhocSignatureCache", 0);
    queue = v7->_queue;
    v7->_queue = v23;

    [(TCCDAdhocSignatureCache *)v7 createStateHandler];
  }

  v25 = v7;
LABEL_15:

  return v25;
}

- (id)stateDump
{
  v3 = +[NSMutableDictionary dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_keys;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_keys objectForKeyedSubscript:v9, v18];
        v11 = [v10 mutableCopy];
        [v3 setObject:v11 forKeyedSubscript:v9];

        v12 = [v3 objectForKeyedSubscript:v9];
        v13 = [v12 objectForKeyedSubscript:@"UUID"];

        v14 = [v13 UUIDString];
        v15 = [v3 objectForKeyedSubscript:v9];
        [v15 setObject:v14 forKeyedSubscript:@"UUID"];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];

  return v16;
}

- (void)createStateHandler
{
  v2 = dispatch_get_global_queue(0, 0);
  os_state_add_handler();
}

- (void)loadKeysFromDirectory
{
  keysPath = self->_keysPath;
  v16 = 0;
  v4 = [NSData dataWithContentsOfFile:keysPath options:0 error:&v16];
  v5 = v16;
  if (v5)
  {
    v6 = v5;
    v7 = [(TCCDAdhocSignatureCache *)self logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004644C();
    }
  }

  else
  {
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v7 = [NSSet setWithObjects:v8, v9, v10, v11, objc_opt_class(), 0];
    v15 = 0;
    v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v4 error:&v15];
    v6 = v15;
    if (v6)
    {
      p_super = [(TCCDAdhocSignatureCache *)self logHandle];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_1000464B4();
      }
    }

    else
    {
      v14 = [v12 mutableCopy];
      p_super = &self->_keys->super.super;
      self->_keys = v14;
    }
  }
}

- (void)saveKeysToDirectory
{
  keys = self->_keys;
  v11 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:keys requiringSecureCoding:1 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = v5;
    v7 = [(TCCDAdhocSignatureCache *)self logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004651C();
    }

LABEL_7:

    goto LABEL_8;
  }

  keysPath = self->_keysPath;
  v10 = 0;
  v9 = [v4 writeToFile:keysPath options:1 error:&v10];
  v6 = v10;
  if ((v9 & 1) == 0)
  {
    v7 = [(TCCDAdhocSignatureCache *)self logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004658C();
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (id)loadSignatureWithUUID:(id)a3
{
  directoryPath = self->_directoryPath;
  v5 = [a3 UUIDString];
  v6 = [(NSString *)directoryPath stringByAppendingPathComponent:v5];

  v11 = 0;
  v7 = [NSData dataWithContentsOfFile:v6 options:0 error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = [(TCCDAdhocSignatureCache *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000465F4();
    }
  }

  return v7;
}

- (void)saveSignature:(id)a3 withUUID:(id)a4
{
  directoryPath = self->_directoryPath;
  v7 = a3;
  v8 = [a4 UUIDString];
  v9 = [(NSString *)directoryPath stringByAppendingPathComponent:v8];

  v12 = 0;
  LOBYTE(v8) = [v7 writeToFile:v9 options:1 error:&v12];

  v10 = v12;
  if ((v8 & 1) == 0)
  {
    v11 = [(TCCDAdhocSignatureCache *)self logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100046668();
    }
  }
}

- (id)cacheKeyForStaticCode:(__SecCode *)a3
{
  path = 0;
  memset(&v36, 0, 512);
  if (SecCodeCopyPath(a3, 0, &path) || (v4 = path) == 0)
  {
    v11 = [(TCCDAdhocSignatureCache *)self logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000466DC();
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v4 = 0;
    goto LABEL_37;
  }

  if (statfs([(__CFURL *)path fileSystemRepresentation], &v36))
  {
    v5 = [(TCCDAdhocSignatureCache *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100046750(v4, v5);
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_37;
  }

  v10 = [NSString stringWithUTF8String:v36.f_fstypename];
  v9 = [NSString stringWithUTF8String:v36.f_mntonname];
  *&v41 = 0;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  HIDWORD(v34) = 0;
  v35 = 0;
  LODWORD(v34) = 5;
  *(&v34 + 4) = 0x8006000080000000;
  v12 = getattrlist(v36.f_mntonname, &v34, &v37, 0x48uLL, 0);
  if (v12)
  {
    v13 = v12;
    if (qword_1000C11D0 != -1)
    {
      sub_1000467EC();
    }

    v14 = qword_1000C11D8;
    if (os_log_type_enabled(qword_1000C11D8, OS_LOG_TYPE_ERROR))
    {
      sub_100046814(v36.f_mntonname, v14, v13);
    }

    v6 = 0;
  }

  else
  {
    if ((BYTE10(v37) & 4) != 0)
    {
      v15 = [[NSUUID alloc] initWithUUIDBytes:&v40 + 8];
      v16 = v15;
    }

    else
    {
      if (qword_1000C11D0 != -1)
      {
        sub_1000467EC();
      }

      if (os_log_type_enabled(qword_1000C11D8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000468A8();
      }

      v15 = 0;
    }

    if ((BYTE10(v37) & 2) != 0)
    {
      v17 = BYTE8(v39);
    }

    else
    {
      if (qword_1000C11D0 != -1)
      {
        sub_1000467EC();
      }

      if (os_log_type_enabled(qword_1000C11D8, OS_LOG_TYPE_DEBUG))
      {
        sub_100046910();
      }

      v17 = 0;
    }

    v6 = v15;
    v18 = [(__CFURL *)v4 fileSystemRepresentation];
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v35 = 0x1400000000;
    v34 = 0x8000080000000005;
    v19 = getattrlist(v18, &v34, &v37, 0x43CuLL, 0x20u);
    if (!v19)
    {
      if ((BYTE5(v37) & 8) != 0)
      {
        v25 = *(&v38 + 1);
      }

      else
      {
        v25 = 0.0;
      }

      v26 = BYTE4(v38);
      if ((BYTE4(v38) & 4) != 0)
      {
        v27 = [NSString stringWithUTF8String:&v39 + SDWORD2(v39) + 8];
        v26 = BYTE4(v38);
      }

      else
      {
        v27 = 0;
      }

      if ((v26 & 0x10) != 0)
      {
        v28 = v40;
      }

      else
      {
        v28 = 0;
      }

      v8 = v27;
      v29 = [NSDate dateWithTimeIntervalSince1970:v25];
      v7 = v29;
      if ((v17 & (v28 > 1)) != 0 || v8)
      {
        if ((v17 & (v28 > 1)) != 0)
        {
          v31 = v28;
        }

        else
        {
          v31 = 0;
        }

        [v29 timeIntervalSince1970];
        v22 = [NSString stringWithFormat:@"%@:%@:%@:%lld:%ld", v9, v8, v6, v31, v32];
        goto LABEL_38;
      }

      v30 = [(TCCDAdhocSignatureCache *)self logHandle];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100046A0C(v4, v30);
      }

      goto LABEL_36;
    }

    v20 = v19;
    if (qword_1000C11D0 != -1)
    {
      sub_1000467EC();
    }

    v21 = qword_1000C11D8;
    if (os_log_type_enabled(qword_1000C11D8, OS_LOG_TYPE_ERROR))
    {
      sub_100046978(v18, v21, v20);
    }
  }

  v7 = 0;
LABEL_36:
  v8 = 0;
LABEL_37:
  v22 = 0;
LABEL_38:
  v23 = v22;

  return v23;
}

- (void)maintainSize
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100045620;
  block[3] = &unk_1000A4F58;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)getSignatureForStaticCode:(__SecCode *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100007540;
  v16 = sub_1000075A0;
  v17 = 0;
  v4 = [(TCCDAdhocSignatureCache *)self cacheKeyForStaticCode:a3];
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100045C14;
    block[3] = &unk_1000A5070;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(queue, block);
  }

  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)addSignature:(id)a3 forStaticCode:(__SecCode *)a4
{
  v6 = a3;
  if (v6 && a4)
  {
    v7 = [(TCCDAdhocSignatureCache *)self cacheKeyForStaticCode:a4];
    v8 = v7;
    if (v7)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100045FEC;
      block[3] = &unk_1000A5098;
      block[4] = self;
      v11 = v7;
      v12 = v6;
      dispatch_async(queue, block);
    }
  }
}

@end