@interface SLDSlotTag
- (SLDSlotTag)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resolvedStyleForStyle:(id)style;
@end

@implementation SLDSlotTag

- (id)resolvedStyleForStyle:(id)style
{
  v15 = MEMORY[0x277D777E0];
  styleCopy = style;
  accessibilityButtonShapes = [styleCopy accessibilityButtonShapes];
  accessibilityContrast = [styleCopy accessibilityContrast];
  displayScale = [styleCopy displayScale];
  layoutDirection = [styleCopy layoutDirection];
  localization = [styleCopy localization];
  preferredContentSizeCategory = [styleCopy preferredContentSizeCategory];
  ConstantColor = CGColorGetConstantColor(*MEMORY[0x277CBF3C0]);
  userInterfaceIdiom = [styleCopy userInterfaceIdiom];
  userInterfaceStyle = [styleCopy userInterfaceStyle];

  v13 = [v15 slotStyleWithAccessibilityButtonShapes:accessibilityButtonShapes accessibilityContrast:accessibilityContrast displayRange:1 displayScale:displayScale layoutDirection:layoutDirection legibilityWeight:0 localization:localization preferredContentSizeCategory:preferredContentSizeCategory tintColor:ConstantColor userInterfaceIdiom:userInterfaceIdiom userInterfaceStyle:userInterfaceStyle];

  return v13;
}

- (SLDSlotTag)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SLDSlotTag;
  return [(SLDSlotTag *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

@end