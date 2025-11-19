@interface UICollectionViewUpdateItem
- (NSString)description;
- (UICollectionViewUpdateItem)initWithAction:(int64_t)a3 forIndexPath:(id)a4;
- (UICollectionViewUpdateItem)initWithInitialIndexPath:(id)a3 finalIndexPath:(id)a4 updateAction:(int64_t)a5;
- (UICollectionViewUpdateItem)revertedUpdate;
- (id).cxx_construct;
- (id)_newIndexPath;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compareIndexPaths:(id)a3;
- (int64_t)compareIndexPathsForMoves:(id)a3;
- (int64_t)inverseCompareIndexPaths:(id)a3;
- (uint64_t)_finalIndexPathEqualToUpdateItem:(uint64_t)a1;
- (uint64_t)_initialIndexPathEqualToUpdateItem:(uint64_t)a1;
- (uint64_t)isEqualToUpdate:(void *)a1;
- (uint64_t)isNOOP;
- (void)_indexPath;
- (void)_setNewIndexPath:(uint64_t)a1;
- (void)initWithOldIndexPath:(void *)a3 newIndexPath:;
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
  if (a1)
  {
    v2 = 8;
    if (!a1[10])
    {
      v2 = 9;
    }

    a1 = a1[v2];
    v1 = vars8;
  }

  return a1;
}

- (UICollectionViewUpdateItem)initWithInitialIndexPath:(id)a3 finalIndexPath:(id)a4 updateAction:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v21.receiver = self;
  v21.super_class = UICollectionViewUpdateItem;
  v11 = [(UICollectionViewUpdateItem *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_initialIndexPath, a3);
    if (v9)
    {
      v13 = [v9 indexAtPosition:0];
      v14 = [v9 indexAtPosition:1];
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v12->_initialIndexPair.section = v13;
    v12->_initialIndexPair.item = v14;
    objc_storeStrong(&v12->_finalIndexPath, a4);
    if (v10)
    {
      v15 = [v10 indexAtPosition:0];
      v16 = [v10 indexAtPosition:1];
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v12->_finalIndexPair.section = v15;
    v12->_finalIndexPair.item = v16;
    v12->_updateAction = a5;
    if (a5)
    {
      p_initialIndexPair = &v12->_initialIndexPair;
    }

    else
    {
      p_initialIndexPair = &v12->_finalIndexPair;
    }

    v12->_indexPairForAction = *p_initialIndexPair;
    v18 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v12->_identifier;
    v12->_identifier = v18;

    *&v12->_updateItemFlags &= ~1u;
  }

  return v12;
}

- (UICollectionViewUpdateItem)initWithAction:(int64_t)a3 forIndexPath:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!a3)
  {
    v9 = 0;
    v8 = v6;
    goto LABEL_5;
  }

  v8 = v6;
  v9 = v6;
  if (a3 == 1)
  {
    v8 = 0;
    v9 = v6;
LABEL_5:
  }

  v10 = [(UICollectionViewUpdateItem *)self initWithInitialIndexPath:v9 finalIndexPath:v8 updateAction:a3];

  return v10;
}

- (void)initWithOldIndexPath:(void *)a3 newIndexPath:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    a1 = [a1 initWithInitialIndexPath:v5 finalIndexPath:v6 updateAction:3];
  }

  return a1;
}

- (id)_newIndexPath
{
  if (a1)
  {
    a1 = a1[9];
    v1 = vars8;
  }

  return a1;
}

- (void)_setNewIndexPath:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = (a1 + 72);
    if (*(a1 + 72) != v4)
    {
      v12 = v4;
      objc_storeStrong((a1 + 72), a2);
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

      *(a1 + 24) = v6;
      *(a1 + 32) = v7;
      v4 = v8;
      if (!*(a1 + 80))
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

        *(a1 + 40) = v10;
        *(a1 + 48) = v11;
        v4 = v12;
      }
    }
  }
}

- (NSString)description
{
  if (self && self->_indexPairForAction.item == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [MEMORY[0x1E696AD60] stringWithString:@"SEC:"];
    v4 = 1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AD60] string];
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

      v6 = v8;
      if (v4)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_initialIndexPair.section];
        [v3 appendFormat:@"%@(%@)", v6, v7];
      }

      else
      {
        v7 = [(NSIndexPath *)self->_initialIndexPath _ui_shortDescription];
        [v3 appendFormat:@"%@%@", v6, v7];
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
        v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_initialIndexPair.section];
        v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_finalIndexPair.section];
        [v3 appendFormat:@"MOV(%@)->(%@)", v6, v7];
      }

      else
      {
        v6 = [(NSIndexPath *)self->_initialIndexPath _ui_shortDescription];
        v7 = [(NSIndexPath *)self->_finalIndexPath _ui_shortDescription];
        [v3 appendFormat:@"MOV%@->%@", v6, v7];
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
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_initialIndexPair.section];
      [v3 appendFormat:@"DEL(%@)", v6];
    }

    else
    {
      v6 = [(NSIndexPath *)self->_initialIndexPath _ui_shortDescription];
      [v3 appendFormat:@"DEL%@", v6];
    }
  }

  else if (v4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_finalIndexPair.section];
    [v3 appendFormat:@"INS(%@)", v6];
  }

  else
  {
    v6 = [(NSIndexPath *)self->_finalIndexPath _ui_shortDescription];
    [v3 appendFormat:@"INS%@", v6];
  }

LABEL_27:

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:self->_initialIndexPath finalIndexPath:self->_finalIndexPath updateAction:self->_updateAction];
  [(UIBackgroundConfiguration *)v4 _setStrokeColor:?];
  if (v4)
  {
    *&v4->_updateItemFlags = *&v4->_updateItemFlags & 0xFE | *&self->_updateItemFlags & 1;
  }

  return v4;
}

- (int64_t)compareIndexPaths:(id)a3
{
  v4 = a3;
  section = self->_indexPairForAction.section;
  if (*&self->_indexPairForAction == __PAIR128__(0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 0;
  }

  else
  {
    v7 = v4[5];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL && v4[6] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 1;
    }

    else if (section == v7)
    {
      item = self->_indexPairForAction.item;
      v9 = v4[6];
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

- (int64_t)inverseCompareIndexPaths:(id)a3
{
  v4 = a3;
  section = self->_indexPairForAction.section;
  if (*&self->_indexPairForAction == __PAIR128__(0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 1;
  }

  else
  {
    v7 = v4[5];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL && v4[6] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else if (v7 == section)
    {
      v8 = v4[6];
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

- (int64_t)compareIndexPathsForMoves:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (v5)
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
    if ((v8 & 1) == 0 && v5[10] == 3)
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
    if ((v8 & 1) == 0 && v5[10] == 3)
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
  if (!v5)
  {
    v10 = 0;
    if (self->_indexPairForAction.item != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10 = v5[6] == 0x7FFFFFFFFFFFFFFFLL;
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
    v11 = [(UICollectionViewUpdateItem *)self compareIndexPaths:v5];
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
  if (a1)
  {
    v2 = a1;
    updateAction = a1->_updateAction;
    if (updateAction)
    {
      if (updateAction != 1)
      {
        if (updateAction == 3)
        {
          a1 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:a1->_finalIndexPath finalIndexPath:a1->_initialIndexPath updateAction:3];
        }

        else
        {
          a1 = 0;
        }

        goto LABEL_14;
      }

      v4 = [UICollectionViewUpdateItem alloc];
      v5 = 64;
      if (!v2->_updateAction)
      {
        v5 = 72;
      }

      v6 = *(&v2->super.isa + v5);
      v7 = 0;
    }

    else
    {
      v4 = [UICollectionViewUpdateItem alloc];
      v8 = 64;
      if (!v2->_updateAction)
      {
        v8 = 72;
      }

      v6 = *(&v2->super.isa + v8);
      v7 = 1;
    }

    a1 = [(UICollectionViewUpdateItem *)v4 initWithAction:v7 forIndexPath:v6];
LABEL_14:
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)isEqualToUpdate:(void *)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    if (a1[8])
    {
      if (a1[2] != v4[2])
      {
        v7 = 0;
        goto LABEL_12;
      }

      v6 = a1[1] == v4[1];
    }

    else
    {
      v6 = v4[8] == 0;
    }

    v7 = v6;
LABEL_12:
    if (a1[9])
    {
      if (a1[4] != v4[4])
      {
        v9 = 0;
        if (v7)
        {
LABEL_20:
          if (a1[10] == v4[10])
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

      v8 = a1[3] == v4[3];
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

- (uint64_t)_initialIndexPathEqualToUpdateItem:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = *(a1 + 16) == v3[2] && *(a1 + 8) == v3[1];
  }

  return a1;
}

- (uint64_t)_finalIndexPathEqualToUpdateItem:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = *(a1 + 32) == v3[4] && *(a1 + 24) == v3[3];
  }

  return a1;
}

@end