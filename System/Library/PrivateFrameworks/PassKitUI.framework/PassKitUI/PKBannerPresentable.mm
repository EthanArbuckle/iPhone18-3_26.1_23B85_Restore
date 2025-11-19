@interface PKBannerPresentable
- (BNPresentableContext)presentableContext;
- (NSString)requesterIdentifier;
- (void)_finish;
- (void)_revoke;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4;
- (void)userInteractionDidEndForBannerForPresentable:(id)a3;
- (void)userInteractionWillBeginForBannerForPresentable:(id)a3;
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
  if (a1 && (*(a1 + 25) & 1) == 0)
  {
    *(a1 + 25) = 1;
    if (*(a1 + 26) != 1)
    {
LABEL_11:
      [*(a1 + 40) setPresentable:0];
      [*(a1 + 40) revoked];
      [(PKBannerPresentable *)a1 _finish];
      return;
    }

    *(a1 + 26) = 0;
    v2 = [(PKBannerPresentationManager *)*(a1 + 8) _source];
    v3 = *(a1 + 16);
    v11 = 0;
    v4 = [v2 revokePresentableWithRequestIdentifier:v3 reason:@"dismiss" animated:1 userInfo:0 error:&v11];
    v5 = v11;

    v6 = PKLogFacilityTypeGetObject();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v7)
      {
        *buf = 134217984;
        v13 = a1;
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
      v13 = a1;
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
  if (a1)
  {
    v2 = *(a1 + 48);
    *(a1 + 48) = 0;

    v3 = *(a1 + 56);
    if (v3)
    {
      v5 = _Block_copy(v3);
      v4 = *(a1 + 56);
      *(a1 + 56) = 0;

      v5[2](v5, a1, *(a1 + 24));
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

- (void)presentableWillAppearAsBanner:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController presentableWillAppearAsBanner:v4];
  }
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController presentableDidAppearAsBanner:v7];
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

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_needsRevoke)
  {
    self->_needsRevoke = 0;
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      v10 = self;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKBannerPresentable (%p): implicitly revoked due to disappearance - %@.", &v9, 0x16u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController presentableWillDisappearAsBanner:v6 withReason:v7];
  }

  [(PKBannerPresentable *)self _finish];
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController presentableDidDisappearAsBanner:v7 withReason:v6];
  }

  [(PKBannerPresentable *)self _revoke];
}

- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_needsRevoke)
  {
    self->_needsRevoke = 0;
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      v10 = self;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKBannerPresentable (%p): implicitly revoked due to appearance failure - %@.", &v9, 0x16u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController presentableWillNotAppearAsBanner:v6 withReason:v7];
  }

  [(PKBannerPresentable *)self _revoke];
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController userInteractionWillBeginForBannerForPresentable:v4];
  }
}

- (void)userInteractionDidEndForBannerForPresentable:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(PKBannerViewController *)self->_viewController userInteractionDidEndForBannerForPresentable:v4];
  }
}

- (BNPresentableContext)presentableContext
{
  WeakRetained = objc_loadWeakRetained(&self->_presentableContext);

  return WeakRetained;
}

@end