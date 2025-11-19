@interface WFLinkSnippetEnvironmentDialogRequest
- (WFLinkSnippetEnvironmentDialogRequest)initWithAttribution:(id)a3 prompt:(id)a4 siriRequest:(BOOL)a5 hasDialog:(BOOL)a6;
- (WFLinkSnippetEnvironmentDialogRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLinkSnippetEnvironmentDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFLinkSnippetEnvironmentDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[WFLinkSnippetEnvironmentDialogRequest siriRequest](self forKey:{"siriRequest", v5.receiver, v5.super_class), @"siriRequest"}];
  [v4 encodeBool:-[WFLinkSnippetEnvironmentDialogRequest hasDialog](self forKey:{"hasDialog"), @"hasDialog"}];
}

- (WFLinkSnippetEnvironmentDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFLinkSnippetEnvironmentDialogRequest;
  v5 = [(WFDialogRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_siriRequest = [v4 decodeBoolForKey:@"siriRequest"];
    v5->_hasDialog = [v4 decodeBoolForKey:@"hasDialog"];
    v6 = v5;
  }

  return v5;
}

- (WFLinkSnippetEnvironmentDialogRequest)initWithAttribution:(id)a3 prompt:(id)a4 siriRequest:(BOOL)a5 hasDialog:(BOOL)a6
{
  v12.receiver = self;
  v12.super_class = WFLinkSnippetEnvironmentDialogRequest;
  v8 = [(WFDialogRequest *)&v12 initWithAttribution:a3 prompt:a4];
  v9 = v8;
  if (v8)
  {
    v8->_siriRequest = a5;
    v8->_hasDialog = a6;
    v10 = v8;
  }

  return v9;
}

@end