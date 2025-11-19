@interface VUITitleSortDescriptor
+ (id)ascendingTitleSortComparatorWithKey:(id)a3;
+ (id)descendingTitleSortComparatorWithKey:(id)a3;
- (int64_t)compareObject:(id)a3 toObject:(id)a4;
@end

@implementation VUITitleSortDescriptor

- (int64_t)compareObject:(id)a3 toObject:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VUITitleSortDescriptor *)self ascending];
  v9 = objc_opt_class();
  v10 = [(VUITitleSortDescriptor *)self key];
  if (v8)
  {
    [v9 ascendingTitleSortComparatorWithKey:v10];
  }

  else
  {
    [v9 descendingTitleSortComparatorWithKey:v10];
  }
  v11 = ;

  v12 = (v11)[2](v11, v7, v6);
  return v12;
}

+ (id)ascendingTitleSortComparatorWithKey:(id)a3
{
  v3 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__VUITitleSortDescriptor_ascendingTitleSortComparatorWithKey___block_invoke;
  v8[3] = &unk_279E214F8;
  v9 = v3;
  v4 = v3;
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

+ (id)descendingTitleSortComparatorWithKey:(id)a3
{
  v3 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__VUITitleSortDescriptor_descendingTitleSortComparatorWithKey___block_invoke;
  v8[3] = &unk_279E214F8;
  v9 = v3;
  v4 = v3;
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