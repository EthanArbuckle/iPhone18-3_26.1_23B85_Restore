uint64_t sub_100000810(char *__s2, char *a2, char *a3, size_t a4, char **a5)
{
  if (!strncmp("/dev/", __s2, 5uLL))
  {
    v10 = 5;
  }

  else
  {
    v10 = 0;
  }

  v11 = &__s2[v10];
  if (!strncmp(&__s2[v10], "disk", 4uLL))
  {
    result = snprintf(a2, a4, "%s%s", "/dev/", v11);
    if (a3)
    {
      result = snprintf(a3, a4, "%sr%s");
    }

    goto LABEL_14;
  }

  if (!strncmp(v11, "rdisk", 5uLL))
  {
    result = snprintf(a2, a4, "%s%s", "/dev/", v11 + 1);
    if (a3)
    {
      result = snprintf(a3, a4, "%s%s");
    }

LABEL_14:
    if (!a5)
    {
      return result;
    }

    a2 += 5;
    goto LABEL_16;
  }

  result = strlcpy(a2, __s2, a4);
  if (a3)
  {
    result = strlcpy(a3, __s2, a4);
  }

  if (a5)
  {
LABEL_16:
    *a5 = a2;
  }

  return result;
}

uint64_t start()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  memset(v75, 170, sizeof(v75));
  *v74 = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v73.st_blksize = v4;
  *v73.st_qspare = v4;
  v73.st_birthtimespec = v4;
  *&v73.st_size = v4;
  v73.st_mtimespec = v4;
  v73.st_ctimespec = v4;
  *&v73.st_uid = v4;
  v73.st_atimespec = v4;
  *&v73.st_dev = v4;
  memset(&__b, 170, sizeof(__b));
  memset(v79, 170, sizeof(v79));
  memset(v78, 170, sizeof(v78));
  __strlcpy_chk();
  __strlcpy_chk();
  sub_100001CD8(0, v75);
  sub_100001F7C(0, v74);
  v81 = 0u;
  memset(v82, 0, sizeof(v82));
  v83 = 0u;
  v84 = 0u;
  v85 = 0;
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  *__s1 = 0u;
  v89 = -1;
  v71 = 0;
  v72 = 0;
  err_set_exit(sub_1000016B8);
  v5 = 0;
  v66 = 0;
  v6 = 0;
  v7 = 0;
  v65 = 0;
  v8 = 0;
  v9 = 0;
  v67 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v10 = getopt(v3, v2, ":cCg:M:o:P:rRnSs:u:E:T:");
          if (v10 <= 98)
          {
            break;
          }

          if (v10 <= 110)
          {
            switch(v10)
            {
              case 'c':
                v6 = 1;
                break;
              case 'g':
                v15 = optarg;
                __endptr[0] = 0xAAAAAAAAAAAAAAAALL;
                gr_gid = strtol(optarg, __endptr, 0);
                if (*__endptr[0])
                {
                  v17 = getgrnam(v15);
                  if (!v17)
                  {
                    HIDWORD(v89) = -1;
                    sub_10000219C();
                  }

                  gr_gid = v17->gr_gid;
                }

                HIDWORD(v89) = gr_gid;
                if (gr_gid == -1)
                {
                  sub_10000219C();
                }

                break;
              case 'n':
                v74[1] |= 4u;
                break;
            }
          }

          else if (v10 > 114)
          {
            if (v10 == 115)
            {
              v67 = optarg;
            }

            else if (v10 == 117)
            {
              v12 = optarg;
              __endptr[0] = 0xAAAAAAAAAAAAAAAALL;
              pw_uid = strtol(optarg, __endptr, 0);
              if (*__endptr[0])
              {
                v14 = getpwnam(v12);
                if (!v14)
                {
                  LODWORD(v89) = -1;
                  sub_10000216C();
                }

                pw_uid = v14->pw_uid;
              }

              LODWORD(v89) = pw_uid;
              if (pw_uid == -1)
              {
                sub_10000216C();
              }
            }
          }

          else if (v10 == 111)
          {
            if (sub_100002018(optarg, sub_100001CD8, v75, sub_100001F7C, v74))
            {
              errx(64, "unrecognized option '%s'");
            }
          }

          else if (v10 == 114)
          {
            v7 = 1;
          }
        }

        if (v10 <= 79)
        {
          break;
        }

        if (v10 > 82)
        {
          if (v10 == 83)
          {
            v74[1] |= 8u;
          }

          else if (v10 == 84)
          {
            v11 = optarg;
            v9 = 1735681910;
            if (strcasecmp(optarg, "generic"))
            {
              v9 = 1937334626;
              if (strcasecmp(v11, "brain"))
              {
                errx(64, "invalid cryptex type '%s'");
              }
            }
          }
        }

        else if (v10 == 80)
        {
          v8 = sub_1000016D0(optarg, &v72);
        }

        else if (v10 == 82)
        {
          v74[1] |= 2u;
        }
      }

      if (v10 <= 66)
      {
        break;
      }

      switch(v10)
      {
        case 'C':
          v66 = 1;
          break;
        case 'E':
          v18 = optarg;
          v5 = 4;
          if (strcasecmp(optarg, "generic"))
          {
            v5 = 5;
            if (strcasecmp(v18, "supplemental"))
            {
              v5 = 6;
              if (strcasecmp(v18, "pdi_nonce"))
              {
                v5 = 8;
                if (strcasecmp(v18, "mobile_asset"))
                {
                  v5 = 9;
                  if (strcasecmp(v18, "smac"))
                  {
                    errx(64, "invalid auth environment '%s'");
                  }
                }
              }
            }
          }

          break;
        case 'M':
          v65 = sub_1000016D0(optarg, &v71);
          break;
      }
    }

    if (v10 == -1)
    {
      break;
    }

    if (v10 == 58)
    {
      sub_10000210C();
    }

    if (v10 == 63)
    {
      sub_10000213C();
    }
  }

  if (v3 - optind != 2)
  {
    sub_1000021CC(v3 - optind);
  }

  v19 = v74[0];
  if (v66 && v6 | v74[0] & 0x10000)
  {
    sub_10000235C();
  }

  if ((v65 != 0) != (v8 != 0))
  {
    sub_100002340();
  }

  if (v8 && !v72 || v65 && !v71)
  {
    sub_100002324();
  }

  if (v5 && !v8)
  {
    sub_100002308();
  }

  if (v9 && !v8)
  {
    sub_1000022EC();
  }

  v20 = &v2[optind];
  if ((v74[0] & 0x10000) == 0)
  {
    if (v8)
    {
      *(&v87[16] + 12) = v8;
      *(&v87[17] + 4) = v72;
      *(&v87[17] + 12) = v65;
      *(&v87[18] + 4) = v71;
      HIDWORD(v87[18]) = v9;
      v88 = v5;
    }

    if (v66)
    {
      v21 = 4;
LABEL_78:
      LOWORD(v87[0]) = v21;
      sub_10000181C(*v20, v87 + 12, 0x80uLL);
      goto LABEL_79;
    }

    if (v6)
    {
      if (v7)
      {
        v21 = 7;
      }

      else
      {
        v21 = 5;
      }

      goto LABEL_78;
    }

    if (v67)
    {
      if (v8)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      LOWORD(v87[0]) = v41;
      if (fstatat(-2, *v20, &v73, 512))
      {
        sub_1000021F8(v20);
      }

      if ((v73.st_mode & 0xF000) == 0x6000)
      {
        if (!sub_100001BB8(*v20, v78, v87 + 2))
        {
          __s1[0] = v78;
        }
      }

      else
      {
        DWORD2(v87[0]) = v73.st_dev;
      }

      __strlcpy_chk();
    }

    else
    {
      if (v8)
      {
        v47 = 8;
      }

      else
      {
        v47 = 1;
      }

      LOWORD(v87[0]) = v47;
      if (!sub_100001BB8(*v20, v78, v87 + 2))
      {
        __s1[0] = v78;
      }
    }
  }

LABEL_79:
  v22 = v20[1];
  if ((v74[0] & 0x8000000) != 0)
  {
    v23 = v20[1];
    if (__strlcpy_chk() >= 0x400)
    {
      err(1, "realpath [2] %s", v79);
    }
  }

  else if (!realpath_DARWIN_EXTSN(v20[1], v79))
  {
    err(66, "%s");
  }

  if ((v19 & 0x10000) != 0)
  {
    if (v6)
    {
      sub_10000181C(*v20, v78, 0x400uLL);
      DWORD2(v83) = 2;
      v24 = 5;
      if (v78[0] ^ 0x7665642F | LOBYTE(v78[1]) ^ 0x2F)
      {
        v24 = 0;
      }

      v25 = IOBSDNameMatching(kIOMainPortDefault, 0, v78 + v24);
      MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v25);
      if (!MatchingService)
      {
        v31 = 2;
        goto LABEL_187;
      }

      v27 = MatchingService;
      *(v77 + 13) = 0xAAAAAAAAAAAAAAAALL;
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__endptr = v28;
      v77[0] = v28;
      if (IOObjectConformsTo(MatchingService, "AppleAPFSVolume"))
      {
        CFProperty = IORegistryEntryCreateCFProperty(v27, @"UUID", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          v30 = CFProperty;
          if (CFStringGetCString(CFProperty, __endptr, 37, 0x8000100u))
          {
            v31 = uuid_parse(__endptr, v82);
            CFRelease(v30);
            IOObjectRelease(v27);
            if (!v31)
            {
              if (fsctl(v79, 0x81384A06uLL, &v81, 0))
              {
                sub_100002288();
              }

              goto LABEL_160;
            }

LABEL_187:
            errc(66, v31, "switch crypto context");
          }
        }

        v31 = 2;
      }

      else
      {
        v31 = 22;
      }

      IOObjectRelease(v27);
      goto LABEL_187;
    }
  }

  else
  {
    if (*v79 == 47 || stat(v79, &v73))
    {
      memset(&v73, 0, sizeof(v73));
    }

    if (v89 == -1)
    {
      if ((v74[0] & 0x200000) != 0)
      {
        st_uid = 99;
      }

      else
      {
        st_uid = v73.st_uid;
      }

      LODWORD(v89) = st_uid;
    }

    if (HIDWORD(v89) == -1)
    {
      if ((v74[0] & 0x200000) != 0)
      {
        st_gid = 99;
      }

      else
      {
        st_gid = v73.st_gid;
      }

      HIDWORD(v89) = st_gid;
    }
  }

  *v70 = xmmword_100002F40;
  __s1[1] = *v74;
  v34 = __s1[0];
  if (__s1[0] && (strncmp(__s1[0], "/dev/", 5uLL) ? (v35 = 0) : (v35 = 5), v36 = IOBSDNameMatching(kIOMainPortDefault, 0, &v34[v35]), (v37 = IOServiceGetMatchingService(kIOMainPortDefault, v36)) != 0))
  {
    v38 = v37;
    while (1)
    {
      parent = -1431655766;
      ParentEntry = IORegistryEntryGetParentEntry(v38, "IOService", &parent);
      IOObjectRelease(v38);
      if (ParentEntry)
      {
        goto LABEL_117;
      }

      if (IOObjectConformsTo(parent, "IOHDIXHDDriveOutKernel"))
      {
        break;
      }

      if (IOObjectConformsTo(parent, "AppleDiskImageDevice"))
      {
        properties = 0;
        if (IORegistryEntryCreateCFProperties(parent, &properties, kCFAllocatorDefault, 0))
        {
LABEL_136:
          v45 = -1;
          goto LABEL_152;
        }

        if (CFDictionaryGetValue(properties, @"sparse-backend") != kCFBooleanTrue)
        {
          goto LABEL_143;
        }

        Value = CFDictionaryGetValue(properties, @"DiskImageURL");
        if (!Value)
        {
          sub_100002220(v20);
        }

        v49 = Value;
        bzero(__endptr, 0x400uLL);
        v50 = CFURLCreateWithString(kCFAllocatorDefault, v49, 0);
        if (!v50)
        {
LABEL_143:
          v45 = -1;
          goto LABEL_150;
        }

        v51 = v50;
        if (!CFURLGetFileSystemRepresentation(v50, 0, __endptr, 1024))
        {
          sub_100002248();
        }

        CFRelease(v51);
        v45 = open(__endptr, 0, 0);
        v70[2] = v45;
        if ((v45 & 0x80000000) == 0)
        {
LABEL_150:
          v46 = properties;
          goto LABEL_151;
        }

        v63 = *v20;
LABEL_194:
        err(66, "cannot open backing store '%s' for '%s'");
      }

      v38 = parent;
      if (!parent)
      {
        goto LABEL_117;
      }
    }

    __endptr[0] = 0;
    if (IORegistryEntryCreateCFProperties(parent, __endptr, kCFAllocatorDefault, 0))
    {
      goto LABEL_136;
    }

    v42 = CFDictionaryGetValue(__endptr[0], @"image-type");
    if (v42 && (v43 = v42, v44 = CFGetTypeID(v42), v44 == CFStringGetTypeID()) && (CFStringCompare(v43, @"sparse disk image", 0) == kCFCompareEqualTo || CFStringCompare(v43, @"sparse bundle disk image", 0) == kCFCompareEqualTo))
    {
      v53 = CFDictionaryGetValue(__endptr[0], @"image-path");
      if (!v53 || (v54 = v53, v55 = CFGetTypeID(v53), v55 != CFDataGetTypeID()) || (SystemEncoding = CFStringGetSystemEncoding(), (v57 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v54, SystemEncoding)) == 0))
      {
        sub_100002220(v20);
      }

      v58 = v57;
      v59 = CFStringGetSystemEncoding();
      CStringPtr = CFStringGetCStringPtr(v58, v59);
      if (!CStringPtr)
      {
        v61 = CFStringGetSystemEncoding();
        CStringPtr = byte_100008210;
        CFStringGetCString(v58, byte_100008210, 4096, v61);
      }

      v62 = open(CStringPtr, 0, 0);
      v70[2] = v62;
      if (v62 < 0)
      {
        v64 = *v20;
        goto LABEL_194;
      }

      v45 = v62;
      CFRelease(v58);
    }

    else
    {
      v45 = -1;
    }

    v46 = __endptr[0];
LABEL_151:
    CFRelease(v46);
LABEL_152:
    IOObjectRelease(parent);
    v40 = v45 >= 0;
    if ((v19 & 0x10000) != 0)
    {
      goto LABEL_153;
    }
  }

  else
  {
LABEL_117:
    v40 = 0;
    if ((v19 & 0x10000) != 0)
    {
LABEL_153:
      __s1[0] = 0;
      goto LABEL_154;
    }
  }

  if (*v79 == 47)
  {
    goto LABEL_153;
  }

LABEL_154:
  if (mount("apfs", v79, v74[0], __s1))
  {
    sub_100002264();
  }

  if (v40)
  {
    if (fsctl(v79, 0x80106807uLL, v70, 0) && *__error() != 37)
    {
      warn("cannot propagate backing store information to %s", v79);
    }

    close(v70[2]);
  }

LABEL_160:
  if (v74[0] & 0x10001) == 0 && !statfs(v79, &__b) && (__b.f_flags)
  {
    sub_1000022A4(__s1);
  }

  return 0;
}

void sub_1000016B8(int a1)
{
  if (a1 == 64)
  {
    warnx("[-o options] [-u UID] [-g GID] [-n] [-c [-r] | [-C]] [-s snapshot] [-P <im4p file> -M <im4m file> [-T <generic | brain>] [-E <generic | supplemental | pdi_nonce | mobile_asset | smac>]] <volume | device> <directory>");
  }
}

char *sub_1000016D0(const char *a1, void *a2)
{
  v3 = open(a1, 0);
  if (v3 == -1)
  {
    err(66, "cannot open %s");
  }

  v4 = v3;
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.st_blksize = v5;
  *v13.st_qspare = v5;
  v13.st_birthtimespec = v5;
  *&v13.st_size = v5;
  v13.st_mtimespec = v5;
  v13.st_ctimespec = v5;
  *&v13.st_uid = v5;
  v13.st_atimespec = v5;
  *&v13.st_dev = v5;
  if (fstat(v3, &v13) == -1)
  {
    err(66, "cannot stat %s");
  }

  if (v13.st_size > 0x100000uLL)
  {
    errx(66, "file %s is too large");
  }

  v6 = malloc_type_malloc(v13.st_size, 0x6DA97BD8uLL);
  if (!v6)
  {
    errx(66, "failed to allocate memory for %s");
  }

  v7 = v6;
  st_size = v13.st_size;
  if (!v13.st_size)
  {
    v9 = 0;
    if (!a2)
    {
      return v7;
    }

    goto LABEL_14;
  }

  v9 = 0;
  do
  {
    if (st_size >= 0x10000)
    {
      v10 = 0x10000;
    }

    else
    {
      v10 = st_size;
    }

    v11 = read(v4, &v7[v9], v10);
    if (!v11)
    {
      break;
    }

    if (v11 == -1)
    {
      err(66, "cannot read %s into memory");
    }

    v9 += v11;
    st_size -= v11;
  }

  while (st_size);
  if (a2)
  {
LABEL_14:
    *a2 = v9;
  }

  return v7;
}

uint64_t sub_10000181C(char *a1, char *a2, size_t a3)
{
  if (!strncasecmp(a1, "ROLE=", 5uLL))
  {
    v7 = a1 + 5;
    if (strcasecmp(v7, "SYSTEM") && strcasecmp(v7, "USER") && strcasecmp(v7, "RECOVERY") && strcasecmp(v7, "VM") && strcasecmp(v7, "PREBOOT") && strcasecmp(v7, "INSTALLER") && strcasecmp(v7, "DATA") && strcasecmp(v7, "BASEBAND") && strcasecmp(v7, "XART") && strcasecmp(v7, "INTERNAL") && strcasecmp(v7, "BACKUP") && strcasecmp(v7, "UPDATE") && strcasecmp(v7, "HARDWARE") && strcasecmp(v7, "SIDECAR") && strcasecmp(v7, "ENTERPRISE") && strcasecmp(v7, "IDIAGS") && strcasecmp(v7, "OVERPROVISION") && strcasecmp(v7, "CACHE"))
    {
      errx(64, "Unknown role: %s", v7);
    }

    memset(&__b, 170, sizeof(__b));
    if (statfs("/", &__b))
    {
      errx(66, "statfs has failed, err %i");
    }

    if (APFSVolumeRoleFind())
    {
      errx(66, "Failed to find a volume with role %s on disk %s, status: %x");
    }

    if (CFArrayGetCount(0xAAAAAAAAAAAAAAAALL) <= 0)
    {
      errx(66, "No volumes with role %s were found on disk %s");
    }

    ValueAtIndex = CFArrayGetValueAtIndex(0xAAAAAAAAAAAAAAAALL, 0);
    result = CFStringGetCString(ValueAtIndex, a2, a3, 0x8000100u);
    if (!result)
    {
      sub_100002378();
    }
  }

  else
  {

    return sub_100000810(a1, a2, 0, a3, 0);
  }

  return result;
}

BOOL sub_100001BB8(char *a1, char *a2, _DWORD *a3)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  sub_10000181C(a1, a2, 0x400uLL);
  v5 = getmntinfo(&v19, 2);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  v7 = v19;
  f_mntfromname = v19->f_mntfromname;
  v9 = strrchr(v19->f_mntfromname, 64);
  if (v9)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = f_mntfromname;
  }

  v11 = 0;
  if (strcmp(v10, a2))
  {
    v12 = v6;
    v13 = v7[1].f_mntfromname;
    while (v12 - 1 != v11)
    {
      v14 = strrchr(v13, 64);
      if (v14)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = v13;
      }

      v13 += 2168;
      ++v11;
      if (!strcmp(v15, a2))
      {
        v16 = v11 < v12;
        if (a3)
        {
          goto LABEL_16;
        }

        return v16;
      }
    }

    return 0;
  }

  v16 = 1;
  if (a3)
  {
LABEL_16:
    v17 = &v7[v11];
    if (strcmp(v17->f_fstypename, "apfs"))
    {
      sub_100002394();
    }

    *a3 = v17->f_fsid.val[0];
  }

  return v16;
}

char *sub_100001CD8(char *a1, int *a2)
{
  getmnt_silent = 1;
  if (!a1)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    a2[1] = -1;
    return 0;
  }

  v12 = *a2;
  v4 = *(a2 + 4);
  v5 = (v4 >> 6) & 8 | v4 & 5 | (v4 >> 8) & 0x10;
  v6 = v4 << 18;
  if ((v4 & 0x1000) != 0)
  {
    v7 = 32;
  }

  else
  {
    v7 = 64;
  }

  v11 = v7 & (v6 >> 31) | v5;
  if (!getmntopts())
  {
    return &unk_10000280B;
  }

  *a2 = v12;
  *(a2 + 4) = a2[2] & 0xCDFA | v11 & 1 | v11 & 4 | (((v11 & 0x30) != 0) << 12) | (((v11 & 0x60) != 0) << 13) | (((v11 >> 3) & 1) << 9);
  if ((v11 & 2) != 0)
  {
    v10 = getmntoptnum();
    a2[1] = v10;
    if (v10 == -1)
    {
      v8 = "checkpoint";
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  freemntopts();
  result = sub_100001E3C(&off_100004258, a1, v8);
  if (!result)
  {
    return 0;
  }

  return result;
}

char *sub_100001E3C(const char **a1, char *__s1, const char *a3)
{
  v4 = __s1;
  v6 = strdup(__s1);
  if (v6)
  {
    v7 = v6;
    __lasts = 0xAAAAAAAAAAAAAAAALL;
    v8 = strtok_r(v6, ",", &__lasts);
    if (v8)
    {
      while (1)
      {
        if (*v8 == 110)
        {
          v9 = 2 * (v8[1] == 111);
          v10 = v8[1] == 111 ? -2 : 0;
        }

        else
        {
          v10 = 0;
          v9 = 0;
        }

        v11 = &v8[v9];
        v12 = strchr(&v8[v9], 61);
        if (v12)
        {
          *v12 = 0;
        }

        v13 = *a1;
        if (!*a1)
        {
          break;
        }

        v14 = a1 + 3;
        while (strcasecmp(v13, v11))
        {
          v15 = *v14;
          v14 += 3;
          v13 = v15;
          if (!v15)
          {
            goto LABEL_19;
          }
        }

        if (a3 && !strcasecmp(v11, a3))
        {
          break;
        }

        v8 = strtok_r(0, ",", &__lasts);
        if (!v8)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      v4 += v10 + v11 - v7;
    }

    else
    {
LABEL_18:
      v4 = 0;
    }

    free(v7);
  }

  return v4;
}

char *sub_100001F7C(char *a1, void *a2)
{
  getmnt_silent = 1;
  if (!a1)
  {
    *a2 = 0;
    return 0;
  }

  v5 = *a2;
  if (getmntopts())
  {
    *a2 = v5;
    freemntopts();
    result = sub_100001E3C(&off_100008000, a1, 0);
    if (result)
    {
      return result;
    }

    return 0;
  }

  return &unk_10000280B;
}

const char *sub_100002018(const char *a1, uint64_t (*a2)(const char *, uint64_t), uint64_t a3, uint64_t (*a4)(const char *, uint64_t), uint64_t a5)
{
  v10 = strlen(a1);
  v11 = 0;
  v12 = 0;
  do
  {
    if (v11 != v10 && v11 <= v12)
    {
      v13 = a2(&a1[v11], a3);
      v11 = v10;
      if (v13)
      {
        v11 = v13 - a1;
        if (v13 - a1 < v12)
        {
          v14 = strchr(v13, 44);
          if (v14)
          {
            v11 = v14 - a1;
          }

          else
          {
            v11 = v10;
          }
        }
      }
    }

    if (v12 != v10 && v12 <= v11)
    {
      v15 = a4(&a1[v12], a5);
      v12 = v10;
      if (v15)
      {
        v12 = v15 - a1;
        if (v15 - a1 < v11)
        {
          v16 = strchr(v15, 44);
          if (v16)
          {
            v12 = v16 - a1;
          }

          else
          {
            v12 = v10;
          }
        }
      }
    }
  }

  while (v11 != v12);
  if (v11 == v10)
  {
    return 0;
  }

  else
  {
    return &a1[v11];
  }
}

void sub_1000021CC(int a1)
{
  if (a1 > 2)
  {
    errx(64, "unexpected argument");
  }

  errx(64, "missing argument");
}

void sub_100002264()
{
  v0 = *__error();
  v1 = sysexit_np();
  err(v1, "volume could not be mounted");
}

void sub_1000022A4(uint64_t a1)
{
  if (*(a1 + 16) == 2)
  {
    v1 = "snapshot ";
  }

  else
  {
    v1 = &unk_10000280B;
  }

  warnx("%simplicitly mounted readonly", v1);
}