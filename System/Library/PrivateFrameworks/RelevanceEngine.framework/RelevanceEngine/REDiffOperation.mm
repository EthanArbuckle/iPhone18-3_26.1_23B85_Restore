@interface REDiffOperation
+ (id)deleteWithItem:(id)a3 atIndex:(int64_t)a4;
+ (id)insertWithItem:(id)a3 atIndex:(int64_t)a4;
+ (id)moveWithItem:(id)a3 fromIndex:(int64_t)a4 toIndex:(int64_t)a5;
+ (id)reloadWithItem:(id)a3 atIndex:(int64_t)a4;
- (REDiffOperation)initWithType:(unint64_t)a3 item:(id)a4 toIndex:(int64_t)a5 fromIndex:(int64_t)a6;
- (id)description;
@end

@implementation REDiffOperation

- (REDiffOperation)initWithType:(unint64_t)a3 item:(id)a4 toIndex:(int64_t)a5 fromIndex:(int64_t)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = REDiffOperation;
  v12 = [(REDiffOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = a3;
    objc_storeStrong(&v12->_item, a4);
    v13->_toIndex = a5;
    v13->_fromIndex = a6;
  }

  return v13;
}

+ (id)reloadWithItem:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithType:0 item:v6 toIndex:a4 fromIndex:0x7FFFFFFFFFFFFFFFLL];

  return v7;
}

+ (id)insertWithItem:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithType:1 item:v6 toIndex:a4 fromIndex:0x7FFFFFFFFFFFFFFFLL];

  return v7;
}

+ (id)deleteWithItem:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithType:2 item:v6 toIndex:0x7FFFFFFFFFFFFFFFLL fromIndex:a4];

  return v7;
}

+ (id)moveWithItem:(id)a3 fromIndex:(int64_t)a4 toIndex:(int64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithType:3 item:v8 toIndex:a5 fromIndex:a4];

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
      v6 = [(REDiffOperation *)self item];
      [v9 stringWithFormat:@" Delete %@ (%ld)", v6, -[REDiffOperation fromIndex](self, "fromIndex"), v13];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      v7 = MEMORY[0x277CCACA8];
      v6 = [(REDiffOperation *)self item];
      [v7 stringWithFormat:@" Move %@ (%ld → %ld)", v6, -[REDiffOperation toIndex](self, "toIndex"), -[REDiffOperation fromIndex](self, "fromIndex")];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_11;
    }

    v5 = MEMORY[0x277CCACA8];
    v6 = [(REDiffOperation *)self item];
    [v5 stringWithFormat:@" Insert %@ (%ld)", v6, -[REDiffOperation toIndex](self, "toIndex"), v13];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v6 = [(REDiffOperation *)self item];
    [v8 stringWithFormat:@" Reload %@ (%ld)", v6, -[REDiffOperation toIndex](self, "toIndex"), v13];
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