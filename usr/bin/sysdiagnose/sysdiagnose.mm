uint64_t sub_100000EC0()
{
  if (qword_1000103A0 != -1)
  {
    sub_100004C04();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100010398)
    {
      v0 = "launchd";
    }

    else
    {
      v0 = "shell";
    }

    v2 = 136315138;
    v3 = v0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "started by %s", &v2, 0xCu);
  }

  return byte_100010398;
}

uint64_t sub_100000FE0()
{
  if (qword_1000103B0 != -1)
  {
    sub_100004C18();
  }

  return byte_1000103A8;
}

void sub_100001018(id a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    has_internal_content = 1;
  }

  else
  {
    has_internal_content = os_variant_has_internal_content();
  }

  byte_1000103A8 = has_internal_content;
  v3 = 0;
  if (sub_1000011AC(@"customer-mode", @"com.apple.sysdiagnose", &v3) && v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Customer-mode enabled. Forcing external behavior.", buf, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "To disable, run: 'sudo defaults write com.apple.sysdiagnose customer-mode -BOOL false; sudo pkill -9 sysdiagnose'", buf, 2u);
    }

    byte_1000103A8 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1000103A8)
    {
      v2 = "YES";
    }

    else
    {
      v2 = "NO";
    }

    *buf = 136315138;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Apple Internal: %s", buf, 0xCu);
  }
}

BOOL sub_1000011AC(void *a1, void *a2, BOOL *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 && v6 && a3)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v5, v6, &keyExistsAndHasValidFormat);
    v9 = keyExistsAndHasValidFormat;
    if (keyExistsAndHasValidFormat)
    {
      *a3 = AppBooleanValue != 0;
    }

    v10 = v9 != 0;
  }

  else
  {
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_100004C2C(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = 0;
  }

  return v10;
}

BOOL sub_10000125C(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = strlen(a2);
  v6 = v5;
  if (v5 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (!strncasecmp(a2, a1, v7))
  {
    return 1;
  }

  if (v6 <= v4)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
  }

  if (v6 <= v4)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  return strcasestr(v8, v9) != 0;
}

BOOL sub_1000012D4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  if (proc_pidpath([v0 intValue], buffer, 0x1000u) < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = [NSString stringWithUTF8String:buffer];
    v4 = sub_10000125C([v3 fileSystemRepresentation], objc_msgSend(v2, "fileSystemRepresentation"));
  }

  return v4;
}

BOOL sub_1000013C4(const void *a1)
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFEqual(v2, a1) != 0;
  CFRelease(v3);
  return v4;
}

uint64_t sub_100001420()
{
  if (qword_1000103C0 != -1)
  {
    sub_100004CA8();
  }

  return byte_1000103B8;
}

uint64_t sub_100001480()
{
  if (qword_1000103D0 != -1)
  {
    sub_100004CBC();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 67109120;
    v1[1] = byte_1000103C8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Got result %d for isComputeModuleB check", v1, 8u);
  }

  return byte_1000103C8;
}

uint64_t sub_100001568(const char *a1)
{
  *iterator = 0;
  if (!a1)
  {
    v25 = 0;
    memset(name, 0, 80);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    LODWORD(v24[0]) = 134217984;
    *(v24 + 4) = 0;
    _os_log_send_and_compose_impl();
    v18 = _os_crash_msg();
    sub_100004E18(v18);
  }

  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/");
  v3 = v2;
  iterator[1] = v2;
  if (v2)
  {
    v4 = IORegistryEntryCreateIterator(v2, "IODeviceTree", 0, iterator);
    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100004CD0(v4);
      }
    }

    else
    {
      while (1)
      {
        v16 = IOIteratorNext(iterator[0]);
        if (!v16)
        {
          break;
        }

        memset(name, 0, sizeof(name));
        v17 = IORegistryEntryGetName(v16, name);
        if (v17)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100004D50(buf, v17, v22);
          }
        }

        else if (!strcmp(a1, name))
        {
          v13 = 1;
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      sub_100004D9C(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = 0;
LABEL_9:
  if (iterator[0])
  {
    v14 = IOObjectRelease(iterator[0]);
    if (v14)
    {
      v24[0] = 0;
      memset(name, 0, 80);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      LODWORD(v25) = 67109120;
      HIDWORD(v25) = v14;
      _os_log_send_and_compose_impl();
      v19 = _os_crash_msg();
      sub_100004E18(v19);
    }
  }

  if (v3 && IOObjectRelease(v3))
  {
    sub_100004E1C(v24, name);
  }

  return v13;
}

uint64_t sub_1000018B0(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_100004ECC(&v2, v3);
    }
  }

  return result;
}

void sub_100001918(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100001934()
{

  return _os_log_send_and_compose_impl();
}

uint64_t start(int a1, char *const *a2)
{
  if (isatty(0) || isatty(1) || isatty(2))
  {
    v4 = sub_100002FAC();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    LOWORD(buf.name) = 0;
    v5 = "Invoked by terminal";
    p_buf = &buf;
    v7 = v4;
    v8 = OS_LOG_TYPE_INFO;
    v9 = 2;
    goto LABEL_6;
  }

  memset(&buf, 0, sizeof(buf));
  v82 = getppid();
  v83 = proc_name(v82, &buf, 0x20u);
  v4 = sub_100002FAC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v84 = "error";
    if (v83 > 0)
    {
      v84 = &buf;
    }

    *v147 = 67109378;
    *&v147[4] = v82;
    *&v147[8] = 2082;
    *&v147[10] = v84;
    v5 = "Invoked by parent (%d): '%{public}s'";
    p_buf = v147;
    v7 = v4;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 18;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v7, v8, v5, p_buf, v9);
  }

LABEL_7:

  context = objc_autoreleasePoolPush();
  if (sub_100000EC0())
  {
    v108 = sub_100002FAC();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      sub_100005298();
    }

LABEL_200:
    exit(1);
  }

  v10 = +[NSMutableDictionary dictionary];
  v11 = objc_alloc_init(NSMutableString);
  v115 = a1 - 1;
  if (a1 >= 1)
  {
    v12 = a1;
    v13 = a2;
    do
    {
      v14 = *v13++;
      v15 = [NSString stringWithFormat:@"%s ", v14];
      [v11 appendString:v15];

      --v12;
    }

    while (v12);
  }

  v117 = v11;
  [v10 setObject:v11 forKeyedSubscript:@"commandLineArgs"];
  opterr = 0;
  v141 = off_10000C630;
  v142 = unk_10000C640;
  v143 = xmmword_10000C650;
  v144 = unk_10000C660;
  v137 = off_10000C5F0;
  v138 = unk_10000C600;
  v139 = off_10000C610;
  v140 = unk_10000C620;
  v133 = off_10000C5B0;
  v134 = unk_10000C5C0;
  v135 = off_10000C5D0;
  v136 = unk_10000C5E0;
  buf = off_10000C570;
  v131 = off_10000C590;
  v132 = unk_10000C5A0;
  v119 = objc_alloc_init(NSMutableSet);
  v16 = 0;
  v17 = &optarg;
  while (2)
  {
    while (1)
    {
      v18 = v16;
      v19 = getopt_long(a1, a2, "vhHcsbf:V:lqQnA:pPdDkFgGLXe:urRSC:x:", &buf, 0);
      if (v19 <= 15212)
      {
        break;
      }

      if (v19 == 15213)
      {
        if (!sub_100000FE0())
        {
          goto LABEL_88;
        }

        v23 = [NSString stringWithUTF8String:*v17];
        v27 = v10;
        v25 = v23;
        v26 = @"onlyRunContainersWithNames";
        goto LABEL_56;
      }

      if (v19 != 18213)
      {
        if (v19 != 20213)
        {
LABEL_85:
          fwrite("Unexpected option or insufficient arguments.", 0x2CuLL, 1uLL, __stderrp);
          fputc(10, __stderrp);
          sub_100003338();
          v63 = 64;
          goto LABEL_89;
        }

        v44 = __stderrp;
        v45 = "Platform does not support --collectAllTrusted flag";
        v46 = 50;
LABEL_87:
        fwrite(v45, v46, 1uLL, v44);
        fputc(10, __stderrp);
        goto LABEL_88;
      }

      if (!sub_100000FE0())
      {
        goto LABEL_88;
      }

      v22 = v10;
      v20 = &__kCFBooleanTrue;
      v21 = @"collectWifiDextCoreFiles";
LABEL_53:
      [v22 setObject:v20 forKeyedSubscript:v21];
      v16 = v18;
    }

    switch(v19)
    {
      case 'A':
        v23 = [NSString stringWithUTF8String:*v17];
        v26 = @"archiveName";
        goto LABEL_43;
      case 'B':
      case 'E':
      case 'I':
      case 'J':
      case 'K':
      case 'M':
      case 'N':
      case 'O':
      case 'T':
      case 'U':
      case 'W':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'a':
      case 'e':
      case 'i':
      case 'j':
      case 'm':
      case 'o':
      case 's':
      case 't':
      case 'w':
        goto LABEL_85;
      case 'C':
        v23 = [NSString stringWithUTF8String:*v17];
        if ([@"yaa" isEqualToString:v23])
        {
          v24 = sub_100002FAC();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v147 = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Compression type: yaa", v147, 2u);
          }

          v25 = &__kCFBooleanTrue;
          v26 = @"useParallelCompression";
LABEL_32:
          v27 = v10;
LABEL_56:
          [v27 setObject:v25 forKeyedSubscript:v26];
          goto LABEL_57;
        }

        if ([@"tar" isEqualToString:v23])
        {
          v32 = sub_100002FAC();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *v147 = 0;
            v33 = "Compression type: tar";
LABEL_68:
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, v147, 2u);
            goto LABEL_69;
          }

          goto LABEL_69;
        }

        if ([@"no-compression" isEqualToString:v23])
        {
          v34 = sub_100002FAC();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *v147 = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "--compression=no-compression (functions the same as -n flag)", v147, 2u);
          }

          v25 = &__kCFBooleanFalse;
          v26 = @"shouldCreateTarBall";
          goto LABEL_32;
        }

        if ([@"default" isEqualToString:v23])
        {
          v32 = sub_100002FAC();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *v147 = 0;
            v33 = "Default compression requested. Using tar";
            goto LABEL_68;
          }

LABEL_69:

LABEL_57:
          v16 = v18;
          continue;
        }

        fprintf(__stderrp, "Error: compression type '%s' not found", [v23 UTF8String]);
        fputc(10, __stderrp);

LABEL_88:
        v63 = 69;
LABEL_89:
        v64 = v117;
LABEL_90:

        if (v63)
        {
          exit(v63);
        }

        if (geteuid())
        {
          fwrite("sysdiagnose must be run as root", 0x1FuLL, 1uLL, __stderrp);
          fputc(10, __stderrp);
          goto LABEL_200;
        }

        if (qword_1000103F8 != -1)
        {
          sub_1000051D8();
        }

        [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SDRequestSourceShell"];
        if (!isatty(1))
        {
          [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"verbose"];
        }

        if ((byte_1000103D8 & 1) == 0)
        {
          v65 = [v10 copy];
          v66 = sub_100000FE0();
          v67 = off_100010368;
          if (!v66)
          {
            v67 = off_100010360;
          }

          printf("%s", *v67);
          putchar(10);
          v68 = [v65 objectForKeyedSubscript:@"pidOrProcess"];
          if (sub_100003D34(v68, @"/Applications/Mail.app/Contents/MacOS/Mail"))
          {
            v69 = off_100010370;
            goto LABEL_103;
          }

          if (sub_100003D34(v68, @"/Applications/Safari.app/Contents/MacOS/Safari"))
          {
            v69 = off_100010378;
LABEL_103:
            printf("%s", *v69);
            putchar(10);
          }

          v70 = [v65 objectForKey:@"setNoTimeOut"];
          v71 = v70;
          if (v70 && [v70 BOOLValue])
          {
            printf("%s", off_100010380[0]);
            putchar(10);
          }

          printf("Press 'Enter' to continue. Ctrl+\\ to cancel.");
          putchar(10);
          if (!isatty(1))
          {
            fwrite("Triggering sysdiagnose programmatically from CLI with incorrect arguments. Exiting.", 0x53uLL, 1uLL, __stderrp);
            fputc(10, __stderrp);
            exit(64);
          }

          do
          {
            v72 = fgetc(__stdinp);
          }

          while (v72 != 13 && v72 != 10);
        }

        v74 = [v10 objectForKeyedSubscript:@"verbose"];

        if (v74)
        {
          v75 = 0;
        }

        else
        {
          [v10 objectForKeyedSubscript:@"shouldCreateTarBall"];
          v123[0] = _NSConcreteStackBlock;
          v123[1] = 3221225472;
          v123[2] = sub_100002FF0;
          v124 = v123[3] = &unk_10000C530;
          v76 = v124;
          v75 = objc_retainBlock(v123);
        }

        v122 = 0;
        v77 = [Libsysdiagnose sysdiagnoseWithMetadata:v10 withError:&v122 withProgressHandler:v75];
        v78 = v122;
        if (v77)
        {
          putchar(10);
          printf("Output available at '%s'.", [v77 UTF8String]);
          putchar(10);
          v79 = sub_100002FAC();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            v80 = [v77 UTF8String];
            LODWORD(buf.name) = 136315138;
            *(&buf.name + 4) = v80;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Output available at '%s'.", &buf, 0xCu);
          }
        }

        if (v78)
        {
          v109 = __stderrp;
          v110 = [v78 localizedDescription];
          fprintf(v109, "sysdiagnose error: %s", [v110 UTF8String]);

          fputc(10, __stderrp);
          v111 = sub_100002FAC();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            sub_100005200(v78);
          }

          goto LABEL_200;
        }

        objc_autoreleasePoolPop(context);
        return 0;
      case 'D':
        v20 = &__kCFBooleanFalse;
        v21 = @"shouldRunLogCopyTasks";
        goto LABEL_52;
      case 'F':
        v20 = &__kCFBooleanTrue;
        v21 = @"shouldGetFeedbackData";
        goto LABEL_52;
      case 'G':
        v20 = &__kCFBooleanFalse;
        v21 = @"shouldRunLogGenerationTasks";
        goto LABEL_52;
      case 'H':
        v107 = +[SDCacheEnumerator sysdiagnoseDirectory];
        printf("Sysdiagnoses can be found at '%s'\n", [v107 UTF8String]);

        goto LABEL_191;
      case 'L':
        v20 = &__kCFBooleanTrue;
        v21 = @"capOverrideFullLogarchive";
        goto LABEL_52;
      case 'P':
        v20 = &__kCFBooleanFalse;
        v21 = @"shouldRunTimeSensitiveTasks";
        goto LABEL_52;
      case 'Q':
      case 'q':
        v20 = &__kCFBooleanTrue;
        v21 = @"quickMode";
        goto LABEL_52;
      case 'R':
        v20 = &__kCFBooleanFalse;
        goto LABEL_26;
      case 'S':
        v20 = &__kCFBooleanTrue;
        v21 = @"disableStreamTar";
        goto LABEL_52;
      case 'V':
        v23 = [NSString stringWithUTF8String:*v17];
        v26 = @"rootPath";
LABEL_43:
        v27 = v10;
        v25 = v23;
        goto LABEL_56;
      case 'X':
        v20 = &__kCFBooleanTrue;
        v21 = @"setNoTimeOut";
        goto LABEL_52;
      case 'b':
        goto LABEL_51;
      case 'c':
        if (sub_100001420())
        {
          v44 = __stderrp;
          v45 = "Platform does not support -c flag.";
          v46 = 34;
          goto LABEL_87;
        }

        v16 = 1;
        if (sub_100001480())
        {
          continue;
        }

        v20 = &__kCFBooleanTrue;
        v21 = @"coSysdiagnose";
LABEL_52:
        v22 = v10;
        goto LABEL_53;
      case 'd':
        [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldRunTimeSensitiveTasks"];
        [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldRunLogGenerationTasks"];
        v30 = &__kCFBooleanTrue;
        v31 = v10;
        goto LABEL_48;
      case 'f':
        v35 = [NSString stringWithUTF8String:*v17];
        if (([v35 hasPrefix:@"."] & 1) != 0 || (objc_msgSend(v35, "hasPrefix:", @"/") & 1) == 0)
        {
          v36 = +[NSFileManager defaultManager];
          v37 = [v36 currentDirectoryPath];
          [v37 stringByAppendingPathComponent:v35];
          v38 = v10;
          v39 = a2;
          v41 = v40 = v17;

          v35 = v41;
          v17 = v40;
          a2 = v39;
          v10 = v38;
        }

        v42 = [v35 stringByResolvingSymlinksInPath];
        v43 = sub_100003EF8(v42);
        [v10 setObject:v43 forKeyedSubscript:@"baseDirectory"];

        v16 = v18;
        continue;
      case 'g':
        [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldRunTimeSensitiveTasks"];
        v28 = &__kCFBooleanTrue;
        v29 = v10;
        goto LABEL_47;
      case 'h':
        sub_100003338();
LABEL_191:
        exit(0);
      case 'k':
        v20 = &__kCFBooleanFalse;
        v21 = @"shouldRemoveTemporaryDirectory";
        goto LABEL_52;
      case 'l':
        byte_1000103D8 = 1;
        continue;
      case 'n':
        v20 = &__kCFBooleanFalse;
        v21 = @"shouldCreateTarBall";
        goto LABEL_52;
      case 'p':
        [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"shouldRunTimeSensitiveTasks"];
        v29 = v10;
        v28 = &__kCFBooleanFalse;
LABEL_47:
        [v29 setObject:v28 forKeyedSubscript:@"shouldRunLogGenerationTasks"];
        v31 = v10;
        v30 = &__kCFBooleanFalse;
LABEL_48:
        [v31 setObject:v30 forKeyedSubscript:@"shouldRunLogCopyTasks"];
        v21 = @"shouldRunOSLogArchive";
        v22 = v10;
        v20 = &__kCFBooleanFalse;
        goto LABEL_53;
      case 'r':
        [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldRunTimeSensitiveTasks"];
        [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldRunLogGenerationTasks"];
        [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldRunLogCopyTasks"];
        v20 = &__kCFBooleanTrue;
LABEL_26:
        v21 = @"shouldRunOSLogArchive";
        goto LABEL_52;
      case 'u':
        [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"disableUIFeedback"];
        byte_1000103D8 = 1;
LABEL_51:
        v20 = &__kCFBooleanFalse;
        v21 = @"shouldDisplayTarBall";
        goto LABEL_52;
      case 'v':
        v20 = &__kCFBooleanTrue;
        v21 = @"verbose";
        goto LABEL_52;
      case 'x':
        v23 = [NSString stringWithUTF8String:*v17];
        [v119 addObject:v23];
        goto LABEL_57;
      default:
        if (v19 != -1)
        {
          goto LABEL_85;
        }

        v47 = [v119 copy];
        if (![v47 count])
        {
          v85 = v47;
          goto LABEL_166;
        }

        v148[0] = @"CLI_REQUEST_TYPE";
        v148[1] = @"REQUEST_DATA";
        v149[0] = @"validateRemoteUUIDs";
        v149[1] = v47;
        v48 = [NSDictionary dictionaryWithObjects:v149 forKeys:v148 count:2];
        v49 = objc_opt_new();
        v129 = 0;
        v50 = sub_10000342C(0xCu, v48, &v129);
        v51 = v129;
        v114 = v51;
        if (v50 && v51)
        {
          v118 = v49;
          v112 = v48;
          v113 = v47;
          v52 = v51;
          v53 = objc_opt_class();
          v54 = objc_opt_class();
          v55 = objc_opt_class();
          v56 = objc_opt_class();
          v57 = [NSSet setWithObjects:v53, v54, v55, v56, objc_opt_class(), 0];
          *v147 = 0;
          data = xpc_dictionary_get_data(v52, "RESPONSE_DATA", v147);

          if (!data)
          {
            v59 = sub_100002FAC();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              sub_100005094();
            }

            v87 = 0;
            v48 = v112;
            v47 = v113;
            v49 = v118;
LABEL_145:

            v121 = v87;
            if (!v87)
            {
              fwrite("Malformed daemon response. Assuming provided remoteUUIDs invalid", 0x40uLL, 1uLL, __stderrp);
              fputc(10, __stderrp);
              obj = sub_100002FAC();
              if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
              {
                sub_100004F68();
              }

              goto LABEL_164;
            }

            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            obj = [v87 allKeys];
            v90 = [obj countByEnumeratingWithState:&v125 objects:v147 count:16];
            if (!v90)
            {
LABEL_164:

              v85 = [v49 copy];
              goto LABEL_165;
            }

            v91 = v90;
            v92 = *v126;
            v93 = v87;
LABEL_148:
            v94 = 0;
            while (1)
            {
              if (*v126 != v92)
              {
                objc_enumerationMutation(obj);
              }

              v95 = *(*(&v125 + 1) + 8 * v94);
              v96 = [v93 objectForKey:v95];
              v97 = v96;
              if (!v96)
              {
                break;
              }

              if (![v96 BOOLValue])
              {
                fprintf(__stderrp, "Remote UUID '%s' not found", [v95 UTF8String]);
                fputc(10, __stderrp);
                v98 = sub_100002FAC();
                if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
                  sub_1000050C8(&v145, v95);
                }

LABEL_158:

                v93 = v121;
                goto LABEL_159;
              }

              [v118 addObject:v95];
LABEL_159:

              if (v91 == ++v94)
              {
                v91 = [obj countByEnumeratingWithState:&v125 objects:v147 count:16];
                if (!v91)
                {
                  v48 = v112;
                  v47 = v113;
                  v49 = v118;
                  goto LABEL_164;
                }

                goto LABEL_148;
              }
            }

            fprintf(__stderrp, "Malformed daemon response. Remote UUID '%s' not found", [v95 UTF8String]);
            fputc(10, __stderrp);
            v98 = sub_100002FAC();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
            {
              sub_10000511C(&v146, v95);
            }

            goto LABEL_158;
          }

          v59 = [NSData dataWithBytes:data length:*v147];
          if (!v59)
          {
            v61 = sub_100002FAC();
            v49 = v118;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              sub_100005060();
            }

            v88 = 0;
            goto LABEL_144;
          }

          *&v125 = 0;
          v60 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v57 fromData:v59 error:&v125];
          v61 = v125;
          v49 = v118;
          if (v60)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v62 = v60;
LABEL_143:
              v88 = v62;

LABEL_144:
              v48 = v112;
              v47 = v113;
              v87 = v88;
              goto LABEL_145;
            }

            v89 = sub_100002FAC();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              sub_100004F9C();
            }
          }

          else
          {
            v89 = sub_100002FAC();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              sub_100004FD0(v61);
            }
          }

          v62 = 0;
          goto LABEL_143;
        }

        fwrite("Malformed daemon response. Assuming provided remoteUUIDs invalid", 0x40uLL, 1uLL, __stderrp);
        fputc(10, __stderrp);
        v86 = sub_100002FAC();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          sub_100004F68();
        }

        v85 = [v49 copy];
LABEL_165:

LABEL_166:
        if ([v85 count])
        {
          [v10 setObject:v85 forKeyedSubscript:@"remoteUUIDs"];
        }

        if ((v18 & 1) == 0)
        {
          goto LABEL_181;
        }

        *&v125 = 0;
        v99 = sub_10000342C(0xCu, &off_10000CED0, &v125);
        v100 = v125;
        v101 = v100;
        if (v99 && v100)
        {
          uint64 = xpc_dictionary_get_uint64(v100, "RESPONSE_DATA");
          v103 = sub_100002FAC();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            *v147 = 134217984;
            *&v147[4] = uint64;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "isAutomaticCoSysdiagnosePossible: received response from server '%llu'", v147, 0xCu);
          }

          if (uint64)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v104 = sub_100002FAC();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            sub_100005170();
          }
        }

        if (![v85 count])
        {
          v105 = [v10 objectForKeyedSubscript:@"shouldCollectAllTrusted"];

          if (!v105)
          {
            fwrite("No connected devices found. Co-sysdiagnose options not available.", 0x41uLL, 1uLL, __stderrp);
            fputc(10, __stderrp);
            v106 = sub_100002FAC();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              sub_1000051A4();
            }

            v63 = 69;
            goto LABEL_183;
          }
        }

LABEL_180:
        [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"coSysdiagnoseOnly"];
LABEL_181:
        if (optind != v115)
        {
          v63 = 0;
          v64 = v117;
          goto LABEL_185;
        }

        v106 = [NSString stringWithCString:a2[optind] encoding:4];
        [v10 setObject:v106 forKeyedSubscript:@"pidOrProcess"];
        v63 = 0;
LABEL_183:
        v64 = v117;

LABEL_185:
        goto LABEL_90;
    }
  }
}

id sub_100002FAC()
{
  if (qword_1000103E0 != -1)
  {
    sub_1000052CC();
  }

  v1 = off_100010390;

  return v1;
}

size_t sub_100002FF0(uint64_t a1, void *a2)
{
  v3 = sdProgressPercent;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:sdProgressPhase];

  v9 = [v8 unsignedLongLongValue];
  if (v9 <= 2)
  {
    if (!v9)
    {
      v10 = __stdoutp;
      v11 = "\nInvalid Sysdiagnose state. Aborting.\n";
      v12 = 38;
      goto LABEL_25;
    }

    if (v9 != 1)
    {
      goto LABEL_14;
    }

    v13 = __stdoutp;
    v14 = "Progress:\n";
    v15 = 10;
    goto LABEL_13;
  }

  if (v9 != 3)
  {
    if (v9 != 4)
    {
      if (v9 == 6)
      {
        v10 = __stdoutp;
        v11 = "\nCo-sysdiagnose Transfer Timed out\n";
        v12 = 35;
LABEL_25:

        return fwrite(v11, v12, 1uLL, v10);
      }

      goto LABEL_14;
    }

    v13 = __stdoutp;
    v14 = "\nCo-sysdiagnose transfer progress:\n";
    v15 = 35;
LABEL_13:
    fwrite(v14, v15, 1uLL, v13);
LABEL_14:
    v29 = 0;
    v18 = *(a1 + 32);
    *&v19 = 0x5F5F5F5F5F5F5F5FLL;
    *(&v19 + 1) = 0x5F5F5F5F5F5F5F5FLL;
    *__s = v19;
    v26 = v19;
    v27 = v19;
    *v28 = v19;
    *&v28[14] = v19;
    v24 = 0;
    *__str = 0;
    v20 = strlen(__s);
    v21 = (v7 * v20 / 100.0);
    if (v21 >= 1)
    {
      memset(__s, 124, v21);
    }

    snprintf(__str, 5uLL, "%02d%%", v7);
    if (v20 >= 0x2D)
    {
      strlen(__str);
      __memcpy_chk();
    }

    fprintf(__stdoutp, "\x1B[J\x1B[2K[%s]\r", __s);
    if (v7 > 99.9 && v18 != 0)
    {
      fwrite("\nCompressing final diagnostics\n", 0x1FuLL, 1uLL, __stdoutp);
    }

    return fflush(__stdoutp);
  }

  v16 = __stdoutp;

  return fputc(10, v16);
}

void sub_1000032F4(id a1)
{
  off_100010390 = os_log_create("com.apple.sysdiagnose", "cli");

  _objc_release_x1();
}

uint64_t sub_100003338()
{
  v0 = getprogname();
  v1 = +[NSProcessInfo processInfo];
  v2 = [v1 arguments];
  v3 = [v2 objectAtIndex:0];
  v4 = [v3 lastPathComponent];
  v5 = [v4 UTF8String];

  if (sub_100000FE0())
  {
    v6 = off_100010388;
  }

  else
  {
    v6 = "";
  }

  v7 = sub_100001878();
  printf("%s\nUSAGE: %s [args] [process_name | pid]\n          -h                      Display this help.\n          -H                      Print the path to the default sysdiagnose output directory.\n          -v                      Enable verbose mode to display the container information as it executes.\n          -f results_directory    Specify the directory where results will be stored.\n          -A archive_name         Specify the name of the archive created in the results directory.\n          -V volume_path          Specify the root volume for sysdiagnose to run on.\n          -C, --compression type  Specify the compression type. It is an error to use this with the -n flag. Valid options are:\n                                  yaa: use parallel compression\n                                  tar: use tar compression\n                                  no-compression: don't compress the output. Identical to -n\n                                  default: will use the system default. Currently defaults to tar\n          -n                      Do not tar the resulting sysdiagnose directory.\n          -k                      Do not remove the temporary directory.\n          -F                      Get feedback data.\n          -S                      Disable streaming to tarball.\n          -u                      Disable UI feedback.\n          -Q,                     Skip footprint.\n          -q,                     Same as -Q\n          -b                      Do not show a Finder window upon completion.\n          -p                      Only run time-sensitive collections; disregards previous -d or -r flags.\n          -P                      Do not run time-sensitive collections.\n          -g                      Only run log generation collections; disregards previous -p or -r flags.\n          -G                      Do not run log generation collections.\n          -d                      Only run log copying collections; disregards previous -p or -r flags.\n          -D                      Do not run log copying collections.\n          -r                      Collect only log archive; disregards previous -p or -d flags.\n          -R                      Do not collect log archive.\n          [process_name | pid]    If a single process appears to be slowing down the system,\n                                  passing in the process name or ID as the argument gathers\n                                  additional process-specific diagnostic data; Specify only ONE process\n                                  at a time -- specifying multiple processes is not supported.\n%s\nDESCRIPTION:\n  %s gathers system diagnostic information helpful in investigating system performance issues.\n  A great deal of information is harvested, spanning system state and configuration. The data is stored /var/tmp directory.\n  sysdiagnose needs to be run as root. To cancel an in-flight sysdiagnose triggered via command line interface, press Ctrl-\\.\n  %s is automatically triggered when the following key chord is pressed: Control-Option-Command-Shift-Period.\nWHAT %s COLLECTS:\n  - A spindump of the system\n  - Several seconds of top output\n  - Data about kernel zones\n  - Status of loaded kernel extensions\n  - Resident memory usage of user processes\n  - Recent system logs\n  - A System Profiler report\n  - Recent crash reports\n  - Disk usage information\n  - I/O Kit registry information\n  - Network status\n  - If a specific process is supplied as an argument, will collect:\n      - A list of malloc-allocated buffers in the process's heap\n      - Data about unreferenced malloc buffers in the process's memory\n      - Data about the virtual memory regions allocated in the process\n", [v7 UTF8String], v5, v6, v0, v0, v0);

  return putchar(10);
}

BOOL sub_10000342C(unsigned int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "REQUEST_TYPE", a1);
  if (v5)
  {
    v35 = a3;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = [v5 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      v11 = &MGCopyAnswer_ptr;
      v12 = &MGCopyAnswer_ptr;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          v15 = [v5 objectForKey:v14];
          v16 = v11[113];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            xpc_dictionary_set_BOOL(v6, [v14 UTF8String], objc_msgSend(v15, "BOOLValue"));
          }

          else
          {
            v17 = v12[115];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              xpc_dictionary_set_string(v6, [v14 UTF8String], objc_msgSend(v15, "UTF8String"));
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
                if (v18)
                {
                  v19 = [v14 UTF8String];
                  v20 = [v18 bytes];
                  v21 = [v18 length];
                  v22 = v20;
                  v11 = &MGCopyAnswer_ptr;
                  xpc_dictionary_set_data(v6, v19, v22, v21);
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v23 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
                  if (v23)
                  {
                    xpc_dictionary_set_data(v6, [v14 UTF8String], -[NSObject bytes](v23, "bytes"), -[NSObject length](v23, "length"));
                  }
                }

                else
                {
                  fprintf(__stderrp, "Undefined type in the metadata for key '%s': not including in request", [v14 UTF8String]);
                  fputc(10, __stderrp);
                  v23 = sub_100002FAC();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000052E0(&v40, v14);
                  }
                }

                v11 = &MGCopyAnswer_ptr;
              }

              v12 = &MGCopyAnswer_ptr;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v9);
    }

    a3 = v35;
  }

  if (qword_1000103F0 != -1)
  {
    sub_100005334();
  }

  v24 = qword_1000103E8;
  v25 = xpc_connection_send_message_with_reply_sync(v24, v6);
  if (xpc_get_type(v25) == &_xpc_type_dictionary)
  {
    uint64 = xpc_dictionary_get_uint64(v25, "RESPONSE_TYPE");
    v31 = xpc_dictionary_get_uint64(v25, "FAILURE_REASON");
    v29 = uint64 == 1 || v31 == 7;
    if (a3 && v29)
    {
      v33 = v25;
      *a3 = v25;
      v29 = 1;
    }
  }

  else
  {
    v26 = __stderrp;
    string = xpc_dictionary_get_string(v25, _xpc_error_key_description);
    fprintf(v26, "Received error from the daemon: %s", string);
    fputc(10, __stderrp);
    v28 = sub_100002FAC();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10000535C(v25, _xpc_error_key_description);
    }

    v29 = 0;
  }

  return v29;
}

void sub_1000038C0(id a1)
{
  v4 = dispatch_get_global_queue(33, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.sysdiagnose.service.xpc", v4, 2uLL);
  xpc_connection_set_event_handler(mach_service, &stru_10000C6B0);
  v2 = qword_1000103E8;
  qword_1000103E8 = mach_service;
  v3 = mach_service;

  xpc_connection_resume(qword_1000103E8);
}

void sub_10000395C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_error)
  {
    v3 = __stderrp;
    string = xpc_dictionary_get_string(v2, _xpc_error_key_description);
    fprintf(v3, "XPC connection to daemon '%s' received error: %s.", "com.apple.sysdiagnose.service.xpc", string);
    fputc(10, __stderrp);
    v5 = sub_100002FAC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000053E0(v2, _xpc_error_key_description);
    }
  }
}

void sub_100003A24(id a1)
{
  queue = dispatch_get_global_queue(25, 0);
  signal(2, 1);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 2uLL, 0, queue);
  v2 = qword_100010400;
  qword_100010400 = v1;

  dispatch_source_set_event_handler(qword_100010400, &stru_10000C6F0);
  dispatch_resume(qword_100010400);
  signal(15, 1);
  signal(3, 1);
  signal(18, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, queue);
  v4 = qword_100010410;
  qword_100010410 = v3;

  dispatch_source_set_event_handler(qword_100010410, &stru_10000C710);
  dispatch_resume(qword_100010410);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0x12uLL, 0, queue);
  v6 = qword_100010408;
  qword_100010408 = v5;

  dispatch_source_set_event_handler(qword_100010408, &stru_10000C710);
  dispatch_resume(qword_100010408);
  v7 = dispatch_source_create(&_dispatch_source_type_signal, 3uLL, 0, queue);
  v8 = qword_100010418;
  qword_100010418 = v7;

  dispatch_source_set_event_handler(qword_100010418, &stru_10000C710);
  dispatch_resume(qword_100010418);
}

void sub_100003B9C(id a1)
{
  if (!sub_10000342C(6u, 0, 0))
  {
    fwrite("Sysdiagnose request to daemon for user interrupt failed", 0x37uLL, 1uLL, __stderrp);
    fputc(10, __stderrp);
    v1 = sub_100002FAC();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100005478();
    }
  }
}

void sub_100003C20(id a1)
{
  printf("\nCleaning up can take up to a minute...");
  putchar(10);
  if (sub_10000342C(4u, 0, 0))
  {
    printf("Sysdiagnose cancelled successfully.");
    putchar(10);
    v1 = sub_100002FAC();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Sysdiagnose cancelled successfully.", buf, 2u);
    }

    exit(0);
  }

  fwrite("Encountered error during user-initiated cancellation.", 0x35uLL, 1uLL, __stderrp);
  fputc(10, __stderrp);
  v2 = sub_100002FAC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Encountered error during user-initiated cancellation.", v3, 2u);
  }

  exit(1);
}

id sub_100003D34(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 intValue];
  if (v5)
  {
    v6 = [NSNumber numberWithInt:v5];
    v7 = sub_1000012D4();
  }

  else
  {
    v6 = [v4 lastPathComponent];
    v7 = [v3 isEqualToString:v6];
  }

  v8 = v7;

  return v8;
}

void sub_100003DCC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_100003DF4(int a1, id a2)
{

  return a2;
}

void sub_100003E28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

__CFString *sub_100003E48(void *a1)
{
  v1 = a1;
  v2 = +[OSASystemConfiguration sharedInstance];
  v3 = [v2 pathSubmission];

  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000054AC();
    }

    v3 = @"/private/var/mobile/Library/Logs/CrashReporter";
  }

  if (v1)
  {
    v4 = [(__CFString *)v3 stringByAppendingPathComponent:v1];

    v3 = v4;
  }

  return v3;
}

id sub_100003EF8(void *a1)
{
  v1 = a1;
  v2 = [NSArray arrayWithObjects:@"/var", @"/tmp", @"/etc", 0];
  v3 = v1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
  v5 = v3;
  if (v4)
  {
    v6 = v4;
    v7 = *v13;
    v5 = v3;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v2);
        }

        if ([v3 hasPrefix:*(*(&v12 + 1) + 8 * i)])
        {
          v16[0] = @"/private";
          v16[1] = v3;
          v9 = [NSArray arrayWithObjects:v16 count:2];
          v10 = [NSString pathWithComponents:v9];

          v5 = v10;
        }
      }

      v6 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  return v5;
}

void sub_100004104(id a1)
{
  v1 = qword_100010420;
  qword_100010420 = &off_10000CEF8;
}

id sub_100004398()
{
  if (qword_100010430 != -1)
  {
    sub_100005508();
  }

  v1 = qword_100010438;

  return v1;
}

BOOL sub_1000043DC(id a1, NSURL *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100004398();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000551C(v3, v4);
  }

  return 1;
}

void sub_100004BC0(id a1)
{
  qword_100010438 = os_log_create("com.apple.sysdiagnose.CacheDelete", "enumerator");

  _objc_release_x1();
}

void sub_100004CD0(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to create IORegistryEntryCreateIterator: %d", v1, 8u);
}

void sub_100004D50(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "IORegistryEntryGetName: %d", buf, 8u);
}

void sub_100004E1C(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_100001934();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100004ECC(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_100001934();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100004FD0(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100003E18();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000050C8(int a1, void *a2)
{
  sub_100003DF4(a1, a2);
  v5 = [v3 UTF8String];
  *v4 = 136315138;
  *v2 = v5;
  sub_100003E28(&_mh_execute_header, v6, v7, "Remote UUID '%s' not found");
}

void sub_10000511C(int a1, void *a2)
{
  sub_100003DF4(a1, a2);
  v5 = [v3 UTF8String];
  *v4 = 136315138;
  *v2 = v5;
  sub_100003E28(&_mh_execute_header, v6, v7, "Malformed daemon response. Remote UUID '%s' not found");
}

void sub_100005200(void *a1)
{
  v1 = [a1 localizedDescription];
  [v1 UTF8String];
  sub_100003E18();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000052E0(int a1, void *a2)
{
  sub_100003DF4(a1, a2);
  v5 = [v3 UTF8String];
  *v4 = 136315138;
  *v2 = v5;
  sub_100003E28(&_mh_execute_header, v6, v7, "Undefined type in the metadata for key '%s': not including in request");
}

void sub_10000535C(void *a1, const char *a2)
{
  xpc_dictionary_get_string(a1, a2);
  sub_100003E18();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000053E0(void *a1, const char *a2)
{
  xpc_dictionary_get_string(a1, a2);
  sub_100003E18();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10000551C(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 136446210;
  v5 = [v3 UTF8String];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CacheEnumerator error: %{public}s", &v4, 0xCu);
}