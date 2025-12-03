@interface WFLinkSnippetEnvironmentDialogRequest
- (WFLinkSnippetEnvironmentDialogRequest)initWithAttribution:(id)attribution prompt:(id)prompt siriRequest:(BOOL)request hasDialog:(BOOL)dialog;
- (WFLinkSnippetEnvironmentDialogRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkSnippetEnvironmentDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFLinkSnippetEnvironmentDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[WFLinkSnippetEnvironmentDialogRequest siriRequest](self forKey:{"siriRequest", v5.receiver, v5.super_class), @"siriRequest"}];
  [coderCopy encodeBool:-[WFLinkSnippetEnvironmentDialogRequest hasDialog](self forKey:{"hasDialog"), @"hasDialog"}];
}

- (WFLinkSnippetEnvironmentDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFLinkSnippetEnvironmentDialogRequest;
  v5 = [(WFDialogRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_siriRequest = [coderCopy decodeBoolForKey:@"siriRequest"];
    v5->_hasDialog = [coderCopy decodeBoolForKey:@"hasDialog"];
    v6 = v5;
  }

  return v5;
}

- (WFLinkSnippetEnvironmentDialogRequest)initWithAttribution:(id)attribution prompt:(id)prompt siriRequest:(BOOL)request hasDialog:(BOOL)dialog
{
  v12.receiver = self;
  v12.super_class = WFLinkSnippetEnvironmentDialogRequest;
  v8 = [(WFDialogRequest *)&v12 initWithAttribution:attribution prompt:prompt];
  v9 = v8;
  if (v8)
  {
    v8->_siriRequest = request;
    v8->_hasDialog = dialog;
    v10 = v8;
  }

  return v9;
}

@end