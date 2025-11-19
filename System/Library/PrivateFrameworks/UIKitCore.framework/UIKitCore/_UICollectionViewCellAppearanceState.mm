@interface _UICollectionViewCellAppearanceState
- (_UICollectionViewCellAppearanceState)init;
- (id)description;
@end

@implementation _UICollectionViewCellAppearanceState

- (_UICollectionViewCellAppearanceState)init
{
  v3.receiver = self;
  v3.super_class = _UICollectionViewCellAppearanceState;
  result = [(_UICollectionViewCellAppearanceState *)&v3 init];
  if (result)
  {
    result->_dragState = 0;
    result->_prefersGhostedDraggedAppearance = 1;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UICollectionViewCellAppearanceState *)self dragState];
  if (v6 > 8)
  {
    v7 = @"<unknown>";
  }

  else
  {
    v7 = off_1E7100408[v6];
  }

  if (!self)
  {
LABEL_12:
    v9 = @"normal";
    goto LABEL_14;
  }

  dragState = self->_dragState;
  if (dragState != 1)
  {
    if (dragState == 6)
    {
      if (self->_prefersGhostedDraggedAppearance)
      {
LABEL_11:
        v9 = @"ghosted";
        goto LABEL_14;
      }
    }

    else if (dragState == 3)
    {
      if (!self->_prefersGhostedDraggedAppearance)
      {
        v9 = @"hidden";
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v9 = @"lifting";
LABEL_14:
  v10 = [v3 stringWithFormat:@"<%@:%p - dragState = %@ appearance = %@>", v5, self, v7, v9];;

  return v10;
}

@end