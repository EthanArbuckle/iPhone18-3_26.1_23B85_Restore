@interface WFLinkSnippetActionDialogRequest
- (WFLinkSnippetActionDialogRequest)initWithCoder:(id)a3;
- (WFLinkSnippetActionDialogRequest)initWithSnippetAction:(id)a3 attribution:(id)a4 encodedSnippetActionToolInvocation:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLinkSnippetActionDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = WFLinkSnippetActionDialogRequest;
  [(WFDialogRequest *)&v3 encodeWithCoder:a3];
}

- (WFLinkSnippetActionDialogRequest)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFLinkSnippetActionDialogRequest;
  return [(WFDialogRequest *)&v4 initWithCoder:a3];
}

- (WFLinkSnippetActionDialogRequest)initWithSnippetAction:(id)a3 attribution:(id)a4 encodedSnippetActionToolInvocation:(id)a5
{
  v6.receiver = self;
  v6.super_class = WFLinkSnippetActionDialogRequest;
  return [(WFLinkSnippetActionDialogRequest *)&v6 initWithViewSnippet:0 snippetAction:a3 encodedSnippetActionToolInvocation:a5 attribution:a4 showPrompt:0];
}

@end