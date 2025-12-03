@interface WFLinkSnippetActionDialogRequest
- (WFLinkSnippetActionDialogRequest)initWithCoder:(id)coder;
- (WFLinkSnippetActionDialogRequest)initWithSnippetAction:(id)action attribution:(id)attribution encodedSnippetActionToolInvocation:(id)invocation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkSnippetActionDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = WFLinkSnippetActionDialogRequest;
  [(WFDialogRequest *)&v3 encodeWithCoder:coder];
}

- (WFLinkSnippetActionDialogRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = WFLinkSnippetActionDialogRequest;
  return [(WFDialogRequest *)&v4 initWithCoder:coder];
}

- (WFLinkSnippetActionDialogRequest)initWithSnippetAction:(id)action attribution:(id)attribution encodedSnippetActionToolInvocation:(id)invocation
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetActionDialogRequest;
  return [(WFLinkSnippetActionDialogRequest *)&v6 initWithViewSnippet:0 snippetAction:action encodedSnippetActionToolInvocation:invocation attribution:attribution showPrompt:0];
}

@end