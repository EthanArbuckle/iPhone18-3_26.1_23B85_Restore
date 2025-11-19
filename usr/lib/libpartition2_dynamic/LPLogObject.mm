@interface LPLogObject
@end

@implementation LPLogObject

void ___LPLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.MobileSoftwareUpdate", "libpartition2");
  v1 = _LPLogObject_obj;
  _LPLogObject_obj = v0;
}

@end