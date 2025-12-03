@interface USUIMoreHelpMenuModel
+ (id)menuTitleWith:(int64_t)with;
+ (id)modelWithOptions:(int64_t)options interventionType:(int64_t)type;
+ (void)addDefaultActionsTo:(id)to;
+ (void)addMenuActionsTo:(id)to interventionType:(int64_t)type;
+ (void)addOptionalActionsTo:(id)to options:(int64_t)options;
@end

@implementation USUIMoreHelpMenuModel

+ (id)modelWithOptions:(int64_t)options interventionType:(int64_t)type
{
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  [self addMenuActionsTo:v7 interventionType:type];
  [self addDefaultActionsTo:v7];
  [self addOptionalActionsTo:v7 options:options];
  v8 = objc_opt_new();
  v9 = [self menuTitleWith:type];
  [v8 setTitle:v9];

  v10 = [v7 copy];
  [v8 setActions:v10];

  return v8;
}

+ (id)menuTitleWith:(int64_t)with
{
  if (with == 2)
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

+ (void)addMenuActionsTo:(id)to interventionType:(int64_t)type
{
  if (type != 2)
  {
    v5 = MEMORY[0x277D4D390];
    if (type)
    {
      v6 = @"MESSAGE_SOMEONE";
    }

    else
    {
      v6 = @"MESSAGE_GROWNUP";
    }

    toCopy = to;
    v9 = [v5 localizedStringForKey:v6];
    v8 = [USUIMoreHelpMenuAction action:v9 destructive:0 actionID:1];
    [toCopy addObject:v8];
  }
}

+ (void)addDefaultActionsTo:(id)to
{
  v3 = MEMORY[0x277D4D390];
  toCopy = to;
  v6 = [v3 localizedStringForKey:@"MORE_HELP"];
  v5 = [USUIMoreHelpMenuAction action:v6 destructive:0 actionID:2];
  [toCopy addObject:v5];
}

+ (void)addOptionalActionsTo:(id)to options:(int64_t)options
{
  toCopy = to;
  if (options)
  {
    v12 = toCopy;
    if ((options & 4) != 0)
    {
      v6 = [MEMORY[0x277D4D390] localizedStringForKey:@"LEAVE_CONVERSATION_BUTTON_TITLE"];
      v7 = [USUIMoreHelpMenuAction action:v6 destructive:1 actionID:3];
      [v12 addObject:v7];
    }

    if (options)
    {
      v8 = [MEMORY[0x277D4D390] localizedStringForKey:@"BLOCK_CONTACT_BUTTON_TITLE"];
      v9 = [USUIMoreHelpMenuAction action:v8 destructive:1 actionID:4];
      [v12 addObject:v9];
    }

    toCopy = v12;
    if ((options & 2) != 0)
    {
      v10 = [MEMORY[0x277D4D390] localizedStringForKey:@"BLOCK_CONTACTS_BUTTON_TITLE"];
      v11 = [USUIMoreHelpMenuAction action:v10 destructive:1 actionID:5];
      [v12 addObject:v11];

      toCopy = v12;
    }
  }
}

@end