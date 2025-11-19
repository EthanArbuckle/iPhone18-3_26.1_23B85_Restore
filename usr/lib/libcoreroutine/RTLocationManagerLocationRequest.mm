@interface RTLocationManagerLocationRequest
- (RTLocationManagerLocationRequest)initWithOptions:(id)a3 handler:(id)a4;
- (id)description;
- (id)expiryDate;
@end

@implementation RTLocationManagerLocationRequest

- (id)expiryDate
{
  v3 = [(RTLocationManagerLocationRequest *)self startDate];
  v4 = [(RTLocationManagerLocationRequest *)self options];
  [v4 timeout];
  v5 = [v3 dateByAddingTimeInterval:?];

  return v5;
}

- (RTLocationManagerLocationRequest)initWithOptions:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = RTLocationManagerLocationRequest;
  v9 = [(RTLocationManagerLocationRequest *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_options, a3);
    v11 = _Block_copy(v8);
    handler = v10->_handler;
    v10->_handler = v11;

    v13 = [MEMORY[0x277CBEAA8] now];
    startDate = v10->_startDate;
    v10->_startDate = v13;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTLocationManagerLocationRequest *)self startDate];
  v5 = [v4 stringFromDate];
  v6 = [(RTLocationManagerLocationRequest *)self expiryDate];
  v7 = [v6 stringFromDate];
  v8 = [(RTLocationManagerLocationRequest *)self options];
  v9 = [v3 stringWithFormat:@"startDate, %@, expiryDate, %@, options, %@", v5, v7, v8];

  return v9;
}

@end