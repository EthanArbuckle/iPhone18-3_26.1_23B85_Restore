@interface SASendCommands(CommandUserInfo)
- (void)_siriui_applyUserInfoDictionary:()CommandUserInfo;
@end

@implementation SASendCommands(CommandUserInfo)

- (void)_siriui_applyUserInfoDictionary:()CommandUserInfo
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  commands = [self commands];
  v7 = [commands countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(commands);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v11 _siriui_applyUserInfoDictionary:v4];
        [v5 addObject:v11];
      }

      v8 = [commands countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  [self setCommands:v12];
}

@end