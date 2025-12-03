@interface REDiffOperation
+ (id)deleteWithItem:(id)item atIndex:(int64_t)index;
+ (id)insertWithItem:(id)item atIndex:(int64_t)index;
+ (id)moveWithItem:(id)item fromIndex:(int64_t)index toIndex:(int64_t)toIndex;
+ (id)reloadWithItem:(id)item atIndex:(int64_t)index;
- (REDiffOperation)initWithType:(unint64_t)type item:(id)item toIndex:(int64_t)index fromIndex:(int64_t)fromIndex;
- (id)description;
@end

@implementation REDiffOperation

- (REDiffOperation)initWithType:(unint64_t)type item:(id)item toIndex:(int64_t)index fromIndex:(int64_t)fromIndex
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = REDiffOperation;
  v12 = [(REDiffOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = type;
    objc_storeStrong(&v12->_item, item);
    v13->_toIndex = index;
    v13->_fromIndex = fromIndex;
  }

  return v13;
}

+ (id)reloadWithItem:(id)item atIndex:(int64_t)index
{
  itemCopy = item;
  v7 = [[self alloc] initWithType:0 item:itemCopy toIndex:index fromIndex:0x7FFFFFFFFFFFFFFFLL];

  return v7;
}

+ (id)insertWithItem:(id)item atIndex:(int64_t)index
{
  itemCopy = item;
  v7 = [[self alloc] initWithType:1 item:itemCopy toIndex:index fromIndex:0x7FFFFFFFFFFFFFFFLL];

  return v7;
}

+ (id)deleteWithItem:(id)item atIndex:(int64_t)index
{
  itemCopy = item;
  v7 = [[self alloc] initWithType:2 item:itemCopy toIndex:0x7FFFFFFFFFFFFFFFLL fromIndex:index];

  return v7;
}

+ (id)moveWithItem:(id)item fromIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  itemCopy = item;
  v9 = [[self alloc] initWithType:3 item:itemCopy toIndex:toIndex fromIndex:index];

  return v9;
}

- (id)description
{
  type = self->_type;
  v4 = &stru_283B97458;
  if (type > 1)
  {
    if (type == 2)
    {
      v9 = MEMORY[0x277CCACA8];
      item = [(REDiffOperation *)self item];
      [v9 stringWithFormat:@" Delete %@ (%ld)", item, -[REDiffOperation fromIndex](self, "fromIndex"), v13];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      v7 = MEMORY[0x277CCACA8];
      item = [(REDiffOperation *)self item];
      [v7 stringWithFormat:@" Move %@ (%ld → %ld)", item, -[REDiffOperation toIndex](self, "toIndex"), -[REDiffOperation fromIndex](self, "fromIndex")];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_11;
    }

    v5 = MEMORY[0x277CCACA8];
    item = [(REDiffOperation *)self item];
    [v5 stringWithFormat:@" Insert %@ (%ld)", item, -[REDiffOperation toIndex](self, "toIndex"), v13];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    item = [(REDiffOperation *)self item];
    [v8 stringWithFormat:@" Reload %@ (%ld)", item, -[REDiffOperation toIndex](self, "toIndex"), v13];
  }
  v4 = ;

LABEL_11:
  v14.receiver = self;
  v14.super_class = REDiffOperation;
  v10 = [(REDiffOperation *)&v14 description];
  v11 = [v10 stringByAppendingString:v4];

  return v11;
}

@end