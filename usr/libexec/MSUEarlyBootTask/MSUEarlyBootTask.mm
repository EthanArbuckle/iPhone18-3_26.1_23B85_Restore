void MSUCleanupUUIDTextFolder(uint64_t a1)
{
  v1 = [NSURL fileURLWithPath:a1 isDirectory:1];
  [v1 URLByAppendingPathComponent:@"var/db/uuidtext"];
}

void logfunctionv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [[NSString alloc] initWithFormat:a3 arguments:a4];
  v4 = v5;
  debug("MSUEarlyBootTaskExecLog: %s\n", [v5 UTF8String]);
}

void debug(char *a1, ...)
{
  va_start(va, a1);
  if (serialLogLevel >= 2)
  {
    vfprintf(__stderrp, a1, va);
  }

  debugv(a1, va);
}

void debugv(uint64_t a1, uint64_t a2)
{
  if (log_file)
  {
    v4 = [NSString alloc];
    v5 = [NSString stringWithUTF8String:a1];
    v6 = [v4 initWithFormat:v5 arguments:a2];

    logString(v6);
  }
}

void error(char *a1, ...)
{
  va_start(va, a1);
  if (serialLogLevel)
  {
    vfprintf(__stderrp, a1, va);
  }

  debugv(a1, va);
}

void logString(void *a1)
{
  if (log_file)
  {
    v1 = a1;
    v2 = +[NSDate date];
    v3 = objc_alloc_init(NSDateFormatter);
    [v3 setDateFormat:@"HH:mm:ss"];
    v4 = [v3 stringFromDate:v2];
    bzero(v6, 0x400uLL);
    v5 = [NSString stringWithFormat:@"%@: %@", v4, v1];

    [v5 getCString:v6 maxLength:1023 encoding:4];
    fputs(v6, log_file);
  }
}

FILE *init_log(int a1, int a2)
{
  serialLogLevel = a2;
  mkdir("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask", 0x1EDu);
  v3 = MSUEarlyBootTaskSetupACLForPath(@"/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask");
  if (v3)
  {
    debug("MSUEarlyBootTask: Set up ACL on log folder\n");
  }

  else
  {
    error("MSUEarlyBootTask: Failed to set up ACL on log folder\n");
    v4 = getpwnam("mobile");
    if (v4)
    {
      pw_uid = v4->pw_uid;
      pw_gid = v4->pw_gid;
    }

    else
    {
      pw_gid = 501;
      pw_uid = 501;
    }

    lchown("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask", pw_uid, pw_gid);
    lchmod("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask", 0x1EDu);
  }

  memset(&v11, 0, sizeof(v11));
  if (stat("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log", &v11))
  {
    v7 = 1;
  }

  else
  {
    v7 = v11.st_size < 10485760;
  }

  v8 = v7;
  if ((v8 & a1) != 0)
  {
    v9 = "a+";
  }

  else
  {
    v9 = "w+";
  }

  result = fopen("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log", v9);
  log_file = result;
  if (v3)
  {
    fclose(result);
    if (MSUEarlyBootTaskSetupACLForPath(@"/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log"))
    {
      debug("MSUEarlyBootTas: Set up ACL on log file\n");
    }

    else
    {
      error("MSUEarlyBootTask: Failed to set up acl on log file\n");
    }

    result = fopen("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log", "a+");
    log_file = result;
  }

  return result;
}

uint64_t MSUEarlyBootTaskSetupACLForPath(void *a1)
{
  v1 = a1;
  v17 = 0;
  v2 = +[NSFileManager defaultManager];
  if ([v2 fileExistsAtPath:v1 isDirectory:&v17])
  {
    v3 = [v2 attributesOfItemAtPath:v1 error:0];
    v4 = v3;
    if (!v3)
    {
      [v1 fileSystemRepresentation];
      error("Failed to read attributes of item at path: %s\n");
      goto LABEL_18;
    }

    v5 = [v3 fileType];
    v6 = v5;
    if (v5 == NSFileTypeDirectory)
    {
    }

    else
    {
      v7 = [v4 fileType];

      if (v7 != NSFileTypeRegular)
      {
        memset(v18, 0, sizeof(v18));
        v8 = [v4 fileType];
        [v8 getCString:v18 maxLength:127 encoding:4];

        [v1 fileSystemRepresentation];
        error("File %s is a unsupported type(%s)");
        goto LABEL_18;
      }
    }

    if (v17 == 1)
    {
      v10 = &MSUEarlyBootTaskSetupACLForPath_dirAcl;
    }

    else
    {
      v10 = &MSUEarlyBootTaskSetupACLForPath_fileAcl;
    }

    v9 = *v10;
    if (!*v10)
    {
      v9 = MSUEarlyBootTaskCopySystemContainerACLWithNumACEs(v17);
      *v10 = v9;
      if (!v9)
      {
        error("%s: Failed to alloc acl..bailing\n", "MSUEarlyBootTaskSetupACLForPath");
        goto LABEL_22;
      }
    }

    v11 = getpwnam("nobody");
    if (v11)
    {
      pw_uid = v11->pw_uid;
      pw_gid = v11->pw_gid;
      if (acl_set_link_np([v1 fileSystemRepresentation], ACL_TYPE_EXTENDED, v9))
      {
        v14 = __error();
        v15 = strerror(*v14);
        error("%s: Call to acl_set_file failed(%s)\n", "MSUEarlyBootTaskSetupACLForPath", v15);
      }

      else
      {
        lchown([v1 fileSystemRepresentation], pw_uid, pw_gid);
        lchmod([v1 fileSystemRepresentation], 0);
      }

      v9 = 1;
      goto LABEL_22;
    }

    error("%s: Failed to get uid to set up acl\n");
LABEL_18:
    v9 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v9 = 1;
LABEL_23:

  return v9;
}

uint64_t flush_log()
{
  result = log_file;
  if (log_file)
  {
    fflush(log_file);
    v1 = log_file;

    return fclose(v1);
  }

  return result;
}

char *copy_path_for_booted_os_data()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    printf("%s: Failed to query gestalt for the BootManifestHash\n", "copy_path_for_booted_os_data");
    return 0;
  }

  v1 = v0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *buffer = 0u;
  v12 = 0u;
  Length = CFDataGetLength(v0);
  BytePtr = CFDataGetBytePtr(v1);
  if (!BytePtr)
  {
    printf("%s: Failed to get byte pointer from bootManifestHash data returned by gestalt\n");
LABEL_12:
    CFRelease(v1);
    return 0;
  }

  v4 = BytePtr;
  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    printf("%s: Failed to create bootManifestHashString\n");
    goto LABEL_12;
  }

  v6 = Mutable;
  if (Length >= 1)
  {
    do
    {
      v7 = *v4++;
      CFStringAppendFormat(v6, 0, @"%02x", v7);
      --Length;
    }

    while (Length);
  }

  CFStringGetCString(v6, buffer, 512, 0x8000100u);
  if (buffer[0])
  {
    v8 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    v9 = v8;
    if (v8)
    {
      bzero(v8, 0x400uLL);
      snprintf(v9, 0x3FFuLL, "%s/%s-MSUData", "/private/var/MobileSoftwareUpdate/", buffer);
    }

    else
    {
      printf("%s: Failed to allocate memory for storing the path to the bootedOSData folder\n", "copy_path_for_booted_os_data");
    }
  }

  else
  {
    printf("%s: Failed to get C string representation of bootManifestHash\n", "copy_path_for_booted_os_data");
    v9 = 0;
  }

  CFRelease(v1);
  CFRelease(v6);
  return v9;
}

uint64_t move_directory_hierarchy(char *a1, const char *a2)
{
  v19[0] = a1;
  v19[1] = 0;
  if (!a1 || !a2)
  {
    error("Invalid argument passed to %s", "move_directory_hierarchy");
    return 22;
  }

  v4 = fts_open(v19, 20, 0);
  if (!v4)
  {
    v14 = __error();
    v15 = strerror(*v14);
    error("Failed to open source directory hierarchy: %s\n", v15);
    return *__error();
  }

  v5 = v4;
  v6 = fts_read(v4);
  if (!v6)
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v7 = v6;
  while (1)
  {
    if (v7->fts_info == 7)
    {
      error("Got error while traversing source directory %s", a1);
      goto LABEL_21;
    }

    bzero(__str, 0x400uLL);
    v8 = strlen(a1);
    snprintf(__str, 0x3FFuLL, "%s%s", a2, &v7->fts_path[v8]);
    fts_info = v7->fts_info;
    if ((fts_info - 12) >= 2)
    {
      break;
    }

    if (copyfile(v7->fts_path, __str, 0, 0x12C000Fu))
    {
      v17 = "Failed to recreate symlink %s at %s: %d\n";
      goto LABEL_25;
    }

LABEL_16:
    v7 = fts_read(v5);
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (fts_info != 8)
  {
    if (fts_info == 1 && copyfile(v7->fts_path, __str, 0, 7u))
    {
      v17 = "Failed to recreate folder %s at %s: %d\n";
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v11 = v10;
  if (!copyfile(v7->fts_path, __str, 0, 0x13C000Fu))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    totalDataMoved += v7->fts_statp->st_size;
    *&totalTimeSpentInFileMoves = v12 - v11 + *&totalTimeSpentInFileMoves;
    goto LABEL_16;
  }

  v17 = "Failed to move regular file %s to %s: %d\n";
LABEL_25:
  v13 = *__error();
  error(v17, v7->fts_path, __str, v13);
LABEL_22:
  fts_close(v5);
  return v13;
}

uint64_t moveFolderContentsIfItExists(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v5 = +[NSFileManager defaultManager];
  if (v3 && v4)
  {
    bzero(v16, 0x400uLL);
    bzero(v15, 0x400uLL);
    [v3 getCString:v16 maxLength:1023 encoding:4];
    [v4 getCString:v15 maxLength:1023 encoding:4];
    if (!v16[0] || !v15[0])
    {
      error("%s: Unable to convert source/destination paths to C strings", "moveFolderContentsIfItExists");
    }

    debug("%s: Checking for source folder at: %s\n", "moveFolderContentsIfItExists", v16);
    [v5 fileExistsAtPath:v3 isDirectory:&v13];
    if ((v13 & 1) == 0)
    {
      debug("%s: Source folder %s does not exist\n");
      goto LABEL_16;
    }

    debug("%s: Folder exists..Attempting to move to %s\n", "moveFolderContentsIfItExists", v15);
    if ((move_directory_hierarchy(v16, v15) & 0x80000000) == 0)
    {
      v12 = 0;
      [v5 removeItemAtPath:v3 error:&v12];
      v6 = v12;
      if (v6)
      {
        v7 = v6;
        memset(v14, 0, sizeof(v14));
        v8 = [v6 description];
        [v8 getCString:v14 maxLength:511 encoding:4];

        if (LOBYTE(v14[0]))
        {
          v9 = v14;
        }

        else
        {
          v9 = "Unable to parse error reason";
        }

        error("%s: Failed to remove %s folder(%s)\n", "moveFolderContentsIfItExists", v16, v9);

        goto LABEL_14;
      }

      debug("%s: Successfully moved %s to %s\n");
LABEL_16:
      v10 = 1;
      goto LABEL_17;
    }

    error("%s: Failed to move folder contents\n");
  }

  else
  {
    error("%s: Invalid arguments passed to source/destination");
  }

LABEL_14:
  v10 = 0;
LABEL_17:

  return v10;
}

uint64_t execForMSUEarlyBootTask(const char **a1)
{
  v24 = 0;
  *v26 = -1;
  if (pipe(v26))
  {
    v2 = *a1;
    v3 = __error();
    v4 = strerror(*v3);
    error("%s: pipe failed while preparing to execute %s: %s\n", "execForMSUEarlyBootTask", v2, v4);
    return 0xFFFFFFFFLL;
  }

  v23 = 0;
  posix_spawn_file_actions_init(&v23);
  posix_spawn_file_actions_adddup2(&v23, v26[1], 1);
  posix_spawn_file_actions_addclose(&v23, v26[0]);
  v6 = posix_spawn(&v24, *a1, &v23, 0, a1, 0);
  if (v6)
  {
    v5 = v6;
    v7 = *a1;
    v8 = strerror(v6);
    error("%s: posix_spawn %s failed: %s\n", "execForMSUEarlyBootTask", v7, v8);
    close(v26[0]);
    goto LABEL_5;
  }

  bzero(v25, 0x400uLL);
  v10 = v26[0];
  close(v26[1]);
  v26[1] = -1;
  v11 = read(v10, v25, 0x400uLL);
  if (v11 >= 1)
  {
    do
    {
      execlogfunction(v11, v12, v13, v14, v15, v16, v17, v18, v11);
      v11 = read(v10, v25, 0x400uLL);
    }

    while (v11 > 0);
  }

  v22 = 0;
  if (waitpid(v24, &v22, 0) == -1)
  {
    v5 = *__error();
    v19 = *a1;
    v20 = __error();
    v21 = strerror(*v20);
    error("%s: waitpid failed for %s: %s\n", "execForMSUEarlyBootTask", v19, v21);
  }

  else
  {
    if ((v22 & 0x7F) == 0x7F)
    {
      printf("%s: %s was stopped by signal %d\n", "execForMSUEarlyBootTask", *a1, v22 >> 8);
    }

    else
    {
      if ((v22 & 0x7F) == 0)
      {
        v5 = BYTE1(v22);
        goto LABEL_5;
      }

      error("%s: %s was terminated by signal %d\n", "execForMSUEarlyBootTask", *a1, v22 & 0x7F);
    }

    v5 = 0xFFFFFFFFLL;
  }

LABEL_5:
  posix_spawn_file_actions_destroy(&v23);
  if (v26[1] != -1)
  {
    close(v26[1]);
  }

  return v5;
}

uint64_t ramrod_create_directory_with_class(_BYTE *a1, int a2, uid_t a3, gid_t a4, int a5, int a6)
{
  if (!a1 || *a1 != 47)
  {
    return 22;
  }

  bzero(v24, 0x400uLL);
  __strlcpy_chk();
  for (i = v24; ; *i = 47)
  {
    v12 = strchr(i + 1, 47);
    i = v12;
    if (v12)
    {
      *v12 = 0;
    }

    memset(&v23, 0, sizeof(v23));
    if (lstat(v24, &v23))
    {
      if (*__error() != 2)
      {
        v13 = *__error();
        v14 = __error();
        strerror(*v14);
        error("lstat %s failed: %s\n");
        return v13;
      }

      if (a6)
      {
        error("creating directory (owner=%d group=%d mode=%o, class=%d) %s\n", a3, a4, a2, a5, v24);
      }

      if (mkdir(v24, a2 & 0x1FF))
      {
        v13 = *__error();
        v15 = __error();
        strerror(*v15);
        error("mkdir failed: %s\n");
        return v13;
      }

      if (chmod(v24, a2))
      {
        v13 = *__error();
        v16 = __error();
        strerror(*v16);
        error("chmod failed: %s\n");
        return v13;
      }

      if (chown(v24, a3, a4))
      {
        v13 = *__error();
        v17 = __error();
        strerror(*v17);
        error("chown failed: %s\n");
        return v13;
      }

      if ((a5 & 0x80000000) == 0)
      {
        v22 = 0;
        v21 = xmmword_100007E84;
        v20 = a5;
        if (setattrlist(v24, &v21, &v20, 4uLL, 0))
        {
          break;
        }
      }
    }

    if (!i)
    {
      return 0;
    }
  }

  v13 = *__error();
  v18 = __error();
  strerror(*v18);
  error("setattrlist failed: %s\n");
  return v13;
}

uint64_t msuearlyboottask_mount_filesystem(const char *a1, const char *a2, int a3)
{
  if (!a1)
  {
    error("%s: Invalid arguments passed\n", "msuearlyboottask_mount_filesystem");
    return 0xFFFFFFFFLL;
  }

  debug("%s: Attempting to mount %s at %s\n", "msuearlyboottask_mount_filesystem", a1, "/private/var/MobileSoftwareUpdate/mnt1");
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v9[0] = "/sbin/mount_apfs";
  v9[1] = "-o";
  v9[2] = "nobrowse";
  if (a3)
  {
    debug("%s: Mounting read-only\n", "msuearlyboottask_mount_filesystem");
    *&v10 = "-o";
    *(&v10 + 1) = "rdonly";
    v6 = 5;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = 3;
  if (a2)
  {
LABEL_7:
    debug("%s: Mounting snapshot %s\n", "msuearlyboottask_mount_filesystem", a2);
    v8 = v6 + 1;
    v9[v6] = "-s";
    v6 += 2;
    v9[v8] = a2;
  }

LABEL_8:
  v9[v6] = a1;
  v9[v6 + 1] = "/private/var/MobileSoftwareUpdate/mnt1";
  v9[v6 + 2] = 0;
  return execForMSUEarlyBootTask(v9);
}

void msuearlyboottask_unmount_filesystem()
{
  v0 = -3;
  do
  {
    if (!unmount("/private/var/MobileSoftwareUpdate/mnt1", 0x80000))
    {
      break;
    }

    v1 = *__error();
    v2 = v1 == 35 || v1 == 16;
    v3 = v2;
    if (v1 == 22)
    {
      debug("MSUEarlyBootTask: Tried to unmount a volume at '%s' that wasn't mounted. Ignoring the error.\n", "/private/var/MobileSoftwareUpdate/mnt1");
    }

    else
    {
      v4 = __error();
      v5 = strerror(*v4);
      error("MSUEarlyBootTask: error unmounting '%s': %s\n", "/private/var/MobileSoftwareUpdate/mnt1", v5);
      if (v1 == 35 || v1 == 16)
      {
        v6 = strerror(v1);
        error("Unmounting %s failed with %d: %s. Will retry in %d seconds", "/private/var/MobileSoftwareUpdate/mnt1", v1, v6, 3);
        sleep(3u);
      }
    }
  }

  while (v0++ && v3);
}

void msuearlyboottask_dump_mounted_filesystem_info()
{
  debug("%s:**********DUMPING MOUNTED FILESYSTEMS********\n", "msuearlyboottask_dump_mounted_filesystem_info");
  v3 = 0;
  v0 = getmntinfo(&v3, 2);
  debug("%s: %d filesystems are mounted\n", "msuearlyboottask_dump_mounted_filesystem_info", v0);
  if (v3)
  {
    if (v0 >= 1)
    {
      v1 = v0 + 1;
      v2 = 2168 * v0 - 2080;
      do
      {
        debug("%s is mounted at %s\n", &v3->f_mntonname[v2 + 936], v3 + v2);
        --v1;
        v2 -= 2168;
      }

      while (v1 > 1);
    }
  }

  else
  {
    debug("Failed to get info regarding mounted filesystems\n");
  }

  debug("%s: *********DONE DUMPING MOUNTED FILESYSTEMS********\n", "msuearlyboottask_dump_mounted_filesystem_info");
}

acl_t MSUEarlyBootTaskCopySystemContainerACLWithNumACEs(int a1)
{
  acl_p = acl_init(1);
  if (!acl_p)
  {
    v4 = __error();
    v5 = strerror(*v4);
    error("MSUEarlyBootTask: acl_init() failed: %s", v5);
    return 0;
  }

  if (a1)
  {
    v2 = ACL_CHANGE_OWNER|ACL_WRITE_SECURITY|ACL_READ_SECURITY|ACL_WRITE_EXTATTRIBUTES|ACL_READ_EXTATTRIBUTES|ACL_WRITE_ATTRIBUTES|ACL_READ_ATTRIBUTES|ACL_DELETE_CHILD|ACL_ADD_SUBDIRECTORY|ACL_DELETE|ACL_SEARCH|ACL_ADD_FILE|ACL_LIST_DIRECTORY;
  }

  else
  {
    v2 = ACL_CHANGE_OWNER|ACL_WRITE_SECURITY|ACL_READ_SECURITY|ACL_WRITE_EXTATTRIBUTES|ACL_READ_EXTATTRIBUTES|ACL_WRITE_ATTRIBUTES|ACL_READ_ATTRIBUTES|ACL_ADD_SUBDIRECTORY|ACL_DELETE|ACL_SEARCH|ACL_ADD_FILE|ACL_LIST_DIRECTORY;
  }

  entry_p = 0;
  if (a1)
  {
    v3 = ACL_ENTRY_DIRECTORY_INHERIT|ACL_ENTRY_FILE_INHERIT;
  }

  else
  {
    v3 = ACL_ENTRY_INHERITED;
  }

  flagset_p = 0;
  permset_p = 0;
  if (acl_create_entry(&acl_p, &entry_p))
  {
    error("MSUEarlyBootTask: Unable to create acl entry(%d)\n");
  }

  else
  {
    v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    if (v6)
    {
      v7 = v6;
      v8 = mbr_identifier_to_uuid(5, "systemusers", 0xBuLL, v6);
      if (v8)
      {
        strerror(v8);
        error("MSUEarlyBootTask: Failed to convert mbr identifier to uuid : %d (%s)\n");
      }

      else
      {
        permset = acl_get_permset(entry_p, &permset_p);
        if (permset)
        {
          strerror(permset);
          error("acl_get_permset() failed: %d: %s\n");
        }

        else
        {
          v10 = acl_add_perm(permset_p, v2);
          if (v10)
          {
            strerror(v10);
            error("acl_add_perm() failed to set perms %x: %d: %s\n");
          }

          else if (acl_set_permset(entry_p, permset_p))
          {
            strerror(0);
            error("acl_set_permset() failed: %d: %s");
          }

          else
          {
            flagset_np = acl_get_flagset_np(entry_p, &flagset_p);
            if (flagset_np)
            {
              strerror(flagset_np);
              error("MSUEarlyBootTask: acl_get_flagset_np() failed: %d: %s");
            }

            else
            {
              v12 = acl_add_flag_np(flagset_p, v3);
              if (v12)
              {
                strerror(v12);
                error("MSUEarlyBootTask: acl_add_flag_np() failed to set flags %x: %d %s\n");
              }

              else
              {
                v13 = acl_set_flagset_np(entry_p, flagset_p);
                if (v13)
                {
                  strerror(v13);
                  error("acl_set_flagset_np() failed: %d: %s\n");
                }

                else
                {
                  v14 = acl_set_tag_type(entry_p, ACL_EXTENDED_ALLOW);
                  if (v14)
                  {
                    strerror(v14);
                    error("acl_set_tag_type() failed: %d: %s");
                  }

                  else
                  {
                    v15 = acl_set_qualifier(entry_p, v7);
                    if (!v15)
                    {
                      free(v7);
                      return acl_p;
                    }

                    strerror(v15);
                    error("acl_set_qualifier() failed: %d: %s");
                  }
                }
              }
            }
          }
        }
      }

      free(v7);
    }

    else
    {
      error("MSUEarlyBootTask: Unable to allocate nameUUID\n");
    }
  }

  error("MSUEarlyBootTask: Failed in call to MSUEarlyBootTaskCreateSystemUserACEInACL\n");
  result = acl_p;
  if (acl_p)
  {
    acl_free(acl_p);
    return 0;
  }

  return result;
}

uint64_t _partition_log(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (_loggingPtr)
  {
    return _loggingPtr(result, &a9);
  }

  return result;
}

char *copy_root_snapshot_name_from_dt()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (!v0)
  {
    _partition_log("uanble to find chosen node", v1, v2, v3, v4, v5, v6, v7, v30);
    return 0;
  }

  v8 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"root-snapshot-name", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    _partition_log("unable to look up root-snapshot-name on chosen node", v10, v11, v12, v13, v14, v15, v16, v30);
    IOObjectRelease(v8);
    return 0;
  }

  v17 = CFProperty;
  v18 = CFGetTypeID(CFProperty);
  if (v18 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v17);
    Length = CFDataGetLength(v17);
    v28 = strndup(BytePtr, Length);
  }

  else
  {
    _partition_log("device tree root-snapshot-name type mismatch", v19, v20, v21, v22, v23, v24, v25, v30);
    v28 = 0;
  }

  IOObjectRelease(v8);
  CFRelease(v17);
  return v28;
}