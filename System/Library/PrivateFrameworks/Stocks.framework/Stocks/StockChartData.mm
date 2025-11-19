@interface StockChartData
- ($87A9BE3275E22128A73FF46D0B92144E)allocateStockValuesWithCount:(unsigned int)a3;
- (Stock)stock;
- (StockChartData)initWithStock:(id)a3 interval:(int64_t)a4;
- (id)description;
- (int64_t)labelPlacementForDisplayMode:(id)a3;
- (void)dealloc;
- (void)setLabelPlacement:(int64_t)a3 forDisplayMode:(id)a4;
@end

@implementation StockChartData

- (StockChartData)initWithStock:(id)a3 interval:(int64_t)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = StockChartData;
  v7 = [(StockChartData *)&v18 init];
  v8 = v7;
  if (v7)
  {
    [(StockChartData *)v7 setStock:v6];
    v8->_chartInterval = a4;
    v9 = objc_opt_new();
    imageSetCache = v8->_imageSetCache;
    v8->_imageSetCache = v9;

    v11 = objc_opt_new();
    yAxisLabelInfoCache = v8->_yAxisLabelInfoCache;
    v8->_yAxisLabelInfoCache = v11;

    v13 = objc_opt_new();
    xAxisLabelInfoCache = v8->_xAxisLabelInfoCache;
    v8->_xAxisLabelInfoCache = v13;

    v15 = objc_opt_new();
    labelPlacementCache = v8->_labelPlacementCache;
    v8->_labelPlacementCache = v15;
  }

  return v8;
}

- ($87A9BE3275E22128A73FF46D0B92144E)allocateStockValuesWithCount:(unsigned int)a3
{
  result = malloc_type_calloc(0x18uLL, a3, 0x1000040504FFAC1uLL);
  self->_stockValues = result;
  self->_stockValueCount = a3;
  return result;
}

- (int64_t)labelPlacementForDisplayMode:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_labelPlacementCache objectForKey:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setLabelPlacement:(int64_t)a3 forDisplayMode:(id)a4
{
  labelPlacementCache = self->_labelPlacementCache;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(NSMutableDictionary *)labelPlacementCache setObject:v8 forKey:v7];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(StockChartData *)self stock];
  v5 = [v4 symbol];
  v6 = [ChartUpdater _rangeStringForInterval:self->_chartInterval];
  v7 = [v3 stringWithFormat:@"<StockChartData: %p, symbol = %@, interval = %@", self, v5, v6];

  return v7;
}

- (void)dealloc
{
  free(self->_stockValues);
  v3.receiver = self;
  v3.super_class = StockChartData;
  [(StockChartData *)&v3 dealloc];
}

- (Stock)stock
{
  WeakRetained = objc_loadWeakRetained(&self->_stock);

  return WeakRetained;
}

@end