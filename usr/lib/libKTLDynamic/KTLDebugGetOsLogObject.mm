@interface KTLDebugGetOsLogObject
@end

@implementation KTLDebugGetOsLogObject

os_log_t ___KTLDebugGetOsLogObject_block_invoke()
{
  result = os_log_create("com.apple.telephony.bb", "ktl");
  qword_2A13A4F60 = result;
  return result;
}

@end