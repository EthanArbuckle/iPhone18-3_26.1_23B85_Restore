@interface ACMSystemInfo
- (BOOL)isPreRelease;
- (NSString)IPAddress;
- (NSString)MACAddress;
- (NSString)deviceModel;
- (NSString)systemVersion;
- (NSString)uniqueDeviceIdentifier;
- (id)previousVersionUUID;
@end

@implementation ACMSystemInfo

- (NSString)IPAddress
{
  v11 = 0;
  v2 = getifaddrs(&v11);
  v3 = 0;
  v4 = v11;
  if (v2 || !v11)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v3 = 0;
    do
    {
      if (v4->ifa_addr->sa_family == 2)
      {
        if ([objc_msgSend(MEMORY[0x29EDBA0F8] stringWithUTF8String:{v4->ifa_name), "isEqualToString:", @"en0"}])
        {
          v6.s_addr = *&v4->ifa_addr->sa_data[2];
          v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:inet_ntoa(v6)];
        }

        if ([objc_msgSend(MEMORY[0x29EDBA0F8] stringWithUTF8String:{v4->ifa_name), "isEqualToString:", @"ppp0"}])
        {
          v7.s_addr = *&v4->ifa_addr->sa_data[2];
          v5 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:inet_ntoa(v7)];
        }
      }

      v4 = v4->ifa_next;
    }

    while (v4);
    v4 = v11;
  }

  v8 = @"127.0.0.1";
  if (v3)
  {
    v8 = v3;
  }

  if (v5)
  {
    p_isa = v5;
  }

  else
  {
    p_isa = &v8->isa;
  }

  MEMORY[0x29C288CE0](v4);
  return p_isa;
}

- (NSString)MACAddress
{
  v10 = 0;
  v2 = getifaddrs(&v10);
  v3 = 0;
  v4 = v10;
  if (!v2 && v10)
  {
    v3 = 0;
    do
    {
      ifa_addr = v4->ifa_addr;
      if (ifa_addr->sa_family == 18 && ifa_addr->sa_data[2] == 6)
      {
        v6 = ifa_addr->sa_data[3];
        v3 = [MEMORY[0x29EDBA050] string];
        if (ifa_addr->sa_data[4])
        {
          v7 = 0;
          v8 = &ifa_addr->sa_data[v6 + 6];
          do
          {
            [v3 appendFormat:@"%02x", *(v8 + v7++)];
          }

          while (v7 < ifa_addr->sa_data[4]);
        }
      }

      v4 = v4->ifa_next;
    }

    while (v4);
    v4 = v10;
  }

  MEMORY[0x29C288CE0](v4);
  return v3;
}

- (id)previousVersionUUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v2 = +[ACMEnvironmentPreferences supportedRealms];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __36__ACMSystemInfo_previousVersionUUID__block_invoke;
  v5[3] = &unk_29EE91750;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__ACMSystemInfo_previousVersionUUID__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")];
  result = [objc_msgSend(v6 "provisionedDeviceIdentifier")];
  if (result)
  {
    result = [v6 provisionedDeviceIdentifier];
    *(*(*(a1 + 32) + 8) + 40) = result;
    *a4 = 1;
  }

  return result;
}

- (NSString)uniqueDeviceIdentifier
{
  v3 = _sharedUniqueDeviceIdentifier;
  if (!_sharedUniqueDeviceIdentifier)
  {
    v3 = [objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")];
    _sharedUniqueDeviceIdentifier = v3;
    if (!v3)
    {
      _sharedUniqueDeviceIdentifier = [(ACMSystemInfo *)self previousVersionUUID];
      if (_sharedUniqueDeviceIdentifier)
      {
        goto LABEL_10;
      }

      _sharedUniqueDeviceIdentifier = [objc_msgSend(objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")];
      if (_sharedUniqueDeviceIdentifier)
      {
        goto LABEL_10;
      }

      v3 = [objc_msgSend(MEMORY[0x29EDBA140] "UUID")];
      _sharedUniqueDeviceIdentifier = v3;
      if (qword_2A1EB8EA0)
      {
        if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
        {
          ACFLog(7, "[ACMSystemInfo uniqueDeviceIdentifier]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMSystemInfo.m", 136, 0, "Failed to get device ID, generating random %@", _sharedUniqueDeviceIdentifier);
        }

        v3 = _sharedUniqueDeviceIdentifier;
      }

      if (v3)
      {
LABEL_10:
        v4 = [+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")];
        [v4 setUUID:_sharedUniqueDeviceIdentifier];
        v3 = _sharedUniqueDeviceIdentifier;
      }
    }
  }

  v5 = v3;

  return v5;
}

- (NSString)deviceModel
{
  v2 = [MEMORY[0x29EDC7A58] currentDevice];

  return [v2 model];
}

- (NSString)systemVersion
{
  v2 = [MEMORY[0x29EDC7A58] currentDevice];

  return [v2 systemVersion];
}

- (BOOL)isPreRelease
{
  v2 = [(ACMSystemInfo *)self version];
  -[NSString rangeOfCharacterFromSet:](v2, "rangeOfCharacterFromSet:", [MEMORY[0x29EDB9F50] letterCharacterSet]);
  return v3 != 0;
}

@end