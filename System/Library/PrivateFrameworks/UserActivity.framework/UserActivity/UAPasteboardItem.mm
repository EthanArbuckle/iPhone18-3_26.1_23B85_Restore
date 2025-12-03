@interface UAPasteboardItem
- (UAPasteboardItem)init;
- (id)description;
- (void)addType:(id)type;
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

- (void)addType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = 0;
  for (i = 0; ; ++i)
  {
    types = [(UAPasteboardItem *)selfCopy types];
    v8 = [types count];

    if (v8 <= i)
    {
      types2 = [(UAPasteboardItem *)selfCopy types];
      v15 = [types2 arrayByAddingObject:typeCopy];
      [(UAPasteboardItem *)selfCopy setTypes:v15];

      goto LABEL_7;
    }

    types3 = [(UAPasteboardItem *)selfCopy types];
    v10 = [types3 objectAtIndexedSubscript:i];

    type = [v10 type];
    type2 = [typeCopy type];
    v13 = [type isEqualToString:type2];

    if (v13)
    {
      break;
    }

    v5 += 0x100000000;
  }

  types4 = [(UAPasteboardItem *)selfCopy types];
  types2 = [types4 mutableCopy];

  [types2 removeObjectAtIndex:v5 >> 32];
  [types2 addObject:typeCopy];
  [(UAPasteboardItem *)selfCopy setTypes:types2];
LABEL_7:

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  for (i = 0; ; ++i)
  {
    types = [(UAPasteboardItem *)selfCopy types];
    v7 = [types count];

    if (v7 <= i)
    {
      break;
    }

    types2 = [(UAPasteboardItem *)selfCopy types];
    v9 = [types2 objectAtIndexedSubscript:i];

    if (i)
    {
      types3 = [(UAPasteboardItem *)selfCopy types];
      v11 = [types3 count] - 1;

      type = [v9 type];
      if (i == v11)
      {
        [v3 appendFormat:@"%@"], type);
      }

      else
      {
        [v3 appendFormat:@"%@, ", type];
      }
    }

    else
    {
      type = [v9 type];
      objc_msgSend(v3, "appendFormat:", @"(%@, "), type;
    }
  }

  objc_sync_exit(selfCopy);

  v13 = [v3 copy];

  return v13;
}

@end