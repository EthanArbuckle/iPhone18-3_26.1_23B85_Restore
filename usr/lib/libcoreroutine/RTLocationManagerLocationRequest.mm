@interface RTLocationManagerLocationRequest
- (RTLocationManagerLocationRequest)initWithOptions:(id)options handler:(id)handler;
- (id)description;
- (id)expiryDate;
@end

@implementation RTLocationManagerLocationRequest

- (id)expiryDate
{
  startDate = [(RTLocationManagerLocationRequest *)self startDate];
  options = [(RTLocationManagerLocationRequest *)self options];
  [options timeout];
  v5 = [startDate dateByAddingTimeInterval:?];

  return v5;
}

- (RTLocationManagerLocationRequest)initWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = RTLocationManagerLocationRequest;
  v9 = [(RTLocationManagerLocationRequest *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_options, options);
    v11 = _Block_copy(handlerCopy);
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
  startDate = [(RTLocationManagerLocationRequest *)self startDate];
  stringFromDate = [startDate stringFromDate];
  expiryDate = [(RTLocationManagerLocationRequest *)self expiryDate];
  stringFromDate2 = [expiryDate stringFromDate];
  options = [(RTLocationManagerLocationRequest *)self options];
  v9 = [v3 stringWithFormat:@"startDate, %@, expiryDate, %@, options, %@", stringFromDate, stringFromDate2, options];

  return v9;
}

@end