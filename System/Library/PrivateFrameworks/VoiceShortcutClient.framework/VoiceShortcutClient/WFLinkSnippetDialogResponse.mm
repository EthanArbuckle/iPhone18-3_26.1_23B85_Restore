@interface WFLinkSnippetDialogResponse
- (WFLinkSnippetDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFLinkSnippetDialogResponse)initWithCoder:(id)coder;
- (WFLinkSnippetDialogResponse)initWithRequestedOpenURL:(id)l;
- (WFLinkSnippetDialogResponse)initWithResponseCode:(int64_t)code;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkSnippetDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:-[WFLinkSnippetDialogResponse snippetResponseCode](self forKey:{"snippetResponseCode", v6.receiver, v6.super_class), @"snippetResponseCode"}];
  requestedOpenURL = [(WFLinkSnippetDialogResponse *)self requestedOpenURL];
  [coderCopy encodeObject:requestedOpenURL forKey:@"requestedOpenURL"];
}

- (WFLinkSnippetDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_snippetResponseCode = [coderCopy decodeInt64ForKey:@"snippetResponseCode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedOpenURL"];
    requestedOpenURL = v5->_requestedOpenURL;
    v5->_requestedOpenURL = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[WFLinkSnippetDialogResponse snippetResponseCode](self forKey:{"snippetResponseCode", v6.receiver, v6.super_class), @"snippetResponseCode"}];
  requestedOpenURL = [(WFLinkSnippetDialogResponse *)self requestedOpenURL];
  [coderCopy encodeObject:requestedOpenURL forKey:@"requestedOpenURL"];
}

- (WFLinkSnippetDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFLinkSnippetDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_snippetResponseCode = [coderCopy decodeIntegerForKey:@"snippetResponseCode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedOpenURL"];
    requestedOpenURL = v5->_requestedOpenURL;
    v5->_requestedOpenURL = v6;

    v8 = v5;
  }

  return v5;
}

- (WFLinkSnippetDialogResponse)initWithRequestedOpenURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = WFLinkSnippetDialogResponse;
  v5 = [(WFDialogResponse *)&v11 initWithResponseCode:0];
  v6 = v5;
  if (v5)
  {
    v5->_snippetResponseCode = 0;
    v7 = [lCopy copy];
    requestedOpenURL = v6->_requestedOpenURL;
    v6->_requestedOpenURL = v7;

    v9 = v6;
  }

  return v6;
}

- (WFLinkSnippetDialogResponse)initWithResponseCode:(int64_t)code
{
  v7.receiver = self;
  v7.super_class = WFLinkSnippetDialogResponse;
  v3 = [(WFDialogResponse *)&v7 initWithResponseCode:code];
  v4 = v3;
  if (v3)
  {
    v3->_snippetResponseCode = 0;
    v5 = v3;
  }

  return v4;
}

@end