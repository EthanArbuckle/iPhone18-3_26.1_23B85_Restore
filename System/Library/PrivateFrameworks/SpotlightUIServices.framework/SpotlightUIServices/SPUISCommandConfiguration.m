@interface SPUISCommandConfiguration
+ (id)commandButtonItemForAddressLocation:(id)a3;
+ (id)commandButtonItemForBirthday:(id)a3;
+ (id)commandButtonItemForEmail:(id)a3;
+ (id)commandButtonItemForPhoneNumber:(id)a3 contact:(id)a4;
+ (id)dialRequestURLWithPhoneNumber:(id)a3 contact:(id)a4;
+ (id)punchoutCommandWithScheme:(id)a3 host:(id)a4 path:(id)a5 queryItems:(id)a6;
+ (id)valueWithPrimaryCommand:(id)a3 copyString:(id)a4 copyTitle:(id)a5 previewCommandConfigurations:(id)a6;
+ (id)valueWithPrimaryCommand:(id)a3 copyString:(id)a4 copyTitle:(id)a5 previewCommandTitle:(id)a6;
- (SPUISCommandConfiguration)initWithTitle:(id)a3 symbol:(id)a4 command:(id)a5;
- (id)createSFCommandButtonItem;
@end

@implementation SPUISCommandConfiguration

- (SPUISCommandConfiguration)initWithTitle:(id)a3 symbol:(id)a4 command:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SPUISCommandConfiguration;
  v11 = [(SPUISCommandConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SPUISCommandConfiguration *)v11 setTitle:v8];
    [(SPUISCommandConfiguration *)v12 setCommand:v10];
    [(SPUISCommandConfiguration *)v12 setSymbol:v9];
  }

  return v12;
}

- (id)createSFCommandButtonItem
{
  v3 = objc_opt_new();
  v4 = [(SPUISCommandConfiguration *)self command];
  [v3 setCommand:v4];

  v5 = [(SPUISCommandConfiguration *)self title];
  [v3 setTitle:v5];

  v6 = objc_opt_new();
  v7 = [(SPUISCommandConfiguration *)self symbol];
  [v6 setSymbolName:v7];

  [v6 setIsTemplate:1];
  [v3 setImage:v6];

  return v3;
}

+ (id)valueWithPrimaryCommand:(id)a3 copyString:(id)a4 copyTitle:(id)a5 previewCommandConfigurations:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_opt_new();
  v26 = v9;
  [v12 setCopyableString:v9];
  v13 = objc_opt_new();
  [v13 setCopyableItem:v12];
  v14 = objc_opt_new();
  [v14 setCommand:v13];
  if (v10)
  {
    [v14 setTitle:v10];
  }

  v15 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v28 + 1) + 8 * i) createSFCommandButtonItem];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

  v22 = [v27 createSFCommandButtonItem];
  [v22 setImage:0];
  if (+[SPUISUtilities isMacOS])
  {
    [v22 setCommand:0];
  }

  else
  {
    v23 = [v22 command];
    [v22 setCommand:v23];
  }

  [v15 addObject:v14];
  [v22 setPreviewButtonItems:v15];

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)valueWithPrimaryCommand:(id)a3 copyString:(id)a4 copyTitle:(id)a5 previewCommandTitle:(id)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [SPUISCommandConfiguration alloc];
  v14 = [v12 title];
  v15 = [v12 symbol];
  v16 = [v12 command];
  v17 = [(SPUISCommandConfiguration *)v13 initWithTitle:v14 symbol:v15 command:v16];

  [(SPUISCommandConfiguration *)v17 setTitle:v9];
  v18 = objc_opt_class();
  v23[0] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v20 = [v18 valueWithPrimaryCommand:v12 copyString:v11 copyTitle:v10 previewCommandConfigurations:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)punchoutCommandWithScheme:(id)a3 host:(id)a4 path:(id)a5 queryItems:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setScheme:v12];

  [v13 setHost:v11];
  [v13 setPath:v10];

  [v13 setQueryItems:v9];
  v14 = [v13 URL];
  if (v14)
  {
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277D4C550] punchoutWithURL:v14];
    [v15 setPunchout:v16];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)dialRequestURLWithPhoneNumber:(id)a3 contact:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D6EE28]);
  v8 = [v7 telephonyProvider];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D6EED0]) initWithProvider:v8];
    v10 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:2 value:v5];
    [v9 setHandle:v10];

    if ([v6 hasBeenPersisted])
    {
      v11 = [v6 identifier];
      [v9 setContactIdentifier:v11];
    }

    [v9 setVideo:0];
    [v9 setTtyType:0];
    v12 = [v9 URL];
  }

  else
  {
    NSLog(&cfstr_Spuiscontactre.isa, v7, 0);
    v12 = 0;
  }

  return v12;
}

+ (id)commandButtonItemForPhoneNumber:(id)a3 contact:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [objc_opt_class() dialRequestURLWithPhoneNumber:v5 contact:v6];

  if (v8)
  {
    v31[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    [v7 setUrls:v9];

    v10 = objc_opt_new();
    [v10 setPunchout:v7];
    v29 = [[SPUISCommandConfiguration alloc] initWithTitle:v5 symbol:@"phone" command:v10];
    v11 = [SPUISCommandConfiguration alloc];
    v12 = MEMORY[0x277CCACA8];
    v13 = [SPUISUtilities localizedStringForKey:@"MENU_COMMAND_CALL_PHONE_NUMBER"];
    v14 = [v12 localizedStringWithFormat:v13, v5];
    v15 = [(SPUISCommandConfiguration *)v11 initWithTitle:v14 symbol:@"phone" command:v10];

    v16 = objc_opt_class();
    v17 = [v5 stringByRemovingWhitespace];
    v18 = [v16 punchoutCommandWithScheme:@"im" host:0 path:v17 queryItems:0];

    v19 = [SPUISCommandConfiguration alloc];
    v20 = MEMORY[0x277CCACA8];
    v21 = [SPUISUtilities localizedStringForKey:@"MENU_COMMAND_MESSAGE_PHONE_NUMBER"];
    v22 = [v20 localizedStringWithFormat:v21, v5];
    v23 = [(SPUISCommandConfiguration *)v19 initWithTitle:v22 symbol:@"message" command:v18];

    v24 = objc_opt_class();
    v30[0] = v15;
    v30[1] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v26 = [v24 valueWithPrimaryCommand:v29 copyString:v5 copyTitle:0 previewCommandConfigurations:v25];
  }

  else
  {
    v10 = SPUISGeneralLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SPUISCommandConfiguration commandButtonItemForPhoneNumber:v5 contact:v10];
    }

    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)commandButtonItemForEmail:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() punchoutCommandWithScheme:@"mailto" host:0 path:v3 queryItems:0];
  v5 = [objc_opt_new() initWithTitle:v3 symbol:@"envelope" command:v4];
  v6 = objc_opt_class();
  v7 = [SPUISUtilities localizedStringForKey:@"MENU_COMMAND_SEND_EMAIL"];
  v8 = [v6 valueWithPrimaryCommand:v5 copyString:v3 copyTitle:0 previewCommandTitle:v7];

  return v8;
}

+ (id)commandButtonItemForAddressLocation:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCAD18] queryItemWithName:@"q" value:v3];
  v14[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v7 = [v4 punchoutCommandWithScheme:@"maps" host:0 path:0 queryItems:v6];

  v8 = [objc_opt_new() initWithTitle:v3 symbol:@"location" command:v7];
  v9 = objc_opt_class();
  v10 = [SPUISUtilities localizedStringForKey:@"MENU_COMMAND_OPEN_ADDRESS_IN_MAPS"];
  v11 = [v9 valueWithPrimaryCommand:v8 copyString:v3 copyTitle:0 previewCommandTitle:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)commandButtonItemForBirthday:(id)a3
{
  v3 = a3;
  v4 = [SPUISDateFormatManager stringFromBirthdayComponents:v3];
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [SPUISDateFormatManager nextUpcomingDateForDateComponents:v3 fromDate:v5];

  v7 = MEMORY[0x277CCABB0];
  [v6 timeIntervalSinceReferenceDate];
  v9 = [v7 numberWithInteger:v8];
  v10 = objc_opt_class();
  v11 = [v9 stringValue];
  v12 = [v10 punchoutCommandWithScheme:@"calshow" host:0 path:v11 queryItems:0];

  v13 = [objc_opt_new() initWithTitle:v4 symbol:@"calendar" command:v12];
  v14 = objc_opt_class();
  v15 = [SPUISUtilities localizedStringForKey:@"MENU_COMMAND_SHOW_IN_CALENDAR"];
  v16 = [v14 valueWithPrimaryCommand:v13 copyString:v4 copyTitle:0 previewCommandTitle:v15];

  return v16;
}

+ (void)commandButtonItemForPhoneNumber:(uint64_t)a1 contact:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B882000, a2, OS_LOG_TYPE_ERROR, "Failed to generate dialRequestURL for phoneNumber: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end