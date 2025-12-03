@interface TSCHChartGridAdapter
- (TSCHChartGridAdapter)initWithChartGrid:(id)grid index:(unint64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation TSCHChartGridAdapter

- (TSCHChartGridAdapter)initWithChartGrid:(id)grid index:(unint64_t)index
{
  gridCopy = grid;
  v11.receiver = self;
  v11.super_class = TSCHChartGridAdapter;
  v8 = [(TSCHChartGridAdapter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_grid, grid);
    v9->_index = index;
  }

  return v9;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v12 = objc_msgSend_count(self, a2, v5, v6, v7);
  var0 = state->var0;
  v18 = v12 - state->var0;
  if (v12 <= state->var0)
  {
    return 0;
  }

  state->var1 = objects;
  state->var2 = &state->var2;
  if (v18 < count)
  {
    count = v18;
  }

  if (count)
  {
    v19 = 0;
    do
    {
      objects[v19] = objc_msgSend_valueAtIndex_(self, v13, v14, v15, v16, v19 + state->var0);
      ++v19;
    }

    while (count != v19);
    var0 = state->var0;
  }

  state->var0 = var0 + count;
  return count;
}

@end