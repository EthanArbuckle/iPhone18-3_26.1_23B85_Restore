@interface PGAbstractMetricEvent
- (BOOL)shouldReportMetrics;
- (NSDictionary)payload;
- (NSString)description;
- (NSString)identifier;
@end

@implementation PGAbstractMetricEvent

- (BOOL)shouldReportMetrics
{
  v3 = objc_alloc(MEMORY[0x277CBEAD8]);
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = PGAbstractMetricEvent;
  v4 = [(PGAbstractMetricEvent *)&v10 description];
  v5 = [objc_opt_class() description];
  identifier = [(PGAbstractMetricEvent *)self identifier];
  payload = [(PGAbstractMetricEvent *)self payload];
  v8 = [v3 stringWithFormat:@"%@ %@:\nIdentifier:%@\nPayload:%@", v4, v5, identifier, payload];

  return v8;
}

- (NSDictionary)payload
{
  v3 = objc_alloc(MEMORY[0x277CBEAD8]);
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

- (NSString)identifier
{
  v3 = objc_alloc(MEMORY[0x277CBEAD8]);
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

@end