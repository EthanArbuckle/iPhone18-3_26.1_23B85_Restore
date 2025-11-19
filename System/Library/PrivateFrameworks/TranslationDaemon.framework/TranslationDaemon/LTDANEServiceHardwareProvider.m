@interface LTDANEServiceHardwareProvider
@end

@implementation LTDANEServiceHardwareProvider

uint64_t __45___LTDANEServiceHardwareProvider_isAvailable__block_invoke()
{
  result = MGIsQuestionValid();
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  isAvailable_result = result;
  return result;
}

void __41___LTDANEServiceHardwareProvider_subType__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isAvailable])
  {
    v1 = NSSelectorFromString(&cfstr_Anesubtype.isa);
    v7 = 0;
    v8 = &v7;
    v9 = 0x2050000000;
    v2 = get_ANEDeviceInfoClass_softClass;
    v10 = get_ANEDeviceInfoClass_softClass;
    if (!get_ANEDeviceInfoClass_softClass)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __get_ANEDeviceInfoClass_block_invoke;
      v6[3] = &unk_2789B57C0;
      v6[4] = &v7;
      __get_ANEDeviceInfoClass_block_invoke(v6);
      v2 = v8[3];
    }

    v3 = v2;
    _Block_object_dispose(&v7, 8);
    if (objc_opt_respondsToSelector())
    {
      v4 = ([v3 methodForSelector:v1])(v3, v1);
      v5 = subType_result;
      subType_result = v4;
    }
  }
}

@end