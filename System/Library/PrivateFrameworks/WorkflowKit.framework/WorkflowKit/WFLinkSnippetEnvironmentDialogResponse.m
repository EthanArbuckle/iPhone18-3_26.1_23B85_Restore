@interface WFLinkSnippetEnvironmentDialogResponse
- (WFLinkSnippetEnvironmentDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFLinkSnippetEnvironmentDialogResponse)initWithCoder:(id)a3;
- (WFLinkSnippetEnvironmentDialogResponse)initWithEnvironment:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLinkSnippetEnvironmentDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetEnvironmentDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:v4];
  v5 = [(WFLinkSnippetEnvironmentDialogResponse *)self environment:v6.receiver];
  [v4 encodeObject:v5 forKey:@"environment"];
}

- (WFLinkSnippetEnvironmentDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetEnvironmentDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    environment = v5->_environment;
    v5->_environment = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetEnvironmentDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFLinkSnippetEnvironmentDialogResponse *)self environment:v6.receiver];
  [v4 encodeObject:v5 forKey:@"environment"];
}

- (WFLinkSnippetEnvironmentDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetEnvironmentDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    environment = v5->_environment;
    v5->_environment = v6;

    v8 = v5;
  }

  return v5;
}

- (WFLinkSnippetEnvironmentDialogResponse)initWithEnvironment:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetEnvironmentDialogResponse;
  v6 = [(WFDialogResponse *)&v10 initWithResponseCode:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environment, a3);
    v8 = v7;
  }

  return v7;
}

@end