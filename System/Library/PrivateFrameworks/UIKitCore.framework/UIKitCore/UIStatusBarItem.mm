@interface UIStatusBarItem
+ (BOOL)isItemWithTypeExclusive:(int)exclusive outBlacklistItems:(id *)items outWhitelistItems:(id *)whitelistItems;
+ (BOOL)itemType:(int)type idiom:(int64_t)idiom appearsInRegion:(int)region;
+ (BOOL)itemType:(int)type idiom:(int64_t)idiom canBeEnabledForData:(id)data style:(id)style;
+ (UIStatusBarItem)itemWithType:(int)type idiom:(int64_t)idiom;
- (BOOL)appearsInRegion:(int)region;
- (Class)viewClass;
- (NSString)indicatorName;
- (UIStatusBarItem)initWithType:(int)type;
- (id)description;
- (int)centerOrder;
- (int)leftOrder;
- (int)priority;
- (int)rightOrder;
- (int64_t)compareCenterOrder:(id)order;
- (int64_t)compareLeftOrder:(id)order;
- (int64_t)comparePriority:(id)priority;
- (int64_t)compareRightOrder:(id)order;
@end

@implementation UIStatusBarItem

+ (UIStatusBarItem)itemWithType:(int)type idiom:(int64_t)idiom
{
  v5 = *&type;
  if ([self typeIsValid:?])
  {
    v6 = &_MergedGlobals_1294;
    if (idiom != 3)
    {
      v6 = &unk_1ED4A0D38;
    }

    v7 = &v6[8 * v5];
    v8 = *v7;
    if (!v8)
    {
      v8 = [[UIStatusBarItem alloc] initWithType:v5];
      v8->_idiom = idiom;
      objc_storeStrong(v7, v8);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)itemType:(int)type idiom:(int64_t)idiom canBeEnabledForData:(id)data style:(id)style
{
  v7 = &__itemValues;
  if (idiom == 1)
  {
    v7 = &__padItemValues;
  }

  v8 = v7[5 * type + 4];
  if (!v8)
  {
    return *([data rawData] + type);
  }

  return (v8)(data, style);
}

+ (BOOL)itemType:(int)type idiom:(int64_t)idiom appearsInRegion:(int)region
{
  if (idiom == 3)
  {
    v8 = &(&__externalItemValues)[5 * type];
    v9 = *(v8 + 5);
    v10 = (v8 + 3);
  }

  else
  {
    if (idiom == 1)
    {
      v11 = &__padItemValues;
    }

    else
    {
      v11 = &__itemValues;
    }

    v12 = +[UIStatusBar _deviceUserInterfaceLayoutDirection];
    v13 = &v11[5 * type];
    v14 = v13 + 5;
    v15 = (v13 + 3);
    if (v12)
    {
      v16 = (v13 + 3);
    }

    else
    {
      v16 = v13 + 5;
    }

    v9 = *v16;
    if (+[UIStatusBar _deviceUserInterfaceLayoutDirection])
    {
      v10 = v14;
    }

    else
    {
      v10 = v15;
    }
  }

  if (region == 2)
  {
    v19 = &__itemValues;
    if (idiom == 1)
    {
      v19 = &__padItemValues;
    }

    if (idiom == 3)
    {
      v19 = &__externalItemValues;
    }

    v18 = HIDWORD(v19[5 * type + 3]);
    return v18 != 0;
  }

  if (region == 1)
  {
    v18 = *v10;
    return v18 != 0;
  }

  return !region && v9 != 0;
}

+ (BOOL)isItemWithTypeExclusive:(int)exclusive outBlacklistItems:(id *)items outWhitelistItems:(id *)whitelistItems
{
  result = 0;
  if (exclusive <= 46)
  {
    if (exclusive == 36)
    {
      return 1;
    }

    if (exclusive != 42)
    {
      return result;
    }

    if (items)
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = &unk_1EFE331F0;
LABEL_15:
      v12 = [v7 setWithObject:v8];
      v13 = v12;
      result = 0;
      *items = v12;
      return result;
    }

    return 0;
  }

  switch(exclusive)
  {
    case '3':
      if (whitelistItems)
      {
        v10 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1EFE331A8, &unk_1EFE331C0, 0}];
        v11 = v10;
        result = 0;
        *whitelistItems = v10;
        return result;
      }

      return 0;
    case '2':
      if (items)
      {
        v7 = MEMORY[0x1E695DFD8];
        v8 = &unk_1EFE331D8;
        goto LABEL_15;
      }

      return 0;
    case '/':
      return 1;
  }

  return result;
}

- (UIStatusBarItem)initWithType:(int)type
{
  v5.receiver = self;
  v5.super_class = UIStatusBarItem;
  result = [(UIStatusBarItem *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (Class)viewClass
{
  idiom = self->_idiom;
  v3 = &__itemValues;
  if (idiom == 1)
  {
    v3 = &__padItemValues;
  }

  if (idiom == 3)
  {
    v4 = &__externalItemValues;
  }

  else
  {
    v4 = v3;
  }

  return v4[5 * self->_type];
}

- (int)priority
{
  idiom = self->_idiom;
  v3 = &__itemValues;
  if (idiom == 1)
  {
    v3 = &__padItemValues;
  }

  if (idiom == 3)
  {
    v4 = &__externalItemValues;
  }

  else
  {
    v4 = v3;
  }

  return v4[5 * self->_type + 2];
}

- (int)leftOrder
{
  type = self->_type;
  idiom = self->_idiom;
  if (idiom == 3)
  {
    v4 = &(&__externalItemValues)[5 * type] + 5;
  }

  else
  {
    if (idiom == 1)
    {
      v5 = &__padItemValues;
    }

    else
    {
      v5 = &__itemValues;
    }

    v6 = +[UIStatusBar _deviceUserInterfaceLayoutDirection];
    v7 = &v5[5 * type];
    v8 = v7 + 5;
    v4 = (v7 + 3);
    if (!v6)
    {
      v4 = v8;
    }
  }

  return *v4;
}

- (int)rightOrder
{
  type = self->_type;
  idiom = self->_idiom;
  if (idiom == 3)
  {
    v4 = (&(&__externalItemValues)[5 * type] + 3);
  }

  else
  {
    if (idiom == 1)
    {
      v5 = &__padItemValues;
    }

    else
    {
      v5 = &__itemValues;
    }

    v6 = +[UIStatusBar _deviceUserInterfaceLayoutDirection];
    v7 = &v5[5 * type];
    v8 = (v7 + 3);
    v4 = v7 + 5;
    if (!v6)
    {
      v4 = v8;
    }
  }

  return *v4;
}

- (int)centerOrder
{
  idiom = self->_idiom;
  v3 = &__itemValues;
  if (idiom == 1)
  {
    v3 = &__padItemValues;
  }

  if (idiom == 3)
  {
    v4 = &__externalItemValues;
  }

  else
  {
    v4 = v3;
  }

  return HIDWORD(v4[5 * self->_type + 3]);
}

- (NSString)indicatorName
{
  if (self->_idiom == 1)
  {
    v2 = &__padItemValues;
  }

  else
  {
    v2 = &__itemValues;
  }

  return v2[5 * self->_type + 1];
}

- (BOOL)appearsInRegion:(int)region
{
  if (region == 2)
  {
    return [(UIStatusBarItem *)self appearsOnCenter];
  }

  if (region == 1)
  {
    return [(UIStatusBarItem *)self appearsOnRight];
  }

  if (region)
  {
    return 0;
  }

  return [(UIStatusBarItem *)self appearsOnLeft];
}

- (int64_t)comparePriority:(id)priority
{
  priorityCopy = priority;
  priority = [(UIStatusBarItem *)self priority];
  priority2 = [priorityCopy priority];

  if (priority >= priority2)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (priority > priority2)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (int64_t)compareLeftOrder:(id)order
{
  orderCopy = order;
  leftOrder = [(UIStatusBarItem *)self leftOrder];
  leftOrder2 = [orderCopy leftOrder];

  if (leftOrder >= leftOrder2)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (leftOrder > leftOrder2)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (int64_t)compareRightOrder:(id)order
{
  orderCopy = order;
  rightOrder = [(UIStatusBarItem *)self rightOrder];
  rightOrder2 = [orderCopy rightOrder];

  if (rightOrder >= rightOrder2)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (rightOrder > rightOrder2)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (int64_t)compareCenterOrder:(id)order
{
  orderCopy = order;
  centerOrder = [(UIStatusBarItem *)self centerOrder];
  centerOrder2 = [orderCopy centerOrder];

  if (centerOrder >= centerOrder2)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (centerOrder > centerOrder2)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = UIStatusBarItem;
  v3 = [(UIStatusBarItem *)&v12 description];
  v4 = NSStringFromClass([(UIStatusBarItem *)self viewClass]);
  v5 = [v3 stringByAppendingFormat:@" [%@", v4];

  indicatorName = [(UIStatusBarItem *)self indicatorName];

  if (indicatorName)
  {
    indicatorName2 = [(UIStatusBarItem *)self indicatorName];
    v8 = [v5 stringByAppendingFormat:@":%@", indicatorName2];

    v5 = v8;
  }

  if ([(UIStatusBarItem *)self appearsOnLeft]&& [(UIStatusBarItem *)self appearsOnRight])
  {
    v9 = @" (Left/Right)]";
  }

  else if ([(UIStatusBarItem *)self appearsOnRight])
  {
    v9 = @" (Right)]";
  }

  else if ([(UIStatusBarItem *)self appearsOnLeft])
  {
    v9 = @" (Left)]";
  }

  else
  {
    if (![(UIStatusBarItem *)self appearsOnCenter])
    {
      goto LABEL_13;
    }

    v9 = @" (Center)]";
  }

  v10 = [v5 stringByAppendingString:v9];

  v5 = v10;
LABEL_13:

  return v5;
}

@end