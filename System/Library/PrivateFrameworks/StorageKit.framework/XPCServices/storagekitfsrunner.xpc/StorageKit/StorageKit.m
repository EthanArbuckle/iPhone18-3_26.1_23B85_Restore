void tagQueue(void *a1, const void *a2)
{
  queue = a1;
  v3 = malloc_type_calloc(8uLL, 1uLL, 0x10319707uLL);
  *v3 = 1;
  dispatch_queue_set_specific(queue, a2, v3, &free);
}

void *currentQueueIsMainQueue()
{
  if (qword_10000D9E0 != -1)
  {
    sub_10000484C();
  }

  result = dispatch_get_specific("isMainQueue");
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t isValidNSNumber(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

BOOL isValidNSString(void *a1)
{
  v1 = a1;
  v2 = v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 length] != 0;

  return v2;
}

uint64_t isValidNSDictionary(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isValidNSArray(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isValidNSData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

id NSNumberToBool(void *a1)
{
  v1 = a1;
  if (isValidNSNumber(v1))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id NSNumberToULongLong(void *a1)
{
  v1 = a1;
  if (isValidNSNumber(v1))
  {
    v2 = [v1 unsignedLongLongValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *NSStringOrEmpty(void *a1)
{
  v1 = a1;
  if (isValidNSString(v1))
  {
    v2 = v1;
  }

  else
  {
    v2 = &stru_100008530;
  }

  v3 = v2;

  return v2;
}

BOOL isStringValidUUID(void *a1)
{
  v1 = a1;
  if (isValidNSString(v1))
  {
    v2 = [[NSUUID alloc] initWithUUIDString:v1];
    v3 = v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t isOptionalString(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t isOptionalArray(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t isOptionalDict(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t isOptionalData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t isOptionalNumber(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t isEqualOrBothNil(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

id base64Encode(uint64_t a1, uint64_t a2)
{
  v2 = [NSString stringWithFormat:@"%s:%d", a1, a2];
  v3 = [v2 dataUsingEncoding:4];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

id SKGetOSLog()
{
  if (qword_10000D9E8 != -1)
  {
    sub_100004860();
  }

  if (byte_10000D9F0)
  {
    v0 = &off_10000D720;
  }

  else
  {
    v0 = &off_10000D718;
  }

  v1 = *v0;

  return v1;
}

void sub_100001330(id a1)
{
  v1 = os_log_create("com.apple.storagekit", "general");
  v2 = off_10000D718;
  off_10000D718 = v1;

  off_10000D720 = os_log_create("com.apple.storagekit", "storagekit-install");

  _objc_release_x1();
}

void SKLogSetLogsToConsole()
{
  v0 = SKGetOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "SKLogSetLogsToConsole/Std is deprecated. Please remove this call", v1, 2u);
  }
}

void SKLogSetLogsToStd()
{
  v0 = SKGetOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "SKLogSetLogsToStd is deprecated. Please remove this call", v1, 2u);
  }
}

void SKLogArrayRedacted(os_log_type_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = SKGetOSLog();
  if (os_log_type_enabled(v6, a1))
  {
    *buf = 136315138;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v6, a1, "%s", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = SKGetOSLog();
        if (os_log_type_enabled(v13, a1))
        {
          *buf = 138412290;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, v13, a1, "%@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

void SKLogSetRedacted(os_log_type_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = SKGetOSLog();
  if (os_log_type_enabled(v6, a1))
  {
    *buf = 136315138;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v6, a1, "%s", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = SKGetOSLog();
        if (os_log_type_enabled(v13, a1))
        {
          *buf = 138412290;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, v13, a1, "%@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id commaSeparatedDiskListFromArray(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      v4 = [v1 objectAtIndex:v3];
      v5 = [v4 volumeName];

      if (v5)
      {
        [v4 volumeName];
      }

      else
      {
        [v4 diskIdentifier];
      }
      v6 = ;
      [v2 appendString:v6];

      if (v3 != [v1 count] - 1)
      {
        [v2 appendString:{@", "}];
      }

      if (v3 == [v1 count] - 2)
      {
        [v2 appendString:@"and "];
      }

      ++v3;
    }

    while ([v1 count] > v3);
  }

  return v2;
}

void sub_100001B58(id a1)
{
  v1 = [NSURL fileURLWithPath:@"/System/Library/PrivateFrameworks/StorageKit.framework"];
  v2 = [NSBundle bundleWithURL:v1];
  v3 = qword_10000D9F8;
  qword_10000D9F8 = v2;

  if (!qword_10000D9F8)
  {
    v4 = SKGetOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 136315138;
      v6 = "+[SKError frameworkBundle]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s: FATAL ERROR: Failed to get the NSBundle of StorageKit framework", &v5, 0xCu);
    }
  }
}

id sub_100002590(void *a1)
{
  if (a1)
  {
    v4 = NSDebugDescriptionErrorKey;
    v5 = a1;
    v1 = a1;
    v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100002BA0(id a1)
{
  qword_10000DA08 = [@"\n" dataUsingEncoding:4];

  _objc_release_x1();
}

void sub_100002F40(id a1)
{
  qword_10000DA18 = [@"<plist" dataUsingEncoding:4];

  _objc_release_x1();
}

void sub_100002FC8(id a1)
{
  qword_10000DA28 = [@"</plist>" dataUsingEncoding:4];

  _objc_release_x1();
}

void sub_100003C64(id a1, SKTask *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(SKTask *)a2 task:a3];
  [v4 launch];
}

BOOL sub_100003CA8(id a1, SKTask *a2, NSDictionary *a3)
{
  v3 = [(SKTask *)a2 task];
  v4 = [v3 isRunning];

  return v4;
}

void sub_100003CE4(id a1, SKTask *a2, unint64_t a3, BOOL *a4)
{
  v12 = a2;
  v4 = [(SKTask *)v12 stdoutParser];

  if (v4)
  {
    v5 = [(SKTask *)v12 stdoutParser];
    v6 = [(SKTask *)v12 stdoutHandle];
    v7 = [v6 readDataUpToLength:4096 error:0];
    [v5 parseData:v7];
  }

  v8 = [(SKTask *)v12 stderrParser];

  if (v8)
  {
    v9 = [(SKTask *)v12 stderrParser];
    v10 = [(SKTask *)v12 stderrHandle];
    v11 = [v10 readDataUpToLength:4096 error:0];
    [v9 parseData:v11];
  }
}

BOOL sub_100003DF0(id a1, SKTask *a2, NSDictionary *a3)
{
  v3 = [(SKTask *)a2 task];
  v4 = [v3 isRunning];

  return v4;
}

void sub_100003E2C(id a1, SKTask *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(SKTask *)a2 task:a3];
  [v4 waitUntilExit];
}

void sub_100003E70(id a1, SKTask *a2, unint64_t a3, BOOL *a4)
{
  v12 = a2;
  v4 = [(SKTask *)v12 stderrParser];

  if (v4)
  {
    v5 = [(SKTask *)v12 stdoutParser];
    v6 = [(SKTask *)v12 stdoutHandle];
    v7 = [v6 readDataToEndOfFile];
    [v5 parseData:v7];
  }

  v8 = [(SKTask *)v12 stderrParser];

  if (v8)
  {
    v9 = [(SKTask *)v12 stderrParser];
    v10 = [(SKTask *)v12 stderrHandle];
    v11 = [v10 readDataToEndOfFile];
    [v9 parseData:v11];
  }
}

void sub_100004404(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000044B8;
  v5[3] = &unk_1000084C8;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = v6;
  dispatch_async(v3, v5);
}

id sub_1000044B8(uint64_t a1)
{
  result = [*(a1 + 32) length];
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 sendStdout:v4];
  }

  return result;
}

void sub_100004504(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000045B8;
  v5[3] = &unk_1000084C8;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = v6;
  dispatch_async(v3, v5);
}

id sub_1000045B8(uint64_t a1)
{
  result = [*(a1 + 32) length];
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 sendStderr:v4];
  }

  return result;
}