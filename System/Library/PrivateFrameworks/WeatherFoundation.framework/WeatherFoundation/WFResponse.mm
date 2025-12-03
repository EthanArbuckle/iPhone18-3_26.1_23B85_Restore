@interface WFResponse
+ (WFResponse)responseWithIdentifier:(id)identifier error:(id)error;
- (WFResponse)initWithCoder:(id)coder;
- (WFResponse)initWithIdentifier:(id)identifier error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFResponse

+ (WFResponse)responseWithIdentifier:(id)identifier error:(id)error
{
  errorCopy = error;
  identifierCopy = identifier;
  v7 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifierCopy error:errorCopy];

  return v7;
}

- (WFResponse)initWithIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v13.receiver = self;
  v13.super_class = WFResponse;
  v9 = [(WFResponse *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_error, error);
    v11 = v10;
  }

  return v10;
}

- (WFResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [(WFResponse *)self initWithIdentifier:v5];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"executionTime"];

  [v7 doubleValue];
  v6->_executionTime = v8;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFResponse *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  v6 = MEMORY[0x277CCABB0];
  [(WFResponse *)self executionTime];
  v7 = [v6 numberWithDouble:?];
  [coderCopy encodeObject:v7 forKey:@"executionTime"];
}

@end