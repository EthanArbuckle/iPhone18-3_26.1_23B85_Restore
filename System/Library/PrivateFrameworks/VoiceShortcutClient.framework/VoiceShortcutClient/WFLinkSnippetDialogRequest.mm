@interface WFLinkSnippetDialogRequest
- (WFLinkSnippetDialogRequest)initWithCoder:(id)coder;
- (WFLinkSnippetDialogRequest)initWithViewSnippet:(id)snippet snippetAction:(id)action encodedSnippetActionToolInvocation:(id)invocation attribution:(id)attribution showPrompt:(BOOL)prompt;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkSnippetDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WFLinkSnippetDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(WFLinkSnippetDialogRequest *)self viewSnippet:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"viewSnippet"];

  snippetAction = [(WFLinkSnippetDialogRequest *)self snippetAction];
  [coderCopy encodeObject:snippetAction forKey:@"snippetAction"];

  encodedSnippetActionToolInvocation = [(WFLinkSnippetDialogRequest *)self encodedSnippetActionToolInvocation];
  [coderCopy encodeObject:encodedSnippetActionToolInvocation forKey:@"encodedSnippetActionToolInvocation"];

  [coderCopy encodeBool:-[WFLinkSnippetDialogRequest showPrompt](self forKey:{"showPrompt"), @"showPrompt"}];
}

- (WFLinkSnippetDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFLinkSnippetDialogRequest;
  v5 = [(WFDialogRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippet"];
    viewSnippet = v5->_viewSnippet;
    v5->_viewSnippet = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snippetAction"];
    snippetAction = v5->_snippetAction;
    v5->_snippetAction = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedSnippetActionToolInvocation"];
    encodedSnippetActionToolInvocation = v5->_encodedSnippetActionToolInvocation;
    v5->_encodedSnippetActionToolInvocation = v10;

    v5->_showPrompt = [coderCopy decodeBoolForKey:@"showPrompt"];
    v12 = v5;
  }

  return v5;
}

- (WFLinkSnippetDialogRequest)initWithViewSnippet:(id)snippet snippetAction:(id)action encodedSnippetActionToolInvocation:(id)invocation attribution:(id)attribution showPrompt:(BOOL)prompt
{
  snippetCopy = snippet;
  actionCopy = action;
  invocationCopy = invocation;
  v24.receiver = self;
  v24.super_class = WFLinkSnippetDialogRequest;
  v15 = [(WFDialogRequest *)&v24 initWithAttribution:attribution prompt:0];
  if (v15)
  {
    v16 = [snippetCopy copy];
    viewSnippet = v15->_viewSnippet;
    v15->_viewSnippet = v16;

    v18 = [actionCopy copy];
    snippetAction = v15->_snippetAction;
    v15->_snippetAction = v18;

    v20 = [invocationCopy copy];
    encodedSnippetActionToolInvocation = v15->_encodedSnippetActionToolInvocation;
    v15->_encodedSnippetActionToolInvocation = v20;

    v15->_showPrompt = prompt;
    v22 = v15;
  }

  return v15;
}

@end