@interface UICollectionViewUpdateItem
- (NSString)description;
- (UICollectionViewUpdateItem)initWithAction:(int64_t)action forIndexPath:(id)path;
- (UICollectionViewUpdateItem)initWithInitialIndexPath:(id)path finalIndexPath:(id)indexPath updateAction:(int64_t)action;
- (UICollectionViewUpdateItem)revertedUpdate;
- (id).cxx_construct;
- (id)_newIndexPath;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compareIndexPaths:(id)paths;
- (int64_t)compareIndexPathsForMoves:(id)moves;
- (int64_t)inverseCompareIndexPaths:(id)paths;
- (uint64_t)_finalIndexPathEqualToUpdateItem:(uint64_t)item;
- (uint64_t)_initialIndexPathEqualToUpdateItem:(uint64_t)item;
- (uint64_t)isEqualToUpdate:(void *)update;
- (uint64_t)isNOOP;
- (void)_indexPath;
- (void)_setNewIndexPath:(uint64_t)path;
- (void)initWithOldIndexPath:(void *)path newIndexPath:;
@end

@implementation UICollectionViewUpdateItem

- (id).cxx_construct
{
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = vnegq_f64(v2);
  *(self + 8) = v3;
  *(self + 24) = v3;
  *(self + 40) = v3;
  return self;
}

- (void)_indexPath
{
  if (self)
  {
    v2 = 8;
    if (!self[10])
    {
      v2 = 9;
    }

    self = self[v2];
    v1 = vars8;
  }

  return self;
}

- (UICollectionViewUpdateItem)initWithInitialIndexPath:(id)path finalIndexPath:(id)indexPath updateAction:(int64_t)action
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v21.receiver = self;
  v21.super_class = UICollectionViewUpdateItem;
  v11 = [(UICollectionViewUpdateItem *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_initialIndexPath, path);
    if (pathCopy)
    {
      v13 = [pathCopy indexAtPosition:0];
      v14 = [pathCopy indexAtPosition:1];
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v12->_initialIndexPair.section = v13;
    v12->_initialIndexPair.item = v14;
    objc_storeStrong(&v12->_finalIndexPath, indexPath);
    if (indexPathCopy)
    {
      v15 = [indexPathCopy indexAtPosition:0];
      v16 = [indexPathCopy indexAtPosition:1];
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v12->_finalIndexPair.section = v15;
    v12->_finalIndexPair.item = v16;
    v12->_updateAction = action;
    if (action)
    {
      p_initialIndexPair = &v12->_initialIndexPair;
    }

    else
    {
      p_initialIndexPair = &v12->_finalIndexPair;
    }

    v12->_indexPairForAction = *p_initialIndexPair;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v12->_identifier;
    v12->_identifier = uUID;

    *&v12->_updateItemFlags &= ~1u;
  }

  return v12;
}

- (UICollectionViewUpdateItem)initWithAction:(int64_t)action forIndexPath:(id)path
{
  pathCopy = path;
  v7 = pathCopy;
  if (!action)
  {
    v9 = 0;
    v8 = pathCopy;
    goto LABEL_5;
  }

  v8 = pathCopy;
  v9 = pathCopy;
  if (action == 1)
  {
    v8 = 0;
    v9 = pathCopy;
LABEL_5:
  }

  v10 = [(UICollectionViewUpdateItem *)self initWithInitialIndexPath:v9 finalIndexPath:v8 updateAction:action];

  return v10;
}

- (void)initWithOldIndexPath:(void *)path newIndexPath:
{
  v5 = a2;
  pathCopy = path;
  if (self)
  {
    self = [self initWithInitialIndexPath:v5 finalIndexPath:pathCopy updateAction:3];
  }

  return self;
}

- (id)_newIndexPath
{
  if (self)
  {
    self = self[9];
    v1 = vars8;
  }

  return self;
}

- (void)_setNewIndexPath:(uint64_t)path
{
  v4 = a2;
  if (path)
  {
    v5 = (path + 72);
    if (*(path + 72) != v4)
    {
      v12 = v4;
      objc_storeStrong((path + 72), a2);
      if (v12)
      {
        v6 = [v12 indexAtPosition:0];
        v7 = [v12 indexAtPosition:1];
        v8 = v12;
      }

      else
      {
        v8 = 0;
        v7 = 0x7FFFFFFFFFFFFFFFLL;
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *(path + 24) = v6;
      *(path + 32) = v7;
      v4 = v8;
      if (!*(path + 80))
      {
        v9 = *v5;
        if (*v5)
        {
          v10 = [*v5 indexAtPosition:0];
          v11 = [v9 indexAtPosition:1];
        }

        else
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *(path + 40) = v10;
        *(path + 48) = v11;
        v4 = v12;
      }
    }
  }
}

- (NSString)description
{
  if (self && self->_indexPairForAction.item == 0x7FFFFFFFFFFFFFFFLL)
  {
    string = [MEMORY[0x1E696AD60] stringWithString:@"SEC:"];
    v4 = 1;
  }

  else
  {
    string = [MEMORY[0x1E696AD60] string];
    v4 = 0;
  }

  updateAction = self->_updateAction;
  if (updateAction > 1)
  {
    if (updateAction == 2)
    {
      if ((*&self->_updateItemFlags & 2) != 0)
      {
        v8 = @"REC";
      }

      else
      {
        v8 = @"REL";
      }

      _ui_shortDescription2 = v8;
      if (v4)
      {
        _ui_shortDescription = [MEMORY[0x1E696AD98] numberWithInteger:self->_initialIndexPair.section];
        [string appendFormat:@"%@(%@)", _ui_shortDescription2, _ui_shortDescription];
      }

      else
      {
        _ui_shortDescription = [(NSIndexPath *)self->_initialIndexPath _ui_shortDescription];
        [string appendFormat:@"%@%@", _ui_shortDescription2, _ui_shortDescription];
      }
    }

    else
    {
      if (updateAction != 3)
      {
        goto LABEL_27;
      }

      if (v4)
      {
        _ui_shortDescription2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_initialIndexPair.section];
        _ui_shortDescription = [MEMORY[0x1E696AD98] numberWithInteger:self->_finalIndexPair.section];
        [string appendFormat:@"MOV(%@)->(%@)", _ui_shortDescription2, _ui_shortDescription];
      }

      else
      {
        _ui_shortDescription2 = [(NSIndexPath *)self->_initialIndexPath _ui_shortDescription];
        _ui_shortDescription = [(NSIndexPath *)self->_finalIndexPath _ui_shortDescription];
        [string appendFormat:@"MOV%@->%@", _ui_shortDescription2, _ui_shortDescription];
      }
    }
  }

  else if (updateAction)
  {
    if (updateAction != 1)
    {
      goto LABEL_27;
    }

    if (v4)
    {
      _ui_shortDescription2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_initialIndexPair.section];
      [string appendFormat:@"DEL(%@)", _ui_shortDescription2];
    }

    else
    {
      _ui_shortDescription2 = [(NSIndexPath *)self->_initialIndexPath _ui_shortDescription];
      [string appendFormat:@"DEL%@", _ui_shortDescription2];
    }
  }

  else if (v4)
  {
    _ui_shortDescription2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_finalIndexPair.section];
    [string appendFormat:@"INS(%@)", _ui_shortDescription2];
  }

  else
  {
    _ui_shortDescription2 = [(NSIndexPath *)self->_finalIndexPath _ui_shortDescription];
    [string appendFormat:@"INS%@", _ui_shortDescription2];
  }

LABEL_27:

  return string;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:self->_initialIndexPath finalIndexPath:self->_finalIndexPath updateAction:self->_updateAction];
  [(UIBackgroundConfiguration *)v4 _setStrokeColor:?];
  if (v4)
  {
    *&v4->_updateItemFlags = *&v4->_updateItemFlags & 0xFE | *&self->_updateItemFlags & 1;
  }

  return v4;
}

- (int64_t)compareIndexPaths:(id)paths
{
  pathsCopy = paths;
  section = self->_indexPairForAction.section;
  if (*&self->_indexPairForAction == __PAIR128__(0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 0;
  }

  else
  {
    v7 = pathsCopy[5];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL && pathsCopy[6] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 1;
    }

    else if (section == v7)
    {
      item = self->_indexPairForAction.item;
      v9 = pathsCopy[6];
      v10 = item < v9;
      v11 = item > v9;
      if (v10)
      {
        v6 = -1;
      }

      else
      {
        v6 = v11;
      }
    }

    else if (section >= v7)
    {
      v6 = section > v7;
    }

    else
    {
      v6 = -1;
    }
  }

  return v6;
}

- (int64_t)inverseCompareIndexPaths:(id)paths
{
  pathsCopy = paths;
  section = self->_indexPairForAction.section;
  if (*&self->_indexPairForAction == __PAIR128__(0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 1;
  }

  else
  {
    v7 = pathsCopy[5];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL && pathsCopy[6] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else if (v7 == section)
    {
      v8 = pathsCopy[6];
      item = self->_indexPairForAction.item;
      v10 = v8 < item;
      v11 = v8 > item;
      if (v10)
      {
        v6 = -1;
      }

      else
      {
        v6 = v11;
      }
    }

    else if (v7 >= section)
    {
      v6 = v7 > section;
    }

    else
    {
      v6 = -1;
    }
  }

  return v6;
}

- (int64_t)compareIndexPathsForMoves:(id)moves
{
  v18 = *MEMORY[0x1E69E9840];
  movesCopy = moves;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (movesCopy)
  {
    v7 = self->_updateAction == 3;
  }

  else
  {
    v7 = 0;
  }

  v8 = !v7;
  if (has_internal_diagnostics)
  {
    if ((v8 & 1) == 0 && movesCopy[10] == 3)
    {
      goto LABEL_10;
    }

    v12 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v15 = NSStringFromSelector(a2);
      v16 = 138412290;
      v17 = v15;
      _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "%@ should only be used to compare move updates", &v16, 0xCu);
    }
  }

  else
  {
    if ((v8 & 1) == 0 && movesCopy[10] == 3)
    {
LABEL_10:
      v9 = self->_indexPairForAction.item == 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_11;
    }

    v12 = *(__UILogGetCategoryCachedImpl("Assert", &[UICollectionViewUpdateItem compareIndexPathsForMoves:]::__s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@ should only be used to compare move updates", &v16, 0xCu);
    }
  }

  v9 = self->_indexPairForAction.item == 0x7FFFFFFFFFFFFFFFLL;
  if (!movesCopy)
  {
    v10 = 0;
    if (self->_indexPairForAction.item != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10 = movesCopy[6] == 0x7FFFFFFFFFFFFFFFLL;
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (!v10)
  {
    v11 = -1;
    goto LABEL_21;
  }

LABEL_18:
  if (v9 || !v10)
  {
    v11 = [(UICollectionViewUpdateItem *)self compareIndexPaths:movesCopy];
  }

  else
  {
    v11 = 1;
  }

LABEL_21:

  return v11;
}

- (UICollectionViewUpdateItem)revertedUpdate
{
  if (self)
  {
    selfCopy = self;
    updateAction = self->_updateAction;
    if (updateAction)
    {
      if (updateAction != 1)
      {
        if (updateAction == 3)
        {
          self = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:self->_finalIndexPath finalIndexPath:self->_initialIndexPath updateAction:3];
        }

        else
        {
          self = 0;
        }

        goto LABEL_14;
      }

      v4 = [UICollectionViewUpdateItem alloc];
      v5 = 64;
      if (!selfCopy->_updateAction)
      {
        v5 = 72;
      }

      v6 = *(&selfCopy->super.isa + v5);
      v7 = 0;
    }

    else
    {
      v4 = [UICollectionViewUpdateItem alloc];
      v8 = 64;
      if (!selfCopy->_updateAction)
      {
        v8 = 72;
      }

      v6 = *(&selfCopy->super.isa + v8);
      v7 = 1;
    }

    self = [(UICollectionViewUpdateItem *)v4 initWithAction:v7 forIndexPath:v6];
LABEL_14:
    v1 = vars8;
  }

  return self;
}

- (uint64_t)isEqualToUpdate:(void *)update
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (update && v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    if (update[8])
    {
      if (update[2] != v4[2])
      {
        v7 = 0;
        goto LABEL_12;
      }

      v6 = update[1] == v4[1];
    }

    else
    {
      v6 = v4[8] == 0;
    }

    v7 = v6;
LABEL_12:
    if (update[9])
    {
      if (update[4] != v4[4])
      {
        v9 = 0;
        if (v7)
        {
LABEL_20:
          if (update[10] == v4[10])
          {
            v5 = v9;
          }

          else
          {
            v5 = 0;
          }

          goto LABEL_25;
        }

LABEL_24:
        v5 = 0;
        goto LABEL_25;
      }

      v8 = update[3] == v4[3];
    }

    else
    {
      v8 = v4[9] == 0;
    }

    v9 = v8;
    if (v7)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_25:

  return v5;
}

- (uint64_t)isNOOP
{
  if (result)
  {
    if (*(result + 80) == 3 && *(result + 16) == *(result + 32) && *(result + 8) == *(result + 24))
    {
      return 1;
    }

    else
    {
      return !*(result + 64) && *(result + 72) == 0;
    }
  }

  return result;
}

- (uint64_t)_initialIndexPathEqualToUpdateItem:(uint64_t)item
{
  v3 = a2;
  if (item)
  {
    item = *(item + 16) == v3[2] && *(item + 8) == v3[1];
  }

  return item;
}

- (uint64_t)_finalIndexPathEqualToUpdateItem:(uint64_t)item
{
  v3 = a2;
  if (item)
  {
    item = *(item + 32) == v3[4] && *(item + 24) == v3[3];
  }

  return item;
}

@end