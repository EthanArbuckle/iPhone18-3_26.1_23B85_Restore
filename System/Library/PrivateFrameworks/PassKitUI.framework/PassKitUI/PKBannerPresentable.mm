@interface PKBannerPresentable
- (BNPresentableContext)presentableContext;
- (NSString)requesterIdentifier;
- (void)_finish;
- (void)_revoke;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason;
- (void)userInteractionDidEndForBannerForPresentable:(id)presentable;
- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable;
@end

@implementation PKBannerPresentable

void __43__PKBannerPresentable__postWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, v5, a3);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_revoke
{
  v16 = *MEMORY[0x1E69E9840];
  if (self && (*(self + 25) & 1) == 0)
  {
    *(self + 25) = 1;
    if (*(self + 26) != 1)
    {
LABEL_11:
      [*(self + 40) setPresentable:0];
      [*(self + 40) revoked];
      [(PKBannerPresentable *)self _finish];
      return;
    }

    *(self + 26) = 0;
    _source = [(PKBannerPresentationManager *)*(self + 8) _source];
    v3 = *(self + 16);
    v11 = 0;
    v4 = [_source revokePresentableWithRequestIdentifier:v3 reason:@"dismiss" animated:1 userInfo:0 error:&v11];
    v5 = v11;

    v6 = PKLogFacilityTypeGetObject();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v7)
      {
        *buf = 134217984;
        selfCopy2 = self;
        v8 = "PKBannerPresentable (%p): revoked.";
        v9 = v6;
        v10 = 12;
LABEL_9:
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }

    else if (v7)
    {
      *buf = 134218242;
      selfCopy2 = self;
      v14 = 2112;
      v15 = v5;
      v8 = "PKBannerPresentable (%p): failed to revoke - %@.";
      v9 = v6;
      v10 = 22;
      goto LABEL_9;
    }

    goto LABEL_11;
  }
}

- (void)_finish
{
  if (self)
  {
    v2 = *(self + 48);
    *(self + 48) = 0;

    v3 = *(self + 56);
    if (v3)
    {
      v5 = _Block_copy(v3);
      v4 = *(self + 56);
      *(self + 56) = 0;

      v5[2](v5, self, *(self + 24));
    }
  }
}

- (NSString)requesterIdentifier
{
  manager = self->_manager;
  if (manager)
  {
    v4 = manager->_requesterIdentifier;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController presentableWillAppearAsBanner:bannerCopy];
  }
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController presentableDidAppearAsBanner:bannerCopy];
  }

  didStartHandler = self->_didStartHandler;
  if (didStartHandler)
  {
    v5 = _Block_copy(didStartHandler);
    v6 = self->_didStartHandler;
    self->_didStartHandler = 0;

    v5[2](v5, self);
  }
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  v13 = *MEMORY[0x1E69E9840];
  bannerCopy = banner;
  reasonCopy = reason;
  if (self->_needsRevoke)
  {
    self->_needsRevoke = 0;
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      selfCopy = self;
      v11 = 2112;
      v12 = reasonCopy;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKBannerPresentable (%p): implicitly revoked due to disappearance - %@.", &v9, 0x16u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController presentableWillDisappearAsBanner:bannerCopy withReason:reasonCopy];
  }

  [(PKBannerPresentable *)self _finish];
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController presentableDidDisappearAsBanner:bannerCopy withReason:reasonCopy];
  }

  [(PKBannerPresentable *)self _revoke];
}

- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason
{
  v13 = *MEMORY[0x1E69E9840];
  bannerCopy = banner;
  reasonCopy = reason;
  if (self->_needsRevoke)
  {
    self->_needsRevoke = 0;
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      selfCopy = self;
      v11 = 2112;
      v12 = reasonCopy;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKBannerPresentable (%p): implicitly revoked due to appearance failure - %@.", &v9, 0x16u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController presentableWillNotAppearAsBanner:bannerCopy withReason:reasonCopy];
  }

  [(PKBannerPresentable *)self _revoke];
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController userInteractionWillBeginForBannerForPresentable:presentableCopy];
  }
}

- (void)userInteractionDidEndForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController userInteractionDidEndForBannerForPresentable:presentableCopy];
  }
}

- (BNPresentableContext)presentableContext
{
  WeakRetained = objc_loadWeakRetained(&self->_presentableContext);

  return WeakRetained;
}

@end