@interface NCNotificationListMutableSupplementaryViewConfiguration
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAuxiliaryOptionActions:(id)actions;
- (void)setAuxiliaryOptionsSummaryText:(id)text;
- (void)setDefaultAction:(id)action;
- (void)setGroupName:(id)name;
- (void)setGroupingIdentifier:(id)identifier;
- (void)setSupplementaryActions:(id)actions;
- (void)setTextColor:(id)color;
- (void)setTintColor:(id)color;
@end

@implementation NCNotificationListMutableSupplementaryViewConfiguration

- (void)setGroupingIdentifier:(id)identifier
{
  v4 = [identifier copy];
  self->super._groupingIdentifier = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setGroupName:(id)name
{
  v4 = [name copy];
  self->super._groupName = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setDefaultAction:(id)action
{
  v4 = [action copy];
  self->super._defaultAction = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setSupplementaryActions:(id)actions
{
  v4 = [actions copy];
  self->super._supplementaryActions = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setAuxiliaryOptionsSummaryText:(id)text
{
  v4 = [text copy];
  self->super._auxiliaryOptionsSummaryText = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setAuxiliaryOptionActions:(id)actions
{
  v4 = [actions copy];
  self->super._auxiliaryOptionActions = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setTintColor:(id)color
{
  v4 = [color copy];
  self->super._tintColor = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setTextColor:(id)color
{
  v4 = [color copy];
  self->super._textColor = v4;

  MEMORY[0x2821F96F8](v4);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCNotificationListSupplementaryViewConfiguration allocWithZone:zone];
  LOWORD(v6) = *&self->super._containsUnmanagedContent;
  return [(NCNotificationListSupplementaryViewConfiguration *)v4 _initWithGroupingIdentifier:self->super._groupingIdentifier groupName:self->super._groupName defaultAction:self->super._defaultAction supplementaryActions:self->super._supplementaryActions auxiliaryOptionsSummaryText:self->super._auxiliaryOptionsSummaryText auxiliaryOptionActions:self->super._auxiliaryOptionActions tintColor:self->super._tintColor textColor:self->super._textColor materialRecipe:self->super._materialRecipe containsUnmanagedContent:v6 preventsUserDismissal:?];
}

@end