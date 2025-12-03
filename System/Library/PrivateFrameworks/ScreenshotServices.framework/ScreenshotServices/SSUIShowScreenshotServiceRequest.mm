@interface SSUIShowScreenshotServiceRequest
- (SSUIShowScreenshotServiceRequest)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSUIShowScreenshotServiceRequest

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SSUIShowScreenshotServiceRequest;
  coderCopy = coder;
  [(SSUIServiceRequest *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(SSUIShowScreenshotServiceRequest *)self options:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"SSUIServiceRequestOptions"];
}

- (SSUIShowScreenshotServiceRequest)initWithBSXPCCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = SSUIShowScreenshotServiceRequest;
  coderCopy = coder;
  v4 = [(SSUIServiceRequest *)&v8 initWithBSXPCCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"SSUIServiceRequestOptions", v8.receiver, v8.super_class}];

  options = v4->_options;
  v4->_options = v5;

  return v4;
}

@end