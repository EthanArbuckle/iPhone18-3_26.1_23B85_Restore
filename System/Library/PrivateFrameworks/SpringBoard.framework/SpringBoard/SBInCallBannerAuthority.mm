@interface SBInCallBannerAuthority
- (BNConsideringDelegate)delegate;
- (int64_t)shouldOverlapPresentable:(id)presentable withPresentable:(id)withPresentable;
- (int64_t)shouldPresentPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable;
- (void)mayChangeDecisionForResponsiblePresentable:(id)presentable;
@end

@implementation SBInCallBannerAuthority

- (void)mayChangeDecisionForResponsiblePresentable:(id)presentable
{
  presentableCopy = presentable;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained bannerAuthority:self mayChangeDecisionForResponsiblePresentable:presentableCopy];
}

- (int64_t)shouldPresentPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable
{
  presentablesCopy = presentables;
  v7 = +[SBInCallBannerPresentableViewController requesterIdentifier];
  lastObject = [presentablesCopy lastObject];

  if (responsiblePresentable)
  {
    v9 = lastObject;
    *responsiblePresentable = lastObject;
  }

  requesterIdentifier = [lastObject requesterIdentifier];
  v11 = [requesterIdentifier isEqualToString:v7];

  if (v11)
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [lastObject isCallConnected] - 1;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)shouldOverlapPresentable:(id)presentable withPresentable:(id)withPresentable
{
  presentableCopy = presentable;
  withPresentableCopy = withPresentable;
  v7 = +[SBInCallBannerPresentableViewController requesterIdentifier];
  requesterIdentifier = [withPresentableCopy requesterIdentifier];

  if ([requesterIdentifier isEqualToString:v7])
  {
    v9 = -1;
  }

  else
  {
    requesterIdentifier2 = [presentableCopy requesterIdentifier];
    v9 = [requesterIdentifier2 isEqualToString:v7] << 63 >> 63;
  }

  return v9;
}

- (BNConsideringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end