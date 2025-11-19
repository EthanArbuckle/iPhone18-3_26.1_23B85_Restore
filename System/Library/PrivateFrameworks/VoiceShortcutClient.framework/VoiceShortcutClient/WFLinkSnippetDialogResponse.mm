@interface WFLinkSnippetDialogResponse
- (WFLinkSnippetDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFLinkSnippetDialogResponse)initWithCoder:(id)a3;
- (WFLinkSnippetDialogResponse)initWithRequestedOpenURL:(id)a3;
- (WFLinkSnippetDialogResponse)initWithResponseCode:(int64_t)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLinkSnippetDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:-[WFLinkSnippetDialogResponse snippetResponseCode](self forKey:{"snippetResponseCode", v6.receiver, v6.super_class), @"snippetResponseCode"}];
  v5 = [(WFLinkSnippetDialogResponse *)self requestedOpenURL];
  [v4 encodeObject:v5 forKey:@"requestedOpenURL"];
}

- (WFLinkSnippetDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_snippetResponseCode = [v4 decodeInt64ForKey:@"snippetResponseCode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedOpenURL"];
    requestedOpenURL = v5->_requestedOpenURL;
    v5->_requestedOpenURL = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:-[WFLinkSnippetDialogResponse snippetResponseCode](self forKey:{"snippetResponseCode", v6.receiver, v6.super_class), @"snippetResponseCode"}];
  v5 = [(WFLinkSnippetDialogResponse *)self requestedOpenURL];
  [v4 encodeObject:v5 forKey:@"requestedOpenURL"];
}

- (WFLinkSnippetDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5->_snippetResponseCode = [v4 decodeIntegerForKey:@"snippetResponseCode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedOpenURL"];
    requestedOpenURL = v5->_requestedOpenURL;
    v5->_requestedOpenURL = v6;

    v8 = v5;
  }

  return v5;
}

- (WFLinkSnippetDialogResponse)initWithRequestedOpenURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WFLinkSnippetDialogResponse;
  v5 = [(WFDialogResponse *)&v11 initWithResponseCode:0];
  v6 = v5;
  if (v5)
  {
    v5->_snippetResponseCode = 0;
    v7 = [v4 copy];
    requestedOpenURL = v6->_requestedOpenURL;
    v6->_requestedOpenURL = v7;

    v9 = v6;
  }

  return v6;
}

- (WFLinkSnippetDialogResponse)initWithResponseCode:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = WFLinkSnippetDialogResponse;
  v3 = [(WFDialogResponse *)&v7 initWithResponseCode:a3];
  v4 = v3;
  if (v3)
  {
    v3->_snippetResponseCode = 0;
    v5 = v3;
  }

  return v4;
}

@end