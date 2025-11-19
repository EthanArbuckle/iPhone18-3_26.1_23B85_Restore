@interface _MapUpdate
+ (id)itemDeleteItemAtIndexPath:(id)a3 index:(int64_t)a4;
+ (id)itemDeleteSection:(int64_t)a3 deleteRange:(_NSRange)a4;
+ (id)itemInsertItemAtIndexPath:(id)a3 index:(int64_t)a4;
+ (id)itemInsertSection:(int64_t)a3 insertRange:(_NSRange)a4;
+ (id)itemMoveFromIndexIndexPath:(id)a3 toIndexPath:(id)a4 fromIndex:(int64_t)a5 toIndex:(int64_t)a6;
+ (id)itemMoveSection:(int64_t)a3 toSection:(int64_t)a4 fromRange:(_NSRange)a5 toRange:(_NSRange)a6;
- (_NSRange)deleteRange;
- (_NSRange)insertRange;
- (_NSRange)moveFromRange;
- (_NSRange)moveToRange;
- (id)description;
- (id)reverseUpdateItem;
@end

@implementation _MapUpdate

+ (id)itemInsertSection:(int64_t)a3 insertRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = objc_alloc_init(_MapUpdate);
  [(_MapUpdate *)v7 setIsInsert:1];
  [(_MapUpdate *)v7 setIsSectionUpdate:1];
  [(_MapUpdate *)v7 setSection:a3];
  [(_MapUpdate *)v7 setInsertRange:location, length];

  return v7;
}

+ (id)itemInsertItemAtIndexPath:(id)a3 index:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(_MapUpdate);
  [(_MapUpdate *)v6 setIsInsert:1];
  [(_MapUpdate *)v6 setInsertRange:a4, 1];
  [(_MapUpdate *)v6 setIndexPath:v5];
  v7 = [v5 section];

  [(_MapUpdate *)v6 setSection:v7];
  [(_MapUpdate *)v6 setIndex:a4];

  return v6;
}

+ (id)itemDeleteSection:(int64_t)a3 deleteRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = objc_alloc_init(_MapUpdate);
  [(_MapUpdate *)v7 setIsDelete:1];
  [(_MapUpdate *)v7 setIsSectionUpdate:1];
  [(_MapUpdate *)v7 setSection:a3];
  [(_MapUpdate *)v7 setDeleteRange:location, length];

  return v7;
}

+ (id)itemDeleteItemAtIndexPath:(id)a3 index:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(_MapUpdate);
  [(_MapUpdate *)v6 setIsDelete:1];
  [(_MapUpdate *)v6 setIndexPath:v5];
  v7 = [v5 section];

  [(_MapUpdate *)v6 setSection:v7];
  [(_MapUpdate *)v6 setIndex:a4];
  [(_MapUpdate *)v6 setDeleteRange:a4, 1];

  return v6;
}

+ (id)itemMoveSection:(int64_t)a3 toSection:(int64_t)a4 fromRange:(_NSRange)a5 toRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v8 = a5.length;
  v9 = a5.location;
  v12 = objc_alloc_init(_MapUpdate);
  [(_MapUpdate *)v12 setIsMove:1];
  [(_MapUpdate *)v12 setIsSectionUpdate:1];
  [(_MapUpdate *)v12 setMoveFromSection:a3];
  [(_MapUpdate *)v12 setMoveToSection:a4];
  [(_MapUpdate *)v12 setMoveFromRange:v9, v8];
  [(_MapUpdate *)v12 setMoveToRange:location, length];

  return v12;
}

+ (id)itemMoveFromIndexIndexPath:(id)a3 toIndexPath:(id)a4 fromIndex:(int64_t)a5 toIndex:(int64_t)a6
{
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(_MapUpdate);
  [(_MapUpdate *)v11 setIsMove:1];
  [(_MapUpdate *)v11 setMoveFromIndexPath:v10];
  [(_MapUpdate *)v11 setMoveToIndexPath:v9];
  [(_MapUpdate *)v11 setMoveFromRange:a5, 1];
  [(_MapUpdate *)v11 setMoveToRange:a6, 1];
  v12 = [v10 section];

  [(_MapUpdate *)v11 setMoveFromSection:v12];
  v13 = [v9 section];

  [(_MapUpdate *)v11 setMoveToSection:v13];

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  if ([(_MapUpdate *)self isSectionUpdate])
  {
    [v3 appendString:@"S"];
  }

  if ([(_MapUpdate *)self isMove])
  {
    v4 = NSStringFromRange(self->_moveFromRange);
    v5 = NSStringFromRange(self->_moveToRange);
    [v3 appendFormat:@"M(%@->%@)", v4, v5];
  }

  else if ([(_MapUpdate *)self isDelete])
  {
    v4 = NSStringFromRange(self->_deleteRange);
    [v3 appendFormat:@"D(%@)", v4];
  }

  else
  {
    if (![(_MapUpdate *)self isInsert])
    {
      goto LABEL_10;
    }

    v4 = NSStringFromRange(self->_insertRange);
    [v3 appendFormat:@"I(%@)", v4];
  }

LABEL_10:

  return v3;
}

- (id)reverseUpdateItem
{
  if ([(_MapUpdate *)self isDelete])
  {
    if ([(_MapUpdate *)self isSectionUpdate])
    {
      v3 = [(_MapUpdate *)self section];
      v4 = [(_MapUpdate *)self deleteRange];
      v6 = [_MapUpdate itemInsertSection:v3 insertRange:v4, v5];
LABEL_11:
      v19 = v6;
      goto LABEL_16;
    }

    v10 = [(_MapUpdate *)self indexPath];
    v11 = [_MapUpdate itemInsertItemAtIndexPath:v10 index:[(_MapUpdate *)self index]];
LABEL_13:
    v19 = v11;
LABEL_14:

    goto LABEL_16;
  }

  if ([(_MapUpdate *)self isInsert])
  {
    if ([(_MapUpdate *)self isSectionUpdate])
    {
      v7 = [(_MapUpdate *)self section];
      v8 = [(_MapUpdate *)self insertRange];
      v6 = [_MapUpdate itemDeleteSection:v7 deleteRange:v8, v9];
      goto LABEL_11;
    }

    v10 = [(_MapUpdate *)self indexPath];
    v11 = [_MapUpdate itemDeleteItemAtIndexPath:v10 index:[(_MapUpdate *)self index]];
    goto LABEL_13;
  }

  if ([(_MapUpdate *)self isMove])
  {
    if ([(_MapUpdate *)self isSectionUpdate])
    {
      v12 = [(_MapUpdate *)self moveToSection];
      v13 = [(_MapUpdate *)self moveFromSection];
      v14 = [(_MapUpdate *)self moveToRange];
      v16 = v15;
      v17 = [(_MapUpdate *)self moveFromRange];
      v6 = [_MapUpdate itemMoveSection:v12 toSection:v13 fromRange:v14 toRange:v16, v17, v18];
      goto LABEL_11;
    }

    v10 = [(_MapUpdate *)self moveToIndexPath];
    v21 = [(_MapUpdate *)self moveFromIndexPath];
    v19 = [_MapUpdate itemMoveFromIndexIndexPath:v10 toIndexPath:v21 fromIndex:[(_MapUpdate *)self moveToRange] toIndex:[(_MapUpdate *)self moveFromRange]];

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