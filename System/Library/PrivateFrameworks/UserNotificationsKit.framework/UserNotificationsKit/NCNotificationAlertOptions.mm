@interface NCNotificationAlertOptions
- (BOOL)isEqual:(id)equal;
- (NCNotificationAlertOptions)initWithNotificationAlertOptions:(id)options;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation NCNotificationAlertOptions

- (NCNotificationAlertOptions)initWithNotificationAlertOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = NCNotificationAlertOptions;
  v5 = [(NCNotificationAlertOptions *)&v10 init];
  if (v5)
  {
    v5->_suppression = [optionsCopy suppression];
    v5->_intelligentBehavior = [optionsCopy intelligentBehavior];
    v5->_reason = [optionsCopy reason];
    activeModeUUID = [optionsCopy activeModeUUID];
    v7 = [activeModeUUID copy];
    activeModeUUID = v5->_activeModeUUID;
    v5->_activeModeUUID = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
LABEL_9:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v5 = equalCopy;
  if (!v5)
  {
    goto LABEL_9;
  }

  suppression = [(NCNotificationAlertOptions *)self suppression];
  if (suppression != [v5 suppression])
  {
    goto LABEL_9;
  }

  intelligentBehavior = [(NCNotificationAlertOptions *)self intelligentBehavior];
  if (intelligentBehavior != [v5 intelligentBehavior])
  {
    goto LABEL_9;
  }

  reason = [(NCNotificationAlertOptions *)self reason];
  if (reason != [v5 reason])
  {
    goto LABEL_9;
  }

  activeModeUUID = [(NCNotificationAlertOptions *)self activeModeUUID];
  activeModeUUID2 = [v5 activeModeUUID];
  v11 = NCIsEqual(activeModeUUID, activeModeUUID2);

LABEL_10:
  return v11;
}

- (unint64_t)hash
{
  suppression = [(NCNotificationAlertOptions *)self suppression];
  v4 = [(NCNotificationAlertOptions *)self intelligentBehavior]^ suppression;
  v5 = v4 ^ [(NCNotificationAlertOptions *)self reason];
  activeModeUUID = [(NCNotificationAlertOptions *)self activeModeUUID];
  v7 = [activeModeUUID hash];

  return v5 ^ v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NCMutableNotificationAlertOptions alloc];

  return [(NCNotificationAlertOptions *)v4 initWithNotificationAlertOptions:self];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationAlertOptions *)self descriptionBuilderWithMultilinePrefix:prefix];
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
  v10[2] = __68__NCNotificationAlertOptions_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

void __68__NCNotificationAlertOptions_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) suppression];
  if (v3 > 2)
  {
    v4 = @"<invalid>";
  }

  else
  {
    v4 = off_279E0DAD0[v3];
  }

  [v2 appendString:v4 withName:@"suppression"];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) intelligentBehavior];
  if (v6 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_279E0DAE8[v6];
  }

  [v5 appendString:v7 withName:@"intelligentBehavior"];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) reason];
  if (v9 > 4)
  {
    v10 = @"<invalid>";
  }

  else
  {
    v10 = off_279E0DB08[v9];
  }

  [v8 appendString:v10 withName:@"reason"];
  v11 = *(a1 + 32);
  v13 = [*(a1 + 40) activeModeUUID];
  v12 = [v11 appendObject:v13 withName:@"activeModeUUID" skipIfNil:1];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(NCNotificationAlertOptions *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end