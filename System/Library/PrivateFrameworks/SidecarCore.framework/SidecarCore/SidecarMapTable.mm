@interface SidecarMapTable
- (SidecarMapTable)initWithKeyMask:(int64_t)mask weakObjects:(BOOL)objects;
@end

@implementation SidecarMapTable

- (SidecarMapTable)initWithKeyMask:(int64_t)mask weakObjects:(BOOL)objects
{
  objectsCopy = objects;
  v15.receiver = self;
  v15.super_class = SidecarMapTable;
  v6 = [(SidecarMapTable *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_keyMask = mask;
    if (objectsCopy)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      keys2values = v7->_keys2values;
      v7->_keys2values = strongToWeakObjectsMapTable;

      [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    }

    else
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v12 = v7->_keys2values;
      v7->_keys2values = strongToStrongObjectsMapTable;

      [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    }
    v10 = ;
    values2keys = v7->_values2keys;
    v7->_values2keys = v10;
  }

  return v7;
}

@end