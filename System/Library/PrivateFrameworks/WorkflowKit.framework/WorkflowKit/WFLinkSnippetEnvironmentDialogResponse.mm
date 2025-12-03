@interface WFLinkSnippetEnvironmentDialogResponse
- (WFLinkSnippetEnvironmentDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFLinkSnippetEnvironmentDialogResponse)initWithCoder:(id)coder;
- (WFLinkSnippetEnvironmentDialogResponse)initWithEnvironment:(id)environment;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkSnippetEnvironmentDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetEnvironmentDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(WFLinkSnippetEnvironmentDialogResponse *)self environment:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"environment"];
}

- (WFLinkSnippetEnvironmentDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetEnvironmentDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    environment = v5->_environment;
    v5->_environment = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetEnvironmentDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFLinkSnippetEnvironmentDialogResponse *)self environment:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"environment"];
}

- (WFLinkSnippetEnvironmentDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetEnvironmentDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    environment = v5->_environment;
    v5->_environment = v6;

    v8 = v5;
  }

  return v5;
}

- (WFLinkSnippetEnvironmentDialogResponse)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetEnvironmentDialogResponse;
  v6 = [(WFDialogResponse *)&v10 initWithResponseCode:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environment, environment);
    v8 = v7;
  }

  return v7;
}

@end