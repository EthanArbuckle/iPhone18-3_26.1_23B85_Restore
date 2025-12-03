@interface UIUpdateItem
- (UICollectionViewUpdateItem)collectionViewUpdateItem;
- (id)description;
- (id)initWithAction:(void *)action forIndexPath:(void *)path animation:;
- (int64_t)compareIndexPaths:(id)paths;
- (int64_t)compareIndexPathsForMoves:(id)moves;
- (int64_t)inverseCompareIndexPaths:(id)paths;
@end

@implementation UIUpdateItem

- (id)initWithAction:(void *)action forIndexPath:(void *)path animation:
{
  actionCopy = action;
  v9 = actionCopy;
  if (self)
  {
    _UIAssertValidUpdateIndexPath(actionCopy);
    v14.receiver = self;
    v14.super_class = UIUpdateItem;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    self = v10;
    if (v10)
    {
      *(v10 + 5) = a2;
      objc_storeStrong(v10 + 3, action);
      self[4] = path;
      v11 = [v9 row];
      v12 = self[2] & 0xFE;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        ++v12;
      }

      *(self + 16) = v12;
    }
  }

  return self;
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
    string = [MEMORY[0x1E696AD60] stringWithString:@"SEC:"];
    v4 = 1;
  }

  else
  {
    string = [MEMORY[0x1E696AD60] string];
    v4 = 0;
  }

  action = self->_action;
  if (action > 1)
  {
    if (action == 2)
    {
      if (v4)
      {
        _ui_shortDescription = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSIndexPath section](self->_indexPath, "section")}];
        [string appendFormat:@"%@(%@)", @"REL", _ui_shortDescription];
      }

      else
      {
        _ui_shortDescription = [(NSIndexPath *)self->_indexPath _ui_shortDescription];
        [string appendFormat:@"%@%@", @"REL", _ui_shortDescription];
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
        _ui_shortDescription = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSIndexPath section](self->_indexPath, "section")}];
        _moveDestinationDescription = [(UIUpdateItem *)self _moveDestinationDescription];
        [string appendFormat:@"MOV(%@)%@", _ui_shortDescription, _moveDestinationDescription];
      }

      else
      {
        _ui_shortDescription = [(NSIndexPath *)self->_indexPath _ui_shortDescription];
        _moveDestinationDescription = [(UIUpdateItem *)self _moveDestinationDescription];
        [string appendFormat:@"MOV%@%@", _ui_shortDescription, _moveDestinationDescription];
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
      _ui_shortDescription = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSIndexPath section](self->_indexPath, "section")}];
      [string appendFormat:@"DEL(%@)", _ui_shortDescription, v9];
    }

    else
    {
      _ui_shortDescription = [(NSIndexPath *)self->_indexPath _ui_shortDescription];
      [string appendFormat:@"DEL%@", _ui_shortDescription, v9];
    }
  }

  else if (v4)
  {
    _ui_shortDescription = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSIndexPath section](self->_indexPath, "section")}];
    [string appendFormat:@"INS(%@)", _ui_shortDescription, v9];
  }

  else
  {
    _ui_shortDescription = [(NSIndexPath *)self->_indexPath _ui_shortDescription];
    [string appendFormat:@"INS%@", _ui_shortDescription, v9];
  }

LABEL_24:

  return string;
}

- (int64_t)compareIndexPaths:(id)paths
{
  indexPath = self->_indexPath;
  if (paths)
  {
    paths = *(paths + 3);
  }

  return [(NSIndexPath *)indexPath compare:paths];
}

- (int64_t)inverseCompareIndexPaths:(id)paths
{
  if (paths)
  {
    v3 = *(paths + 3);
  }

  else
  {
    v3 = 0;
  }

  return [v3 compare:self->_indexPath];
}

- (int64_t)compareIndexPathsForMoves:(id)moves
{
  v18 = *MEMORY[0x1E69E9840];
  movesCopy = moves;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (movesCopy)
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
    if ((v8 & 1) == 0 && movesCopy[5] == 3)
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

  if ((v8 & 1) == 0 && movesCopy[5] == 3)
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
  if (!movesCopy)
  {
    v10 = 0;
    if ((*&self->_updateItemFlags & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10 = movesCopy[4] & 1;
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
    v11 = [(UIUpdateItem *)self compareIndexPaths:movesCopy];
  }

  else
  {
    v11 = 1;
  }

LABEL_23:

  return v11;
}

@end