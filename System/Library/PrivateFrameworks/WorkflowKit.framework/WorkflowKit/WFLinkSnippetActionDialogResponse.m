@interface WFLinkSnippetActionDialogResponse
- (WFLinkSnippetActionDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFLinkSnippetActionDialogResponse)initWithCoder:(id)a3;
- (WFLinkSnippetActionDialogResponse)initWithRequestedOpenURL:(id)a3;
- (WFLinkSnippetActionDialogResponse)initWithResult:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLinkSnippetActionDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetActionDialogResponse;
  v4 = a3;
  [(WFLinkSnippetDialogResponse *)&v6 encodeWithBSXPCCoder:v4];
  v5 = [(WFLinkSnippetActionDialogResponse *)self result:v6.receiver];
  [v4 encodeObject:v5 forKey:@"result"];
}

- (WFLinkSnippetActionDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetActionDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v10 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v7 = v5->_result;
    v5->_result = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetActionDialogResponse;
  v4 = a3;
  [(WFLinkSnippetDialogResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFLinkSnippetActionDialogResponse *)self result:v6.receiver];
  [v4 encodeObject:v5 forKey:@"result"];
}

- (WFLinkSnippetActionDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetActionDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v7 = v5->_result;
    v5->_result = v6;

    v8 = v5;
  }

  return v5;
}

- (WFLinkSnippetActionDialogResponse)initWithRequestedOpenURL:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFLinkSnippetActionDialogResponse;
  v3 = [(WFLinkSnippetDialogResponse *)&v8 initWithRequestedOpenURL:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3->_result;
    v3->_result = 0;

    v6 = v4;
  }

  return v4;
}

- (WFLinkSnippetActionDialogResponse)initWithResult:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetActionDialogResponse;
  v6 = [(WFLinkSnippetDialogResponse *)&v10 initWithResponseCode:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, a3);
    v8 = v7;
  }

  return v7;
}

@end