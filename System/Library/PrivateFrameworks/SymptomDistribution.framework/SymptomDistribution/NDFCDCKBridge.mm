@interface NDFCDCKBridge
+ (void)setContainerOptions:(id)options onCloudKitContainerOptions:(id)containerOptions;
@end

@implementation NDFCDCKBridge

+ (void)setContainerOptions:(id)options onCloudKitContainerOptions:(id)containerOptions
{
  v13 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  containerOptionsCopy = containerOptions;
  v7 = containerOptionsCopy;
  if (optionsCopy && containerOptionsCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = optionsCopy;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_2329A4000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting CKContainerOptions %@ onto %@", &v9, 0x16u);
    }

    [v7 setContainerOptions:optionsCopy];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end