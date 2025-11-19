@interface UAPBIRPublicURLConverter
+ (void)registerConverter;
- (id)convertIRDataToPlatform:(id)a3;
- (id)convertPlatformDataToIR:(id)a3;
@end

@implementation UAPBIRPublicURLConverter

+ (void)registerConverter
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(@"PBIR");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = @"public.url";
    v8 = 2112;
    v9 = a1;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEFAULT, "Registering converter for type: %@ -> %@", &v6, 0x16u);
  }

  v4 = +[UASharedPasteboardIRManager sharedIRManager];
  [v4 registerIRHandlerClass:a1 forType:@"public.url"];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)convertPlatformDataToIR:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _uaGetLogForCategory(@"PBIR");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = @"public.url";
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEFAULT, "Converting from platform to IR for type: %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)convertIRDataToPlatform:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _uaGetLogForCategory(@"PBIR");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = @"public.url";
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEFAULT, "Converting from IR to platform for type: %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

@end