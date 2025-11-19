@interface CR
@end

@implementation CR

uint64_t __CR_REMObjectID_registerClass_block_invoke()
{
  v0 = objc_opt_class();

  return [CRCoder registerClass:v0 forType:@"com.apple.CRDT.REMObjectID"];
}

uint64_t __CR_NSString_registerClass_block_invoke()
{
  v0 = objc_opt_class();

  return [CRCoder registerClass:v0 forType:@"com.apple.CRDT.NSString"];
}

@end