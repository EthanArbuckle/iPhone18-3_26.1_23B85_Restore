@interface UIStatusBarItem
+ (BOOL)isItemWithTypeExclusive:(int)a3 outBlacklistItems:(id *)a4 outWhitelistItems:(id *)a5;
+ (BOOL)itemType:(int)a3 idiom:(int64_t)a4 appearsInRegion:(int)a5;
+ (BOOL)itemType:(int)a3 idiom:(int64_t)a4 canBeEnabledForData:(id)a5 style:(id)a6;
+ (UIStatusBarItem)itemWithType:(int)a3 idiom:(int64_t)a4;
- (BOOL)appearsInRegion:(int)a3;
- (Class)viewClass;
- (NSString)indicatorName;
- (UIStatusBarItem)initWithType:(int)a3;
- (id)description;
- (int)centerOrder;
- (int)leftOrder;
- (int)priority;
- (int)rightOrder;
- (int64_t)compareCenterOrder:(id)a3;
- (int64_t)compareLeftOrder:(id)a3;
- (int64_t)comparePriority:(id)a3;
- (int64_t)compareRightOrder:(id)a3;
@end

@implementation UIStatusBarItem

+ (UIStatusBarItem)itemWithType:(int)a3 idiom:(int64_t)a4
{
  v5 = *&a3;
  if ([a1 typeIsValid:?])
  {
    v6 = &_MergedGlobals_1294;
    if (a4 != 3)
    {
      v6 = &unk_1ED4A0D38;
    }

    v7 = &v6[8 * v5];
    v8 = *v7;
    if (!v8)
    {
      v8 = [[UIStatusBarItem alloc] initWithType:v5];
      v8->_idiom = a4;
      objc_storeStrong(v7, v8);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)itemType:(int)a3 idiom:(int64_t)a4 canBeEnabledForData:(id)a5 style:(id)a6
{
  v7 = &__itemValues;
  if (a4 == 1)
  {
    v7 = &__padItemValues;
  }

  v8 = v7[5 * a3 + 4];
  if (!v8)
  {
    return *([a5 rawData] + a3);
  }

  return (v8)(a5, a6);
}

+ (BOOL)itemType:(int)a3 idiom:(int64_t)a4 appearsInRegion:(int)a5
{
  if (a4 == 3)
  {
    v8 = &(&__externalItemValues)[5 * a3];
    v9 = *(v8 + 5);
    v10 = (v8 + 3);
  }

  else
  {
    if (a4 == 1)
    {
      v11 = &__padItemValues;
    }

    else
    {
      v11 = &__itemValues;
    }

    v12 = +[UIStatusBar _deviceUserInterfaceLayoutDirection];
    v13 = &v11[5 * a3];
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

  if (a5 == 2)
  {
    v19 = &__itemValues;
    if (a4 == 1)
    {
      v19 = &__padItemValues;
    }

    if (a4 == 3)
    {
      v19 = &__externalItemValues;
    }

    v18 = HIDWORD(v19[5 * a3 + 3]);
    return v18 != 0;
  }

  if (a5 == 1)
  {
    v18 = *v10;
    return v18 != 0;
  }

  return !a5 && v9 != 0;
}

+ (BOOL)isItemWithTypeExclusive:(int)a3 outBlacklistItems:(id *)a4 outWhitelistItems:(id *)a5
{
  result = 0;
  if (a3 <= 46)
  {
    if (a3 == 36)
    {
      return 1;
    }

    if (a3 != 42)
    {
      return result;
    }

    if (a4)
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = &unk_1EFE331F0;
LABEL_15:
      v12 = [v7 setWithObject:v8];
      v13 = v12;
      result = 0;
      *a4 = v12;
      return result;
    }

    return 0;
  }

  switch(a3)
  {
    case '3':
      if (a5)
      {
        v10 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1EFE331A8, &unk_1EFE331C0, 0}];
        v11 = v10;
        result = 0;
        *a5 = v10;
        return result;
      }

      return 0;
    case '2':
      if (a4)
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

- (UIStatusBarItem)initWithType:(int)a3
{
  v5.receiver = self;
  v5.super_class = UIStatusBarItem;
  result = [(UIStatusBarItem *)&v5 init];
  if (result)
  {
    result->_type = a3;
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

- (BOOL)appearsInRegion:(int)a3
{
  if (a3 == 2)
  {
    return [(UIStatusBarItem *)self appearsOnCenter];
  }

  if (a3 == 1)
  {
    return [(UIStatusBarItem *)self appearsOnRight];
  }

  if (a3)
  {
    return 0;
  }

  return [(UIStatusBarItem *)self appearsOnLeft];
}

- (int64_t)comparePriority:(id)a3
{
  v4 = a3;
  v5 = [(UIStatusBarItem *)self priority];
  v6 = [v4 priority];

  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (int64_t)compareLeftOrder:(id)a3
{
  v4 = a3;
  v5 = [(UIStatusBarItem *)self leftOrder];
  v6 = [v4 leftOrder];

  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (int64_t)compareRightOrder:(id)a3
{
  v4 = a3;
  v5 = [(UIStatusBarItem *)self rightOrder];
  v6 = [v4 rightOrder];

  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (int64_t)compareCenterOrder:(id)a3
{
  v4 = a3;
  v5 = [(UIStatusBarItem *)self centerOrder];
  v6 = [v4 centerOrder];

  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
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

  v6 = [(UIStatusBarItem *)self indicatorName];

  if (v6)
  {
    v7 = [(UIStatusBarItem *)self indicatorName];
    v8 = [v5 stringByAppendingFormat:@":%@", v7];

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