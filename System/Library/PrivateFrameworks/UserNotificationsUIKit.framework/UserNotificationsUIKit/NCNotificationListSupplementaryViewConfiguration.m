@interface NCNotificationListSupplementaryViewConfiguration
- (BOOL)isEqual:(id)a3;
- (id)_initWithGroupingIdentifier:(id)a3 groupName:(id)a4 defaultAction:(id)a5 supplementaryActions:(id)a6 auxiliaryOptionsSummaryText:(id)a7 auxiliaryOptionActions:(id)a8 tintColor:(id)a9 textColor:(id)a10 materialRecipe:(int64_t)a11 containsUnmanagedContent:(BOOL)a12 preventsUserDismissal:(BOOL)a13;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation NCNotificationListSupplementaryViewConfiguration

- (id)_initWithGroupingIdentifier:(id)a3 groupName:(id)a4 defaultAction:(id)a5 supplementaryActions:(id)a6 auxiliaryOptionsSummaryText:(id)a7 auxiliaryOptionActions:(id)a8 tintColor:(id)a9 textColor:(id)a10 materialRecipe:(int64_t)a11 containsUnmanagedContent:(BOOL)a12 preventsUserDismissal:(BOOL)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v45.receiver = self;
  v45.super_class = NCNotificationListSupplementaryViewConfiguration;
  v27 = [(NCNotificationListSupplementaryViewConfiguration *)&v45 init];
  if (v27)
  {
    v28 = [v19 copy];
    groupingIdentifier = v27->_groupingIdentifier;
    v27->_groupingIdentifier = v28;

    v30 = [v20 copy];
    groupName = v27->_groupName;
    v27->_groupName = v30;

    v32 = [v21 copy];
    defaultAction = v27->_defaultAction;
    v27->_defaultAction = v32;

    v34 = [v22 copy];
    supplementaryActions = v27->_supplementaryActions;
    v27->_supplementaryActions = v34;

    v36 = [v23 copy];
    auxiliaryOptionsSummaryText = v27->_auxiliaryOptionsSummaryText;
    v27->_auxiliaryOptionsSummaryText = v36;

    v38 = [v24 copy];
    auxiliaryOptionActions = v27->_auxiliaryOptionActions;
    v27->_auxiliaryOptionActions = v38;

    v40 = [v25 copy];
    tintColor = v27->_tintColor;
    v27->_tintColor = v40;

    v42 = [v26 copy];
    textColor = v27->_textColor;
    v27->_textColor = v42;

    v27->_materialRecipe = a11;
    v27->_containsUnmanagedContent = a12;
    v27->_preventsUserDismissal = a13;
  }

  return v27;
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
LABEL_16:
      LOBYTE(v33) = 0;
      goto LABEL_17;
    }
  }

  v5 = v4;
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [(NCNotificationListSupplementaryViewConfiguration *)self groupingIdentifier];
  v7 = [v5 groupingIdentifier];
  v8 = NCIsEqual();

  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = [(NCNotificationListSupplementaryViewConfiguration *)self groupName];
  v10 = [v5 groupName];
  v11 = NCIsEqual();

  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = [(NCNotificationListSupplementaryViewConfiguration *)self defaultAction];
  v13 = [v5 defaultAction];
  v14 = NCIsEqual();

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = [(NCNotificationListSupplementaryViewConfiguration *)self supplementaryActions];
  v16 = [v5 supplementaryActions];
  v17 = NCIsEqualToArray();

  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = [(NCNotificationListSupplementaryViewConfiguration *)self auxiliaryOptionsSummaryText];
  v19 = [v5 auxiliaryOptionsSummaryText];
  v20 = NCIsEqual();

  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = [(NCNotificationListSupplementaryViewConfiguration *)self auxiliaryOptionActions];
  v22 = [v5 auxiliaryOptionActions];
  v23 = NCIsEqualToArray();

  if (!v23)
  {
    goto LABEL_16;
  }

  v24 = [(NCNotificationListSupplementaryViewConfiguration *)self tintColor];
  v25 = [v5 tintColor];
  v26 = NCIsEqual();

  if (!v26)
  {
    goto LABEL_16;
  }

  v27 = [(NCNotificationListSupplementaryViewConfiguration *)self textColor];
  v28 = [v5 textColor];
  v29 = NCIsEqual();

  if (!v29)
  {
    goto LABEL_16;
  }

  v30 = [(NCNotificationListSupplementaryViewConfiguration *)self materialRecipe];
  if (v30 != [v5 materialRecipe])
  {
    goto LABEL_16;
  }

  v31 = [(NCNotificationListSupplementaryViewConfiguration *)self containsUnmanagedContent];
  if (v31 != [v5 containsUnmanagedContent])
  {
    goto LABEL_16;
  }

  v32 = [(NCNotificationListSupplementaryViewConfiguration *)self preventsUserDismissal];
  v33 = v32 ^ [v5 preventsUserDismissal] ^ 1;
LABEL_17:

  return v33;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_groupingIdentifier hash];
  v4 = [(NSString *)self->_groupName hash]+ v3;
  v5 = [(UIAction *)self->_defaultAction hash];
  v6 = v4 + v5 + [(NSArray *)self->_supplementaryActions hash];
  v7 = [(NSString *)self->_auxiliaryOptionsSummaryText hash];
  v8 = v7 + [(NSArray *)self->_auxiliaryOptionActions hash];
  v9 = v6 + v8 + [(UIColor *)self->_tintColor hash];
  return v9 + [(UIColor *)self->_textColor hash]+ self->_materialRecipe + self->_containsUnmanagedContent + self->_preventsUserDismissal;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NCNotificationListMutableSupplementaryViewConfiguration alloc];
  LOWORD(v6) = *&self->_containsUnmanagedContent;
  return [(NCNotificationListSupplementaryViewConfiguration *)v4 _initWithGroupingIdentifier:self->_groupingIdentifier groupName:self->_groupName defaultAction:self->_defaultAction supplementaryActions:self->_supplementaryActions auxiliaryOptionsSummaryText:self->_auxiliaryOptionsSummaryText auxiliaryOptionActions:self->_auxiliaryOptionActions tintColor:self->_tintColor textColor:self->_textColor materialRecipe:self->_materialRecipe containsUnmanagedContent:v6 preventsUserDismissal:?];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCNotificationListSupplementaryViewConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(NCNotificationListSupplementaryViewConfiguration *)self groupingIdentifier];
  [v4 appendString:v5 withName:@"groupingIdentifier"];

  v6 = [(NCNotificationListSupplementaryViewConfiguration *)self groupName];
  [v4 appendString:v6 withName:@"groupName"];

  v7 = [(NCNotificationListSupplementaryViewConfiguration *)self defaultAction];
  v8 = [v4 appendObject:v7 withName:@"defaultAction"];

  v9 = [(NCNotificationListSupplementaryViewConfiguration *)self supplementaryActions];
  v10 = [v4 appendObject:v9 withName:@"supplementaryActions"];

  v11 = [(NCNotificationListSupplementaryViewConfiguration *)self auxiliaryOptionsSummaryText];
  v12 = [v4 appendObject:v11 withName:@"auxiliaryOptionsSummaryText"];

  v13 = [(NCNotificationListSupplementaryViewConfiguration *)self auxiliaryOptionActions];
  v14 = [v4 appendObject:v13 withName:@"auxiliaryOptionActions"];

  v15 = [(NCNotificationListSupplementaryViewConfiguration *)self tintColor];
  v16 = [v4 appendObject:v15 withName:@"tintColor"];

  v17 = [(NCNotificationListSupplementaryViewConfiguration *)self textColor];
  v18 = [v4 appendObject:v17 withName:@"textColor"];

  [(NCNotificationListSupplementaryViewConfiguration *)self materialRecipe];
  v19 = MTStringFromMaterialRecipe();
  v20 = [v4 appendObject:v19 withName:@"materialRecipe"];

  v21 = [v4 appendBool:-[NCNotificationListSupplementaryViewConfiguration containsUnmanagedContent](self withName:{"containsUnmanagedContent"), @"unmanagedContent"}];
  v22 = [v4 appendBool:-[NCNotificationListSupplementaryViewConfiguration preventsUserDismissal](self withName:{"preventsUserDismissal"), @"preventsUserDismissal"}];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(NCNotificationListSupplementaryViewConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end