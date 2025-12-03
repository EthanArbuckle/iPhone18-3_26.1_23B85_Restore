@interface STShowStockOverviewRequest
- (STShowStockOverviewRequest)initWithCoder:(id)coder;
- (id)_initWithName:(id)name symbol:(id)symbol exchange:(id)exchange price:(id)price high:(id)high low:(id)low change:(id)change changePercent:(id)self0 chartData:(id)self1;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowStockOverviewRequest

- (STShowStockOverviewRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = STShowStockOverviewRequest;
  v5 = [(AFSiriRequest *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_symbol"];
    symbol = v5->_symbol;
    v5->_symbol = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_exchange"];
    exchange = v5->_exchange;
    v5->_exchange = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_price"];
    price = v5->_price;
    v5->_price = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_high"];
    high = v5->_high;
    v5->_high = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_low"];
    low = v5->_low;
    v5->_low = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_change"];
    change = v5->_change;
    v5->_change = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_changePercent"];
    changePercent = v5->_changePercent;
    v5->_changePercent = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_chartData"];
    chartData = v5->_chartData;
    v5->_chartData = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowStockOverviewRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_name forKey:{@"_name", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_symbol forKey:@"_symbol"];
  [coderCopy encodeObject:self->_exchange forKey:@"_exchange"];
  [coderCopy encodeObject:self->_price forKey:@"_price"];
  [coderCopy encodeObject:self->_high forKey:@"_high"];
  [coderCopy encodeObject:self->_low forKey:@"_low"];
  [coderCopy encodeObject:self->_change forKey:@"_change"];
  [coderCopy encodeObject:self->_changePercent forKey:@"_changePercent"];
  [coderCopy encodeObject:self->_chartData forKey:@"_chartData"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithName:(id)name symbol:(id)symbol exchange:(id)exchange price:(id)price high:(id)high low:(id)low change:(id)change changePercent:(id)self0 chartData:(id)self1
{
  nameCopy = name;
  symbolCopy = symbol;
  exchangeCopy = exchange;
  priceCopy = price;
  highCopy = high;
  lowCopy = low;
  changeCopy = change;
  percentCopy = percent;
  dataCopy = data;
  v30.receiver = self;
  v30.super_class = STShowStockOverviewRequest;
  v19 = [(AFSiriRequest *)&v30 init];
  p_isa = &v19->super.super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(p_isa + 6, symbol);
    objc_storeStrong(p_isa + 7, exchange);
    objc_storeStrong(p_isa + 8, price);
    objc_storeStrong(p_isa + 9, high);
    objc_storeStrong(p_isa + 10, low);
    objc_storeStrong(p_isa + 11, change);
    objc_storeStrong(p_isa + 12, percent);
    objc_storeStrong(p_isa + 13, data);
  }

  return p_isa;
}

@end