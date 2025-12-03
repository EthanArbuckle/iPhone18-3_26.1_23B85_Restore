@interface StockChartData
- ($87A9BE3275E22128A73FF46D0B92144E)allocateStockValuesWithCount:(unsigned int)count;
- (Stock)stock;
- (StockChartData)initWithStock:(id)stock interval:(int64_t)interval;
- (id)description;
- (int64_t)labelPlacementForDisplayMode:(id)mode;
- (void)dealloc;
- (void)setLabelPlacement:(int64_t)placement forDisplayMode:(id)mode;
@end

@implementation StockChartData

- (StockChartData)initWithStock:(id)stock interval:(int64_t)interval
{
  stockCopy = stock;
  v18.receiver = self;
  v18.super_class = StockChartData;
  v7 = [(StockChartData *)&v18 init];
  v8 = v7;
  if (v7)
  {
    [(StockChartData *)v7 setStock:stockCopy];
    v8->_chartInterval = interval;
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

- ($87A9BE3275E22128A73FF46D0B92144E)allocateStockValuesWithCount:(unsigned int)count
{
  result = malloc_type_calloc(0x18uLL, count, 0x1000040504FFAC1uLL);
  self->_stockValues = result;
  self->_stockValueCount = count;
  return result;
}

- (int64_t)labelPlacementForDisplayMode:(id)mode
{
  v3 = [(NSMutableDictionary *)self->_labelPlacementCache objectForKey:mode];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setLabelPlacement:(int64_t)placement forDisplayMode:(id)mode
{
  labelPlacementCache = self->_labelPlacementCache;
  v6 = MEMORY[0x277CCABB0];
  modeCopy = mode;
  v8 = [v6 numberWithInteger:placement];
  [(NSMutableDictionary *)labelPlacementCache setObject:v8 forKey:modeCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  stock = [(StockChartData *)self stock];
  symbol = [stock symbol];
  v6 = [ChartUpdater _rangeStringForInterval:self->_chartInterval];
  v7 = [v3 stringWithFormat:@"<StockChartData: %p, symbol = %@, interval = %@", self, symbol, v6];

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