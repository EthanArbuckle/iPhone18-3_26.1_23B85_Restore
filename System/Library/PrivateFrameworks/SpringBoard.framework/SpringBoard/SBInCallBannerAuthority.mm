@interface SBInCallBannerAuthority
- (BNConsideringDelegate)delegate;
- (int64_t)shouldOverlapPresentable:(id)a3 withPresentable:(id)a4;
- (int64_t)shouldPresentPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5;
- (void)mayChangeDecisionForResponsiblePresentable:(id)a3;
@end

@implementation SBInCallBannerAuthority

- (void)mayChangeDecisionForResponsiblePresentable:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained bannerAuthority:self mayChangeDecisionForResponsiblePresentable:v4];
}

- (int64_t)shouldPresentPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5
{
  v6 = a4;
  v7 = +[SBInCallBannerPresentableViewController requesterIdentifier];
  v8 = [v6 lastObject];

  if (a5)
  {
    v9 = v8;
    *a5 = v8;
  }

  v10 = [v8 requesterIdentifier];
  v11 = [v10 isEqualToString:v7];

  if (v11)
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [v8 isCallConnected] - 1;
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

- (int64_t)shouldOverlapPresentable:(id)a3 withPresentable:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SBInCallBannerPresentableViewController requesterIdentifier];
  v8 = [v6 requesterIdentifier];

  if ([v8 isEqualToString:v7])
  {
    v9 = -1;
  }

  else
  {
    v10 = [v5 requesterIdentifier];
    v9 = [v10 isEqualToString:v7] << 63 >> 63;
  }

  return v9;
}

- (BNConsideringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end