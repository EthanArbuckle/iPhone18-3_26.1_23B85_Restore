@interface WFLinkSnippetActionDialogResponse
- (WFLinkSnippetActionDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFLinkSnippetActionDialogResponse)initWithCoder:(id)coder;
- (WFLinkSnippetActionDialogResponse)initWithRequestedOpenURL:(id)l;
- (WFLinkSnippetActionDialogResponse)initWithResult:(id)result;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkSnippetActionDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetActionDialogResponse;
  coderCopy = coder;
  [(WFLinkSnippetDialogResponse *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(WFLinkSnippetActionDialogResponse *)self result:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"result"];
}

- (WFLinkSnippetActionDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetActionDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v10 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v7 = v5->_result;
    v5->_result = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetActionDialogResponse;
  coderCopy = coder;
  [(WFLinkSnippetDialogResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFLinkSnippetActionDialogResponse *)self result:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"result"];
}

- (WFLinkSnippetActionDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetActionDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v7 = v5->_result;
    v5->_result = v6;

    v8 = v5;
  }

  return v5;
}

- (WFLinkSnippetActionDialogResponse)initWithRequestedOpenURL:(id)l
{
  v8.receiver = self;
  v8.super_class = WFLinkSnippetActionDialogResponse;
  v3 = [(WFLinkSnippetDialogResponse *)&v8 initWithRequestedOpenURL:l];
  v4 = v3;
  if (v3)
  {
    v5 = v3->_result;
    v3->_result = 0;

    v6 = v4;
  }

  return v4;
}

- (WFLinkSnippetActionDialogResponse)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetActionDialogResponse;
  v6 = [(WFLinkSnippetDialogResponse *)&v10 initWithResponseCode:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, result);
    v8 = v7;
  }

  return v7;
}

@end