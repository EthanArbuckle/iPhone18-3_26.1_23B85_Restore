@interface SCUIMoreHelpMenuModel
+ (id)menuTitleWith:(int64_t)a3 options:(int64_t)a4;
+ (id)modelWithOptions:(int64_t)a3 contextDictionary:(id)a4 interventionType:(int64_t)a5 locale:(id)a6 menuType:(int64_t)a7;
+ (void)addDefaultActionsTo:(id)a3;
+ (void)addMenuActionsTo:(id)a3 interventionType:(int64_t)a4;
+ (void)addOptionalActionsTo:(id)a3 options:(int64_t)a4;
- (void)collectResourcesInteractionEventWithRequestedResource:(int64_t)a3;
- (void)dealloc;
- (void)updateAnalyticsContextId;
@end

@implementation SCUIMoreHelpMenuModel

+ (id)modelWithOptions:(int64_t)a3 contextDictionary:(id)a4 interventionType:(int64_t)a5 locale:(id)a6 menuType:(int64_t)a7
{
  v12 = a6;
  v13 = a4;
  v14 = [[SCUIReportAuthority alloc] initWithLocale:v12 moreHelpMenuOptions:a3 interventionType:a5];

  if (!v14)
  {
    a3 &= ~0x20uLL;
  }

  if ([(SCUIReportAuthority *)v14 kind]== 1)
  {
    v15 = a3 | 0x40;
  }

  else
  {
    v15 = a3;
  }

  v16 = [MEMORY[0x1E695E0F0] mutableCopy];
  if ((v15 & 0x80) != 0)
  {
    v17 = [SCUIResources localizedStringForKey:@"SHOW_TITLE"];
    v18 = [SCUIMoreHelpMenuAction action:v17 iconSystemName:@"eye.fill" destructive:0 actionID:9];
    [v16 addObject:v18];
  }

  [a1 addMenuActionsTo:v16 interventionType:a5];
  [a1 addDefaultActionsTo:v16];
  [a1 addOptionalActionsTo:v16 options:v15];
  v19 = objc_opt_new();
  v20 = [a1 menuTitleWith:a5 options:v15];
  [v19 setTitle:v20];

  v21 = [v16 copy];
  [v19 setActions:v21];

  [v19 setAuthority:v14];
  v22 = [[SCUIAnalyticsContextWrapper alloc] initWithInterventionType:a5 menuType:a7 actions:v16 authority:v14];
  [v19 setAnalyticsContext:v22];

  [v19 setOptions:v15];
  [v19 setInterventionType:a5];
  [v19 setContextDictionary:v13];

  return v19;
}

+ (id)menuTitleWith:(int64_t)a3 options:(int64_t)a4
{
  if ((a4 & 0x200) != 0)
  {
    v6 = 0;
  }

  else
  {
    if (a3 == 2)
    {
      v5 = @"SENSITIVE_MEDIA_DETECTED_TITLE";
    }

    else if ((a4 & 0x20) != 0)
    {
      v5 = @"BLOCK_CONTACT_OR_REPORT_ACTION_TITLE";
    }

    else if ((a4 & 3) != 0)
    {
      v5 = @"BLOCK_CONTACT_ACTION_TITLE";
    }

    else
    {
      v5 = @"DEFAULT_ACTION_TITLE";
    }

    v6 = [SCUIResources localizedStringForKey:v5];
  }

  return v6;
}

+ (void)addMenuActionsTo:(id)a3 interventionType:(int64_t)a4
{
  if (a4 != 2)
  {
    if (a4)
    {
      v5 = @"MESSAGE_SOMEONE";
    }

    else
    {
      v5 = @"MESSAGE_GROWNUP";
    }

    v6 = a3;
    v8 = [SCUIResources localizedStringForKey:v5];
    v7 = [SCUIMoreHelpMenuAction action:v8 iconSystemName:@"message" destructive:0 actionID:1];
    [v6 addObject:v7];
  }
}

+ (void)addDefaultActionsTo:(id)a3
{
  v3 = a3;
  v5 = [SCUIResources localizedStringForKey:@"MORE_HELP"];
  v4 = [SCUIMoreHelpMenuAction action:v5 iconSystemName:@"doc.plaintext" destructive:0 actionID:2];
  [v3 addObject:v4];
}

+ (void)addOptionalActionsTo:(id)a3 options:(int64_t)a4
{
  v5 = a3;
  if (!a4)
  {
    goto LABEL_11;
  }

  v21 = v5;
  if ((a4 & 0x10) != 0)
  {
    v10 = [SCUIResources localizedStringForKey:@"HIDE_PHOTO_BUTTON_TITLE"];
    v11 = [SCUIMoreHelpMenuAction action:v10 iconSystemName:0 destructive:0 actionID:7];
    [v21 addObject:v11];

    if ((a4 & 0x20) == 0)
    {
LABEL_4:
      if ((a4 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((a4 & 0x20) == 0)
  {
    goto LABEL_4;
  }

  if ((a4 & 0x40) != 0)
  {
    v12 = @"REPORT_TO_APPLE";
  }

  else
  {
    v12 = @"REPORT_TO_AUTHORITIES";
  }

  v13 = [SCUIResources localizedStringForKey:v12];
  v14 = [SCUIMoreHelpMenuAction action:v13 iconSystemName:@"eye.trianglebadge.exclamationmark.fill" destructive:0 actionID:8];
  [v21 addObject:v14];

  if ((a4 & 8) == 0)
  {
LABEL_5:
    if ((a4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v15 = [SCUIResources localizedStringForKey:@"DELETE_ITEM_BUTTON_TITLE"];
  v16 = [SCUIMoreHelpMenuAction action:v15 iconSystemName:0 destructive:1 actionID:6];
  [v21 addObject:v16];

  if ((a4 & 4) == 0)
  {
LABEL_6:
    if ((a4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v17 = [SCUIResources localizedStringForKey:@"LEAVE_CONVERSATION_BUTTON_TITLE"];
  v18 = [SCUIMoreHelpMenuAction action:v17 iconSystemName:0 destructive:1 actionID:3];
  [v21 addObject:v18];

  if ((a4 & 1) == 0)
  {
LABEL_7:
    if ((a4 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_21:
  v19 = [SCUIResources localizedStringForKey:@"BLOCK_CONTACT_BUTTON_TITLE"];
  v20 = [SCUIMoreHelpMenuAction action:v19 iconSystemName:@"person.slash.fill" destructive:1 actionID:4];
  [v21 addObject:v20];

  if ((a4 & 2) != 0)
  {
LABEL_8:
    v6 = [SCUIResources localizedStringForKey:@"BLOCK_CONTACTS_BUTTON_TITLE"];
    v7 = [SCUIMoreHelpMenuAction action:v6 iconSystemName:@"person.slash.fill" destructive:1 actionID:5];
    [v21 addObject:v7];
  }

LABEL_9:
  v5 = v21;
  if ((a4 & 0x100) != 0)
  {
    v8 = [SCUIResources localizedStringForKey:@"UNSUBSCRIBE_BUTTON_TITLE"];
    v9 = [SCUIMoreHelpMenuAction action:v8 iconSystemName:@"minus.circle" destructive:1 actionID:10];
    [v21 addObject:v9];

    v5 = v21;
  }

LABEL_11:
}

- (void)collectResourcesInteractionEventWithRequestedResource:(int64_t)a3
{
  v5 = [(SCUIMoreHelpMenuModel *)self analyticsContext];
  [v5 collectResourcesInteractionEventWithRequestedResource:a3];

  [(SCUIMoreHelpMenuModel *)self updateAnalyticsContextId];
  v6 = [(NSDictionary *)self->_contextDictionary objectForKeyedSubscript:@"SCUIAnalyticsContextKeyForContextDictionary"];
  [SCUIAnalytics insertNewAnalyticsUIContextWithContextKey:v6 analyticsContextWrapper:self->_analyticsContext];
}

- (void)updateAnalyticsContextId
{
  v3 = [SCUIAnalyticsContextWrapper alloc];
  v5 = [(SCUIMoreHelpMenuModel *)self analyticsContext];
  v4 = [(SCUIAnalyticsContextWrapper *)v3 initWithContextWrapper:v5];
  [(SCUIMoreHelpMenuModel *)self setAnalyticsContext:v4];
}

- (void)dealloc
{
  v3 = [(NSDictionary *)self->_contextDictionary objectForKeyedSubscript:@"SCUIAnalyticsContextKeyForContextDictionary"];
  [SCUIAnalytics deleteAnalyticsUIContextWithContextKey:v3];

  v4.receiver = self;
  v4.super_class = SCUIMoreHelpMenuModel;
  [(SCUIMoreHelpMenuModel *)&v4 dealloc];
}

@end