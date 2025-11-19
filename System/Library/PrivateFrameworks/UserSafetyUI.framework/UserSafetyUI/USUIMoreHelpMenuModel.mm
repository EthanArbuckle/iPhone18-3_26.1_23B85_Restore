@interface USUIMoreHelpMenuModel
+ (id)menuTitleWith:(int64_t)a3;
+ (id)modelWithOptions:(int64_t)a3 interventionType:(int64_t)a4;
+ (void)addDefaultActionsTo:(id)a3;
+ (void)addMenuActionsTo:(id)a3 interventionType:(int64_t)a4;
+ (void)addOptionalActionsTo:(id)a3 options:(int64_t)a4;
@end

@implementation USUIMoreHelpMenuModel

+ (id)modelWithOptions:(int64_t)a3 interventionType:(int64_t)a4
{
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  [a1 addMenuActionsTo:v7 interventionType:a4];
  [a1 addDefaultActionsTo:v7];
  [a1 addOptionalActionsTo:v7 options:a3];
  v8 = objc_opt_new();
  v9 = [a1 menuTitleWith:a4];
  [v8 setTitle:v9];

  v10 = [v7 copy];
  [v8 setActions:v10];

  return v8;
}

+ (id)menuTitleWith:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = @"SENSITIVE_MEDIA_DETECTED_TITLE";
  }

  else
  {
    v3 = @"BLOCK_CONTACT_ACTION_TITLE";
  }

  v4 = [MEMORY[0x277D4D390] localizedStringForKey:v3];

  return v4;
}

+ (void)addMenuActionsTo:(id)a3 interventionType:(int64_t)a4
{
  if (a4 != 2)
  {
    v5 = MEMORY[0x277D4D390];
    if (a4)
    {
      v6 = @"MESSAGE_SOMEONE";
    }

    else
    {
      v6 = @"MESSAGE_GROWNUP";
    }

    v7 = a3;
    v9 = [v5 localizedStringForKey:v6];
    v8 = [USUIMoreHelpMenuAction action:v9 destructive:0 actionID:1];
    [v7 addObject:v8];
  }
}

+ (void)addDefaultActionsTo:(id)a3
{
  v3 = MEMORY[0x277D4D390];
  v4 = a3;
  v6 = [v3 localizedStringForKey:@"MORE_HELP"];
  v5 = [USUIMoreHelpMenuAction action:v6 destructive:0 actionID:2];
  [v4 addObject:v5];
}

+ (void)addOptionalActionsTo:(id)a3 options:(int64_t)a4
{
  v5 = a3;
  if (a4)
  {
    v12 = v5;
    if ((a4 & 4) != 0)
    {
      v6 = [MEMORY[0x277D4D390] localizedStringForKey:@"LEAVE_CONVERSATION_BUTTON_TITLE"];
      v7 = [USUIMoreHelpMenuAction action:v6 destructive:1 actionID:3];
      [v12 addObject:v7];
    }

    if (a4)
    {
      v8 = [MEMORY[0x277D4D390] localizedStringForKey:@"BLOCK_CONTACT_BUTTON_TITLE"];
      v9 = [USUIMoreHelpMenuAction action:v8 destructive:1 actionID:4];
      [v12 addObject:v9];
    }

    v5 = v12;
    if ((a4 & 2) != 0)
    {
      v10 = [MEMORY[0x277D4D390] localizedStringForKey:@"BLOCK_CONTACTS_BUTTON_TITLE"];
      v11 = [USUIMoreHelpMenuAction action:v10 destructive:1 actionID:5];
      [v12 addObject:v11];

      v5 = v12;
    }
  }
}

@end