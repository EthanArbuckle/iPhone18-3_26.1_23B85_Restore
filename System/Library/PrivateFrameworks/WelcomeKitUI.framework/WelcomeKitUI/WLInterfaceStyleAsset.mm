@interface WLInterfaceStyleAsset
- (WLInterfaceStyleAsset)initWithLight:(id)light dark:(id)dark;
@end

@implementation WLInterfaceStyleAsset

- (WLInterfaceStyleAsset)initWithLight:(id)light dark:(id)dark
{
  lightCopy = light;
  darkCopy = dark;
  v11.receiver = self;
  v11.super_class = WLInterfaceStyleAsset;
  v8 = [(WLInterfaceStyleAsset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(WLInterfaceStyleAsset *)v8 setLight:lightCopy];
    [(WLInterfaceStyleAsset *)v9 setDark:darkCopy];
  }

  return v9;
}

@end