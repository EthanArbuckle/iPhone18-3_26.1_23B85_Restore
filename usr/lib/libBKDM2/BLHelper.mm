@interface BLHelper
+ (id)bootArgs;
+ (id)buildVersionString;
+ (id)deviceBatteryLevel;
+ (id)deviceSerialNumberString;
+ (id)encryptData:(id)data;
+ (id)numberForBootArg:(id)arg;
+ (id)numberFromDouble:(double)double;
+ (id)numberFromFloat:(float)float;
+ (id)objectOrNSNull:(id)null;
+ (id)stringFromFrameType:(unsigned int)type;
+ (id)stringFromSequenceType:(unsigned int)type;
+ (uint64_t)deviceBatteryLevel;
+ (void)displayUserPrompt:(unint64_t)prompt strings:(id)strings completion:(id)completion;
+ (void)median:(unsigned __int16 *)median count:(unint64_t)count queue:(id)queue completionBlock:(id)block;
+ (void)writeTailspinToFile:(id)file;
@end

@implementation BLHelper

+ (id)stringFromSequenceType:(unsigned int)type
{
  if (type > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_29EE54BB0[type];
  }
}

+ (id)stringFromFrameType:(unsigned int)type
{
  if (type > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_29EE54BD0[type];
  }
}

+ (id)deviceSerialNumberString
{
  if (deviceSerialNumberString_onceToken != -1)
  {
    +[BLHelper deviceSerialNumberString];
  }

  v3 = deviceSerialNumberString_serialNumberString;

  return v3;
}

void __36__BLHelper_deviceSerialNumberString__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = deviceSerialNumberString_serialNumberString;
  deviceSerialNumberString_serialNumberString = v0;

  if (!deviceSerialNumberString_serialNumberString)
  {
    deviceSerialNumberString_serialNumberString = [MEMORY[0x29EDB8E28] null];

    MEMORY[0x2A1C71028]();
  }
}

+ (id)deviceBatteryLevel
{
  null = [MEMORY[0x29EDB8E28] null];
  v3 = IOPSCopyPowerSourcesInfo();
  if (!v3)
  {
    +[BLHelper deviceBatteryLevel];
    v11 = 0;
    v12 = 0;
    goto LABEL_14;
  }

  v4 = v3;
  v5 = IOPSCopyPowerSourcesList(v3);
  if (!v5)
  {
    +[BLHelper deviceBatteryLevel];
    v11 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    CFRelease(v6);
    v11 = 0;
    v12 = 0;
LABEL_12:
    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "totalCapacity != 0", &unk_296D32C0B, "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BLHelper.m", 108, 0);
    goto LABEL_13;
  }

  v8 = Count;
  v22 = null;
  v23 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = @"Type";
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    v15 = IOPSGetPowerSourceDescription(v4, ValueAtIndex);
    Value = CFDictionaryGetValue(v15, v13);
    if (Value && CFEqual(Value, @"InternalBattery"))
    {
      CFDictionaryGetValue(v15, @"Max Capacity");
      v18 = v17 = v13;

      v19 = CFDictionaryGetValue(v15, @"Current Capacity");

      v10 += [v18 longLongValue];
      v23 += [v19 longLongValue];
      v12 = v18;
      v13 = v17;
      v11 = v19;
    }

    ++v9;
  }

  while (v8 != v9);
  CFRelease(v6);
  if (!v10)
  {
    null = v22;
    goto LABEL_12;
  }

  null = [MEMORY[0x29EDBA070] numberWithDouble:v23 * 100.0 / v10];

LABEL_13:
  CFRelease(v4);
LABEL_14:
  v20 = null;

  return null;
}

+ (id)bootArgs
{
  if (bootArgs_onceToken != -1)
  {
    +[BLHelper bootArgs];
  }

  v3 = bootArgs_bootArgs;

  return v3;
}

void __20__BLHelper_bootArgs__block_invoke()
{
  v0 = IORegistryEntryFromPath(*MEMORY[0x29EDBB118], "IODeviceTree:/options");
  if (!v0)
  {
    __20__BLHelper_bootArgs__block_invoke_cold_1();
    return;
  }

  v1 = v0;
  v2 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "boot-args", 0x8000100u);
  CFProperty = IORegistryEntryCreateCFProperty(v1, v2, 0, 0);
  CFRelease(v2);
  IOObjectRelease(v1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = CFProperty;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_8;
    }

    v3 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:CFProperty encoding:1];
  }

  v4 = v3;
LABEL_8:
  v5 = [v4 componentsSeparatedByString:@" "];
  v6 = bootArgs_bootArgs;
  bootArgs_bootArgs = v5;
}

+ (id)numberForBootArg:(id)arg
{
  v24 = *MEMORY[0x29EDCA608];
  argCopy = arg;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  bootArgs = [self bootArgs];
  v6 = [bootArgs countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(bootArgs);
        }

        v11 = [*(*(&v19 + 1) + 8 * i) componentsSeparatedByString:@"="];
        v12 = [v11 objectAtIndexedSubscript:0];
        v13 = [v12 isEqualToString:argCopy];

        if (v13 && [v11 count] == 2)
        {
          v14 = MEMORY[0x29EDBA070];
          v15 = [v11 objectAtIndexedSubscript:1];
          v16 = [v14 numberWithInteger:{objc_msgSend(v15, "integerValue")}];

          v8 = v16;
        }
      }

      v7 = [bootArgs countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v17 = *MEMORY[0x29EDCA608];

  return v8;
}

+ (id)buildVersionString
{
  if (buildVersionString_onceToken != -1)
  {
    +[BLHelper buildVersionString];
  }

  v3 = buildVersionString_buildVersionString;

  return v3;
}

void __30__BLHelper_buildVersionString__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = buildVersionString_buildVersionString;
  buildVersionString_buildVersionString = v0;

  if (!buildVersionString_buildVersionString)
  {
    buildVersionString_buildVersionString = [MEMORY[0x29EDB8E28] null];

    MEMORY[0x2A1C71028]();
  }
}

+ (id)encryptData:(id)data
{
  dataCopy = data;
  v4 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:biolog_cert_pem length:1631 freeWhenDone:0];
  if (!v4)
  {
    +[BLHelper encryptData:];
    v6 = 0;
LABEL_10:
    data = 0;
    goto LABEL_5;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  v6 = SecCertificateCreateWithPEM();
  if (!v6)
  {
    +[BLHelper encryptData:];
    goto LABEL_10;
  }

  data = [MEMORY[0x29EDB8DF8] data];
  v8 = SecCMSCreateEnvelopedData();
  if (v8)
  {
    [BLHelper encryptData:v8];
    v6 = 0;
  }

  else
  {
    v6 = data;
    data = v6;
  }

LABEL_5:

  return v6;
}

uint64_t __49__BLHelper_displayUserPrompt_strings_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:0];

  v3 = 0;
  if ([*(a1 + 32) count] >= 2)
  {
    v3 = [*(a1 + 32) objectAtIndexedSubscript:1];
  }

  if ([*(a1 + 32) count] < 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:2];
  }

  if ([*(a1 + 32) count] < 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:3];
  }

  if ([*(a1 + 32) count] < 5)
  {
    otherButtonTitle = 0;
  }

  else
  {
    otherButtonTitle = [*(a1 + 32) objectAtIndexedSubscript:4];
  }

  v9 = 0;
  NSLog(&cfstr_Displayuserpro_0.isa, v2, v3);
  v7 = CFUserNotificationDisplayAlert(0.0, *(a1 + 48), 0, 0, 0, v2, v3, v4, v5, otherButtonTitle, &v9);
  if (v7)
  {
    result = __49__BLHelper_displayUserPrompt_strings_completion___block_invoke_cold_1(v7);
  }

  else
  {
    NSLog(&cfstr_Displayuserpro_1.isa, v9);
    result = (*(*(a1 + 40) + 16))();
  }

  displayUserPrompt_strings_completion__displaying = 0;
  return result;
}

+ (void)writeTailspinToFile:(id)file
{
  v10[1] = *MEMORY[0x29EDCA608];
  fileCopy = file;
  v4 = open([fileCopy fileSystemRepresentation], 514, 384);
  if (v4 != -1)
  {
    v5 = v4;
    v9 = *MEMORY[0x29EDC9790];
    v10[0] = MEMORY[0x29EDB8EB0];
    v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = tailspin_dump_output_with_options_sync();

    if ((v7 & 1) == 0)
    {
      NSLog(&cfstr_Writetailspint.isa, fileCopy);
      unlink([fileCopy fileSystemRepresentation]);
    }

    close(v5);
  }

  v8 = *MEMORY[0x29EDCA608];
}

+ (id)numberFromFloat:(float)float
{
  v3 = [MEMORY[0x29EDBA070] numberWithFloat:?];
  notANumber = [MEMORY[0x29EDB9F90] notANumber];
  v5 = [(__CFString *)v3 isEqualToNumber:notANumber];

  if (v5)
  {

    v3 = @"(NaN)";
  }

  return v3;
}

+ (id)numberFromDouble:(double)double
{
  v3 = [MEMORY[0x29EDBA070] numberWithDouble:double];
  notANumber = [MEMORY[0x29EDB9F90] notANumber];
  v5 = [(__CFString *)v3 isEqualToNumber:notANumber];

  if (v5)
  {

    v3 = @"(NaN)";
  }

  return v3;
}

+ (id)objectOrNSNull:(id)null
{
  nullCopy = null;
  if (!nullCopy)
  {
    nullCopy = [MEMORY[0x29EDB8E28] null];
  }

  return nullCopy;
}

+ (void)median:(unsigned __int16 *)median count:(unint64_t)count queue:(id)queue completionBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (median)
  {
    v11 = [MEMORY[0x29EDB8DF8] dataWithBytes:median length:2 * count];
    v12 = v11;
    if (v11)
    {
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __47__BLHelper_median_count_queue_completionBlock___block_invoke;
      block[3] = &unk_29EE54B90;
      v14 = v11;
      countCopy = count;
      v15 = blockCopy;
      dispatch_async(queueCopy, block);
    }

    else
    {
      +[BLHelper median:count:queue:completionBlock:];
    }
  }

  else
  {
    +[BLHelper median:count:queue:completionBlock:];
  }
}

uint64_t __47__BLHelper_median_count_queue_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableBytes];
  v3 = *(a1 + 48);
  v4 = (v2 + (v3 & 0xFFFFFFFFFFFFFFFELL));
  if (v2)
  {
    if (v3 < 0)
    {
      __47__BLHelper_median_count_queue_completionBlock___block_invoke_cold_2();
    }

    else
    {
      v5 = (v2 + 2 * v3 - 2);
      if (v4 > v5)
      {
        __47__BLHelper_median_count_queue_completionBlock___block_invoke_cold_1();
      }

      else
      {
        while (v2 < v5)
        {
          v6 = (v2 - 2);
          v7 = *v5;
          if (v2 - 2 < v5)
          {
            v8 = v5;
            do
            {
              do
              {
                v10 = v6[1];
                ++v6;
                v9 = v10;
                v11 = v10 > v7;
              }

              while (v10 < v7);
              if (v11)
              {
                while (v6 < v8)
                {
                  v13 = *--v8;
                  v12 = v13;
                  if (v13 <= v7)
                  {
                    *v6 = v12;
                    *v8 = v9;
                    break;
                  }
                }
              }
            }

            while (v6 < v8);
            LOWORD(v7) = *v5;
          }

          v14 = *v6;
          *v6 = v7;
          *v5 = v14;
          if (v6 <= v4)
          {
            if (v6 >= v4)
            {
              break;
            }

            v2 = (v6 + 1);
          }

          else
          {
            v5 = (v6 - 1);
          }
        }
      }
    }
  }

  else
  {
    __47__BLHelper_median_count_queue_completionBlock___block_invoke_cold_3();
  }

  v15 = *v4;
  v16 = *(*(a1 + 40) + 16);

  return v16();
}

+ (void)displayUserPrompt:(unint64_t)prompt strings:(id)strings completion:(id)completion
{
  stringsCopy = strings;
  completionCopy = completion;
  NSLog(&cfstr_Displayuserpro.isa, prompt, stringsCopy != 0, completionCopy != 0);
  if (stringsCopy)
  {
    if ([stringsCopy count])
    {
      if ((displayUserPrompt_strings_completion__displaying & 1) == 0)
      {
        displayUserPrompt_strings_completion__displaying = 1;
        v9 = dispatch_get_global_queue(33, 0);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 3221225472;
        block[2] = __49__BLHelper_displayUserPrompt_strings_completion___block_invoke;
        block[3] = &unk_29EE54B90;
        v11 = stringsCopy;
        promptCopy = prompt;
        v12 = completionCopy;
        dispatch_async(v9, block);
      }
    }

    else
    {
      fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "[strings count] >= 1", &unk_296D32C0B, "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BLHelper.m", 224, 0);
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "strings", &unk_296D32C0B, "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BLHelper.m", 223, 0);
  }
}

+ (uint64_t)deviceBatteryLevel
{
  v0 = *MEMORY[0x29EDCA610];
  OUTLINED_FUNCTION_0_0();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 88, 0);
}

uint64_t __20__BLHelper_bootArgs__block_invoke_cold_1()
{
  v0 = *MEMORY[0x29EDCA610];
  OUTLINED_FUNCTION_0_0();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 130, 0);
}

+ (uint64_t)encryptData:.cold.2()
{
  v0 = *MEMORY[0x29EDCA610];
  OUTLINED_FUNCTION_0_0();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 206, 0);
}

+ (uint64_t)encryptData:.cold.3()
{
  v0 = *MEMORY[0x29EDCA610];
  OUTLINED_FUNCTION_0_0();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 203, 0);
}

+ (uint64_t)median:count:queue:completionBlock:.cold.1()
{
  v0 = *MEMORY[0x29EDCA610];
  OUTLINED_FUNCTION_0_0();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 376, 0);
}

+ (uint64_t)median:count:queue:completionBlock:.cold.2()
{
  v0 = *MEMORY[0x29EDCA610];
  OUTLINED_FUNCTION_0_0();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 373, 0);
}

uint64_t __47__BLHelper_median_count_queue_completionBlock___block_invoke_cold_1()
{
  v0 = *MEMORY[0x29EDCA610];
  OUTLINED_FUNCTION_0_0();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 330, 0);
}

uint64_t __47__BLHelper_median_count_queue_completionBlock___block_invoke_cold_2()
{
  v0 = *MEMORY[0x29EDCA610];
  OUTLINED_FUNCTION_0_0();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 329, 0);
}

uint64_t __47__BLHelper_median_count_queue_completionBlock___block_invoke_cold_3()
{
  v0 = *MEMORY[0x29EDCA610];
  OUTLINED_FUNCTION_0_0();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 326, 0);
}

@end