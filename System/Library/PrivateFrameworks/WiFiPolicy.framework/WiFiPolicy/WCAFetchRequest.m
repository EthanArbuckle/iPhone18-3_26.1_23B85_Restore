@interface WCAFetchRequest
- (WCAFetchRequest)initWithCoder:(id)a3;
@end

@implementation WCAFetchRequest

- (WCAFetchRequest)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WCAFetchRequest;
  v3 = a3;
  v4 = [(WCAFetchRequest *)&v8 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"_asset", v8.receiver, v8.super_class}];

  asset = v4->_asset;
  v4->_asset = v5;

  return v4;
}

@end