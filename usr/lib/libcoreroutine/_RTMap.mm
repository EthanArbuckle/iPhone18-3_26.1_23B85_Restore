@interface _RTMap
- (_RTMap)initWithInput:(id)input;
- (id)withBlock:(id)block;
@end

@implementation _RTMap

- (_RTMap)initWithInput:(id)input
{
  inputCopy = input;
  v9.receiver = self;
  v9.super_class = _RTMap;
  v6 = [(_RTMap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_input, input);
  }

  return v7;
}

- (id)withBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_input, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_input;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = blockCopy[2](blockCopy, *(*(&v13 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

@end