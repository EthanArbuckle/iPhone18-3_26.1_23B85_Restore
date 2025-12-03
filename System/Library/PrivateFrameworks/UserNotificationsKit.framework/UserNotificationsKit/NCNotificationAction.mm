@interface NCNotificationAction
- (BOOL)isSystemAction;
- (NCNotificationAction)initWithNotificationAction:(id)action;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation NCNotificationAction

- (NCNotificationAction)initWithNotificationAction:(id)action
{
  actionCopy = action;
  v30.receiver = self;
  v30.super_class = NCNotificationAction;
  v5 = [(NCNotificationAction *)&v30 init];
  if (v5)
  {
    identifier = [actionCopy identifier];
    v7 = [identifier copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    title = [actionCopy title];
    v10 = [title copy];
    title = v5->_title;
    v5->_title = v10;

    v5->_activationMode = [actionCopy activationMode];
    v5->_requiresAuthentication = [actionCopy requiresAuthentication];
    launchURL = [actionCopy launchURL];
    v13 = [launchURL copy];
    launchURL = v5->_launchURL;
    v5->_launchURL = v13;

    launchBundleID = [actionCopy launchBundleID];
    v16 = [launchBundleID copy];
    launchBundleID = v5->_launchBundleID;
    v5->_launchBundleID = v16;

    v5->_behavior = [actionCopy behavior];
    behaviorParameters = [actionCopy behaviorParameters];
    v19 = [behaviorParameters copy];
    behaviorParameters = v5->_behaviorParameters;
    v5->_behaviorParameters = v19;

    actionRunner = [actionCopy actionRunner];
    actionRunner = v5->_actionRunner;
    v5->_actionRunner = actionRunner;

    v5->_destructiveAction = [actionCopy isDestructiveAction];
    v5->_shouldDismissNotification = [actionCopy shouldDismissNotification];
    iconImageName = [actionCopy iconImageName];
    v24 = [iconImageName copy];
    iconImageName = v5->_iconImageName;
    v5->_iconImageName = v24;

    iconImageBundlePath = [actionCopy iconImageBundlePath];
    v27 = [iconImageBundlePath copy];
    iconImageBundlePath = v5->_iconImageBundlePath;
    v5->_iconImageBundlePath = v27;

    v5->_isSiriActionCandidate = [actionCopy isSiriActionCandidate];
  }

  return v5;
}

- (BOOL)isSystemAction
{
  identifier = [(NCNotificationAction *)self identifier];
  if ([identifier isEqual:*MEMORY[0x277CE20E8]])
  {
    v4 = 1;
  }

  else
  {
    identifier2 = [(NCNotificationAction *)self identifier];
    v4 = [identifier2 isEqual:*MEMORY[0x277CE20F0]];
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NCMutableNotificationAction alloc];

  return [(NCNotificationAction *)v4 initWithNotificationAction:self];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationAction *)self descriptionBuilderWithMultilinePrefix:prefix];
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
  v10[2] = __62__NCNotificationAction_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

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
  succinctDescriptionBuilder = [(NCNotificationAction *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(NCNotificationAction *)self identifier];
  v5 = [v3 appendObject:identifier withName:@"identifier"];

  return v3;
}

@end