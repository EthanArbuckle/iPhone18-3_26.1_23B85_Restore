@interface WFLinkChoiceDialogRequest
- (WFLinkChoiceDialogRequest)initWithCoder:(id)coder;
- (WFLinkChoiceDialogRequest)initWithRequest:(id)request title:(id)title attribution:(id)attribution;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkChoiceDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WFLinkChoiceDialogRequest;
  coderCopy = coder;
  [(WFLinkSnippetDialogRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(WFLinkChoiceDialogRequest *)self request:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"request"];

  title = [(WFLinkChoiceDialogRequest *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  buttons = [(WFLinkChoiceDialogRequest *)self buttons];
  [coderCopy encodeObject:buttons forKey:@"buttons"];
}

- (WFLinkChoiceDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = WFLinkChoiceDialogRequest;
  v5 = [(WFLinkSnippetDialogRequest *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"];
    request = v5->_request;
    v5->_request = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"buttons"];
    buttons = v5->_buttons;
    v5->_buttons = v13;

    v15 = v5;
  }

  return v5;
}

- (WFLinkChoiceDialogRequest)initWithRequest:(id)request title:(id)title attribution:(id)attribution
{
  requestCopy = request;
  titleCopy = title;
  attributionCopy = attribution;
  viewSnippet = [requestCopy viewSnippet];
  v21.receiver = self;
  v21.super_class = WFLinkChoiceDialogRequest;
  v13 = [(WFLinkSnippetDialogRequest *)&v21 initWithViewSnippet:viewSnippet snippetAction:0 encodedSnippetActionToolInvocation:0 attribution:attributionCopy showPrompt:1];

  if (v13)
  {
    objc_storeStrong(&v13->_request, request);
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    options = [requestCopy options];
    v17 = [options if_map:&__block_literal_global_9645];
    buttons = v13->_buttons;
    v13->_buttons = v17;

    v19 = v13;
  }

  return v13;
}

WFDialogButton *__63__WFLinkChoiceDialogRequest_initWithRequest_title_attribution___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 style];
  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (v3 == 2);
  }

  v5 = [WFDialogButton alloc];
  v6 = [v2 identifier];
  v7 = [v6 UUIDString];
  v8 = [v2 title];

  v9 = [v8 localizedStringWithPluralizationNumber:&unk_1F29311E8 forLocaleIdentifier:0];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F28FBBB8;
  }

  v12 = [(WFDialogButton *)v5 initWithIdentifier:v7 title:v11 style:v4];

  return v12;
}

@end