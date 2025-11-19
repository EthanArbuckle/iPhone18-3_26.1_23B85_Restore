@interface SBExpanseBannerAuthority
- (int64_t)shouldOverlapPresentable:(id)a3 withPresentable:(id)a4;
@end

@implementation SBExpanseBannerAuthority

- (int64_t)shouldOverlapPresentable:(id)a3 withPresentable:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 requesterIdentifier];
  v8 = [v7 isEqualToString:@"com.apple.ConversationKit"];
  if (!v8)
  {
    v23 = 1;
LABEL_9:
    v24 = v8 ^ 1;

    goto LABEL_13;
  }

  v9 = [v5 requestIdentifier];
  v10 = [v9 hasPrefix:@"com.apple.conversationController"];

  if (v10)
  {
    v11 = [v5 requestIdentifier];
    v12 = [v11 hasPrefix:@"com.apple.conversationController.HUD"];

    if (v12)
    {
      v7 = [v5 viewController];
      v13 = [v7 view];
      [v13 bounds];
      v15 = v14;
      v17 = v16;
      v18 = [v5 viewController];
      v19 = [v18 parentViewController];
      v20 = [v19 view];
      [v20 bounds];
      v23 = v17 == v22 && v15 == v21;

      goto LABEL_9;
    }

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v23 = 1;
LABEL_13:
  v25 = [v6 requesterIdentifier];
  v26 = [v25 isEqualToString:@"com.apple.ConversationKit"];
  if (v26)
  {
    v27 = [v6 requestIdentifier];
    v28 = [v27 hasPrefix:@"com.apple.conversationController"];

    if (!v28)
    {
      v29 = 0;
      v26 = 0;
      goto LABEL_19;
    }

    v25 = [v6 requestIdentifier];
    v29 = [v25 hasPrefix:@"com.apple.conversationController.HUD"];
  }

  else
  {
    v29 = 0;
  }

LABEL_19:
  return ((v24 & v29 | ~(v23 | v26)) << 63) >> 63;
}

@end