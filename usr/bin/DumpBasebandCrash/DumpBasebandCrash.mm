id sub_1000008D0(uint64_t a1)
{
  v40 = 0;
  v1 = [[NSScanner alloc] initWithString:a1];
  if ([v1 isAtEnd])
  {
    v28 = 0;
    v26 = 0;
    v22 = 0;
    v23 = 0;
    v27 = 0;
    v32 = 0;
    v20 = 0;
    v30 = 0;
    v2 = 0;
    v33 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v33 = 0;
    v2 = 0;
    v30 = 0;
    v20 = 0;
    v32 = 0;
    v27 = 0;
    v24 = 0;
    v22 = 0;
    v23 = 0;
    v26 = 0;
    v28 = 0;
    do
    {
      v39 = 0;
      [v1 scanUpToString:@"\n" intoString:&v39];
      v4 = [NSScanner alloc];
      v5 = [v4 initWithString:v39];
      if ([v5 scanString:@"Date=" intoString:0])
      {
        [v5 scanUpToString:@";" intoString:&v40];
      }

      else
      {
        [v5 scanUpToString:@"]" intoString:0];
        if ([v5 scanString:@"]" intoString:0])
        {
          v38 = 0;
          [v5 scanUpToString:@":" intoString:&v38];
          if ([v38 isEqualToString:@"reset"])
          {
            v37 = 0;
            v36 = 0;
            if ([v5 scanString:@": reason=" intoString:0])
            {
              [v5 scanUpToString:@";" intoString:&v36];
              if (([v36 isEqualToString:@"baseband crash"] & 1) != 0 || objc_msgSend(v36, "rangeOfString:", @"modem reset") != 0x7FFFFFFFFFFFFFFFLL)
              {
                v3 = (v3 + 1);
                v6 = 1;
              }

              else
              {
                v6 = 0;
                v24 |= [v36 rangeOfString:@"FTO"] != 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            else
            {
              [v5 scanUpToString:@";" intoString:0];
              v6 = 0;
            }

            [v5 scanString:@";uptime=" intoString:0];
            [v5 scanInt:&v37];
            ++v33;
            v8 = v37;
            if (!v6)
            {
              v8 = 0;
            }

            v2 += v8;
          }

          else if ([v38 isEqualToString:@"disconnect"])
          {
            v36 = 0;
            v37 = 0;
            v35 = 34;
            v34 = 0;
            [v5 scanUpToString:@"duration" intoString:0];
            if ([v5 scanString:@"duration=" intoString:0])
            {
              [v5 scanInt:&v37];
            }

            [v5 scanUpToString:@"cause" intoString:0];
            if ([v5 scanString:@"cause=" intoString:0])
            {
              [v5 scanUpToString:@";" intoString:&v36];
            }

            v7 = [v5 scanLocation];
            [v5 scanUpToString:@"txPower" intoString:0];
            if ([v5 scanString:@"txPower=" intoString:0])
            {
              [v5 scanInt:&v35 + 4];
            }

            else
            {
              [v5 setScanLocation:v7];
            }

            v9 = [v5 scanLocation];
            [v5 scanUpToString:@"maxTxPower" intoString:0];
            if ([v5 scanString:@"maxTxPower=" intoString:0])
            {
              [v5 scanInt:&v35];
            }

            else
            {
              [v5 setScanLocation:v9];
            }

            [v5 scanUpToString:@"rat" intoString:0];
            if ([v5 scanString:@"rat=" intoString:0])
            {
              [v5 scanInt:&v34];
            }

            if (([v36 isEqualToString:@"kNoError"] & 1) != 0 || (v24 & (v37 == 0)) != 1)
            {
              ++v30;
              v32 += [v36 isEqualToString:@"kNoError"] ^ 1;
              if (([v36 isEqualToString:@"kNoError"] & 1) == 0 && (objc_msgSend(v36, "isEqualToString:", @"kTemporaryFailure") & 1) == 0 && (objc_msgSend(v36, "isEqualToString:", @"kCongestion") & 1) == 0 && (objc_msgSend(v36, "isEqualToString:", @"kResourcesUnavailable") & 1) == 0 && (objc_msgSend(v36, "isEqualToString:", @"kCallEndFade") & 1) == 0 && (objc_msgSend(v36, "isEqualToString:", @"kNoNetworkService") & 1) == 0)
              {
                if (v34 == 1001)
                {
                  ++HIDWORD(v22);
                }

                else if (v34 == 1000)
                {
                  LODWORD(v22) = v22 + 1;
                }

                else
                {
                  ++v20;
                }
              }
            }

            else
            {
              ++v27;
            }

            if (HIDWORD(v35) == v35)
            {
              ++v28;
            }

            else if (HIDWORD(v35) == v35 - 1)
            {
              ++v26;
            }

            else if (HIDWORD(v35) == v35 - 2)
            {
              LODWORD(v23) = v23 + 1;
            }

            else
            {
              v10 = HIDWORD(v23);
              if (HIDWORD(v35) == v35 - 3)
              {
                v10 = HIDWORD(v23) + 1;
              }

              HIDWORD(v23) = v10;
            }

            v24 = 0;
          }
        }
      }
    }

    while (![v1 isAtEnd]);
  }

  v25 = [NSArray alloc];
  v19 = kCFProblemTypeBasebandStats;
  v18 = [NSNumber numberWithInt:v3];
  if (v3)
  {
    v11 = (v2 / v3);
  }

  else
  {
    v11 = 0;
  }

  v17 = [NSNumber numberWithInt:v11];
  v31 = [NSNumber numberWithInt:v30];
  v21 = [NSNumber numberWithInt:v20];
  v29 = [NSNumber numberWithInt:v28];
  v12 = [NSNumber numberWithInt:v26];
  v13 = [NSNumber numberWithInt:v23];
  v14 = [NSNumber numberWithInt:HIDWORD(v23)];
  v15 = [v25 initWithObjects:{v19, v18, v17, v31, v21, v29, v12, v13, v14, v40, +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v33), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v32), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v27), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v22), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", HIDWORD(v22)), 0}];

  return v15;
}

uint64_t sub_100000F9C(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if ([objc_msgSend(a2 "pathExtension")])
  {
    v4 = [v4 stringByDeletingPathExtension];
  }

  v6 = [v4 rangeOfString:@"stats" options:2];
  v7 = kCFProblemTypeBasebandStats;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = kCFProblemTypeBaseband;
  }

  else
  {
    v8 = kCFProblemTypeBasebandStats;
  }

  v9 = [objc_msgSend(a1 stringByAppendingString:{v4), "stringByAppendingPathExtension:", @"plist"}];
  v10 = [[NSString alloc] initWithData:a3 encoding:4];
  if (!v10)
  {
    v10 = [[NSString alloc] initWithData:a3 encoding:1];
    if (!v10)
    {
      v10 = [[NSString alloc] initWithString:@"Invalid data in log file."];
    }
  }

  v11 = v10;
  if (v7 == v8)
  {
    v12 = sub_1000008D0(v10);
    logEventForAppleCare();
  }

  v13 = MGCopyAnswer();
  v14 = kCRProblemReportProblemTypeKey;
  v15 = kCRProblemReportDescriptionKey;
  v16 = kCRProblemReportCrashReporterKey;
  SysIDWithDescription = GetSysIDWithDescription();
  v18 = kCRProblemReportSystemIDKey;
  v19 = [+[OSASystemConfiguration sharedInstance](OSASystemConfiguration productNameVersionBuildString];
  [[NSDictionary writeToFile:v8 atomically:v14 dictionaryWithObjectsAndKeys:v11, v15, v13, v16, SysIDWithDescription, v18, v19, kCRProblemReportOSVersionKey, 0], "writeToFile:atomically:", v9, 1];

  return 1;
}

uint64_t sub_100001178(void *a1, void *a2)
{
  v4 = [a1 rangeOfCharacterFromSet:{+[NSCharacterSet decimalDigitCharacterSet](NSCharacterSet, "decimalDigitCharacterSet")}];
  v5 = [a2 rangeOfCharacterFromSet:{+[NSCharacterSet decimalDigitCharacterSet](NSCharacterSet, "decimalDigitCharacterSet")}];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  v7 = v5;
  v8 = [a1 substringFromIndex:v4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v9 = v8;
  v10 = [a2 substringFromIndex:v7];

  return [v9 compare:v10];
}

void sub_100001248(void *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v4 = +[NSFileManager defaultManager];
    v22 = 0;
    v5 = [(NSFileManager *)v4 contentsOfDirectoryAtPath:a1 error:&v22];
    if (v5)
    {
      v6 = v5;
      v7 = [(NSArray *)v5 count];
      v8 = [(NSArray *)v6 sortedArrayUsingFunction:sub_100001178 context:0];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (v7 <= a2)
          {
            break;
          }

          v13 = [a1 stringByAppendingPathComponent:*(*(&v18 + 1) + 8 * v12)];
          if ([(NSFileManager *)v4 removeItemAtPath:v13 error:&v22])
          {
            --v7;
          }

          else
          {
            v14 = qword_100008130;
            v15 = [v13 UTF8String];
            asl_log(v14, 0, 3, "Failed remove log '%s' (%s)", v15, [objc_msgSend(v22 "description")]);
          }

          if (v10 == ++v12)
          {
            v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
            if (v10)
            {
              goto LABEL_5;
            }

            return;
          }
        }
      }
    }

    else
    {
      v16 = qword_100008130;
      v17 = [a1 UTF8String];
      asl_log(v16, 0, 3, "Failed to get dir contents at '%s' (%s)", v17, [objc_msgSend(v22 "description")]);
    }
  }
}

id sub_100001438()
{
  v0 = +[NSFileManager defaultManager];
  v1 = [-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory 8uLL];

  return [(NSFileManager *)v0 fileExistsAtPath:v1];
}

void sub_10000149C()
{
  if ((sub_100001438() & 1) == 0)
  {
    v0 = objc_alloc_init(NSData);
    [v0 writeToFile:objc_msgSend(-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory atomically:{8uLL, 1), "lastObject"), "stringByAppendingPathComponent:", @"DBCShutdownCookie", 0}];
  }
}

BOOL sub_100001520()
{
  v0 = +[NSFileManager defaultManager];
  v1 = [-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory 8uLL];

  return [(NSFileManager *)v0 removeItemAtPath:v1 error:0];
}

uint64_t start()
{
  v0 = objc_alloc_init(NSAutoreleasePool);
  v51 = 0;
  qword_100008130 = asl_open("DumpBasebandCrash", "Crash Reporter", 0);
  sleep(5u);
  asl_log(qword_100008130, 0, 7, "Launched DumpBasebandCrash");
  v1 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:@"/var/wireless/Library/Logs/Baseband/", &v51];
  if (!v1)
  {
    v2 = qword_100008130;
    v3 = [@"/var/wireless/Library/Logs/Baseband/" UTF8String];
    asl_log(v2, 0, 3, "Failed to get log contents at '%s' (%s)", v3, [objc_msgSend(v51 "description")]);
  }

  v4 = getpwnam("mobile");
  if (v4)
  {
    v5 = v4;
    v6 = getuid();
    v7 = seteuid(v5->pw_uid);
    v8 = 48;
    if (v7 != -1)
    {
      LOBYTE(keyExistsAndHasValidFormat.st_dev) = 0;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"BasebandLogLimit", @"com.apple.CrashReporter", &keyExistsAndHasValidFormat);
      if (LOBYTE(keyExistsAndHasValidFormat.st_dev))
      {
        v8 = AppIntegerValue;
      }

      else
      {
        v8 = 48;
      }

      seteuid(v6);
    }
  }

  else
  {
    v8 = 48;
  }

  endpwent();
  v43 = v0;
  if (sub_100001438())
  {
    asl_log(qword_100008130, 0, 3, "DumpBasebandCrash found old shutdown cookie");
    if (v8 != -1)
    {
      sub_100001248(@"/var/wireless/Library/Logs/Baseband/", 0);
    }

    sub_100001520();
  }

  else
  {
    sub_10000149C();
  }

  v10 = getpwnam("_wireless");
  if (v10)
  {
    v11 = v10;
    v12 = getuid();
    if (seteuid(v11->pw_uid) != -1)
    {
      memset(&keyExistsAndHasValidFormat, 0, sizeof(keyExistsAndHasValidFormat));
      if (stat("/var/wireless/Library/Logs/CrashReporter/Baseband", &keyExistsAndHasValidFormat) == -1)
      {
        mkdir("/var/wireless/Library/Logs", 0x1EDu);
        mkdir("/var/wireless/Library/Logs/CrashReporter", 0x1EDu);
        if (mkdir("/var/wireless/Library/Logs/CrashReporter/Baseband", 0x1EDu))
        {
          asl_log(qword_100008130, 0, 3, "Failed to create CrashReporter/Baseband directory");
        }
      }

      seteuid(v12);
    }
  }

  endpwent();
  if (v8 == -1)
  {
    asl_log(qword_100008130, 0, 5, "Saving all baseband logs");
  }

  else
  {
    if ([(NSArray *)v1 count]<= v8)
    {
      v13 = v8 - [(NSArray *)v1 count];
    }

    else
    {
      sub_100001248(@"/var/wireless/Library/Logs/Baseband/", v8);
      v13 = 0;
    }

    sub_100001248(@"/var/wireless/Library/Logs/CrashReporter/Baseband/", v13);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v14 = [(NSArray *)v1 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v44 = 0;
    v16 = @"/var/wireless/Library/Logs/Baseband/";
    v17 = @"txt";
    v18 = *v47;
    v45 = *v47;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(v1);
        }

        v20 = *(*(&v46 + 1) + 8 * i);
        v21 = [(__CFString *)v16 stringByAppendingPathComponent:v20];
        v22 = [v21 fileSystemRepresentation];
        if ([objc_msgSend(v21 "pathExtension")])
        {
          v23 = fopen(v22, "r");
          if (v23)
          {
            v24 = v23;
            v25 = v15;
            v26 = v17;
            v27 = v16;
            v28 = v1;
            fseek(v23, 0, 2);
            v29 = ftell(v24);
            rewind(v24);
            v30 = malloc_type_malloc(v29, 0x100004077774924uLL);
            if (!v30)
            {
              asl_log(qword_100008130, 0, 3, "Failed de-nullification of '%s'", v22);
              asl_close(qword_100008130);
              exit(1);
            }

            v31 = v30;
            fread(v30, 1uLL, v29, v24);
            if (v29 >= 1)
            {
              v32 = v31;
              v33 = v29;
              do
              {
                if (!*v32)
                {
                  *v32 = 46;
                }

                ++v32;
                --v33;
              }

              while (v33);
            }

            v34 = [[NSMutableData alloc] initWithBytesNoCopy:v31 length:v29 freeWhenDone:1];
            if (v34)
            {
              sub_100000F9C(@"/var/wireless/Library/Logs/CrashReporter/Baseband/", v20, v34);
            }

            else
            {
              asl_log(qword_100008130, 0, 3, "Failed to write baseband log '%s' to disk", v22);
              ++v44;
            }

            v1 = v28;

            v16 = v27;
            if (unlink(v22))
            {
              v40 = qword_100008130;
              v41 = __error();
              asl_log(v40, 0, 3, "Failed to remove baseband log '%s' (errno=%d)", v22, *v41);
            }

            v17 = v26;
            v15 = v25;
            v18 = v45;
          }

          else
          {
            v37 = qword_100008130;
            v38 = __error();
            v39 = strerror(*v38);
            asl_log(v37, 0, 3, "fopen of '%s' failed with %s", v22, v39);
          }
        }

        else
        {
          v35 = [objc_msgSend(@"/var/wireless/Library/Logs/CrashReporter/Baseband/" stringByAppendingString:{v20), "fileSystemRepresentation"}];
          rename(v22, v35, v36);
        }
      }

      v15 = [(NSArray *)v1 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v15);
  }

  else
  {
    v44 = 0;
  }

  sub_100001520();
  asl_close(qword_100008130);

  return v44;
}