@interface NSString
@end

@implementation NSString

void __58__NSString_SBHStringUtilities__sbh_bootInstanceIdentifier__block_invoke()
{
  v5 = 37;
  if (sysctlbyname("kern.bootsessionuuid", &_block_invoke_uuid_str, &v5, 0, 0) < 0)
  {
    v2 = [MEMORY[0x1E696AFB0] UUID];
    v3 = [v2 UUIDString];
    v4 = sbh_bootInstanceIdentifier_uuid;
    sbh_bootInstanceIdentifier_uuid = v3;
  }

  else
  {
    v0 = objc_alloc(MEMORY[0x1E696AEC0]);
    v1 = [v0 initWithBytesNoCopy:&_block_invoke_uuid_str length:v5 - 1 encoding:4 freeWhenDone:0];
    v2 = sbh_bootInstanceIdentifier_uuid;
    sbh_bootInstanceIdentifier_uuid = v1;
  }
}

@end