@interface SSUIShowScreenshotServiceRequest
- (SSUIShowScreenshotServiceRequest)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSUIShowScreenshotServiceRequest

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSUIShowScreenshotServiceRequest;
  v4 = a3;
  [(SSUIServiceRequest *)&v6 encodeWithBSXPCCoder:v4];
  v5 = [(SSUIShowScreenshotServiceRequest *)self options:v6.receiver];
  [v4 encodeObject:v5 forKey:@"SSUIServiceRequestOptions"];
}

- (SSUIShowScreenshotServiceRequest)initWithBSXPCCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SSUIShowScreenshotServiceRequest;
  v3 = a3;
  v4 = [(SSUIServiceRequest *)&v8 initWithBSXPCCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"SSUIServiceRequestOptions", v8.receiver, v8.super_class}];

  options = v4->_options;
  v4->_options = v5;

  return v4;
}

@end