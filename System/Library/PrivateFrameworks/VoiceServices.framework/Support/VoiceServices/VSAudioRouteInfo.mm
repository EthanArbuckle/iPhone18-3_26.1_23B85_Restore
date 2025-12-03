@interface VSAudioRouteInfo
- (BOOL)isAppleProduct;
- (BOOL)isBluetoothRoute;
- (VSAudioRouteInfo)initWithRouteAttributes:(id)attributes;
@end

@implementation VSAudioRouteInfo

- (BOOL)isAppleProduct
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"hdft", @"Hdft", @"usbD", @"hx90", @"wx90", @"rhac", @"wdef", 0}];
  v4 = [(NSDictionary *)self->_routeInfo objectForKeyedSubscript:*MEMORY[0x277D26D10]];
  if (v4)
  {
    v5 = [v3 containsObject:v4] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isBluetoothRoute
{
  v2 = [(NSDictionary *)self->_routeInfo objectForKeyedSubscript:*MEMORY[0x277D26CD8]];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (VSAudioRouteInfo)initWithRouteAttributes:(id)attributes
{
  attributesCopy = attributes;
  v9.receiver = self;
  v9.super_class = VSAudioRouteInfo;
  v6 = [(VSAudioRouteInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routeInfo, attributes);
  }

  return v7;
}

@end