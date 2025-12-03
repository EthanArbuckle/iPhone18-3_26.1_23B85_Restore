@interface XBApplicationSnapshotSortDescriptor
+ (id)_propertyKeyForSnapshotKey:(unint64_t)key overriddenForNil:(BOOL *)nil;
+ (id)sortDescriptorWithKey:(unint64_t)key ascending:(BOOL)ascending comparator:(id)comparator;
- (NSSortDescriptor)NSSortDescriptor;
- (XBApplicationSnapshotSortDescriptor)initWithKey:(unint64_t)key ascending:(BOOL)ascending comparator:(id)comparator;
- (id)_stringForKey:(unint64_t)key;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation XBApplicationSnapshotSortDescriptor

- (NSSortDescriptor)NSSortDescriptor
{
  v9 = 0;
  v3 = [objc_opt_class() _propertyKeyForSnapshotKey:self->_key overriddenForNil:&v9];
  if (v9 == 1)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__XBApplicationSnapshotSortDescriptor_NSSortDescriptor__block_invoke;
    v8[3] = &unk_279CF9DE0;
    v8[4] = self;
    comparator = v8;
  }

  else
  {
    comparator = self->_comparator;
  }

  v5 = MEMORY[0x26D67C6A0](comparator);
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v3 ascending:self->_ascending comparator:v5];

  return v6;
}

uint64_t __55__XBApplicationSnapshotSortDescriptor_NSSortDescriptor__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = FAKE_NIL_PTR();

  v9 = v7;
  if (v8 == v7)
  {

    v9 = 0;
  }

  v10 = v6;
  v11 = FAKE_NIL_PTR();

  v12 = v10;
  if (v11 == v10)
  {

    v12 = 0;
  }

  v13 = (*(*(*(a1 + 32) + 24) + 16))();

  return v13;
}

+ (id)sortDescriptorWithKey:(unint64_t)key ascending:(BOOL)ascending comparator:(id)comparator
{
  ascendingCopy = ascending;
  comparatorCopy = comparator;
  v9 = [[self alloc] initWithKey:key ascending:ascendingCopy comparator:comparatorCopy];

  return v9;
}

- (XBApplicationSnapshotSortDescriptor)initWithKey:(unint64_t)key ascending:(BOOL)ascending comparator:(id)comparator
{
  comparatorCopy = comparator;
  v14.receiver = self;
  v14.super_class = XBApplicationSnapshotSortDescriptor;
  v9 = [(XBApplicationSnapshotSortDescriptor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_key = key;
    v9->_ascending = ascending;
    v11 = [comparatorCopy copy];
    comparator = v10->_comparator;
    v10->_comparator = v11;
  }

  return v10;
}

+ (id)_propertyKeyForSnapshotKey:(unint64_t)key overriddenForNil:(BOOL *)nil
{
  result = @"referenceSize";
  if (key > 7)
  {
    if (key > 10)
    {
      v5 = @"userInterfaceStyle";
      v6 = @"customSafeAreaInsets";
      if (key != 13)
      {
        v6 = @"referenceSize";
      }

      if (key != 12)
      {
        v5 = v6;
      }

      if (key == 11)
      {
        return @"hasProtectedContent";
      }

      else
      {
        return v5;
      }
    }

    else if (key == 8)
    {
      if (nil)
      {
        *nil = 1;
      }

      return @"_sortableStatusBarSettings";
    }

    else if (key == 9)
    {
      if (nil)
      {
        *nil = 1;
      }

      return @"_sortableRequiredOSVersion";
    }

    else
    {
      return @"creationDate";
    }
  }

  else if (key > 3)
  {
    switch(key)
    {
      case 4uLL:
        if (nil)
        {
          *nil = 0;
        }

        return @"_interfaceOrientationMask";
      case 6uLL:
        return @"imageScale";
      case 7uLL:
        if (nil)
        {
          *nil = 0;
        }

        return @"_contentTypeMask";
    }
  }

  else
  {
    switch(key)
    {
      case 1uLL:
        if (nil)
        {
          *nil = 1;
        }

        return @"_sortableName";
      case 2uLL:
        if (nil)
        {
          *nil = 1;
        }

        return @"_sortableScheme";
      case 3uLL:
        if (nil)
        {
          *nil = 1;
        }

        return @"_sortableLaunchInterfaceIdentifier";
    }
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(XBApplicationSnapshotSortDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(XBApplicationSnapshotSortDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(XBApplicationSnapshotSortDescriptor *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__XBApplicationSnapshotSortDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279CF9508;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __77__XBApplicationSnapshotSortDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _stringForKey:*(*(a1 + 40) + 8)];
  v4 = [v2 appendObject:v3 withName:@"key"];

  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 16) withName:@"ascending"];
}

- (id)_stringForKey:(unint64_t)key
{
  if (key - 2 > 0xB)
  {
    return @"XBApplicationSnapshotNameKey";
  }

  else
  {
    return off_279CF9E00[key - 2];
  }
}

@end