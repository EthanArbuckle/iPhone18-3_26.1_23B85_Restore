@interface PLNetworkUtilities
+ (BOOL)getCompanionLink:(npi_if_info *)link;
+ (BOOL)isESPPacket:(__CFData *)packet offset:(unsigned __int8)offset;
+ (id)decodeIPPacket:(id)packet encryptedPath:(BOOL)path;
+ (id)getIPAddress:(in_addr_4_6 *)address withAddressFamily:(int)family;
+ (id)getNetworkWakeInfo:(kern_event_msg *)info;
+ (id)getNormalizedIPV6Address:(id)address;
+ (id)getSeqNoAndSPI:(__CFData *)i offset:(unsigned __int8)offset;
+ (id)getUnattributedWakeInfo:(kern_event_msg *)info;
+ (id)interfaceNameForIndex:(id)index;
+ (id)sockaddrToNSDictionary:(const char *)dictionary;
+ (id)stringFromTrafficClass:(unsigned int)class;
+ (id)tcpParse:(__CFData *)parse offset:(unsigned __int8)offset;
+ (id)udpParse:(__CFData *)parse offset:(unsigned __int8)offset;
+ (int)getInterfaceType:(char *)type withPktIFName:(char *)name withPktIFInfo:(npi_if_info *)info withPktPhyIFInfo:(npi_if_info *)fInfo;
@end

@implementation PLNetworkUtilities

+ (id)sockaddrToNSDictionary:(const char *)dictionary
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  *v12 = 0u;
  v11 = 0;
  *v10 = 0;
  v4 = objc_opt_new();
  if (getnameinfo(dictionary, *dictionary, v12, 0x39u, v10, 6u, 10))
  {
    v5 = 0;
  }

  else
  {
    v14[24] = 0;
    HIBYTE(v11) = 0;
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    [v4 setObject:v6 forKey:@"address"];

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    [v4 setObject:v7 forKey:@"port"];

    v5 = v4;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)interfaceNameForIndex:(id)index
{
  v10 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  if (interfaceNameForIndex__onceToken != -1)
  {
    +[PLNetworkUtilities interfaceNameForIndex:];
  }

  v4 = interfaceNameForIndex___interfaceNames;
  objc_sync_enter(v4);
  v5 = [interfaceNameForIndex___interfaceNames objectForKeyedSubscript:indexCopy];
  if (!v5)
  {
    v9[0] = 0;
    if (if_indextoname([indexCopy unsignedIntValue], v9) && v9[0])
    {
      indexCopy = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    }

    else
    {
      indexCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown%@", indexCopy];
    }

    v5 = indexCopy;
    [interfaceNameForIndex___interfaceNames setObject:indexCopy forKeyedSubscript:indexCopy];
  }

  objc_sync_exit(v4);

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __44__PLNetworkUtilities_interfaceNameForIndex___block_invoke()
{
  interfaceNameForIndex___interfaceNames = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)stringFromTrafficClass:(unsigned int)class
{
  if (class > 499)
  {
    if (class <= 699)
    {
      if (class == 500)
      {
        return @"AV:Multimedia_Audio/Video_Streaming";
      }

      if (class == 600)
      {
        return @"RV:Responsive_Multimedia_Audio/Video";
      }
    }

    else
    {
      switch(class)
      {
        case 0x2BCu:
          return @"VI:Interactive_Video";
        case 0x320u:
          return @"VO:Interactive_Voice";
        case 0x384u:
          return @"CTL:Network_Control";
      }
    }
  }

  else if (class <= 199)
  {
    if (!class)
    {
      return @"BE:Best_Effort";
    }

    if (class == 100)
    {
      return @"BK_SYS:Background_System-Initiated";
    }
  }

  else
  {
    switch(class)
    {
      case 0xC8u:
        return @"BK:Background";
      case 0x12Cu:
        return @"RD:Responsive_Data";
      case 0x190u:
        return @"OAM:Operations_Administration_and_Management";
    }
  }

  return @"unknown?";
}

+ (id)getNetworkWakeInfo:(kern_event_msg *)info
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  memset(out, 0, 37);
  uuid_unparse(info->event_data, out);
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
  if ((info[1].event_data[0] & 2) != 0)
  {
    v7 = 30;
  }

  else
  {
    v7 = 2;
  }

  v8 = [self getIPAddress:&info[5].kev_class withAddressFamily:v7];
  v9 = [self getIPAddress:&info[4].event_code withAddressFamily:v7];
  v10 = [self getInterfaceType:&info[7].kev_class withPktIFName:info[5].event_data withPktIFInfo:info[6].event_data withPktPhyIFInfo:info[7].event_data];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    +[PLNetworkUtilities getNetworkWakeInfo:];
  }

  v41 = v6;
  if (+[PLDefaults debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PLNetworkUtilities_getNetworkWakeInfo___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (getNetworkWakeInfo__defaultOnce != -1)
    {
      dispatch_once(&getNetworkWakeInfo__defaultOnce, block);
    }

    if (getNetworkWakeInfo__classDebugEnabled == 1)
    {
      v39 = v9;
      v40 = v8;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wake uuid %s ifname %s port %d flags 0x%x pid %d pname %s epid %d epname %s\n", out, info[5].event_data, bswap32(HIWORD(info[1].event_code)) >> 16, LOWORD(info[1].event_data[0]), info[2].total_size, &info[2].kev_class, info[2].vendor_code, info[2].event_data + 1];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getNetworkWakeInfo:]"];
      [PLCoreStorage logMessage:v12 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:194];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v8 = v40;
      v6 = v41;
      v9 = v39;
    }
  }

  [v5 setObject:v6 forKeyedSubscript:@"wakeUUID"];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:info[5].event_data];
  [v5 setObject:v17 forKeyedSubscript:@"Interface"];

  v18 = [MEMORY[0x1E696AD98] numberWithInt:info[2].total_size];
  [v5 setObject:v18 forKeyedSubscript:@"PID"];

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&info[2].kev_class];
  [v5 setObject:v19 forKeyedSubscript:@"ProcessName"];

  v20 = [MEMORY[0x1E696AD98] numberWithInt:info[2].vendor_code];
  [v5 setObject:v20 forKeyedSubscript:@"EffectivePID"];

  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:info[2].event_data + 1];
  [v5 setObject:v21 forKeyedSubscript:@"EffectiveProcessName"];

  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AttributedWake"];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  [v5 setObject:v22 forKeyedSubscript:@"InterfaceType"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "getCompanionLink:", info[6].event_data)}];
  [v5 setObject:v23 forKeyedSubscript:@"CompanionLink"];

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(HIWORD(info[4].id)) >> 16];
  [v5 setObject:v24 forKeyedSubscript:@"sourcePort"];

  [v5 setObject:v8 forKeyedSubscript:@"sourceAddress"];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(HIWORD(info[1].event_code)) >> 16];
  [v5 setObject:v25 forKeyedSubscript:@"destinationPort"];

  [v5 setObject:v9 forKeyedSubscript:@"destinationAddress"];
  if ((info[1].event_data[0] & 4) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:LOWORD(info[6].event_code)];
    [v5 setObject:v26 forKeyedSubscript:@"controlFlagType"];
  }

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:info[6].id];
  [v5 setObject:v27 forKeyedSubscript:@"packetDataLength"];

  0x2000 = [MEMORY[0x1E696AD98] numberWithInt:info[1].event_data[0] & 0x2000];
  [v5 setObject:0x2000 forKeyedSubscript:@"idleConnectionWake"];

  0x4000 = [MEMORY[0x1E696AD98] numberWithInt:info[1].event_data[0] & 0x4000];
  [v5 setObject:0x4000 forKeyedSubscript:@"lpwProcessedWake"];

  if (+[PLDefaults debugEnabled])
  {
    v30 = objc_opt_class();
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __41__PLNetworkUtilities_getNetworkWakeInfo___block_invoke_129;
    v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v42[4] = v30;
    if (getNetworkWakeInfo__defaultOnce_127 != -1)
    {
      dispatch_once(&getNetworkWakeInfo__defaultOnce_127, v42);
    }

    if (getNetworkWakeInfo__classDebugEnabled_128 == 1)
    {
      v31 = v9;
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wake dictionary %@", v5];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent2 = [v33 lastPathComponent];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getNetworkWakeInfo:]"];
      [PLCoreStorage logMessage:v32 fromFile:lastPathComponent2 fromFunction:v35 fromLineNumber:219];

      v36 = PLLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v9 = v31;
    }
  }

  v37 = *MEMORY[0x1E69E9840];

  return v5;
}

BOOL __41__PLNetworkUtilities_getNetworkWakeInfo___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getNetworkWakeInfo__classDebugEnabled = result;
  return result;
}

BOOL __41__PLNetworkUtilities_getNetworkWakeInfo___block_invoke_129(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getNetworkWakeInfo__classDebugEnabled_128 = result;
  return result;
}

+ (id)getIPAddress:(in_addr_4_6 *)address withAddressFamily:(int)family
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, 46);
  if (family == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 30;
  }

  inet_ntop(v4, address, v8, 0x2Eu);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BOOL)getCompanionLink:(npi_if_info *)link
{
  if (link->var0 == 18 && link->var2 == 7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      +[PLNetworkUtilities getCompanionLink:];
    }

    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      +[PLNetworkUtilities getCompanionLink:];
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

+ (int)getInterfaceType:(char *)type withPktIFName:(char *)name withPktIFInfo:(npi_if_info *)info withPktPhyIFInfo:(npi_if_info *)fInfo
{
  var0 = info->var0;
  if (info->var0 > 16)
  {
    if (var0 == 17)
    {
      if (fInfo->var1 == 3)
      {
        return 2;
      }

      v12 = fInfo->var0 == 15;
      v13 = 3;
    }

    else
    {
      if (var0 != 18)
      {
        return 0;
      }

      var2 = info->var2;
      if (!var2)
      {
        if (fInfo->var1 != 3)
        {
          var0 = fInfo->var0;
LABEL_3:
          if (var0 == 15)
          {
            return 3;
          }

          return 0;
        }

        return 2;
      }

      if (var2 != 7)
      {
        return 0;
      }

      var1 = info->var1;
      if (var1 == 2)
      {
        return 1;
      }

      if (var1 != 7)
      {
        if (var1 != 3)
        {
          v10 = fInfo->var1;
          if (v10 != 3)
          {
            v11 = v10 == 2;
            if (fInfo->var0 == 15)
            {
              return 3;
            }

            else
            {
              return v11;
            }
          }
        }

        return 2;
      }

      if (fInfo->var1 == 3)
      {
        return 4;
      }

      v12 = fInfo->var0 == 15;
      v13 = 5;
    }

    if (v12)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  if (var0 != 2)
  {
    goto LABEL_3;
  }

  if (info->var1 == 3)
  {
    return 2;
  }

  else
  {
    return 6;
  }
}

+ (id)getUnattributedWakeInfo:(kern_event_msg *)info
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  memset(out, 0, 37);
  uuid_unparse(info->event_data, out);
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
  if ((info[1].event_code & 0x20000) != 0)
  {
    v7 = 30;
  }

  else
  {
    v7 = 2;
  }

  v8 = [self getIPAddress:&info[6].kev_subclass withAddressFamily:v7];
  v9 = [self getIPAddress:info[5].event_data withAddressFamily:v7];
  v10 = [self getInterfaceType:&info[8].kev_subclass withPktIFName:&info[7] withPktIFInfo:&info[8] withPktPhyIFInfo:&info[9]];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    +[PLNetworkUtilities getUnattributedWakeInfo:];
  }

  if (+[PLDefaults debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__PLNetworkUtilities_getUnattributedWakeInfo___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (getUnattributedWakeInfo__defaultOnce != -1)
    {
      dispatch_once(&getUnattributedWakeInfo__defaultOnce, block);
    }

    if (getUnattributedWakeInfo__classDebugEnabled == 1)
    {
      v33 = v9;
      v34 = v8;
      v35 = v6;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wake uuid %s ifname %s src port %d dst port %d \n", out, &info[7], bswap32(LOWORD(info[5].event_code)) >> 16, bswap32(HIWORD(info[5].id)) >> 16];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getUnattributedWakeInfo:]"];
      [PLCoreStorage logMessage:v12 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:322];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v8 = v34;
      v6 = v35;
      v9 = v33;
    }
  }

  [v5 setObject:v6 forKeyedSubscript:@"wakeUUID"];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&info[7]];
  [v5 setObject:v17 forKeyedSubscript:@"Interface"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(LOWORD(info[5].event_code)) >> 16];
  [v5 setObject:v18 forKeyedSubscript:@"sourcePort"];

  [v5 setObject:v8 forKeyedSubscript:@"sourceAddress"];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(HIWORD(info[5].id)) >> 16];
  [v5 setObject:v19 forKeyedSubscript:@"destinationPort"];

  [v5 setObject:v9 forKeyedSubscript:@"destinationAddress"];
  [v5 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"AttributedWake"];
  v20 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  [v5 setObject:v20 forKeyedSubscript:@"InterfaceType"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "getCompanionLink:", &info[8])}];
  [v5 setObject:v21 forKeyedSubscript:@"CompanionLink"];

  if ((info[1].event_code & 0x40000) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:LOWORD(info[7].event_data[0])];
    [v5 setObject:v22 forKeyedSubscript:@"controlFlagType"];
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:info[7].event_code];
  [v5 setObject:v23 forKeyedSubscript:@"packetDataLength"];

  if (+[PLDefaults debugEnabled])
  {
    v24 = objc_opt_class();
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __46__PLNetworkUtilities_getUnattributedWakeInfo___block_invoke_138;
    v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v36[4] = v24;
    if (getUnattributedWakeInfo__defaultOnce_136 != -1)
    {
      dispatch_once(&getUnattributedWakeInfo__defaultOnce_136, v36);
    }

    if (getUnattributedWakeInfo__classDebugEnabled_137 == 1)
    {
      v25 = v9;
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unattributed wake dictionary %@", v5];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent2 = [v27 lastPathComponent];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getUnattributedWakeInfo:]"];
      [PLCoreStorage logMessage:v26 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:340];

      v30 = PLLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v9 = v25;
    }
  }

  v31 = *MEMORY[0x1E69E9840];

  return v5;
}

BOOL __46__PLNetworkUtilities_getUnattributedWakeInfo___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getUnattributedWakeInfo__classDebugEnabled = result;
  return result;
}

BOOL __46__PLNetworkUtilities_getUnattributedWakeInfo___block_invoke_138(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getUnattributedWakeInfo__classDebugEnabled_137 = result;
  return result;
}

BOOL __43__PLNetworkUtilities_handlePowerWakeEvent___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePowerWakeEvent__classDebugEnabled = result;
  return result;
}

BOOL __43__PLNetworkUtilities_handlePowerWakeEvent___block_invoke_147(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePowerWakeEvent__classDebugEnabled_146 = result;
  return result;
}

BOOL __43__PLNetworkUtilities_handlePowerWakeEvent___block_invoke_150(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePowerWakeEvent__classDebugEnabled_149 = result;
  return result;
}

+ (id)getNormalizedIPV6Address:(id)address
{
  v26 = *MEMORY[0x1E69E9840];
  v24[0] = 0;
  v24[1] = 0;
  addressCopy = address;
  if (!inet_pton(30, [address UTF8String], v24))
  {
    if (+[PLDefaults debugEnabled])
    {
      v12 = objc_opt_class();
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __47__PLNetworkUtilities_getNormalizedIPV6Address___block_invoke_159;
      v21 = &__block_descriptor_40_e5_v8__0lu32l8;
      v22 = v12;
      if (getNormalizedIPV6Address__defaultOnce_157 != -1)
      {
        dispatch_once(&getNormalizedIPV6Address__defaultOnce_157, &v18);
      }

      if (getNormalizedIPV6Address__classDebugEnabled_158 == 1)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed in inet_pton %d", 0, v18, v19, v20, v21, v22];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getNormalizedIPV6Address:]"];
        [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:390];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        v5 = 0;
        goto LABEL_16;
      }
    }

    goto LABEL_17;
  }

  if (!inet_ntop(30, v24, v25, 0x2Eu))
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25];
  if (+[PLDefaults debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__PLNetworkUtilities_getNormalizedIPV6Address___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (getNormalizedIPV6Address__defaultOnce != -1)
    {
      dispatch_once(&getNormalizedIPV6Address__defaultOnce, block);
    }

    if (getNormalizedIPV6Address__classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Normalized Address is %@", v5];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent2 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getNormalizedIPV6Address:]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent2 fromFunction:v10 fromLineNumber:387];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

LABEL_16:
    }
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

BOOL __47__PLNetworkUtilities_getNormalizedIPV6Address___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getNormalizedIPV6Address__classDebugEnabled = result;
  return result;
}

BOOL __47__PLNetworkUtilities_getNormalizedIPV6Address___block_invoke_159(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getNormalizedIPV6Address__classDebugEnabled_158 = result;
  return result;
}

+ (id)decodeIPPacket:(id)packet encryptedPath:(BOOL)path
{
  packetCopy = packet;
  v7 = packetCopy;
  buffer[0] = 0;
  if (!packetCopy)
  {
    goto LABEL_32;
  }

  if (!CFDataGetLength(packetCopy))
  {
    if (+[PLDefaults debugEnabled])
    {
      v15 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v15;
      if (decodeIPPacket_encryptedPath__defaultOnce != -1)
      {
        dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce, block);
      }

      if (decodeIPPacket_encryptedPath__classDebugEnabled == 1)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] Packet too short or no data available"];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
        lastPathComponent = [v16 lastPathComponent];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
        [PLCoreStorage logMessage:v10 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:419];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_31;
      }
    }

    goto LABEL_32;
  }

  v108.location = 0;
  v108.length = 1;
  CFDataGetBytes(v7, v108, buffer);
  v8 = buffer[0] >> 4;
  buffer[0] >>= 4;
  if (v8 == 6)
  {
    if (CFDataGetLength(v7) > 0x27)
    {
      v102 = 0;
      *v100 = 0u;
      v101 = 0u;
      v110.location = 0;
      v110.length = 40;
      CFDataGetBytes(v7, v110, v100);
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v35 = bswap32(*&v100[8]);
      v36 = bswap32(*&v100[12]);
      v37 = bswap32(v101);
      v38 = bswap32(DWORD1(v101));
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%x:%x:%x:%x:%x:%x:%x:%x", HIWORD(v35), v35, HIWORD(v36), v36, HIWORD(v37), v37, HIWORD(v38), v38];
      v40 = bswap32(DWORD2(v101));
      v41 = bswap32(HIDWORD(v101));
      v42 = bswap32(v102);
      v43 = bswap32(HIDWORD(v102));
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%x:%x:%x:%x:%x:%x:%x:%x", HIWORD(v40), v40, HIWORD(v41), v41, HIWORD(v42), v42, HIWORD(v43), v43];
      v32 = [self getNormalizedIPV6Address:v39];
      v93 = [self getNormalizedIPV6Address:v44];
      if (+[PLDefaults debugEnabled])
      {
        v45 = objc_opt_class();
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 3221225472;
        v99[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_186;
        v99[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v99[4] = v45;
        if (decodeIPPacket_encryptedPath__defaultOnce_184 != -1)
        {
          dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_184, v99);
        }

        if (decodeIPPacket_encryptedPath__classDebugEnabled_185 == 1)
        {
          v91 = v32;
          v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Normalized address is source %@ dest %@ orig s %@ orig d %@", v32, v93, v39, v44];
          v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
          lastPathComponent2 = [v47 lastPathComponent];
          v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
          [PLCoreStorage logMessage:v46 fromFile:lastPathComponent2 fromFunction:v49 fromLineNumber:474];

          v50 = v46;
          v51 = PLLogCommon();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }

          v32 = v91;
        }
      }

      v33 = v100[6];

      v34 = 40;
LABEL_42:
      if (v33 == 50)
      {
        if (path)
        {
          v52 = 0;
        }

        else
        {
          v52 = [self getSeqNoAndSPI:v7 offset:v34];
          if (+[PLDefaults debugEnabled])
          {
            v70 = objc_opt_class();
            v94[0] = MEMORY[0x1E69E9820];
            v94[1] = 3221225472;
            v94[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_231;
            v94[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v94[4] = v70;
            if (decodeIPPacket_encryptedPath__defaultOnce_229 != -1)
            {
              dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_229, v94);
            }

            if (decodeIPPacket_encryptedPath__classDebugEnabled_230 == 1)
            {
              v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invoked from non encrypted path (esp) - wifi or bb agent %@", v52];
              v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
              lastPathComponent3 = [v72 lastPathComponent];
              v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
              [PLCoreStorage logMessage:v71 fromFile:lastPathComponent3 fromFunction:v74 fromLineNumber:515];

              v75 = PLLogCommon();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
              {
                [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
              }
            }
          }
        }

        v14 = 0;
        v53 = @"ESP";
        goto LABEL_86;
      }

      if (v33 != 17)
      {
        if (v33 == 6)
        {
          v14 = [self tcpParse:v7 offset:v34];
          v52 = 0;
          v53 = @"TCP";
        }

        else
        {
          v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", v33];
          v52 = 0;
          v14 = 0;
        }

        goto LABEL_86;
      }

      v92 = v32;
      v14 = [self udpParse:v7 offset:v34];
      v54 = [v14 objectForKeyedSubscript:@"dest_port"];
      if ([v54 intValue] == 4500)
      {
      }

      else
      {
        v55 = [v14 objectForKeyedSubscript:@"source_port"];
        intValue = [v55 intValue];

        if (intValue != 4500)
        {
          v52 = 0;
          v53 = @"UDP";
          goto LABEL_86;
        }
      }

      v57 = [self isESPPacket:v7 offset:v34];
      v58 = +[PLDefaults debugEnabled];
      if (v57)
      {
        if (v58)
        {
          v59 = objc_opt_class();
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_210;
          v97[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v97[4] = v59;
          if (decodeIPPacket_encryptedPath__defaultOnce_208 != -1)
          {
            dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_208, v97);
          }

          if (decodeIPPacket_encryptedPath__classDebugEnabled_209 == 1)
          {
            v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found an ESP packet in UDP"];
            v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
            lastPathComponent4 = [v60 lastPathComponent];
            v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
            [PLCoreStorage logMessage:v90 fromFile:lastPathComponent4 fromFunction:v62 fromLineNumber:497];

            v63 = PLLogCommon();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }

            v32 = v92;
          }
        }

        if (!path)
        {
          v52 = [self getSeqNoAndSPI:v7 offset:(v34 + 8)];
          if (+[PLDefaults debugEnabled])
          {
            v64 = objc_opt_class();
            v96[0] = MEMORY[0x1E69E9820];
            v96[1] = 3221225472;
            v96[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_216;
            v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v96[4] = v64;
            if (decodeIPPacket_encryptedPath__defaultOnce_214 != -1)
            {
              dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_214, v96);
            }

            if (decodeIPPacket_encryptedPath__classDebugEnabled_215 == 1)
            {
              v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invoked from non encrypted path - wifi or bb agent %@", v52];
              v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
              lastPathComponent5 = [v66 lastPathComponent];
              v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
              [PLCoreStorage logMessage:v65 fromFile:lastPathComponent5 fromFunction:v68 fromLineNumber:502];

              v69 = PLLogCommon();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
              {
                [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
              }
            }
          }

          goto LABEL_84;
        }
      }

      else if (v58)
      {
        v76 = objc_opt_class();
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_222;
        v95[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v95[4] = v76;
        if (decodeIPPacket_encryptedPath__defaultOnce_220 != -1)
        {
          dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_220, v95);
        }

        if (decodeIPPacket_encryptedPath__classDebugEnabled_221 == 1)
        {
          v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found an IKE packet in UDP"];
          v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
          lastPathComponent6 = [v78 lastPathComponent];
          v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
          [PLCoreStorage logMessage:v77 fromFile:lastPathComponent6 fromFunction:v80 fromLineNumber:505];

          v81 = PLLogCommon();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v52 = 0;
LABEL_84:
      v53 = @"UDP";
LABEL_86:
      [dictionary setObject:v53 forKeyedSubscript:@"protocol"];
      v82 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:buffer[0]];
      [dictionary setObject:v82 forKeyedSubscript:@"version"];

      [dictionary setObject:v32 forKeyedSubscript:@"source"];
      [dictionary setObject:v93 forKeyedSubscript:@"destination"];
      if (v52)
      {
        v83 = MEMORY[0x1E696AD98];
        v84 = [v52 objectForKeyedSubscript:@"seqNo"];
        v85 = [v83 numberWithUnsignedInt:{objc_msgSend(v84, "unsignedIntValue")}];
        [dictionary setObject:v85 forKeyedSubscript:@"seqNo"];

        v86 = MEMORY[0x1E696AD98];
        v87 = [v52 objectForKeyedSubscript:@"spi"];
        v88 = [v86 numberWithUnsignedInt:{objc_msgSend(v87, "unsignedIntValue")}];
        [dictionary setObject:v88 forKeyedSubscript:@"spi"];
      }

      if (v14)
      {
        [dictionary setObject:v14 forKey:@"protocol_info"];
      }

      v10 = dictionary;

      v27 = v10;
      goto LABEL_91;
    }

    if (+[PLDefaults debugEnabled])
    {
      v19 = objc_opt_class();
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_177;
      v103[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v103[4] = v19;
      if (decodeIPPacket_encryptedPath__defaultOnce_175 != -1)
      {
        dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_175, v103);
      }

      if (decodeIPPacket_encryptedPath__classDebugEnabled_176 == 1)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] IPv6 Packet too short"];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
        lastPathComponent7 = [v20 lastPathComponent];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
        [PLCoreStorage logMessage:v10 fromFile:lastPathComponent7 fromFunction:v22 fromLineNumber:452];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_31;
      }
    }

LABEL_32:
    v27 = 0;
    goto LABEL_92;
  }

  if (v8 != 4)
  {
    if (+[PLDefaults debugEnabled])
    {
      v23 = objc_opt_class();
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_192;
      v98[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v98[4] = v23;
      if (decodeIPPacket_encryptedPath__defaultOnce_190 != -1)
      {
        dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_190, v98);
      }

      if (decodeIPPacket_encryptedPath__classDebugEnabled_191 == 1)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] unknown type: %d", buffer[0]];
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
        lastPathComponent8 = [v24 lastPathComponent];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
        [PLCoreStorage logMessage:v10 fromFile:lastPathComponent8 fromFunction:v26 fromLineNumber:480];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_31;
      }
    }

    goto LABEL_32;
  }

  if (CFDataGetLength(v7) > 0x13)
  {
    memset(v100, 0, sizeof(v100));
    LODWORD(v101) = 0;
    v109.location = 0;
    v109.length = 20;
    CFDataGetBytes(v7, v109, v100);
    v28 = v100[0];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v30 = bswap32(*&v100[12]);
    v31 = bswap32(v101);
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu.%lu.%lu.%lu", HIBYTE(v30), BYTE2(v30), BYTE1(v30), v30];
    v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu.%lu.%lu.%lu", HIBYTE(v31), BYTE2(v31), BYTE1(v31), v31];
    v33 = v100[9];
    v34 = 4 * (v28 & 0xFu);
    goto LABEL_42;
  }

  if (!+[PLDefaults debugEnabled])
  {
    goto LABEL_32;
  }

  v9 = objc_opt_class();
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_168;
  v104[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v104[4] = v9;
  if (decodeIPPacket_encryptedPath__defaultOnce_166 != -1)
  {
    dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_166, v104);
  }

  if (decodeIPPacket_encryptedPath__classDebugEnabled_167 != 1)
  {
    goto LABEL_32;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] IPv4 Packet too short"];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
  lastPathComponent9 = [v11 lastPathComponent];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
  [PLCoreStorage logMessage:v10 fromFile:lastPathComponent9 fromFunction:v13 fromLineNumber:430];

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
  }

LABEL_31:
  v27 = 0;
LABEL_91:

LABEL_92:

  return v27;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_168(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_167 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_177(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_176 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_186(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_185 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_192(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_191 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_210(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_209 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_216(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_215 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_222(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_221 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_231(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_230 = result;
  return result;
}

+ (id)tcpParse:(__CFData *)parse offset:(unsigned __int8)offset
{
  offsetCopy = offset;
  *buffer = 0;
  v27 = 0;
  v28 = 0;
  if (CFDataGetLength(parse) >= offset + 20)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v30.location = offsetCopy;
    v30.length = 20;
    CFDataGetBytes(parse, v30, buffer);
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*buffer) >> 16];
    [dictionary setObject:v15 forKey:@"source_port"];

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*&buffer[2]) >> 16];
    [dictionary setObject:v16 forKey:@"dest_port"];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*&buffer[4])];
    [dictionary setObject:v17 forKey:@"seq"];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(v27)];
    [dictionary setObject:v18 forKey:@"ack"];

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:BYTE5(v27)];
    [dictionary setObject:v19 forKey:@"control"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(HIWORD(v27)) >> 16];
    [dictionary setObject:v9 forKey:@"window"];
LABEL_10:

    goto LABEL_12;
  }

  if (+[PLDefaults debugEnabled])
  {
    v6 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __38__PLNetworkUtilities_tcpParse_offset___block_invoke;
    v24 = &__block_descriptor_40_e5_v8__0lu32l8;
    v25 = v6;
    if (tcpParse_offset__defaultOnce != -1)
    {
      dispatch_once(&tcpParse_offset__defaultOnce, &block);
    }

    if (tcpParse_offset__classDebugEnabled == 1)
    {
      v7 = MEMORY[0x1E696AEC0];
      Length = CFDataGetLength(parse);
      v9 = [v7 stringWithFormat:@"[PacketDecoder] TCP Packet too short: %@ Length: %ld", parse, Length, block, v22, v23, v24, v25];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities tcpParse:offset:]"];
      [PLCoreStorage logMessage:v9 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:543];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      dictionary = 0;
      goto LABEL_10;
    }
  }

  dictionary = 0;
LABEL_12:

  return dictionary;
}

BOOL __38__PLNetworkUtilities_tcpParse_offset___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  tcpParse_offset__classDebugEnabled = result;
  return result;
}

+ (id)udpParse:(__CFData *)parse offset:(unsigned __int8)offset
{
  offsetCopy = offset;
  *buffer = 0;
  if (CFDataGetLength(parse) >= offset + 8)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v22.location = offsetCopy;
    v22.length = 8;
    CFDataGetBytes(parse, v22, buffer);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*buffer) >> 16];
    [dictionary setObject:v13 forKey:@"source_port"];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*&buffer[2]) >> 16];
    [dictionary setObject:v7 forKey:@"dest_port"];
LABEL_10:

    goto LABEL_12;
  }

  if (+[PLDefaults debugEnabled])
  {
    v6 = objc_opt_class();
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __38__PLNetworkUtilities_udpParse_offset___block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v6;
    if (udpParse_offset__defaultOnce != -1)
    {
      dispatch_once(&udpParse_offset__defaultOnce, &v15);
    }

    if (udpParse_offset__classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] UDP Packet too short", v15, v16, v17, v18, v19];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities udpParse:offset:]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:566];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      dictionary = 0;
      goto LABEL_10;
    }
  }

  dictionary = 0;
LABEL_12:

  return dictionary;
}

BOOL __38__PLNetworkUtilities_udpParse_offset___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  udpParse_offset__classDebugEnabled = result;
  return result;
}

+ (BOOL)isESPPacket:(__CFData *)packet offset:(unsigned __int8)offset
{
  offsetCopy = offset;
  if (CFDataGetLength(packet) <= offset + 12)
  {
    return 0;
  }

  *buffer = 0;
  if (+[PLDefaults debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PLNetworkUtilities_isESPPacket_offset___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (isESPPacket_offset__defaultOnce != -1)
    {
      dispatch_once(&isESPPacket_offset__defaultOnce, block);
    }

    if (isESPPacket_offset__classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] Read marker value."];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities isESPPacket:offset:]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:586];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v34.location = offsetCopy + 8;
  v34.length = 4;
  CFDataGetBytes(packet, v34, buffer);
  v12 = *buffer;
  v13 = *buffer != 0;
  v14 = +[PLDefaults debugEnabled];
  if (!v12)
  {
    if (v14)
    {
      v21 = objc_opt_class();
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __41__PLNetworkUtilities_isESPPacket_offset___block_invoke_282;
      v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v31[4] = v21;
      if (isESPPacket_offset__defaultOnce_280 != -1)
      {
        dispatch_once(&isESPPacket_offset__defaultOnce_280, v31);
      }

      if (isESPPacket_offset__classDebugEnabled_281 == 1)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] Found an IKE packet"];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
        lastPathComponent2 = [v22 lastPathComponent];
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities isESPPacket:offset:]"];
        [PLCoreStorage logMessage:v16 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:591];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_23;
      }
    }

    return 0;
  }

  if (v14)
  {
    v15 = objc_opt_class();
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __41__PLNetworkUtilities_isESPPacket_offset___block_invoke_288;
    v29 = &__block_descriptor_40_e5_v8__0lu32l8;
    v30 = v15;
    if (isESPPacket_offset__defaultOnce_286 != -1)
    {
      dispatch_once(&isESPPacket_offset__defaultOnce_286, &v26);
    }

    if (isESPPacket_offset__classDebugEnabled_287 == 1)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] Found an ESP packet", v26, v27, v28, v29, v30];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent3 = [v17 lastPathComponent];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities isESPPacket:offset:]"];
      [PLCoreStorage logMessage:v16 fromFile:lastPathComponent3 fromFunction:v19 fromLineNumber:594];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

LABEL_23:

      return v13;
    }
  }

  return 1;
}

BOOL __41__PLNetworkUtilities_isESPPacket_offset___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  isESPPacket_offset__classDebugEnabled = result;
  return result;
}

BOOL __41__PLNetworkUtilities_isESPPacket_offset___block_invoke_282(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  isESPPacket_offset__classDebugEnabled_281 = result;
  return result;
}

BOOL __41__PLNetworkUtilities_isESPPacket_offset___block_invoke_288(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  isESPPacket_offset__classDebugEnabled_287 = result;
  return result;
}

+ (id)getSeqNoAndSPI:(__CFData *)i offset:(unsigned __int8)offset
{
  offsetCopy = offset;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  *buffer = 0;
  Length = CFDataGetLength(i);
  v8.location = offsetCopy;
  if (Length >= offsetCopy + 8)
  {
    v8.length = 8;
    CFDataGetBytes(i, v8, buffer);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*&buffer[4])];
    [dictionary setObject:v16 forKeyedSubscript:@"seqNo"];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*buffer)];
    [dictionary setObject:v17 forKeyedSubscript:@"spi"];

    v15 = dictionary;
  }

  else
  {
    if (+[PLDefaults debugEnabled])
    {
      v9 = objc_opt_class();
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __44__PLNetworkUtilities_getSeqNoAndSPI_offset___block_invoke;
      v22 = &__block_descriptor_40_e5_v8__0lu32l8;
      v23 = v9;
      if (getSeqNoAndSPI_offset__defaultOnce != -1)
      {
        dispatch_once(&getSeqNoAndSPI_offset__defaultOnce, &v19);
      }

      if (getSeqNoAndSPI_offset__classDebugEnabled == 1)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] Cannot get spi and seq no", v19, v20, v21, v22, v23];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getSeqNoAndSPI:offset:]"];
        [PLCoreStorage logMessage:v10 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:607];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v15 = 0;
  }

  return v15;
}

BOOL __44__PLNetworkUtilities_getSeqNoAndSPI_offset___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getSeqNoAndSPI_offset__classDebugEnabled = result;
  return result;
}

+ (void)getNetworkWakeInfo:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)getUnattributedWakeInfo:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end