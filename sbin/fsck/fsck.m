int *sub_100000738(_DWORD *a1)
{
  if (!dword_100008008)
  {
    v3 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems/fstab");
    if (v3)
    {
      v4 = v3;
      CFProperty = IORegistryEntryCreateCFProperty(v3, @"os_env_type", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v6 = CFProperty;
        v13.length = CFDataGetLength(CFProperty);
        v13.location = 0;
        CFDataGetBytes(v6, v13, &dword_100008000);
        CFRelease(v6);
      }

      IOObjectRelease(v4);
      *a1 = dword_100008000;
      BootDevice = APFSContainerGetBootDevice();
      if (!BootDevice)
      {
LABEL_14:
        v2 = &dword_100008008;
        strcpy(&dword_100008008, "/dev/");
        CFStringGetCString(0, &word_10000800C + 1, 27, 0x8000100u);
        CFRelease(0);
        return v2;
      }

      v8 = 5;
      while (1)
      {
        v9 = __stderrp;
        v10 = dword_100008000 == 1 ? &unk_100002337 : "warning: ";
        v11 = strerror(BootDevice & 0x3FFF);
        fprintf(v9, "%sfailed to get boot device - %s\n", v10, v11);
        if (dword_100008000 == 1)
        {
          break;
        }

        sleep(1u);
        if ((v8 + 1) < 2)
        {
          break;
        }

        fprintf(__stderrp, "Retrying (%d retries left)...\n", v8);
        BootDevice = APFSContainerGetBootDevice();
        --v8;
        if (!BootDevice)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      fwrite("failed to get filesystem info\n", 0x1EuLL, 1uLL, __stderrp);
    }

    return 0;
  }

  *a1 = dword_100008000;
  return &dword_100008008;
}

void start(int a1, char *const *a2)
{
  sync();
  while (1)
  {
    v4 = getopt(a1, a2, "dfpR:qnNyYl:L");
    if (v4 <= 101)
    {
      if (v4 <= 81)
      {
        switch(v4)
        {
          case 0x4C:
            dword_10000804C = 1;
            break;
          case 0x4E:
LABEL_19:
            dword_100008054 = 1;
            dword_100008058 = 0;
            break;
          case 0xFFFFFFFF:
            v5 = optind;
            if (signal(2, 1) != 1)
            {
              signal(2, sub_100000C24);
            }

            if (dword_100008028)
            {
              signal(3, sub_100000C38);
            }

            if (v5 == a1)
            {
              if (os_parse_boot_arg_string())
              {
                if (v8 != 1936482662 || v9 != 101)
                {
                  fprintf(__stderrp, "warning: auto-boot is set to %s\n", &v8);
                }
              }

              v7 = sub_100000C7C();
              if (dword_10000802C)
              {
                v7 = 2;
              }

              exit(v7);
            }

LABEL_42:
            sub_100000C04();
            exit(22);
          default:
LABEL_43:
            errx(8, "%c option?", v4);
        }
      }

      else
      {
        switch(v4)
        {
          case 'R':
            dword_100008050 = sub_100000B94(v4, optarg);
            if ((dword_100008050 - 3) <= 0xFFFFFFFD)
            {
              goto LABEL_42;
            }

            break;
          case 'Y':
            goto LABEL_16;
          case 'd':
            ++dword_10000803C;
            break;
          default:
            goto LABEL_43;
        }
      }
    }

    else if (v4 > 111)
    {
      switch(v4)
      {
        case 'p':
          ++dword_100008028;
          break;
        case 'q':
          dword_100008048 = 1;
          break;
        case 'y':
LABEL_16:
          dword_100008058 = 1;
          dword_100008054 = 0;
          break;
        default:
          goto LABEL_43;
      }
    }

    else
    {
      switch(v4)
      {
        case 'f':
          ++dword_100008040;
          break;
        case 'l':
          dword_100008044 = sub_100000B94(v4, optarg);
          break;
        case 'n':
          goto LABEL_19;
        default:
          goto LABEL_43;
      }
    }
  }
}

uint64_t sub_100000B94(uint64_t a1, char *__str)
{
  __endptr = 0;
  result = strtol(__str, &__endptr, 10);
  if (__endptr == __str || *__endptr)
  {
    errx(8, "-%c flag requires a %s", a1, "number");
  }

  return result;
}

void (__cdecl *sub_100000C38())(int)
{
  puts("returning to single-user after filesystem check");
  dword_10000802C = 1;

  return signal(3, 0);
}

uint64_t sub_100000C7C()
{
  if (dword_100008048)
  {
    v0 = dword_100008050 == 0;
  }

  else
  {
    v0 = 0;
  }

  if (v0)
  {
    v16 = 0;
    v6 = sub_100000738(&v16);
    if ((v16 & 0xFFFFFFFD) != 1)
    {
      fwrite("fsck: not booting main or diagnostic OS. Skipping fsck on OS container\n", 0x47uLL, 1uLL, __stdoutp);
      return 0;
    }

    if (v6)
    {
      v7 = strdup(v6);
      if (v7)
      {
        v8 = v7;
        v9 = sub_10000148C(v7);
        if (v9)
        {
          v15[0] = 0;
          v15[1] = 0;
          v15[2] = v14;
          v15[3] = 0;
          v14[0] = 0;
          v14[1] = v9;
          v14[2] = 0;
          v14[3] = "apfs";
          v1 = sub_10000177C(v15, 0);
        }

        else
        {
          v1 = 0;
        }

        free(v8);
        return v1;
      }

      v10 = __stderrp;
      v11 = "fsck: failed to copy boot container\n";
      v12 = 36;
    }

    else
    {
      v10 = __stderrp;
      v11 = "fsck: failed to get boot container\n";
      v12 = 35;
    }

    fwrite(v11, v12, 1uLL, v10);
    return 8;
  }

  v1 = sub_100000E74();
  if (!v1 && dword_100008028)
  {
    v1 = sub_100001098();
    if (v1)
    {
      if (qword_100008068)
      {
        v2 = *qword_100008068 ? "S" : &unk_100002337;
        fprintf(__stderrp, "THE FOLLOWING FILE SYSTEM%s HAD AN %s\n\t", v2, "UNEXPECTED INCONSISTENCY:");
        for (i = qword_100008068; i; i = *i)
        {
          v4 = *(i + 16);
          if (*i)
          {
            v5 = ", ";
          }

          else
          {
            v5 = "\n";
          }

          fprintf(__stderrp, "%s (%s)%s", *(i + 8), *(i + 16), v5);
        }
      }
    }

    else
    {
      endfsent();
    }
  }

  return v1;
}

uint64_t sub_100000E74()
{
  v0 = 0;
  if (dword_100008050 == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  if (dword_100008050 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  if (dword_100008050 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  while (setfsent())
  {
    v4 = getfsent();
    if (v4)
    {
      v5 = v4;
      v6 = v0 | 8;
      while (1)
      {
LABEL_13:
        if (!sub_100001384(v5))
        {
          goto LABEL_28;
        }

        if (!dword_100008028)
        {
          goto LABEL_18;
        }

        if (v2 != 2)
        {
          break;
        }

        if (v5->fs_passno < 2)
        {
          goto LABEL_28;
        }

        v10 = sub_10000148C(v5->fs_spec);
        if (v10)
        {
          sub_100001AE8(v10, v5->fs_file, v5->fs_vfstype);
          goto LABEL_28;
        }

        fprintf(__stderrp, "BAD DISK NAME %s\n", v5->fs_spec);
        v5 = getfsent();
        v0 = v6;
        if (!v5)
        {
          v0 = v6;
          goto LABEL_32;
        }
      }

      if (v2 != 1 || v5->fs_passno != 1)
      {
        goto LABEL_28;
      }

LABEL_18:
      if (!dword_100008050 || v5->fs_passno == dword_100008050)
      {
        v7 = sub_10000148C(v5->fs_spec);
        if (!v7)
        {
          fs_spec = v5->fs_spec;
          fprintf(__stderrp, "BAD DISK NAME %s\n");
          return 8;
        }

        v8 = v7;
        if (!strcmp(v7, "ramdisk"))
        {
          fprintf(__stdoutp, "Encountered ramdisk definition for location %s - will be created during mount.\n", v5->fs_file);
        }

        else
        {
          v16[2] = 0;
          fs_vfstype = 0;
          v18[0] = 0;
          v18[1] = 0;
          v18[2] = v16;
          v18[3] = 0;
          v16[0] = 0;
          v16[1] = v8;
          fs_vfstype = v5->fs_vfstype;
          v9 = sub_10000177C(v18, 0);
          if (v9)
          {
            return v9;
          }
        }
      }

LABEL_28:
      v5 = getfsent();
      if (!v5)
      {
        goto LABEL_32;
      }

      goto LABEL_13;
    }

LABEL_32:
    if (dword_100008028)
    {
      v11 = v2 == v3;
    }

    else
    {
      v11 = 1;
    }

    ++v2;
    if (v11)
    {
      return v0;
    }
  }

  v13 = __stderrp;
  v14 = __error();
  strerror(*v14);
  fprintf(v13, "Can't get filesystem checklist: %s\n");
  return 8;
}

uint64_t sub_100001098()
{
  v20 = 0;
  v0 = dword_100008044;
  if (dword_100008044)
  {
    v1 = dword_100008044 <= dword_100008038;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    dword_100008044 = dword_100008038;
    v0 = dword_100008038;
  }

  v2 = qword_100008060;
  if (v0 < 1)
  {
LABEL_14:
    v6 = wait(&v20);
    if (v6 == -1)
    {
      return 0;
    }

    v7 = v6;
    v8 = 0;
    while (1)
    {
      while (1)
      {
        v9 = qword_100008060;
        if (qword_100008060)
        {
          break;
        }

LABEL_19:
        printf("Unknown pid %d\n", v7);
        v7 = wait(&v20);
        if (v7 == -1)
        {
          return v8;
        }
      }

      while (*(v9 + 24) != v7)
      {
        v9 = *(v9 + 8);
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if ((v20 & 0x7F) != 0 && (v20 & 0x7F) != 0x7F)
      {
        printf("%s (%s): EXITED WITH SIGNAL %d\n", *(*(v9 + 16) + 8), *(*(v9 + 16) + 16), v20 & 0x7F);
        v10 = 8;
      }

      else
      {
        v10 = BYTE1(v20);
        if ((v20 & 0x7F) != 0 || BYTE1(v20) == 0)
        {
          v12 = *(v9 + 16);
          *(v9 + 16) = *v12;
          sub_100001C48(v12);
          v13 = *(v9 + 16);
          goto LABEL_32;
        }
      }

      v14 = qword_100008068;
      v8 = v10 | v8;
      v15 = *(v9 + 16);
      qword_100008068 = v15;
      v13 = *v15;
      *(v9 + 16) = *v15;
      if (v14)
      {
        *v15 = v14;
      }

LABEL_32:
      *(v9 + 24) = 0;
      v16 = dword_100008034--;
      if (v13)
      {
        if (!v2)
        {
          result = sub_100001BE0(v9);
          v17 = result != 0;
          if (result && dword_100008034 >= 1)
          {
            do
            {
              sleep(0xAu);
              result = sub_100001BE0(v9);
              v17 = result != 0;
            }

            while (result && dword_100008034 > 0);
          }

          if (v17)
          {
            return result;
          }

          v2 = 0;
          goto LABEL_55;
        }
      }

      else
      {
        --dword_100008038;
        if (!v2)
        {
          goto LABEL_55;
        }
      }

      if (v16 <= dword_100008044 && v16 <= dword_100008038)
      {
        do
        {
          if (*(v2 + 8))
          {
            v2 = *(v2 + 8);
          }

          else
          {
            v2 = qword_100008060;
          }
        }

        while (!*(v2 + 16) || *(v2 + 24));
        result = sub_100001BE0(v2);
        v18 = result != 0;
        if (result)
        {
          v19 = dword_100008034 < 1;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          do
          {
            sleep(0xAu);
            result = sub_100001BE0(v2);
            v18 = result != 0;
          }

          while (result && dword_100008034 > 0);
        }

        if (v18)
        {
          return result;
        }
      }

LABEL_55:
      v7 = wait(&v20);
      result = v8;
      if (v7 == -1)
      {
        return result;
      }
    }
  }

  v3 = 0;
  while (1)
  {
    result = sub_100001BE0(v2);
    v5 = result != 0;
    if (result && dword_100008034 >= 1)
    {
      do
      {
        sleep(0xAu);
        result = sub_100001BE0(v2);
        v5 = result != 0;
      }

      while (result && dword_100008034 > 0);
    }

    if (v5)
    {
      return result;
    }

    ++v3;
    v2 = *(v2 + 8);
    if (v3 >= dword_100008044)
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_100001384(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (strcmp(v2, "apfs") && strcmp(v2, "hfs") && strcmp(v2, "msdos") && strcmp(v2, "exfat") && strcmp(v2, "udf"))
  {
    return 0;
  }

  v3 = *(a1 + 32);
  if (*v3 != 114 || (v3[1] != 119 || v3[2]) && (v3[1] != 111 || v3[2]))
  {
    return 0;
  }

  if (!*(a1 + 44))
  {
    return 0;
  }

  v4 = *a1;
  result = strncmp(v4, "LABEL=", 6uLL);
  if (result)
  {
    return strncmp(v4, "UUID=", 5uLL) != 0;
  }

  return result;
}

char *sub_10000148C(char *a1)
{
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  memset(&changelist, 0, sizeof(changelist));
  memset(&eventlist, 0, sizeof(eventlist));
  timeout.tv_sec = 0;
  timeout.tv_nsec = 0;
  dword_100008030 = 0;
  if (stat("/", &v17) < 0)
  {
    sub_100001F78();
  }

  else if (!strcmp(a1, "ramdisk"))
  {
    fwrite("Encountered ramdisk definition. Do not stat\n", 0x2CuLL, 1uLL, __stdoutp);
  }

  else
  {
    for (i = 0; ; i = 1)
    {
      if (stat(a1, &v16) < 0)
      {
        v4 = kqueue();
        if (v4 < 0)
        {
          v10 = __error();
          printf("kqueue: could not create kqueue: %d\n", *v10);
          printf("Can't stat %s\n");
        }

        else
        {
          v5 = v4;
          changelist.ident = open("/dev/", 0);
          *&changelist.filter = 0x20025FFFCLL;
          changelist.data = 0;
          changelist.udata = 0;
          if (kevent(v5, &changelist, 1, 0, 0, 0))
          {
            v11 = __error();
            printf("kevent() failed to register: %d\n", *v11);
            printf("Can't stat %s\n", a1);
            close(v5);
          }

          else
          {
            v6 = time(0) + 30;
            timeout.tv_nsec = 0;
            while (1)
            {
              v7 = time(0);
              if (v6 <= v7)
              {
                break;
              }

              timeout.tv_sec = v6 - v7;
              kevent(v5, 0, 0, &eventlist, 1, &timeout);
              if ((eventlist.flags & 0x4000) != 0)
              {
                puts("kevent: registered errors.");
                break;
              }

              if (!stat(a1, &v16))
              {
                close(v5);
                goto LABEL_5;
              }
            }

            close(v5);
            printf("fsck timed out. Can't stat %s\n");
          }
        }

        return 0;
      }

LABEL_5:
      v3 = v16.st_mode & 0xF000;
      if (v3 == 24576)
      {
        break;
      }

      if (i & 1 | (v3 != 0x2000))
      {
        return 0;
      }

      sub_100001D78(a1);
    }

    if (v17.st_dev == v16.st_rdev)
    {
      ++dword_100008030;
    }

    v9 = sub_100001CE0(a1);
    if (stat(v9, &v15) < 0)
    {
      perror(v9);
      printf("Can't stat %s\n");
    }

    else if ((v15.st_mode & 0xF000) == 0x2000)
    {
      return v9;
    }

    else
    {
      printf("%s is not a character device\n");
    }
  }

  return a1;
}

uint64_t sub_10000177C(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v22 = 0;
  v21 = 0;
  v23 = 0;
  memset(&v16, 0, sizeof(v16));
  v3 = *(v2 + 8);
  v4 = *(v2 + 24);
  if (a2 && dword_100008028)
  {
    signal(3, sub_100001CA0);
  }

  if (!strcmp(v3, "ramdisk"))
  {
    fwrite("No need to check filesys for ramdisk, does not exist yet.\n", 0x3AuLL, 1uLL, __stdoutp);
    return 0;
  }

  if (!v4)
  {
    goto LABEL_31;
  }

  v15 = 0;
  *__str = 0;
  __str[8] = 0;
  v5 = &unk_100002337;
  if (dword_100008028)
  {
    v6 = "p";
  }

  else
  {
    v6 = &unk_100002337;
  }

  if (dword_10000803C)
  {
    v7 = "d";
  }

  else
  {
    v7 = &unk_100002337;
  }

  if (dword_100008040)
  {
    v8 = "f";
  }

  else
  {
    v8 = &unk_100002337;
  }

  if (dword_100008054)
  {
    v9 = "n";
  }

  else
  {
    v9 = &unk_100002337;
  }

  if (dword_100008058)
  {
    v10 = "y";
  }

  else
  {
    v10 = &unk_100002337;
  }

  if (dword_100008048)
  {
    v11 = "q";
  }

  else
  {
    v11 = &unk_100002337;
  }

  if (dword_10000804C)
  {
    v5 = "l";
  }

  snprintf(__str, 9uLL, "-%s%s%s%s%s%s%s", v6, v7, v8, v9, v10, v11, v5);
  snprintf(v18, 0xFFuLL, "fsck_%s", v4);
  __argv = v18;
  if (strlen(__str) < 2)
  {
    v12 = 1;
  }

  else
  {
    v21 = __str;
    v12 = 2;
  }

  (&__argv)[v12] = v3;
  (&__argv)[v12 + 1] = 0;
  snprintf(__path, 0x401uLL, "%s/fsck_%s", "/sbin", v4);
  if (stat(__path, &v16))
  {
LABEL_31:
    fwrite("Filesystem cannot be checked \n", 0x1EuLL, 1uLL, __stderrp);
    return 8;
  }

  v14 = fork();
  if (v14 == -1)
  {
    fprintf(__stderrp, "fork failed for %s \n", v3);
    if (dword_100008028)
    {
      fprintf(__stderrp, "\n%s: UNEXPECTED INCONSISTENCY; RUN fsck MANUALLY.\n", v3);
      exit(8);
    }

    return 8;
  }

  if (!v14)
  {
    if (dword_100008028)
    {
      signal(3, sub_100001CA0);
    }

    execv(__path, &__argv);
    fprintf(__stderrp, "error attempting to exec %s\n", __path);
    _exit(8);
  }

  waitpid(v14, &v15, 0);
  if ((v15 & 0x7F) != 0)
  {
    result = 0;
  }

  else
  {
    result = BYTE1(v15);
  }

  if ((v15 & 0x7F) != 0 && (v15 & 0x7F) != 0x7F)
  {
    printf("%s (%s) EXITED WITH SIGNAL %d\n", v3, v4, v15 & 0x7F);
    return 8;
  }

  return result;
}

char *sub_100001AE8(char *a1, const char *a2, const char *a3)
{
  v6 = sub_100001E1C(a1) + 2;
  while (1)
  {
    v7 = *v6;
    if (!*v6)
    {
      break;
    }

    v6 = *v6;
    if (!strcmp(*(v7 + 1), a1))
    {
      return printf("%s in fstab more than once!\n", a1);
    }
  }

  v9 = malloc_type_malloc(0x20uLL, 0x30040E3C0B0CCuLL);
  *v6 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = strdup(a1);
  *(v10 + 1) = v11;
  if (!v11 || (v12 = strdup(a2), (*(v10 + 2) = v12) == 0) || (*v10 = 0, result = strdup(a3), (*(v10 + 3) = result) == 0))
  {
LABEL_9:
    fwrite("out of memory", 0xDuLL, 1uLL, __stderrp);
    exit(8);
  }

  return result;
}

uint64_t sub_100001BE0(uint64_t a1)
{
  v2 = fork();
  *(a1 + 24) = v2;
  if (v2 < 0)
  {
    perror("fork");
    return 8;
  }

  else
  {
    if (!v2)
    {
      v4 = sub_10000177C(a1, 1);
      exit(v4);
    }

    result = 0;
    ++dword_100008034;
  }

  return result;
}

void sub_100001C48(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    free(v4);
  }

  free(a1);
}

void (__cdecl *sub_100001CA0())(int)
{
  sleep(1u);
  signal(3, 1);

  return signal(3, 0);
}

void *sub_100001CE0(char *a1)
{
  v1 = strrchr(a1, 47);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  *v1 = 0;
  v3 = &unk_100008070;
  __strlcpy_chk();
  *v2 = 47;
  __strlcat_chk();
  __strlcat_chk();
  return v3;
}

char *sub_100001D78(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2;
    memset(&v6, 0, sizeof(v6));
    if ((stat(a1, &v6) & 0x80000000) == 0 && (v6.st_mode & 0xF000) == 0x2000 && v3[1] == 114)
    {
      v4 = strlen(v3 + 2);
      memmove(v3 + 1, v3 + 2, v4 + 1);
    }
  }

  return a1;
}

const char **sub_100001E1C(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = a1;
  }

  v4 = &v3[~a1];
  do
  {
    v5 = v4;
    v6 = *v3++;
    v7 = v6 - 58;
    ++v4;
    if (v6)
    {
      v8 = v7 >= 0xFFFFFFF6;
    }

    else
    {
      v8 = 1;
    }
  }

  while (!v8);
  v9 = -1;
  do
  {
    v10 = v3[v9] - 48;
    ++v5;
    ++v9;
  }

  while (v10 < 0xA);
  if (!v5)
  {
    v5 = strlen(a1);
  }

  v11 = &qword_100008060;
  v12 = qword_100008060;
  if (qword_100008060)
  {
    while (1)
    {
      v13 = v12;
      v14 = *v12;
      if (!strncmp(*v12, a1, v5) && !v14[v5])
      {
        break;
      }

      v12 = v13[1];
      if (!v12)
      {
        v11 = (v13 + 1);
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    v15 = malloc_type_malloc(0x20uLL, 0x10300407DFA817CuLL);
    *v11 = v15;
    if (!v15 || (v13 = v15, v16 = malloc_type_malloc(v5 + 1, 0x4410DCA3uLL), (*v13 = v16) == 0))
    {
      fwrite("out of memory", 0xDuLL, 1uLL, __stderrp);
      exit(8);
    }

    strncpy(v16, a1, v5);
    (*v13)[v5] = 0;
    v13[1] = 0;
    v13[2] = 0;
    *(v13 + 6) = 0;
    ++dword_100008038;
  }

  return v13;
}