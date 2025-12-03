@interface _MapUpdate
+ (id)itemDeleteItemAtIndexPath:(id)path index:(int64_t)index;
+ (id)itemDeleteSection:(int64_t)section deleteRange:(_NSRange)range;
+ (id)itemInsertItemAtIndexPath:(id)path index:(int64_t)index;
+ (id)itemInsertSection:(int64_t)section insertRange:(_NSRange)range;
+ (id)itemMoveFromIndexIndexPath:(id)path toIndexPath:(id)indexPath fromIndex:(int64_t)index toIndex:(int64_t)toIndex;
+ (id)itemMoveSection:(int64_t)section toSection:(int64_t)toSection fromRange:(_NSRange)range toRange:(_NSRange)toRange;
- (_NSRange)deleteRange;
- (_NSRange)insertRange;
- (_NSRange)moveFromRange;
- (_NSRange)moveToRange;
- (id)description;
- (id)reverseUpdateItem;
@end

@implementation _MapUpdate

+ (id)itemInsertSection:(int64_t)section insertRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = objc_alloc_init(_MapUpdate);
  [(_MapUpdate *)v7 setIsInsert:1];
  [(_MapUpdate *)v7 setIsSectionUpdate:1];
  [(_MapUpdate *)v7 setSection:section];
  [(_MapUpdate *)v7 setInsertRange:location, length];

  return v7;
}

+ (id)itemInsertItemAtIndexPath:(id)path index:(int64_t)index
{
  pathCopy = path;
  v6 = objc_alloc_init(_MapUpdate);
  [(_MapUpdate *)v6 setIsInsert:1];
  [(_MapUpdate *)v6 setInsertRange:index, 1];
  [(_MapUpdate *)v6 setIndexPath:pathCopy];
  section = [pathCopy section];

  [(_MapUpdate *)v6 setSection:section];
  [(_MapUpdate *)v6 setIndex:index];

  return v6;
}

+ (id)itemDeleteSection:(int64_t)section deleteRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = objc_alloc_init(_MapUpdate);
  [(_MapUpdate *)v7 setIsDelete:1];
  [(_MapUpdate *)v7 setIsSectionUpdate:1];
  [(_MapUpdate *)v7 setSection:section];
  [(_MapUpdate *)v7 setDeleteRange:location, length];

  return v7;
}

+ (id)itemDeleteItemAtIndexPath:(id)path index:(int64_t)index
{
  pathCopy = path;
  v6 = objc_alloc_init(_MapUpdate);
  [(_MapUpdate *)v6 setIsDelete:1];
  [(_MapUpdate *)v6 setIndexPath:pathCopy];
  section = [pathCopy section];

  [(_MapUpdate *)v6 setSection:section];
  [(_MapUpdate *)v6 setIndex:index];
  [(_MapUpdate *)v6 setDeleteRange:index, 1];

  return v6;
}

+ (id)itemMoveSection:(int64_t)section toSection:(int64_t)toSection fromRange:(_NSRange)range toRange:(_NSRange)toRange
{
  length = toRange.length;
  location = toRange.location;
  v8 = range.length;
  v9 = range.location;
  v12 = objc_alloc_init(_MapUpdate);
  [(_MapUpdate *)v12 setIsMove:1];
  [(_MapUpdate *)v12 setIsSectionUpdate:1];
  [(_MapUpdate *)v12 setMoveFromSection:section];
  [(_MapUpdate *)v12 setMoveToSection:toSection];
  [(_MapUpdate *)v12 setMoveFromRange:v9, v8];
  [(_MapUpdate *)v12 setMoveToRange:location, length];

  return v12;
}

+ (id)itemMoveFromIndexIndexPath:(id)path toIndexPath:(id)indexPath fromIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  indexPathCopy = indexPath;
  pathCopy = path;
  v11 = objc_alloc_init(_MapUpdate);
  [(_MapUpdate *)v11 setIsMove:1];
  [(_MapUpdate *)v11 setMoveFromIndexPath:pathCopy];
  [(_MapUpdate *)v11 setMoveToIndexPath:indexPathCopy];
  [(_MapUpdate *)v11 setMoveFromRange:index, 1];
  [(_MapUpdate *)v11 setMoveToRange:toIndex, 1];
  section = [pathCopy section];

  [(_MapUpdate *)v11 setMoveFromSection:section];
  section2 = [indexPathCopy section];

  [(_MapUpdate *)v11 setMoveToSection:section2];

  return v11;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  if ([(_MapUpdate *)self isSectionUpdate])
  {
    [string appendString:@"S"];
  }

  if ([(_MapUpdate *)self isMove])
  {
    v4 = NSStringFromRange(self->_moveFromRange);
    v5 = NSStringFromRange(self->_moveToRange);
    [string appendFormat:@"M(%@->%@)", v4, v5];
  }

  else if ([(_MapUpdate *)self isDelete])
  {
    v4 = NSStringFromRange(self->_deleteRange);
    [string appendFormat:@"D(%@)", v4];
  }

  else
  {
    if (![(_MapUpdate *)self isInsert])
    {
      goto LABEL_10;
    }

    v4 = NSStringFromRange(self->_insertRange);
    [string appendFormat:@"I(%@)", v4];
  }

LABEL_10:

  return string;
}

- (id)reverseUpdateItem
{
  if ([(_MapUpdate *)self isDelete])
  {
    if ([(_MapUpdate *)self isSectionUpdate])
    {
      section = [(_MapUpdate *)self section];
      deleteRange = [(_MapUpdate *)self deleteRange];
      v6 = [_MapUpdate itemInsertSection:section insertRange:deleteRange, v5];
LABEL_11:
      v19 = v6;
      goto LABEL_16;
    }

    indexPath = [(_MapUpdate *)self indexPath];
    v11 = [_MapUpdate itemInsertItemAtIndexPath:indexPath index:[(_MapUpdate *)self index]];
LABEL_13:
    v19 = v11;
LABEL_14:

    goto LABEL_16;
  }

  if ([(_MapUpdate *)self isInsert])
  {
    if ([(_MapUpdate *)self isSectionUpdate])
    {
      section2 = [(_MapUpdate *)self section];
      insertRange = [(_MapUpdate *)self insertRange];
      v6 = [_MapUpdate itemDeleteSection:section2 deleteRange:insertRange, v9];
      goto LABEL_11;
    }

    indexPath = [(_MapUpdate *)self indexPath];
    v11 = [_MapUpdate itemDeleteItemAtIndexPath:indexPath index:[(_MapUpdate *)self index]];
    goto LABEL_13;
  }

  if ([(_MapUpdate *)self isMove])
  {
    if ([(_MapUpdate *)self isSectionUpdate])
    {
      moveToSection = [(_MapUpdate *)self moveToSection];
      moveFromSection = [(_MapUpdate *)self moveFromSection];
      moveToRange = [(_MapUpdate *)self moveToRange];
      v16 = v15;
      moveFromRange = [(_MapUpdate *)self moveFromRange];
      v6 = [_MapUpdate itemMoveSection:moveToSection toSection:moveFromSection fromRange:moveToRange toRange:v16, moveFromRange, v18];
      goto LABEL_11;
    }

    indexPath = [(_MapUpdate *)self moveToIndexPath];
    moveFromIndexPath = [(_MapUpdate *)self moveFromIndexPath];
    v19 = [_MapUpdate itemMoveFromIndexIndexPath:indexPath toIndexPath:moveFromIndexPath fromIndex:[(_MapUpdate *)self moveToRange] toIndex:[(_MapUpdate *)self moveFromRange]];

    goto LABEL_14;
  }

  v19 = 0;
LABEL_16:

  return v19;
}

- (_NSRange)insertRange
{
  length = self->_insertRange.length;
  location = self->_insertRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)deleteRange
{
  length = self->_deleteRange.length;
  location = self->_deleteRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)moveFromRange
{
  length = self->_moveFromRange.length;
  location = self->_moveFromRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)moveToRange
{
  length = self->_moveToRange.length;
  location = self->_moveToRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end