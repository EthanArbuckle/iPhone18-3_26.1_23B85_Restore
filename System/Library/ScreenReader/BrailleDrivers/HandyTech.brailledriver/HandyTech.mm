const __CFString *sub_1D90(int a1)
{
  if (a1 <= 129)
  {
    v1 = @"com.apple.scrod.braille.driver.handytech.braille.star.40";
    v11 = @"com.apple.scrod.braille.driver.handytech.basic.braille.16";
    if (a1 != 129)
    {
      v11 = 0;
    }

    if (a1 != 116)
    {
      v1 = v11;
    }

    v12 = @"com.apple.scrod.braille.driver.handytech.active.star.40";
    v13 = @"com.apple.scrod.braille.driver.handytech.braillino.20";
    if (a1 != 114)
    {
      v13 = 0;
    }

    if (a1 != 100)
    {
      v12 = v13;
    }

    if (a1 <= 115)
    {
      v1 = v12;
    }

    v6 = @"com.apple.scrod.braille.driver.handytech.active.braille.40";
    v14 = @"com.apple.scrod.braille.driver.handytech.actilino";
    if (a1 != 97)
    {
      v14 = 0;
    }

    if (a1 != 84)
    {
      v6 = v14;
    }

    v15 = @"com.apple.scrod.braille.driver.handytech.braille.wave.40";
    v16 = @"com.apple.scrod.braille.driver.handytech.easy.braille.40";
    if (a1 != 68)
    {
      v16 = 0;
    }

    if (a1 != 5)
    {
      v15 = v16;
    }

    if (a1 <= 83)
    {
      v6 = v15;
    }

    v10 = a1 <= 99;
  }

  else
  {
    v1 = @"com.apple.scrod.braille.driver.handytech.activator.40";
    v2 = @"com.apple.scrod.braille.driver.handytech.activator.pro.64";
    v3 = @"com.apple.scrod.braille.driver.handytech.activator.pro.80";
    if (a1 != 168)
    {
      v3 = 0;
    }

    if (a1 != 166)
    {
      v2 = v3;
    }

    if (a1 != 164)
    {
      v1 = v2;
    }

    v4 = @"com.apple.scrod.braille.driver.handytech.basic.braille.80";
    v5 = @"com.apple.scrod.braille.driver.handytech.basic.braille.48";
    if (a1 != 138)
    {
      v5 = 0;
    }

    if (a1 != 135)
    {
      v4 = v5;
    }

    if (a1 <= 163)
    {
      v1 = v4;
    }

    v6 = @"com.apple.scrod.braille.driver.handytech.basic.braille.40";
    v7 = @"com.apple.scrod.braille.driver.handytech.basic.braille.64";
    if (a1 != 134)
    {
      v7 = 0;
    }

    if (a1 != 132)
    {
      v6 = v7;
    }

    v8 = @"com.apple.scrod.braille.driver.handytech.basic.braille.20";
    v9 = @"com.apple.scrod.braille.driver.handytech.basic.braille.32";
    if (a1 != 131)
    {
      v9 = 0;
    }

    if (a1 != 130)
    {
      v8 = v9;
    }

    if (a1 <= 131)
    {
      v6 = v8;
    }

    v10 = a1 <= 134;
  }

  if (v10)
  {
    return v6;
  }

  else
  {
    return v1;
  }
}

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