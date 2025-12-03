@interface WCAFetchResponse
+ (id)fetchResponseWithError:(id)error;
- (WCAFetchResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WCAFetchResponse

+ (id)fetchResponseWithError:(id)error
{
  errorCopy = error;
  v5 = objc_alloc_init(self);
  [v5 setError:errorCopy];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  error = self->_error;
  if (error)
  {
    [coder encodeObject:error forKey:@"_error"];
  }
}

- (WCAFetchResponse)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WCAFetchResponse;
  coderCopy = coder;
  v4 = [(WCAFetchResponse *)&v8 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"_error", v8.receiver, v8.super_class}];

  error = v4->_error;
  v4->_error = v5;

  return v4;
}

@end