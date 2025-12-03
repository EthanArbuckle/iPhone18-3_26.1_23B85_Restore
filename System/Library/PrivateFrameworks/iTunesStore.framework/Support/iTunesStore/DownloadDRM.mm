@interface DownloadDRM
- (DownloadDRM)initWithSinfArray:(id)array;
- (NSArray)sinfs;
- (id)_sinfsArrayWithDataKey:(id)key;
- (id)firstDataForSinfDataKey:(id)key;
- (id)sinfForIdentifier:(int64_t)identifier;
- (void)dealloc;
@end

@implementation DownloadDRM

- (DownloadDRM)initWithSinfArray:(id)array
{
  v17.receiver = self;
  v17.super_class = DownloadDRM;
  v4 = [(DownloadDRM *)&v17 init];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [array countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(array);
          }

          v10 = [[DownloadSinf alloc] initWithDictionary:*(*(&v13 + 1) + 8 * v9)];
          if (v10)
          {
            v11 = v10;
            [(NSArray *)v5 addObject:v10];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [array countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }

    v4->_sinfs = v5;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadDRM;
  [(DownloadDRM *)&v3 dealloc];
}

- (id)firstDataForSinfDataKey:(id)key
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  sinfs = self->_sinfs;
  result = [(NSArray *)sinfs countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(sinfs);
      }

      result = [*(*(&v9 + 1) + 8 * v8) dataForSinfDataKey:key];
      if (result)
      {
        break;
      }

      if (v6 == ++v8)
      {
        result = [(NSArray *)sinfs countByEnumeratingWithState:&v9 objects:v13 count:16];
        v6 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (id)sinfForIdentifier:(int64_t)identifier
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sinfs = self->_sinfs;
  result = [(NSArray *)sinfs countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(sinfs);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([v9 identifier] == identifier)
        {
          return v9;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(NSArray *)sinfs countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (NSArray)sinfs
{
  v2 = self->_sinfs;

  return v2;
}

- (id)_sinfsArrayWithDataKey:(id)key
{
  v5 = objc_alloc_init(NSMutableArray);
  sinfs = [(DownloadDRM *)self sinfs];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSArray *)sinfs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(sinfs);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) dataForSinfDataKey:key];
        if (v11)
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)sinfs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [[SinfsArray alloc] initWithSINFs:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end