@interface WFLinkConfirmationDialogRequest
- (WFLinkConfirmationDialogRequest)initWithActionMetadata:(id)metadata showPrompt:(BOOL)prompt dialogString:(id)string viewSnippet:(id)snippet snippetAction:(id)action encodedSnippetActionToolInvocation:(id)invocation yesText:(id)text noText:(id)self0 attribution:(id)self1 parameterInfo:(id)self2 isContinueInAppRequest:(BOOL)self3 systemStyle:(id)self4 destructive:(BOOL)self5;
- (WFLinkConfirmationDialogRequest)initWithActionParameterMetadata:(id)metadata dialogString:(id)string viewSnippet:(id)snippet snippetAction:(id)action encodedSnippetActionToolInvocation:(id)invocation attribution:(id)attribution parameterInfo:(id)info;
- (WFLinkConfirmationDialogRequest)initWithCoder:(id)coder;
- (WFLinkConfirmationDialogRequest)initWithTitle:(id)title viewSnippet:(id)snippet snippetAction:(id)action encodedSnippetActionToolInvocation:(id)invocation yesText:(id)text noText:(id)noText attribution:(id)attribution parameterInfo:(id)self0 isContinueInAppRequest:(BOOL)self1 systemStyle:(id)self2 showPrompt:(BOOL)self3 destructive:(BOOL)self4;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkConfirmationDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = WFLinkConfirmationDialogRequest;
  coderCopy = coder;
  [(WFLinkSnippetDialogRequest *)&v10 encodeWithCoder:coderCopy];
  v5 = [(WFLinkConfirmationDialogRequest *)self title:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"title"];

  yesButton = [(WFLinkConfirmationDialogRequest *)self yesButton];
  [coderCopy encodeObject:yesButton forKey:@"yesButton"];

  noButton = [(WFLinkConfirmationDialogRequest *)self noButton];
  [coderCopy encodeObject:noButton forKey:@"noButton"];

  parameterInfo = [(WFLinkConfirmationDialogRequest *)self parameterInfo];
  [coderCopy encodeObject:parameterInfo forKey:@"parameterInfo"];

  [coderCopy encodeBool:-[WFLinkConfirmationDialogRequest isContinueInAppRequest](self forKey:{"isContinueInAppRequest"), @"isContinueInAppRequest"}];
  systemStyle = [(WFLinkConfirmationDialogRequest *)self systemStyle];
  [coderCopy encodeObject:systemStyle forKey:@"systemStyle"];

  [coderCopy encodeBool:-[WFLinkConfirmationDialogRequest isDestructive](self forKey:{"isDestructive"), @"isDestructive"}];
}

- (WFLinkConfirmationDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = WFLinkConfirmationDialogRequest;
  v5 = [(WFLinkSnippetDialogRequest *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"yesButton"];
    yesButton = v5->_yesButton;
    v5->_yesButton = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"noButton"];
    noButton = v5->_noButton;
    v5->_noButton = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterInfo"];
    parameterInfo = v5->_parameterInfo;
    v5->_parameterInfo = v12;

    v5->_isContinueInAppRequest = [coderCopy decodeBoolForKey:@"isContinueInAppRequest"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemStyle"];
    systemStyle = v5->_systemStyle;
    v5->_systemStyle = v14;

    v5->_isDestructive = [coderCopy decodeBoolForKey:@"isDestructive"];
    v16 = v5;
  }

  return v5;
}

- (WFLinkConfirmationDialogRequest)initWithTitle:(id)title viewSnippet:(id)snippet snippetAction:(id)action encodedSnippetActionToolInvocation:(id)invocation yesText:(id)text noText:(id)noText attribution:(id)attribution parameterInfo:(id)self0 isContinueInAppRequest:(BOOL)self1 systemStyle:(id)self2 showPrompt:(BOOL)self3 destructive:(BOOL)self4
{
  titleCopy = title;
  textCopy = text;
  noTextCopy = noText;
  infoCopy = info;
  styleCopy = style;
  v38.receiver = self;
  v38.super_class = WFLinkConfirmationDialogRequest;
  v23 = [(WFLinkSnippetDialogRequest *)&v38 initWithViewSnippet:snippet snippetAction:action encodedSnippetActionToolInvocation:invocation attribution:attribution showPrompt:prompt];
  if (v23)
  {
    v24 = [titleCopy copy];
    title = v23->_title;
    v23->_title = v24;

    if (textCopy)
    {
      v26 = textCopy;
    }

    else
    {
      v26 = WFLocalizedString(@"Yes");
    }

    v27 = v26;
    if (noTextCopy)
    {
      v28 = noTextCopy;
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

    objc_storeStrong(&v23->_parameterInfo, info);
    v23->_isContinueInAppRequest = request;
    objc_storeStrong(&v23->_systemStyle, style);
    v23->_isDestructive = destructive;
    v34 = v23;
  }

  return v23;
}

- (WFLinkConfirmationDialogRequest)initWithActionParameterMetadata:(id)metadata dialogString:(id)string viewSnippet:(id)snippet snippetAction:(id)action encodedSnippetActionToolInvocation:(id)invocation attribution:(id)attribution parameterInfo:(id)info
{
  metadataCopy = metadata;
  snippetCopy = snippet;
  actionCopy = action;
  invocationCopy = invocation;
  attributionCopy = attribution;
  infoCopy = info;
  v21 = infoCopy;
  if (string)
  {
    LOWORD(v28) = 1;
    LOBYTE(v27) = 0;
    v22 = [(WFLinkConfirmationDialogRequest *)self initWithTitle:string viewSnippet:snippetCopy snippetAction:actionCopy encodedSnippetActionToolInvocation:invocationCopy yesText:0 noText:0 attribution:attributionCopy parameterInfo:infoCopy isContinueInAppRequest:v27 systemStyle:0 showPrompt:v28 destructive:?];
  }

  else
  {
    title = [metadataCopy title];
    v24 = [title localizedStringWithPluralizationNumber:&unk_1F29312C0 forLocaleIdentifier:0];
    if (v24)
    {
      LOWORD(v28) = 1;
      LOBYTE(v27) = 0;
      v22 = [(WFLinkConfirmationDialogRequest *)self initWithTitle:v24 viewSnippet:snippetCopy snippetAction:actionCopy encodedSnippetActionToolInvocation:invocationCopy yesText:0 noText:0 attribution:attributionCopy parameterInfo:v21 isContinueInAppRequest:v27 systemStyle:0 showPrompt:v28 destructive:?];
    }

    else
    {
      name = [metadataCopy name];
      LOWORD(v28) = 1;
      LOBYTE(v27) = 0;
      v22 = [(WFLinkConfirmationDialogRequest *)self initWithTitle:name viewSnippet:snippetCopy snippetAction:actionCopy encodedSnippetActionToolInvocation:invocationCopy yesText:0 noText:0 attribution:attributionCopy parameterInfo:v21 isContinueInAppRequest:v27 systemStyle:0 showPrompt:v28 destructive:?];
    }
  }

  return v22;
}

- (WFLinkConfirmationDialogRequest)initWithActionMetadata:(id)metadata showPrompt:(BOOL)prompt dialogString:(id)string viewSnippet:(id)snippet snippetAction:(id)action encodedSnippetActionToolInvocation:(id)invocation yesText:(id)text noText:(id)self0 attribution:(id)self1 parameterInfo:(id)self2 isContinueInAppRequest:(BOOL)self3 systemStyle:(id)self4 destructive:(BOOL)self5
{
  promptCopy = prompt;
  stringCopy = string;
  snippetCopy = snippet;
  actionCopy = action;
  invocationCopy = invocation;
  textCopy = text;
  noTextCopy = noText;
  attributionCopy = attribution;
  infoCopy = info;
  styleCopy = style;
  if (!promptCopy)
  {
    v27 = 0;
    goto LABEL_5;
  }

  v27 = stringCopy;
  if (stringCopy)
  {
LABEL_5:
    v28 = v27;
    goto LABEL_6;
  }

  v28 = WFLocalizedString(@"Ready to do it?");
LABEL_6:
  v29 = v28;
  BYTE1(v33) = destructive;
  LOBYTE(v33) = promptCopy;
  LOBYTE(v32) = request;
  v30 = [(WFLinkConfirmationDialogRequest *)self initWithTitle:v28 viewSnippet:snippetCopy snippetAction:actionCopy encodedSnippetActionToolInvocation:invocationCopy yesText:textCopy noText:noTextCopy attribution:attributionCopy parameterInfo:infoCopy isContinueInAppRequest:v32 systemStyle:styleCopy showPrompt:v33 destructive:?];

  return v30;
}

@end