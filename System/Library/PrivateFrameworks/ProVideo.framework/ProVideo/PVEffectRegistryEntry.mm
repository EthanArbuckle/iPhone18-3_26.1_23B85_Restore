@interface PVEffectRegistryEntry
- (PVEffectRegistryEntry)initWithClass:(Class)class andProperties:(id)properties;
- (void)dealloc;
@end

@implementation PVEffectRegistryEntry

- (PVEffectRegistryEntry)initWithClass:(Class)class andProperties:(id)properties
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = PVEffectRegistryEntry;
  v8 = [(PVEffectRegistryEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_effectClass = class;
    objc_storeStrong(&v8->_effectProperties, properties);
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PVEffectRegistryEntry;
  [(PVEffectRegistryEntry *)&v2 dealloc];
}

@end