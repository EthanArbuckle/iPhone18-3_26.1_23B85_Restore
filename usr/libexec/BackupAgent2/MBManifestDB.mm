@interface MBManifestDB
+ (MBManifestDB)manifestDBWithDrive:(id)drive sourcePath:(id)path properties:(id)properties domainManager:(id)manager keybag:(id)keybag error:(id *)error;
- (BOOL)_checkPassword:(id)password withPasswordHash:(id)hash andSalt:(id)salt;
- (BOOL)_isNotFoundError:(id)error;
- (BOOL)_setupCacheWithError:(id *)error;
- (BOOL)_setupConnectionWithError:(id *)error;
- (BOOL)checkWithError:(id *)error;
- (BOOL)closeAndRemoveFileWithError:(id *)error;
- (BOOL)closeWithError:(id *)error;
- (BOOL)containsFileID:(id)d error:(id *)error;
- (BOOL)containsPlaceholderForFileID:(id)d error:(id *)error;
- (BOOL)containsRegularFileForFileID:(id)d error:(id *)error;
- (BOOL)encrypted;
- (BOOL)hasUnverifiedFilesWithError:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)setPasswordHashForPassword:(id)password salt:(id)salt withError:(id *)error;
- (BOOL)setupEncryptionWithPassword:(id)password withError:(id *)error;
- (BOOL)uploadToPath:(id)path withDrive:(id)drive keybag:(id)keybag error:(id *)error;
- (MBManifestDB)initWithPath:(id)path properties:(id)properties domainManager:(id)manager;
- (id)_enumerateObjectsOfClass:(Class)class withCallback:(id)callback format:(id)format;
- (id)_executeSQL:(id)l;
- (id)_fetchObjectOfClass:(Class)class withError:(id *)error format:(id)format;
- (id)_newConnection:(id)connection;
- (id)_passwordHashWithPassword:(id)password salt:(id)salt;
- (id)addFile:(id)file flags:(unint64_t)flags;
- (id)addPlaceholderForFile:(id)file flags:(unint64_t)flags;
- (id)enumerateFiles:(id)files includeUninstalled:(BOOL)uninstalled;
- (id)fetchFileWithID:(id)d error:(id *)error;
- (id)fetchPropertyWithName:(id)name class:(Class)class error:(id *)error;
- (id)getEncryptedFileHandleWithKeybag:(id)keybag error:(id *)error;
- (id)removeFileWithID:(id)d;
- (id)removeFilesNotAlreadyUploaded;
- (id)setFlags:(unint64_t)flags forFileID:(id)d;
- (id)setFlags:(unint64_t)flags mask:(unint64_t)mask forFileID:(id)d;
- (id)unsetAlreadyUploadedFlags;
- (id)unsetVerifiedFlags;
- (unint64_t)flagsForFileID:(id)d error:(id *)error;
- (void)_checkEncryption;
- (void)_performOnDBQueue:(id)queue;
- (void)dealloc;
- (void)flush;
@end

@implementation MBManifestDB

+ (MBManifestDB)manifestDBWithDrive:(id)drive sourcePath:(id)path properties:(id)properties domainManager:(id)manager keybag:(id)keybag error:(id *)error
{
  driveCopy = drive;
  pathCopy = path;
  propertiesCopy = properties;
  managerCopy = manager;
  keybagCopy = keybag;
  v18 = sub_100028F5C();
  if ([propertiesCopy encrypted] && (objc_msgSend(propertiesCopy, "manifestEncryptionKey"), v19 = objc_claimAutoreleasedReturnValue(), v19, !keybagCopy) && v19)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "No keybag available to decrypt manifest", buf, 2u);
      _MBLog();
    }

    if (error)
    {
      [MBError errorWithCode:1 format:@"No keybag available to decrypt encrypted manifest"];
      *error = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    if ([propertiesCopy encrypted])
    {
      manifestEncryptionKey = [propertiesCopy manifestEncryptionKey];

      v23 = &__NSDictionary0__struct;
      if (keybagCopy && manifestEncryptionKey)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Decrypting manifest database", buf, 2u);
          _MBLog();
        }

        v25 = objc_alloc_init(MBManifestDBDownloadHelper);
        [(MBManifestDBDownloadHelper *)v25 setKeybag:keybagCopy];
        [(MBManifestDBDownloadHelper *)v25 setProperties:propertiesCopy];
        v37 = @"FileHandleFactory";
        v38 = v25;
        v23 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      }
    }

    else
    {
      v23 = &__NSDictionary0__struct;
    }

    v32 = 0;
    v26 = [driveCopy downloadFileAtPath:pathCopy toPath:v18 options:v23 error:&v32];
    v27 = v32;
    if ((v26 & 1) == 0)
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to download manifest db from backup: %@", buf, 0xCu);
        _MBLog();
      }

      if (error)
      {
        v29 = v27;
        *error = v27;
      }
    }

    v21 = [[MBManifestDB alloc] initWithPath:v18 properties:propertiesCopy domainManager:managerCopy];
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v34 = pathCopy;
      v35 = 2112;
      v36 = v18;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "ManifestDB: downloading %@ to %@", buf, 0x16u);
      _MBLog();
    }
  }

  return v21;
}

- (MBManifestDB)initWithPath:(id)path properties:(id)properties domainManager:(id)manager
{
  pathCopy = path;
  propertiesCopy = properties;
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = MBManifestDB;
  v13 = [(MBManifestDB *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_path, path);
    objc_storeStrong(&v14->_domainManager, manager);
    objc_storeStrong(&v14->_properties, properties);
    if (!v14->_properties)
    {
      v15 = objc_alloc_init(MBProperties);
      properties = v14->_properties;
      v14->_properties = v15;
    }

    encryptedFileHandle = v14->_encryptedFileHandle;
    v14->_encryptedFileHandle = 0;

    if (!v14->_domainManager)
    {
      sub_10009DE44(a2, v14);
    }

    v18 = dispatch_queue_create("com.apple.MobileBackup.MBManifestDBCallback", &_dispatch_queue_attr_concurrent);
    callbackQueue = v14->_callbackQueue;
    v14->_callbackQueue = v18;
  }

  return v14;
}

- (void)dealloc
{
  v3 = self->_pdb;
  pdb = self->_pdb;
  self->_pdb = 0;

  if (v3)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      *buf = 138412290;
      v13 = path;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Database (%@) was not closed before dealloc", buf, 0xCu);
      v8 = self->_path;
      _MBLog();
    }

    serialQueue = [(PQLConnection *)v3 serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000438F8;
    block[3] = &unk_1000FDBC8;
    v11 = v3;
    dispatch_async(serialQueue, block);
  }

  v9.receiver = self;
  v9.super_class = MBManifestDB;
  [(MBManifestDB *)&v9 dealloc];
}

- (BOOL)openWithError:(id *)error
{
  if (!self->_pdb)
  {
    v4 = [[NSString alloc] initWithFormat:@"ManifestDB-%lu", -[MBManifestDB hash](self, "hash")];
    stringByDeletingLastPathComponent = [(NSString *)self->_path stringByDeletingLastPathComponent];
    v9 = +[NSFileManager defaultManager];
    v21[0] = NSFileOwnerAccountName;
    v21[1] = NSFileGroupOwnerAccountName;
    v22[0] = @"mobile";
    v22[1] = @"mobile";
    v10 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    LODWORD(error) = [v9 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v10 error:error];

    if (error)
    {
      v11 = [(MBManifestDB *)self _newConnection:v4];
      pdb = self->_pdb;
      self->_pdb = v11;

      v18 = 0;
      v13 = [(MBManifestDB *)self _setupCacheWithError:&v18];
      v14 = v18;
      if (v13)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100043B90;
        v17[3] = &unk_1000FDBC8;
        v17[4] = self;
        [(MBManifestDB *)self _performOnDBQueue:v17];

        goto LABEL_2;
      }

      v15 = self->_pdb;
      self->_pdb = 0;
    }

    v7 = 0;
    goto LABEL_10;
  }

LABEL_2:
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    path = [(MBManifestDB *)self path];
    *buf = 138412290;
    v20 = path;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ManifestDB: opening %@", buf, 0xCu);

    stringByDeletingLastPathComponent = [(MBManifestDB *)self path];
    _MBLog();
    v7 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (BOOL)closeWithError:(id *)error
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100043EA0;
  v21 = sub_100043EB0;
  v22 = 0;
  pql_database = [(MBManifestDB *)self pql_database];

  if (pql_database)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100043EB8;
    v16[3] = &unk_1000FDBF0;
    v16[4] = self;
    v16[5] = &v23;
    v16[6] = &v17;
    [(MBManifestDB *)self _performOnDBQueue:v16];
    path = [(MBManifestDB *)self path];
    v7 = [path stringByAppendingString:@"-shm"];

    v8 = +[NSFileManager defaultManager];
    [v8 removeItemAtPath:v7 error:0];

    pdb = self->_pdb;
    self->_pdb = 0;
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [(MBManifestDB *)self path];
      *buf = 138412290;
      v28 = path2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ManifestDB: closing %@", buf, 0xCu);
    }

    path3 = [(MBManifestDB *)self path];
    _MBLog();
  }

  v13 = *(v24 + 24);
  if (error && (v24[3] & 1) == 0)
  {
    *error = v18[5];
    v13 = *(v24 + 24);
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v13 & 1;
}

- (BOOL)closeAndRemoveFileWithError:(id *)error
{
  v5 = [(MBManifestDB *)self closeWithError:?];
  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    path = [(MBManifestDB *)self path];
    v8 = [v6 removeItemAtPath:path error:error];

    if (v8)
    {
      encryptedFileHandle = self->_encryptedFileHandle;
      self->_encryptedFileHandle = 0;

      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [(MBManifestDB *)self path];
        *buf = 138412290;
        v15 = path2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ManifestDB: removing %@", buf, 0xCu);

        path3 = [(MBManifestDB *)self path];
        _MBLog();
      }

      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)checkWithError:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100043EA0;
  v15 = sub_100043EB0;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004420C;
  v6[3] = &unk_1000FDBF0;
  v6[4] = self;
  v6[5] = &v11;
  v6[6] = &v7;
  [(MBManifestDB *)self _performOnDBQueue:v6];
  v4 = *(v8 + 24);
  if (error && (v8[3] & 1) == 0)
  {
    *error = v12[5];
    v4 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v4 & 1;
}

- (void)flush
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100044314;
  v2[3] = &unk_1000FDBC8;
  v2[4] = self;
  [(MBManifestDB *)self _performOnDBQueue:v2];
}

- (BOOL)uploadToPath:(id)path withDrive:(id)drive keybag:(id)keybag error:(id *)error
{
  pathCopy = path;
  driveCopy = drive;
  keybagCopy = keybag;
  properties = [(MBManifestDB *)self properties];
  encrypted = [properties encrypted];

  if (!encrypted)
  {
    v19 = &__NSDictionary0__struct;
    goto LABEL_7;
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    path = self->_path;
    *buf = 138412290;
    pathCopy2 = path;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Setting up the upload of an encrypted manifest database located at %@", buf, 0xCu);
    v28 = self->_path;
    _MBLog();
  }

  v17 = objc_alloc_init(MBManifestDBUploadHelper);
  v18 = [(MBManifestDB *)self getEncryptedFileHandleWithKeybag:keybagCopy error:error];
  [(MBManifestDBUploadHelper *)v17 setFileHandle:v18];

  if (self->_encryptedFileHandle)
  {
    v35 = @"FileHandleFactory";
    v36 = v17;
    v19 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];

LABEL_7:
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = self->_path;
      *buf = 138412546;
      pathCopy2 = v21;
      v33 = 2112;
      v34 = pathCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "ManifestDB: uploading manifest database from path %@ to path %@", buf, 0x16u);
      v29 = self->_path;
      _MBLog();
    }

    v22 = self->_path;
    v30 = 0;
    v23 = [driveCopy uploadFileAtPath:v22 toPath:pathCopy options:v19 error:&v30];
    v24 = v30;
    if (v23)
    {
      v25 = 1;
    }

    else if (error)
    {
      v24 = v24;
      v25 = 0;
      *error = v24;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_17;
  }

  v26 = MBGetDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Can't upload without a file handle to the db", buf, 2u);
    _MBLog();
  }

  v24 = 0;
  v25 = 0;
  v19 = &__NSDictionary0__struct;
LABEL_17:

  return v25;
}

- (id)getEncryptedFileHandleWithKeybag:(id)keybag error:(id *)error
{
  if (self->_encryptedFileHandle)
  {
    v5 = MBGetDefaultLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    p_path = &self->_path;
    path = self->_path;
    *buf = 138412290;
    v15 = path;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Using existing cached file handle for manifest DB at path %@", buf, 0xCu);
  }

  else
  {
    p_path = &self->_path;
    v8 = [MBEncryptedFileHandle encryptedFileHandleForBackupWithPath:self->_path keybag:keybag error:error];
    encryptedFileHandle = self->_encryptedFileHandle;
    self->_encryptedFileHandle = v8;

    v5 = MBGetDefaultLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v10 = *p_path;
    *buf = 138412290;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Acquiring and caching a new encrypted file handle for manifest DB at path %@", buf, 0xCu);
  }

  v13 = *p_path;
  _MBLog();
LABEL_7:

  v11 = self->_encryptedFileHandle;

  return v11;
}

- (id)_newConnection:(id)connection
{
  connectionCopy = connection;
  v4 = objc_alloc_init(PQLConnection);
  [v4 setSqliteErrorHandler:&stru_1000FDC30];
  sqliteErrorHandler = [v4 sqliteErrorHandler];
  [v4 setAutoRollbackHandler:sqliteErrorHandler];

  [v4 setLabel:connectionCopy];
  v6 = +[MBBehaviorOptions sharedOptions];
  [v4 setTraced:{objc_msgSend(v6, "sqlTrace")}];

  [v4 setCrashIfUsedAfterClose:1];
  [v4 setStatementCacheMaxCount:30];
  return v4;
}

- (BOOL)_setupConnectionWithError:(id *)error
{
  pql_database = [(MBManifestDB *)self pql_database];
  v6 = [NSURL fileURLWithPath:self->_path];
  v7 = [pql_database openAtURL:v6 withFlags:6 error:error];

  if (v7)
  {
    pql_database2 = [(MBManifestDB *)self pql_database];
    setupPragmas = [pql_database2 setupPragmas];

    if (setupPragmas)
    {
      return 1;
    }

    pql_database3 = [(MBManifestDB *)self pql_database];
    [pql_database3 close:error];
  }

  pdb = self->_pdb;
  self->_pdb = 0;

  return 0;
}

- (BOOL)_setupCacheWithError:(id *)error
{
  v5 = [(MBManifestDB *)self _setupConnectionWithError:?];
  if (v5)
  {
    pql_database = [(MBManifestDB *)self pql_database];
    userVersion = [pql_database userVersion];
    unsignedIntValue = [userVersion unsignedIntValue];

    pql_database2 = [(MBManifestDB *)self pql_database];
    v10 = pql_database2;
    if (unsignedIntValue < 2)
    {
      v11 = [pql_database2 url];

      *v50 = 61;
      pql_database3 = [(MBManifestDB *)self pql_database];
      v13 = sqlite3_file_control([pql_database3 dbHandle], 0, 101, v50);

      pql_database4 = [(MBManifestDB *)self pql_database];
      v15 = [pql_database4 close:error];

      if ((v15 & 1) == 0)
      {
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = *error;
          *buf = 138412290;
          *&buf[4] = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Can't close db: %@", buf, 0xCu);
          v43 = *error;
          _MBLog();
        }
      }

      if (v13)
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v11;
          *&buf[12] = 1024;
          *&buf[14] = v13;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to truncate database at %@: %d", buf, 0x12u);
          v43 = v11;
          v44 = v13;
          _MBLog();
        }

        v19 = v11;
        if (unlink([v11 fileSystemRepresentation]) < 0)
        {
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = *__error();
            *buf = 138412546;
            *&buf[4] = v11;
            *&buf[12] = 1024;
            *&buf[14] = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to unlink %@: %{errno}d", buf, 0x12u);
            v43 = v11;
            v44 = *__error();
            _MBLog();
          }
        }
      }

      v22 = [(MBManifestDB *)self _setupConnectionWithError:error, v43, v44];

      if (v22)
      {
        pql_database5 = [(MBManifestDB *)self pql_database];
        [pql_database5 execute:@"PRAGMA cache_size = 250"];

        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *&buf[4] = unsignedIntValue;
          *&buf[8] = 1024;
          *&buf[10] = 2;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Migrating manifest database from version %d to %d", buf, 0xEu);
          v43 = unsignedIntValue;
          v44 = 2;
          _MBLog();
        }

        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *&buf[4] = unsignedIntValue;
          *&buf[8] = 1024;
          *&buf[10] = 2;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Migrating database from version %d to %d", buf, 0xEu);
          v43 = unsignedIntValue;
          v44 = 2;
          _MBLog();
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v57 = sub_100043EA0;
        v58 = sub_100043EB0;
        v59 = 0;
        pql_database6 = [(MBManifestDB *)self pql_database];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_1000452BC;
        v46[3] = &unk_1000FDC88;
        v47 = 0;
        v48 = unsignedIntValue;
        v49 = 2;
        v46[4] = self;
        v46[5] = buf;
        v27 = [pql_database6 performWithFlags:10 action:v46];

        if (v27)
        {
          pql_database7 = [(MBManifestDB *)self pql_database];
          [pql_database7 setUserVersion:2];

          pql_database8 = [(MBManifestDB *)self pql_database];
          userVersion2 = [pql_database8 userVersion];
          [userVersion2 unsignedIntValue];

          _Block_object_dispose(buf, 8);
LABEL_22:
          v31 = [(MBManifestDB *)self pql_database:v43];
          v32 = +[MBBehaviorOptions sharedOptions];
          [v32 sqlBatchTime];
          v34 = v33;
          v35 = +[MBBehaviorOptions sharedOptions];
          [v31 useBatchingWithDelay:objc_msgSend(v35 changeCount:{"sqlBatchCount"), v34}];

          pql_database9 = [(MBManifestDB *)self pql_database];
          [pql_database9 useSerialQueue];

          pql_database10 = [(MBManifestDB *)self pql_database];
          serialQueue = [pql_database10 serialQueue];
          dispatch_queue_set_specific(serialQueue, self, self, 0);

          LOBYTE(v5) = 1;
          return v5;
        }

        v39 = MBGetDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = *(*&buf[8] + 40);
          *v50 = 67109634;
          v51 = unsignedIntValue;
          v52 = 1024;
          v53 = 2;
          v54 = 2112;
          v55 = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Migration from version %d to %d failed, error:%@", v50, 0x18u);
          v45 = *(*&buf[8] + 40);
          _MBLog();
        }

        pql_database11 = [(MBManifestDB *)self pql_database];
        [pql_database11 close:0];

        if (error)
        {
          *error = *(*&buf[8] + 40);
        }

        _Block_object_dispose(buf, 8);
      }

      LOBYTE(v5) = 0;
      return v5;
    }

    [pql_database2 execute:@"PRAGMA cache_size = 250"];

    goto LABEL_22;
  }

  return v5;
}

- (void)_performOnDBQueue:(id)queue
{
  queueCopy = queue;
  if (dispatch_get_specific(self) == self)
  {
    v7 = objc_autoreleasePoolPush();
    queueCopy[2](queueCopy);
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    serialQueue = [(PQLConnection *)selfCopy->_pdb serialQueue];
    dispatch_assert_queue_not_V2(serialQueue);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100045564;
    block[3] = &unk_1000FDCB0;
    v9 = queueCopy;
    dispatch_sync(serialQueue, block);

    objc_sync_exit(selfCopy);
  }
}

- (BOOL)_isNotFoundError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == 12)
  {
    domain = [errorCopy domain];
    v5 = [domain isEqualToString:PQLSqliteErrorDomain];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_executeSQL:(id)l
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100043EA0;
  v16 = sub_100043EB0;
  v17 = 0;
  v11 = &v19;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004576C;
  v6[3] = &unk_1000FD840;
  selfCopy = self;
  lCopy = l;
  v9 = &v12;
  v10 = &v11;
  v8 = lCopy;
  [(MBManifestDB *)selfCopy _performOnDBQueue:v6];
  v4 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v4;
}

- (id)_enumerateObjectsOfClass:(Class)class withCallback:(id)callback format:(id)format
{
  callbackCopy = callback;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100043EA0;
  v24 = sub_100043EB0;
  v25 = 0;
  v19 = &v27;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100045988;
  v13[3] = &unk_1000FDD00;
  v13[4] = self;
  formatCopy = format;
  v14 = formatCopy;
  v17 = &v19;
  classCopy = class;
  v10 = callbackCopy;
  v15 = v10;
  v16 = &v20;
  [(MBManifestDB *)self _performOnDBQueue:v13];
  v11 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v11;
}

- (id)_fetchObjectOfClass:(Class)class withError:(id *)error format:(id)format
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100043EA0;
  v28 = sub_100043EB0;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100043EA0;
  v22 = sub_100043EB0;
  v23 = 0;
  v17 = &v31;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100045E14;
  v10[3] = &unk_1000FDD28;
  v13 = &v18;
  selfCopy = self;
  classCopy = class;
  formatCopy = format;
  v16 = &v17;
  v12 = formatCopy;
  v14 = &v24;
  [(MBManifestDB *)selfCopy _performOnDBQueue:v10];
  v7 = v19[5];
  if (error && !v7)
  {
    *error = v25[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v8;
}

- (void)_checkEncryption
{
  if ([(MBManifestDB *)self encrypted])
  {
    passwordData = [(MBManifestDB *)self passwordData];

    if (!passwordData)
    {
      v7 = [MBException alloc];
      v8 = @"Manifest is encrypted but no password set";
      v9 = 207;
LABEL_8:
      objc_exception_throw([v7 initWithCode:v9 format:v8]);
    }
  }

  passwordData2 = [(MBManifestDB *)self passwordData];
  if (passwordData2)
  {
    v5 = passwordData2;
    passwordHash = [(MBManifestDB *)self passwordHash];

    if (!passwordHash)
    {
      v7 = [MBException alloc];
      v8 = @"Password is set but no password hash available";
      v9 = 1;
      goto LABEL_8;
    }
  }
}

- (BOOL)_checkPassword:(id)password withPasswordHash:(id)hash andSalt:(id)salt
{
  passwordCopy = password;
  hashCopy = hash;
  saltCopy = salt;
  if (passwordCopy | hashCopy)
  {
    if (!passwordCopy || hashCopy)
    {
      if (passwordCopy || !hashCopy)
      {
        v14 = [passwordCopy dataUsingEncoding:4];
        v11 = [(MBManifestDB *)self _passwordHashWithPassword:v14 salt:saltCopy];

        v12 = [hashCopy isEqualToData:v11];
        if ((v12 & 1) == 0)
        {
          v15 = MBGetDefaultLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [hashCopy base64EncodedStringWithOptions:0];
            v17 = [v11 base64EncodedStringWithOptions:0];
            *buf = 138412546;
            v21 = v16;
            v22 = 2112;
            v23 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Password does not match password hash (%@ != %@)", buf, 0x16u);

            v18 = [hashCopy base64EncodedStringWithOptions:0];
            v19 = [v11 base64EncodedStringWithOptions:0];
            _MBLog();
          }
        }

        goto LABEL_13;
      }

      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Password not set but there is a password hash", buf, 2u);
        goto LABEL_11;
      }
    }

    else
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Password set but no available password hash", buf, 2u);
LABEL_11:
        _MBLog();
      }
    }

    v12 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v12 = 1;
LABEL_14:

  return v12;
}

- (id)_passwordHashWithPassword:(id)password salt:(id)salt
{
  saltCopy = salt;
  v6 = [password mutableCopy];
  [v6 appendData:saltCopy];

  v7 = +[MBDigest sha256];
  v8 = [v7 digestForData:v6];

  return v8;
}

- (BOOL)setupEncryptionWithPassword:(id)password withError:(id *)error
{
  passwordCopy = password;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting up encryption for manifest database", buf, 2u);
    _MBLog();
  }

  passwordData = [(MBManifestDB *)self passwordData];
  if (!passwordData)
  {
LABEL_8:
    v31 = 0;
    v14 = [(MBManifestDB *)self fetchPropertyWithName:@"passwordHash" class:objc_opt_class() error:&v31];
    v15 = v31;
    if (v15)
    {
      v16 = v15;
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to fetch password hash from database: %@", buf, 0xCu);
        _MBLog();
      }

      if (error)
      {
        v18 = v16;
        v13 = 0;
        *error = v16;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_43;
    }

    v30 = 0;
    v19 = [(MBManifestDB *)self fetchPropertyWithName:@"salt" class:objc_opt_class() error:&v30];
    v16 = v30;
    if (v16)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to fetch salt from database: %@", buf, 0xCu);
        _MBLog();
      }

      if (error)
      {
        v21 = v16;
        v13 = 0;
        *error = v16;
LABEL_42:

LABEL_43:
        goto LABEL_44;
      }

LABEL_41:
      v13 = 0;
      goto LABEL_42;
    }

    if (!v14 || v19)
    {
      if (!v14 || !v19 || [(MBManifestDB *)self _checkPassword:passwordCopy withPasswordHash:v14 andSalt:v19])
      {
        v25 = [passwordCopy dataUsingEncoding:4];
        v13 = v25 != 0;
        if (v25)
        {
          [(MBManifestDB *)self setSalt:v19];
          salt = [(MBManifestDB *)self salt];

          if (salt)
          {
            [(MBManifestDB *)self setPasswordData:v25];
          }
        }

        else
        {
          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to encode password", buf, 2u);
            _MBLog();
          }

          if (error)
          {
            *error = [MBError errorWithCode:207 format:@"Failed to encode password"];
          }
        }

        goto LABEL_42;
      }

      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Password does not match existing manifest password hash", buf, 2u);
        _MBLog();
      }

      if (!error)
      {
        goto LABEL_41;
      }

      v23 = @"Password does not match existing manifest password hash";
      v24 = 207;
    }

    else
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Inconsistent encryption settings in database: password hash without salt", buf, 2u);
        _MBLog();
      }

      if (!error)
      {
        goto LABEL_41;
      }

      v23 = @"Inconsistent encryption settings in manifest database";
      v24 = 205;
    }

    [MBError errorWithCode:v24 format:v23];
    *error = v13 = 0;
    goto LABEL_42;
  }

  v9 = passwordData;
  passwordHash = [(MBManifestDB *)self passwordHash];
  if (!passwordHash)
  {

    goto LABEL_8;
  }

  v11 = passwordHash;
  salt2 = [(MBManifestDB *)self salt];

  if (!salt2)
  {
    goto LABEL_8;
  }

  v13 = 1;
LABEL_44:

  return v13;
}

- (BOOL)setPasswordHashForPassword:(id)password salt:(id)salt withError:(id *)error
{
  passwordCopy = password;
  saltCopy = salt;
  if (passwordCopy)
  {
    v10 = [(MBManifestDB *)self _passwordHashWithPassword:passwordCopy salt:saltCopy];
    if (v10)
    {
      v11 = [(MBManifestDB *)self setPropertyWithName:@"passwordHash" value:v10];
      v12 = v11 == 0;
      if (v11)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to store password hash in database: %@", buf, 0xCu);
          _MBLog();
        }

        if (error)
        {
          v14 = v11;
          *error = v11;
        }
      }

      else
      {
        [(MBManifestDB *)self setPasswordHash:v10];
      }
    }

    else
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to generate password hash", buf, 2u);
        _MBLog();
      }

      if (error)
      {
        [MBError errorWithCode:1 format:@"Failed to generate password hash"];
        *error = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else if (error)
  {
    [MBError errorWithCode:207 format:@"Cannot set password hash without a password"];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)encrypted
{
  passwordData = [(MBManifestDB *)self passwordData];
  if (passwordData)
  {
    salt = [(MBManifestDB *)self salt];
    v5 = salt != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)addFile:(id)file flags:(unint64_t)flags
{
  fileCopy = file;
  v7 = +[MBDatabaseIndex flagsForMode:](MBDatabaseIndex, "flagsForMode:", [fileCopy mode]) | flags;
  v8 = fileCopy;
  fileID = [v8 fileID];
  string = [fileID string];
  domain = [v8 domain];
  name = [domain name];
  relativePath = [v8 relativePath];
  v14 = [(MBManifestDB *)self _executeSQL:@"INSERT OR REPLACE INTO Files (fileID, domain, relativePath, flags, file) VALUES (%@, %@, %@, %lu, %@)", string, name, relativePath, v7, v8];

  return v14;
}

- (id)addPlaceholderForFile:(id)file flags:(unint64_t)flags
{
  fileID = [file fileID];
  string = [fileID string];
  flags = [(MBManifestDB *)self _executeSQL:@"INSERT OR IGNORE INTO Files (fileID, flags) VALUES (%@, %lu)", string, flags];

  return flags;
}

- (id)removeFileWithID:(id)d
{
  string = [d string];
  v5 = [(MBManifestDB *)self _executeSQL:@"DELETE FROM Files WHERE fileID = %@", string];

  return v5;
}

- (id)setFlags:(unint64_t)flags mask:(unint64_t)mask forFileID:(id)d
{
  dCopy = d;
  string = [dCopy string];
  flags = [(MBManifestDB *)self _executeSQL:@"INSERT OR IGNORE INTO Files (fileID, flags) VALUES (%@, %lu)", string, flags];

  if (flags)
  {
    v11 = flags;
  }

  else
  {
    string2 = [dCopy string];
    v11 = [(MBManifestDB *)self _executeSQL:@"UPDATE Files SET flags = ((flags & %lu) | %lu) WHERE fileID = %@", mask, flags, string2];
  }

  return v11;
}

- (id)setFlags:(unint64_t)flags forFileID:(id)d
{
  dCopy = d;
  string = [dCopy string];
  flags = [(MBManifestDB *)self _executeSQL:@"INSERT OR IGNORE INTO Files (fileID, flags) VALUES (%@, %lu)", string, flags];

  if (flags)
  {
    v9 = flags;
  }

  else
  {
    string2 = [dCopy string];
    v9 = [(MBManifestDB *)self _executeSQL:@"UPDATE Files SET flags = (flags | %lu) WHERE fileID = %@", flags, string2];
  }

  return v9;
}

- (unint64_t)flagsForFileID:(id)d error:(id *)error
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100043EA0;
  v16[4] = sub_100043EB0;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100046EB8;
  v7[3] = &unk_1000FDD50;
  selfCopy = self;
  dCopy = d;
  v9 = dCopy;
  v10 = &v12;
  v11 = v16;
  [(MBManifestDB *)selfCopy _performOnDBQueue:v7];
  v5 = v13[3];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);

  return v5;
}

- (BOOL)containsFileID:(id)d error:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100043EA0;
  v21 = sub_100043EB0;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100047128;
  v8[3] = &unk_1000FDD50;
  selfCopy = self;
  dCopy = d;
  v10 = dCopy;
  v11 = &v13;
  v12 = &v17;
  [(MBManifestDB *)selfCopy _performOnDBQueue:v8];
  if (error)
  {
    *error = v18[5];
  }

  v6 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6;
}

- (BOOL)containsPlaceholderForFileID:(id)d error:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100043EA0;
  v21 = sub_100043EB0;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004739C;
  v8[3] = &unk_1000FDD50;
  selfCopy = self;
  dCopy = d;
  v10 = dCopy;
  v11 = &v13;
  v12 = &v17;
  [(MBManifestDB *)selfCopy _performOnDBQueue:v8];
  if (error)
  {
    *error = v18[5];
  }

  v6 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6;
}

- (BOOL)containsRegularFileForFileID:(id)d error:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100043EA0;
  v21 = sub_100043EB0;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100047610;
  v8[3] = &unk_1000FDD50;
  selfCopy = self;
  dCopy = d;
  v10 = dCopy;
  v11 = &v13;
  v12 = &v17;
  [(MBManifestDB *)selfCopy _performOnDBQueue:v8];
  if (error)
  {
    *error = v18[5];
  }

  v6 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6;
}

- (id)fetchFileWithID:(id)d error:(id *)error
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100043EA0;
  v18[4] = sub_100043EB0;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100043EA0;
  v16 = sub_100043EB0;
  v17 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000478A4;
  v7[3] = &unk_1000FDD50;
  selfCopy = self;
  dCopy = d;
  v9 = dCopy;
  v10 = v18;
  v11 = &v12;
  [(MBManifestDB *)selfCopy _performOnDBQueue:v7];
  v5 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v18, 8);

  return v5;
}

- (BOOL)hasUnverifiedFilesWithError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100043EA0;
  v17 = sub_100043EB0;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100047DE4;
  v8[3] = &unk_1000FDBF0;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = &v13;
  [(MBManifestDB *)self _performOnDBQueue:v8];
  if (*(v10 + 24) == 1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100047EE8;
    v7[3] = &unk_1000FDBC8;
    v7[4] = self;
    [(MBManifestDB *)self _performOnDBQueue:v7];
  }

  if (error)
  {
    *error = v14[5];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v5;
}

- (id)unsetVerifiedFlags
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Unsetting all verified file flags", buf, 2u);
    _MBLog();
  }

  v4 = [(MBManifestDB *)self _executeSQL:@"UPDATE Files SET flags = (flags & ~%lu) WHERE flags & %lu != 0", 32, 32];;

  return v4;
}

- (id)removeFilesNotAlreadyUploaded
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Removing files not already uploaded from manifest", buf, 2u);
    _MBLog();
  }

  v4 = [(MBManifestDB *)self _executeSQL:@"DELETE FROM Files WHERE (flags & %lu) = 0 AND (flags & %lu) = 0", 8, 128];
  if (!v4)
  {
    v4 = [(MBManifestDB *)self _executeSQL:@"DELETE FROM Files WHERE (flags & %lu) = %lu", 16, 16];
    if (!v4)
    {
      v4 = [(MBManifestDB *)self _executeSQL:@"DELETE FROM Files WHERE file IS NULL"];
    }
  }

  v5 = v4;

  return v5;
}

- (id)unsetAlreadyUploadedFlags
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Unsetting all already uploaded file flags", buf, 2u);
    _MBLog();
  }

  v4 = [(MBManifestDB *)self _executeSQL:@"UPDATE Files SET flags = (flags & ~%lu) WHERE flags & %lu != 0", 8, 8];;
  if (!v4)
  {
    v4 = [(MBManifestDB *)self _executeSQL:@"UPDATE Files SET flags = (flags & ~%lu) WHERE flags & %lu != 0", 128, 128];;
  }

  return v4;
}

- (id)enumerateFiles:(id)files includeUninstalled:(BOOL)uninstalled
{
  filesCopy = files;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100043EA0;
  v29 = sub_100043EB0;
  v30 = 0;
  [(MBManifestDB *)self flush];
  v6 = [[NSString alloc] initWithFormat:@"ManifestDB-%lu-enumerator", -[MBManifestDB hash](self, "hash")];
  v7 = [(MBManifestDB *)self _newConnection:v6];
  v8 = [NSURL fileURLWithPath:self->_path];
  v9 = (v26 + 5);
  obj = v26[5];
  v10 = [v7 openAtURL:v8 withFlags:1 error:&obj];
  objc_storeStrong(v9, obj);

  if (v10)
  {
    [v7 useSerialQueue];
    serialQueue = [v7 serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100048644;
    block[3] = &unk_1000FDD78;
    v12 = v7;
    v20 = v12;
    selfCopy = self;
    v23 = &v25;
    v22 = filesCopy;
    dispatch_sync(serialQueue, block);

    serialQueue2 = [v12 serialQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100048BB0;
    v16[3] = &unk_1000FDDA0;
    v17 = v12;
    v18 = &v25;
    dispatch_sync(serialQueue2, v16);

    v14 = v26[5];
  }

  else
  {
    v14 = v26[5];
  }

  _Block_object_dispose(&v25, 8);

  return v14;
}

- (id)fetchPropertyWithName:(id)name class:(Class)class error:(id *)error
{
  nameCopy = name;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100043EA0;
  v30 = sub_100043EB0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100043EA0;
  v24 = sub_100043EB0;
  v25 = 0;
  pql_database = [(MBManifestDB *)self pql_database];
  serialQueue = [pql_database serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100048ECC;
  block[3] = &unk_1000FDDC8;
  block[4] = self;
  v11 = nameCopy;
  v16 = v11;
  v17 = &v20;
  v18 = &v26;
  classCopy = class;
  dispatch_sync(serialQueue, block);

  v12 = v21[5];
  if (error && !v12)
  {
    *error = v27[5];
    v12 = v21[5];
  }

  v13 = v12;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

@end