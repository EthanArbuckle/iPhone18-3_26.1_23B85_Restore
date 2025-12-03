@interface PFPosterArchiver
+ (id)archiveExtensionForFormat:(int64_t)format;
+ (id)archivePath:(id)path format:(int64_t)format error:(id *)error;
+ (id)unarchivePathAtURL:(id)l format:(int64_t)format error:(id *)error;
+ (id)unarchivePathFromData:(id)data format:(int64_t)format error:(id *)error;
+ (int64_t)formatForData:(id)data;
+ (int64_t)formatForDataAtURL:(id)l;
- (PFPosterArchiver)init;
- (PFPosterArchiver)initWithFileManager:(id)manager processHandle:(id)handle unarchivingContainerURL:(id)l;
- (id)_unarchiveWithHandler:(id)handler manifest:(id *)manifest error:(id *)error;
- (id)archivePath:(id)path format:(int64_t)format error:(id *)error;
- (id)unarchivePathAppleArchiveAtURL:(id)l manifest:(id *)manifest error:(id *)error;
- (id)unarchivePathAppleArchiveData:(id)data manifest:(id *)manifest error:(id *)error;
- (id)unarchivePathAtURL:(id)l format:(int64_t)format error:(id *)error;
- (id)unarchivePathFromData:(id)data format:(int64_t)format error:(id *)error;
- (id)unarchivePathZipArchiveAtURL:(id)l manifest:(id *)manifest error:(id *)error;
- (id)unarchivePathZipArchiveData:(id)data manifest:(id *)manifest error:(id *)error;
@end

@implementation PFPosterArchiver

+ (id)archivePath:(id)path format:(int64_t)format error:(id *)error
{
  pathCopy = path;
  v8 = objc_alloc_init(PFPosterArchiver);
  v9 = [(PFPosterArchiver *)v8 archivePath:pathCopy format:format error:error];

  return v9;
}

+ (id)unarchivePathAtURL:(id)l format:(int64_t)format error:(id *)error
{
  lCopy = l;
  v8 = objc_alloc_init(PFPosterArchiver);
  v9 = [(PFPosterArchiver *)v8 unarchivePathAtURL:lCopy format:format error:error];

  return v9;
}

+ (id)unarchivePathFromData:(id)data format:(int64_t)format error:(id *)error
{
  dataCopy = data;
  v8 = objc_alloc_init(PFPosterArchiver);
  v9 = [(PFPosterArchiver *)v8 unarchivePathFromData:dataCopy format:format error:error];

  return v9;
}

- (PFPosterArchiver)init
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PFPosterArchiver *)self initWithFileManager:defaultManager];

  return v4;
}

- (PFPosterArchiver)initWithFileManager:(id)manager processHandle:(id)handle unarchivingContainerURL:(id)l
{
  managerCopy = manager;
  handleCopy = handle;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = PFPosterArchiver;
  v12 = [(PFPosterArchiver *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fileManager, manager);
    objc_storeStrong(&v13->_processHandle, handle);
    objc_storeStrong(&v13->_unarchivingContainerURL, l);
  }

  return v13;
}

- (id)archivePath:(id)path format:(int64_t)format error:(id *)error
{
  v80[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (format == -1)
  {
    v17 = PFLogArchiver();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PFPosterArchiver archivePath:format:error:];
    }

    v10 = MEMORY[0x1E696ABC0];
    v79 = *MEMORY[0x1E696A578];
    v80[0] = @"Cannot archive to unknown format";
    v11 = MEMORY[0x1E695DF20];
    v12 = v80;
    v13 = &v79;
    goto LABEL_14;
  }

  if (!format && [(BSProcessHandle *)self->_processHandle hasEntitlement:@"com.apple.posterboardservices.disallowArchivingAppleArchive"])
  {
    v9 = PFLogArchiver();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PFPosterArchiver archivePath:format:error:];
    }

    v10 = MEMORY[0x1E696ABC0];
    v77 = *MEMORY[0x1E696A578];
    v78 = @"Process has disallow AppleArchive entitlement and thus cannot archive to that format";
    v11 = MEMORY[0x1E695DF20];
    v12 = &v78;
    v13 = &v77;
LABEL_14:
    v18 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
    v19 = [v10 errorWithDomain:@"PFPosterArchiverErrorDomain" code:6 userInfo:v18];

    if (error)
    {
      v20 = v19;
      v21 = 0;
      *error = v19;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_53;
  }

  v14 = objc_opt_class();
  v15 = pathCopy;
  errorCopy = error;
  v63 = pathCopy;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v22 = v16;

  identifierURL = [v22 identifierURL];
  serverIdentity = [v22 serverIdentity];
  provider = [serverIdentity provider];

  v25 = [[PFPosterArchiveManifest alloc] initWithServerPath:v22];
  serverIdentity2 = [v22 serverIdentity];

  posterUUID = [serverIdentity2 posterUUID];
  uUIDString = [posterUUID UUIDString];
  v62 = provider;
  v29 = [provider stringByAppendingFormat:@"-%@", uUIDString];

  v30 = [objc_opt_class() archiveExtensionForFormat:format];
  temporaryDirectory = [(NSFileManager *)self->_fileManager temporaryDirectory];
  v32 = [temporaryDirectory URLByAppendingPathComponent:v29];
  v65 = v30;
  v64 = [v32 URLByAppendingPathExtension:v30];

  fileManager = self->_fileManager;
  v74 = 0;
  v34 = [(NSFileManager *)fileManager URLForDirectory:99 inDomain:1 appropriateForURL:temporaryDirectory create:1 error:&v74];
  v35 = v74;
  v61 = v29;
  v36 = [v34 URLByAppendingPathComponent:v29];
  v37 = self->_fileManager;
  v38 = PFFileProtectionNoneAttributes();
  v73 = v35;
  LOBYTE(v37) = [(NSFileManager *)v37 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:v38 error:&v73];
  v39 = v73;

  if ((v37 & 1) == 0)
  {
    v48 = PFLogArchiver();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [PFPosterArchiver archivePath:format:error:];
    }

    [(NSFileManager *)self->_fileManager removeItemAtURL:v34 error:0];
    pathCopy = v63;
    goto LABEL_44;
  }

  v72 = 0;
  v40 = [(PFPosterArchiveManifest *)v25 dataRepresentationWithError:&v72];
  v41 = v72;

  if (v40)
  {
    v42 = [v36 URLByAppendingPathComponent:@"manifest"];
    v43 = [v42 URLByAppendingPathExtension:@"plist"];

    v71 = v41;
    v60 = v43;
    LOBYTE(v42) = [v40 writeToURL:v43 options:0 error:&v71];
    v44 = v71;

    if (v42)
    {
      v45 = self->_fileManager;
      v46 = [v36 URLByAppendingPathComponent:@"configuration"];
      v70 = v44;
      LOBYTE(v45) = [(NSFileManager *)v45 copyItemAtURL:identifierURL toURL:v46 error:&v70];
      v59 = v70;

      if (v45)
      {
        v47 = [v36 URLByAppendingPathExtension:v65];
        if (format)
        {
          PFZipArchiverCompressDirectory(v36, v47, self->_fileManager);
        }

        else
        {
          PFAppleArchiveCompressDirectory(v36, v47);
        }

        [(NSFileManager *)self->_fileManager removeItemAtURL:v64 error:0];
        v50 = self->_fileManager;
        v69 = v59;
        v51 = [(NSFileManager *)v50 moveItemAtURL:v47 toURL:v64 error:&v69];
        v44 = v69;

        if (v51)
        {
          v49 = v64;
        }

        else
        {
          v49 = 0;
        }

        pathCopy = v63;
        goto LABEL_40;
      }

      v47 = PFLogArchiver();
      pathCopy = v63;
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v49 = 0;
        v44 = v59;
        goto LABEL_40;
      }

      v44 = v59;
      [PFPosterArchiver archivePath:format:error:];
    }

    else
    {
      v47 = PFLogArchiver();
      pathCopy = v63;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver archivePath:format:error:];
      }
    }

    v49 = 0;
LABEL_40:

    v41 = v44;
    goto LABEL_41;
  }

  v60 = PFLogArchiver();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    [PFPosterArchiver archivePath:format:error:];
  }

  v49 = 0;
  pathCopy = v63;
LABEL_41:
  v52 = errorCopy;

  [(NSFileManager *)self->_fileManager removeItemAtURL:v34 error:0];
  if (!v49)
  {
    v39 = v41;
LABEL_44:
    v55 = PFLogArchiver();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      [PFPosterArchiver archivePath:format:error:];
    }

    v53 = v64;
    if (v39)
    {
      v75 = *MEMORY[0x1E696AA08];
      v76 = v39;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    }

    else
    {
      v41 = 0;
    }

    v54 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PFPosterArchiverErrorDomain" code:2 userInfo:v41];

    v49 = 0;
    v52 = errorCopy;
    goto LABEL_50;
  }

  v68 = 0;
  v53 = v64;
  [v64 pf_markPurgableInOneHourWithError:&v68];
  v54 = v68;
LABEL_50:

  if (v52)
  {
    v56 = v54;
    *v52 = v54;
  }

  v19 = v49;

  v21 = v19;
LABEL_53:

  v57 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)unarchivePathAtURL:(id)l format:(int64_t)format error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (format == -1)
  {
    format = [objc_opt_class() formatForDataAtURL:lCopy];
  }

  if (format == 1)
  {
    v23 = 0;
    v19 = [(PFPosterArchiver *)self unarchivePathZipArchiveAtURL:lCopy manifest:&v23 error:error];
    goto LABEL_18;
  }

  if (!format)
  {
    if ([(BSProcessHandle *)self->_processHandle hasEntitlement:@"com.apple.posterboardservices.disallowArchivingAppleArchive"])
    {
      v14 = PFLogArchiver();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver unarchivePathAtURL:format:error:];
      }

      v10 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v25 = @"Process has disallow AppleArchive entitlement and thus cannot unarchive that format";
      v11 = MEMORY[0x1E695DF20];
      v12 = &v25;
      v13 = &v24;
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (format != -1)
  {
LABEL_16:
    v22 = 0;
    v19 = [(PFPosterArchiver *)self unarchivePathAppleArchiveAtURL:lCopy manifest:&v22 error:error];
LABEL_18:
    v18 = v19;
    goto LABEL_19;
  }

  v9 = PFLogArchiver();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PFPosterArchiver unarchivePathAtURL:format:error:];
  }

  v10 = MEMORY[0x1E696ABC0];
  v26 = *MEMORY[0x1E696A578];
  v27[0] = @"Unable to resolve format for file to be unarchived";
  v11 = MEMORY[0x1E695DF20];
  v12 = v27;
  v13 = &v26;
LABEL_13:
  v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
  v16 = [v10 errorWithDomain:@"PFPosterArchiverErrorDomain" code:6 userInfo:v15];

  if (error)
  {
    v17 = v16;
    *error = v16;
  }

  v18 = 0;
LABEL_19:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)unarchivePathFromData:(id)data format:(int64_t)format error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (format == -1)
  {
    format = [objc_opt_class() formatForData:dataCopy];
  }

  if (format == 1)
  {
    v23 = 0;
    v19 = [(PFPosterArchiver *)self unarchivePathZipArchiveData:dataCopy manifest:&v23 error:error];
    goto LABEL_18;
  }

  if (!format)
  {
    if ([(BSProcessHandle *)self->_processHandle hasEntitlement:@"com.apple.posterboardservices.disallowArchivingAppleArchive"])
    {
      v14 = PFLogArchiver();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver unarchivePathAtURL:format:error:];
      }

      v10 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v25 = @"Process has disallow AppleArchive entitlement and thus cannot unarchive that format";
      v11 = MEMORY[0x1E695DF20];
      v12 = &v25;
      v13 = &v24;
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (format != -1)
  {
LABEL_16:
    v22 = 0;
    v19 = [(PFPosterArchiver *)self unarchivePathAppleArchiveData:dataCopy manifest:&v22 error:error];
LABEL_18:
    v18 = v19;
    goto LABEL_19;
  }

  v9 = PFLogArchiver();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PFPosterArchiver unarchivePathAtURL:format:error:];
  }

  v10 = MEMORY[0x1E696ABC0];
  v26 = *MEMORY[0x1E696A578];
  v27[0] = @"Unable to resolve format for file to be unarchived";
  v11 = MEMORY[0x1E695DF20];
  v12 = v27;
  v13 = &v26;
LABEL_13:
  v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
  v16 = [v10 errorWithDomain:@"PFPosterArchiverErrorDomain" code:6 userInfo:v15];

  if (error)
  {
    v17 = v16;
    *error = v16;
  }

  v18 = 0;
LABEL_19:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)archiveExtensionForFormat:(int64_t)format
{
  if (format == 1)
  {
    return @"zapa";
  }

  else
  {
    return @"apa";
  }
}

+ (int64_t)formatForDataAtURL:(id)l
{
  lCopy = l;
  v13 = 0;
  v5 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:lCopy error:&v13];
  v6 = v13;
  if (v5)
  {
    v12 = 0;
    v7 = [v5 readDataUpToLength:4 error:&v12];
    v8 = v12;

    if (v7)
    {
      v9 = [self formatForData:v7];
    }

    else
    {
      v10 = PFLogArchiver();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[PFPosterArchiver formatForDataAtURL:];
      }

      v9 = -1;
    }
  }

  else
  {
    v7 = PFLogArchiver();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PFPosterArchiver formatForDataAtURL:];
    }

    v9 = -1;
    v8 = v6;
  }

  return v9;
}

+ (int64_t)formatForData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] < 4)
  {
    goto LABEL_12;
  }

  bytes = [dataCopy bytes];
  v5 = *bytes;
  if (v5 == 65)
  {
    if (bytes[1] == 65 && bytes[2] == 48 && bytes[3] == 49)
    {
      v6 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v6 = -1;
    goto LABEL_13;
  }

  if (v5 != 80 || bytes[1] != 75 || bytes[2] != 3 || bytes[3] != 4)
  {
    goto LABEL_12;
  }

  v6 = 1;
LABEL_13:

  return v6;
}

- (id)unarchivePathAppleArchiveAtURL:(id)l manifest:(id *)manifest error:(id *)error
{
  lCopy = l;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PFPosterArchiver_unarchivePathAppleArchiveAtURL_manifest_error___block_invoke;
  v12[3] = &unk_1E8189AA0;
  v13 = lCopy;
  v9 = lCopy;
  v10 = [(PFPosterArchiver *)self _unarchiveWithHandler:v12 manifest:manifest error:error];

  return v10;
}

- (id)unarchivePathZipArchiveAtURL:(id)l manifest:(id *)manifest error:(id *)error
{
  lCopy = l;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PFPosterArchiver_unarchivePathZipArchiveAtURL_manifest_error___block_invoke;
  v12[3] = &unk_1E8189AA0;
  v13 = lCopy;
  v9 = lCopy;
  v10 = [(PFPosterArchiver *)self _unarchiveWithHandler:v12 manifest:manifest error:error];

  return v10;
}

- (id)unarchivePathAppleArchiveData:(id)data manifest:(id *)manifest error:(id *)error
{
  dataCopy = data;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PFPosterArchiver_unarchivePathAppleArchiveData_manifest_error___block_invoke;
  v12[3] = &unk_1E8189AA0;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = [(PFPosterArchiver *)self _unarchiveWithHandler:v12 manifest:manifest error:error];

  return v10;
}

void __65__PFPosterArchiver_unarchivePathAppleArchiveData_manifest_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = 0;
  v4 = [v2 writeData:v3 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = PFLogArchiver();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__PFPosterArchiver_unarchivePathAppleArchiveData_manifest_error___block_invoke_2_cold_1();
    }
  }

  [*(a1 + 32) closeFile];
}

- (id)unarchivePathZipArchiveData:(id)data manifest:(id *)manifest error:(id *)error
{
  dataCopy = data;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PFPosterArchiver_unarchivePathZipArchiveData_manifest_error___block_invoke;
  v12[3] = &unk_1E8189AA0;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = [(PFPosterArchiver *)self _unarchiveWithHandler:v12 manifest:manifest error:error];

  return v10;
}

- (id)_unarchiveWithHandler:(id)handler manifest:(id *)manifest error:(id *)error
{
  v126[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = self->_fileManager;
  temporaryDirectory = [(NSFileManager *)v6 temporaryDirectory];
  v7 = self->_unarchivingContainerURL;
  v8 = v7;
  if (!v7 || (v104 = v7, ![(NSURL *)v7 checkResourceIsReachableAndReturnError:0]))
  {
    v9 = temporaryDirectory;

    v118 = 0;
    v104 = v9;
    v10 = [(NSFileManager *)v6 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v118];
    v11 = v118;
    if (!v10)
    {
      v12 = PFLogArchiver();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
      }
    }

    if (v8)
    {
      v13 = PFLogArchiver();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
      }
    }
  }

  if ([(NSURL *)v8 checkResourceIsReachableAndReturnError:0])
  {
    v98 = v8;
  }

  else
  {
    v98 = [temporaryDirectory URLByAppendingPathComponent:@"PosterPaths"];
  }

  v117 = 0;
  v14 = [(NSFileManager *)v6 URLForDirectory:99 inDomain:1 appropriateForURL:v104 create:1 error:&v117];
  v15 = v117;
  if (v14)
  {
    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 3221225472;
    v114[2] = __57__PFPosterArchiver__unarchiveWithHandler_manifest_error___block_invoke;
    v114[3] = &unk_1E8189AC8;
    v16 = v102;
    v115 = v16;
    v17 = v6;
    v116 = v17;
    v100 = MEMORY[0x1C691C400](v114);
    if ((handlerCopy[2](handlerCopy, v14) & 1) == 0)
    {
      v19 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PFPosterArchiverErrorDomain" code:3 userInfo:0];
      v31 = 0;
LABEL_57:

      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __57__PFPosterArchiver__unarchiveWithHandler_manifest_error___block_invoke_63;
      v107[3] = &unk_1E8189AC8;
      v51 = v17;
      v108 = v51;
      v52 = v14;
      v109 = v52;
      v53 = MEMORY[0x1C691C400](v107);
      v54 = v100[2];
      if (!v31 || v19)
      {
        v54(v100);
        v71 = PFLogArchiver();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
        }

        if (error != 0 && v19 != 0)
        {
          v72 = v19;
          v29 = 0;
          *error = v19;
        }

        else
        {
          v29 = 0;
        }

        goto LABEL_96;
      }

      v54(v100);
      configurationUUID = [v31 configurationUUID];
      uUIDString = [configurationUUID UUIDString];
      v57 = [(NSURL *)v98 URLByAppendingPathComponent:uUIDString];

      extensionIdentifier = [v31 extensionIdentifier];
      v97 = [v52 URLByAppendingPathComponent:extensionIdentifier];

      [(NSFileManager *)v51 removeItemAtURL:v57 error:0];
      v59 = PFPosterPathFileAttributes();
      v106 = 0;
      LOBYTE(extensionIdentifier) = [(NSFileManager *)v51 createDirectoryAtURL:v57 withIntermediateDirectories:1 attributes:v59 error:&v106];
      v19 = v106;

      if (extensionIdentifier)
      {
        extensionIdentifier2 = [v31 extensionIdentifier];
        v95 = [v57 URLByAppendingPathComponent:extensionIdentifier2 isDirectory:1];

        v105 = v19;
        v61 = [(NSFileManager *)v51 moveItemAtURL:v97 toURL:v95 error:&v105];
        v93 = v105;

        if (v61)
        {
          extensionIdentifier3 = [v31 extensionIdentifier];
          role = [v31 role];
          configurationUUID2 = [v31 configurationUUID];
          v91 = [PFServerPosterIdentity configurationIdentityWithProvider:extensionIdentifier3 identifier:0 role:role posterUUID:configurationUUID2 version:[v31 latestConfigurationVersion] supplement:[v31 latestConfigurationSupplement]];

          v29 = [PFServerPosterPath pathWithProviderURL:v95 identity:v91];
          if (v29)
          {
            v65 = PFLogArchiver();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v122 = v29;
              _os_log_impl(&dword_1C269D000, v65, OS_LOG_TYPE_DEFAULT, "Successfully created server path: %{public}@", buf, 0xCu);
            }

            contentsURL = [v29 contentsURL];
            v67 = [contentsURL checkResourceIsReachableAndReturnError:0];

            if ((v67 & 1) == 0)
            {
              v68 = PFLogArchiver();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                contentsURL2 = [v29 contentsURL];
                *buf = 138543362;
                v122 = contentsURL2;
                _os_log_impl(&dword_1C269D000, v68, OS_LOG_TYPE_DEFAULT, "Warning, contentsURL was not reachable: %{public}@", buf, 0xCu);
              }
            }

            v70 = v29;
          }

          else
          {
            if (v93)
            {
              v119 = *MEMORY[0x1E696AA08];
              v120 = v93;
              v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
            }

            else
            {
              v80 = 0;
            }

            v81 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PFPosterArchiverErrorDomain" code:3 userInfo:v80];

            v82 = PFLogArchiver();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
            }

            if (error)
            {
              v83 = v81;
              *error = v81;
            }

            v93 = v81;
          }

          goto LABEL_94;
        }

        v77 = PFLogArchiver();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          pf_description = [v93 pf_description];
          [PFPosterArchiver _unarchiveWithHandler:pf_description manifest:buf error:v77];
        }

        if (!error)
        {
          v29 = 0;
LABEL_94:
          v19 = v93;
          v57 = v95;
          goto LABEL_95;
        }

        v79 = v93;
        v29 = 0;
        errorCopy2 = error;
        v19 = v93;
        v57 = v95;
      }

      else
      {
        v73 = PFLogArchiver();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          pf_description2 = [v19 pf_description];
          [PFPosterArchiver _unarchiveWithHandler:pf_description2 manifest:buf error:v73];
        }

        if (!error)
        {
          v29 = 0;
          goto LABEL_95;
        }

        v75 = v19;
        v29 = 0;
        errorCopy2 = error;
      }

      *errorCopy2 = v19;
LABEL_95:

LABEL_96:
      v53[2](v53);

      goto LABEL_97;
    }

    v90 = [v14 URLByAppendingPathComponent:@"configuration"];
    v18 = [v14 URLByAppendingPathComponent:@"manifest"];
    v96 = [v18 URLByAppendingPathExtension:@"plist"];

    [v16 addObject:v90];
    [v16 addObject:v96];
    v113 = v15;
    v94 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v96 options:0 error:&v113];
    v19 = v113;

    if (!v94)
    {
      p_super = PFLogArchiver();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
      }

      v31 = 0;
      goto LABEL_56;
    }

    v20 = [[PFPosterArchiveManifest alloc] initWithDataRepresentation:v94];
    p_super = &v20->super;
    if (v20)
    {
      archiveVersion = [(PFPosterArchiveManifest *)v20 archiveVersion];
      if (archiveVersion >= [objc_opt_class() minSupportedArchiveVersion])
      {
        extensionIdentifier4 = [p_super extensionIdentifier];
        v88 = [v14 URLByAppendingPathComponent:extensionIdentifier4];

        v35 = MEMORY[0x1E695DFF8];
        configurationUUID3 = [p_super configurationUUID];
        v89 = [v35 pf_posterPathIdentifierURLProviderURL:v88 type:3 posterUUID:configurationUUID3];

        uRLByDeletingLastPathComponent = [v89 URLByDeletingLastPathComponent];
        v38 = PFPosterPathFileAttributes();
        v112 = v19;
        v39 = [(NSFileManager *)v17 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v38 error:&v112];
        v40 = v112;

        if (v39)
        {
          v111 = v40;
          v41 = [(NSFileManager *)v17 copyItemAtURL:v90 toURL:v89 error:&v111];
          v86 = v111;

          if (v41)
          {
            latestConfigurationVersion = [p_super latestConfigurationVersion];
            v87 = [MEMORY[0x1E695DFF8] pf_versionsURLForIdentifierURL:v89];
            v43 = [MEMORY[0x1E695DFF8] pf_posterPathInstanceURLForVersionsURL:v87 version:latestConfigurationVersion];
            v44 = [MEMORY[0x1E695DFF8] pf_posterPathScratchURLForInstanceURL:v43];
            path = [v44 path];
            v46 = [(NSFileManager *)v17 fileExistsAtPath:path];

            if (v46)
            {
              v110 = 0;
              v47 = [(NSFileManager *)v17 removeItemAtURL:v44 error:&v110];
              v48 = v110;
              if (!v47)
              {
                v49 = PFLogArchiver();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
                }
              }
            }

            if (manifest)
            {
              v50 = p_super;
              *manifest = p_super;
            }

            v31 = p_super;
          }

          else
          {
            v43 = PFLogArchiver();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
            }

            v31 = 0;
            v87 = p_super;
          }

          v40 = v86;
        }

        else
        {
          v43 = PFLogArchiver();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
          }

          v31 = 0;
          v87 = p_super;
        }

        p_super = v88;
        v19 = v40;
        goto LABEL_56;
      }

      v23 = PFLogArchiver();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver _unarchiveWithHandler:? manifest:? error:?];
      }

      v24 = objc_alloc(MEMORY[0x1E696ABC0]);
      v123 = *MEMORY[0x1E696A578];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Archive version %lu is older than min supported %lu", -[NSObject archiveVersion](p_super, "archiveVersion"), objc_msgSend(objc_opt_class(), "minSupportedArchiveVersion")];
      v124 = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
      v27 = [v24 initWithDomain:@"PFPosterArchiverErrorDomain" code:4 userInfo:v26];
    }

    else
    {
      v32 = PFLogArchiver();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
      }

      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v125 = *MEMORY[0x1E696A578];
      v126[0] = @"Archive is unsupported";
      p_super = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:&v125 count:1];
      v27 = [v33 initWithDomain:@"PFPosterArchiverErrorDomain" code:4 userInfo:p_super];
    }

    v31 = 0;
    v19 = v27;
LABEL_56:

    v15 = v90;
    goto LABEL_57;
  }

  v28 = PFLogArchiver();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
  }

  v29 = 0;
  if (error && v15)
  {
    v30 = v15;
    v29 = 0;
    *error = v15;
  }

  v19 = v15;
LABEL_97:

  v84 = *MEMORY[0x1E69E9840];

  return v29;
}

void __57__PFPosterArchiver__unarchiveWithHandler_manifest_error___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PFPosterArchiver__unarchiveWithHandler_manifest_error___block_invoke_2;
  v3[3] = &unk_1E8189AF0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
  [*(a1 + 32) removeAllObjects];
}

- (void)archivePath:format:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)archivePath:format:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v0, v1, "Unable to write manifest data to URL %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)archivePath:format:error:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v0, v1, "Unable to copy configuration contents to container URL %@ : %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)archivePath:format:error:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)archivePath:format:error:.cold.5()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)archivePath:format:error:.cold.6()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)archivePath:format:error:.cold.7()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)unarchivePathAtURL:format:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)unarchivePathAtURL:format:error:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)formatForDataAtURL:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v0, v1, "Could not read data from file handle %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)formatForDataAtURL:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v0, v1, "Could not open file handle for reading from URL %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __65__PFPosterArchiver_unarchivePathAppleArchiveData_manifest_error___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_unarchiveWithHandler:manifest:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v0, v1, "Failed to create tempDirectory %@ : %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_unarchiveWithHandler:manifest:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_unarchiveWithHandler:manifest:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_unarchiveWithHandler:manifest:error:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_unarchiveWithHandler:manifest:error:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_unarchiveWithHandler:(void *)a1 manifest:error:.cold.6(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 archiveVersion];
  [objc_opt_class() minSupportedArchiveVersion];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_unarchiveWithHandler:manifest:error:.cold.7()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_unarchiveWithHandler:manifest:error:.cold.8()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v0, v1, "Manifest data failed to load from URL %@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_unarchiveWithHandler:(void *)a1 manifest:(uint8_t *)buf error:(os_log_t)log .cold.9(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C269D000, log, OS_LOG_TYPE_ERROR, "Unable to create finalURL: %{public}@", buf, 0xCu);
}

- (void)_unarchiveWithHandler:(void *)a1 manifest:(uint8_t *)buf error:(os_log_t)log .cold.10(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C269D000, log, OS_LOG_TYPE_ERROR, "Unable to move item at provider URL to finalURL: %{public}@", buf, 0xCu);
}

- (void)_unarchiveWithHandler:manifest:error:.cold.11()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_unarchiveWithHandler:manifest:error:.cold.12()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_unarchiveWithHandler:manifest:error:.cold.13()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end