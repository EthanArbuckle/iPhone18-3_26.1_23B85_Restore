@interface TUTelephonyCenter
@end

@implementation TUTelephonyCenter

uint64_t ___TUTelephonyCenter_block_invoke_2()
{
  CFRunLoopGetCurrent();
  v0 = *MEMORY[0x1E695E8D0];
  CTTelephonyCenterSetDefaultRunloop();
  result = CTTelephonyCenterGetDefault();
  _TUTelephonyCenter_tc = result;
  return result;
}

@end