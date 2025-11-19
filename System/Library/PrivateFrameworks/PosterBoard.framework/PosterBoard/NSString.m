@interface NSString
@end

@implementation NSString

void __52__NSString_PBFUtilities__pbf_bootInstanceIdentifier__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 37;
  if (sysctlbyname("kern.bootsessionuuid", &_block_invoke_uuid_str, &v5, 0, 0) < 0)
  {
    v0 = PBFLogCommon();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v0, OS_LOG_TYPE_DEFAULT, "could not get kern.bootsessionuuid", buf, 2u);
    }
  }

  v1 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = [v1 initWithBytesNoCopy:&_block_invoke_uuid_str length:v5 - 1 encoding:4 freeWhenDone:0];
  v3 = pbf_bootInstanceIdentifier_uuid;
  pbf_bootInstanceIdentifier_uuid = v2;

  v4 = PBFLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v7 = pbf_bootInstanceIdentifier_uuid;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_INFO, "Got boot session uuid: %@", buf, 0xCu);
  }
}

@end