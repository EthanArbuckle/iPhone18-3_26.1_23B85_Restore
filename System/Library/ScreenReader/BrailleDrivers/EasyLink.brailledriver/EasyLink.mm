void _MSCRODebugAbortPrint(uint64_t a1, uint64_t a2, id a3)
{
  v6 = a3;
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"===================================\nVoiceOver Error: %s:%d\nError: %s\nBreak on _MSCRODebugAbortPrint to debug\n", a1, a2, [a3 cStringUsingEncoding:4]);
  v7 = [NSException exceptionWithName:@"VoiceOver Debug Abort" reason:v8 userInfo:0];
  [v7 raise];
}

uint64_t MSCROBTOpenComPort(void *a1, int *a2)
{
  v3 = a1;
  Current = CFAbsoluteTimeGetCurrent();
  if (CFAbsoluteTimeGetCurrent() - Current >= 2.0)
  {
    v9 = 1;
LABEL_9:
    v10 = AXLogBrailleHW();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 134217984;
    v20 = v9;
    v11 = "Failed to open bt com port - BTError [%ld]";
    goto LABEL_11;
  }

  *&v5 = 134217984;
  v18 = v5;
  while (1)
  {
    [v3 device];
    ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
    if (!ComPortForServiceWithSandboxExtension)
    {
      break;
    }

    v7 = ComPortForServiceWithSandboxExtension;
    v8 = AXLogBrailleHW();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v18;
      v20 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Failed to open bt com port - BTError [%ld] retry mode", buf, 0xCu);
    }

    [NSThread sleepForTimeInterval:0.5];
    if (CFAbsoluteTimeGetCurrent() - Current >= 2.0)
    {
      v9 = v7;
      goto LABEL_9;
    }
  }

  [NSThread sleepForTimeInterval:0.5];
  if (sandbox_extension_consume() == -1)
  {
    v14 = AXLogBrailleHW();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *__error();
      *buf = v18;
      v20 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Failed to consume BT com port sandbox extension [%ld]", buf, 0xCu);
    }
  }

  v16 = open(v21, 131074);
  *a2 = v16;
  if ((v16 & 0x80000000) == 0)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v10 = AXLogBrailleHW();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *a2;
    *buf = v18;
    v20 = v17;
    v11 = "Failed to open com port [%ld]";
LABEL_11:
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
  }

LABEL_12:

  v12 = 1;
LABEL_13:

  return v12;
}