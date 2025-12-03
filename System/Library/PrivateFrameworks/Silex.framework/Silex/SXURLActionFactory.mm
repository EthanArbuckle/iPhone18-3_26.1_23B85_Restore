@interface SXURLActionFactory
- (id)actionForURL:(id)l analytics:(id)analytics openInBrowser:(BOOL)browser;
@end

@implementation SXURLActionFactory

- (id)actionForURL:(id)l analytics:(id)analytics openInBrowser:(BOOL)browser
{
  browserCopy = browser;
  lCopy = l;
  analyticsCopy = analytics;
  if (!lCopy)
  {
    host = 0;
    goto LABEL_9;
  }

  v9 = MEMORY[0x1E695DFF8];
  scheme = [lCopy scheme];
  if ([v9 isDefaultCallingAppScheme:scheme] & 1) != 0 || (objc_msgSend(lCopy, "isFaceTimeURL"))
  {

LABEL_5:
    host = [lCopy host];

    if (!host)
    {
      goto LABEL_9;
    }

    v12 = [SXPhoneNumberAction alloc];
    host2 = [lCopy host];
    host = [(SXPhoneNumberAction *)v12 initWithPhoneNumber:host2];
    goto LABEL_7;
  }

  isFaceTimeAudioURL = [lCopy isFaceTimeAudioURL];

  if (isFaceTimeAudioURL)
  {
    goto LABEL_5;
  }

  scheme2 = [lCopy scheme];
  v17 = [scheme2 isEqualToString:@"mailto"];

  if (v17)
  {
    host2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    v18 = [host2 queryValueForName:@"to"];
    v19 = [host2 queryValueForName:@"subject"];
    host = [[SXEmailAction alloc] initWithRecipient:v18 subject:v19];

LABEL_7:
    goto LABEL_9;
  }

  scheme3 = [lCopy scheme];
  v21 = [scheme3 isEqualToString:@"webcal"];

  if (v21)
  {
    host = [lCopy host];

    if (!host)
    {
      goto LABEL_9;
    }

    v22 = [[SXWebCalAction alloc] initWithURL:lCopy];
    goto LABEL_26;
  }

  scheme4 = [lCopy scheme];
  if ([scheme4 isEqualToString:@"action"])
  {
    host3 = [lCopy host];
    v25 = [host3 isEqualToString:@"close"];

    if (v25)
    {
      v22 = objc_alloc_init(SXCloseAction);
LABEL_26:
      host = v22;
      goto LABEL_9;
    }
  }

  else
  {
  }

  scheme5 = [lCopy scheme];
  if (scheme5 || ([lCopy host], (scheme5 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_25:
    v22 = [[SXLinkAction alloc] initWithURL:lCopy analytics:analyticsCopy openInBrowser:browserCopy];
    goto LABEL_26;
  }

  fragment = [lCopy fragment];

  if (!fragment)
  {
    goto LABEL_25;
  }

  v28 = [SXComponentBookmark alloc];
  fragment2 = [lCopy fragment];
  v30 = [(SXComponentBookmark *)v28 initWithComponentIdentifier:fragment2];

  host = [[SXBookmarkAction alloc] initWithBookmark:v30];
LABEL_9:

  return host;
}

@end