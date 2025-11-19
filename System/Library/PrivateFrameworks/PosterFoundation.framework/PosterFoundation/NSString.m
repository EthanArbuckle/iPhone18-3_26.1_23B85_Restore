@interface NSString
@end

@implementation NSString

void __55__NSString_PosterFoundation__pf_bootInstanceIdentifier__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 37;
  if (sysctlbyname("kern.bootsessionuuid", &_block_invoke_uuid_str, &v6, 0, 0) < 0)
  {
    v0 = PFLogCommon();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __55__NSString_PosterFoundation__pf_bootInstanceIdentifier__block_invoke_cold_1(v0);
    }
  }

  v1 = objc_alloc(MEMORY[0x1E696AEC0]);
  v2 = [v1 initWithBytesNoCopy:&_block_invoke_uuid_str length:v6 - 1 encoding:4 freeWhenDone:0];
  v3 = pf_bootInstanceIdentifier_uuid;
  pf_bootInstanceIdentifier_uuid = v2;

  v4 = PFLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = pf_bootInstanceIdentifier_uuid;
    _os_log_impl(&dword_1C269D000, v4, OS_LOG_TYPE_INFO, "Got boot session uuid: %@", buf, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end