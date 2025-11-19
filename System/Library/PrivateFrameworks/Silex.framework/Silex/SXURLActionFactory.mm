@interface SXURLActionFactory
- (id)actionForURL:(id)a3 analytics:(id)a4 openInBrowser:(BOOL)a5;
@end

@implementation SXURLActionFactory

- (id)actionForURL:(id)a3 analytics:(id)a4 openInBrowser:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v9 = MEMORY[0x1E695DFF8];
  v10 = [v7 scheme];
  if ([v9 isDefaultCallingAppScheme:v10] & 1) != 0 || (objc_msgSend(v7, "isFaceTimeURL"))
  {

LABEL_5:
    v11 = [v7 host];

    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = [SXPhoneNumberAction alloc];
    v13 = [v7 host];
    v11 = [(SXPhoneNumberAction *)v12 initWithPhoneNumber:v13];
    goto LABEL_7;
  }

  v15 = [v7 isFaceTimeAudioURL];

  if (v15)
  {
    goto LABEL_5;
  }

  v16 = [v7 scheme];
  v17 = [v16 isEqualToString:@"mailto"];

  if (v17)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v7 resolvingAgainstBaseURL:0];
    v18 = [v13 queryValueForName:@"to"];
    v19 = [v13 queryValueForName:@"subject"];
    v11 = [[SXEmailAction alloc] initWithRecipient:v18 subject:v19];

LABEL_7:
    goto LABEL_9;
  }

  v20 = [v7 scheme];
  v21 = [v20 isEqualToString:@"webcal"];

  if (v21)
  {
    v11 = [v7 host];

    if (!v11)
    {
      goto LABEL_9;
    }

    v22 = [[SXWebCalAction alloc] initWithURL:v7];
    goto LABEL_26;
  }

  v23 = [v7 scheme];
  if ([v23 isEqualToString:@"action"])
  {
    v24 = [v7 host];
    v25 = [v24 isEqualToString:@"close"];

    if (v25)
    {
      v22 = objc_alloc_init(SXCloseAction);
LABEL_26:
      v11 = v22;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v26 = [v7 scheme];
  if (v26 || ([v7 host], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_25:
    v22 = [[SXLinkAction alloc] initWithURL:v7 analytics:v8 openInBrowser:v5];
    goto LABEL_26;
  }

  v27 = [v7 fragment];

  if (!v27)
  {
    goto LABEL_25;
  }

  v28 = [SXComponentBookmark alloc];
  v29 = [v7 fragment];
  v30 = [(SXComponentBookmark *)v28 initWithComponentIdentifier:v29];

  v11 = [[SXBookmarkAction alloc] initWithBookmark:v30];
LABEL_9:

  return v11;
}

@end