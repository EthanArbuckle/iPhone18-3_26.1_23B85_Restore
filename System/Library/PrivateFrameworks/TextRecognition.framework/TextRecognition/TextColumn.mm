@interface TextColumn
- (TextColumn)init;
- (TextColumn)initWithRows:(id)rows;
- (void)addRow:(id)row;
@end

@implementation TextColumn

- (TextColumn)init
{
  v6.receiver = self;
  v6.super_class = TextColumn;
  v2 = [(TextColumn *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    mutableRows = v2->_mutableRows;
    v2->_mutableRows = array;
  }

  return v2;
}

- (void)addRow:(id)row
{
  mutableRows = self->_mutableRows;
  if (mutableRows)
  {
    [(NSMutableArray *)mutableRows addObject:row];
  }
}

- (TextColumn)initWithRows:(id)rows
{
  rowsCopy = rows;
  v5 = objc_alloc_init(TextColumn);
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:rowsCopy];

  [(TextColumn *)v5 setMutableRows:v6];
  return v5;
}

uint64_t __38__TextColumn_sortRowsInAscendingOrder__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 score];
  v7 = v6;
  [v5 score];
  if (v7 <= v8)
  {
    [v4 score];
    v11 = v10;
    [v5 score];
    if (v11 >= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end