@interface SCUIMoreHelpMenuModel
+ (id)menuTitleWith:(int64_t)with options:(int64_t)options;
+ (id)modelWithOptions:(int64_t)options contextDictionary:(id)dictionary interventionType:(int64_t)type locale:(id)locale menuType:(int64_t)menuType;
+ (void)addDefaultActionsTo:(id)to;
+ (void)addMenuActionsTo:(id)to interventionType:(int64_t)type;
+ (void)addOptionalActionsTo:(id)to options:(int64_t)options;
- (void)collectResourcesInteractionEventWithRequestedResource:(int64_t)resource;
- (void)dealloc;
- (void)updateAnalyticsContextId;
@end

@implementation SCUIMoreHelpMenuModel

+ (id)modelWithOptions:(int64_t)options contextDictionary:(id)dictionary interventionType:(int64_t)type locale:(id)locale menuType:(int64_t)menuType
{
  localeCopy = locale;
  dictionaryCopy = dictionary;
  v14 = [[SCUIReportAuthority alloc] initWithLocale:localeCopy moreHelpMenuOptions:options interventionType:type];

  if (!v14)
  {
    options &= ~0x20uLL;
  }

  if ([(SCUIReportAuthority *)v14 kind]== 1)
  {
    optionsCopy = options | 0x40;
  }

  else
  {
    optionsCopy = options;
  }

  v16 = [MEMORY[0x1E695E0F0] mutableCopy];
  if ((optionsCopy & 0x80) != 0)
  {
    v17 = [SCUIResources localizedStringForKey:@"SHOW_TITLE"];
    v18 = [SCUIMoreHelpMenuAction action:v17 iconSystemName:@"eye.fill" destructive:0 actionID:9];
    [v16 addObject:v18];
  }

  [self addMenuActionsTo:v16 interventionType:type];
  [self addDefaultActionsTo:v16];
  [self addOptionalActionsTo:v16 options:optionsCopy];
  v19 = objc_opt_new();
  v20 = [self menuTitleWith:type options:optionsCopy];
  [v19 setTitle:v20];

  v21 = [v16 copy];
  [v19 setActions:v21];

  [v19 setAuthority:v14];
  v22 = [[SCUIAnalyticsContextWrapper alloc] initWithInterventionType:type menuType:menuType actions:v16 authority:v14];
  [v19 setAnalyticsContext:v22];

  [v19 setOptions:optionsCopy];
  [v19 setInterventionType:type];
  [v19 setContextDictionary:dictionaryCopy];

  return v19;
}

+ (id)menuTitleWith:(int64_t)with options:(int64_t)options
{
  if ((options & 0x200) != 0)
  {
    v6 = 0;
  }

  else
  {
    if (with == 2)
    {
      v5 = @"SENSITIVE_MEDIA_DETECTED_TITLE";
    }

    else if ((options & 0x20) != 0)
    {
      v5 = @"BLOCK_CONTACT_OR_REPORT_ACTION_TITLE";
    }

    else if ((options & 3) != 0)
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

+ (void)addMenuActionsTo:(id)to interventionType:(int64_t)type
{
  if (type != 2)
  {
    if (type)
    {
      v5 = @"MESSAGE_SOMEONE";
    }

    else
    {
      v5 = @"MESSAGE_GROWNUP";
    }

    toCopy = to;
    v8 = [SCUIResources localizedStringForKey:v5];
    v7 = [SCUIMoreHelpMenuAction action:v8 iconSystemName:@"message" destructive:0 actionID:1];
    [toCopy addObject:v7];
  }
}

+ (void)addDefaultActionsTo:(id)to
{
  toCopy = to;
  v5 = [SCUIResources localizedStringForKey:@"MORE_HELP"];
  v4 = [SCUIMoreHelpMenuAction action:v5 iconSystemName:@"doc.plaintext" destructive:0 actionID:2];
  [toCopy addObject:v4];
}

+ (void)addOptionalActionsTo:(id)to options:(int64_t)options
{
  toCopy = to;
  if (!options)
  {
    goto LABEL_11;
  }

  v21 = toCopy;
  if ((options & 0x10) != 0)
  {
    v10 = [SCUIResources localizedStringForKey:@"HIDE_PHOTO_BUTTON_TITLE"];
    v11 = [SCUIMoreHelpMenuAction action:v10 iconSystemName:0 destructive:0 actionID:7];
    [v21 addObject:v11];

    if ((options & 0x20) == 0)
    {
LABEL_4:
      if ((options & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((options & 0x20) == 0)
  {
    goto LABEL_4;
  }

  if ((options & 0x40) != 0)
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

  if ((options & 8) == 0)
  {
LABEL_5:
    if ((options & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v15 = [SCUIResources localizedStringForKey:@"DELETE_ITEM_BUTTON_TITLE"];
  v16 = [SCUIMoreHelpMenuAction action:v15 iconSystemName:0 destructive:1 actionID:6];
  [v21 addObject:v16];

  if ((options & 4) == 0)
  {
LABEL_6:
    if ((options & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v17 = [SCUIResources localizedStringForKey:@"LEAVE_CONVERSATION_BUTTON_TITLE"];
  v18 = [SCUIMoreHelpMenuAction action:v17 iconSystemName:0 destructive:1 actionID:3];
  [v21 addObject:v18];

  if ((options & 1) == 0)
  {
LABEL_7:
    if ((options & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_21:
  v19 = [SCUIResources localizedStringForKey:@"BLOCK_CONTACT_BUTTON_TITLE"];
  v20 = [SCUIMoreHelpMenuAction action:v19 iconSystemName:@"person.slash.fill" destructive:1 actionID:4];
  [v21 addObject:v20];

  if ((options & 2) != 0)
  {
LABEL_8:
    v6 = [SCUIResources localizedStringForKey:@"BLOCK_CONTACTS_BUTTON_TITLE"];
    v7 = [SCUIMoreHelpMenuAction action:v6 iconSystemName:@"person.slash.fill" destructive:1 actionID:5];
    [v21 addObject:v7];
  }

LABEL_9:
  toCopy = v21;
  if ((options & 0x100) != 0)
  {
    v8 = [SCUIResources localizedStringForKey:@"UNSUBSCRIBE_BUTTON_TITLE"];
    v9 = [SCUIMoreHelpMenuAction action:v8 iconSystemName:@"minus.circle" destructive:1 actionID:10];
    [v21 addObject:v9];

    toCopy = v21;
  }

LABEL_11:
}

- (void)collectResourcesInteractionEventWithRequestedResource:(int64_t)resource
{
  analyticsContext = [(SCUIMoreHelpMenuModel *)self analyticsContext];
  [analyticsContext collectResourcesInteractionEventWithRequestedResource:resource];

  [(SCUIMoreHelpMenuModel *)self updateAnalyticsContextId];
  v6 = [(NSDictionary *)self->_contextDictionary objectForKeyedSubscript:@"SCUIAnalyticsContextKeyForContextDictionary"];
  [SCUIAnalytics insertNewAnalyticsUIContextWithContextKey:v6 analyticsContextWrapper:self->_analyticsContext];
}

- (void)updateAnalyticsContextId
{
  v3 = [SCUIAnalyticsContextWrapper alloc];
  analyticsContext = [(SCUIMoreHelpMenuModel *)self analyticsContext];
  v4 = [(SCUIAnalyticsContextWrapper *)v3 initWithContextWrapper:analyticsContext];
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