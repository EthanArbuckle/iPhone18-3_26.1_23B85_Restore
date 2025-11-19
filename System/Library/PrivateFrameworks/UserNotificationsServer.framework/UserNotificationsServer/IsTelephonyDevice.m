@interface IsTelephonyDevice
@end

@implementation IsTelephonyDevice

uint64_t ___IsTelephonyDevice_block_invoke()
{
  result = MGGetSInt32Answer();
  _IsTelephonyDevice_telephonyDevice = result != 0;
  return result;
}

@end