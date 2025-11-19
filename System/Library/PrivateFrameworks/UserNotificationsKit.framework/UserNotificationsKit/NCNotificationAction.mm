@interface NCNotificationAction
- (BOOL)isSystemAction;
- (NCNotificationAction)initWithNotificationAction:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation NCNotificationAction

- (NCNotificationAction)initWithNotificationAction:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = NCNotificationAction;
  v5 = [(NCNotificationAction *)&v30 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 title];
    v10 = [v9 copy];
    title = v5->_title;
    v5->_title = v10;

    v5->_activationMode = [v4 activationMode];
    v5->_requiresAuthentication = [v4 requiresAuthentication];
    v12 = [v4 launchURL];
    v13 = [v12 copy];
    launchURL = v5->_launchURL;
    v5->_launchURL = v13;

    v15 = [v4 launchBundleID];
    v16 = [v15 copy];
    launchBundleID = v5->_launchBundleID;
    v5->_launchBundleID = v16;

    v5->_behavior = [v4 behavior];
    v18 = [v4 behaviorParameters];
    v19 = [v18 copy];
    behaviorParameters = v5->_behaviorParameters;
    v5->_behaviorParameters = v19;

    v21 = [v4 actionRunner];
    actionRunner = v5->_actionRunner;
    v5->_actionRunner = v21;

    v5->_destructiveAction = [v4 isDestructiveAction];
    v5->_shouldDismissNotification = [v4 shouldDismissNotification];
    v23 = [v4 iconImageName];
    v24 = [v23 copy];
    iconImageName = v5->_iconImageName;
    v5->_iconImageName = v24;

    v26 = [v4 iconImageBundlePath];
    v27 = [v26 copy];
    iconImageBundlePath = v5->_iconImageBundlePath;
    v5->_iconImageBundlePath = v27;

    v5->_isSiriActionCandidate = [v4 isSiriActionCandidate];
  }

  return v5;
}

- (BOOL)isSystemAction
{
  v3 = [(NCNotificationAction *)self identifier];
  if ([v3 isEqual:*MEMORY[0x277CE20E8]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NCNotificationAction *)self identifier];
    v4 = [v5 isEqual:*MEMORY[0x277CE20F0]];
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NCMutableNotificationAction alloc];

  return [(NCNotificationAction *)v4 initWithNotificationAction:self];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCNotificationAction *)self descriptionBuilderWithMultilinePrefix:a3];
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
  v10[2] = __62__NCNotificationAction_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

id __62__NCNotificationAction_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 appendObject:v3 withName:@"identifier"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) title];
  v7 = [v5 appendObject:v6 withName:@"title"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) launchURL];
  v10 = [v8 appendObject:v9 withName:@"launchURL"];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) launchBundleID];
  v13 = [v11 appendObject:v12 withName:@"launchBundleID"];

  v14 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"activationMode"), @"activationMode"}];
  v15 = *(a1 + 32);
  if ([*(a1 + 40) behavior])
  {
    v16 = @"TextInput";
  }

  else
  {
    v16 = @"Default";
  }

  v17 = [v15 appendObject:v16 withName:@"behavior"];
  v18 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"requiresAuthentication"), @"requiresUnlock"}];
  v19 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isDestructiveAction"), @"destructiveAction"}];
  v20 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"shouldDismissNotification"), @"shouldDismiss"}];
  v21 = *(a1 + 32);
  v22 = [*(a1 + 40) actionRunner];
  v23 = [v21 appendObject:v22 withName:@"actionRunner"];

  v24 = *(a1 + 32);
  v25 = [*(a1 + 40) behaviorParameters];
  v26 = [v24 appendObject:v25 withName:@"behaviorParameters" skipIfNil:0];

  v27 = *(a1 + 32);
  v28 = [*(a1 + 40) iconImageName];
  v29 = [v27 appendObject:v28 withName:@"iconImageName"];

  v30 = *(a1 + 32);
  v31 = [*(a1 + 40) iconImageBundlePath];
  v32 = [v30 appendObject:v31 withName:@"iconImageBundlePath"];

  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isSiriActionCandidate"), @"isSiriAction"}];
}

- (id)succinctDescription
{
  v2 = [(NCNotificationAction *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NCNotificationAction *)self identifier];
  v5 = [v3 appendObject:v4 withName:@"identifier"];

  return v3;
}

@end