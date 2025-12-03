@interface MIFileManager
+ (id)_sanitizeFilePathForVarOrTmpSymlink:(id)symlink error:(id *)error;
+ (id)defaultManager;
- (BOOL)_bulkSetPropertiesForPath:(const char *)path existingFD:(int)d UID:(unsigned int)iD GID:(unsigned int)gID mode:(unsigned __int16)mode flags:(unsigned int)flags dataProtectionClass:(int)class removeACL:(BOOL)self0 error:(id *)self1;
- (BOOL)_itemIsType:(unsigned __int16)type withDescription:(id)description atURL:(id)l error:(id *)error;
- (BOOL)_markEAFlag:(const char *)flag forAppIdentifier:(id)identifier insecurelyCachedOnBundle:(id)bundle error:(id *)error;
- (BOOL)_moveItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error;
- (BOOL)_removeACLAtPath:(const char *)path isDir:(BOOL)dir error:(id *)error;
- (BOOL)_setData:(id)data forExtendedAttributeNamed:(id)named onURL:(id)l orFD:(int)d error:(id *)error;
- (BOOL)_stageURLByCopying:(id)copying toItemName:(id)name inStagingDir:(id)dir stagingMode:(int)mode settingUID:(unsigned int)d gid:(unsigned int)gid dataProtectionClass:(int)class hasSymlink:(BOOL *)self0 error:(id *)self1;
- (BOOL)_validateSymlink:(id)symlink withStartingDepth:(unsigned int)depth andEndingDepth:(unsigned int *)endingDepth;
- (BOOL)captureStoreDataFromDirectory:(id)directory toDirectory:(id)toDirectory doCopy:(BOOL)copy failureIsFatal:(BOOL)fatal includeiTunesMetadata:(BOOL)metadata withError:(id *)error;
- (BOOL)clearExtendedAttributesAtURL:(id)l error:(id *)error;
- (BOOL)clearPlaceholderStatusForBundle:(id)bundle withError:(id *)error;
- (BOOL)copyVolumeInfo:(id *)info forURL:(id)l error:(id *)error;
- (BOOL)createSymbolicLinkAtURL:(id)l withDestinationURL:(id)rL error:(id *)error;
- (BOOL)dataProtectionClassOfItemAtURL:(id)l class:(int *)class error:(id *)error;
- (BOOL)enumerateExtendedAttributeNamesAtURL:(id)l includeCompression:(BOOL)compression error:(id *)error enumerator:(id)enumerator;
- (BOOL)itemDoesNotExistAtURL:(id)l;
- (BOOL)itemDoesNotExistOrIsNotDirectoryAtURL:(id)l;
- (BOOL)itemExistsAtURL:(id)l error:(id *)error;
- (BOOL)markBundleAsPlaceholder:(id)placeholder withError:(id *)error;
- (BOOL)removeExtendedAttributeNamed:(id)named fromURL:(id)l error:(id *)error;
- (BOOL)removeItemAtURL:(id)l keepParent:(BOOL)parent error:(id *)error;
- (BOOL)secureRenameFromSourceURL:(id)l toDestinationURL:(id)rL destinationStatus:(unsigned __int8)status error:(id *)error;
- (BOOL)setInstallType:(id)type inExtendedAttributeOnBundle:(id)bundle error:(id *)error;
- (BOOL)setModificationDateToNowForURL:(id)l error:(id *)error;
- (BOOL)setOwnerOfURL:(id)l toUID:(unsigned int)d gid:(unsigned int)gid error:(id *)error;
- (BOOL)setOwnershipAtURL:(id)l toUID:(unsigned int)d gid:(unsigned int)gid error:(id *)error;
- (BOOL)setPermissionsForURL:(id)l toMode:(unsigned __int16)mode error:(id *)error;
- (BOOL)stageURLByMoving:(id)moving toItemName:(id)name inStagingDir:(id)dir settingUID:(unsigned int)d gid:(unsigned int)gid dataProtectionClass:(int)class breakHardlinks:(BOOL)hardlinks hasSymlink:(BOOL *)self0 error:(id *)self1;
- (BOOL)standardizeOwnershipAtURL:(id)l toUID:(unsigned int)d GID:(unsigned int)iD removeACLs:(BOOL)ls setProtectionClass:(BOOL)class foundSymlink:(BOOL *)symlink error:(id *)error;
- (BOOL)validateSymlinksInURLDoNotEscapeURL:(id)l error:(id *)error;
- (id)_dataForExtendedAttributeNamed:(id)named length:(int64_t)length onURL:(id)l orFD:(int)d error:(id *)error;
- (id)_firstAvailableParentForURL:(id)l error:(id *)error;
- (id)_insecureCachedAppIdentifierIfMarkedWithEAFlag:(const char *)flag bundleURL:(id)l allowPlaceholders:(BOOL)placeholders error:(id *)error;
- (id)_realPathWhatExistsInPath:(id)path isDirectory:(BOOL)directory;
- (id)_traverseUntilFirstAvailableParentOfURL:(id)l withBlock:(id)block;
- (id)aclTextFromURL:(id)l error:(id *)error;
- (id)createTemporaryDirectoryInDirectoryURL:(id)l error:(id *)error;
- (id)debugDescriptionForItemAtURL:(id)l;
- (id)destinationOfSymbolicLinkAtURL:(id)l error:(id *)error;
- (id)enumerateExternalVolumesWithBlock:(id)block;
- (id)enumerateURLsForItemsInDirectoryAtURL:(id)l ignoreSymlinks:(BOOL)symlinks withBlock:(id)block;
- (id)extendedAttributesFromURL:(id)l includeCompression:(BOOL)compression error:(id *)error;
- (id)installTypeFromExtendedAttributeOnBundle:(id)bundle error:(id *)error;
- (id)modificationDateForURL:(id)l error:(id *)error;
- (id)mountPointForURL:(id)l error:(id *)error;
- (id)mountPointForVolumeUUID:(id)d error:(id *)error;
- (id)realPathForURL:(id)l ifChildOfURL:(id)rL;
- (id)traverseDirectoryAtURL:(id)l withBlock:(id)block;
- (id)upToFirstFourBytesFromURL:(id)l error:(id *)error;
- (id)urlsForItemsInDirectoryAtURL:(id)l ignoringSymlinks:(BOOL)symlinks error:(id *)error;
- (id)volumeUUIDForURL:(id)l error:(id *)error;
- (int)deviceForURLOrFirstAvailableParent:(id)parent error:(id *)error;
- (unint64_t)diskUsageForURL:(id)l;
- (void)logAccessPermissionsForURL:(id)l;
@end

@implementation MIFileManager

+ (id)defaultManager
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __31__MIFileManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, block);
  }

  v2 = defaultManager_defaultInstance;

  return v2;
}

uint64_t __31__MIFileManager_defaultManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  defaultManager_defaultInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2A1C71028]();
}

- (BOOL)removeItemAtURL:(id)l keepParent:(BOOL)parent error:(id *)error
{
  parentCopy = parent;
  lCopy = l;
  v8 = removefile_state_alloc();
  v10 = v8;
  value = 0;
  if (!lCopy)
  {
    v17 = *MEMORY[0x29EDB9EF8];
    v18 = @"nil url passed to -removeItemAtURL:error:";
    v19 = 111;
    v20 = 14;
LABEL_19:
    _CreateError("[MIFileManager removeItemAtURL:keepParent:error:]", v19, v17, v20, 0, 0, v18, v9, v28);
    goto LABEL_20;
  }

  if (removefile_state_set(v8, 3u, _removefile_error_callback) && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v11 = __error();
    strerror(*v11);
    MOLogWrite();
  }

  if (removefile_state_set(v10, 4u, &value) && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v12 = __error();
    strerror(*v12);
    MOLogWrite();
  }

  if (parentCopy)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  if (removefile([lCopy fileSystemRepresentation], v10, v13) && *__error() != 2)
  {
    v21 = *MEMORY[0x29EDB9EF8];
    v22 = *__error();
    v23 = __error();
    v28 = lCopy;
    strerror(*v23);
    v18 = @"removefile of %@ failed: %s";
    v19 = 132;
    v17 = v21;
    v20 = v22;
    goto LABEL_19;
  }

  v14 = value;
  if ((value & 0xFFFFFFFD) == 0)
  {
    removefile_state_free(v10);
    v24 = 0;
    v26 = 1;
    goto LABEL_24;
  }

  v15 = *MEMORY[0x29EDB9EF8];
  strerror(value);
  _CreateError("[MIFileManager removeItemAtURL:keepParent:error:]", 138, v15, v14, 0, 0, @"removefile of %@ failed: %s", v16, lCopy);
  v24 = LABEL_20:;
  removefile_state_free(v10);
  if (error)
  {
    v25 = v24;
    v26 = 0;
    *error = v24;
  }

  else
  {
    v26 = 0;
  }

LABEL_24:

  return v26;
}

- (BOOL)_moveItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [rLCopy fileSystemRepresentation];
  if (!missing)
  {
    memset(&v38, 0, sizeof(v38));
    if (lstat(fileSystemRepresentation, &v38))
    {
      v15 = __error();
      v16 = *v15;
      LOBYTE(v17) = v16 == 2;
      if (v16 == 2)
      {
        v18 = 0;
      }

      else
      {
        v23 = *MEMORY[0x29EDB9EF8];
        strerror(*v15);
        v18 = _CreateError("[MIFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]", 394, v23, v16, 0, 0, @"stat of %s failed: %s", v24, fileSystemRepresentation);
      }

      goto LABEL_26;
    }
  }

  rename(fileSystemRepresentation, fileSystemRepresentation2, v13);
  if (!v19)
  {
    v22 = 0;
    goto LABEL_24;
  }

  v20 = *__error();
  if (v20 == 30)
  {
    v21 = 1;
LABEL_17:
    path = [lCopy path];
    v26 = [path containsString:@"/System/Library/AppPlaceholders"];

    v37 = 0;
    v17 = [(MIFileManager *)self _copyItemAtURL:lCopy toURL:rLCopy failIfSrcMissing:1 alwaysClone:0 ignoreErrors:0 error:&v37];
    v27 = v37;
    v18 = v27;
    if (!v17 || (v21 & 1) != 0 || (v26 & 1) != 0)
    {
      goto LABEL_26;
    }

    v36 = v27;
    v28 = [(MIFileManager *)self removeItemAtURL:lCopy error:&v36];
    v22 = v36;

    if (!v28 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      MOLogWrite();
    }

LABEL_24:
    LOBYTE(v17) = 1;
    goto LABEL_30;
  }

  if (v20 == 18)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
    {
      [MIFileManager _moveItemAtURL:fileSystemRepresentation toURL:fileSystemRepresentation2 failIfSrcMissing:? error:?];
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v34 = fileSystemRepresentation;
      v35 = fileSystemRepresentation2;
      MOLogWrite();
    }

    v21 = 0;
    goto LABEL_17;
  }

  v29 = v20;
  v30 = *MEMORY[0x29EDB9EF8];
  strerror(v20);
  v18 = _CreateError("[MIFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]", 414, v30, v29, 0, 0, @"rename of %s to %s failed: %s", v31, fileSystemRepresentation);
  LOBYTE(v17) = 0;
LABEL_26:
  if (error && !v17)
  {
    v32 = v18;
    LOBYTE(v17) = 0;
    *error = v18;
  }

  v22 = v18;
LABEL_30:

  return v17;
}

- (id)createTemporaryDirectoryInDirectoryURL:(id)l error:(id *)error
{
  v16[1] = *MEMORY[0x29EDCA608];
  if (error)
  {
    *error = 0;
  }

  v5 = [l URLByAppendingPathComponent:@"temp.XXXXXX" isDirectory:1];
  v6 = strdup([v5 fileSystemRepresentation]);
  if (mkdtemp(v6))
  {
    v7 = [MEMORY[0x29EDB8E70] fileURLWithFileSystemRepresentation:v6 isDirectory:1 relativeToURL:0];
    free(v6);
  }

  else
  {
    v8 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    v15 = @"PathArgument";
    v16[0] = v5;
    v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = _CreateAndLogError("[MIFileManager createTemporaryDirectoryInDirectoryURL:error:]", 478, @"MIInstallerErrorDomain", 4, v8, v9, @"Failed to create temp dir at path %s", v10, v6);

    if (error)
    {
      v12 = v11;
      *error = v11;
    }

    free(v6);

    v7 = 0;
  }

  v13 = *MEMORY[0x29EDCA608];

  return v7;
}

- (BOOL)_removeACLAtPath:(const char *)path isDir:(BOOL)dir error:(id *)error
{
  dirCopy = dir;
  v8 = acl_init(0);
  if (v8)
  {
    v9 = v8;
    if (dirCopy)
    {
      v10 = opendir(path);
      if (v10)
      {
        v11 = v10;
        if (dirfd(v10) < 0)
        {
          v48 = *MEMORY[0x29EDB9EF8];
          v49 = *__error();
          v50 = __error();
          strerror(*v50);
          v17 = _CreateError("[MIFileManager _removeACLAtPath:isDir:error:]", 511, v48, v49, 0, 0, @"dirfd of %s failed: %s", v51, path);
          v18 = 511;
        }

        else
        {
          if (!MEMORY[0x29C25D030]())
          {
            v26 = 0;
            v27 = 1;
            goto LABEL_20;
          }

          v12 = *MEMORY[0x29EDB9EF8];
          v13 = *__error();
          v14 = __error();
          strerror(*v14);
          v17 = _CreateError("[MIFileManager _removeACLAtPath:isDir:error:]", 516, v12, v13, 0, 0, @"Failed to set ACL on dir %s: %s", v15, path);
          v18 = 516;
        }

        v26 = _CreateAndLogError("[MIFileManager _removeACLAtPath:isDir:error:]", v18, @"MIInstallerErrorDomain", 4, v17, 0, @"Failed to remove ACL", v16, v54);

        v27 = 0;
LABEL_20:
        closedir(v11);
        goto LABEL_21;
      }

      v37 = *MEMORY[0x29EDB9EF8];
      v38 = *__error();
      v39 = __error();
      strerror(*v39);
      v42 = _CreateError("[MIFileManager _removeACLAtPath:isDir:error:]", 505, v37, v38, 0, 0, @"opendir of %s failed: %s", v40, path);
      v43 = 505;
    }

    else
    {
      v28 = open(path, 2097154);
      if ((v28 & 0x80000000) == 0)
      {
        v29 = v28;
        v30 = MEMORY[0x29C25D030]();
        v27 = v30 == 0;
        if (v30)
        {
          v31 = *MEMORY[0x29EDB9EF8];
          v32 = *__error();
          v33 = __error();
          strerror(*v33);
          v35 = _CreateError("[MIFileManager _removeACLAtPath:isDir:error:]", 527, v31, v32, 0, 0, @"Failed to set ACL on %s: %s", v34, path);
          v26 = _CreateAndLogError("[MIFileManager _removeACLAtPath:isDir:error:]", 527, @"MIInstallerErrorDomain", 4, v35, 0, @"Failed to remove ACL", v36, v56);
        }

        else
        {
          v26 = 0;
        }

        close(v29);
LABEL_21:
        acl_free(v9);
        if (!error)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      v44 = *MEMORY[0x29EDB9EF8];
      v45 = *__error();
      v46 = __error();
      strerror(*v46);
      v42 = _CreateError("[MIFileManager _removeACLAtPath:isDir:error:]", 522, v44, v45, 0, 0, @"open of %s failed: %s", v47, path);
      v43 = 522;
    }

    v26 = _CreateAndLogError("[MIFileManager _removeACLAtPath:isDir:error:]", v43, @"MIInstallerErrorDomain", 4, v42, 0, @"Failed to remove ACL", v41, v57);

    v27 = 0;
    goto LABEL_21;
  }

  v19 = *MEMORY[0x29EDB9EF8];
  v20 = *__error();
  v21 = __error();
  v22 = strerror(*v21);
  v24 = _CreateError("[MIFileManager _removeACLAtPath:isDir:error:]", 498, v19, v20, 0, 0, @"acl_init() failed: %s", v23, v22);
  v26 = _CreateAndLogError("[MIFileManager _removeACLAtPath:isDir:error:]", 498, @"MIInstallerErrorDomain", 4, v24, 0, @"Failed to remove ACL", v25, v55);

  v27 = 0;
  if (!error)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (!v27)
  {
    v52 = v26;
    *error = v26;
  }

LABEL_24:

  return v27;
}

- (BOOL)_bulkSetPropertiesForPath:(const char *)path existingFD:(int)d UID:(unsigned int)iD GID:(unsigned int)gID mode:(unsigned __int16)mode flags:(unsigned int)flags dataProtectionClass:(int)class removeACL:(BOOL)self0 error:(id *)self1
{
  dCopy = d;
  pathCopy = path;
  v37[3] = *MEMORY[0x29EDCA608];
  v37[0] = 5;
  v37[1] = 0;
  v37[2] = 0;
  v15 = acl_size(1);
  v36 = v33;
  v16 = v15 + 28;
  if (!l)
  {
    v16 = 28;
  }

  v17 = &v33[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = 12;
  if (class == -1)
  {
    v19 = 8;
  }

  else
  {
    v19 = 12;
  }

  if (geteuid())
  {
    v20 = 0;
    v21 = v17;
  }

  else
  {
    *v17 = iD;
    v21 = v17 + 1;
    v20 = 0x8000;
    v18 = 16;
  }

  *v21 = gID;
  v21[1] = mode & 0xFFF;
  v21[2] = flags;
  v22 = (v21 + 3);
  v23 = v20 | 0x70000;
  HIDWORD(v37[0]) = v20 | 0x70000;
  if (l)
  {
    *(v21 + 3) = v19;
    v18 += 8;
    v24 = v21 + 3;
    v22 = (v21 + 5);
    v23 = v20 | 0x470000;
    HIDWORD(v37[0]) = v20 | 0x470000;
  }

  else
  {
    v24 = 0;
  }

  if (class != -1)
  {
    *v22++ = class;
    v18 += 4;
    HIDWORD(v37[0]) = v23 | 0x40000000;
  }

  if (l)
  {
    v25 = acl_copy_ext_native(v22, 1, v15);
    if (v25 > v15)
    {
      _CreateAndLogError("[MIFileManager _bulkSetPropertiesForPath:existingFD:UID:GID:mode:flags:dataProtectionClass:removeACL:error:]", 665, @"MIInstallerErrorDomain", 4, 0, 0, @"acl_copy_ext_native returned size %zd which was more than we had allocated (%zd)", v26, v25);
      goto LABEL_21;
    }

    v24[1] = v25;
    v18 += v25;
  }

  if (dCopy < 0)
  {
    if (setattrlist(pathCopy, v37, v17, v18, 1u))
    {
      goto LABEL_20;
    }

LABEL_24:
    v29 = 0;
    v30 = 1;
    goto LABEL_26;
  }

  if (!fsetattrlist(dCopy, v37, v17, v18, 0))
  {
    goto LABEL_24;
  }

LABEL_20:
  v27 = *__error();
  _CreateAndLogError("[MIFileManager _bulkSetPropertiesForPath:existingFD:UID:GID:mode:flags:dataProtectionClass:removeACL:error:]", 684, *MEMORY[0x29EDB9EF8], v27, 0, 0, @"setattrlist failed for file %s", v28, pathCopy);
  v29 = LABEL_21:;
  if (error)
  {
    v29 = v29;
    v30 = 0;
    *error = v29;
  }

  else
  {
    v30 = 0;
  }

LABEL_26:

  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

- (BOOL)stageURLByMoving:(id)moving toItemName:(id)name inStagingDir:(id)dir settingUID:(unsigned int)d gid:(unsigned int)gid dataProtectionClass:(int)class breakHardlinks:(BOOL)hardlinks hasSymlink:(BOOL *)self0 error:(id *)self1
{
  movingCopy = moving;
  nameCopy = name;
  dirCopy = dir;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = 0;
  v20 = [dirCopy URLByAppendingPathComponent:nameCopy isDirectory:0];
  v21 = objc_opt_new();
  v44 = 0;
  LOBYTE(dir) = [(MIFileManager *)self moveItemAtURL:movingCopy toURL:v20 error:&v44];
  v32 = movingCopy;
  v22 = v44;
  if ((dir & 1) == 0)
  {
    goto LABEL_9;
  }

  fileSystemRepresentation = [v20 fileSystemRepresentation];
  v43 = v22;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 3221225472;
  v34[2] = __125__MIFileManager_stageURLByMoving_toItemName_inStagingDir_settingUID_gid_dataProtectionClass_breakHardlinks_hasSymlink_error___block_invoke;
  v34[3] = &unk_29EE508D8;
  v34[4] = self;
  v35 = dirCopy;
  dCopy = d;
  gidCopy = gid;
  classCopy = class;
  hardlinksCopy = hardlinks;
  v24 = v21;
  v36 = v24;
  v37 = &v45;
  v38 = &v51;
  v25 = TraverseDirectory(fileSystemRepresentation, 0, 0x88u, &v43, v34);
  v26 = v43;

  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  if (v27 != 1)
  {

    v22 = v26;
LABEL_9:
    if (error)
    {
      if (v22)
      {
        v29 = v22;
        v30 = 0;
        *error = v22;
      }

      else
      {
        v30 = 0;
        *error = v46[5];
      }
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_19;
  }

  v28 = v46[5];

  if (v28 || [v24 count] && (v33[0] = MEMORY[0x29EDCA5F8], v33[1] = 3221225472, v33[2] = __125__MIFileManager_stageURLByMoving_toItemName_inStagingDir_settingUID_gid_dataProtectionClass_breakHardlinks_hasSymlink_error___block_invoke_2, v33[3] = &unk_29EE50900, v33[4] = self, v33[5] = &v45, objc_msgSend(v24, "enumerateKeysAndObjectsUsingBlock:", v33), v46[5]))
  {
    v22 = 0;
    goto LABEL_9;
  }

  v22 = 0;
  if (symlink)
  {
    *symlink = *(v52 + 24);
  }

  v30 = 1;
LABEL_19:

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  return v30;
}

uint64_t __125__MIFileManager_stageURLByMoving_toItemName_inStagingDir_settingUID_gid_dataProtectionClass_breakHardlinks_hasSymlink_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v6 = *(a1 + 72);
  v5 = *(a1 + 76);
  v53 = *(a1 + 80);
  v7 = *(a1 + 84);
  v8 = *(a1 + 48);
  v56 = *(a1 + 32);
  v9 = v4;
  v10 = v8;
  v60 = 0;
  v11 = *(a2 + 60);
  v12 = *(a2 + 24);
  v55 = v10;
  v57 = v9;
  if (v11 != 1)
  {
    if (v11 == 2)
    {
      v13 = 0;
      v14 = 0xFFFFFFFFLL;
      v15 = 493;
    }

    else
    {
      if (v11 == 5)
      {
        v13 = 1;
        v60 = 1;
      }

      else
      {
        v13 = 0;
      }

      v14 = 0xFFFFFFFFLL;
      v15 = 420;
    }

    goto LABEL_18;
  }

  v16 = v10;
  v17 = open(v12, 256);
  v14 = v17;
  if ((v17 & 0x80000000) != 0)
  {
    v35 = *__error();
    v36 = *MEMORY[0x29EDB9EF8];
    v37 = v35;
    strerror(v35);
    v30 = _CreateAndLogError("_StageURLByMovingProcessItem", 738, v36, v37, 0, 0, @"Failed to open %s : %s", v38, v12);
    v28 = v56;
    goto LABEL_27;
  }

  v18 = *(a2 + 80);
  LODWORD(v59) = 0;
  v19 = ffsctl(v17, 0xC0044115uLL, &v59, 0);
  if (v19)
  {
    v20 = v19;
    v21 = v18;
    if (*__error() != 16)
    {
      v22 = __error();
      v23 = *v22;
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v50 = strerror(*v22);
        v51 = v12;
        v47 = v20;
        v49 = v23;
        MOLogWrite();
      }
    }

    v24 = gLogHandle;
    if (v21 == 1)
    {
      v52 = v5;
      v25 = v6;
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {
        v47 = v12;
LABEL_40:
        MOLogWrite();
        goto LABEL_41;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v13 = 0;
    v15 = 420;
    if (v18 == 1 || !v7)
    {
LABEL_18:
      if ((*(a2 + 56) & 0x20) != 0)
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          HIDWORD(v47) = HIDWORD(v12);
          MOLogWrite();
        }

        v26 = 32;
      }

      else
      {
        v26 = 0;
      }

      v59 = 0;
      v27 = 1;
      BYTE4(v47) = 1;
      LODWORD(v47) = v53;
      v28 = v56;
      v29 = [v56 bulkSetPropertiesForPath:v12 withOpenFD:v14 UID:v6 GID:v5 mode:v15 flags:v26 dataProtectionClass:v47 removeACL:&v59 error:?];
      v30 = v59;
      if (v29)
      {
        v31 = 0;
        v16 = v55;
        goto LABEL_28;
      }

      v16 = v55;
LABEL_27:
      v32 = v30;
      v27 = 0;
      v13 = v60;
      v31 = v30;
LABEL_28:
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v24 = gLogHandle;
    v9 = v57;
  }

  v52 = v5;
  v25 = v6;
  if (!v24 || *(v24 + 44) >= 5)
  {
    v47 = v12;
    goto LABEL_40;
  }

LABEL_41:
  v39 = [MEMORY[0x29EDB8E70] fileURLWithFileSystemRepresentation:v12 isDirectory:0 relativeToURL:{0, v47, v49, v50, v51}];
  v59 = 0;
  v28 = v56;
  v40 = [v56 createTemporaryDirectoryInDirectoryURL:v9 error:&v59];
  v41 = v59;
  v42 = v41;
  if (!v40)
  {
    v30 = v41;
    v16 = v55;
LABEL_46:

    goto LABEL_27;
  }

  v43 = [v39 lastPathComponent];
  v58 = v42;
  LODWORD(v48) = v53;
  v54 = v39;
  v44 = [v56 _stageURLByCopying:v39 toItemName:v43 inStagingDir:v40 stagingMode:2 settingUID:v25 gid:v52 dataProtectionClass:v48 hasSymlink:&v60 error:&v58];
  v30 = v58;

  if ((v44 & 1) == 0)
  {
    v39 = v54;
    v16 = v55;
    goto LABEL_46;
  }

  v45 = [v54 lastPathComponent];
  v46 = [v40 URLByAppendingPathComponent:v45 isDirectory:0];

  v16 = v55;
  [v55 setObject:v54 forKeyedSubscript:v46];

  v31 = 0;
  v27 = 1;
  v13 = v60;
LABEL_29:
  close(v14);
LABEL_30:

  v33 = v31;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v31);
  if (v13)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  return v27;
}

void __125__MIFileManager_stageURLByMoving_toItemName_inStagingDir_settingUID_gid_dataProtectionClass_breakHardlinks_hasSymlink_error___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v20 = 0;
  v9 = a2;
  LOBYTE(v8) = [v8 moveItemAtURL:v9 toURL:v7 error:&v20];
  v10 = v20;
  if (v8)
  {
    v11 = [v9 URLByDeletingLastPathComponent];

    v12 = [v11 fileSystemRepresentation];
    if (rmdir(v12))
    {
      v13 = *__error();
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {
        strerror(v13);
        MOLogWrite();
      }
    }
  }

  else
  {
    v14 = [v9 path];

    v19 = [v7 path];
    v16 = _CreateAndLogError("[MIFileManager stageURLByMoving:toItemName:inStagingDir:settingUID:gid:dataProtectionClass:breakHardlinks:hasSymlink:error:]_block_invoke_2", 843, @"MIInstallerErrorDomain", 4, v10, 0, @"Failed to move clone replaced file from %@ to %@", v15, v14);
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    *a4 = 1;
  }
}

- (BOOL)_stageURLByCopying:(id)copying toItemName:(id)name inStagingDir:(id)dir stagingMode:(int)mode settingUID:(unsigned int)d gid:(unsigned int)gid dataProtectionClass:(int)class hasSymlink:(BOOL *)self0 error:(id *)self1
{
  v58 = *MEMORY[0x29EDCA608];
  copyingCopy = copying;
  nameCopy = name;
  dirCopy = dir;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v20 = [dirCopy URLByAppendingPathComponent:nameCopy isDirectory:0];
  v21 = v20;
  [v20 fileSystemRepresentation];
  v22 = __strlcpy_chk();
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = v22;
  if (v22 >= 0x400)
  {
    v23 = v20;
    fileSystemRepresentation = [v20 fileSystemRepresentation];
    v26 = _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]", 947, @"MIInstallerErrorDomain", 4, 0, 0, @"Staging destination path was too long: %s (%zu)", v25, fileSystemRepresentation);
LABEL_5:
    if (error)
    {
      if (v26)
      {
        v31 = v26;
        v32 = 0;
        *error = v26;
      }

      else
      {
        v32 = 0;
        v26 = 0;
        *error = v48[5];
      }
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_13;
  }

  v27 = copyingCopy;
  fileSystemRepresentation2 = [copyingCopy fileSystemRepresentation];
  v41 = 0;
  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 3221225472;
  v36[2] = __124__MIFileManager__stageURLByCopying_toItemName_inStagingDir_stagingMode_settingUID_gid_dataProtectionClass_hasSymlink_error___block_invoke;
  v36[3] = &unk_29EE50928;
  v36[6] = v42;
  v36[7] = &v47;
  v36[8] = v43;
  v36[9] = &v53;
  v36[10] = v57;
  v36[4] = self;
  v36[5] = v45;
  modeCopy = mode;
  dCopy = d;
  gidCopy = gid;
  classCopy = class;
  v35[0] = MEMORY[0x29EDCA5F8];
  v35[1] = 3221225472;
  v35[2] = __124__MIFileManager__stageURLByCopying_toItemName_inStagingDir_stagingMode_settingUID_gid_dataProtectionClass_hasSymlink_error___block_invoke_2;
  v35[3] = &unk_29EE50950;
  v35[4] = v42;
  v35[5] = v57;
  v29 = TraverseDirectoryWithPostTraversal(fileSystemRepresentation2, 0, 8u, &v41, v36, v35);
  v30 = v41;
  v26 = v30;
  if (!v29 || v48[5] | v30)
  {
    goto LABEL_5;
  }

  v26 = 0;
  if (symlink)
  {
    *symlink = *(v54 + 24);
  }

  v32 = 1;
LABEL_13:
  _Block_object_dispose(v42, 8);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

  v33 = *MEMORY[0x29EDCA608];
  return v32;
}

uint64_t __124__MIFileManager__stageURLByCopying_toItemName_inStagingDir_stagingMode_settingUID_gid_dataProtectionClass_hasSymlink_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v112 = *MEMORY[0x29EDCA608];
  v10 = *(a2 + 40);
  if ((*(a2 + 56) & 0x20) != 0 && (*(a2 + 60) == 1 ? (v11 = (*(a1 + 88) & 0xFFFFFFFE) == 2) : (v11 = 0), v11))
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v103 = *(a2 + 24);
      MOLogWrite();
    }

    v12 = 32;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a1 + 40) + 8);
  if (*(v13 + 24))
  {
    v14 = *(*(a1 + 48) + 8);
    v15 = strlen(v10);
    v16 = *(v14 + 24);
    v17 = v16 + 1 + v15;
    if (v17 <= 0x3FF)
    {
      v18 = *(a1 + 80);
      *(v18 + v16) = 47;
      memcpy((v18 + v16 + 1), v10, v15);
      *(v18 + v17) = 0;
      *(v14 + 24) = v17;
    }
  }

  else
  {
    *(v13 + 24) = 1;
  }

  v19 = *(a2 + 60);
  if (v19 == 1)
  {
    v38 = *(a1 + 88);
    switch(v38)
    {
      case 1:
        if (copyfile(*(a2 + 24), *(a1 + 80), 0, 0xC0008u))
        {
          v70 = *__error();
          v71 = *MEMORY[0x29EDB9EF8];
          v72 = v70;
          v73 = *(a2 + 24);
          v74 = *(a1 + 80);
          strerror(v70);
          v60 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1044, v71, v72, 0, 0, @"copyfile failed for %s to %s: %s", v75, v73);
          v76 = *(a2 + 24);
          v108 = *(a1 + 80);
          _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1044, @"MIInstallerErrorDomain", 4, v60, &unk_2A1DE8600, @"Failed to copyfile %s to %s", v77, v76);
          goto LABEL_45;
        }

        break;
      case 3:
        if (link(*(a2 + 24), *(a1 + 80)))
        {
          v62 = *__error();
          v63 = *MEMORY[0x29EDB9EF8];
          v64 = v62;
          v65 = *(a2 + 24);
          v66 = *(a1 + 80);
          strerror(v62);
          v60 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1054, v63, v64, 0, 0, @"link failed for %s to %s: %s", v67, v65);
          v68 = *(a2 + 24);
          v107 = *(a1 + 80);
          _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1054, @"MIInstallerErrorDomain", 4, v60, &unk_2A1DE8628, @"Failed to link %s to %s", v69, v68);
          goto LABEL_45;
        }

        break;
      case 2:
        v39 = (a2 + 24);
        v40 = (a1 + 80);
        v41 = clonefile(*(a2 + 24), *(a1 + 80), 3u);
        v42 = __error();
        if (v41)
        {
          v43 = *v42;
          if (v43 != 18)
          {
            v97 = *MEMORY[0x29EDB9EF8];
            v98 = *v39;
            v99 = *(a1 + 80);
            strerror(*v42);
            v26 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1012, v97, v43, 0, 0, @"clonefile failed for %s to %s: %s", v100, v98);
            v101 = *v39;
            v109 = *(a1 + 80);
            _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1012, @"MIInstallerErrorDomain", 4, v26, &unk_2A1DE85B0, @"Failed to clonefile %s to %s", v102, *v39);
            goto LABEL_23;
          }

          if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
            {
              __124__MIFileManager__stageURLByCopying_toItemName_inStagingDir_stagingMode_settingUID_gid_dataProtectionClass_hasSymlink_error___block_invoke_cold_1((a2 + 24), (a1 + 80));
            }

            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              v103 = *v39;
              v104 = *v40;
              MOLogWrite();
            }

            *(*(*(a1 + 64) + 8) + 24) = 1;
          }

          if (copyfile(*v39, *v40, 0, 0xC0008u))
          {
            v44 = *__error();
            v45 = *MEMORY[0x29EDB9EF8];
            v46 = v44;
            v47 = *v39;
            v48 = *(a1 + 80);
            strerror(v44);
            v26 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1030, v45, v46, 0, 0, @"copyfile after clonefile failed for %s to %s: %s", v49, v47);
            v50 = *v39;
            v105 = *(a1 + 80);
            _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1030, @"MIInstallerErrorDomain", 4, v26, &unk_2A1DE85D8, @"Failed to copyfile %s to %s", v51, *v39);
            goto LABEL_23;
          }
        }

        break;
      default:
        _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1061, @"MIInstallerErrorDomain", 4, 0, 0, @"Unexpected staging mode: %d", a8, *(a1 + 88));
        goto LABEL_39;
    }

LABEL_49:
    v20 = 420;
    goto LABEL_50;
  }

  if (v19 == 5)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v28 = readlink(*(a2 + 24), v111, 0x400uLL);
    if (v28 != -1)
    {
      v111[v28] = 0;
      if (symlink(v111, *(a1 + 80)))
      {
        v29 = *__error();
        v30 = *MEMORY[0x29EDB9EF8];
        v31 = v29;
        v32 = *(a1 + 80);
        strerror(v29);
        v26 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1084, v30, v31, 0, 0, @"symlink failed for %s -> %s: %s", v33, v32);
        _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1084, @"MIInstallerErrorDomain", 4, v26, &unk_2A1DE8678, @"Failed to symlink %s -> %s", v34, *(a1 + 80));
        goto LABEL_23;
      }

      goto LABEL_49;
    }

    v55 = *__error();
    v56 = *MEMORY[0x29EDB9EF8];
    v57 = v55;
    v58 = *(a2 + 24);
    strerror(v55);
    v60 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1074, v56, v57, 0, 0, @"readlink failed for %s: %s", v59, v58);
    _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1074, @"MIInstallerErrorDomain", 4, v60, &unk_2A1DE8650, @"Failed to readlink %s", v61, *(a2 + 24));
    v78 = LABEL_45:;
    v79 = *(*(a1 + 56) + 8);
    v80 = *(v79 + 40);
    *(v79 + 40) = v78;

    goto LABEL_46;
  }

  if (v19 != 2)
  {
    v106 = *(a2 + 24);
    _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 1090, @"MIInstallerErrorDomain", 3, 0, &unk_2A1DE86A0, @"Unknown filesystem object type %u encountered at %s", a8, *(a2 + 60));
    v52 = LABEL_39:;
    v53 = *(*(a1 + 56) + 8);
    v54 = *(v53 + 40);
    *(v53 + 40) = v52;

    goto LABEL_46;
  }

  v20 = 493;
  if (mkdir(*(a1 + 80), 0x1EDu))
  {
    v21 = *__error();
    v22 = *MEMORY[0x29EDB9EF8];
    v23 = v21;
    v24 = *(a1 + 80);
    strerror(v21);
    v26 = _CreateError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 990, v22, v23, 0, 0, @"mkdir failed for %s: %s", v25, v24);
    _CreateAndLogError("[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke", 990, @"MIInstallerErrorDomain", 4, v26, &unk_2A1DE8588, @"Failed to mkdir %s", v27, *(a1 + 80));
    v35 = LABEL_23:;
    v36 = *(*(a1 + 56) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;

LABEL_46:
    v81 = 0;
LABEL_47:
    v82 = 0;
    goto LABEL_48;
  }

LABEL_50:
  v85 = *(a1 + 32);
  v86 = *(a1 + 80);
  v87 = *(a1 + 92);
  v88 = *(a1 + 96);
  v89 = *(a1 + 100);
  v110 = 0;
  LOBYTE(v103) = 1;
  v90 = [v85 bulkSetPropertiesForPath:v86 UID:v87 GID:v88 mode:v20 flags:v12 dataProtectionClass:v89 removeACL:v103 error:&v110];
  v91 = v110;
  v81 = v110;
  if ((v90 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v91);
    goto LABEL_47;
  }

  if (*(a2 + 60) != 2)
  {
    v92 = *(a1 + 80);
    v93 = *(*(a1 + 48) + 8);
    v94 = *(v93 + 24);
    if (v94)
    {
      do
      {
        v95 = --v94;
      }

      while (*(v92 + v94) != 47 && v94 != 0);
    }

    else
    {
      v95 = 0;
    }

    *(v92 + v95) = 0;
    *(v93 + 24) = v95;
  }

  v82 = 1;
LABEL_48:

  v83 = *MEMORY[0x29EDCA608];
  return v82;
}

uint64_t __124__MIFileManager__stageURLByCopying_toItemName_inStagingDir_stagingMode_settingUID_gid_dataProtectionClass_hasSymlink_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  if (v3)
  {
    do
    {
      v4 = --v3;
    }

    while (*(v1 + v3) != 47 && v3 != 0);
  }

  else
  {
    v4 = 0;
  }

  *(v1 + v4) = 0;
  *(v2 + 24) = v4;
  return 1;
}

- (BOOL)standardizeOwnershipAtURL:(id)l toUID:(unsigned int)d GID:(unsigned int)iD removeACLs:(BOOL)ls setProtectionClass:(BOOL)class foundSymlink:(BOOL *)symlink error:(id *)error
{
  lCopy = l;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v29 = 0;
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = __102__MIFileManager_standardizeOwnershipAtURL_toUID_GID_removeACLs_setProtectionClass_foundSymlink_error___block_invoke;
  v24[3] = &unk_29EE50978;
  classCopy = class;
  v24[4] = self;
  v24[5] = &v30;
  dCopy = d;
  iDCopy = iD;
  lsCopy = ls;
  v24[6] = &v34;
  v17 = TraverseDirectory(fileSystemRepresentation, 0, 8u, &v29, v24);
  v18 = v29;
  v19 = v29;
  v20 = v35;
  if ((v17 & 1) == 0 && !v35[5])
  {
    objc_storeStrong(v35 + 5, v18);
    v20 = v35;
  }

  v21 = v20[5];
  v22 = (v21 == 0) & v17;
  if (error && !v22)
  {
    *error = v21;
  }

  if (symlink)
  {
    *symlink = *(v31 + 24);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v22;
}

uint64_t __102__MIFileManager_standardizeOwnershipAtURL_toUID_GID_removeACLs_setProtectionClass_foundSymlink_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  if (v4 == 2)
  {
    v5 = 493;
  }

  else
  {
    v5 = 420;
  }

  if (v4 == 5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (*(a1 + 64))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  if ((*(a2 + 56) & 0x20) != 0)
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v17 = *(a2 + 24);
      MOLogWrite();
    }

    v7 = 32;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a2 + 24);
  v10 = *(a1 + 56);
  v11 = *(a1 + 60);
  v12 = *(a1 + 65);
  v18 = 0;
  LOBYTE(v17) = v12;
  v13 = [v8 bulkSetPropertiesForPath:v9 UID:v10 GID:v11 mode:v5 flags:v7 dataProtectionClass:v6 removeACL:v17 error:&v18];
  v14 = v18;
  v15 = v18;
  if ((v13 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v14);
  }

  return v13;
}

- (BOOL)setOwnershipAtURL:(id)l toUID:(unsigned int)d gid:(unsigned int)gid error:(id *)error
{
  lCopy = l;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v21 = 0;
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __51__MIFileManager_setOwnershipAtURL_toUID_gid_error___block_invoke;
  v18[3] = &unk_29EE509A0;
  dCopy = d;
  gidCopy = gid;
  v18[4] = &v22;
  v11 = TraverseDirectory(fileSystemRepresentation, 0, 0, &v21, v18);
  v12 = v21;
  v13 = v21;
  v14 = v23;
  if ((v11 & 1) == 0 && !v23[5])
  {
    objc_storeStrong(v23 + 5, v12);
    v14 = v23;
  }

  v15 = v14[5];
  v16 = (v15 == 0) & v11;
  if (error && !v16)
  {
    *error = v15;
  }

  _Block_object_dispose(&v22, 8);

  return v16;
}

BOOL __51__MIFileManager_setOwnershipAtURL_toUID_gid_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = lchown(v3, *(a1 + 40), *(a1 + 44));
  if (v4)
  {
    v5 = *__error();
    v6 = *MEMORY[0x29EDB9EF8];
    v7 = v5;
    strerror(v5);
    v9 = _CreateError("[MIFileManager setOwnershipAtURL:toUID:gid:error:]_block_invoke", 1214, v6, v7, 0, 0, @"Failed to lchown %s : %s", v8, v3);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return v4 == 0;
}

- (BOOL)validateSymlinksInURLDoNotEscapeURL:(id)l error:(id *)error
{
  lCopy = l;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v19 = 0;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __59__MIFileManager_validateSymlinksInURLDoNotEscapeURL_error___block_invoke;
  v16[3] = &unk_29EE509C8;
  v16[4] = self;
  v8 = lCopy;
  v17 = v8;
  v18 = &v20;
  v9 = TraverseDirectory(fileSystemRepresentation, 0, 0, &v19, v16);
  v10 = v19;
  v11 = v19;
  v12 = v21;
  if ((v9 & 1) == 0 && !v21[5])
  {
    objc_storeStrong(v21 + 5, v10);
    v12 = v21;
  }

  v13 = v12[5];
  v14 = (v13 == 0) & v9;
  if (error && !v14)
  {
    *error = v13;
  }

  _Block_object_dispose(&v20, 8);
  return v14;
}

uint64_t __59__MIFileManager_validateSymlinksInURLDoNotEscapeURL_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 60) != 5)
  {
    return 1;
  }

  v4 = [MEMORY[0x29EDB8E70] fileURLWithFileSystemRepresentation:*(a2 + 24) isDirectory:0 relativeToURL:0];
  v5 = [*(a1 + 32) realPathForURL:v4 ifChildOfURL:*(a1 + 40)];
  v6 = v5 != 0;

  if (!v5)
  {
    v8 = _CreateAndLogError("[MIFileManager validateSymlinksInURLDoNotEscapeURL:error:]_block_invoke", 1249, @"MIInstallerErrorDomain", 70, 0, &unk_2A1DE86C8, @"invalid symlink at %s", v7, *(a2 + 24));
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  return v6;
}

- (id)enumerateURLsForItemsInDirectoryAtURL:(id)l ignoreSymlinks:(BOOL)symlinks withBlock:(id)block
{
  blockCopy = block;
  fileSystemRepresentation = [l fileSystemRepresentation];
  v18 = 0;
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __80__MIFileManager_enumerateURLsForItemsInDirectoryAtURL_ignoreSymlinks_withBlock___block_invoke;
  v15[3] = &unk_29EE509F0;
  symlinksCopy = symlinks;
  v9 = blockCopy;
  v16 = v9;
  v10 = TraverseDirectory(fileSystemRepresentation, 1, 0, &v18, v15);
  v11 = v18;
  v12 = v11;
  v13 = 0;
  if ((v10 & 1) == 0)
  {
    v13 = v11;
  }

  return v13;
}

uint64_t __80__MIFileManager_enumerateURLsForItemsInDirectoryAtURL_ignoreSymlinks_withBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(a2 + 60);
  if (*(a1 + 40) == 1 && v4 == 5)
  {
    if (gLogHandle)
    {
      if (*(gLogHandle + 44) >= 7)
      {
        v13 = *(a2 + 24);
        MOLogWrite();
      }
    }

    return 1;
  }

  else
  {
    v8 = [MEMORY[0x29EDB8E70] fileURLWithFileSystemRepresentation:*(a2 + 24) isDirectory:v4 == 2 relativeToURL:0];
    *a3 = 0;
    v9 = *(a1 + 32);
    v10 = _DTypeForVFSType(*(a2 + 60));
    v11 = (*(v9 + 16))(v9, v8, v10);

    return v11;
  }
}

- (id)traverseDirectoryAtURL:(id)l withBlock:(id)block
{
  blockCopy = block;
  fileSystemRepresentation = [l fileSystemRepresentation];
  v15 = 0;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __50__MIFileManager_traverseDirectoryAtURL_withBlock___block_invoke;
  v13[3] = &unk_29EE50A18;
  v7 = blockCopy;
  v14 = v7;
  v8 = TraverseDirectory(fileSystemRepresentation, 1, 0, &v15, v13);
  v9 = v15;
  v10 = v9;
  v11 = 0;
  if ((v8 & 1) == 0)
  {
    v11 = v9;
  }

  return v11;
}

uint64_t __50__MIFileManager_traverseDirectoryAtURL_withBlock___block_invoke(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = [MEMORY[0x29EDB8E70] fileURLWithFileSystemRepresentation:*(a2 + 24) isDirectory:*(a2 + 60) == 2 relativeToURL:0];
  v11 = 1;
  v7 = *(a1 + 32);
  v8 = _DTypeForVFSType(*(a2 + 60));
  v9 = (*(v7 + 16))(v7, v6, v8, &v11);
  *a3 = v11;

  return v9;
}

- (id)urlsForItemsInDirectoryAtURL:(id)l ignoringSymlinks:(BOOL)symlinks error:(id *)error
{
  lCopy = l;
  v8 = objc_opt_new();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v23 = 0;
  v16 = MEMORY[0x29EDCA5F8];
  v17 = 3221225472;
  v18 = __69__MIFileManager_urlsForItemsInDirectoryAtURL_ignoringSymlinks_error___block_invoke;
  v19 = &unk_29EE50A40;
  symlinksCopy = symlinks;
  v21 = &v24;
  v10 = v8;
  v20 = v10;
  v11 = TraverseDirectory(fileSystemRepresentation, 1, 0, &v23, &v16);
  v12 = v23;
  v13 = v23;
  if (!v25[5])
  {
    if (v11)
    {
      v14 = [v10 copy];
      if (!error)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    objc_storeStrong(v25 + 5, v12);
  }

  v14 = 0;
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!v14)
  {
    *error = v25[5];
  }

LABEL_9:

  _Block_object_dispose(&v24, 8);

  return v14;
}

uint64_t __69__MIFileManager_urlsForItemsInDirectoryAtURL_ignoringSymlinks_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(a2 + 60);
  if (*(a1 + 48) == 1 && v4 == 5)
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v15 = *(a2 + 24);
      MOLogWrite();
    }

    return 1;
  }

  else
  {
    v9 = [MEMORY[0x29EDB8E70] fileURLWithFileSystemRepresentation:*(a2 + 24) isDirectory:v4 == 2 relativeToURL:0];
    v10 = v9 != 0;
    if (v9)
    {
      *a3 = 0;
      [*(a1 + 32) addObject:v9];
    }

    else
    {
      v11 = _CreateAndLogError("[MIFileManager urlsForItemsInDirectoryAtURL:ignoringSymlinks:error:]_block_invoke", 1353, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to create URL for %s", v8, *(a2 + 24));
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }

  return v10;
}

- (BOOL)createSymbolicLinkAtURL:(id)l withDestinationURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v9 = symlink([rLCopy fileSystemRepresentation], objc_msgSend(lCopy, "fileSystemRepresentation"));
  if (v9)
  {
    v10 = *MEMORY[0x29EDB9EF8];
    v11 = *__error();
    fileSystemRepresentation = [rLCopy fileSystemRepresentation];
    [lCopy fileSystemRepresentation];
    v13 = __error();
    strerror(*v13);
    v15 = _CreateError("[MIFileManager createSymbolicLinkAtURL:withDestinationURL:error:]", 1386, v10, v11, 0, 0, @"Could not create symlink containing %s at %s: %s", v14, fileSystemRepresentation);
    if (error)
    {
      v15 = v15;
      *error = v15;
    }
  }

  else
  {
    v15 = 0;
  }

  return v9 == 0;
}

- (id)destinationOfSymbolicLinkAtURL:(id)l error:(id *)error
{
  v19 = *MEMORY[0x29EDCA608];
  lCopy = l;
  v6 = readlink([lCopy fileSystemRepresentation], v18, 0x400uLL);
  if (v6 < 0)
  {
    v11 = *MEMORY[0x29EDB9EF8];
    v12 = *__error();
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    v14 = __error();
    strerror(*v14);
    v10 = _CreateError("[MIFileManager destinationOfSymbolicLinkAtURL:error:]", 1406, v11, v12, 0, 0, @"Could not readlink %s : %s", v15, fileSystemRepresentation);
    v9 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18[v6] = 0;
    v7 = MEMORY[0x29EDB8E70];
    v8 = [MEMORY[0x29EDBA0F8] stringWithFileSystemRepresentation:v18 length:v6];
    v9 = [v7 fileURLWithPath:v8];

    v10 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v10 = v10;
    *error = v10;
  }

LABEL_7:

  v16 = *MEMORY[0x29EDCA608];

  return v9;
}

- (BOOL)itemExistsAtURL:(id)l error:(id *)error
{
  lCopy = l;
  memset(&v13, 0, sizeof(v13));
  v6 = lstat([lCopy fileSystemRepresentation], &v13);
  if (v6)
  {
    v7 = __error();
    v8 = *v7;
    if (v8 != 2 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      strerror(*v7);
      MOLogWrite();
    }

    if (error)
    {
      v9 = *MEMORY[0x29EDB9EF8];
      fileSystemRepresentation = [lCopy fileSystemRepresentation];
      strerror(v8);
      *error = _CreateError("[MIFileManager itemExistsAtURL:error:]", 1433, v9, v8, 0, 0, @"lstat of %s failed: %s", v11, fileSystemRepresentation);
    }
  }

  return v6 == 0;
}

- (BOOL)itemDoesNotExistAtURL:(id)l
{
  lCopy = l;
  memset(&v7, 0, sizeof(v7));
  if (!lstat([lCopy fileSystemRepresentation], &v7))
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (*__error() != 2)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v5 = __error();
      strerror(*v5);
      MOLogWrite();
    }

    goto LABEL_7;
  }

  v4 = 1;
LABEL_8:

  return v4;
}

- (BOOL)itemDoesNotExistOrIsNotDirectoryAtURL:(id)l
{
  v13 = 0;
  v3 = [(MIFileManager *)self itemIsDirectoryAtURL:l error:&v13];
  v4 = v13;
  v5 = v4;
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    domain = [v4 domain];
    v8 = *MEMORY[0x29EDB9EF8];
    if ([domain isEqualToString:*MEMORY[0x29EDB9EF8]])
    {
      v9 = [v5 code] == 2;
    }

    else
    {
      v9 = 0;
    }

    domain2 = [v5 domain];
    if ([domain2 isEqualToString:v8])
    {
      v11 = [v5 code] == 22;
    }

    else
    {
      v11 = 0;
    }

    v6 = v9 || v11;
  }

  return v6;
}

- (BOOL)_itemIsType:(unsigned __int16)type withDescription:(id)description atURL:(id)l error:(id *)error
{
  typeCopy = type;
  descriptionCopy = description;
  memset(&v18, 0, sizeof(v18));
  fileSystemRepresentation = [l fileSystemRepresentation];
  if (lstat(fileSystemRepresentation, &v18))
  {
    v12 = __error();
    v13 = *v12;
    if (v13 != 2 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      strerror(*v12);
      MOLogWrite();
    }

    if (error)
    {
      v14 = *MEMORY[0x29EDB9EF8];
      strerror(v13);
      _CreateError("[MIFileManager _itemIsType:withDescription:atURL:error:]", 1491, v14, v13, 0, 0, @"lstat of %s failed: %s", v15, fileSystemRepresentation);
LABEL_12:
      *error = v16 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((v18.st_mode & 0xF000) != typeCopy)
  {
    if (error)
    {
      _CreateError("[MIFileManager _itemIsType:withDescription:atURL:error:]", 1481, *MEMORY[0x29EDB9EF8], 22, 0, 0, @"%s is not a %@ (mode 0%ho)", v11, fileSystemRepresentation);
      goto LABEL_12;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v16 = 1;
LABEL_14:

  return v16;
}

- (id)_traverseUntilFirstAvailableParentOfURL:(id)l withBlock:(id)block
{
  blockCopy = block;
  path = [l path];
  memset(&v16, 0, sizeof(v16));
  fileSystemRepresentation = [path fileSystemRepresentation];
  if (lstat(fileSystemRepresentation, &v16))
  {
    v9 = *__error();
    if (v9 == 2)
    {
      while (![path isEqualToString:@"/"])
      {
        stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

        memset(&v16, 0, sizeof(v16));
        path = stringByDeletingLastPathComponent;
        fileSystemRepresentation = [stringByDeletingLastPathComponent fileSystemRepresentation];
        if (!lstat(fileSystemRepresentation, &v16))
        {
          goto LABEL_7;
        }

        v9 = *__error();
        if (v9 != 2)
        {
          goto LABEL_6;
        }
      }

      _CreateError("[MIFileManager _traverseUntilFirstAvailableParentOfURL:withBlock:]", 1543, *MEMORY[0x29EDB9EF8], 2, 0, 0, @"lstat for path / failed, which should never happen!", v10, v15);
    }

    else
    {
LABEL_6:
      _CreateError("[MIFileManager _traverseUntilFirstAvailableParentOfURL:withBlock:]", 1550, *MEMORY[0x29EDB9EF8], v9, 0, 0, @"lstat failed for %s", v8, fileSystemRepresentation);
    }
    v12 = ;
  }

  else
  {
LABEL_7:
    v12 = blockCopy[2](blockCopy, fileSystemRepresentation, &v16);
  }

  v13 = v12;

  return v13;
}

- (id)_firstAvailableParentForURL:(id)l error:(id *)error
{
  lCopy = l;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __51__MIFileManager__firstAvailableParentForURL_error___block_invoke;
  v13[3] = &unk_29EE50A68;
  v13[4] = &v14;
  v7 = [(MIFileManager *)self _traverseUntilFirstAvailableParentOfURL:lCopy withBlock:v13];
  v8 = v7;
  v9 = v15[5];
  if (error && !v9)
  {
    v10 = v7;
    *error = v8;
    v9 = v15[5];
  }

  v11 = v9;

  _Block_object_dispose(&v14, 8);

  return v11;
}

uint64_t __51__MIFileManager__firstAvailableParentForURL_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x29EDB8E70] fileURLWithFileSystemRepresentation:a2 isDirectory:(*(a3 + 4) & 0xF000) == 0x4000 relativeToURL:0];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 0;
}

- (int)deviceForURLOrFirstAvailableParent:(id)parent error:(id *)error
{
  parentCopy = parent;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __58__MIFileManager_deviceForURLOrFirstAvailableParent_error___block_invoke;
  v10[3] = &unk_29EE50A68;
  v10[4] = &v11;
  v7 = [(MIFileManager *)self _traverseUntilFirstAvailableParentOfURL:parentCopy withBlock:v10];
  v8 = *(v12 + 6);
  if (error && v8 == -1)
  {
    v7 = v7;
    *error = v7;
    v8 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

id __58__MIFileManager_deviceForURLOrFirstAvailableParent_error___block_invoke(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(*(a1 + 32) + 8) + 24) = *a3;
  if (*(*(*(a1 + 32) + 8) + 24) == -1)
  {
    v9 = _CreateError("[MIFileManager deviceForURLOrFirstAvailableParent:error:]_block_invoke", 1585, *MEMORY[0x29EDB9EF8], 22, 0, 0, @"lstat succeeded but st_dev was -1 for %s", a8, a2);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mountPointForURL:(id)l error:(id *)error
{
  v20[260] = *MEMORY[0x29EDCA608];
  lCopy = l;
  bzero(v19, 0x878uLL);
  v18 = 0;
  v7 = [(MIFileManager *)self _firstAvailableParentForURL:lCopy error:&v18];
  v8 = v18;
  if (v7)
  {
    [v7 fileSystemRepresentation];
    if (statfs_ext() == -1)
    {
      v10 = *__error();
      v11 = *MEMORY[0x29EDB9EF8];
      path = [lCopy path];
      strerror(v10);
      v14 = _CreateError("[MIFileManager mountPointForURL:error:]", 1616, v11, v10, 0, 0, @"statfs failed for %@: %s", v13, path);

      v9 = 0;
      v8 = v14;
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = [MEMORY[0x29EDB8E70] fileURLWithFileSystemRepresentation:v20 isDirectory:1 relativeToURL:0];
      if (!error)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v9)
  {
    v15 = v8;
    *error = v8;
  }

LABEL_10:

  v16 = *MEMORY[0x29EDCA608];

  return v9;
}

- (id)volumeUUIDForURL:(id)l error:(id *)error
{
  v21 = *MEMORY[0x29EDCA608];
  v17 = xmmword_296A31ED8;
  v18 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v16 = 0;
  v5 = [(MIFileManager *)self _firstAvailableParentForURL:l error:&v16];
  v6 = v16;
  if (v5)
  {
    if (getattrlist([v5 fileSystemRepresentation], &v17, v19, 0x14uLL, 0))
    {
      v7 = *__error();
      v8 = *MEMORY[0x29EDB9EF8];
      path = [v5 path];
      strerror(v7);
      v11 = _CreateError("[MIFileManager volumeUUIDForURL:error:]", 1652, v8, v7, 0, 0, @"getattrlist failed for %@: %s", v10, path);

      v12 = 0;
      v6 = v11;
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:v19 + 4];
      if (!error)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v12)
  {
    v13 = v6;
    *error = v6;
  }

LABEL_10:

  v14 = *MEMORY[0x29EDCA608];

  return v12;
}

- (BOOL)copyVolumeInfo:(id *)info forURL:(id)l error:(id *)error
{
  v27 = *MEMORY[0x29EDCA608];
  v21 = xmmword_296A31EF0;
  v22 = 0;
  bzero(v23, 0x434uLL);
  v20 = 0;
  v9 = [(MIFileManager *)self _firstAvailableParentForURL:l error:&v20];
  v10 = v20;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (getattrlist([v9 fileSystemRepresentation], &v21, v23, 0x434uLL, 0))
  {
    v11 = *__error();
    v12 = *MEMORY[0x29EDB9EF8];
    path = [v9 path];
    strerror(v11);
    v15 = _CreateError("[MIFileManager copyVolumeInfo:forURL:error:]", 1692, v12, v11, 0, 0, @"getattrlist failed for %@: %s", v14, path);

    v10 = v15;
LABEL_4:
    if (error)
    {
      v16 = v10;
      v17 = 0;
      *error = v10;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_10;
  }

  if (info)
  {
    memcpy(info->var2, v24 + v24[0], v24[1]);
    *info->var0 = v25;
    memcpy(info->var1, v26 + v26[0], v26[1]);
  }

  v17 = 1;
LABEL_10:

  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

- (id)mountPointForVolumeUUID:(id)d error:(id *)error
{
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __47__MIFileManager_mountPointForVolumeUUID_error___block_invoke;
  v14[3] = &unk_29EE50A90;
  v7 = dCopy;
  v15 = v7;
  v16 = &v17;
  v8 = [(MIFileManager *)self enumerateExternalVolumesWithBlock:v14];
  v9 = v8;
  v10 = v18[5];
  if (error && !v10)
  {
    v11 = v8;
    *error = v9;
    v10 = v18[5];
  }

  v12 = v10;

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __47__MIFileManager_mountPointForVolumeUUID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v9 = a2;
  if ([*(a1 + 32) isEqual:a3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

- (id)enumerateExternalVolumesWithBlock:(id)block
{
  v23 = *MEMORY[0x29EDCA608];
  blockCopy = block;
  v21 = 0;
  v20 = 0;
  v5 = getmntinfo_r_np(&v21, 2);
  if (!v5)
  {
    v12 = *__error();
    v13 = *MEMORY[0x29EDB9EF8];
    v14 = v12;
    v15 = strerror(v12);
    v7 = _CreateError("[MIFileManager enumerateExternalVolumesWithBlock:]", 1754, v13, v14, 0, 0, @"getmntinfo_r_np failed: %s", v16, v15);
    goto LABEL_13;
  }

  if (v5 < 1)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v6 = 0;
  v7 = 0;
  v8 = 2168 * v5;
  while (1)
  {
    memset(__dst, 0, 512);
    memcpy(__dst, &v21[v6 / 0x878], sizeof(__dst));
    if (!(*&__dst[72] ^ 0x73667061 | __dst[76]))
    {
      break;
    }

LABEL_8:
    v6 += 2168;
    if (v8 == v6)
    {
      goto LABEL_13;
    }
  }

  v9 = [MEMORY[0x29EDB8E70] fileURLWithFileSystemRepresentation:&__dst[88] isDirectory:1 relativeToURL:0];
  v19 = v7;
  v10 = [(MIFileManager *)self volumeUUIDForURL:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    blockCopy[2](blockCopy, v9, v10, &v20);
    if ((v20 & 1) == 0)
    {

      v7 = v11;
      goto LABEL_8;
    }
  }

  v7 = v11;
LABEL_13:
  if (v21)
  {
    free(v21);
    v21 = 0;
  }

  v17 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)upToFirstFourBytesFromURL:(id)l error:(id *)error
{
  v12 = 0;
  v5 = [MEMORY[0x29EDB9FB0] fileHandleForReadingFromURL:l error:&v12];
  v6 = v12;
  if (v5)
  {
    v11 = 0;
    v7 = [v5 readDataUpToLength:4 error:&v11];
    v8 = v11;

    v6 = v8;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
    v9 = v6;
    *error = v6;
  }

LABEL_7:

  return v7;
}

- (id)aclTextFromURL:(id)l error:(id *)error
{
  lCopy = l;
  file = acl_get_file([lCopy fileSystemRepresentation], ACL_TYPE_EXTENDED);
  if (file)
  {
    v7 = file;
    v8 = acl_to_text(file, 0);
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v8];
      acl_free(v7);
      acl_free(v9);
      v11 = 0;
      if (!error)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v16 = *__error();
    v17 = *MEMORY[0x29EDB9EF8];
    path = [lCopy path];
    strerror(v16);
    v11 = _CreateError("[MIFileManager aclTextFromURL:error:]", 1831, v17, v16, 0, 0, @"Could not read ACL text for file %@: %s", v19, path);

    acl_free(v7);
  }

  else
  {
    v12 = *__error();
    v13 = *MEMORY[0x29EDB9EF8];
    path2 = [lCopy path];
    strerror(v12);
    v11 = _CreateError("[MIFileManager aclTextFromURL:error:]", 1825, v13, v12, 0, 0, @"Could not get ACL for file %@: %s", v15, path2);
  }

  v10 = 0;
  if (!error)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v10)
  {
    v20 = v11;
    *error = v11;
  }

LABEL_10:

  return v10;
}

- (BOOL)enumerateExtendedAttributeNamesAtURL:(id)l includeCompression:(BOOL)compression error:(id *)error enumerator:(id)enumerator
{
  compressionCopy = compression;
  lCopy = l;
  enumeratorCopy = enumerator;
  LOBYTE(error) = _EnumerateExtendedAttributes([l fileSystemRepresentation], compressionCopy, error, enumeratorCopy);

  return error;
}

- (id)extendedAttributesFromURL:(id)l includeCompression:(BOOL)compression error:(id *)error
{
  compressionCopy = compression;
  v7 = MEMORY[0x29EDB8E00];
  lCopy = l;
  v9 = objc_alloc_init(v7);
  fileSystemRepresentation = [lCopy fileSystemRepresentation];

  v24 = 0;
  v19 = MEMORY[0x29EDCA5F8];
  v20 = 3221225472;
  v21 = __68__MIFileManager_extendedAttributesFromURL_includeCompression_error___block_invoke;
  v22 = &unk_29EE50AB8;
  v11 = v9;
  v23 = v11;
  LOBYTE(lCopy) = _EnumerateExtendedAttributes(fileSystemRepresentation, compressionCopy, &v24, &v19);
  v12 = v24;
  v13 = v12;
  if (lCopy)
  {
    v14 = [v11 copy];
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  domain = [v12 domain];
  if ([domain isEqualToString:@"MIInstallerErrorDomain"])
  {
    code = [v13 code];

    if (code == 140)
    {

      v13 = 0;
      v14 = MEMORY[0x29EDB8EA0];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v14 = 0;
  if (error)
  {
LABEL_9:
    if (!v14)
    {
      v17 = v13;
      *error = v13;
    }
  }

LABEL_11:

  return v14;
}

uint64_t __68__MIFileManager_extendedAttributesFromURL_includeCompression_error___block_invoke(uint64_t a1, int a2, char *name)
{
  v12 = 0;
  v5 = _DataForEAKey(name, a2, &v12);
  v6 = v12;
  v7 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:name];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v10 = v7;
      v11 = v6;
      MOLogWrite();
    }

    v8 = [MEMORY[0x29EDB8E28] null];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }

  return 1;
}

- (BOOL)clearExtendedAttributesAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v14[4] = &v16;
  v15 = 0;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __52__MIFileManager_clearExtendedAttributesAtURL_error___block_invoke;
  v14[3] = &unk_29EE50AE0;
  v7 = TraverseDirectory(fileSystemRepresentation, 0, 0x200u, &v15, v14);
  v8 = v15;
  if (v7)
  {
    v9 = v17[5];
    if (!v9)
    {
      v12 = 1;
      goto LABEL_8;
    }

    v10 = v9;

    v8 = v10;
  }

  if (error)
  {
    v11 = v8;
    v12 = 0;
    *error = v8;
  }

  else
  {
    v12 = 0;
  }

LABEL_8:
  _Block_object_dispose(&v16, 8);

  return v12;
}

uint64_t __52__MIFileManager_clearExtendedAttributesAtURL_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 2) == 0)
  {
    v2 = *(a2 + 24);
    v3 = *(*(a1 + 32) + 8);
    v6 = *(v3 + 40);
    v4 = (v3 + 40);
    v5 = v6;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = 0;
    v16[5] = v2;
    v17 = 0;
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = ___ClearExtendedAttributes_block_invoke;
    v16[3] = &unk_29EE50B30;
    v16[4] = &v18;
    v7 = _EnumerateExtendedAttributes(v2, 0, &v17, v16);
    v8 = v17;
    v9 = v8;
    if (v7)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v8 domain];
      if (![v10 isEqualToString:@"MIInstallerErrorDomain"])
      {
LABEL_10:

        goto LABEL_11;
      }

      v13 = [v9 code];

      if (v13 != 140)
      {
LABEL_11:
        v14 = v9;
        v12 = 0;
        v10 = v9;
LABEL_13:
        _Block_object_dispose(&v18, 8);

        objc_storeStrong(v4, v9);
        return v12;
      }

      v10 = 0;
    }

    v11 = v19[5];
    if (!v11)
    {
      v12 = 1;
      v9 = v5;
      goto LABEL_13;
    }

    v9 = v11;
    goto LABEL_10;
  }

  return 1;
}

- (BOOL)dataProtectionClassOfItemAtURL:(id)l class:(int *)class error:(id *)error
{
  lCopy = l;
  v8 = open([lCopy fileSystemRepresentation], 256);
  v9 = v8;
  if (v8 < 0)
  {
    v13 = *MEMORY[0x29EDB9EF8];
    v14 = *__error();
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    v16 = __error();
    strerror(*v16);
    _CreateError("[MIFileManager dataProtectionClassOfItemAtURL:class:error:]", 2130, v13, v14, 0, 0, @"Failed to open %s : %s", v17, fileSystemRepresentation);
  }

  else
  {
    v10 = fcntl(v8, 63);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = 0;
      *class = v10;
      v12 = 1;
LABEL_9:
      close(v9);
      v25 = v12;
      goto LABEL_10;
    }

    v18 = *MEMORY[0x29EDB9EF8];
    v19 = *__error();
    fileSystemRepresentation2 = [lCopy fileSystemRepresentation];
    v21 = __error();
    strerror(*v21);
    _CreateError("[MIFileManager dataProtectionClassOfItemAtURL:class:error:]", 2136, v18, v19, 0, 0, @"Failed to getclass of file %s: %s", v22, fileSystemRepresentation2);
  }
  v23 = ;
  v11 = v23;
  if (error)
  {
    v24 = v23;
    *error = v11;
  }

  v12 = 0;
  v25 = 0;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v25;
}

- (BOOL)setOwnerOfURL:(id)l toUID:(unsigned int)d gid:(unsigned int)gid error:(id *)error
{
  lCopy = l;
  v10 = lchown([lCopy fileSystemRepresentation], d, gid);
  if (v10)
  {
    v11 = *__error();
    v12 = *MEMORY[0x29EDB9EF8];
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    strerror(v11);
    v15 = _CreateError("[MIFileManager setOwnerOfURL:toUID:gid:error:]", 2201, v12, v11, 0, 0, @"Failed to lchown %s : %s", v14, fileSystemRepresentation);
    if (error)
    {
      v15 = v15;
      *error = v15;
    }
  }

  else
  {
    v15 = 0;
  }

  return v10 == 0;
}

- (BOOL)setPermissionsForURL:(id)l toMode:(unsigned __int16)mode error:(id *)error
{
  lCopy = l;
  v8 = lchmod([lCopy fileSystemRepresentation], mode);
  if (v8)
  {
    v9 = *__error();
    v10 = *MEMORY[0x29EDB9EF8];
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    strerror(v9);
    v13 = _CreateError("[MIFileManager setPermissionsForURL:toMode:error:]", 2220, v10, v9, 0, 0, @"Failed to lchmod %s : %s", v12, fileSystemRepresentation);
    if (error)
    {
      v13 = v13;
      *error = v13;
    }
  }

  else
  {
    v13 = 0;
  }

  return v8 == 0;
}

- (BOOL)captureStoreDataFromDirectory:(id)directory toDirectory:(id)toDirectory doCopy:(BOOL)copy failureIsFatal:(BOOL)fatal includeiTunesMetadata:(BOOL)metadata withError:(id *)error
{
  copyCopy = copy;
  v49 = *MEMORY[0x29EDCA608];
  directoryCopy = directory;
  toDirectoryCopy = toDirectory;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = [&unk_2A1DE8718 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    errorCopy = error;
    v13 = 0;
    v14 = 0;
    v15 = *v41;
    v32 = directoryCopy;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v41 != v15)
      {
        objc_enumerationMutation(&unk_2A1DE8718);
      }

      v17 = *(*(&v40 + 1) + 8 * v16);
      if (!metadata && ([*(*(&v40 + 1) + 8 * v16) isEqualToString:@"iTunesMetadata.plist"] & 1) != 0)
      {
        goto LABEL_15;
      }

      v18 = [toDirectoryCopy URLByAppendingPathComponent:v17 isDirectory:0];
      v19 = [directoryCopy URLByAppendingPathComponent:v17 isDirectory:0];
      if (copyCopy)
      {
        v39 = v14;
        v20 = [(MIFileManager *)self copyItemIfExistsAtURL:v19 toURL:v18 error:&v39];
        v21 = v39;

        if (!v20)
        {
          v46 = @"LegacyErrorString";
          v22 = [&unk_2A1DE8730 objectAtIndexedSubscript:v13];
          v47 = v22;
          v23 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          _CreateAndLogError("[MIFileManager captureStoreDataFromDirectory:toDirectory:doCopy:failureIsFatal:includeiTunesMetadata:withError:]", 2252, @"MIInstallerErrorDomain", 24, v21, v23, @"Failed to copy %@ to %@", v24, v19);
          goto LABEL_13;
        }
      }

      else
      {
        v38 = v14;
        v25 = [(MIFileManager *)self moveItemIfExistsAtURL:v19 toURL:v18 error:&v38];
        v21 = v38;

        if (!v25)
        {
          v44 = @"LegacyErrorString";
          v22 = [&unk_2A1DE8730 objectAtIndexedSubscript:v13];
          v45 = v22;
          v23 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          _CreateAndLogError("[MIFileManager captureStoreDataFromDirectory:toDirectory:doCopy:failureIsFatal:includeiTunesMetadata:withError:]", 2260, @"MIInstallerErrorDomain", 24, v21, v23, @"Failed to move %@ to %@", v26, v19);
          v14 = LABEL_13:;

          directoryCopy = v32;
          v21 = v14;
          if (fatal)
          {

            if (errorCopy)
            {
              v27 = v14;
              v28 = 0;
              *errorCopy = v14;
            }

            else
            {
              v28 = 0;
            }

            goto LABEL_23;
          }
        }
      }

      ++v13;

      v14 = v21;
LABEL_15:
      if (v12 == ++v16)
      {
        v12 = [&unk_2A1DE8718 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }
    }
  }

  v14 = 0;
LABEL_21:
  v28 = 1;
LABEL_23:

  v29 = *MEMORY[0x29EDCA608];
  return v28;
}

- (id)_realPathWhatExistsInPath:(id)path isDirectory:(BOOL)directory
{
  directoryCopy = directory;
  pathComponents = [path pathComponents];
  v6 = [pathComponents count];
  v7 = v6 - 1;
  if (v6 == 1)
  {
    v10 = 0;
  }

  else
  {
    do
    {
      v8 = [pathComponents subarrayWithRange:{0, v7 + 1}];
      v9 = [MEMORY[0x29EDB8E70] fileURLWithPathComponents:v8];
      v10 = 0;
      if ([(MIFileManager *)self itemExistsAtURL:v9])
      {
        v11 = [(MIFileManager *)self realPathForURL:v9 allowNonExistentPathComponents:0 isDirectory:directoryCopy error:0];
        if (v11)
        {
          v12 = [pathComponents subarrayWithRange:{v7 + 1, objc_msgSend(pathComponents, "count") - (v7 + 1)}];
          v13 = [MEMORY[0x29EDBA0F8] pathWithComponents:v12];
          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            [v11 path];
            v15 = v16 = v13;
            MOLogWrite();
          }

          v10 = [v11 URLByAppendingPathComponent:v13 isDirectory:{directoryCopy, v15, v16}];
        }

        else
        {
          v10 = 0;
        }
      }

      if (v10)
      {
        break;
      }

      --v7;
    }

    while (v7);
  }

  return v10;
}

- (BOOL)_validateSymlink:(id)symlink withStartingDepth:(unsigned int)depth andEndingDepth:(unsigned int *)endingDepth
{
  v25 = *MEMORY[0x29EDCA608];
  symlinkCopy = symlink;
  v8 = symlinkCopy;
  if (symlinkCopy)
  {
    endingDepthCopy = endingDepth;
    [symlinkCopy pathComponents];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v23 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      depthCopy2 = depth;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if ([v15 isEqualToString:@".."])
          {
            --depthCopy2;
          }

          else if (([v15 isEqualToString:&stru_2A1DE7358] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @".") & 1) == 0)
          {
            depthCopy2 += [v15 isEqualToString:@"/"] ^ 1;
          }

          if (depthCopy2 < depth)
          {

            goto LABEL_18;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      depthCopy2 = depth;
    }

    if (endingDepthCopy)
    {
      *endingDepthCopy = depthCopy2;
    }

    v16 = 1;
  }

  else
  {
    v9 = 0;
LABEL_18:
    v16 = 0;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

- (id)realPathForURL:(id)l ifChildOfURL:(id)rL
{
  v80 = *MEMORY[0x29EDCA608];
  lCopy = l;
  rLCopy = rL;
  bzero(v79, 0x400uLL);
  if (!lCopy || !rLCopy)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_38;
    }

    goto LABEL_14;
  }

  path = [rLCopy path];
  v9 = [path hasPrefix:@"/private/"];

  if (v9)
  {
    v10 = MEMORY[0x29EDB8E70];
    path2 = [rLCopy path];
    v12 = [path2 substringFromIndex:{objc_msgSend(@"/private", "length")}];
    v13 = [v10 fileURLWithPath:v12];

    rLCopy = v13;
  }

  path3 = [lCopy path];
  v15 = [path3 hasPrefix:@"/private/"];

  if (v15)
  {
    v16 = MEMORY[0x29EDB8E70];
    path4 = [lCopy path];
    v18 = [path4 substringFromIndex:{objc_msgSend(@"/private", "length")}];
    v19 = [v16 fileURLWithPath:v18];

    lCopy = v19;
  }

  path5 = [lCopy path];
  path6 = [rLCopy path];
  v22 = [path5 hasPrefix:path6];

  if ((v22 & 1) == 0)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_38;
    }

    path7 = [lCopy path];
    path8 = [rLCopy path];
    MOLogWrite();

    goto LABEL_37;
  }

  pathComponents = [lCopy pathComponents];
  v24 = [pathComponents containsObject:@".."];

  if (v24)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_38;
    }

    goto LABEL_11;
  }

  v26 = readlink([lCopy fileSystemRepresentation], v79, 0x400uLL);
  if (v26 == -1)
  {
    if (*__error() == 22 || *__error() == 2)
    {
      path9 = [lCopy path];
      stringByDeletingLastPathComponent = 0;
      goto LABEL_28;
    }

    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_38;
    }

    v44 = __error();
    strerror(*v44);
LABEL_14:
    MOLogWrite();
LABEL_38:
    v39 = 0;
    v38 = 0;
    v36 = 0;
    path9 = 0;
    stringByDeletingLastPathComponent = 0;
    goto LABEL_39;
  }

  if (v79[0] == 47)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_38;
    }

LABEL_11:
    path7 = [lCopy path];
LABEL_36:
    MOLogWrite();
LABEL_37:

    goto LABEL_38;
  }

  v78 = 0;
  path10 = [rLCopy path];
  v30 = [(MIFileManager *)self _validateSymlink:path10 withStartingDepth:0 andEndingDepth:&v78];

  if (!v30)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_38;
    }

    path7 = [rLCopy path];
    goto LABEL_36;
  }

  path11 = [lCopy path];
  path12 = [rLCopy path];
  v33 = [path11 substringFromIndex:{objc_msgSend(path12, "length")}];

  stringByDeletingLastPathComponent = [v33 stringByDeletingLastPathComponent];

  v34 = [MEMORY[0x29EDBA0F8] stringWithFileSystemRepresentation:v79 length:v26];
  path9 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v34];

  if (![(MIFileManager *)self _validateSymlink:path9 withStartingDepth:v78 andEndingDepth:0])
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_56;
    }

    path13 = [lCopy path];
    path14 = [rLCopy path];
    MOLogWrite();

    goto LABEL_55;
  }

LABEL_28:
  v35 = [(MIFileManager *)self _realPathForURL:rLCopy allowNonExistentPathComponents:0];
  if (!v35)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_56;
    }

    path13 = [rLCopy path];
    MOLogWrite();
LABEL_55:

LABEL_56:
    v39 = 0;
    v38 = 0;
    v36 = 0;
    goto LABEL_39;
  }

  v36 = v35;
  v37 = [(MIFileManager *)self _realPathForURL:lCopy allowNonExistentPathComponents:1];
  if (v37)
  {
    v38 = v37;
    if (!_CheckRealpathHasBasePrefix(v37, v36))
    {
LABEL_74:
      v39 = 0;
      goto LABEL_39;
    }

    if (v26 != -1)
    {
LABEL_32:
      v39 = v38;
      v38 = v39;
      goto LABEL_39;
    }

    pathComponents2 = [v38 pathComponents];
    pathComponents3 = [v36 pathComponents];
    v46 = [pathComponents3 count];
    v77 = pathComponents2;
    v47 = [pathComponents2 count];
    if (v47 < 2 || v46 <= 1)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_73;
      }

      path15 = [lCopy path];
      path16 = [rLCopy path];
      path17 = [v38 path];
      path18 = [v36 path];
      path21 = path17;
      v55 = path16;
      v56 = path15;
    }

    else
    {
      v48 = v47;
      v49 = 1;
      v50 = [pathComponents3 objectAtIndexedSubscript:1];
      if ([v50 isEqualToString:@"private"])
      {
        v49 = 2;
      }

      [v77 objectAtIndexedSubscript:1];
      v51 = v71 = v46;
      if ([v51 isEqualToString:@"private"])
      {
        v52 = 2;
      }

      else
      {
        v52 = 1;
      }

      if (v71 - v49 <= v48 - v52)
      {
        if (v71 <= v49)
        {
LABEL_78:

          goto LABEL_32;
        }

        while (1)
        {
          v60 = [pathComponents3 objectAtIndexedSubscript:v49];
          v61 = [v77 objectAtIndexedSubscript:v52];
          v75 = [v60 isEqualToString:v61];

          if ((v75 & 1) == 0)
          {
            break;
          }

          ++v49;
          ++v52;
          if (v71 == v49)
          {
            goto LABEL_78;
          }
        }

        v73 = v52;
        if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_73;
        }

        path19 = [lCopy path];
        path20 = [rLCopy path];
        path21 = [v38 path];
        path22 = [v36 path];
        v68 = [pathComponents3 objectAtIndexedSubscript:v49];
        v67 = [v77 objectAtIndexedSubscript:v73];
        path18 = path22;
        v56 = path19;
        MOLogWrite();

        v55 = path20;
        goto LABEL_72;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_73;
      }

      path23 = [lCopy path];
      path24 = [rLCopy path];
      path25 = [v38 path];
      path18 = [v36 path];
      path21 = path25;
      v55 = path24;
      v56 = path23;
    }

    MOLogWrite();
LABEL_72:

LABEL_73:
    goto LABEL_74;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    path26 = [lCopy path];
    MOLogWrite();
  }

  v39 = 0;
  v38 = 0;
LABEL_39:
  v40 = v39;

  v41 = *MEMORY[0x29EDCA608];

  return v40;
}

- (BOOL)markBundleAsPlaceholder:(id)placeholder withError:(id *)error
{
  value = 1;
  fileSystemRepresentation = [placeholder fileSystemRepresentation];
  v6 = setxattr(fileSystemRepresentation, "com.apple.installd.placeholder", &value, 4uLL, 0, 1);
  if (v6)
  {
    v7 = __error();
    v8 = *v7;
    v10 = _CreateError("[MIFileManager markBundleAsPlaceholder:withError:]", 2575, *MEMORY[0x29EDB9EF8], *v7, 0, 0, @"setxattr for %s on %s failed", v9, "com.apple.installd.placeholder");
    strerror(v8);
    v12 = _CreateAndLogError("[MIFileManager markBundleAsPlaceholder:withError:]", 2575, @"MIInstallerErrorDomain", 4, v10, 0, @"Could't set placeholder EA on %s: %s", v11, fileSystemRepresentation);

    if (error)
    {
      v13 = v12;
      *error = v12;
    }
  }

  else
  {
    v12 = 0;
  }

  return v6 == 0;
}

- (BOOL)clearPlaceholderStatusForBundle:(id)bundle withError:(id *)error
{
  fileSystemRepresentation = [bundle fileSystemRepresentation];
  v6 = removexattr(fileSystemRepresentation, "com.apple.installd.placeholder", 1);
  if (v6)
  {
    v7 = __error();
    v9 = _CreateError("[MIFileManager clearPlaceholderStatusForBundle:withError:]", 2599, *MEMORY[0x29EDB9EF8], *v7, 0, 0, @"removexattr on %s for %s failed", v8, fileSystemRepresentation);
    v11 = _CreateAndLogError("[MIFileManager clearPlaceholderStatusForBundle:withError:]", 2599, @"MIInstallerErrorDomain", 4, v9, 0, @"Could't remove placeholder EA on %s", v10, fileSystemRepresentation);

    if (error)
    {
      v12 = v11;
      *error = v11;
    }
  }

  return v6 == 0;
}

- (BOOL)_markEAFlag:(const char *)flag forAppIdentifier:(id)identifier insecurelyCachedOnBundle:(id)bundle error:(id *)error
{
  identifierCopy = identifier;
  bundleCopy = bundle;
  value = 1;
  if (!identifierCopy || ![identifierCopy length])
  {
    fileSystemRepresentation = [bundleCopy fileSystemRepresentation];
    v17 = _CreateAndLogError("[MIFileManager _markEAFlag:forAppIdentifier:insecurelyCachedOnBundle:error:]", 2615, @"MIInstallerErrorDomain", 4, 0, 0, @"Attempted to set a zero-length or nil app identifier on %s", v20, fileSystemRepresentation);
    goto LABEL_10;
  }

  v11 = open([bundleCopy fileSystemRepresentation], 256);
  if (v11 < 0)
  {
    v23 = __error();
    v24 = *v23;
    v25 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*v23 userInfo:0];
    fileSystemRepresentation2 = [bundleCopy fileSystemRepresentation];
    strerror(v24);
    v17 = _CreateAndLogError("[MIFileManager _markEAFlag:forAppIdentifier:insecurelyCachedOnBundle:error:]", 2622, @"MIInstallerErrorDomain", 4, v25, 0, @"Couldn't open bundle %s for setting extended attributes: %s", v27, fileSystemRepresentation2);

LABEL_10:
    v18 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v12 = v11;
  if (fsetxattr(v11, flag, &value, 4uLL, 0, 0))
  {
    v13 = __error();
    v14 = *v13;
    v15 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*v13 userInfo:0];
    [bundleCopy fileSystemRepresentation];
    strerror(v14);
    v17 = _CreateAndLogError("[MIFileManager _markEAFlag:forAppIdentifier:insecurelyCachedOnBundle:error:]", 2628, @"MIInstallerErrorDomain", 4, v15, 0, @"Couldn't set %s EA on %s: %s", v16, flag);

LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  uTF8String = [identifierCopy UTF8String];
  v29 = strlen(uTF8String);
  if (fsetxattr(v12, "com.apple.installd.appIdentifier", uTF8String, v29, 0, 0))
  {
    v30 = __error();
    v31 = *v30;
    v32 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*v30 userInfo:0];
    fileSystemRepresentation3 = [bundleCopy fileSystemRepresentation];
    strerror(v31);
    v17 = _CreateAndLogError("[MIFileManager _markEAFlag:forAppIdentifier:insecurelyCachedOnBundle:error:]", 2637, @"MIInstallerErrorDomain", 4, v32, 0, @"Couldn't set app identifier EA on %s: %s", v34, fileSystemRepresentation3);

    if (fremovexattr(v12, flag, 1) < 0)
    {
      v35 = *__error();
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        [bundleCopy fileSystemRepresentation];
        strerror(v35);
        MOLogWrite();
      }
    }

    goto LABEL_6;
  }

  v17 = 0;
  v18 = 1;
LABEL_7:
  close(v12);
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v18)
  {
    v21 = v17;
    *error = v17;
  }

LABEL_13:

  return v18;
}

- (id)_insecureCachedAppIdentifierIfMarkedWithEAFlag:(const char *)flag bundleURL:(id)l allowPlaceholders:(BOOL)placeholders error:(id *)error
{
  lCopy = l;
  value = 0;
  v10 = open([lCopy fileSystemRepresentation], 256);
  if (v10 < 0)
  {
    v16 = __error();
    v17 = *v16;
    v18 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*v16 userInfo:0];
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    strerror(v17);
    v15 = _CreateAndLogError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2668, @"MIInstallerErrorDomain", 4, v18, 0, @"Couldn't open bundle %s for setting extended attributes: %s", v20, fileSystemRepresentation);

    v21 = 0;
    v22 = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v11 = v10;
  if (fgetxattr(v10, flag, &value, 4uLL, 0, 0) != 4)
  {
    v23 = *__error();
    if (v23 == 93)
    {
      v24 = *MEMORY[0x29EDB9EF8];
      path = [lCopy path];
      v15 = _CreateError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2676, v24, 93, 0, 0, @"Attr named %s not present on %@", v25, flag);
    }

    else
    {
      v27 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v23 userInfo:0];
      [lCopy fileSystemRepresentation];
      strerror(v23);
      v15 = _CreateAndLogError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2678, @"MIInstallerErrorDomain", 4, v27, 0, @"Couldn't get %s EA from %s: %s", v28, flag);
    }

    goto LABEL_13;
  }

  if (value != 1)
  {
    [lCopy fileSystemRepresentation];
    v15 = _CreateAndLogError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2682, @"MIInstallerErrorDomain", 141, 0, 0, @"%s EA was not set to expected value from %s", v26, flag);
    goto LABEL_13;
  }

  if (!placeholders)
  {
    v38 = 0;
    if (fgetxattr(v11, "com.apple.installd.placeholder", &v38, 4uLL, 0, 0) == 4)
    {
      v12 = *MEMORY[0x29EDB9EF8];
      path2 = [lCopy path];
      v15 = _CreateError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2691, v12, 93, 0, 0, @"Not allowed to mark placeholder as validatedByFreeProfile for %@", v14, path2);

LABEL_13:
      v22 = 0;
      v21 = 0;
      goto LABEL_14;
    }
  }

  v37 = 0;
  v22 = _DataForEAKey("com.apple.installd.appIdentifier", v11, &v37);
  v15 = v37;
  if (v22)
  {
    v31 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:v22 encoding:4];
    if (v31)
    {
      v21 = v31;
      goto LABEL_14;
    }

    [lCopy fileSystemRepresentation];
    v34 = _CreateAndLogError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2704, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to convert app identifier EA data (%@) to string from %s", v35, v22);
  }

  else
  {
    fileSystemRepresentation2 = [lCopy fileSystemRepresentation];
    v34 = _CreateAndLogError("[MIFileManager _insecureCachedAppIdentifierIfMarkedWithEAFlag:bundleURL:allowPlaceholders:error:]", 2698, @"MIInstallerErrorDomain", 4, v15, 0, @"Couldn't get appIdentifier EA from %s", v33, fileSystemRepresentation2);

    v22 = 0;
  }

  v21 = 0;
  v15 = v34;
LABEL_14:
  close(v11);
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v21)
  {
    v29 = v15;
    *error = v15;
  }

LABEL_17:

  return v21;
}

- (BOOL)setInstallType:(id)type inExtendedAttributeOnBundle:(id)bundle error:(id *)error
{
  bundleCopy = bundle;
  value = [type unsignedLongLongValue];
  v8 = setxattr([bundleCopy fileSystemRepresentation], "com.apple.installd.installType", &value, 8uLL, 0, 1);
  if (v8)
  {
    v9 = __error();
    v10 = *v9;
    v11 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*v9 userInfo:0];
    fileSystemRepresentation = [bundleCopy fileSystemRepresentation];
    strerror(v10);
    v14 = _CreateAndLogError("[MIFileManager setInstallType:inExtendedAttributeOnBundle:error:]", 2751, @"MIInstallerErrorDomain", 4, v11, 0, @"Couldn't set installType EA on %s: %s", v13, fileSystemRepresentation);

    if (error)
    {
      v15 = v14;
      *error = v14;
    }
  }

  else
  {
    v14 = 0;
  }

  return v8 == 0;
}

- (id)installTypeFromExtendedAttributeOnBundle:(id)bundle error:(id *)error
{
  bundleCopy = bundle;
  value = 0;
  v6 = getxattr([bundleCopy fileSystemRepresentation], "com.apple.installd.installType", &value, 8uLL, 0, 1);
  if (v6 < 0)
  {
    v9 = *__error();
    if (v9 == 93)
    {
      path = [bundleCopy path];
      v8 = _CreateAndLogError("[MIFileManager installTypeFromExtendedAttributeOnBundle:error:]", 2768, @"MIInstallerErrorDomain", 158, 0, 0, @"Install type extended attribute not found on %@", v11, path);
    }

    else
    {
      v14 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v9 userInfo:0];
      fileSystemRepresentation = [bundleCopy fileSystemRepresentation];
      strerror(v9);
      v8 = _CreateAndLogError("[MIFileManager installTypeFromExtendedAttributeOnBundle:error:]", 2770, @"MIInstallerErrorDomain", 4, v14, 0, @"Couldn't get installType EA from %s: %s", v16, fileSystemRepresentation);
    }
  }

  else
  {
    if (v6 == 8)
    {
      v7 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:value];
      v8 = 0;
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    fileSystemRepresentation2 = [bundleCopy fileSystemRepresentation];
    v8 = _CreateAndLogError("[MIFileManager installTypeFromExtendedAttributeOnBundle:error:]", 2776, @"MIInstallerErrorDomain", 4, 0, 0, @"getxattr for installType EA on %s returned %zd (expected %zu)", v13, fileSystemRepresentation2);
  }

  v7 = 0;
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v7)
  {
    v17 = v8;
    *error = v8;
  }

LABEL_12:

  return v7;
}

- (BOOL)_setData:(id)data forExtendedAttributeNamed:(id)named onURL:(id)l orFD:(int)d error:(id *)error
{
  lCopy = l;
  namedCopy = named;
  dataCopy = data;
  fileSystemRepresentation = [l fileSystemRepresentation];
  uTF8String = [namedCopy UTF8String];

  bytes = [dataCopy bytes];
  v18 = [dataCopy length];

  if (!dataCopy)
  {
    v25 = _CreateAndLogError("[MIFileManager _setData:forExtendedAttributeNamed:onURL:orFD:error:]", 2798, @"MIInstallerErrorDomain", 4, 0, 0, @"Attempted to set nil data on %s for EA named %s", v19, fileSystemRepresentation);
    if (error)
    {
      goto LABEL_5;
    }

LABEL_7:
    v27 = 0;
    goto LABEL_10;
  }

  if ((d & 0x80000000) == 0)
  {
    if (fsetxattr(d, uTF8String, bytes, v18, 0, 0))
    {
      goto LABEL_4;
    }

LABEL_9:
    v25 = 0;
    v27 = 1;
    goto LABEL_10;
  }

  if (!setxattr(fileSystemRepresentation, uTF8String, bytes, v18, 0, 1))
  {
    goto LABEL_9;
  }

LABEL_4:
  v20 = __error();
  v21 = *v20;
  v23 = _CreateError("[MIFileManager _setData:forExtendedAttributeNamed:onURL:orFD:error:]", 2811, *MEMORY[0x29EDB9EF8], *v20, 0, 0, @"[f]setxattr failed for path %s fd %d", v22, fileSystemRepresentation);
  strerror(v21);
  v25 = _CreateAndLogError("[MIFileManager _setData:forExtendedAttributeNamed:onURL:orFD:error:]", 2811, @"MIInstallerErrorDomain", 4, v23, 0, @"Failed to set EA named %s on %s: %s", v24, uTF8String);

  if (!error)
  {
    goto LABEL_7;
  }

LABEL_5:
  v26 = v25;
  v27 = 0;
  *error = v25;
LABEL_10:

  return v27;
}

- (id)_dataForExtendedAttributeNamed:(id)named length:(int64_t)length onURL:(id)l orFD:(int)d error:(id *)error
{
  namedCopy = named;
  lCopy = l;
  fileSystemRepresentation = [named fileSystemRepresentation];
  fileSystemRepresentation2 = [lCopy fileSystemRepresentation];

  if (length < 0 && (d < 0 ? (v16 = getxattr(fileSystemRepresentation2, fileSystemRepresentation, 0, 0, 0, 1)) : (v16 = fgetxattr(d, fileSystemRepresentation, 0, 0, 0, 0)), length = v16, v16 < 0))
  {
    v28 = *__error();
    if (v28 == 93)
    {
      v22 = _CreateError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2857, *MEMORY[0x29EDB9EF8], 93, 0, 0, @"xattr named %s not present on %s", v29, fileSystemRepresentation);
    }

    else
    {
      v30 = _CreateError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2860, *MEMORY[0x29EDB9EF8], v28, 0, 0, @"[f]getxattr failed to get length for xattr named %s path %s fd %d", v29, fileSystemRepresentation);
      v22 = _CreateAndLogError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2860, @"MIInstallerErrorDomain", 4, v30, 0, @"Couldn't get length for xattr named %s on %s", v31, fileSystemRepresentation);
    }

    v17 = 0;
  }

  else
  {
    v17 = [MEMORY[0x29EDB8DF8] dataWithLength:length];
    mutableBytes = [v17 mutableBytes];
    if (d < 0)
    {
      v19 = getxattr(fileSystemRepresentation2, fileSystemRepresentation, mutableBytes, length, 0, 1);
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v19 = fgetxattr(d, fileSystemRepresentation, mutableBytes, length, 0, 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
LABEL_8:
        if (v19 == length)
        {
          v21 = [v17 copy];
          v22 = 0;
          if (!error)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        v25 = _CreateAndLogError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2893, @"MIInstallerErrorDomain", 4, 0, 0, @"getxattr for xattr named %s on %s returned %zd (expected %zu)", v20, fileSystemRepresentation);
        goto LABEL_15;
      }
    }

    v23 = *__error();
    if (v23 == 93)
    {
      v25 = _CreateError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2886, *MEMORY[0x29EDB9EF8], 93, 0, 0, @"xattr named %s not present on %s", v24, fileSystemRepresentation);
LABEL_15:
      v22 = v25;
      goto LABEL_21;
    }

    v26 = _CreateError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2889, *MEMORY[0x29EDB9EF8], v23, 0, 0, @"[f]getxattr failed for xattr named %s path %s fd %d", v24, fileSystemRepresentation);
    v22 = _CreateAndLogError("[MIFileManager _dataForExtendedAttributeNamed:length:onURL:orFD:error:]", 2889, @"MIInstallerErrorDomain", 4, v26, 0, @"Couldn't get data from xattr named %s on %s", v27, fileSystemRepresentation);
  }

LABEL_21:
  v21 = 0;
  if (!error)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (!v21)
  {
    v32 = v22;
    *error = v22;
  }

LABEL_24:

  return v21;
}

- (BOOL)removeExtendedAttributeNamed:(id)named fromURL:(id)l error:(id *)error
{
  namedCopy = named;
  v8 = 1;
  if (removexattr([l fileSystemRepresentation], objc_msgSend(namedCopy, "fileSystemRepresentation"), 1))
  {
    v9 = __error();
    v10 = *v9;
    if (v10 == 93)
    {
      v11 = 0;
      v8 = 1;
    }

    else
    {
      v12 = *MEMORY[0x29EDB9EF8];
      strerror(*v9);
      v11 = _CreateError("[MIFileManager removeExtendedAttributeNamed:fromURL:error:]", 2924, v12, v10, 0, 0, @"Failed to remove extended attribute named %@ from %s: %s", v13, namedCopy);
      if (error)
      {
        v11 = v11;
        v8 = 0;
        *error = v11;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v8;
}

- (unint64_t)diskUsageForURL:(id)l
{
  lCopy = l;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = [MEMORY[0x29EDB9FD0] hashTableWithOptions:256];
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __33__MIFileManager_diskUsageForURL___block_invoke;
  v12[3] = &unk_29EE50B08;
  v14 = &v16;
  v15 = 0;
  v6 = v4;
  v13 = v6;
  v7 = TraverseDirectory(fileSystemRepresentation, 2, 0x1C0u, &v15, v12);
  v8 = v15;
  if ((v7 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    path = [lCopy path];
    MOLogWrite();
  }

  v9 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t __33__MIFileManager_diskUsageForURL___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 60) != 2)
  {
    if (*(a2 + 80) == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) += *(a2 + 8);
    }

    else
    {
      v4 = *a2;
      if (NSHashGet(*(a1 + 32), *a2))
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          v6 = *(a2 + 24);
          MOLogWrite();
        }
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) += *(a2 + 8);
        NSHashInsertKnownAbsent(*(a1 + 32), v4);
      }
    }
  }

  return 1;
}

- (BOOL)setModificationDateToNowForURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = open([lCopy fileSystemRepresentation], 256);
  if (v6 < 0)
  {
    v15 = *__error();
    v16 = *MEMORY[0x29EDB9EF8];
    path = [lCopy path];
    strerror(v15);
    v14 = _CreateError("[MIFileManager setModificationDateToNowForURL:error:]", 3183, v16, v15, 0, 0, @"open() failed for %@: %s", v18, path);

    v9 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v7 = v6;
  v8 = futimes(v6, 0);
  v9 = v8 == 0;
  if (v8)
  {
    v10 = *__error();
    v11 = *MEMORY[0x29EDB9EF8];
    path2 = [lCopy path];
    strerror(v10);
    v14 = _CreateError("[MIFileManager setModificationDateToNowForURL:error:]", 3189, v11, v10, 0, 0, @"futimes() failed for %@: %s", v13, path2);
  }

  else
  {
    v14 = 0;
  }

  close(v7);
  if (error)
  {
LABEL_8:
    if (!v9)
    {
      v19 = v14;
      *error = v14;
    }
  }

LABEL_10:

  return v9;
}

- (id)modificationDateForURL:(id)l error:(id *)error
{
  lCopy = l;
  memset(&v11, 0, sizeof(v11));
  if (lstat([lCopy fileSystemRepresentation], &v11))
  {
    if (error)
    {
      v6 = *__error();
      v7 = *MEMORY[0x29EDB9EF8];
      path = [lCopy path];
      strerror(v6);
      *error = _CreateError("[MIFileManager modificationDateForURL:error:]", 3214, v7, v6, 0, 0, @"lstat() failed for %@: %s", v9, path);

      error = 0;
    }
  }

  else
  {
    error = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:v11.st_mtimespec.tv_nsec / 1000000000.0 + v11.st_mtimespec.tv_sec];
  }

  return error;
}

- (id)debugDescriptionForItemAtURL:(id)l
{
  v51 = *MEMORY[0x29EDCA608];
  lCopy = l;
  v5 = objc_alloc(MEMORY[0x29EDBA050]);
  path = [lCopy path];
  v7 = [v5 initWithFormat:@"Extra info about %@: ", path];

  memset(&v49, 0, sizeof(v49));
  if (lstat([lCopy fileSystemRepresentation], &v49))
  {
    v8 = *__error();
    path2 = [lCopy path];
    [v7 appendFormat:@"Couldn't stat %@: %s", path2, strerror(v8)];

    v10 = [v7 copy];
    goto LABEL_50;
  }

  [v7 appendFormat:@"dev=%d ino=%llu mode=0%ho nlink=%hu uid=%u gid=%u rdev=%d size=%lld atime=%lf mtime=%lf ctime=%lf birthtime=%lf blksize=%d blocks=%lld flags=0x%x ", v49.st_dev, v49.st_ino, v49.st_mode, v49.st_nlink, v49.st_uid, v49.st_gid, v49.st_rdev, v49.st_size, v49.st_atimespec.tv_nsec / 1000000000.0 + v49.st_atimespec.tv_sec, v49.st_mtimespec.tv_nsec / 1000000000.0 + v49.st_mtimespec.tv_sec, v49.st_ctimespec.tv_nsec / 1000000000.0 + v49.st_ctimespec.tv_sec, v49.st_birthtimespec.tv_nsec / 1000000000.0 + v49.st_birthtimespec.tv_sec, v49.st_blksize, v49.st_blocks, v49.st_flags];
  if ((v49.st_mode & 0xF000) == 0x8000)
  {
    v48 = 0;
    v11 = [(MIFileManager *)self upToFirstFourBytesFromURL:lCopy error:&v48];
    v12 = v48;
    if (v11)
    {
      [v7 appendFormat:@"firstBytes=%@ ", v11];
    }

    else
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        path3 = [lCopy path];
        v37 = v12;
        MOLogWrite();
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v47 = v12;
  v13 = [(MIFileManager *)self aclTextFromURL:lCopy error:&v47, path3, v37];
  v14 = v47;

  if (v13)
  {
    [v7 appendFormat:@"ACL={ %@ } ", v13];
    goto LABEL_22;
  }

  domain = [v14 domain];
  if (![domain isEqualToString:*MEMORY[0x29EDB9EF8]])
  {

    goto LABEL_18;
  }

  code = [v14 code];

  if (code != 2)
  {
LABEL_18:
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v34 = v14;
      MOLogWrite();
    }

    goto LABEL_21;
  }

  [v7 appendString:@"ACL=<not found> "];
LABEL_21:

  v14 = 0;
LABEL_22:
  v46 = v14;
  v17 = [(MIFileManager *)self extendedAttributesFromURL:lCopy error:&v46, v34];
  v18 = v46;

  if (!v17)
  {
    domain2 = [v18 domain];
    if ([domain2 isEqualToString:@"MIInstallerErrorDomain"])
    {
      code2 = [v18 code];

      if (code2 == 140)
      {
        [v7 appendString:@"extendedAttributes=<not found> "];
LABEL_31:

        v18 = 0;
        goto LABEL_32;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v35 = v18;
      MOLogWrite();
    }

    goto LABEL_31;
  }

  [v7 appendFormat:@"extendedAttributes=%@ ", v17];
LABEL_32:
  pathExtension = [lCopy pathExtension];
  v22 = [pathExtension isEqualToString:@"plist"];

  if (v22)
  {
    v45 = v18;
    v23 = [MEMORY[0x29EDB8DC0] MI_dictionaryWithContentsOfURL:lCopy options:0 error:&v45];
    v24 = v45;

    if (v23)
    {
      [v7 appendFormat:@"keyCount=%lu ", objc_msgSend(v23, "count")];
      if ([v23 count])
      {
        v39 = v24;
        v40 = v13;
        [v7 appendString:@"keySample={ "];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v25 = v23;
        v26 = [v25 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = 0;
          v29 = *v42;
LABEL_37:
          v30 = 0;
          while (1)
          {
            if (*v42 != v29)
            {
              objc_enumerationMutation(v25);
            }

            [v7 appendFormat:@"%@ ", *(*(&v41 + 1) + 8 * v30)];
            if (v28 == 4)
            {
              break;
            }

            ++v30;
            ++v28;
            if (v27 == v30)
            {
              v27 = [v25 countByEnumeratingWithState:&v41 objects:v50 count:16];
              if (v27)
              {
                goto LABEL_37;
              }

              break;
            }
          }
        }

        [v7 appendString:@"} "];
        v24 = v39;
        v13 = v40;
      }
    }

    else
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        path4 = [lCopy path];
        v38 = v24;
        MOLogWrite();
      }

      v24 = 0;
    }

    v18 = v24;
  }

  v10 = [v7 copy];

LABEL_50:
  v31 = *MEMORY[0x29EDCA608];

  return v10;
}

- (void)logAccessPermissionsForURL:(id)l
{
  v39 = *MEMORY[0x29EDCA608];
  mI_allAccessURLs = [l MI_allAccessURLs];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = [mI_allAccessURLs countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    v29 = *MEMORY[0x29EDB9EF8];
    v30 = mI_allAccessURLs;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(mI_allAccessURLs);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        memset(&v33, 0, sizeof(v33));
        if (!lstat([v8 fileSystemRepresentation], &v33))
        {
          v32 = 0;
          v11 = [(MIFileManager *)self aclTextFromURL:v8 error:&v32];
          v12 = v32;
          path3 = v12;
          if (v11)
          {
            if (!gLogHandle || *(gLogHandle + 44) >= 5)
            {
              st_mode = v33.st_mode;
              st_uid = v33.st_uid;
              st_gid = v33.st_gid;
              path = [v8 path];
              v27 = path;
              v28 = v11;
              v25 = st_gid;
              v26 = st_mode;
              path2 = st_uid;
              MOLogWrite();
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          domain = [v12 domain];
          if ([domain isEqualToString:v29])
          {
            code = [path3 code];

            if (code == 2)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }

          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            path2 = [v8 path];
            v25 = path3;
            MOLogWrite();
          }

LABEL_21:

          if (gLogHandle && *(gLogHandle + 44) < 5)
          {
            path3 = 0;
          }

          else
          {
            v19 = v33.st_mode;
            v20 = v33.st_uid;
            v21 = v33.st_gid;
            path = [v8 path];
            v26 = v19;
            v27 = path;
            path2 = v20;
            v25 = v21;
            MOLogWrite();
            path3 = 0;
LABEL_24:

            mI_allAccessURLs = v30;
          }

LABEL_25:

          goto LABEL_26;
        }

        v9 = *__error();
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          path3 = [v8 path];
          path2 = path3;
          v25 = strerror(v9);
          MOLogWrite();
LABEL_26:
        }

        ++v7;
      }

      while (v5 != v7);
      v22 = [mI_allAccessURLs countByEnumeratingWithState:&v34 objects:v38 count:16];
      v5 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x29EDCA608];
}

+ (id)_sanitizeFilePathForVarOrTmpSymlink:(id)symlink error:(id *)error
{
  symlinkCopy = symlink;
  if ([symlinkCopy hasPrefix:@"/var"])
  {
    v6 = [MEMORY[0x29EDB8E70] fileURLWithPath:@"/var/" isDirectory:1];
    defaultManager = [objc_opt_class() defaultManager];
    v22 = 0;
    v8 = [defaultManager realPathForURL:v6 allowNonExistentPathComponents:0 isDirectory:1 error:&v22];
    v9 = v22;

    if (v8)
    {
      path = [v8 path];
      v12 = @"/var";
LABEL_7:
      v14 = [symlinkCopy substringFromIndex:{-[__CFString length](v12, "length")}];
      v15 = [path stringByAppendingString:v14];

      v16 = 0;
      goto LABEL_13;
    }

    v17 = @"Failed to get the real path of /var";
    v18 = 3350;
  }

  else
  {
    if (![symlinkCopy hasPrefix:@"/tmp"])
    {
      v15 = symlinkCopy;
      v16 = 0;
      if (!error)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v6 = [MEMORY[0x29EDB8E70] fileURLWithPath:@"/tmp/" isDirectory:1];
    defaultManager2 = [objc_opt_class() defaultManager];
    v21 = 0;
    v8 = [defaultManager2 realPathForURL:v6 allowNonExistentPathComponents:0 isDirectory:1 error:&v21];
    v9 = v21;

    if (v8)
    {
      path = [v8 path];
      v12 = @"/tmp";
      goto LABEL_7;
    }

    v17 = @"Failed to get the real path of /tmp";
    v18 = 3360;
  }

  v16 = _CreateAndLogError("+[MIFileManager _sanitizeFilePathForVarOrTmpSymlink:error:]", v18, @"MIInstallerErrorDomain", 4, v9, 0, v17, v10, v21);
  v15 = 0;
LABEL_13:

  if (!error)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (!v15)
  {
    v19 = v16;
    *error = v16;
  }

LABEL_16:

  return v15;
}

- (BOOL)secureRenameFromSourceURL:(id)l toDestinationURL:(id)rL destinationStatus:(unsigned __int8)status error:(id *)error
{
  statusCopy = status;
  lCopy = l;
  rLCopy = rL;
  v62 = lCopy;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v61 = rLCopy;
  uRLByDeletingLastPathComponent2 = [rLCopy URLByDeletingLastPathComponent];
  v14 = objc_opt_class();
  path = [uRLByDeletingLastPathComponent path];
  v65 = 0;
  v16 = [v14 _sanitizeFilePathForVarOrTmpSymlink:path error:&v65];
  v17 = v65;

  if (!v16)
  {
    path2 = [uRLByDeletingLastPathComponent path];
    path4 = _CreateAndLogError("[MIFileManager secureRenameFromSourceURL:toDestinationURL:destinationStatus:error:]", 3392, @"MIInstallerErrorDomain", 4, v17, 0, @"Failed to sanitize source file path %@", v28, path2);
    v30 = 0;
    v22 = v17;
LABEL_10:
    v32 = v62;
    goto LABEL_30;
  }

  errorCopy = error;
  fileSystemRepresentation = [v16 fileSystemRepresentation];
  v19 = objc_opt_class();
  path3 = [uRLByDeletingLastPathComponent2 path];
  v64 = v17;
  path2 = [v19 _sanitizeFilePathForVarOrTmpSymlink:path3 error:&v64];
  v22 = v64;

  if (!path2)
  {
    path2 = [uRLByDeletingLastPathComponent2 path];
    path4 = _CreateAndLogError("[MIFileManager secureRenameFromSourceURL:toDestinationURL:destinationStatus:error:]", 3399, @"MIInstallerErrorDomain", 4, v22, 0, @"Failed to sanitize destination file path %@", v31, path2);
    v30 = 0;
    error = errorCopy;
    goto LABEL_10;
  }

  v58 = v22;
  v59 = uRLByDeletingLastPathComponent2;
  fileSystemRepresentation2 = [path2 fileSystemRepresentation];
  v24 = open(fileSystemRepresentation, 537919488);
  if ((v24 & 0x80000000) != 0)
  {
    v33 = *__error();
    v34 = *MEMORY[0x29EDB9EF8];
    v35 = v33;
    strerror(v33);
    path4 = _CreateError("[MIFileManager secureRenameFromSourceURL:toDestinationURL:destinationStatus:error:]", 3407, v34, v35, 0, 0, @"Failed to open file %s : %s", v36, fileSystemRepresentation);
  }

  else
  {
    v25 = v24;
    v26 = open(fileSystemRepresentation2, 537919488);
    if ((v26 & 0x80000000) == 0)
    {
      v27 = v26;
      if (statusCopy == 2)
      {
        v53 = 0;
        v57 = 4;
      }

      else
      {
        if (statusCopy != 1)
        {
          v41 = v61;
          v53 = [(MIFileManager *)self itemExistsAtURL:v61];
          if (v53)
          {
            v42 = 2;
          }

          else
          {
            v42 = 4;
          }

          v57 = v42;
LABEL_20:
          lastPathComponent = [v62 lastPathComponent];
          fileSystemRepresentation3 = [lastPathComponent fileSystemRepresentation];
          lastPathComponent2 = [v41 lastPathComponent];
          LODWORD(fileSystemRepresentation3) = renameatx_np(v25, fileSystemRepresentation3, v27, [lastPathComponent2 fileSystemRepresentation], v57);
          v30 = fileSystemRepresentation3 == 0;

          v55 = v27;
          v56 = v25;
          if (fileSystemRepresentation3)
          {
            v46 = *__error();
            v54 = *MEMORY[0x29EDB9EF8];
            path4 = [v62 path];
            path5 = [v61 path];
            strerror(v46);
            v49 = _CreateError("[MIFileManager secureRenameFromSourceURL:toDestinationURL:destinationStatus:error:]", 3433, v54, v46, 0, 0, @"Failed to renameatx_np() for source fd %d path %@ to destination fd %d path %@ with flags 0x%x, Error: %s", v48, v25);
            error = errorCopy;
          }

          else
          {
            if (!v53)
            {
              path4 = 0;
              error = errorCopy;
              goto LABEL_28;
            }

            v63 = 0;
            v32 = v62;
            v50 = [(MIFileManager *)self removeItemAtURL:v62 error:&v63];
            path4 = v63;
            error = errorCopy;
            if (v50)
            {
              uRLByDeletingLastPathComponent2 = v59;
LABEL_29:
              v22 = v58;
              close(v56);
              close(v55);
              goto LABEL_30;
            }

            if (gLogHandle && *(gLogHandle + 44) < 3)
            {
              v49 = 0;
              goto LABEL_23;
            }

            path5 = [v62 path];
            MOLogWrite();
            v49 = 0;
          }

LABEL_23:
          path4 = v49;
LABEL_28:
          uRLByDeletingLastPathComponent2 = v59;
          v32 = v62;
          goto LABEL_29;
        }

        v57 = 2;
        v53 = 1;
      }

      v41 = v61;
      goto LABEL_20;
    }

    v37 = *__error();
    v38 = *MEMORY[0x29EDB9EF8];
    v39 = v37;
    strerror(v37);
    path4 = _CreateError("[MIFileManager secureRenameFromSourceURL:toDestinationURL:destinationStatus:error:]", 3414, v38, v39, 0, 0, @"Failed to open file %s : %s", v40, fileSystemRepresentation2);
    close(v25);
  }

  v30 = 0;
  uRLByDeletingLastPathComponent2 = v59;
  error = errorCopy;
  v32 = v62;
LABEL_30:

  if (error && !v30)
  {
    v51 = path4;
    *error = path4;
  }

  return v30;
}

- (void)_moveItemAtURL:(uint64_t)a1 toURL:(uint64_t)a2 failIfSrcMissing:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = 136315650;
  v4 = "[MIFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]";
  v5 = 2080;
  v6 = a1;
  v7 = 2080;
  v8 = a2;
  _os_log_fault_impl(&dword_296A1B000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "%s: Expected to move %s to %s but got EXDEV; falling back to copyfile", &v3, 0x20u);
  v2 = *MEMORY[0x29EDCA608];
}

void __124__MIFileManager__stageURLByCopying_toItemName_inStagingDir_stagingMode_settingUID_gid_dataProtectionClass_hasSymlink_error___block_invoke_cold_1(uint64_t *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *a2;
  v5 = 136315650;
  v6 = "[MIFileManager _stageURLByCopying:toItemName:inStagingDir:stagingMode:settingUID:gid:dataProtectionClass:hasSymlink:error:]_block_invoke";
  v7 = 2080;
  v8 = v2;
  v9 = 2080;
  v10 = v3;
  _os_log_fault_impl(&dword_296A1B000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "%s: Attempt to clone %s to %s failed with EXDEV; falling back to copyfile", &v5, 0x20u);
  v4 = *MEMORY[0x29EDCA608];
}

@end