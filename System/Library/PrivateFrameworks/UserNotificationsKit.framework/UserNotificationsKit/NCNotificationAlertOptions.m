@interface NCNotificationAlertOptions
- (BOOL)isEqual:(id)a3;
- (NCNotificationAlertOptions)initWithNotificationAlertOptions:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation NCNotificationAlertOptions

- (NCNotificationAlertOptions)initWithNotificationAlertOptions:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NCNotificationAlertOptions;
  v5 = [(NCNotificationAlertOptions *)&v10 init];
  if (v5)
  {
    v5->_suppression = [v4 suppression];
    v5->_intelligentBehavior = [v4 intelligentBehavior];
    v5->_reason = [v4 reason];
    v6 = [v4 activeModeUUID];
    v7 = [v6 copy];
    activeModeUUID = v5->_activeModeUUID;
    v5->_activeModeUUID = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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

  v5 = v4;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [(NCNotificationAlertOptions *)self suppression];
  if (v6 != [v5 suppression])
  {
    goto LABEL_9;
  }

  v7 = [(NCNotificationAlertOptions *)self intelligentBehavior];
  if (v7 != [v5 intelligentBehavior])
  {
    goto LABEL_9;
  }

  v8 = [(NCNotificationAlertOptions *)self reason];
  if (v8 != [v5 reason])
  {
    goto LABEL_9;
  }

  v9 = [(NCNotificationAlertOptions *)self activeModeUUID];
  v10 = [v5 activeModeUUID];
  v11 = NCIsEqual(v9, v10);

LABEL_10:
  return v11;
}

- (unint64_t)hash
{
  v3 = [(NCNotificationAlertOptions *)self suppression];
  v4 = [(NCNotificationAlertOptions *)self intelligentBehavior]^ v3;
  v5 = v4 ^ [(NCNotificationAlertOptions *)self reason];
  v6 = [(NCNotificationAlertOptions *)self activeModeUUID];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NCMutableNotificationAlertOptions alloc];

  return [(NCNotificationAlertOptions *)v4 initWithNotificationAlertOptions:self];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCNotificationAlertOptions *)self descriptionBuilderWithMultilinePrefix:a3];
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
  v10[2] = __68__NCNotificationAlertOptions_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

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
  v2 = [(NCNotificationAlertOptions *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end