@interface TelephonyUtilDebugGetOsLogObject
@end

@implementation TelephonyUtilDebugGetOsLogObject

os_log_t ___TelephonyUtilDebugGetOsLogObject_block_invoke()
{
  result = os_log_create("com.apple.telephony", "libtu");
  _MergedGlobals_2 = result;
  return result;
}

@end