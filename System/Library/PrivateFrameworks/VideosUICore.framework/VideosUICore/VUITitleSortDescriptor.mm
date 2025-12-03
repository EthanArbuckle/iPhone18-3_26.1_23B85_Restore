@interface VUITitleSortDescriptor
+ (id)ascendingTitleSortComparatorWithKey:(id)key;
+ (id)descendingTitleSortComparatorWithKey:(id)key;
- (int64_t)compareObject:(id)object toObject:(id)toObject;
@end

@implementation VUITitleSortDescriptor

- (int64_t)compareObject:(id)object toObject:(id)toObject
{
  toObjectCopy = toObject;
  objectCopy = object;
  ascending = [(VUITitleSortDescriptor *)self ascending];
  v9 = objc_opt_class();
  v10 = [(VUITitleSortDescriptor *)self key];
  if (ascending)
  {
    [v9 ascendingTitleSortComparatorWithKey:v10];
  }

  else
  {
    [v9 descendingTitleSortComparatorWithKey:v10];
  }
  v11 = ;

  v12 = (v11)[2](v11, objectCopy, toObjectCopy);
  return v12;
}

+ (id)ascendingTitleSortComparatorWithKey:(id)key
{
  keyCopy = key;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__VUITitleSortDescriptor_ascendingTitleSortComparatorWithKey___block_invoke;
  v8[3] = &unk_279E214F8;
  v9 = keyCopy;
  v4 = keyCopy;
  v5 = MEMORY[0x2743B7C30](v8);
  v6 = MEMORY[0x2743B7C30]();

  return v6;
}

uint64_t __62__VUITitleSortDescriptor_ascendingTitleSortComparatorWithKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 valueForKey:v5];
  v8 = [v6 valueForKey:*(a1 + 32)];

  v9 = +[VUISortUtilities ascendingTitleSortComparator];
  v10 = (v9)[2](v9, v7, v8);

  return v10;
}

+ (id)descendingTitleSortComparatorWithKey:(id)key
{
  keyCopy = key;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__VUITitleSortDescriptor_descendingTitleSortComparatorWithKey___block_invoke;
  v8[3] = &unk_279E214F8;
  v9 = keyCopy;
  v4 = keyCopy;
  v5 = MEMORY[0x2743B7C30](v8);
  v6 = MEMORY[0x2743B7C30]();

  return v6;
}

uint64_t __63__VUITitleSortDescriptor_descendingTitleSortComparatorWithKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 valueForKey:v5];
  v8 = [v6 valueForKey:*(a1 + 32)];

  v9 = +[VUISortUtilities descendingTitleSortComparator];
  v10 = (v9)[2](v9, v7, v8);

  return v10;
}

@end