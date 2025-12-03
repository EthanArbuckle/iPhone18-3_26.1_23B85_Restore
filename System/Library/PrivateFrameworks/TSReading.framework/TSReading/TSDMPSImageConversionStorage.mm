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
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    storage = v2->_storage;
    v2->_storage = strongToStrongObjectsMapTable;
  }

  return v2;
}

- (void)removeAllObjects
{
  storage = [(TSDMPSImageConversionStorage *)self storage];
  [storage removeAllObjects];
}

@end