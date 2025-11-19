@interface SLDSlotTag
- (SLDSlotTag)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)resolvedStyleForStyle:(id)a3;
@end

@implementation SLDSlotTag

- (id)resolvedStyleForStyle:(id)a3
{
  v15 = MEMORY[0x277D777E0];
  v3 = a3;
  v4 = [v3 accessibilityButtonShapes];
  v5 = [v3 accessibilityContrast];
  v6 = [v3 displayScale];
  v7 = [v3 layoutDirection];
  v8 = [v3 localization];
  v9 = [v3 preferredContentSizeCategory];
  ConstantColor = CGColorGetConstantColor(*MEMORY[0x277CBF3C0]);
  v11 = [v3 userInterfaceIdiom];
  v12 = [v3 userInterfaceStyle];

  v13 = [v15 slotStyleWithAccessibilityButtonShapes:v4 accessibilityContrast:v5 displayRange:1 displayScale:v6 layoutDirection:v7 legibilityWeight:0 localization:v8 preferredContentSizeCategory:v9 tintColor:ConstantColor userInterfaceIdiom:v11 userInterfaceStyle:v12];

  return v13;
}

- (SLDSlotTag)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SLDSlotTag;
  return [(SLDSlotTag *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

@end