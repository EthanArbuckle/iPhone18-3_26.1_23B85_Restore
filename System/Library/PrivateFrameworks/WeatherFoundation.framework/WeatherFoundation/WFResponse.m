@interface WFResponse
+ (WFResponse)responseWithIdentifier:(id)a3 error:(id)a4;
- (WFResponse)initWithCoder:(id)a3;
- (WFResponse)initWithIdentifier:(id)a3 error:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFResponse

+ (WFResponse)responseWithIdentifier:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithIdentifier:v6 error:v5];

  return v7;
}

- (WFResponse)initWithIdentifier:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFResponse;
  v9 = [(WFResponse *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_error, a4);
    v11 = v10;
  }

  return v10;
}

- (WFResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [(WFResponse *)self initWithIdentifier:v5];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"executionTime"];

  [v7 doubleValue];
  v6->_executionTime = v8;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFResponse *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = MEMORY[0x277CCABB0];
  [(WFResponse *)self executionTime];
  v7 = [v6 numberWithDouble:?];
  [v4 encodeObject:v7 forKey:@"executionTime"];
}

@end