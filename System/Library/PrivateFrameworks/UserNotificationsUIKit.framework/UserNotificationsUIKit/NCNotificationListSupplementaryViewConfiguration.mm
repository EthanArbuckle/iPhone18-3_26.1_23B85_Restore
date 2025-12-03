@interface NCNotificationListSupplementaryViewConfiguration
- (BOOL)isEqual:(id)equal;
- (id)_initWithGroupingIdentifier:(id)identifier groupName:(id)name defaultAction:(id)action supplementaryActions:(id)actions auxiliaryOptionsSummaryText:(id)text auxiliaryOptionActions:(id)optionActions tintColor:(id)color textColor:(id)self0 materialRecipe:(int64_t)self1 containsUnmanagedContent:(BOOL)self2 preventsUserDismissal:(BOOL)self3;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation NCNotificationListSupplementaryViewConfiguration

- (id)_initWithGroupingIdentifier:(id)identifier groupName:(id)name defaultAction:(id)action supplementaryActions:(id)actions auxiliaryOptionsSummaryText:(id)text auxiliaryOptionActions:(id)optionActions tintColor:(id)color textColor:(id)self0 materialRecipe:(int64_t)self1 containsUnmanagedContent:(BOOL)self2 preventsUserDismissal:(BOOL)self3
{
  identifierCopy = identifier;
  nameCopy = name;
  actionCopy = action;
  actionsCopy = actions;
  textCopy = text;
  optionActionsCopy = optionActions;
  colorCopy = color;
  textColorCopy = textColor;
  v45.receiver = self;
  v45.super_class = NCNotificationListSupplementaryViewConfiguration;
  v27 = [(NCNotificationListSupplementaryViewConfiguration *)&v45 init];
  if (v27)
  {
    v28 = [identifierCopy copy];
    groupingIdentifier = v27->_groupingIdentifier;
    v27->_groupingIdentifier = v28;

    v30 = [nameCopy copy];
    groupName = v27->_groupName;
    v27->_groupName = v30;

    v32 = [actionCopy copy];
    defaultAction = v27->_defaultAction;
    v27->_defaultAction = v32;

    v34 = [actionsCopy copy];
    supplementaryActions = v27->_supplementaryActions;
    v27->_supplementaryActions = v34;

    v36 = [textCopy copy];
    auxiliaryOptionsSummaryText = v27->_auxiliaryOptionsSummaryText;
    v27->_auxiliaryOptionsSummaryText = v36;

    v38 = [optionActionsCopy copy];
    auxiliaryOptionActions = v27->_auxiliaryOptionActions;
    v27->_auxiliaryOptionActions = v38;

    v40 = [colorCopy copy];
    tintColor = v27->_tintColor;
    v27->_tintColor = v40;

    v42 = [textColorCopy copy];
    textColor = v27->_textColor;
    v27->_textColor = v42;

    v27->_materialRecipe = recipe;
    v27->_containsUnmanagedContent = content;
    v27->_preventsUserDismissal = dismissal;
  }

  return v27;
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
LABEL_16:
      LOBYTE(v33) = 0;
      goto LABEL_17;
    }
  }

  v5 = equalCopy;
  if (!v5)
  {
    goto LABEL_16;
  }

  groupingIdentifier = [(NCNotificationListSupplementaryViewConfiguration *)self groupingIdentifier];
  groupingIdentifier2 = [v5 groupingIdentifier];
  v8 = NCIsEqual();

  if (!v8)
  {
    goto LABEL_16;
  }

  groupName = [(NCNotificationListSupplementaryViewConfiguration *)self groupName];
  groupName2 = [v5 groupName];
  v11 = NCIsEqual();

  if (!v11)
  {
    goto LABEL_16;
  }

  defaultAction = [(NCNotificationListSupplementaryViewConfiguration *)self defaultAction];
  defaultAction2 = [v5 defaultAction];
  v14 = NCIsEqual();

  if (!v14)
  {
    goto LABEL_16;
  }

  supplementaryActions = [(NCNotificationListSupplementaryViewConfiguration *)self supplementaryActions];
  supplementaryActions2 = [v5 supplementaryActions];
  v17 = NCIsEqualToArray();

  if (!v17)
  {
    goto LABEL_16;
  }

  auxiliaryOptionsSummaryText = [(NCNotificationListSupplementaryViewConfiguration *)self auxiliaryOptionsSummaryText];
  auxiliaryOptionsSummaryText2 = [v5 auxiliaryOptionsSummaryText];
  v20 = NCIsEqual();

  if (!v20)
  {
    goto LABEL_16;
  }

  auxiliaryOptionActions = [(NCNotificationListSupplementaryViewConfiguration *)self auxiliaryOptionActions];
  auxiliaryOptionActions2 = [v5 auxiliaryOptionActions];
  v23 = NCIsEqualToArray();

  if (!v23)
  {
    goto LABEL_16;
  }

  tintColor = [(NCNotificationListSupplementaryViewConfiguration *)self tintColor];
  tintColor2 = [v5 tintColor];
  v26 = NCIsEqual();

  if (!v26)
  {
    goto LABEL_16;
  }

  textColor = [(NCNotificationListSupplementaryViewConfiguration *)self textColor];
  textColor2 = [v5 textColor];
  v29 = NCIsEqual();

  if (!v29)
  {
    goto LABEL_16;
  }

  materialRecipe = [(NCNotificationListSupplementaryViewConfiguration *)self materialRecipe];
  if (materialRecipe != [v5 materialRecipe])
  {
    goto LABEL_16;
  }

  containsUnmanagedContent = [(NCNotificationListSupplementaryViewConfiguration *)self containsUnmanagedContent];
  if (containsUnmanagedContent != [v5 containsUnmanagedContent])
  {
    goto LABEL_16;
  }

  preventsUserDismissal = [(NCNotificationListSupplementaryViewConfiguration *)self preventsUserDismissal];
  v33 = preventsUserDismissal ^ [v5 preventsUserDismissal] ^ 1;
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NCNotificationListMutableSupplementaryViewConfiguration alloc];
  LOWORD(v6) = *&self->_containsUnmanagedContent;
  return [(NCNotificationListSupplementaryViewConfiguration *)v4 _initWithGroupingIdentifier:self->_groupingIdentifier groupName:self->_groupName defaultAction:self->_defaultAction supplementaryActions:self->_supplementaryActions auxiliaryOptionsSummaryText:self->_auxiliaryOptionsSummaryText auxiliaryOptionActions:self->_auxiliaryOptionActions tintColor:self->_tintColor textColor:self->_textColor materialRecipe:self->_materialRecipe containsUnmanagedContent:v6 preventsUserDismissal:?];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationListSupplementaryViewConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  groupingIdentifier = [(NCNotificationListSupplementaryViewConfiguration *)self groupingIdentifier];
  [v4 appendString:groupingIdentifier withName:@"groupingIdentifier"];

  groupName = [(NCNotificationListSupplementaryViewConfiguration *)self groupName];
  [v4 appendString:groupName withName:@"groupName"];

  defaultAction = [(NCNotificationListSupplementaryViewConfiguration *)self defaultAction];
  v8 = [v4 appendObject:defaultAction withName:@"defaultAction"];

  supplementaryActions = [(NCNotificationListSupplementaryViewConfiguration *)self supplementaryActions];
  v10 = [v4 appendObject:supplementaryActions withName:@"supplementaryActions"];

  auxiliaryOptionsSummaryText = [(NCNotificationListSupplementaryViewConfiguration *)self auxiliaryOptionsSummaryText];
  v12 = [v4 appendObject:auxiliaryOptionsSummaryText withName:@"auxiliaryOptionsSummaryText"];

  auxiliaryOptionActions = [(NCNotificationListSupplementaryViewConfiguration *)self auxiliaryOptionActions];
  v14 = [v4 appendObject:auxiliaryOptionActions withName:@"auxiliaryOptionActions"];

  tintColor = [(NCNotificationListSupplementaryViewConfiguration *)self tintColor];
  v16 = [v4 appendObject:tintColor withName:@"tintColor"];

  textColor = [(NCNotificationListSupplementaryViewConfiguration *)self textColor];
  v18 = [v4 appendObject:textColor withName:@"textColor"];

  [(NCNotificationListSupplementaryViewConfiguration *)self materialRecipe];
  v19 = MTStringFromMaterialRecipe();
  v20 = [v4 appendObject:v19 withName:@"materialRecipe"];

  v21 = [v4 appendBool:-[NCNotificationListSupplementaryViewConfiguration containsUnmanagedContent](self withName:{"containsUnmanagedContent"), @"unmanagedContent"}];
  v22 = [v4 appendBool:-[NCNotificationListSupplementaryViewConfiguration preventsUserDismissal](self withName:{"preventsUserDismissal"), @"preventsUserDismissal"}];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(NCNotificationListSupplementaryViewConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end