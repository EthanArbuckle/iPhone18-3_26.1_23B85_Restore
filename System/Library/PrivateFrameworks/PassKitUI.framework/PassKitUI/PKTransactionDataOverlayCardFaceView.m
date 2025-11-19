@interface PKTransactionDataOverlayCardFaceView
- (PKTransactionDataOverlayCardFaceView)initWithFrame:(CGRect)a3 pass:(id)a4 rendererState:(id)a5 fetchInitialContentSynchronously:(BOOL)a6;
- (void)_updateContentIfPossible;
- (void)_updateMagnitudesWithStyle:(int64_t)a3 completion:(id)a4;
- (void)dealloc;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
- (void)invalidate;
- (void)layoutSubviews;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateCategoryVisualizationWithStyle:(int64_t)a4;
- (void)setContentSuppressed:(BOOL)a3;
@end

@implementation PKTransactionDataOverlayCardFaceView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKTransactionDataOverlayCardFaceView;
  [(PKTransactionDataOverlayCardFaceView *)&v4 layoutSubviews];
  overlayView = self->_overlayView;
  [(PKTransactionDataOverlayCardFaceView *)self bounds];
  [(PKCategoryVisualizationCardView *)overlayView setFrame:?];
}

- (PKTransactionDataOverlayCardFaceView)initWithFrame:(CGRect)a3 pass:(id)a4 rendererState:(id)a5 fetchInitialContentSynchronously:(BOOL)a6
{
  v47 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v58[8] = *MEMORY[0x1E69E9840];
  v50 = a4;
  v51 = a5;
  v55.receiver = self;
  v55.super_class = PKTransactionDataOverlayCardFaceView;
  v13 = [(PKTransactionDataOverlayCardFaceView *)&v55 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_pass, a4);
    v15 = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v14->_paymentService;
    v14->_paymentService = v15;

    [(PKPaymentService *)v14->_paymentService registerObserver:v14];
    v17 = [MEMORY[0x1E69DC888] whiteColor];
    [(PKTransactionDataOverlayCardFaceView *)v14 setBackgroundColor:v17];

    v18 = [(PKTransactionDataOverlayCardFaceView *)v14 layer];
    PKPassFrontFaceContentSize();
    [objc_opt_class() borderWidth];
    v19 = [objc_opt_class() borderColor];
    v20 = v19;
    [v19 CGColor];
    PKPaymentStyleApplyCorners();

    v14->_contentSuppressed = PKDeviceLocked();
    v21 = objc_alloc(MEMORY[0x1E69BC750]);
    [(PKTransactionDataOverlayCardFaceView *)v14 bounds];
    v22 = [v21 initWithFrame:?];
    overlayView = v14->_overlayView;
    v14->_overlayView = v22;

    [(PKCategoryVisualizationCardView *)v14->_overlayView setBlurDisabled:PKBroadwayDisableDynamicCardBlur()];
    v48 = v14->_overlayView;
    v49 = PKBrightColorForMerchantCategory();
    v58[0] = v49;
    v24 = PKBrightColorForMerchantCategory();
    v58[1] = v24;
    v25 = PKBrightColorForMerchantCategory();
    v58[2] = v25;
    v26 = PKBrightColorForMerchantCategory();
    v58[3] = v26;
    v27 = PKBrightColorForMerchantCategory();
    v58[4] = v27;
    v28 = PKBrightColorForMerchantCategory();
    v58[5] = v28;
    v29 = PKBrightColorForMerchantCategory();
    v58[6] = v29;
    v30 = PKBrightColorForMerchantCategory();
    v58[7] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:8];
    [(PKCategoryVisualizationCardView *)v48 setBucketColors:v31];

    [(PKTransactionDataOverlayCardFaceView *)v14 addSubview:v14->_overlayView];
    v32 = [(PKPass *)v14->_pass liveRenderedImageSet];
    if (v14->_contentSuppressed)
    {

      v33 = 0;
    }

    else
    {
      v33 = v51;
    }

    v51 = v33;
    [(PKCategoryVisualizationCardView *)v14->_overlayView renderWithTextures:v32 rendererState:?];
    if (!v14->_contentSuppressed)
    {
      if (v51 || !v47)
      {
        [(PKTransactionDataOverlayCardFaceView *)v14 _updateMagnitudesWithStyle:0 completion:0];
      }

      else
      {
        v34 = v14->_overlayView;
        v35 = v14->_paymentService;
        v36 = [(PKPass *)v14->_pass uniqueID];
        v37 = [(PKPaymentService *)v35 categoryVisualizationMagnitudesForPassUniqueID:v36];
        [(PKCategoryVisualizationCardView *)v34 setMagnitudes:v37 withStyle:0];
      }
    }

    v14->_unlockNotifyToken = -1;
    v38 = +[PKUIForegroundActiveArbiter sharedInstance];
    v39 = v38;
    if (v38)
    {
      v14->_foregroundActive = ([v38 registerObserver:v14] >> 8) & 1;
    }

    else
    {
      v14->_foregroundActive = 1;
      if (v14->_contentSuppressed)
      {
        objc_initWeak(&location, v14);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __106__PKTransactionDataOverlayCardFaceView_initWithFrame_pass_rendererState_fetchInitialContentSynchronously___block_invoke;
        aBlock[3] = &unk_1E8012010;
        objc_copyWeak(&v53, &location);
        v40 = _Block_copy(aBlock);
        v41 = *MEMORY[0x1E69B1A70];
        v42 = MEMORY[0x1E69E96A0];
        v43 = MEMORY[0x1E69E96A0];
        LODWORD(v41) = notify_register_dispatch(v41, &v14->_unlockNotifyToken, v42, v40);

        if (v41)
        {
          v44 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v57 = v14;
            _os_log_impl(&dword_1BD026000, v44, OS_LOG_TYPE_DEFAULT, "PKTransactionDataOverlayCardFaceView (%p): failed to register for unlock notification.", buf, 0xCu);
          }

          unlockNotifyToken = v14->_unlockNotifyToken;
          if (unlockNotifyToken != -1)
          {
            notify_cancel(unlockNotifyToken);
            v14->_unlockNotifyToken = -1;
          }
        }

        objc_destroyWeak(&v53);
        objc_destroyWeak(&location);
      }
    }
  }

  return v14;
}

void __106__PKTransactionDataOverlayCardFaceView_initWithFrame_pass_rendererState_fetchInitialContentSynchronously___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateContentIfPossible];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  [(PKTransactionDataOverlayCardFaceView *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKTransactionDataOverlayCardFaceView;
  [(PKTransactionDataOverlayCardFaceView *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v3 = +[PKUIForegroundActiveArbiter sharedInstance];
    [v3 unregisterObserver:self];

    [(PKCategoryVisualizationCardView *)self->_overlayView invalidate];
    [(PKPaymentService *)self->_paymentService unregisterObserver:self];
    paymentService = self->_paymentService;
    self->_paymentService = 0;

    unlockNotifyToken = self->_unlockNotifyToken;
    if (unlockNotifyToken != -1)
    {
      notify_cancel(unlockNotifyToken);
      self->_unlockNotifyToken = -1;
    }
  }
}

- (void)setContentSuppressed:(BOOL)a3
{
  if (self->_contentSuppressed == !a3)
  {
    self->_contentSuppressed = a3;
    if (a3)
    {
      [(PKCategoryVisualizationCardView *)self->_overlayView setMagnitudes:0 withStyle:2];
    }

    else
    {
      [(PKTransactionDataOverlayCardFaceView *)self _updateContentIfPossible];
    }
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateCategoryVisualizationWithStyle:(int64_t)a4
{
  v6 = a3;
  v7 = [(PKPass *)self->_pass uniqueID];
  v10 = v6;
  v8 = v7;
  if (v8 == v10)
  {

    goto LABEL_7;
  }

  if (!v10 || !v8)
  {

    goto LABEL_9;
  }

  v9 = [v10 isEqualToString:v8];

  if (v9)
  {
LABEL_7:
    [(PKTransactionDataOverlayCardFaceView *)self _updateMagnitudesWithStyle:a4 completion:0];
  }

LABEL_9:
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  v4 = (*&a4.var0 >> 8) & 1;
  if (v4 != self->_foregroundActive)
  {
    self->_foregroundActive = v4;
    [(PKTransactionDataOverlayCardFaceView *)self _updateContentIfPossible];
  }
}

- (void)_updateContentIfPossible
{
  if (self->_foregroundActive)
  {
    if (!self->_contentSuppressed || (v4 = PKDeviceLocked(), self->_contentSuppressed = v4, (v4 & 1) == 0))
    {
      unlockNotifyToken = self->_unlockNotifyToken;
      if (unlockNotifyToken != -1)
      {
        notify_cancel(unlockNotifyToken);
        self->_unlockNotifyToken = -1;
      }
    }

    [(PKTransactionDataOverlayCardFaceView *)self _updateMagnitudesWithStyle:0 completion:0];
  }
}

- (void)_updateMagnitudesWithStyle:(int64_t)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (self->_paymentService && !self->_contentSuppressed)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = self;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKTransactionDataOverlayCardFaceView (%p): fetching magnitudes.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    paymentService = self->_paymentService;
    v10 = [(PKPass *)self->_pass uniqueID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__PKTransactionDataOverlayCardFaceView__updateMagnitudesWithStyle_completion___block_invoke;
    v11[3] = &unk_1E8012060;
    objc_copyWeak(v13, buf);
    v13[1] = a3;
    v12 = v7;
    [(PKPaymentService *)paymentService categoryVisualizationMagnitudesForPassUniqueID:v10 completion:v11];

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }

  else if (v6)
  {
    (*(v6 + 2))(v6);
  }
}

void __78__PKTransactionDataOverlayCardFaceView__updateMagnitudesWithStyle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__PKTransactionDataOverlayCardFaceView__updateMagnitudesWithStyle_completion___block_invoke_2;
  v6[3] = &unk_1E8012038;
  objc_copyWeak(v9, (a1 + 40));
  v4 = *(a1 + 48);
  v7 = v3;
  v9[1] = v4;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(v9);
}

void __78__PKTransactionDataOverlayCardFaceView__updateMagnitudesWithStyle_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[53] setMagnitudes:*(a1 + 32) withStyle:*(a1 + 56)];
    v3 = v5;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v5;
  }
}

@end