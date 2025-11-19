@interface _UICollectionViewItemKey
+ (_UICollectionViewItemKey)collectionItemKeyForCellWithIndexPath:(uint64_t)a1;
+ (_UICollectionViewItemKey)collectionItemKeyForDecorationViewOfKind:(void *)a3 andIndexPath:;
+ (_UICollectionViewItemKey)collectionItemKeyForSupplementaryViewOfKind:(void *)a3 andIndexPath:;
+ (id)collectionItemKeyForLayoutAttributes:(uint64_t)a1;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initWithType:(void *)a3 indexPath:(void *)a4 identifier:(char)a5 clone:;
- (unsigned)copyAsClone:(unsigned __int8 *)result;
@end

@implementation _UICollectionViewItemKey

+ (_UICollectionViewItemKey)collectionItemKeyForCellWithIndexPath:(uint64_t)a1
{
  objc_opt_self();
  v3 = [_UICollectionViewItemKey alloc];
  if (v3)
  {
    v3 = [(_UICollectionViewItemKey *)v3 initWithType:a2 indexPath:@"_Cell_" identifier:0 clone:?];
  }

  return v3;
}

+ (_UICollectionViewItemKey)collectionItemKeyForSupplementaryViewOfKind:(void *)a3 andIndexPath:
{
  objc_opt_self();
  v5 = [_UICollectionViewItemKey alloc];
  if (v5)
  {
    v5 = [(_UICollectionViewItemKey *)v5 initWithType:a3 indexPath:a2 identifier:0 clone:?];
  }

  return v5;
}

+ (_UICollectionViewItemKey)collectionItemKeyForDecorationViewOfKind:(void *)a3 andIndexPath:
{
  objc_opt_self();
  v5 = [_UICollectionViewItemKey alloc];
  if (v5)
  {
    v5 = [(_UICollectionViewItemKey *)v5 initWithType:a3 indexPath:a2 identifier:0 clone:?];
  }

  return v5;
}

+ (id)collectionItemKeyForLayoutAttributes:(uint64_t)a1
{
  objc_opt_self();
  if (!a2)
  {
    v4 = 2;
LABEL_6:
    v5 = [(_UILabelConfiguration *)a2 _content];
    goto LABEL_8;
  }

  v3 = *(a2 + 288);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) != 0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_6;
  }

  v4 = 0;
  v5 = @"_Cell_";
LABEL_8:
  v6 = [_UICollectionViewItemKey alloc];
  v7 = [a2 indexPath];
  if (a2)
  {
    v8 = (*(a2 + 288) >> 3) & 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = [(_UICollectionViewItemKey *)v6 initWithType:v4 indexPath:v7 identifier:v5 clone:v8];

  return v9;
}

- (id)initWithType:(void *)a3 indexPath:(void *)a4 identifier:(char)a5 clone:
{
  if (!a1)
  {
    return 0;
  }

  v12.receiver = a1;
  v12.super_class = _UICollectionViewItemKey;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  v10 = v9;
  if (v9)
  {
    v9[4] = a2;
    objc_storeStrong(v9 + 1, a3);
    objc_storeStrong(v10 + 2, a4);
    *(v10 + 24) = a5;
  }

  return v10;
}

- (id)description
{
  if (!self)
  {
LABEL_5:
    v4 = MEMORY[0x1E696AEC0];
    v26.receiver = self;
    v26.super_class = _UICollectionViewItemKey;
    v5 = [(_UICollectionViewItemKey *)&v26 description];
    if (self)
    {
      indexPath = self->_indexPath;
    }

    else
    {
      indexPath = 0;
    }

    v7 = indexPath;
    v8 = [(NSIndexPath *)v7 _ui_shortDescription];
    isClone = self->_isClone;

    v10 = &stru_1EFB14550;
    if (isClone)
    {
      v10 = @" (C)";
    }

    v11 = [v4 stringWithFormat:@"%@ Type = C IndexPath = %@%@", v5, v8, v10];
    goto LABEL_19;
  }

  type = self->_type;
  switch(type)
  {
    case 2uLL:
      v18 = MEMORY[0x1E696AEC0];
      v24.receiver = self;
      v24.super_class = _UICollectionViewItemKey;
      v5 = [(_UICollectionViewItemKey *)&v24 description];
      identifier = self->_identifier;
      v14 = self->_indexPath;
      v8 = identifier;
      v20 = [(NSIndexPath *)v14 _ui_shortDescription];
      v16 = v20;
      if (self->_isClone)
      {
        v21 = @" (C)";
      }

      else
      {
        v21 = &stru_1EFB14550;
      }

      [v18 stringWithFormat:@"%@ Type = DV ReuseID = %@ IndexPath = %@%@", v5, v8, v20, v21];
      goto LABEL_18;
    case 1uLL:
      v12 = MEMORY[0x1E696AEC0];
      v25.receiver = self;
      v25.super_class = _UICollectionViewItemKey;
      v5 = [(_UICollectionViewItemKey *)&v25 description];
      v13 = self->_identifier;
      v14 = self->_indexPath;
      v8 = v13;
      v15 = [(NSIndexPath *)v14 _ui_shortDescription];
      v16 = v15;
      if (self->_isClone)
      {
        v17 = @" (C)";
      }

      else
      {
        v17 = &stru_1EFB14550;
      }

      [v12 stringWithFormat:@"%@ Type = SV Kind = %@ IndexPath = %@%@", v5, v8, v15, v17];
      v11 = LABEL_18:;

LABEL_19:
      goto LABEL_21;
    case 0uLL:
      goto LABEL_5;
  }

  v23.receiver = self;
  v23.super_class = _UICollectionViewItemKey;
  v11 = [(_UICollectionViewItemKey *)&v23 description];
LABEL_21:

  return v11;
}

- (unsigned)copyAsClone:(unsigned __int8 *)result
{
  if (result)
  {
    v2 = a2;
    if (result[24] == a2)
    {

      return result;
    }

    else
    {
      v8 = result;
      v3 = [_UICollectionViewItemKey alloc];
      v4 = *(v8 + 4);
      v5 = *(v8 + 2);
      v6 = *(v8 + 1);
      v7 = [(_UICollectionViewItemKey *)v3 initWithType:v4 indexPath:v6 identifier:v5 clone:v2];

      return v7;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->_type == v4[4] && [(NSString *)self->_identifier isEqualToString:v4[2]]&& [(NSIndexPath *)self->_indexPath isEqual:v4[1]]&& self->_isClone == *(v4 + 24);

  return v6;
}

@end