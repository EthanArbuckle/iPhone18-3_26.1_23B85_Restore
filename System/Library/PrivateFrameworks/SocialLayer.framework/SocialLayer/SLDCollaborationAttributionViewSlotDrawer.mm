@interface SLDCollaborationAttributionViewSlotDrawer
+ (id)resolvedStyleForStyle:(id)style tag:(id)tag;
- (id)resolvedStyleForStyle:(id)style tag:(id)tag;
@end

@implementation SLDCollaborationAttributionViewSlotDrawer

+ (id)resolvedStyleForStyle:(id)style tag:(id)tag
{
  v16 = MEMORY[0x277D777E0];
  styleCopy = style;
  accessibilityButtonShapes = [styleCopy accessibilityButtonShapes];
  accessibilityContrast = [styleCopy accessibilityContrast];
  displayScale = [styleCopy displayScale];
  layoutDirection = [styleCopy layoutDirection];
  localization = [styleCopy localization];
  preferredContentSizeCategory = [styleCopy preferredContentSizeCategory];
  tintColor = [styleCopy tintColor];
  userInterfaceIdiom = [styleCopy userInterfaceIdiom];
  userInterfaceStyle = [styleCopy userInterfaceStyle];

  v14 = [v16 slotStyleWithAccessibilityButtonShapes:accessibilityButtonShapes accessibilityContrast:accessibilityContrast displayRange:1 displayScale:displayScale layoutDirection:layoutDirection legibilityWeight:0 localization:localization preferredContentSizeCategory:preferredContentSizeCategory tintColor:tintColor userInterfaceIdiom:userInterfaceIdiom userInterfaceStyle:userInterfaceStyle];

  return v14;
}

- (id)resolvedStyleForStyle:(id)style tag:(id)tag
{
  tagCopy = tag;
  styleCopy = style;
  v7 = [objc_opt_class() resolvedStyleForStyle:styleCopy tag:tagCopy];

  return v7;
}

@end