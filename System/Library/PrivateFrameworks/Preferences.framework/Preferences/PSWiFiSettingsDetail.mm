@interface PSWiFiSettingsDetail
+ (BOOL)isEnabled;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation PSWiFiSettingsDetail

+ (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = PSWiFiManagerClientCreate(*MEMORY[0x1E695E480]);
  if (v4)
  {
    v5 = v4;
    Current = CFRunLoopGetCurrent();
    v7 = *MEMORY[0x1E695E8E0];
    PSWiFiManagerClientScheduleWithRunLoop(v5, Current, *MEMORY[0x1E695E8E0]);
    v8 = PSWiFiManagerClientCopyDevices(v5);
    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];

      if (PSWiFiDeviceClientGetPower(v9) != enabledCopy)
      {
        v10 = _PSLoggingFacility();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16[0]) = 0;
          _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "Toggled Wifi State.", v16, 2u);
        }

        v18 = 0;
        v19 = &v18;
        v20 = 0x2020000000;
        v11 = getWiFiManagerClientSetPowerSymbolLoc_ptr;
        v21 = getWiFiManagerClientSetPowerSymbolLoc_ptr;
        if (!getWiFiManagerClientSetPowerSymbolLoc_ptr)
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __getWiFiManagerClientSetPowerSymbolLoc_block_invoke;
          v16[3] = &unk_1E71DBC78;
          v17 = &v18;
          v12 = MobileWiFiLibrary();
          v13 = dlsym(v12, "WiFiManagerClientSetPower");
          *(v17[1] + 24) = v13;
          getWiFiManagerClientSetPowerSymbolLoc_ptr = *(v17[1] + 24);
          v11 = v19[3];
        }

        _Block_object_dispose(&v18, 8);
        if (!v11)
        {
          v15 = [PSContactsAuthorizationLevelController dealloc];
          _Block_object_dispose(&v18, 8);
          _Unwind_Resume(v15);
        }

        v11(v5, enabledCopy);
      }
    }

    v14 = CFRunLoopGetCurrent();
    PSWiFiManagerClientUnscheduleFromRunLoop(v5, v14, v7);
    CFRelease(v5);
  }
}

+ (BOOL)isEnabled
{
  v2 = PSWiFiManagerClientCreate(*MEMORY[0x1E695E480]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Current = CFRunLoopGetCurrent();
  v5 = *MEMORY[0x1E695E8E0];
  PSWiFiManagerClientScheduleWithRunLoop(v3, Current, *MEMORY[0x1E695E8E0]);
  v6 = PSWiFiManagerClientCopyDevices(v3);
  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];

    v8 = PSWiFiDeviceClientGetPower(v7) != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = CFRunLoopGetCurrent();
  PSWiFiManagerClientUnscheduleFromRunLoop(v3, v9, v5);
  CFRelease(v3);

  return v8;
}

@end