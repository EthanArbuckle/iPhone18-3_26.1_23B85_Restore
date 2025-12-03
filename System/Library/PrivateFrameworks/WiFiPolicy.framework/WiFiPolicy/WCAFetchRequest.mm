@interface WCAFetchRequest
- (WCAFetchRequest)initWithCoder:(id)coder;
@end

@implementation WCAFetchRequest

- (WCAFetchRequest)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WCAFetchRequest;
  coderCopy = coder;
  v4 = [(WCAFetchRequest *)&v8 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"_asset", v8.receiver, v8.super_class}];

  asset = v4->_asset;
  v4->_asset = v5;

  return v4;
}

@end