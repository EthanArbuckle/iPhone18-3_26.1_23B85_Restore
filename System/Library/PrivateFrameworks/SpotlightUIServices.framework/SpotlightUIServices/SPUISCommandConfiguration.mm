@interface SPUISCommandConfiguration
+ (id)commandButtonItemForAddressLocation:(id)location;
+ (id)commandButtonItemForBirthday:(id)birthday;
+ (id)commandButtonItemForEmail:(id)email;
+ (id)commandButtonItemForPhoneNumber:(id)number contact:(id)contact;
+ (id)dialRequestURLWithPhoneNumber:(id)number contact:(id)contact;
+ (id)punchoutCommandWithScheme:(id)scheme host:(id)host path:(id)path queryItems:(id)items;
+ (id)valueWithPrimaryCommand:(id)command copyString:(id)string copyTitle:(id)title previewCommandConfigurations:(id)configurations;
+ (id)valueWithPrimaryCommand:(id)command copyString:(id)string copyTitle:(id)title previewCommandTitle:(id)commandTitle;
- (SPUISCommandConfiguration)initWithTitle:(id)title symbol:(id)symbol command:(id)command;
- (id)createSFCommandButtonItem;
@end

@implementation SPUISCommandConfiguration

- (SPUISCommandConfiguration)initWithTitle:(id)title symbol:(id)symbol command:(id)command
{
  titleCopy = title;
  symbolCopy = symbol;
  commandCopy = command;
  v14.receiver = self;
  v14.super_class = SPUISCommandConfiguration;
  v11 = [(SPUISCommandConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SPUISCommandConfiguration *)v11 setTitle:titleCopy];
    [(SPUISCommandConfiguration *)v12 setCommand:commandCopy];
    [(SPUISCommandConfiguration *)v12 setSymbol:symbolCopy];
  }

  return v12;
}

- (id)createSFCommandButtonItem
{
  v3 = objc_opt_new();
  command = [(SPUISCommandConfiguration *)self command];
  [v3 setCommand:command];

  title = [(SPUISCommandConfiguration *)self title];
  [v3 setTitle:title];

  v6 = objc_opt_new();
  symbol = [(SPUISCommandConfiguration *)self symbol];
  [v6 setSymbolName:symbol];

  [v6 setIsTemplate:1];
  [v3 setImage:v6];

  return v3;
}

+ (id)valueWithPrimaryCommand:(id)command copyString:(id)string copyTitle:(id)title previewCommandConfigurations:(id)configurations
{
  v33 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  stringCopy = string;
  titleCopy = title;
  configurationsCopy = configurations;
  v12 = objc_opt_new();
  v26 = stringCopy;
  [v12 setCopyableString:stringCopy];
  v13 = objc_opt_new();
  [v13 setCopyableItem:v12];
  v14 = objc_opt_new();
  [v14 setCommand:v13];
  if (titleCopy)
  {
    [v14 setTitle:titleCopy];
  }

  v15 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = configurationsCopy;
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

        createSFCommandButtonItem = [*(*(&v28 + 1) + 8 * i) createSFCommandButtonItem];
        [v15 addObject:createSFCommandButtonItem];
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

  createSFCommandButtonItem2 = [commandCopy createSFCommandButtonItem];
  [createSFCommandButtonItem2 setImage:0];
  if (+[SPUISUtilities isMacOS])
  {
    [createSFCommandButtonItem2 setCommand:0];
  }

  else
  {
    command = [createSFCommandButtonItem2 command];
    [createSFCommandButtonItem2 setCommand:command];
  }

  [v15 addObject:v14];
  [createSFCommandButtonItem2 setPreviewButtonItems:v15];

  v24 = *MEMORY[0x277D85DE8];

  return createSFCommandButtonItem2;
}

+ (id)valueWithPrimaryCommand:(id)command copyString:(id)string copyTitle:(id)title previewCommandTitle:(id)commandTitle
{
  v23[1] = *MEMORY[0x277D85DE8];
  commandTitleCopy = commandTitle;
  titleCopy = title;
  stringCopy = string;
  commandCopy = command;
  v13 = [SPUISCommandConfiguration alloc];
  title = [commandCopy title];
  symbol = [commandCopy symbol];
  command = [commandCopy command];
  v17 = [(SPUISCommandConfiguration *)v13 initWithTitle:title symbol:symbol command:command];

  [(SPUISCommandConfiguration *)v17 setTitle:commandTitleCopy];
  v18 = objc_opt_class();
  v23[0] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v20 = [v18 valueWithPrimaryCommand:commandCopy copyString:stringCopy copyTitle:titleCopy previewCommandConfigurations:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)punchoutCommandWithScheme:(id)scheme host:(id)host path:(id)path queryItems:(id)items
{
  itemsCopy = items;
  pathCopy = path;
  hostCopy = host;
  schemeCopy = scheme;
  v13 = objc_opt_new();
  [v13 setScheme:schemeCopy];

  [v13 setHost:hostCopy];
  [v13 setPath:pathCopy];

  [v13 setQueryItems:itemsCopy];
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

+ (id)dialRequestURLWithPhoneNumber:(id)number contact:(id)contact
{
  numberCopy = number;
  contactCopy = contact;
  v7 = objc_alloc_init(MEMORY[0x277D6EE28]);
  telephonyProvider = [v7 telephonyProvider];
  if (telephonyProvider)
  {
    v9 = [objc_alloc(MEMORY[0x277D6EED0]) initWithProvider:telephonyProvider];
    v10 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:2 value:numberCopy];
    [v9 setHandle:v10];

    if ([contactCopy hasBeenPersisted])
    {
      identifier = [contactCopy identifier];
      [v9 setContactIdentifier:identifier];
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

+ (id)commandButtonItemForPhoneNumber:(id)number contact:(id)contact
{
  v31[1] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  contactCopy = contact;
  v7 = objc_opt_new();
  v8 = [objc_opt_class() dialRequestURLWithPhoneNumber:numberCopy contact:contactCopy];

  if (v8)
  {
    v31[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    [v7 setUrls:v9];

    v10 = objc_opt_new();
    [v10 setPunchout:v7];
    v29 = [[SPUISCommandConfiguration alloc] initWithTitle:numberCopy symbol:@"phone" command:v10];
    v11 = [SPUISCommandConfiguration alloc];
    v12 = MEMORY[0x277CCACA8];
    v13 = [SPUISUtilities localizedStringForKey:@"MENU_COMMAND_CALL_PHONE_NUMBER"];
    numberCopy = [v12 localizedStringWithFormat:v13, numberCopy];
    v15 = [(SPUISCommandConfiguration *)v11 initWithTitle:numberCopy symbol:@"phone" command:v10];

    v16 = objc_opt_class();
    stringByRemovingWhitespace = [numberCopy stringByRemovingWhitespace];
    v18 = [v16 punchoutCommandWithScheme:@"im" host:0 path:stringByRemovingWhitespace queryItems:0];

    v19 = [SPUISCommandConfiguration alloc];
    v20 = MEMORY[0x277CCACA8];
    v21 = [SPUISUtilities localizedStringForKey:@"MENU_COMMAND_MESSAGE_PHONE_NUMBER"];
    numberCopy2 = [v20 localizedStringWithFormat:v21, numberCopy];
    v23 = [(SPUISCommandConfiguration *)v19 initWithTitle:numberCopy2 symbol:@"message" command:v18];

    v24 = objc_opt_class();
    v30[0] = v15;
    v30[1] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v26 = [v24 valueWithPrimaryCommand:v29 copyString:numberCopy copyTitle:0 previewCommandConfigurations:v25];
  }

  else
  {
    v10 = SPUISGeneralLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SPUISCommandConfiguration commandButtonItemForPhoneNumber:numberCopy contact:v10];
    }

    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)commandButtonItemForEmail:(id)email
{
  emailCopy = email;
  v4 = [objc_opt_class() punchoutCommandWithScheme:@"mailto" host:0 path:emailCopy queryItems:0];
  v5 = [objc_opt_new() initWithTitle:emailCopy symbol:@"envelope" command:v4];
  v6 = objc_opt_class();
  v7 = [SPUISUtilities localizedStringForKey:@"MENU_COMMAND_SEND_EMAIL"];
  v8 = [v6 valueWithPrimaryCommand:v5 copyString:emailCopy copyTitle:0 previewCommandTitle:v7];

  return v8;
}

+ (id)commandButtonItemForAddressLocation:(id)location
{
  v14[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCAD18] queryItemWithName:@"q" value:locationCopy];
  v14[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v7 = [v4 punchoutCommandWithScheme:@"maps" host:0 path:0 queryItems:v6];

  v8 = [objc_opt_new() initWithTitle:locationCopy symbol:@"location" command:v7];
  v9 = objc_opt_class();
  v10 = [SPUISUtilities localizedStringForKey:@"MENU_COMMAND_OPEN_ADDRESS_IN_MAPS"];
  v11 = [v9 valueWithPrimaryCommand:v8 copyString:locationCopy copyTitle:0 previewCommandTitle:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)commandButtonItemForBirthday:(id)birthday
{
  birthdayCopy = birthday;
  v4 = [SPUISDateFormatManager stringFromBirthdayComponents:birthdayCopy];
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [SPUISDateFormatManager nextUpcomingDateForDateComponents:birthdayCopy fromDate:v5];

  v7 = MEMORY[0x277CCABB0];
  [v6 timeIntervalSinceReferenceDate];
  v9 = [v7 numberWithInteger:v8];
  v10 = objc_opt_class();
  stringValue = [v9 stringValue];
  v12 = [v10 punchoutCommandWithScheme:@"calshow" host:0 path:stringValue queryItems:0];

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