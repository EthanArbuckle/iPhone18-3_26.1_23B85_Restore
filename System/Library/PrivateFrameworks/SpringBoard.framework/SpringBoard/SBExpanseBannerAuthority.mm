@interface SBExpanseBannerAuthority
- (int64_t)shouldOverlapPresentable:(id)presentable withPresentable:(id)withPresentable;
@end

@implementation SBExpanseBannerAuthority

- (int64_t)shouldOverlapPresentable:(id)presentable withPresentable:(id)withPresentable
{
  presentableCopy = presentable;
  withPresentableCopy = withPresentable;
  requesterIdentifier = [presentableCopy requesterIdentifier];
  v8 = [requesterIdentifier isEqualToString:@"com.apple.ConversationKit"];
  if (!v8)
  {
    v23 = 1;
LABEL_9:
    v24 = v8 ^ 1;

    goto LABEL_13;
  }

  requestIdentifier = [presentableCopy requestIdentifier];
  v10 = [requestIdentifier hasPrefix:@"com.apple.conversationController"];

  if (v10)
  {
    requestIdentifier2 = [presentableCopy requestIdentifier];
    v12 = [requestIdentifier2 hasPrefix:@"com.apple.conversationController.HUD"];

    if (v12)
    {
      requesterIdentifier = [presentableCopy viewController];
      view = [requesterIdentifier view];
      [view bounds];
      v15 = v14;
      v17 = v16;
      viewController = [presentableCopy viewController];
      parentViewController = [viewController parentViewController];
      view2 = [parentViewController view];
      [view2 bounds];
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
  requesterIdentifier2 = [withPresentableCopy requesterIdentifier];
  v26 = [requesterIdentifier2 isEqualToString:@"com.apple.ConversationKit"];
  if (v26)
  {
    requestIdentifier3 = [withPresentableCopy requestIdentifier];
    v28 = [requestIdentifier3 hasPrefix:@"com.apple.conversationController"];

    if (!v28)
    {
      v29 = 0;
      v26 = 0;
      goto LABEL_19;
    }

    requesterIdentifier2 = [withPresentableCopy requestIdentifier];
    v29 = [requesterIdentifier2 hasPrefix:@"com.apple.conversationController.HUD"];
  }

  else
  {
    v29 = 0;
  }

LABEL_19:
  return ((v24 & v29 | ~(v23 | v26)) << 63) >> 63;
}

@end