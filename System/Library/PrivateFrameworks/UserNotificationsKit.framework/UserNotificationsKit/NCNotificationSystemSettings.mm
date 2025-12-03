@interface NCNotificationSystemSettings
+ (id)stringForNotificationListDisplayStyleSetting:(int64_t)setting;
- (BOOL)isEqual:(id)equal;
- (NCNotificationSystemSettings)initWithNotificationSystemSettings:(id)settings;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation NCNotificationSystemSettings

- (NCNotificationSystemSettings)initWithNotificationSystemSettings:(id)settings
{
  settingsCopy = settings;
  v10.receiver = self;
  v10.super_class = NCNotificationSystemSettings;
  v5 = [(NCNotificationSystemSettings *)&v10 init];
  if (v5)
  {
    v5->_scheduledDeliveryEnabled = [settingsCopy isScheduledDeliveryEnabled];
    v5->_scheduledDeliveryUninitialized = [settingsCopy isScheduledDeliveryUninitialized];
    v5->_scheduledDeliveryShowNextSummary = [settingsCopy shouldScheduledDeliveryShowNextSummary];
    scheduledDeliveryTimes = [settingsCopy scheduledDeliveryTimes];
    v7 = [scheduledDeliveryTimes copy];
    scheduledDeliveryTimes = v5->_scheduledDeliveryTimes;
    v5->_scheduledDeliveryTimes = v7;

    v5->_listDisplayStyleSetting = [settingsCopy listDisplayStyleSetting];
    v5->_highlightsEnabled = [settingsCopy areHighlightsEnabled];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[NCNotificationSystemSettings isScheduledDeliveryEnabled](self, "isScheduledDeliveryEnabled"), v7 == [v6 isScheduledDeliveryEnabled]) && (v8 = -[NCNotificationSystemSettings isScheduledDeliveryUninitialized](self, "isScheduledDeliveryUninitialized"), v8 == objc_msgSend(v6, "isScheduledDeliveryUninitialized")) && (v9 = -[NCNotificationSystemSettings shouldScheduledDeliveryShowNextSummary](self, "shouldScheduledDeliveryShowNextSummary"), v9 == objc_msgSend(v6, "shouldScheduledDeliveryShowNextSummary")) && (-[NCNotificationSystemSettings scheduledDeliveryTimes](self, "scheduledDeliveryTimes"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "scheduledDeliveryTimes"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToArray:", v11), v11, v10, v12) && (v13 = -[NCNotificationSystemSettings listDisplayStyleSetting](self, "listDisplayStyleSetting"), v13 == objc_msgSend(v6, "listDisplayStyleSetting")))
  {
    areHighlightsEnabled = [(NCNotificationSystemSettings *)self areHighlightsEnabled];
    v15 = areHighlightsEnabled ^ [v6 areHighlightsEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NCNotificationMutableSystemSettings alloc];

  return [(NCNotificationSystemSettings *)v4 initWithNotificationSystemSettings:self];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationSystemSettings *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__NCNotificationSystemSettings_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

id __70__NCNotificationSystemSettings_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isScheduledDeliveryEnabled"), @"scheduledDeliveryEnabled"}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isScheduledDeliveryUninitialized"), @"scheduledDeliveryUninitialized"}];
  v4 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"shouldScheduledDeliveryShowNextSummary"), @"scheduledDeliveryShowNextSummary"}];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) scheduledDeliveryTimes];
  v7 = [v5 appendObject:v6 withName:@"scheduledDeliveryTimes" skipIfNil:1];

  v8 = *(a1 + 32);
  v9 = [NCNotificationSystemSettings stringForNotificationListDisplayStyleSetting:*(*(a1 + 40) + 24)];
  [v8 appendString:v9 withName:@"listDisplayStyle"];

  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"areHighlightsEnabled"), @"highlightsEnabled"}];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(NCNotificationSystemSettings *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[NCNotificationSystemSettings isScheduledDeliveryEnabled](self withName:{"isScheduledDeliveryEnabled"), @"scheduledDeliveryEnabled"}];
  v5 = [v3 appendBool:-[NCNotificationSystemSettings isScheduledDeliveryUninitialized](self withName:{"isScheduledDeliveryUninitialized"), @"scheduledDeliveryUninitialized"}];
  v6 = [v3 appendBool:-[NCNotificationSystemSettings shouldScheduledDeliveryShowNextSummary](self withName:{"shouldScheduledDeliveryShowNextSummary"), @"scheduledDeliveryShowNextSummary"}];
  scheduledDeliveryTimes = [(NCNotificationSystemSettings *)self scheduledDeliveryTimes];
  v8 = [v3 appendObject:scheduledDeliveryTimes withName:@"scheduledDeliveryTimes" skipIfNil:1];

  v9 = [NCNotificationSystemSettings stringForNotificationListDisplayStyleSetting:self->_listDisplayStyleSetting];
  [v3 appendString:v9 withName:@"listDisplayStyle"];

  v10 = [v3 appendBool:-[NCNotificationSystemSettings areHighlightsEnabled](self withName:{"areHighlightsEnabled"), @"highlightsEnabled"}];

  return v3;
}

+ (id)stringForNotificationListDisplayStyleSetting:(int64_t)setting
{
  if (setting > 2)
  {
    return @"<unknown>";
  }

  else
  {
    return off_279E0DA10[setting];
  }
}

@end