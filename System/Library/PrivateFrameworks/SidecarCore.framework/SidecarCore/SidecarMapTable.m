@interface SidecarMapTable
- (SidecarMapTable)initWithKeyMask:(int64_t)a3 weakObjects:(BOOL)a4;
@end

@implementation SidecarMapTable

- (SidecarMapTable)initWithKeyMask:(int64_t)a3 weakObjects:(BOOL)a4
{
  v4 = a4;
  v15.receiver = self;
  v15.super_class = SidecarMapTable;
  v6 = [(SidecarMapTable *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_keyMask = a3;
    if (v4)
    {
      v8 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      keys2values = v7->_keys2values;
      v7->_keys2values = v8;

      [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    }

    else
    {
      v11 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v12 = v7->_keys2values;
      v7->_keys2values = v11;

      [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    }
    v10 = ;
    values2keys = v7->_values2keys;
    v7->_values2keys = v10;
  }

  return v7;
}

@end