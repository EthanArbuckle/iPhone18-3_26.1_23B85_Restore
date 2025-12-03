@interface REExportedArrayValue
- (REExportedArrayValue)initWithArray:(id)array;
- (id)exportedValueForKey:(id)key;
- (void)enumerateValuesUsingBlock:(id)block;
@end

@implementation REExportedArrayValue

- (REExportedArrayValue)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = REExportedArrayValue;
  v6 = [(REExportedArrayValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_array, array);
  }

  return v7;
}

- (void)enumerateValuesUsingBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_array;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(blockCopy + 2))(blockCopy, 0, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)exportedValueForKey:(id)key
{
  keyCopy = key;
  v5 = [MEMORY[0x277CCAC80] scannerWithString:keyCopy];
  v11 = 0;
  if ([v5 scanInteger:&v11] && (v6 = v11, v6 < -[NSArray count](self->_array, "count")))
  {
    v7 = [(NSArray *)self->_array objectAtIndexedSubscript:v11];
    v8 = [REExportedValue exportedValueForObject:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = REExportedArrayValue;
    v8 = [(REExportedValue *)&v10 exportedValueForKey:keyCopy];
  }

  return v8;
}

@end