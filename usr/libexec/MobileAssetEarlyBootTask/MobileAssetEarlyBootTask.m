void sub_1000008D8(void *a1)
{
  v6 = a1;
  if (qword_100008080 != -1)
  {
    sub_100000DC4();
  }

  v1 = objc_autoreleasePoolPush();
  v2 = +[NSDate date];
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"HH:mm:ss:SSS"];
  v4 = [v3 stringFromDate:v2];
  v5 = [NSString stringWithFormat:@"%@: [MobileAssetEarlyBootTask]: %@", v4, v6];
  fprintf(__stderrp, "%s\n", [v5 UTF8String]);
  if (qword_100008088)
  {
    fprintf(qword_100008088, "%s\n", [v5 UTF8String]);
  }

  objc_autoreleasePoolPop(v1);
}

void sub_100000A1C(id a1)
{
  v5 = +[NSFileManager defaultManager];
  if ([v5 fileExistsAtPath:@"/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log"])
  {
    v1 = [v5 attributesOfItemAtPath:@"/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log" error:0];
    v2 = v1;
    if (v1 && [v1 fileSize] > 0xA00000)
    {
      v3 = [NSFileHandle fileHandleForWritingAtPath:@"/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log"];
      v4 = v3;
      if (v3)
      {
        [v3 truncateFileAtOffset:0];
        [v4 closeFile];
      }
    }

    qword_100008088 = fopen("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log", "a+");
  }

  _objc_release_x1();
}

uint64_t start()
{
  sub_1000008D8(@"============================Running after reboot============================");
  size = 0;
  if (MGGetBoolAnswer())
  {
    v0 = [NSString stringWithFormat:@"%s/overrides.plist", "/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask"];
    v1 = [NSDictionary dictionaryWithContentsOfFile:v0];
    v2 = v1;
    if (v1)
    {
      v3 = [v1 objectForKeyedSubscript:@"FakeDeviceRecoveryMode"];

      if (v3)
      {
        sub_1000008D8(@"MSUEarlyBootTask: Assuming DeviceRecoveryMode due to override");

LABEL_11:
        v6 = @"Nothing to do here. Goodbye!";
        goto LABEL_22;
      }
    }
  }

  if (sysctlbyname("hw.osenvironment", 0, &size, 0, 0) == -1)
  {
    v7 = __error();
    v8 = [NSString stringWithFormat:@"Failed to determine size of buffer to read OSEnvironement value(%s). Assuming running in normal mode", strerror(*v7)];
    sub_1000008D8(v8);
  }

  else
  {
    v4 = malloc_type_malloc(size, 0x963EEBC2uLL);
    if (v4)
    {
      v5 = v4;
      bzero(v4, size);
      if (sysctlbyname("hw.osenvironment", v5, &size, 0, 0) == -1)
      {
        v9 = *__error();
        v10 = __error();
        v11 = [NSString stringWithFormat:@"Unable to determine OSEnvironment. Assuming running in normal mode: %d:(%s)", v9, strerror(*v10)];
        sub_1000008D8(v11);
      }

      else if (!strncmp(v5, "device-recovery", 0xFuLL))
      {
        sub_1000008D8(@"Running in DeviceRecoveryEnvironment");
        free(v5);
        goto LABEL_11;
      }

      free(v5);
    }

    else
    {
      sub_1000008D8(@"Failed to allocate buffer to read OSEnvironment value. Assuming running in normal mode");
    }
  }

  sub_1000008D8(@"Attempting to graft secure assets from previous boot session");
  v12 = [[SecureMAHelper alloc] initWithLogger:sub_1000008D8];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 graftSecureAssetsFromLastBootSession];
    v15 = "Failed to graft";
    if (v14)
    {
      v15 = "Successfully grafted";
    }

    v16 = [NSString stringWithFormat:@"%s secure assets from previous boot session", v15];
    sub_1000008D8(v16);
  }

  else
  {
    sub_1000008D8(@"MSUEarlyBootTask: Failed to allocate secureAssetHelper to graft SMA's");
  }

  v6 = @"============================Run completed============================";
LABEL_22:
  sub_1000008D8(v6);
  if (qword_100008088)
  {
    fflush(qword_100008088);
    fclose(qword_100008088);
  }

  return 0;
}