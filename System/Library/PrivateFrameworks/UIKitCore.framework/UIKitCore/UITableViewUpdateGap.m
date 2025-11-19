@interface UITableViewUpdateGap
- (id)description;
- (id)updateItems;
- (uint64_t)initWithUpdateItem:(void *)a1;
- (void)addUpdateItem:(uint64_t)a1;
@end

@implementation UITableViewUpdateGap

- (uint64_t)initWithUpdateItem:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = UITableViewUpdateGap;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(v3 + 4, a2);
    objc_storeStrong((v4 + 40), a2);
    [(UITableViewUpdateGap *)v4 addUpdateItem:a2];
  }

  return v4;
}

- (void)addUpdateItem:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_8;
  }

  if (*(a2 + 32) == 100)
  {
    *(a1 + 24) |= 1u;
  }

  v4 = *(a2 + 20);
  if (!v4)
  {
LABEL_8:
    v5 = *(a1 + 16);
    if (!v5)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a2, 0}];
      v7 = *(a1 + 16);
      *(a1 + 16) = v9;
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (v4 == 1)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a2, 0}];
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
LABEL_17:

      return;
    }

LABEL_9:

    [v5 addObject:a2];
    return;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v10 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v12 = a2;
      _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Only delete or insert update items can be added to a UITableViewUpdateGap: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &addUpdateItem____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = a2;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Only delete or insert update items can be added to a UITableViewUpdateGap: %@", buf, 0xCu);
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = UITableViewUpdateGap;
  v4 = [(UITableViewUpdateGap *)&v11 description];
  firstUpdateItem = self->_firstUpdateItem;
  lastUpdateItem = self->_lastUpdateItem;
  if ([(NSMutableArray *)self->_deleteItems count])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(NSMutableArray *)self->_insertItems count])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"%@ first item: %@, last item: %@, deleteBased: %@, hasInserts: %@", v4, firstUpdateItem, lastUpdateItem, v7, v8];

  return v9;
}

- (id)updateItems
{
  if (a1)
  {
    if (a2)
    {
      v2 = [a1 arrayByAddingObjectsFromArray:a2];
    }

    else
    {
      v2 = a1;
    }
  }

  else if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

@end