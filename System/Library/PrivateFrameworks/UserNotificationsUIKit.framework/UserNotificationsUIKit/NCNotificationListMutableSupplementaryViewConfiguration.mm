@interface NCNotificationListMutableSupplementaryViewConfiguration
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAuxiliaryOptionActions:(id)a3;
- (void)setAuxiliaryOptionsSummaryText:(id)a3;
- (void)setDefaultAction:(id)a3;
- (void)setGroupName:(id)a3;
- (void)setGroupingIdentifier:(id)a3;
- (void)setSupplementaryActions:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation NCNotificationListMutableSupplementaryViewConfiguration

- (void)setGroupingIdentifier:(id)a3
{
  v4 = [a3 copy];
  self->super._groupingIdentifier = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setGroupName:(id)a3
{
  v4 = [a3 copy];
  self->super._groupName = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setDefaultAction:(id)a3
{
  v4 = [a3 copy];
  self->super._defaultAction = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setSupplementaryActions:(id)a3
{
  v4 = [a3 copy];
  self->super._supplementaryActions = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setAuxiliaryOptionsSummaryText:(id)a3
{
  v4 = [a3 copy];
  self->super._auxiliaryOptionsSummaryText = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setAuxiliaryOptionActions:(id)a3
{
  v4 = [a3 copy];
  self->super._auxiliaryOptionActions = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setTintColor:(id)a3
{
  v4 = [a3 copy];
  self->super._tintColor = v4;

  MEMORY[0x2821F96F8](v4);
}

- (void)setTextColor:(id)a3
{
  v4 = [a3 copy];
  self->super._textColor = v4;

  MEMORY[0x2821F96F8](v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NCNotificationListSupplementaryViewConfiguration allocWithZone:a3];
  LOWORD(v6) = *&self->super._containsUnmanagedContent;
  return [(NCNotificationListSupplementaryViewConfiguration *)v4 _initWithGroupingIdentifier:self->super._groupingIdentifier groupName:self->super._groupName defaultAction:self->super._defaultAction supplementaryActions:self->super._supplementaryActions auxiliaryOptionsSummaryText:self->super._auxiliaryOptionsSummaryText auxiliaryOptionActions:self->super._auxiliaryOptionActions tintColor:self->super._tintColor textColor:self->super._textColor materialRecipe:self->super._materialRecipe containsUnmanagedContent:v6 preventsUserDismissal:?];
}

@end