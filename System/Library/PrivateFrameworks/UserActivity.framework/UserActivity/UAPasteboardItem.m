@interface UAPasteboardItem
- (UAPasteboardItem)init;
- (id)description;
- (void)addType:(id)a3;
@end

@implementation UAPasteboardItem

- (UAPasteboardItem)init
{
  v5.receiver = self;
  v5.super_class = UAPasteboardItem;
  v2 = [(UAPasteboardItem *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [(UAPasteboardItem *)v2 setTypes:v3];
  }

  return v2;
}

- (void)addType:(id)a3
{
  v17 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = 0;
  for (i = 0; ; ++i)
  {
    v7 = [(UAPasteboardItem *)v4 types];
    v8 = [v7 count];

    if (v8 <= i)
    {
      v14 = [(UAPasteboardItem *)v4 types];
      v15 = [v14 arrayByAddingObject:v17];
      [(UAPasteboardItem *)v4 setTypes:v15];

      goto LABEL_7;
    }

    v9 = [(UAPasteboardItem *)v4 types];
    v10 = [v9 objectAtIndexedSubscript:i];

    v11 = [v10 type];
    v12 = [v17 type];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      break;
    }

    v5 += 0x100000000;
  }

  v16 = [(UAPasteboardItem *)v4 types];
  v14 = [v16 mutableCopy];

  [v14 removeObjectAtIndex:v5 >> 32];
  [v14 addObject:v17];
  [(UAPasteboardItem *)v4 setTypes:v14];
LABEL_7:

  objc_sync_exit(v4);
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = self;
  objc_sync_enter(v4);
  for (i = 0; ; ++i)
  {
    v6 = [(UAPasteboardItem *)v4 types];
    v7 = [v6 count];

    if (v7 <= i)
    {
      break;
    }

    v8 = [(UAPasteboardItem *)v4 types];
    v9 = [v8 objectAtIndexedSubscript:i];

    if (i)
    {
      v10 = [(UAPasteboardItem *)v4 types];
      v11 = [v10 count] - 1;

      v12 = [v9 type];
      if (i == v11)
      {
        [v3 appendFormat:@"%@"], v12);
      }

      else
      {
        [v3 appendFormat:@"%@, ", v12];
      }
    }

    else
    {
      v12 = [v9 type];
      objc_msgSend(v3, "appendFormat:", @"(%@, "), v12;
    }
  }

  objc_sync_exit(v4);

  v13 = [v3 copy];

  return v13;
}

@end