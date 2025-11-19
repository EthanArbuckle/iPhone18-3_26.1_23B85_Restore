@interface STShowStockOverviewRequest
- (STShowStockOverviewRequest)initWithCoder:(id)a3;
- (id)_initWithName:(id)a3 symbol:(id)a4 exchange:(id)a5 price:(id)a6 high:(id)a7 low:(id)a8 change:(id)a9 changePercent:(id)a10 chartData:(id)a11;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowStockOverviewRequest

- (STShowStockOverviewRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = STShowStockOverviewRequest;
  v5 = [(AFSiriRequest *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_symbol"];
    symbol = v5->_symbol;
    v5->_symbol = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_exchange"];
    exchange = v5->_exchange;
    v5->_exchange = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_price"];
    price = v5->_price;
    v5->_price = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_high"];
    high = v5->_high;
    v5->_high = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_low"];
    low = v5->_low;
    v5->_low = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_change"];
    change = v5->_change;
    v5->_change = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_changePercent"];
    changePercent = v5->_changePercent;
    v5->_changePercent = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_chartData"];
    chartData = v5->_chartData;
    v5->_chartData = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowStockOverviewRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_name forKey:{@"_name", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_symbol forKey:@"_symbol"];
  [v4 encodeObject:self->_exchange forKey:@"_exchange"];
  [v4 encodeObject:self->_price forKey:@"_price"];
  [v4 encodeObject:self->_high forKey:@"_high"];
  [v4 encodeObject:self->_low forKey:@"_low"];
  [v4 encodeObject:self->_change forKey:@"_change"];
  [v4 encodeObject:self->_changePercent forKey:@"_changePercent"];
  [v4 encodeObject:self->_chartData forKey:@"_chartData"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithName:(id)a3 symbol:(id)a4 exchange:(id)a5 price:(id)a6 high:(id)a7 low:(id)a8 change:(id)a9 changePercent:(id)a10 chartData:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = STShowStockOverviewRequest;
  v19 = [(AFSiriRequest *)&v30 init];
  p_isa = &v19->super.super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_name, a3);
    objc_storeStrong(p_isa + 6, a4);
    objc_storeStrong(p_isa + 7, a5);
    objc_storeStrong(p_isa + 8, a6);
    objc_storeStrong(p_isa + 9, a7);
    objc_storeStrong(p_isa + 10, a8);
    objc_storeStrong(p_isa + 11, a9);
    objc_storeStrong(p_isa + 12, a10);
    objc_storeStrong(p_isa + 13, a11);
  }

  return p_isa;
}

@end