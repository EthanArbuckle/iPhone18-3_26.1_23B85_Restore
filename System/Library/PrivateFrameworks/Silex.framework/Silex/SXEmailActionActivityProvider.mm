@interface SXEmailActionActivityProvider
- (SXEmailActionActivityProvider)initWithMailPresenter:(id)a3;
- (id)activityGroupForAction:(id)a3;
- (void)composeMailTo:(id)a3 subject:(id)a4;
@end

@implementation SXEmailActionActivityProvider

- (SXEmailActionActivityProvider)initWithMailPresenter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXEmailActionActivityProvider;
  v6 = [(SXEmailActionActivityProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailPresenter, a3);
  }

  return v7;
}

- (id)activityGroupForAction:(id)a3
{
  v4 = a3;
  v5 = [SXActionActivityGroup alloc];
  v6 = [v4 recipient];
  v7 = [(SXActionActivityGroup *)v5 initWithTitle:v6];

  v8 = [(SXEmailActionActivityProvider *)self mailPresenter];
  v9 = [v8 canComposeMail] ^ 1;

  v10 = [SXBlockActionActivity alloc];
  v11 = SXBundle();
  v12 = [v11 localizedStringForKey:@"New Message" value:&stru_1F532F6C0 table:0];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __56__SXEmailActionActivityProvider_activityGroupForAction___block_invoke;
  v25 = &unk_1E84FEDD0;
  v26 = self;
  v27 = v4;
  v13 = v4;
  v14 = [(SXBlockActionActivity *)v10 initWithLabel:v12 type:v9 block:&v22];
  [(SXActionActivityGroup *)v7 addActivity:v14, v22, v23, v24, v25, v26];

  v15 = [SXPasteboardActionActivity alloc];
  v16 = SXBundle();
  v17 = [v16 localizedStringForKey:@"Copy" value:&stru_1F532F6C0 table:0];
  v18 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v19 = [v13 recipient];
  v20 = [(SXPasteboardActionActivity *)v15 initWithLabel:v17 type:1 pasteboard:v18 string:v19];
  [(SXActionActivityGroup *)v7 addActivity:v20];

  return v7;
}

void __56__SXEmailActionActivityProvider_activityGroupForAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) recipient];
  v3 = [*(a1 + 40) subject];
  [v2 composeMailTo:v4 subject:v3];
}

- (void)composeMailTo:(id)a3 subject:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[SXPresentableMail alloc] initWithRecipient:v7 subject:v6];

  v8 = [(SXEmailActionActivityProvider *)self mailPresenter];
  [v8 presentMail:v9];
}

@end