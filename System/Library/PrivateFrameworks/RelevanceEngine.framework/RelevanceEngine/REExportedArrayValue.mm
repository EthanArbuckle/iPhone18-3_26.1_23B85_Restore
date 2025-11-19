@interface REExportedArrayValue
- (REExportedArrayValue)initWithArray:(id)a3;
- (id)exportedValueForKey:(id)a3;
- (void)enumerateValuesUsingBlock:(id)a3;
@end

@implementation REExportedArrayValue

- (REExportedArrayValue)initWithArray:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REExportedArrayValue;
  v6 = [(REExportedArrayValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_array, a3);
  }

  return v7;
}

- (void)enumerateValuesUsingBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
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

          (*(v4 + 2))(v4, 0, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)exportedValueForKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAC80] scannerWithString:v4];
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
    v8 = [(REExportedValue *)&v10 exportedValueForKey:v4];
  }

  return v8;
}

@end