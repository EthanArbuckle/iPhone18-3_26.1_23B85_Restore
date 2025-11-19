const __CFString *_modelIdentifierForDeviceIdentifier(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    if ([v3 isEqualToString:kSCRDBaumRefreshabraille18DeviceIdentifier])
    {
      *a2 = 22;
      v5 = @"com.apple.scrod.braille.driver.baum.aph.refreshabraille.18";
    }

    else
    {
      v5 = 0;
    }

    if ([v4 isEqualToString:kSCRDOrbitReader20DeviceIdentifier] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDNLSEReaderZoomaxDeviceIdentifier))
    {
      v5 = @"com.apple.scrod.braille.driver.baum.orbit.reader.20";
      v6 = 34;
    }

    else if ([v4 isEqualToString:kSCRDOrbitReader40DeviceIdentifier])
    {
      v5 = @"com.apple.scrod.braille.driver.baum.orbit.reader.40";
      v6 = 35;
    }

    else if ([v4 isEqualToString:kSCRDBaumBrailleConnect12DeviceIdentifier] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumConnyDeviceIdentifier) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumVarioConnect12DeviceIdentifier))
    {
      v5 = @"com.apple.scrod.braille.driver.baum.varioconnect.12";
      v6 = 1;
    }

    else if ([v4 isEqualToString:kSCRDBaumBrailleConnect24DeviceIdentifier] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumVarioConnect24DeviceIdentifier))
    {
      v5 = @"com.apple.scrod.braille.driver.baum.varioconnect.24";
      v6 = 3;
    }

    else if ([v4 isEqualToString:kSCRDBaumBrailleConnect32DeviceIdentifier] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumVarioConnect32DeviceIdentifier))
    {
      v5 = @"com.apple.scrod.braille.driver.baum.varioconnect.32";
      v6 = 5;
    }

    else if ([v4 isEqualToString:kSCRDBaumBrailleConnect40DeviceIdentifier] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumVarioConnect40DeviceIdentifier))
    {
      v5 = @"com.apple.scrod.braille.driver.baum.varioconnect.40";
      v6 = 7;
    }

    else if ([v4 isEqualToString:kSCRDBaumBrailliant14DeviceIdentifier] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumPDIBrailliant14DeviceIdentifier))
    {
      v5 = @"com.apple.scrod.braille.driver.baum.pocketvario.14";
      v6 = 11;
    }

    else if ([v4 isEqualToString:kSCRDBaumBrailliant24DeviceIdentifier] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumPocketVario24DeviceIdentifier) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumPDIBrailliant24DeviceIdentifier))
    {
      v5 = @"com.apple.scrod.braille.driver.baum.pocketvario.24";
      v6 = 9;
    }

    else if ([v4 isEqualToString:kSCRDBaumBrailliant32DeviceIdentifier] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumSuperVario32DeviceIdentifier) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumPDIBrailliant32DeviceIdentifier))
    {
      v5 = @"com.apple.scrod.braille.driver.baum.supervario.32";
      v6 = 12;
    }

    else if ([v4 isEqualToString:kSCRDBaumBrailliant40DeviceIdentifier] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumSuperVario40DeviceIdentifier) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumPDIBrailliant40DeviceIdentifier))
    {
      v5 = @"com.apple.scrod.braille.driver.baum.supervario.40";
      v6 = 14;
    }

    else if ([v4 isEqualToString:kSCRDBaumBrailliant64DeviceIdentifier] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumSuperVario64DeviceIdentifier) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumPDIBrailliant64DeviceIdentifier))
    {
      v5 = @"com.apple.scrod.braille.driver.baum.supervario.64";
      v6 = 16;
    }

    else if ([v4 isEqualToString:kSCRDBaumBrailliant80DeviceIdentifier] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumSuperVario80DeviceIdentifier) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kSCRDBaumPDIBrailliant80DeviceIdentifier))
    {
      v5 = @"com.apple.scrod.braille.driver.baum.supervario.80";
      v6 = 18;
    }

    else if ([v4 isEqualToString:kSCRDBaumPronto18DeviceIdentifier])
    {
      v5 = @"com.apple.scrod.braille.driver.baum.pronto.18";
      v6 = 23;
    }

    else if ([v4 isEqualToString:kSCRDBaumPronto40DeviceIdentifier])
    {
      v5 = @"com.apple.scrod.braille.driver.baum.pronto.40";
      v6 = 24;
    }

    else if ([v4 isEqualToString:kSCRDBaumVarioUltra20DeviceIdentifier])
    {
      v5 = @"com.apple.scrod.braille.driver.baum.vario.ultra.20";
      v6 = 25;
    }

    else if ([v4 isEqualToString:kSCRDBaumVarioUltra32DeviceIdentifier])
    {
      v5 = @"com.apple.scrod.braille.driver.baum.vario.ultra.32";
      v6 = 26;
    }

    else if ([v4 isEqualToString:kSCRDBaumVarioUltra40DeviceIdentifier])
    {
      v5 = @"com.apple.scrod.braille.driver.baum.vario.ultra.40";
      v6 = 27;
    }

    else
    {
      if (![v4 isEqualToString:kSCRDNPHB2GDeviceIdentifier])
      {
        goto LABEL_10;
      }

      v5 = @"com.apple.scrod.braille.driver.nbp.b2g";
      v6 = 36;
    }

    *a2 = v6;
  }

  else
  {
    v5 = 0;
  }

LABEL_10:

  return v5;
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