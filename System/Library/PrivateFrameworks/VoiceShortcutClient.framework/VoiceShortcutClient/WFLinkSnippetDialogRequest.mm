@interface WFLinkSnippetDialogRequest
- (WFLinkSnippetDialogRequest)initWithCoder:(id)a3;
- (WFLinkSnippetDialogRequest)initWithViewSnippet:(id)a3 snippetAction:(id)a4 encodedSnippetActionToolInvocation:(id)a5 attribution:(id)a6 showPrompt:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLinkSnippetDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFLinkSnippetDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v8 encodeWithCoder:v4];
  v5 = [(WFLinkSnippetDialogRequest *)self viewSnippet:v8.receiver];
  [v4 encodeObject:v5 forKey:@"viewSnippet"];

  v6 = [(WFLinkSnippetDialogRequest *)self snippetAction];
  [v4 encodeObject:v6 forKey:@"snippetAction"];

  v7 = [(WFLinkSnippetDialogRequest *)self encodedSnippetActionToolInvocation];
  [v4 encodeObject:v7 forKey:@"encodedSnippetActionToolInvocation"];

  [v4 encodeBool:-[WFLinkSnippetDialogRequest showPrompt](self forKey:{"showPrompt"), @"showPrompt"}];
}

- (WFLinkSnippetDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFLinkSnippetDialogRequest;
  v5 = [(WFDialogRequest *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippet"];
    viewSnippet = v5->_viewSnippet;
    v5->_viewSnippet = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snippetAction"];
    snippetAction = v5->_snippetAction;
    v5->_snippetAction = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encodedSnippetActionToolInvocation"];
    encodedSnippetActionToolInvocation = v5->_encodedSnippetActionToolInvocation;
    v5->_encodedSnippetActionToolInvocation = v10;

    v5->_showPrompt = [v4 decodeBoolForKey:@"showPrompt"];
    v12 = v5;
  }

  return v5;
}

- (WFLinkSnippetDialogRequest)initWithViewSnippet:(id)a3 snippetAction:(id)a4 encodedSnippetActionToolInvocation:(id)a5 attribution:(id)a6 showPrompt:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v24.receiver = self;
  v24.super_class = WFLinkSnippetDialogRequest;
  v15 = [(WFDialogRequest *)&v24 initWithAttribution:a6 prompt:0];
  if (v15)
  {
    v16 = [v12 copy];
    viewSnippet = v15->_viewSnippet;
    v15->_viewSnippet = v16;

    v18 = [v13 copy];
    snippetAction = v15->_snippetAction;
    v15->_snippetAction = v18;

    v20 = [v14 copy];
    encodedSnippetActionToolInvocation = v15->_encodedSnippetActionToolInvocation;
    v15->_encodedSnippetActionToolInvocation = v20;

    v15->_showPrompt = a7;
    v22 = v15;
  }

  return v15;
}

@end