@interface WFLinkConfirmationDialogRequest
- (WFLinkConfirmationDialogRequest)initWithActionMetadata:(id)a3 showPrompt:(BOOL)a4 dialogString:(id)a5 viewSnippet:(id)a6 snippetAction:(id)a7 encodedSnippetActionToolInvocation:(id)a8 yesText:(id)a9 noText:(id)a10 attribution:(id)a11 parameterInfo:(id)a12 isContinueInAppRequest:(BOOL)a13 systemStyle:(id)a14 destructive:(BOOL)a15;
- (WFLinkConfirmationDialogRequest)initWithActionParameterMetadata:(id)a3 dialogString:(id)a4 viewSnippet:(id)a5 snippetAction:(id)a6 encodedSnippetActionToolInvocation:(id)a7 attribution:(id)a8 parameterInfo:(id)a9;
- (WFLinkConfirmationDialogRequest)initWithCoder:(id)a3;
- (WFLinkConfirmationDialogRequest)initWithTitle:(id)a3 viewSnippet:(id)a4 snippetAction:(id)a5 encodedSnippetActionToolInvocation:(id)a6 yesText:(id)a7 noText:(id)a8 attribution:(id)a9 parameterInfo:(id)a10 isContinueInAppRequest:(BOOL)a11 systemStyle:(id)a12 showPrompt:(BOOL)a13 destructive:(BOOL)a14;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLinkConfirmationDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFLinkConfirmationDialogRequest;
  v4 = a3;
  [(WFLinkSnippetDialogRequest *)&v10 encodeWithCoder:v4];
  v5 = [(WFLinkConfirmationDialogRequest *)self title:v10.receiver];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(WFLinkConfirmationDialogRequest *)self yesButton];
  [v4 encodeObject:v6 forKey:@"yesButton"];

  v7 = [(WFLinkConfirmationDialogRequest *)self noButton];
  [v4 encodeObject:v7 forKey:@"noButton"];

  v8 = [(WFLinkConfirmationDialogRequest *)self parameterInfo];
  [v4 encodeObject:v8 forKey:@"parameterInfo"];

  [v4 encodeBool:-[WFLinkConfirmationDialogRequest isContinueInAppRequest](self forKey:{"isContinueInAppRequest"), @"isContinueInAppRequest"}];
  v9 = [(WFLinkConfirmationDialogRequest *)self systemStyle];
  [v4 encodeObject:v9 forKey:@"systemStyle"];

  [v4 encodeBool:-[WFLinkConfirmationDialogRequest isDestructive](self forKey:{"isDestructive"), @"isDestructive"}];
}

- (WFLinkConfirmationDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WFLinkConfirmationDialogRequest;
  v5 = [(WFLinkSnippetDialogRequest *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"yesButton"];
    yesButton = v5->_yesButton;
    v5->_yesButton = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"noButton"];
    noButton = v5->_noButton;
    v5->_noButton = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterInfo"];
    parameterInfo = v5->_parameterInfo;
    v5->_parameterInfo = v12;

    v5->_isContinueInAppRequest = [v4 decodeBoolForKey:@"isContinueInAppRequest"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemStyle"];
    systemStyle = v5->_systemStyle;
    v5->_systemStyle = v14;

    v5->_isDestructive = [v4 decodeBoolForKey:@"isDestructive"];
    v16 = v5;
  }

  return v5;
}

- (WFLinkConfirmationDialogRequest)initWithTitle:(id)a3 viewSnippet:(id)a4 snippetAction:(id)a5 encodedSnippetActionToolInvocation:(id)a6 yesText:(id)a7 noText:(id)a8 attribution:(id)a9 parameterInfo:(id)a10 isContinueInAppRequest:(BOOL)a11 systemStyle:(id)a12 showPrompt:(BOOL)a13 destructive:(BOOL)a14
{
  v19 = a3;
  v20 = a7;
  v21 = a8;
  v37 = a10;
  v22 = a12;
  v38.receiver = self;
  v38.super_class = WFLinkConfirmationDialogRequest;
  v23 = [(WFLinkSnippetDialogRequest *)&v38 initWithViewSnippet:a4 snippetAction:a5 encodedSnippetActionToolInvocation:a6 attribution:a9 showPrompt:a13];
  if (v23)
  {
    v24 = [v19 copy];
    title = v23->_title;
    v23->_title = v24;

    if (v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = WFLocalizedString(@"Yes");
    }

    v27 = v26;
    if (v21)
    {
      v28 = v21;
    }

    else
    {
      v28 = WFLocalizedString(@"No");
    }

    v29 = v28;
    v30 = [[WFDialogButton alloc] initWithTitle:v27 style:0];
    yesButton = v23->_yesButton;
    v23->_yesButton = v30;

    v32 = [[WFDialogButton alloc] initWithTitle:v29 style:1];
    noButton = v23->_noButton;
    v23->_noButton = v32;

    objc_storeStrong(&v23->_parameterInfo, a10);
    v23->_isContinueInAppRequest = a11;
    objc_storeStrong(&v23->_systemStyle, a12);
    v23->_isDestructive = a14;
    v34 = v23;
  }

  return v23;
}

- (WFLinkConfirmationDialogRequest)initWithActionParameterMetadata:(id)a3 dialogString:(id)a4 viewSnippet:(id)a5 snippetAction:(id)a6 encodedSnippetActionToolInvocation:(id)a7 attribution:(id)a8 parameterInfo:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = v20;
  if (a4)
  {
    LOWORD(v28) = 1;
    LOBYTE(v27) = 0;
    v22 = [(WFLinkConfirmationDialogRequest *)self initWithTitle:a4 viewSnippet:v16 snippetAction:v17 encodedSnippetActionToolInvocation:v18 yesText:0 noText:0 attribution:v19 parameterInfo:v20 isContinueInAppRequest:v27 systemStyle:0 showPrompt:v28 destructive:?];
  }

  else
  {
    v23 = [v15 title];
    v24 = [v23 localizedStringWithPluralizationNumber:&unk_1F29312C0 forLocaleIdentifier:0];
    if (v24)
    {
      LOWORD(v28) = 1;
      LOBYTE(v27) = 0;
      v22 = [(WFLinkConfirmationDialogRequest *)self initWithTitle:v24 viewSnippet:v16 snippetAction:v17 encodedSnippetActionToolInvocation:v18 yesText:0 noText:0 attribution:v19 parameterInfo:v21 isContinueInAppRequest:v27 systemStyle:0 showPrompt:v28 destructive:?];
    }

    else
    {
      v25 = [v15 name];
      LOWORD(v28) = 1;
      LOBYTE(v27) = 0;
      v22 = [(WFLinkConfirmationDialogRequest *)self initWithTitle:v25 viewSnippet:v16 snippetAction:v17 encodedSnippetActionToolInvocation:v18 yesText:0 noText:0 attribution:v19 parameterInfo:v21 isContinueInAppRequest:v27 systemStyle:0 showPrompt:v28 destructive:?];
    }
  }

  return v22;
}

- (WFLinkConfirmationDialogRequest)initWithActionMetadata:(id)a3 showPrompt:(BOOL)a4 dialogString:(id)a5 viewSnippet:(id)a6 snippetAction:(id)a7 encodedSnippetActionToolInvocation:(id)a8 yesText:(id)a9 noText:(id)a10 attribution:(id)a11 parameterInfo:(id)a12 isContinueInAppRequest:(BOOL)a13 systemStyle:(id)a14 destructive:(BOOL)a15
{
  v18 = a4;
  v19 = a5;
  v35 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a14;
  if (!v18)
  {
    v27 = 0;
    goto LABEL_5;
  }

  v27 = v19;
  if (v19)
  {
LABEL_5:
    v28 = v27;
    goto LABEL_6;
  }

  v28 = WFLocalizedString(@"Ready to do it?");
LABEL_6:
  v29 = v28;
  BYTE1(v33) = a15;
  LOBYTE(v33) = v18;
  LOBYTE(v32) = a13;
  v30 = [(WFLinkConfirmationDialogRequest *)self initWithTitle:v28 viewSnippet:v35 snippetAction:v20 encodedSnippetActionToolInvocation:v21 yesText:v22 noText:v23 attribution:v24 parameterInfo:v25 isContinueInAppRequest:v32 systemStyle:v26 showPrompt:v33 destructive:?];

  return v30;
}

@end