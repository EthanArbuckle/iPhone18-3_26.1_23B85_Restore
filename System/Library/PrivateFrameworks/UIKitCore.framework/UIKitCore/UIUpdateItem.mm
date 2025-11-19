@interface UIUpdateItem
- (UICollectionViewUpdateItem)collectionViewUpdateItem;
- (id)description;
- (id)initWithAction:(void *)a3 forIndexPath:(void *)a4 animation:;
- (int64_t)compareIndexPaths:(id)a3;
- (int64_t)compareIndexPathsForMoves:(id)a3;
- (int64_t)inverseCompareIndexPaths:(id)a3;
@end

@implementation UIUpdateItem

- (id)initWithAction:(void *)a3 forIndexPath:(void *)a4 animation:
{
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    _UIAssertValidUpdateIndexPath(v8);
    v14.receiver = a1;
    v14.super_class = UIUpdateItem;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v10;
    if (v10)
    {
      *(v10 + 5) = a2;
      objc_storeStrong(v10 + 3, a3);
      a1[4] = a4;
      v11 = [v9 row];
      v12 = a1[2] & 0xFE;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        ++v12;
      }

      *(a1 + 16) = v12;
    }
  }

  return a1;
}

- (UICollectionViewUpdateItem)collectionViewUpdateItem
{
  collectionViewUpdateItem = self->_collectionViewUpdateItem;
  if (!collectionViewUpdateItem)
  {
    action = self->_action;
    if (action >= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = action;
    }

    v6 = [UICollectionViewUpdateItem alloc];
    v7 = self->_indexPath;
    v8 = [(UICollectionViewUpdateItem *)v6 initWithAction:v5 forIndexPath:v7];
    v9 = self->_collectionViewUpdateItem;
    self->_collectionViewUpdateItem = v8;

    collectionViewUpdateItem = self->_collectionViewUpdateItem;
  }

  return collectionViewUpdateItem;
}

- (id)description
{
  if (self && (*&self->_updateItemFlags & 1) != 0)
  {
    v3 = [MEMORY[0x1E696AD60] stringWithString:@"SEC:"];
    v4 = 1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AD60] string];
    v4 = 0;
  }

  action = self->_action;
  if (action > 1)
  {
    if (action == 2)
    {
      if (v4)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSIndexPath section](self->_indexPath, "section")}];
        [v3 appendFormat:@"%@(%@)", @"REL", v6];
      }

      else
      {
        v6 = [(NSIndexPath *)self->_indexPath _ui_shortDescription];
        [v3 appendFormat:@"%@%@", @"REL", v6];
      }
    }

    else
    {
      if (action != 3)
      {
        goto LABEL_24;
      }

      if (v4)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSIndexPath section](self->_indexPath, "section")}];
        v7 = [(UIUpdateItem *)self _moveDestinationDescription];
        [v3 appendFormat:@"MOV(%@)%@", v6, v7];
      }

      else
      {
        v6 = [(NSIndexPath *)self->_indexPath _ui_shortDescription];
        v7 = [(UIUpdateItem *)self _moveDestinationDescription];
        [v3 appendFormat:@"MOV%@%@", v6, v7];
      }
    }
  }

  else if (action)
  {
    if (action != 1)
    {
      goto LABEL_24;
    }

    if (v4)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSIndexPath section](self->_indexPath, "section")}];
      [v3 appendFormat:@"DEL(%@)", v6, v9];
    }

    else
    {
      v6 = [(NSIndexPath *)self->_indexPath _ui_shortDescription];
      [v3 appendFormat:@"DEL%@", v6, v9];
    }
  }

  else if (v4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSIndexPath section](self->_indexPath, "section")}];
    [v3 appendFormat:@"INS(%@)", v6, v9];
  }

  else
  {
    v6 = [(NSIndexPath *)self->_indexPath _ui_shortDescription];
    [v3 appendFormat:@"INS%@", v6, v9];
  }

LABEL_24:

  return v3;
}

- (int64_t)compareIndexPaths:(id)a3
{
  indexPath = self->_indexPath;
  if (a3)
  {
    a3 = *(a3 + 3);
  }

  return [(NSIndexPath *)indexPath compare:a3];
}

- (int64_t)inverseCompareIndexPaths:(id)a3
{
  if (a3)
  {
    v3 = *(a3 + 3);
  }

  else
  {
    v3 = 0;
  }

  return [v3 compare:self->_indexPath];
}

- (int64_t)compareIndexPathsForMoves:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (v5)
  {
    v7 = self->_action == 3;
  }

  else
  {
    v7 = 0;
  }

  v8 = !v7;
  if (has_internal_diagnostics)
  {
    if ((v8 & 1) == 0 && v5[5] == 3)
    {
      goto LABEL_10;
    }

    v13 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v14 = NSStringFromSelector(a2);
    v16 = 138412290;
    v17 = v14;
    _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "%@ should only be used to compare move updates", &v16, 0xCu);
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  if ((v8 & 1) == 0 && v5[5] == 3)
  {
LABEL_10:
    v9 = *&self->_updateItemFlags & 1;
    goto LABEL_11;
  }

  v12 = *(__UILogGetCategoryCachedImpl("Assert", &compareIndexPathsForMoves____s_category) + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    v16 = 138412290;
    v17 = v14;
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%@ should only be used to compare move updates", &v16, 0xCu);
    goto LABEL_16;
  }

LABEL_18:
  v9 = *&self->_updateItemFlags & 1;
  if (!v5)
  {
    v10 = 0;
    if ((*&self->_updateItemFlags & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10 = v5[4] & 1;
  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (!v10)
  {
    v11 = -1;
    goto LABEL_23;
  }

LABEL_20:
  if (v9 & 1 | ((v10 & 1) == 0))
  {
    v11 = [(UIUpdateItem *)self compareIndexPaths:v5];
  }

  else
  {
    v11 = 1;
  }

LABEL_23:

  return v11;
}

@end