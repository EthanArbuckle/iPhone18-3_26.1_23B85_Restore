@interface WLInterfaceStyleAsset
- (WLInterfaceStyleAsset)initWithLight:(id)a3 dark:(id)a4;
@end

@implementation WLInterfaceStyleAsset

- (WLInterfaceStyleAsset)initWithLight:(id)a3 dark:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = WLInterfaceStyleAsset;
  v8 = [(WLInterfaceStyleAsset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(WLInterfaceStyleAsset *)v8 setLight:v6];
    [(WLInterfaceStyleAsset *)v9 setDark:v7];
  }

  return v9;
}

@end