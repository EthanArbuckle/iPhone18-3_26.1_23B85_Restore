@interface TSDMPSImageConversionStorage
- (TSDMPSImageConversionStorage)init;
- (void)removeAllObjects;
@end

@implementation TSDMPSImageConversionStorage

- (TSDMPSImageConversionStorage)init
{
  v6.receiver = self;
  v6.super_class = TSDMPSImageConversionStorage;
  v2 = [(TSDMPSImageConversionStorage *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    storage = v2->_storage;
    v2->_storage = v3;
  }

  return v2;
}

- (void)removeAllObjects
{
  v2 = [(TSDMPSImageConversionStorage *)self storage];
  [v2 removeAllObjects];
}

@end