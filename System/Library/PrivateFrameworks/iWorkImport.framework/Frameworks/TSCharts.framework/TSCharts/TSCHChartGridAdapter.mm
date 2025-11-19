@interface TSCHChartGridAdapter
- (TSCHChartGridAdapter)initWithChartGrid:(id)a3 index:(unint64_t)a4;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation TSCHChartGridAdapter

- (TSCHChartGridAdapter)initWithChartGrid:(id)a3 index:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSCHChartGridAdapter;
  v8 = [(TSCHChartGridAdapter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_grid, a3);
    v9->_index = a4;
  }

  return v9;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v12 = objc_msgSend_count(self, a2, v5, v6, v7);
  var0 = a3->var0;
  v18 = v12 - a3->var0;
  if (v12 <= a3->var0)
  {
    return 0;
  }

  a3->var1 = a4;
  a3->var2 = &a3->var2;
  if (v18 < a5)
  {
    a5 = v18;
  }

  if (a5)
  {
    v19 = 0;
    do
    {
      a4[v19] = objc_msgSend_valueAtIndex_(self, v13, v14, v15, v16, v19 + a3->var0);
      ++v19;
    }

    while (a5 != v19);
    var0 = a3->var0;
  }

  a3->var0 = var0 + a5;
  return a5;
}

@end