uint64_t MCCopyCheckpoint()
{
  for (i = 4; ; --i)
  {
    if (_cacheValid())
    {
      v1 = [objc_alloc(MEMORY[0x29EDB8DC0]) initWithContentsOfFile:@"/var/mobile/Library/Caches/Checkpoint.plist"];
      v2 = v1;
      if (i != 4 || v1)
      {
        if (v1)
        {
          return v2;
        }
      }

      else
      {
        v3 = objc_autoreleasePoolPush();
        v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/MobileCheckpoint.m"];
        v5 = [v4 lastPathComponent];

        v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:%d: cache is invalid, asking server to rebuild it", v5, 70];
        syslog(5, "%s", [v6 UTF8String]);

        objc_autoreleasePoolPop(v3);
      }
    }

    v7 = objc_autoreleasePoolPush();
    v8 = MOXPCTransportOpen();
    if (v8)
    {
      break;
    }

    objc_autoreleasePoolPop(v7);
    if (!i)
    {
      goto LABEL_13;
    }

LABEL_12:
    usleep(0x3D090u);
  }

  v9 = v8;
  MOXPCTransportResume();
  v10 = getResponseForCommand(v9, 0);
  v2 = [v10 objectForKey:@"checkpoint"];

  v11 = getResponseForCommand(v9, 1);
  MOXPCTransportClose();
  objc_autoreleasePoolPop(v7);
  if (v2)
  {
    return v2;
  }

  if (i)
  {
    goto LABEL_12;
  }

LABEL_13:
  v12 = objc_autoreleasePoolPush();
  v13 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/MobileCheckpoint.m"];
  v14 = [v13 lastPathComponent];

  v15 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:%d: talking to the server failed", v14, 86];
  syslog(5, "%s", [v15 UTF8String]);

  objc_autoreleasePoolPop(v12);
  return 0;
}

uint64_t _cacheValid()
{
  memset(&v6, 0, sizeof(v6));
  memset(&v5, 0, sizeof(v5));
  if (!stat("/var/mobile/Library/Caches/Checkpoint.plist", &v6) && !stat("/System/Library/CoreServices/Checkpoint.xml", &v5))
  {
    if (v6.st_mtimespec.tv_sec == v5.st_mtimespec.tv_sec && v6.st_mtimespec.tv_nsec == v5.st_mtimespec.tv_nsec)
    {
      return 1;
    }

    v1 = objc_autoreleasePoolPush();
    v2 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/MobileCheckpoint.m"];
    v3 = [v2 lastPathComponent];

    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:%d: cache %s doesn't match %s", v3, 18, "/var/mobile/Library/Caches/Checkpoint.plist", "/System/Library/CoreServices/Checkpoint.xml", *&v5.st_dev, v5.st_ino, *&v5.st_uid, *&v5.st_rdev, v5.st_atimespec.tv_sec, v5.st_atimespec.tv_nsec];
    syslog(5, "%s", [v4 UTF8String]);

    objc_autoreleasePoolPop(v1);
  }

  return 0;
}

uint64_t MCCopyCheckpointData()
{
  v0 = objc_autoreleasePoolPush();
  if (_cacheValid())
  {
    v8 = 0;
    v1 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithContentsOfFile:@"/var/mobile/Library/Caches/Checkpoint.plist" options:8 error:&v8];
    v2 = v8;
    if (v1)
    {
      goto LABEL_7;
    }

    v3 = objc_autoreleasePoolPush();
    v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/MobileCheckpoint.m"];
    v5 = [v4 lastPathComponent];

    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:%d: mapping %s failed: %@", v5, 106, "/var/mobile/Library/Caches/Checkpoint.plist", v2];
    syslog(5, "%s", [v6 UTF8String]);

    objc_autoreleasePoolPop(v3);
  }

  v2 = MCCopyCheckpoint();
  if (v2)
  {
    v1 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:v2 format:200 options:0 error:0];
  }

  else
  {
    v1 = 0;
  }

LABEL_7:

  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t MCCopyCheckpointValue(const void *a1)
{
  theDict = 0;
  cf = 0;
  v2 = 0;
  v3 = 0;
  if (!_cacheValid())
  {
    goto LABEL_9;
  }

  v4 = objc_autoreleasePoolPush();
  v17 = 0;
  v3 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithContentsOfFile:@"/var/mobile/Library/Caches/Checkpoint.plist" options:8 error:&v17];
  v5 = v17;
  v6 = v5;
  if (!v3)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/MobileCheckpoint.m"];
    v11 = [v10 lastPathComponent];

    v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:%d: mapping %s failed: %@", v11, 144, "/var/mobile/Library/Caches/Checkpoint.plist", v6];
    syslog(5, "%s", [v12 UTF8String]);

    objc_autoreleasePoolPop(v9);
    v2 = 0;
    v3 = 0;
LABEL_8:

    objc_autoreleasePoolPop(v4);
LABEL_9:
    v15 = MCCopyCheckpoint();
    v8 = [v15 objectForKey:a1];

    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v4);
  v2 = [objc_alloc(MEMORY[0x29EDB8E50]) initWithObjects:{a1, 0}];
  if ((_CFPropertyListCreateFiltered() & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v13 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/MobileCheckpoint.m"];
    v6 = [v13 lastPathComponent];

    v14 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:%d: extracting %@ from %s failed: %@", v6, 154, a1, "/var/mobile/Library/Caches/Checkpoint.plist", cf];
    syslog(5, "%s", [v14 UTF8String]);

    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(theDict, a1);
  v8 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v8;
}

id getResponseForCommand(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v7 = @"command";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a2];
  v8[0] = v2;
  v3 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  if (MOXPCTransportSendMessage())
  {
    v4 = MOXPCTransportReceiveMessage();
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];

  return v4;
}