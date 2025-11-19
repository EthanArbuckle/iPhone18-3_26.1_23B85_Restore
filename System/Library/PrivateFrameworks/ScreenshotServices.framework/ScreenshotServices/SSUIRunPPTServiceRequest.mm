@interface SSUIRunPPTServiceRequest
- (SSUIRunPPTServiceRequest)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSUIRunPPTServiceRequest

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSUIRunPPTServiceRequest;
  v4 = a3;
  [(SSUIServiceRequest *)&v6 encodeWithBSXPCCoder:v4];
  v5 = [(SSUIRunPPTServiceRequest *)self testName:v6.receiver];
  [v4 encodeObject:v5 forKey:@"SSUIRunPPTServiceRequestTestName"];

  [v4 encodeUInt64:-[SSUIRunPPTServiceRequest numberOfRequiredScreenshots](self forKey:{"numberOfRequiredScreenshots"), @"SSUIRunPPTServiceRequestNumberOfRequiredScreenshots"}];
}

- (SSUIRunPPTServiceRequest)initWithBSXPCCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = SSUIRunPPTServiceRequest;
  v3 = a3;
  v4 = [(SSUIServiceRequest *)&v9 initWithBSXPCCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"SSUIRunPPTServiceRequestTestName", v9.receiver, v9.super_class}];
  testName = v4->_testName;
  v4->_testName = v5;

  v7 = [v3 decodeUInt64ForKey:@"SSUIRunPPTServiceRequestNumberOfRequiredScreenshots"];
  v4->_numberOfRequiredScreenshots = v7;
  return v4;
}

@end