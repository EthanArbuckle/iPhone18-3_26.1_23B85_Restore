@interface WFSiriActionResponse
- (WFSiriActionResponse)initWithCoder:(id)coder;
- (WFSiriActionResponse)initWithError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriActionResponse

- (WFSiriActionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  v6 = [(WFSiriActionResponse *)self initWithError:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  error = [(WFSiriActionResponse *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

- (WFSiriActionResponse)initWithError:(id)error
{
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = WFSiriActionResponse;
  v6 = [(WFSiriActionResponse *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
    v8 = v7;
  }

  return v7;
}

@end