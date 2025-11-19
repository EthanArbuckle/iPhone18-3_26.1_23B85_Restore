uint64_t sub_100000780()
{
  result = access("/AppleInternal", 0);
  dword_10000C000 = result == 0;
  if (!result)
  {
    v1 = getpwnam("mobile");
    if (v1)
    {
      pw_uid = v1->pw_uid;
      pw_gid = v1->pw_gid;
    }

    else
    {
      pw_uid = 501;
      pw_gid = 501;
    }

    mkdir("/var/mobile/Library/Logs/MobileBackup", 0x1C0u);
    chown("/var/mobile/Library/Logs/MobileBackup", pw_uid, pw_gid);
    qword_10000C008 = fopen("/var/mobile/Library/Logs/MobileBackup/FinishRestoreFromBackup.log", "a");

    return chown("/var/mobile/Library/Logs/MobileBackup/FinishRestoreFromBackup.log", pw_uid, pw_gid);
  }

  return result;
}

uint64_t sub_100000858()
{
  result = qword_10000C008;
  if (qword_10000C008)
  {
    return fflush(qword_10000C008);
  }

  return result;
}

uint64_t sub_10000086C(char *a1, ...)
{
  va_start(va, a1);
  result = qword_10000C008;
  if (qword_10000C008)
  {
    return vfprintf(qword_10000C008, a1, va);
  }

  return result;
}

void sub_1000008A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, ...)
{
  va_start(va, a5);
  if (qword_10000C008)
  {
    vfprintf(qword_10000C008, a5, va);
  }

  sub_10000086C("\n");
  if (qword_10000C008)
  {
    fflush(qword_10000C008);
  }

  vfprintf(__stderrp, a5, va);
  fputc(10, __stderrp);
  if (dword_10000C000)
  {
    vsnprintf(byte_10000C1A0, 0xC8uLL, a5, va);
    byte_10000C267 = 0;
    snprintf(byte_10000C010, 0x190uLL, "FinishRestoreFromBackup, %s:%d/%s failed with error %d (%s)");
  }

  else
  {
    snprintf(byte_10000C010, 0x190uLL, "FinishRestoreFromBackup, %s:%d/%s failed with error %d");
  }

  byte_10000C19F = 0;
  fprintf(__stderrp, "%s\n\n", byte_10000C010);
  fflush(__stderrp);
  mainPort = 0;
  if (IOMainPort(bootstrap_port, &mainPort))
  {
    sub_10000086C("Could not get main port\n");
  }

  else
  {
    v6 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
    if (v6)
    {
      v7 = v6;
      v8 = IORegistryEntrySetCFProperty(v6, @"oblit-inprogress", @"0");
      if (v8)
      {
        v9 = "Failed";
      }

      else
      {
        v9 = "Succeeded";
      }

      sub_10000086C("%s setting the property %s to value %s", v9, "oblit-inprogress", "0");
      if (!v8)
      {
        if (IORegistryEntrySetCFProperty(v7, @"IONVRAM-FORCESYNCNOW-PROPERTY", @"0"))
        {
          v10 = "Failed";
        }

        else
        {
          v10 = "Succeeded";
        }

        sub_10000086C("%s setting the property %s to value %s", v10, "IONVRAM-FORCESYNCNOW-PROPERTY", "0");
      }

      IOObjectRelease(v7);
    }

    else
    {
      sub_10000086C("Could not get options entry from the device tree\n");
    }
  }

  sleep(1u);
  if (reboot_np(2048, byte_10000C010))
  {
    v11 = __stderrp;
    v12 = __error();
    v13 = strerror(*v12);
    v14 = __error();
    fprintf(v11, "reboot_np failed: %s (%d)\n\n", v13, *v14);
    fflush(__stderrp);
  }

  _os_crash();
  __break(1u);
}

char *sub_100000B1C(const char *a1, const char *a2)
{
  if (!a1)
  {
    sub_1000008A8(0xFFFFFFFFLL, "copy_string_by_appending_path", 165, "copy_string_by_appending_path", "base cannot be NULL");
  }

  if (!a2)
  {
    sub_1000008A8(0xFFFFFFFFLL, "copy_string_by_appending_path", 166, "copy_string_by_appending_path", "extra cannot be NULL");
  }

  v4 = strlen(a1);
  v5 = strlen(a2);
  v6 = malloc_type_malloc(v4 + v5 + 2, 0xCA08B89BuLL);
  if (!v6)
  {
    v10 = __error();
    sub_1000008A8(*v10, "copy_string_by_appending_path", 172, "malloc", "malloc failed");
  }

  v7 = v6;
  v8 = strcpy(v6, a1);
  *&v7[strlen(v8)] = 47;

  return strcat(v7, a2);
}

void *sub_100000C0C()
{
  v0 = malloc_type_calloc(0x80uLL, 8uLL, 0x10040436913F5uLL);
  if (!v0)
  {
    v3 = __error();
    sub_1000008A8(*v3, "name_list_new", 187, "calloc", "calloc failed");
  }

  v1 = v0;
  result = malloc_type_calloc(1uLL, 0x20uLL, 0x108004019856BD9uLL);
  if (!result)
  {
    v4 = __error();
    sub_1000008A8(*v4, "name_list_new", 190, "calloc", "calloc failed");
  }

  result[3] = v1;
  *result = 128;
  return result;
}

char *sub_100000CC8(uint64_t *a1, char *__s1, uint64_t a3)
{
  if (!a1)
  {
    sub_1000008A8(0xFFFFFFFFLL, "name_list_add", 198, "name_list_add", "list cannot be NULL");
  }

  if (!__s1)
  {
    sub_1000008A8(0xFFFFFFFFLL, "name_list_add", 199, "name_list_add", "name cannot be NULL");
  }

  if (!a3)
  {
    sub_1000008A8(0xFFFFFFFFLL, "name_list_add", 200, "name_list_add", "nameSize cannot be zero");
  }

  v6 = *a1;
  v7 = a1[1];
  if (v7 + 1 >= *a1)
  {
    v8 = v6 + 128;
    v9 = malloc_type_realloc(a1[3], 8 * (v6 + 128), 0x35E08AD8uLL);
    if (!v9)
    {
      v12 = __error();
      sub_1000008A8(*v12, "name_list_add", 209, "realloc", "realloc failed");
    }

    a1[3] = v9;
    *a1 = v8;
  }

  result = strndup(__s1, a3 + 1);
  if (!result)
  {
    v11 = __error();
    sub_1000008A8(*v11, "name_list_add", 216, "strndup", "strndup failed");
  }

  *(a1[3] + 8 * v7) = result;
  a1[1] = v7 + 1;
  return result;
}

uint64_t sub_100000E04(void *a1)
{
  if (!a1)
  {
    sub_1000008A8(0xFFFFFFFFLL, "name_list_next_item", 223, "name_list_next_item", "list cannot be NULL");
  }

  v1 = a1[2];
  if (v1 >= a1[1])
  {
    return 0;
  }

  v2 = *(a1[3] + 8 * v1);
  if (!v2)
  {
    sub_1000008A8(0xFFFFFFFFLL, "name_list_next_item", 229, "name_list_next_item", "couldn't find entry");
  }

  a1[2] = v1 + 1;
  return v2;
}

void sub_100000E84(void *a1)
{
  if (!a1)
  {
    sub_1000008A8(0xFFFFFFFFLL, "name_list_free", 236, "name_list_free", "list cannot be NULL");
  }

  v1 = a1[1];
  v2 = a1[3];
  free(a1);
  if (v1)
  {
    v3 = v2;
    do
    {
      v4 = *v3++;
      free(v4);
      --v1;
    }

    while (v1);
  }

  free(v2);
}

uint64_t sub_100000F04(const char *a1, uint64_t *a2, uint64_t *a3)
{
  if (!a1)
  {
    sub_1000008A8(0xFFFFFFFFLL, "name_list_read_dir", 249, "name_list_read_dir", "path cannot be NULL");
  }

  if (!a2)
  {
    sub_1000008A8(0xFFFFFFFFLL, "name_list_read_dir", 250, "name_list_read_dir", "dir_names cannot be NULL");
  }

  if (!a3)
  {
    sub_1000008A8(0xFFFFFFFFLL, "name_list_read_dir", 251, "name_list_read_dir", "file_names cannot be NULL");
  }

  v6 = opendir(a1);
  if (!v6)
  {
    v13 = *__error();
    v14 = __error();
    v15 = strerror(*v14);
    v16 = __error();
    sub_1000008A8(v13, "name_list_read_dir", 254, "opendir", "opendir(%s) failed: %s (%d)", a1, v15, *v16);
  }

  v7 = v6;
  while (1)
  {
    v8 = readdir(v7);
    if (!v8)
    {
      break;
    }

    d_name = v8->d_name;
    if (v8->d_name[0] != 46 || v8->d_name[1] && (v8->d_name[1] != 46 || v8->d_name[2]))
    {
      d_namlen = v8->d_namlen;
      if ((v8->d_type & 4) != 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = a3;
      }

      sub_100000CC8(v11, d_name, d_namlen);
    }
  }

  return closedir(v7);
}

int *sub_100001058(const char *a1)
{
  memset(&v35, 0, sizeof(v35));
  if (lstat(a1, &v35))
  {
    result = __error();
    if (*result != 2)
    {
      v31 = *__error();
      v32 = __error();
      v33 = strerror(*v32);
      v34 = __error();
      sub_1000008A8(v31, "remove_item_at_path", 208, "lstat", "lstat(%s) failed: %s (%d)", a1, v33, *v34);
    }

    return result;
  }

  st_flags = v35.st_flags;
  sub_10000086C("remove item %s (0x%lx)\n", a1, v35.st_flags);
  if ((st_flags & 0x20002) != 0)
  {
    v4 = st_flags & 0xFFFDFFFD;
    sub_10000086C("removing the immutable flag for %s (0x%lx)\n", a1, st_flags & 0xFFFDFFFDFFFDFFFDLL);
    v5 = (st_flags & 0x40004) == 0;
    LODWORD(st_flags) = st_flags & 0xFFFDFFFD;
    if (v5)
    {
LABEL_10:
      if (lchflags(a1, v4 & 0x3FF9FFF9))
      {
        v6 = __error();
        sub_10000086C("lchflags failed at %s (0x%lx): %d", a1, v4, *v6);
      }

      goto LABEL_12;
    }

LABEL_9:
    v4 = st_flags & 0xFFF9FFF9;
    sub_10000086C("removing the append flag for %s (0x%lx)\n", a1, st_flags & 0xFFF9FFF9);
    goto LABEL_10;
  }

  v4 = st_flags;
  if ((st_flags & 0x40004) != 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v7 = v35.st_mode & 0xF000;
  if ((v4 & 0x40000000) != 0)
  {
    if (v7 == 0x4000)
    {
      result = rmdir(a1);
      if (result)
      {
        v19 = *__error();
        v20 = __error();
        v21 = strerror(*v20);
        v22 = __error();
        sub_1000008A8(v19, "remove_item_at_path", 164, "rmdir", "rmdir(%s) failed (SF_DATALESS): %s (%d)", a1, v21, *v22);
      }
    }

    else
    {
      result = unlink(a1);
      if (result)
      {
        v27 = *__error();
        v28 = __error();
        v29 = strerror(*v28);
        v30 = __error();
        sub_1000008A8(v27, "remove_item_at_path", 166, "unlink", "unlink(%s) failed (SF_DATALESS): %s (%d)", a1, v29, *v30);
      }
    }
  }

  else if (v7 == 0x4000)
  {
    v8 = sub_100000C0C();
    v9 = sub_100000C0C();
    sub_100000F04(a1, v8, v9);
    v10 = sub_100000E04(v8);
    if (v10)
    {
      v11 = v10;
      do
      {
        v12 = sub_100000B1C(a1, v11);
        (sub_100001058)();
        free(v12);
        v11 = sub_100000E04(v8);
      }

      while (v11);
    }

    v13 = sub_100000E04(v9);
    if (v13)
    {
      v14 = v13;
      do
      {
        v15 = sub_100000B1C(a1, v14);
        if (unlink(v15))
        {
          sub_100001058(v15);
        }

        free(v15);
        v14 = sub_100000E04(v9);
      }

      while (v14);
    }

    sub_100000E84(v8);
    sub_100000E84(v9);
    result = rmdir(a1);
    if (result)
    {
      v16 = __error();
      v17 = *v16;
      sub_10000086C("rmdir failed at %s: %d\n", a1, *v16);
      fprintf(__stderrp, "rmdir failed at %s: %d\n", a1, v17);
      if (v17 != 1 || (result = strcmp(a1, "/private/var/mobile/Library/Application Support/CloudDocs"), result))
      {
        v18 = strerror(v17);
        sub_1000008A8(v17, "remove_item_at_path", 201, "rmdir", "rmdir(%s) failed: %s (%d)", a1, v18, v17);
      }
    }
  }

  else
  {
    result = unlink(a1);
    if (result)
    {
      v23 = *__error();
      v24 = __error();
      v25 = strerror(*v24);
      v26 = __error();
      sub_1000008A8(v23, "remove_item_at_path", 205, "unlink", "unlink(%s) failed: %s (%d)", a1, v25, *v26);
    }
  }

  return result;
}

BOOL sub_1000013FC(const char *a1, const char *a2)
{
  *__s1 = 0;
  v10 = 0;
  if (sub_1000014E8(a1, __s1))
  {
    return strncmp(__s1, a2, 0x10uLL) == 0;
  }

  if (*__error() != 93)
  {
    v5 = *__error();
    v6 = __error();
    v7 = strerror(*v6);
    v8 = __error();
    sub_1000008A8(v5, "item_has_annotation", 241, "getxattr", "getxattr(%s) failed: %s (%d)", a1, v7, *v8);
  }

  return 0;
}

uint64_t sub_1000014E8(const char *a1, void *value)
{
  v3 = 1;
  if (getxattr(a1, "MBRestoreAnnotation", value, 0x10uLL, 0, 1) < 0)
  {
    if (*__error() != 93)
    {
      v5 = *__error();
      v6 = __error();
      v7 = strerror(*v6);
      v8 = __error();
      sub_1000008A8(v5, "item_annotation", 231, "getxattr", "getxattr(%s) failed: %s (%d)", a1, v7, *v8);
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1000015A0(const char *a1)
{
  result = removexattr(a1, "MBRestoreAnnotation", 1);
  if (result)
  {
    v3 = *__error();
    v4 = __error();
    v5 = strerror(*v4);
    v6 = __error();
    sub_1000008A8(v3, "remove_annotation_from_item", 247, "removexattr", "removexattr(%s) failed: %s (%d)", a1, v5, *v6);
  }

  return result;
}

void sub_100001630(const char *a1, const char *a2, uint64_t a3)
{
  memset(&v50, 0, sizeof(v50));
  if (lstat(a1, &v50))
  {
    if (*__error() != 2)
    {
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      v9 = __error();
      sub_1000008A8(v6, "merge_restore_path_to_root", 266, "lstat", "lstat(%s) failed: %s (%d)", a1, v8, *v9);
    }
  }

  else if ((v50.st_flags & 0x80) != 0)
  {
    if (chflags(a2, v50.st_flags) < 0)
    {
      sub_10000086C("Couldn't chflags datavault bits onto directory %s\n");
    }

    else
    {
      sub_10000086C("Setting BSD flag bits 0x%x on root dir %s\n");
    }
  }

  sub_10000086C("merge %s into %s\n", a1, a2);
  if (sub_1000013FC(a1, "RestoreRoot"))
  {
    sub_10000086C("cleaning %s\n", a1);
    sub_1000015A0(a1);
    a3 = 1;
  }

  else if (!a3)
  {
    goto LABEL_17;
  }

  v10 = sub_100000C0C();
  sub_100000F04(a2, v10, v10);
  v11 = sub_100000E04(v10);
  if (v11)
  {
    v12 = v11;
    do
    {
      v13 = sub_100000B1C(a1, v12);
      v14 = sub_100000B1C(a2, v12);
      memset(&value, 0, sizeof(value));
      if (lstat(v13, &value))
      {
        sub_10000086C("not restored %s\n", v14);
        sub_100001058(v14);
      }

      free(v13);
      free(v14);
      v12 = sub_100000E04(v10);
    }

    while (v12);
  }

  sub_100000E84(v10);
LABEL_17:
  v15 = sub_100000C0C();
  v16 = sub_100000C0C();
  sub_100000F04(a1, v15, v16);
  v17 = sub_100000E04(v15);
  if (v17)
  {
    v18 = v17;
    do
    {
      v19 = sub_100000B1C(a1, v18);
      v20 = sub_100000B1C(a2, v18);
      memset(&value, 0, sizeof(value));
      if (lstat(v20, &value) || (value.st_mode & 0xF000) != 0x4000 || (value.st_flags & 0x40000000) != 0)
      {
        v21 = strlen(v18);
        sub_100000CC8(v16, v18, v21);
      }

      else
      {
        sub_100001630(v19, v20, a3);
        if (rmdir(v19))
        {
          v46 = *__error();
          v47 = __error();
          v48 = strerror(*v47);
          v49 = __error();
          sub_1000008A8(v46, "merge_restore_path_to_root", 312, "rmdir", "rmdir(%s) failed: %s (%d)", v19, v48, *v49);
        }
      }

      free(v19);
      free(v20);
      v18 = sub_100000E04(v15);
    }

    while (v18);
  }

  v22 = sub_100000E04(v16);
  if (v22)
  {
    v23 = v22;
    while (1)
    {
      v24 = sub_100000B1C(a1, v23);
      v25 = sub_100000B1C(a2, v23);
      *&value.st_dev = 0;
      value.st_ino = 0;
      sub_1000014E8(v24, &value);
      if (*&value.st_dev == 0x6F74736552746F4ELL && LODWORD(value.st_ino) == 6579570)
      {
        sub_10000086C("not restored %s\n", v25);
        sub_100001058(v25);
        if (unlink(v24))
        {
          v34 = *__error();
          v35 = __error();
          v36 = strerror(*v35);
          v37 = __error();
          sub_1000008A8(v34, "merge_restore_path_to_root", 334, "unlink", "unlink(%s) failed: %s (%d)", v24, v36, *v37);
        }

        goto LABEL_50;
      }

      if (*&value.st_dev == 0x656B636142746F4ELL && LODWORD(value.st_ino) == 7361892)
      {
        sub_10000086C("not backed up %s\n", v25);
        if (unlink(v24))
        {
          v42 = *__error();
          v43 = __error();
          v44 = strerror(*v43);
          v45 = __error();
          sub_1000008A8(v42, "merge_restore_path_to_root", 339, "unlink", "unlink(%s) failed: %s (%d)", v24, v44, *v45);
        }

        goto LABEL_50;
      }

      if (*&value.st_dev == 0x64656D7265746E49 && *(&value.st_mode + 1) == 0x6574616964656DLL)
      {
        break;
      }

      sub_10000086C("restored %s\n", v25);
      sub_100001058(v25);
      sub_100001C74(v24);
      sub_10000086C("move %s to %s\n", v24, v25);
      rename(v24, v25, v29);
      if (v30)
      {
        if (*__error() != 30 || strncmp(v25, "/private/private", 0x10uLL))
        {
          v38 = *__error();
          v39 = __error();
          v40 = strerror(*v39);
          v41 = __error();
          sub_1000008A8(v38, "move_item_to_path", 133, "rename", "rename(%s, %s) failed: %s (%d)", v24, v25, v40, *v41);
        }

        v31 = __error();
        v32 = strerror(*v31);
        v33 = __error();
        sub_10000086C("rename(%s, %s) failed: %s (%d), skipping\n", v24, v25, v32, *v33);
        goto LABEL_49;
      }

LABEL_50:
      free(v24);
      free(v25);
      v23 = sub_100000E04(v16);
      if (!v23)
      {
        goto LABEL_51;
      }
    }

    sub_10000086C("intermediate %s\n", v25);
LABEL_49:
    sub_100001058(v24);
    goto LABEL_50;
  }

LABEL_51:
  sub_100000E84(v15);
  sub_100000E84(v16);
}

void sub_100001C74(const char *a1)
{
  value = 0uLL;
  sub_1000014E8(a1, &value);
  v2 = value == 0x6F74736552746F4ELL && DWORD2(value) == 6579570;
  if (v2 || (value == 0x656B636142746F4ELL ? (v3 = DWORD2(value) == 7361892) : (v3 = 0), v3))
  {
    sub_10000086C("removing empty annotation file %s\n", a1);
    if (unlink(a1))
    {
      v10 = *__error();
      v11 = __error();
      v12 = strerror(*v11);
      v13 = __error();
      sub_1000008A8(v10, "recursively_remove_annotations_from_item", 374, "unlink", "unlink(%s) failed: %s (%d)", a1, v12, *v13);
    }
  }

  else if (value == 0x64656D7265746E49 && *(&value + 5) == 0x6574616964656DLL)
  {
    sub_10000086C("removing intermediate annotation directory %s\n", a1);
    sub_100001058(a1);
  }

  else
  {
    if (value == 0x5265726F74736552 && DWORD2(value) == 7630703)
    {
      sub_10000086C("removing restore root annotation %s\n", a1);
      sub_1000015A0(a1);
    }

    memset(&v14, 0, sizeof(v14));
    if (!lstat(a1, &v14) && (v14.st_mode & 0xF000) == 0x4000)
    {
      v6 = sub_100000C0C();
      sub_100000F04(a1, v6, v6);
      v7 = sub_100000E04(v6);
      if (v7)
      {
        v8 = v7;
        do
        {
          v9 = sub_100000B1C(a1, v8);
          sub_100001C74();
          free(v9);
          v8 = sub_100000E04(v6);
        }

        while (v8);
      }

      sub_100000E84(v6);
    }
  }
}

uint64_t start()
{
  v0 = 0;
  for (i = 1; ; i = 0)
  {
    v2 = (&off_1000082D0)[2 * v0];
    v3 = i;
    memset(&v34, 0, sizeof(v34));
    if (!lstat(v2, &v34))
    {
      break;
    }

    v0 = 1;
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  v4 = time(0);
  sub_100000780();
  sub_10000086C("Started at %lu\n", v4);
  if (qword_10000C268)
  {
    sub_100002EB4();
  }

  if (dword_10000C270)
  {
    sub_100002EE0();
  }

  v5 = IOServiceMatching("IOWatchdog");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  if (MatchingService)
  {
    v7 = MatchingService;
    v8 = IOServiceOpen(MatchingService, mach_task_self_, 1u, &dword_10000C270);
    IOObjectRelease(v7);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = dword_10000C270 == 0;
    }

    if (v9)
    {
      sub_10000086C("IOServiceOpen(kIOWatchdogUserClientOpen) failed: %d\n");
    }

    else
    {
      global_queue = dispatch_get_global_queue(25, 0);
      v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, global_queue);
      qword_10000C268 = v11;
      v12 = dispatch_time(0, 20000000000);
      dispatch_source_set_timer(v11, v12, 0x4A817C800uLL, 0);
      dispatch_source_set_event_handler(qword_10000C268, &stru_100008310);
      dispatch_activate(qword_10000C268);
      time(0);
      sub_10000086C("Started the watchdog checkin timer at %lu (%llus/%llus)\n");
    }
  }

  else
  {
    sub_10000086C("IOServiceGetMatchingService(kIOWatchdogMatchingDict) failed\n");
  }

  v33 = 1;
  if (sysctlbyname("kern.vfsnspace", 0, 0, &v33, 4uLL))
  {
    v13 = __stderrp;
    v14 = __error();
    v15 = strerror(*v14);
    v16 = __error();
    fprintf(v13, "sysctlbyname(kern.vfsnspace) failed: %s (%d)\n", v15, *v16);
  }

  v17 = 0;
  v18 = 1;
  do
  {
    v19 = (&off_1000082D0)[2 * v17];
    v20 = v18;
    memset(&v34, 0, sizeof(v34));
    if (!lstat(v19, &v34))
    {
      v21 = time(0);
      sub_10000086C("Starting to merge from %s to %s at %lu\n", v19, "/private", v21);
      sub_100001630(v19, "/private", 0);
      if (rmdir(v19))
      {
        v29 = *__error();
        v30 = __error();
        v31 = strerror(*v30);
        v32 = __error();
        sub_1000008A8(v29, "main", 451, "rmdir", "rmdir(%s) failed: %s (%d)", v19, v31, *v32);
      }

      v22 = time(0);
      sub_10000086C("Finished merging from %s to %s at %lu (%lds)\n", v19, "/private", v22, v22 - v21);
    }

    v18 = 0;
    v17 = 1;
  }

  while ((v20 & 1) != 0);
  sub_100000858();
  v23 = sub_1000032E4();
  if (v23)
  {
    sub_10000086C("aks_setupallowlist_fs failed: %d\n", v23);
  }

  if (remove("/private/var/root/.aks_migrate", v24))
  {
    v25 = __error();
    strerror(*v25);
    v26 = *__error();
    sub_10000086C("Failed to remove %s: %s (%d)\n");
  }

  else
  {
    sub_10000086C("Removed AKS migration file at %s\n");
  }

  v27 = time(0);
  sub_10000086C("Finished at %lu (%lds)\n", v27, v27 - v4);
  return 0;
}

void sub_1000022AC(id a1)
{
  if (qword_10000C278 >= 0x5A)
  {
    sub_100002330(20 * qword_10000C278);
  }

  v1 = IOConnectCallScalarMethod(dword_10000C270, 1u, 0, 0, 0, 0);
  if (v1)
  {
    sub_10000086C("IOConnectCallScalarMethod(kIOWatchdogDaemonCheckin) failed: %d\n", v1);
  }

  else
  {
    ++qword_10000C278;
  }
}

void sub_100002330(uint64_t a1)
{
  snprintf(__str, 0x64uLL, "FinishRestoreFromBackup timed out after %llus", a1);
  fprintf(__stderrp, "%s\n", __str);
  if (reboot_np(3072, __str))
  {
    v1 = __stderrp;
    v2 = __error();
    v3 = strerror(*v2);
    v4 = __error();
    fprintf(v1, "reboot_np failed: %s (%d)\n", v3, *v4);
  }

  _os_crash();
  __break(1u);
}

char *sub_1000023CC(char *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5[0] = result;
    v5[1] = 0;
    result = fts_open(v5, 84, 0);
    if (result)
    {
      return sub_100002F0C(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_10000244C()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", kCFAllocatorDefault, 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  __len = 1023;
  bzero(__big, 0x400uLL);
  if ((byte_10000C280 & 1) == 0)
  {
    if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
    {
      byte_10000C281 = 1;
    }

    byte_10000C280 = 1;
  }

  v4 = byte_10000C281;
  fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s ioreg: %d, boot_arg: %d%s\n", "aks", &unk_1000048CD, -1, &unk_1000048CD, &unk_1000048CD, &unk_1000048CD, &unk_1000048CD, "aks_fs_supports_enhanced_apfs", ":", 438, &unk_1000048CD, v3, byte_10000C281, &unk_1000048CD);
  return v3 | v4;
}

uint64_t sub_1000025D0(const char *a1)
{
  bzero(&v3, 0x878uLL);
  if (!statfs(a1, &v3) && (v3.f_flags & 0x80) != 0)
  {
    return 1;
  }

  fprintf(__stderrp, "mount point (%s) does not support Data Protection", a1);
  return 0;
}

uint64_t sub_100002670()
{
  v0 = __chkstk_darwin();
  v27 = v2;
  v28 = v1;
  v4 = v3;
  v6 = v5;
  v26 = v7;
  v8 = v0;
  bzero(__str, 0x400uLL);
  v9 = 0;
  if (v4)
  {
    v10 = (v6 + 20);
    do
    {
      if ((*(v10 - 2) & 8) == 0)
      {
        memset(&v29, 0, sizeof(v29));
        snprintf(__str, 0x400uLL, "%s%s", v8, *(v10 - 10));
        if (!stat(__str, &v29))
        {
          goto LABEL_19;
        }

        if (mkpath_np(__str, *v10))
        {
          v11 = __stderrp;
          v12 = __error();
          strerror(*v12);
          fprintf(v11, "failed to create: %s (%s)\n");
        }

        else
        {
          v13 = *v10;
          if (v13 >= 0x200 && chmod(__str, v13))
          {
            v14 = __stderrp;
            v15 = __error();
            v16 = strerror(*v15);
            fprintf(v14, "failed to change permissions on: %s (%s)\n", __str, v16);
          }

          v17 = *(v10 + 2);
          pw_uid = v28;
          if (v17)
          {
            bzero(v35, 0x1000uLL);
            memset(&v31, 0, sizeof(v31));
            v30 = 0;
            if (getpwnam_r(v17, &v31, v35, 0x1000uLL, &v30))
            {
              pw_uid = v28;
              if ((sub_100003538(v35, &v31, &v30, (v10 + 2)) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            else
            {
              pw_uid = v30->pw_uid;
            }
          }

          v19 = *(v10 + 6);
          gr_gid = v27;
          if (!v19)
          {
            goto LABEL_16;
          }

          bzero(v36, 0x1000uLL);
          memset(&v33, 0, sizeof(v33));
          v32 = 0;
          if (!getgrnam_r(v19, &v33, v36, 0x1000uLL, &v32))
          {
            gr_gid = v32->gr_gid;
LABEL_16:
            if (chown(__str, pw_uid, gr_gid))
            {
              v21 = __stderrp;
              v22 = __error();
              v23 = strerror(*v22);
              fprintf(v21, "failed to change ownership on: %s (%s)\n", __str, v23);
            }

            stat(__str, &v29);
LABEL_19:
            if ((v29.st_mode & 0xF000) == 0x4000)
            {
              if (*(v10 - 2))
              {
                if (sub_100002BE4(__str, -1, *(v10 + 5), v26))
                {
                  v9 = 0xFFFFFFFFLL;
                }

                else
                {
                  v9 = v9;
                }
              }
            }

            else
            {
              fprintf(__stderrp, "failed %s is not a directory\n");
            }

            goto LABEL_25;
          }

          v24 = sub_1000035A8(v36, &v33, &v32, (v10 + 6));
          gr_gid = v27;
          if (v24)
          {
            goto LABEL_16;
          }
        }
      }

LABEL_25:
      v10 += 24;
      --v4;
    }

    while (v4);
  }

  return v9;
}

uint64_t sub_100002980(const char *a1, const char *a2)
{
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/%s", a1, a2);
  v4 = open(__str, 513, 420);
  if (v4 != -1)
  {
    return close(v4);
  }

  v6 = __stderrp;
  v7 = __error();
  v8 = strerror(*v7);
  return fprintf(v6, "Could not create marker file: %s (%s)\n", __str, v8);
}

void sub_100002A58(const char *a1, int a2, uint64_t a3, uint64_t a4)
{
  bzero(__str, 0x401uLL);
  if (a4)
  {
    for (i = (a3 + 16); ; i += 12)
    {
      snprintf(__str, 0x401uLL, "%s%s", a1, *(i - 2));
      if ((*i & 2) != 0)
      {
        break;
      }

      if (qword_10000C288)
      {
        v9 = qword_10000C288;
      }

      else
      {
        v9 = __stdoutp;
      }

      if ((*i & 4) == 0)
      {
        goto LABEL_12;
      }

      fprintf(v9, "Traversing hierarchy: %s\n", __str);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 0x40000000;
      v10[2] = sub_100002E34;
      v10[3] = &unk_100009770;
      v11 = a2 | 3;
      sub_1000023CC(__str, v10, 0);
LABEL_13:
      if (!--a4)
      {
        return;
      }
    }

    if (qword_10000C288)
    {
      v9 = qword_10000C288;
    }

    else
    {
      v9 = __stdoutp;
    }

LABEL_12:
    fprintf(v9, "SKIPPED: %s\n", __str);
    goto LABEL_13;
  }
}

uint64_t sub_100002BE4(const char *a1, int a2, int a3, char a4)
{
  v16 = 0;
  v15 = xmmword_100003B70;
  v14 = 0;
  if (getattrlist(a1, &v15, &v14, 8uLL, 0))
  {
    return *__error();
  }

  if (HIDWORD(v14) == a3 || a2 != -1 && HIDWORD(v14) != a2)
  {
    return 0;
  }

  if (a2 == -1)
  {
    if (a4)
    {
      fprintf(__stdoutp, "%s set %i\n");
    }
  }

  else if (a4)
  {
    fprintf(__stdoutp, "%s update %i -> %i\n");
  }

  v13 = a3;
  if (!setattrlist(a1, &v15, &v13, 4uLL, 0))
  {
    return 0;
  }

  v8 = __error();
  v9 = *v8;
  v10 = __stderrp;
  v11 = strerror(*v8);
  fprintf(v10, "failed (%s) to update class for %s\n", v11, a1);
  return v9;
}

BOOL sub_100002D24(int a1, char a2)
{
  v9 = a2;
  v3 = read(a1, &v9, 1uLL);
  if (v3 == 0xFFFFFFFFLL)
  {
    v4 = __stderrp;
    v5 = __error();
    v6 = strerror(*v5);
    fprintf(v4, "failed to read version file (%s)\n", v6);
  }

  return v3 == 1 && v9 == a2;
}

uint64_t sub_100002DB8(int a1, char a2)
{
  __buf = a2;
  if (pwrite(a1, &__buf, 1uLL, 0) != -1)
  {
    return 0;
  }

  v2 = __error();
  v3 = *v2;
  v4 = __stderrp;
  v5 = strerror(*v2);
  fprintf(v4, "failed to read version file (%s)\n", v5);
  return v3;
}

uint64_t sub_100002E70@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100002E80(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return open_dprotected_np(va, 514, 4, 0);
}

uint64_t sub_100002F0C(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

uint64_t sub_100002FC8(const char *a1, uint64_t a2, char a3)
{
  result = sub_1000025D0(a1);
  if (result)
  {
    v14 = sub_100002E64(result, v7, v8, v9, v10, v11, v12, v13, v27, v28, v29, v31[0]);
    bzero(v14, v15);
    v23 = sub_100002E64(v16, v17, "%s/%s", v18, v19, v20, v21, v22, a1, a2, v30, v31[0]);
    snprintf(v23, v24, v25);
    if (a3)
    {
      fprintf(__stdoutp, "checking path: %s\n", v31);
    }

    v26 = access(v31, 4) | a3 & 2;
    result = v26 != 0;
    if ((a3 & 1) != 0 && !v26)
    {
      fprintf(__stdoutp, "%s has already been bootstrapped\n", a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000030B8(const char *a1, char a2)
{
  if (!a1)
  {
    return 22;
  }

  bzero(v28, 0x400uLL);
  v4 = realpath_DARWIN_EXTSN(a1, v28);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = sub_100002EA8(v4, v5, v6, v7, v8, v9, v10, v11, v25, v26);
  bzero(v12, v13);
  v21 = sub_100002EA8(v14, v15, "%s/mobile", v16, v17, v18, v19, v20, v28, v27);
  snprintf(v21, v22, v23);
  result = sub_100002FC8(v28, "root/.bootstrapped", a2);
  if (!result)
  {
    return result;
  }

  if (sub_100002670() || (sub_10000244C() & 1) == 0 && sub_100002670())
  {
    return 0xFFFFFFFFLL;
  }

  sub_100002980(v28, "root/.bootstrapped");
  return 0;
}

uint64_t sub_1000031F4(const char *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v12 = sub_100002E64(a1, a2, a3, a4, a5, a6, a7, a8, v32, v33, v34, v36);
  bzero(v12, v13);
  v21 = sub_100002E64(v14, v15, "%s/%s", v16, v17, v18, v19, v20, a1, a3, v35, v37);
  v24 = snprintf(v21, v22, v23);
  v27 = sub_100002E80(v24, v25, v26);
  if (v27 != -1)
  {
    v28 = v27;
    if ((v10 & 2) != 0)
    {
LABEL_5:
      *a4 = v28;
      return 1;
    }

    if (!sub_100002D24(v27, 52))
    {
      v29 = sub_100002E70(qword_10000C288);
      fprintf(v29, "%s has different allowlist needed=%c\n", a1, v30);
      goto LABEL_5;
    }

    close(v28);
  }

  return 0;
}

uint64_t sub_1000032E4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  HIDWORD(v41) = -1;
  bzero(&__to, 0x400uLL);
  bzero(&__from, 0x400uLL);
  bzero(__str, 0x400uLL);
  v12 = sub_100002E64(v4, v5, v6, v7, v8, v9, v10, v11, v38, v39, v41, v42[0]);
  bzero(v12, v13);
  v21 = sub_100002E64(v14, v15, "%s/mobile", v16, v17, v18, v19, v20, v3, v40, v41, v42[0]);
  snprintf(v21, v22, v23);
  snprintf(__str, 0x400uLL, "%s/tmp", v3);
  if (sub_100002BE4(__str, -1, 4, 0))
  {
    fprintf(__stderrp, "Unable to set %s to class D!", __str);
  }

  v24 = fopen("/var/logs/AKSSetup.log", "w+");
  v25 = v24;
  v26 = __stdoutp;
  if (v24)
  {
    v26 = v24;
  }

  qword_10000C288 = v26;
  sub_1000030B8(v3, v2 | 3);
  snprintf(&__from, 0x400uLL, "%s/root/.aks_whitelist", v3);
  snprintf(&__to, 0x400uLL, "%s/root/.aks_allowlist", v3);
  rename(&__from, &__to, v27);
  if (sub_1000031F4(v3, v2, "root/.aks_allowlist", &v41 + 1, v28, v29, v30, v31))
  {
    sub_100002A58(v3, v2, &off_100008330, 36);
    if ((sub_10000244C() & 1) == 0)
    {
      sub_100002A58(v42, v2, &off_1000089F0, 72);
    }

    v32 = HIDWORD(v41);
    v33 = sub_100002E70(qword_10000C288);
    fprintf(v33, "%s has been allow listed with version:%c\n", v3, v34);
    v35 = sub_100002DB8(v32, 52);
    if (v35)
    {
      v36 = v35;
      if (!v25)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v36 = 0;
  if (v25)
  {
LABEL_10:
    fclose(v25);
  }

LABEL_11:
  qword_10000C288 = __stdoutp;
  return v36;
}

uint64_t sub_100003538(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  if (!*__error())
  {
    return 1;
  }

  v5 = __stderrp;
  v6 = *a4;
  v7 = __error();
  v8 = strerror(*v7);
  fprintf(v5, "failed to get uid for user '%s'(%s)\n", v6, v8);
  return 0;
}

uint64_t sub_1000035A8(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  if (!*__error())
  {
    return 1;
  }

  v5 = __stderrp;
  v6 = *a4;
  v7 = __error();
  v8 = strerror(*v7);
  fprintf(v5, "failed to get gid for group '%s' (%s)\n", v6, v8);
  return 0;
}