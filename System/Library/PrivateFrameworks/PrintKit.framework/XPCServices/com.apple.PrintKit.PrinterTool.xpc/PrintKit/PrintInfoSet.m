@interface PrintInfoSet
- (PrintInfoSet)init;
- (id)uniquedBrowseInfos;
- (int)addInfo:(id)a3;
- (int)removeInfo:(id)a3;
- (int)updateInfo:(id)a3;
@end

@implementation PrintInfoSet

- (PrintInfoSet)init
{
  v6.receiver = self;
  v6.super_class = PrintInfoSet;
  v2 = [(PrintInfoSet *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    uuidToPrinters = v2->_uuidToPrinters;
    v2->_uuidToPrinters = v3;
  }

  return v2;
}

- (int)addInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = 65537;
  if (v5)
  {
    v7 = [(NSMutableDictionary *)self->_uuidToPrinters objectForKeyedSubscript:v5];
    if (!v7)
    {
      v7 = +[NSArray array];
    }

    if (([v7 containsObject:v4] & 1) == 0)
    {
      v8 = [v7 mutableCopy];
      [v8 addObject:v4];
      v9 = [v8 sortedArrayUsingSelector:"compare:"];
      [(NSMutableDictionary *)self->_uuidToPrinters setObject:v8 forKeyedSubscript:v5];
      v10 = [v8 objectAtIndexedSubscript:0];
      if ([v10 compare:v4])
      {
        v6 = 65540;
      }

      else
      {
        v6 = 65538;
      }
    }
  }

  return v6;
}

- (int)removeInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(NSMutableDictionary *)self->_uuidToPrinters objectForKeyedSubscript:v5];
  v7 = [v6 indexOfObject:v4];
  v8 = 262145;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 mutableCopy];
    [v9 removeObjectAtIndex:v7];
    [(NSMutableDictionary *)self->_uuidToPrinters setObject:v9 forKeyedSubscript:v5];
    if (v7)
    {
      v8 = 262148;
    }

    else
    {
      v8 = 262146;
    }
  }

  return v8;
}

- (int)updateInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(NSMutableDictionary *)self->_uuidToPrinters objectForKeyedSubscript:v5];
  v7 = [v6 indexOfObject:v4];
  v8 = 524289;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 mutableCopy];
    [v9 setObject:v4 atIndexedSubscript:v7];
    [(NSMutableDictionary *)self->_uuidToPrinters setObject:v9 forKeyedSubscript:v5];
    if (v7)
    {
      v8 = 524289;
    }

    else
    {
      v8 = 524290;
    }
  }

  return v8;
}

- (id)uniquedBrowseInfos
{
  v3 = [(NSMutableDictionary *)self->_uuidToPrinters allKeys];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(NSMutableDictionary *)self->_uuidToPrinters objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i), v13];
        if ([v9 count])
        {
          v10 = [v9 firstObject];
          [v4 addObject:v10];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [NSSet setWithArray:v4];

  return v11;
}

@end