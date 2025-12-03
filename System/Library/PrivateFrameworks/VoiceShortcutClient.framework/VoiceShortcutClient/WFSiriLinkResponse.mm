@interface WFSiriLinkResponse
- (WFSiriLinkResponse)initWithCoder:(id)coder;
- (WFSiriLinkResponse)initWithOutput:(id)output andError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriLinkResponse

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFSiriLinkResponse;
  coderCopy = coder;
  [(WFSiriActionResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFSiriLinkResponse *)self actionOutput:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"actionOutput"];
}

- (WFSiriLinkResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFSiriLinkResponse;
  v5 = [(WFSiriActionResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionOutput"];
    actionOutput = v5->_actionOutput;
    v5->_actionOutput = v6;

    v8 = v5;
  }

  return v5;
}

- (WFSiriLinkResponse)initWithOutput:(id)output andError:(id)error
{
  outputCopy = output;
  v12.receiver = self;
  v12.super_class = WFSiriLinkResponse;
  v8 = [(WFSiriActionResponse *)&v12 initWithError:error];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_actionOutput, output);
    v10 = v9;
  }

  return v9;
}

@end