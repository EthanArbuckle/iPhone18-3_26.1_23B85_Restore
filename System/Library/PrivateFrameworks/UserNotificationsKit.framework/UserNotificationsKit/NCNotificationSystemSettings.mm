@interface NCNotificationSystemSettings
+ (id)stringForNotificationListDisplayStyleSetting:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NCNotificationSystemSettings)initWithNotificationSystemSettings:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation NCNotificationSystemSettings

- (NCNotificationSystemSettings)initWithNotificationSystemSettings:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NCNotificationSystemSettings;
  v5 = [(NCNotificationSystemSettings *)&v10 init];
  if (v5)
  {
    v5->_scheduledDeliveryEnabled = [v4 isScheduledDeliveryEnabled];
    v5->_scheduledDeliveryUninitialized = [v4 isScheduledDeliveryUninitialized];
    v5->_scheduledDeliveryShowNextSummary = [v4 shouldScheduledDeliveryShowNextSummary];
    v6 = [v4 scheduledDeliveryTimes];
    v7 = [v6 copy];
    scheduledDeliveryTimes = v5->_scheduledDeliveryTimes;
    v5->_scheduledDeliveryTimes = v7;

    v5->_listDisplayStyleSetting = [v4 listDisplayStyleSetting];
    v5->_highlightsEnabled = [v4 areHighlightsEnabled];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[NCNotificationSystemSettings isScheduledDeliveryEnabled](self, "isScheduledDeliveryEnabled"), v7 == [v6 isScheduledDeliveryEnabled]) && (v8 = -[NCNotificationSystemSettings isScheduledDeliveryUninitialized](self, "isScheduledDeliveryUninitialized"), v8 == objc_msgSend(v6, "isScheduledDeliveryUninitialized")) && (v9 = -[NCNotificationSystemSettings shouldScheduledDeliveryShowNextSummary](self, "shouldScheduledDeliveryShowNextSummary"), v9 == objc_msgSend(v6, "shouldScheduledDeliveryShowNextSummary")) && (-[NCNotificationSystemSettings scheduledDeliveryTimes](self, "scheduledDeliveryTimes"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "scheduledDeliveryTimes"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToArray:", v11), v11, v10, v12) && (v13 = -[NCNotificationSystemSettings listDisplayStyleSetting](self, "listDisplayStyleSetting"), v13 == objc_msgSend(v6, "listDisplayStyleSetting")))
  {
    v14 = [(NCNotificationSystemSettings *)self areHighlightsEnabled];
    v15 = v14 ^ [v6 areHighlightsEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NCNotificationMutableSystemSettings alloc];

  return [(NCNotificationSystemSettings *)v4 initWithNotificationSystemSettings:self];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCNotificationSystemSettings *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__NCNotificationSystemSettings_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

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
  v2 = [(NCNotificationSystemSettings *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[NCNotificationSystemSettings isScheduledDeliveryEnabled](self withName:{"isScheduledDeliveryEnabled"), @"scheduledDeliveryEnabled"}];
  v5 = [v3 appendBool:-[NCNotificationSystemSettings isScheduledDeliveryUninitialized](self withName:{"isScheduledDeliveryUninitialized"), @"scheduledDeliveryUninitialized"}];
  v6 = [v3 appendBool:-[NCNotificationSystemSettings shouldScheduledDeliveryShowNextSummary](self withName:{"shouldScheduledDeliveryShowNextSummary"), @"scheduledDeliveryShowNextSummary"}];
  v7 = [(NCNotificationSystemSettings *)self scheduledDeliveryTimes];
  v8 = [v3 appendObject:v7 withName:@"scheduledDeliveryTimes" skipIfNil:1];

  v9 = [NCNotificationSystemSettings stringForNotificationListDisplayStyleSetting:self->_listDisplayStyleSetting];
  [v3 appendString:v9 withName:@"listDisplayStyle"];

  v10 = [v3 appendBool:-[NCNotificationSystemSettings areHighlightsEnabled](self withName:{"areHighlightsEnabled"), @"highlightsEnabled"}];

  return v3;
}

+ (id)stringForNotificationListDisplayStyleSetting:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"<unknown>";
  }

  else
  {
    return off_279E0DA10[a3];
  }
}

@end