@interface SSUIRunPPTServiceRequest
- (SSUIRunPPTServiceRequest)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSUIRunPPTServiceRequest

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SSUIRunPPTServiceRequest;
  coderCopy = coder;
  [(SSUIServiceRequest *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(SSUIRunPPTServiceRequest *)self testName:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"SSUIRunPPTServiceRequestTestName"];

  [coderCopy encodeUInt64:-[SSUIRunPPTServiceRequest numberOfRequiredScreenshots](self forKey:{"numberOfRequiredScreenshots"), @"SSUIRunPPTServiceRequestNumberOfRequiredScreenshots"}];
}

- (SSUIRunPPTServiceRequest)initWithBSXPCCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = SSUIRunPPTServiceRequest;
  coderCopy = coder;
  v4 = [(SSUIServiceRequest *)&v9 initWithBSXPCCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"SSUIRunPPTServiceRequestTestName", v9.receiver, v9.super_class}];
  testName = v4->_testName;
  v4->_testName = v5;

  v7 = [coderCopy decodeUInt64ForKey:@"SSUIRunPPTServiceRequestNumberOfRequiredScreenshots"];
  v4->_numberOfRequiredScreenshots = v7;
  return v4;
}

@end