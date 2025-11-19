@interface NDFCDCKBridge
+ (void)setContainerOptions:(id)a3 onCloudKitContainerOptions:(id)a4;
@end

@implementation NDFCDCKBridge

+ (void)setContainerOptions:(id)a3 onCloudKitContainerOptions:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_2329A4000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting CKContainerOptions %@ onto %@", &v9, 0x16u);
    }

    [v7 setContainerOptions:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end