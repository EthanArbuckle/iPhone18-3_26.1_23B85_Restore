@interface InterfaceUtils
+ (BOOL)interfaceIsDirectLink:(id)link;
+ (id)interfaceNameFromKey:(id)key;
+ (id)stringForInterfaceType:(int64_t)type;
+ (int64_t)interfaceTypeForString:(id)string;
@end

@implementation InterfaceUtils

+ (id)stringForInterfaceType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return @"Other";
  }

  else
  {
    return off_27898B160[type - 1];
  }
}

+ (int64_t)interfaceTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"WiFi"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Cellular"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"WiredEthernet"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"Loopback"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)interfaceNameFromKey:(id)key
{
  v3 = [key componentsSeparatedByString:@"/"];
  if ([v3 count] == 5)
  {
    v4 = [v3 objectAtIndex:3];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)interfaceIsDirectLink:(id)link
{
  v30 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  if (linkCopy)
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = _SCNetworkInterfaceCreateWithBSDName();
    if (v5)
    {
      if (_SCNetworkInterfaceIsThunderbolt())
      {
        v6 = otherLogHandle;
        v7 = 1;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = linkCopy;
          _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Found Thunderbolt DirectLink interface %@", buf, 0xCu);
        }

        goto LABEL_14;
      }

      InterfaceType = SCNetworkInterfaceGetInterfaceType(v5);
      if (InterfaceType)
      {
        v19 = InterfaceType;
        if (CFStringCompare(InterfaceType, *MEMORY[0x277CE1860], 0))
        {
          v20 = otherLogHandle;
          if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
          {
            goto LABEL_13;
          }

          *buf = 138412546;
          v27 = linkCopy;
          v28 = 2112;
          v29 = v19;
          v10 = "Interface %@ has non-Ethernet type %@";
          v11 = v20;
          goto LABEL_25;
        }

        FamilySubType = _SCNetworkInterfaceGetFamilySubType();
        if (FamilySubType)
        {
          valuePtr = 0;
          CFNumberGetValue(FamilySubType, kCFNumberSInt64Type, &valuePtr);
          if (valuePtr != 1)
          {
            v24 = otherLogHandle;
            if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
            {
              goto LABEL_13;
            }

            *buf = 138412546;
            v27 = linkCopy;
            v28 = 2048;
            v29 = valuePtr;
            v10 = "Interface %@ has non-USB InterfaceSubFamily %llu";
            v11 = v24;
LABEL_25:
            v12 = OS_LOG_TYPE_INFO;
            v13 = 22;
            goto LABEL_12;
          }

          IOPath = _SCNetworkInterfaceGetIOPath();
          v9 = otherLogHandle;
          if (IOPath)
          {
            v23 = IOPath;
            if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412547;
              v27 = linkCopy;
              v28 = 2117;
              v29 = v23;
              _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "Interface %@ has IOPath %{sensitive}@", buf, 0x16u);
            }

            v7 = CFStringFind(v23, @"/AppleUSBNCMData@", 0).location != -1;
            goto LABEL_14;
          }

          if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          *buf = 138412290;
          v27 = linkCopy;
          v10 = "IOPath for interface %@ is NULL";
        }

        else
        {
          v9 = otherLogHandle;
          if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          *buf = 138412290;
          v27 = linkCopy;
          v10 = "InterfaceSubType for %@ is NULL";
        }
      }

      else
      {
        v9 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        *buf = 138412290;
        v27 = linkCopy;
        v10 = "InterfaceType for %@ is NULL";
      }
    }

    else
    {
      v9 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        v7 = 0;
LABEL_14:
        v14 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v15 = " not";
          if (v7)
          {
            v15 = "";
          }

          *buf = 138412546;
          v27 = linkCopy;
          v28 = 2080;
          v29 = v15;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Interface %@ is%s a DirectLink interface", buf, 0x16u);
        }

        if (v5)
        {
          CFRelease(v5);
        }

        goto LABEL_20;
      }

      *buf = 138412290;
      v27 = linkCopy;
      v10 = "Error obtaining SCNetworkInterface for %@";
    }

    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 12;
LABEL_12:
    _os_log_impl(&dword_23255B000, v11, v12, v10, buf, v13);
    goto LABEL_13;
  }

  v8 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Ignoring interface with nil ifName", buf, 2u);
  }

  LOBYTE(v7) = 0;
LABEL_20:

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

@end