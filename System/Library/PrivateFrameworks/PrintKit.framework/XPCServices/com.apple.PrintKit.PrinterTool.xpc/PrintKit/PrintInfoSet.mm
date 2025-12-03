@interface PrintInfoSet
- (PrintInfoSet)init;
- (id)uniquedBrowseInfos;
- (int)addInfo:(id)info;
- (int)removeInfo:(id)info;
- (int)updateInfo:(id)info;
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

- (int)addInfo:(id)info
{
  infoCopy = info;
  uuid = [infoCopy uuid];
  v6 = 65537;
  if (uuid)
  {
    v7 = [(NSMutableDictionary *)self->_uuidToPrinters objectForKeyedSubscript:uuid];
    if (!v7)
    {
      v7 = +[NSArray array];
    }

    if (([v7 containsObject:infoCopy] & 1) == 0)
    {
      v8 = [v7 mutableCopy];
      [v8 addObject:infoCopy];
      v9 = [v8 sortedArrayUsingSelector:"compare:"];
      [(NSMutableDictionary *)self->_uuidToPrinters setObject:v8 forKeyedSubscript:uuid];
      v10 = [v8 objectAtIndexedSubscript:0];
      if ([v10 compare:infoCopy])
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

- (int)removeInfo:(id)info
{
  infoCopy = info;
  uuid = [infoCopy uuid];
  v6 = [(NSMutableDictionary *)self->_uuidToPrinters objectForKeyedSubscript:uuid];
  v7 = [v6 indexOfObject:infoCopy];
  v8 = 262145;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 mutableCopy];
    [v9 removeObjectAtIndex:v7];
    [(NSMutableDictionary *)self->_uuidToPrinters setObject:v9 forKeyedSubscript:uuid];
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

- (int)updateInfo:(id)info
{
  infoCopy = info;
  uuid = [infoCopy uuid];
  v6 = [(NSMutableDictionary *)self->_uuidToPrinters objectForKeyedSubscript:uuid];
  v7 = [v6 indexOfObject:infoCopy];
  v8 = 524289;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 mutableCopy];
    [v9 setObject:infoCopy atIndexedSubscript:v7];
    [(NSMutableDictionary *)self->_uuidToPrinters setObject:v9 forKeyedSubscript:uuid];
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
  allKeys = [(NSMutableDictionary *)self->_uuidToPrinters allKeys];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = allKeys;
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
          firstObject = [v9 firstObject];
          [v4 addObject:firstObject];
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