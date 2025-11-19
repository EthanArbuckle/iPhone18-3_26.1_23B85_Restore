@interface WFLinkChoiceDialogRequest
- (WFLinkChoiceDialogRequest)initWithCoder:(id)a3;
- (WFLinkChoiceDialogRequest)initWithRequest:(id)a3 title:(id)a4 attribution:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLinkChoiceDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFLinkChoiceDialogRequest;
  v4 = a3;
  [(WFLinkSnippetDialogRequest *)&v8 encodeWithCoder:v4];
  v5 = [(WFLinkChoiceDialogRequest *)self request:v8.receiver];
  [v4 encodeObject:v5 forKey:@"request"];

  v6 = [(WFLinkChoiceDialogRequest *)self title];
  [v4 encodeObject:v6 forKey:@"title"];

  v7 = [(WFLinkChoiceDialogRequest *)self buttons];
  [v4 encodeObject:v7 forKey:@"buttons"];
}

- (WFLinkChoiceDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WFLinkChoiceDialogRequest;
  v5 = [(WFLinkSnippetDialogRequest *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"request"];
    request = v5->_request;
    v5->_request = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"buttons"];
    buttons = v5->_buttons;
    v5->_buttons = v13;

    v15 = v5;
  }

  return v5;
}

- (WFLinkChoiceDialogRequest)initWithRequest:(id)a3 title:(id)a4 attribution:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 viewSnippet];
  v21.receiver = self;
  v21.super_class = WFLinkChoiceDialogRequest;
  v13 = [(WFLinkSnippetDialogRequest *)&v21 initWithViewSnippet:v12 snippetAction:0 encodedSnippetActionToolInvocation:0 attribution:v11 showPrompt:1];

  if (v13)
  {
    objc_storeStrong(&v13->_request, a3);
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [v9 options];
    v17 = [v16 if_map:&__block_literal_global_9645];
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