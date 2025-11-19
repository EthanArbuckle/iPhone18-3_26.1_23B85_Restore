@interface WCAFetchResponse
+ (id)fetchResponseWithError:(id)a3;
- (WCAFetchResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WCAFetchResponse

+ (id)fetchResponseWithError:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setError:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  error = self->_error;
  if (error)
  {
    [a3 encodeObject:error forKey:@"_error"];
  }
}

- (WCAFetchResponse)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WCAFetchResponse;
  v3 = a3;
  v4 = [(WCAFetchResponse *)&v8 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"_error", v8.receiver, v8.super_class}];

  error = v4->_error;
  v4->_error = v5;

  return v4;
}

@end