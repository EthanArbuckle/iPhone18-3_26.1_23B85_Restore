@interface PKPassFaceView
+ (Class)_faceClassForStyle:(int64_t)a3;
+ (id)newFrontFaceViewForStyle:(int64_t)a3;
- (BOOL)flushFormattedFieldValues;
- (CGSize)cobrandLogoSize;
- (CGSize)contentSize;
- (PKPassFaceView)initWithStyle:(int64_t)a3;
- (PKPassFaceViewDelegate)delegate;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)shadowBackgroundInsets;
- (UIEdgeInsets)shadowInsets;
- (id)_viewSetForContentViewType:(int64_t)a3;
- (void)_createBucketsIfNecessary;
- (void)_createContentViewsForRegions:(unint64_t)a3;
- (void)_createDimmingFilterIfNecessary;
- (void)_createInvariantViewsForRegions:(unint64_t)a3;
- (void)_flushContentViewsForRegions:(unint64_t)a3;
- (void)_handleTimeOrLocaleChange:(id)a3;
- (void)_loadFaceImageIfNecessary;
- (void)_presentDiffRecursivelyDiff:(id)a3 forBucketAtIndex:(unint64_t)a4 withBuckets:(id)a5 completion:(id)a6;
- (void)_recreateFieldDerivedContent;
- (void)_setBalances:(id)a3;
- (void)_setContentViewsAlpha:(double)a3;
- (void)_setShowsBackgroundView:(BOOL)a3;
- (void)_setShowsBodyViews:(BOOL)a3;
- (void)_setShowsHeaderViews:(BOOL)a3;
- (void)_updateEffectiveShowsBackgroundView;
- (void)_updateForeignBalances;
- (void)_updateShowsPanSuffix;
- (void)createBodyContentViews;
- (void)createContentViewsWithFade:(BOOL)a3;
- (void)createHeaderContentViews;
- (void)dealloc;
- (void)didAuthenticate;
- (void)didInvalidate;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
- (void)insertContentView:(id)a3 ofType:(int64_t)a4;
- (void)invalidate;
- (void)layoutSubviews;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)presentDiff:(id)a3 completion:(id)a4;
- (void)removeContentView:(id)a3 ofType:(int64_t)a4;
- (void)setBackgroundMode:(int64_t)a3;
- (void)setClipsContent:(BOOL)a3;
- (void)setDimmer:(double)a3 animated:(BOOL)a4;
- (void)setLiveMotionEnabled:(BOOL)a3;
- (void)setModallyPresented:(BOOL)a3;
- (void)setPass:(id)a3 colorProfile:(id)a4;
- (void)setPassState:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)setShowsLiveRendering:(BOOL)a3 rendererState:(id)a4;
- (void)setVisibleRegions:(unint64_t)a3;
- (void)updateShadow:(double)a3 animated:(BOOL)a4 withDelay:(double)a5;
@end

@implementation PKPassFaceView

- (void)_updateEffectiveShowsBackgroundView
{
  flags = self->_flags;
  v9 = flags & 0x48;
  if ((v9 == 64) != ((flags & 0x80) == 0))
  {
    return;
  }

  v17 = v5;
  v18 = v4;
  v19 = v3;
  v20 = v2;
  *&self->_flags = flags & 0xFF7F | ((v9 == 64) << 7);
  if (v9 == 64)
  {
    if ([(PKPass *)self->_pass passType]== PKPassTypeSecureElement && ([(PKPass *)self->_pass dynamicLayerConfiguration], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      dynamicCardView = self->_dynamicCardView;
      if (!dynamicCardView)
      {
        v14 = [PKDynamicLayerView alloc];
        v15 = [(PKDynamicLayerView *)v14 initWithFrame:self->_pass pass:0 automaticallyLoadContent:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        v16 = self->_dynamicCardView;
        self->_dynamicCardView = v15;

        [(PKDynamicLayerView *)self->_dynamicCardView setClipsToBounds:1];
        [(PKPassFaceView *)self insertSubview:self->_dynamicCardView belowSubview:self->_contentView];
        goto LABEL_10;
      }

      v13 = 0;
    }

    else
    {
      dynamicCardView = self->_dynamicCardView;
      v13 = 1;
    }

    [(PKDynamicLayerView *)dynamicCardView setHidden:v13, v5, v4, v19, v20, v6];
LABEL_10:
    [(PKPassFaceView *)self _loadFaceImageIfNecessary:v17];
    goto LABEL_11;
  }

  [(UIImageView *)self->_backgroundPlaceholderView setImage:0];
  [(UIImageView *)self->_backgroundView setImage:0];
  [(UIImageView *)self->_shadowBackgroundView setImage:0];
  [(PKDynamicLayerView *)self->_dynamicCardView setHidden:1];
  [(PKPassFaceView *)self setNeedsLayout];
LABEL_11:

  [(PKPassFaceView *)self _updateShowsPanSuffix];
}

- (void)_loadFaceImageIfNecessary
{
  flags = self->_flags;
  if ((flags & 0x80) != 0 || (flags & 0x18) == 0x18)
  {
    if (self->_backgroundMode)
    {
      modallyPresented = 1;
    }

    else
    {
      modallyPresented = self->_modallyPresented;
    }

    if (!self->_faceImage && (self->_partialFaceImage == 0 || modallyPresented))
    {
      v5 = [(PKPass *)self->_pass style];
      [(PKPassFaceView *)self contentSize];
      v7 = v6;
      v9 = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke;
      aBlock[3] = &__block_descriptor_40_e24_v16__0__PKPassFaceView_8l;
      aBlock[4] = v5;
      v10 = _Block_copy(aBlock);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke_2;
      v28[3] = &__block_descriptor_56_e24_v16__0__PKPassFaceView_8l;
      v28[4] = v5;
      v28[5] = v7;
      v28[6] = v9;
      v11 = _Block_copy(v28);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke_3;
      v27[3] = &__block_descriptor_56_e24_v16__0__PKPassFaceView_8l;
      v27[4] = v5;
      v27[5] = v7;
      v27[6] = v9;
      v12 = _Block_copy(v27);
      v13 = [(PKPass *)self->_pass isImageSetLoaded:0];
      if ((modallyPresented | v13))
      {
        if ((v13 & 1) != 0 || self->_modallyPresented)
        {
          goto LABEL_11;
        }

        v18 = self->_flags;
        if ((v18 & 0x200) == 0)
        {
          *&self->_flags = v18 | 0x200;
          [(PKPass *)self->_pass loadCachedImageSet:0];
          if (([(PKPass *)self->_pass isImageSetLoaded:0]& 1) != 0)
          {
LABEL_11:
            v12[2](v12, self);
LABEL_25:

            return;
          }

          v18 = self->_flags;
        }

        if ((v18 & 0x4000) != 0)
        {
          goto LABEL_25;
        }

        *&self->_flags = v18 | 0x4000;
        (*(v10 + 2))(v10, self);
        objc_initWeak(&location, self);
        pass = self->_pass;
        v16 = v20;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke_6;
        v20[3] = &unk_1E80111D0;
        objc_copyWeak(&v22, &location);
        v21 = v12;
        [(PKPass *)pass loadImageSetAsync:0 preheat:0 withCompletion:v20];
        v17 = v21;
      }

      else
      {
        if ([(PKPass *)self->_pass isImageSetLoaded:2])
        {
          (*(v11 + 2))(v11, self);
          goto LABEL_25;
        }

        v14 = self->_flags;
        if ((*&v14 & 0x80000000) != 0)
        {
          goto LABEL_25;
        }

        *&self->_flags = *&v14 | 0x8000;
        (*(v10 + 2))(v10, self);
        objc_initWeak(&location, self);
        v15 = self->_pass;
        v16 = v23;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke_4;
        v23[3] = &unk_1E80111D0;
        objc_copyWeak(&v25, &location);
        v24 = v11;
        [(PKPass *)v15 loadImageSetAsync:2 preheat:0 withCompletion:v23];
        v17 = v24;
      }

      objc_destroyWeak(v16 + 5);
      objc_destroyWeak(&location);
      goto LABEL_25;
    }

    [(PKPassFaceView *)self setNeedsLayout];
  }
}

- (void)createBodyContentViews
{
  v23 = *MEMORY[0x1E69E9840];
  [(PKPassFaceView *)self _createBucketsIfNecessary];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  bodyBucketViews = self->_bodyBucketViews;
  self->_bodyBucketViews = v3;

  [(NSArray *)self->_buckets subarrayWithRange:1, [(NSArray *)self->_buckets count]- 1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 count])
        {
          v11 = [(PKPassFaceTemplate *)self->_faceTemplate templateForBucketAtIndex:v7];
          if (!v11)
          {
            goto LABEL_11;
          }

          v12 = v11;
          v13 = objc_alloc_init(PKPassBucketView);
          v14 = [(PKPassFaceView *)self pass];
          [(PKPassBucketView *)v13 setPass:v14];

          [(PKPassBucketView *)v13 setBucketTemplate:v12];
          v15 = [(PKPassFaceView *)self colorProfile];
          [(PKPassBucketView *)v13 setColorProfile:v15];

          [(PKPassBucketView *)v13 setBucket:v10];
          [(PKPassFaceView *)self insertContentView:v13 ofType:2];
          [(NSMutableArray *)self->_bodyBucketViews addObject:v13];
        }

        ++v7;
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

LABEL_11:

  primaryAccountNumberSuffixView = self->_primaryAccountNumberSuffixView;
  if (primaryAccountNumberSuffixView)
  {
    [(PKPassFaceView *)self insertContentView:primaryAccountNumberSuffixView ofType:2];
  }
}

- (void)_createBucketsIfNecessary
{
  v32 = *MEMORY[0x1E69E9840];
  buckets = self->_buckets;
  if (!buckets)
  {
    v4 = [(PKPassFaceView *)self fetchRelevantBuckets];
    v5 = self->_buckets;
    self->_buckets = v4;

    buckets = self->_buckets;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = buckets;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
LABEL_10:
          v16 = 0;
          while (1)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if ([*(*(&v22 + 1) + 8 * v16) foreignReferenceType] == 1)
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v14)
              {
                goto LABEL_10;
              }

              goto LABEL_16;
            }
          }

          if (self->_paymentService)
          {
            return;
          }

          v20 = [MEMORY[0x1E69B8DB8] paymentService];
          paymentService = self->_paymentService;
          self->_paymentService = v20;

          [(PKPaymentService *)self->_paymentService registerObserver:self];
          [(PKPassFaceView *)self _updateForeignBalances];
          v19 = +[PKUIForegroundActiveArbiter sharedInstance];
          self->_foregroundActive = ([v19 registerObserver:self] >> 8) & 1;
          goto LABEL_22;
        }

LABEL_16:

        ++v10;
      }

      while (v10 != v8);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v17 = self->_paymentService;
  if (v17)
  {
    [(PKPaymentService *)v17 unregisterObserver:self];
    v18 = self->_paymentService;
    self->_paymentService = 0;

    v19 = +[PKUIForegroundActiveArbiter sharedInstance];
    [v19 unregisterObserver:self];
LABEL_22:
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(PKPassFaceView *)self shadowInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_clipsContent)
  {
    v11 = fmax(self->_clippedContentHeight, 0.0);
    [(PKPassFaceView *)self contentSize];
    v8 = v8 + fmax(v11 - fmax(v12, 0.0), 0.0);
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)shadowInsets
{
  PKPassFaceShadowInsets();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)layoutSubviews
{
  v58 = *MEMORY[0x1E69E9840];
  [(PKPassFaceView *)self shadowInsets];
  [(PKPassFaceView *)self bounds];
  [(PKPassFaceView *)self alignmentRectForFrame:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKLiveRenderedCardFaceView *)self->_liveBackgroundView setFrame:?];
  [(PKTransactionDataOverlayCardFaceView *)self->_transactionDataOverlayView setFrame:v4, v6, v8, v10];
  backgroundPlaceholderView = self->_backgroundPlaceholderView;
  if (backgroundPlaceholderView)
  {
    v12 = [(UIImageView *)backgroundPlaceholderView image];
    placeholderFaceImage = self->_placeholderFaceImage;

    if (v12 != placeholderFaceImage)
    {
      [(UIImageView *)self->_backgroundPlaceholderView setImage:self->_placeholderFaceImage];
    }

    v14 = self->_backgroundPlaceholderView;
    UIRectInset();
    [(UIImageView *)v14 setFrame:?];
  }

  flags = self->_flags;
  if ((*&flags & 0x80) != 0)
  {
    shadowBackgroundView = self->_shadowBackgroundView;
    [(PKPassFaceView *)self shadowBackgroundInsets];
    UIRectInset();
    [(UIImageView *)shadowBackgroundView setFrame:?];
    if (self->_faceImage || self->_backgroundMode == 1 && self->_modallyPresented)
    {
      v17 = [(UIImageView *)self->_backgroundView image];
      faceImage = self->_faceImage;

      if (v17 != faceImage)
      {
        [(UIImageView *)self->_backgroundView setImage:self->_faceImage];
      }

      v19 = [(UIImageView *)self->_shadowBackgroundView image];
      faceShadowImage = self->_faceShadowImage;

      if (v19 != faceShadowImage)
      {
        [(UIImageView *)self->_shadowBackgroundView setImage:self->_faceShadowImage];
      }

      backgroundView = self->_backgroundView;
      UIRectInset();
    }

    else
    {
      v22 = [(UIImageView *)self->_backgroundView image];
      partialFaceImage = self->_partialFaceImage;

      if (v22 != partialFaceImage)
      {
        [(UIImageView *)self->_backgroundView setImage:self->_partialFaceImage];
      }

      [(UIImage *)self->_partialFaceImage size];
      PKSizeAlignedInRect();
      backgroundView = self->_backgroundView;
    }

    [(UIImageView *)backgroundView setFrame:?];
    v24 = [(PKDynamicLayerView *)self->_dynamicCardView layer];
    PKPaymentStyleApplyCorners();

    [(PKDynamicLayerView *)self->_dynamicCardView setFrame:v4, v6, v8, v10];
    flags = self->_flags;
  }

  [(UIView *)self->_contentView setHidden:(*&flags >> 5) & 1];
  v25 = self->_flags;
  if ((v25 & 0x10) == 0)
  {
    [(PKLiveRenderedCardFaceView *)self->_liveBackgroundView clearFaceImage];
    liveBackgroundView = self->_liveBackgroundView;
    v27 = (v25 & 8) == 0;
    goto LABEL_34;
  }

  v28 = 536;
  if (self->_faceImage)
  {
    v29 = self->_liveBackgroundView;
    p_faceImageAlignmentInsets = &self->_faceImageAlignmentInsets;
    v31 = 72;
LABEL_27:
    [(PKLiveRenderedCardFaceView *)v29 setFaceImage:p_faceImageAlignmentInsets->top withAverageColor:p_faceImageAlignmentInsets->left alignmentInsets:p_faceImageAlignmentInsets->bottom contentInsets:p_faceImageAlignmentInsets->right, *(&self->super.super.super.super.isa + v31 * 8), *(&self->super.super.super._responderFlags + v31 * 8), *&(&self->super.super._constraintsExceptingSubviewAutoresizingConstraints)[v31], *&(&self->super.super._cachedTraitCollection)[v31]];
    goto LABEL_28;
  }

  if (self->_backgroundMode == 1 && self->_modallyPresented)
  {
    v29 = self->_liveBackgroundView;
  }

  else
  {
    v28 = 624;
    v29 = self->_liveBackgroundView;
    if (self->_partialFaceImage)
    {
      v31 = 83;
      p_faceImageAlignmentInsets = &self->_partialFaceImageAlignmentInsets;
      goto LABEL_27;
    }
  }

  [(PKLiveRenderedCardFaceView *)v29 clearFaceImage];
LABEL_28:
  liveBackgroundView = self->_liveBackgroundView;
  if ((v25 & 8) != 0)
  {
    if (*(&self->super.super.super.super.isa + v28))
    {
      v27 = 0;
    }

    else
    {
      v27 = self->_backgroundPlaceholderView != 0;
    }
  }

  else
  {
    v27 = 1;
  }

LABEL_34:
  [(PKLiveRenderedCardFaceView *)liveBackgroundView setHidden:v27];
  [(UIView *)self->_contentView setFrame:v4, v6, v8, v10];
  primaryAccountNumberSuffixView = self->_primaryAccountNumberSuffixView;
  if (primaryAccountNumberSuffixView)
  {
    [(UIView *)primaryAccountNumberSuffixView frame];
    PKPaymentPassContentInsets();
    [(UIView *)self->_contentView bounds];
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UIView *)self->_primaryAccountNumberSuffixView setFrame:?];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v33 = self->_headerBucketViews;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v53;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v53 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v52 + 1) + 8 * i);
        v39 = [v38 bucketTemplate];
        [v39 bucketRect];
        [v38 setFrame:?];
      }

      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v35);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v40 = self->_bodyBucketViews;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v49;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v49 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v48 + 1) + 8 * j);
        v46 = [v45 bucketTemplate];
        [v46 bucketRect];
        [v45 setFrame:?];
      }

      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v42);
  }

  v47.receiver = self;
  v47.super_class = PKPassFaceView;
  [(PKPassFaceView *)&v47 layoutSubviews];
}

void __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3[244];
  if ((v4 & 0x1000) == 0)
  {
    v3[244] = v4 | 0x1000;
    if ((v4 & 0xC00) == 0)
    {
      v13 = v3;
      v5 = *(a1 + 32);
      os_unfair_lock_lock(&_MergedGlobals_5);
      if (!qword_1EBD68228)
      {
        v6 = [MEMORY[0x1E696AD18] pk_copiedToWeakObjectsMapTable];
        v7 = qword_1EBD68228;
        qword_1EBD68228 = v6;
      }

      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
      v9 = [qword_1EBD68228 objectForKey:v8];
      if (!v9)
      {
        v10 = MEMORY[0x1E69DCAB8];
        v11 = PKPassGrayPlaceholderImage();
        v9 = [v10 imageWithPKImage:v11];

        [qword_1EBD68228 setObject:v9 forKey:v8];
      }

      os_unfair_lock_unlock(&_MergedGlobals_5);

      v12 = v13[66];
      v13[66] = v9;

      [v13 setNeedsLayout];
      v3 = v13;
    }
  }
}

- (void)_updateShowsPanSuffix
{
  flags = self->_flags;
  if ((flags & 0x80) == 0 || (dynamicCardView = self->_dynamicCardView) == 0)
  {
    v5 = 0;
    if ((flags & 8) != 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v5 = [(PKDynamicLayerView *)dynamicCardView isHidden]^ 1;
  if ((*&self->_flags & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = [(PKLiveRenderedCardFaceView *)self->_liveBackgroundView requiresFaceImage];
LABEL_7:
  if (((v5 | v6) & 1) == 0 || [(PKPass *)self->_pass passType]!= PKPassTypeSecureElement)
  {
    v7 = 0;
LABEL_16:
    v19 = 0;
    v10 = self->_flags;
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v7 = self->_pass;
  v8 = [(PKPass *)v7 primaryAccountNumberSuffix];
  if (!v8)
  {
    goto LABEL_16;
  }

  v19 = v8;
  v9 = [v8 length];
  v10 = self->_flags;
  if ((v9 != 0) != ((v10 & 0x100) == 0))
  {
    goto LABEL_19;
  }

  if (v9)
  {
    *&self->_flags = v10 | 0x100;
    primaryAccountNumberSuffixView = self->_primaryAccountNumberSuffixView;
    if (!primaryAccountNumberSuffixView)
    {
      v12 = MEMORY[0x1E69DC888];
      v13 = [(PKPass *)v7 displayProfile];
      v14 = [v13 foregroundColor];
      v15 = [v12 colorWithCGColor:{objc_msgSend(v14, "CGColor")}];

      v16 = [[PKMaskedPANSuffixView alloc] initWithSuffix:v19 foregroundColor:v15];
      v17 = self->_primaryAccountNumberSuffixView;
      self->_primaryAccountNumberSuffixView = &v16->super;

      primaryAccountNumberSuffixView = self->_primaryAccountNumberSuffixView;
    }

    [(PKPassFaceView *)self insertContentView:primaryAccountNumberSuffixView ofType:2];
    goto LABEL_19;
  }

LABEL_17:
  *&self->_flags = v10 & 0xFEFF;
  v18 = self->_primaryAccountNumberSuffixView;
  if (v18)
  {
    [(PKPassFaceView *)self removeContentView:v18 ofType:2];
  }

LABEL_19:
}

- (void)createHeaderContentViews
{
  [(PKPassFaceView *)self _createBucketsIfNecessary];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  headerBucketViews = self->_headerBucketViews;
  self->_headerBucketViews = v3;

  v5 = [(PKPassFaceView *)self pass];
  [v5 cobrandLogoRect];
  self->_cobrandLogoSize.width = v6;
  self->_cobrandLogoSize.height = v7;

  v12 = [(NSArray *)self->_buckets objectAtIndex:0];
  if ([v12 count])
  {
    v8 = objc_alloc_init(PKPassBucketView);
    v9 = [(PKPassFaceView *)self pass];
    [(PKPassBucketView *)v8 setPass:v9];

    v10 = [(PKPassFaceView *)self headerTemplate];
    [(PKPassBucketView *)v8 setBucketTemplate:v10];

    v11 = [(PKPassFaceView *)self colorProfile];
    [(PKPassBucketView *)v8 setColorProfile:v11];

    [(PKPassBucketView *)v8 setBucket:v12];
    [(PKPassFaceView *)self insertContentView:v8 ofType:0];
    [(NSMutableArray *)self->_headerBucketViews addObject:v8];
  }
}

void __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke_5;
  v2[3] = &unk_1E80111D0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v30 = v3;
  if ((v3[61] & 0x400) == 0)
  {
    *(v3 + 244) |= 0x600u;
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [v3[55] frontFaceImage];
    v6 = [v4 imageWithPKImage:v5];
    v7 = v30[67];
    v30[67] = v6;

    v8 = MEMORY[0x1E69DC888];
    v9 = [v30[55] frontFaceImageAverageColor];
    v10 = [v8 pkui_colorWithPKColor:v9];
    v11 = v30[76];
    v30[76] = v10;

    PKPassFaceShadowInsets();
    v30[68] = v12;
    v30[69] = v13;
    v30[70] = v14;
    v30[71] = v15;
    [v30[67] size];
    v18 = v17 - (*(v30 + 68) + *(v30 + 70));
    v19 = *(a1 + 48);
    v20 = *(a1 + 40) - (v16 - (*(v30 + 69) + *(v30 + 71)));
    v30[72] = 0;
    *(v30 + 74) = v19 - v18;
    PKFloatRoundToPixel();
    *(v30 + 73) = v21;
    *(v30 + 75) = v20 - v21;
    v22 = MEMORY[0x1E69DCAB8];
    v23 = [v30[55] frontFaceShadowImage];
    v24 = [v22 imageWithPKImage:v23];
    v25 = v30[77];
    v30[77] = v24;

    v26 = v30[78];
    v30[78] = 0;

    v27 = v30[66];
    v30[66] = 0;

    v28 = v30[63];
    if (v28)
    {
      [v28 removeFromSuperview];
      v29 = v30[63];
      v30[63] = 0;
    }

    if (([v30[94] isLoaded] & 1) == 0)
    {
      [v30[94] loadContent];
    }

    [v30 setNeedsLayout];
  }
}

- (CGSize)cobrandLogoSize
{
  width = self->_cobrandLogoSize.width;
  height = self->_cobrandLogoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)shadowBackgroundInsets
{
  PKPassFaceShadowInsets();
  v3 = v2 + 15.0;
  v5 = v4 + 15.0;
  v7 = v6 + 15.0;
  v9 = v8 + 15.0;
  result.right = v9;
  result.bottom = v5;
  result.left = v7;
  result.top = v3;
  return result;
}

void __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 244) &= ~0x8000u;
    v4 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    v3 = v4;
  }
}

void __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(v3 + 244);
  if ((v4 & 0x800) == 0)
  {
    *(v3 + 244) = v4 | 0x800;
    if ((v4 & 0x400) == 0)
    {
      v5 = MEMORY[0x1E69DCAB8];
      v25 = v3;
      v6 = [*(v3 + 55) partialFrontFaceImage];
      v7 = [v5 imageWithPKImage:v6];
      v8 = *(v25 + 78);
      *(v25 + 78) = v7;

      v9 = MEMORY[0x1E69DC888];
      v10 = [*(v25 + 55) partialFrontFaceImageAverageColor];
      v11 = [v9 pkui_colorWithPKColor:v10];
      v12 = *(v25 + 76);
      *(v25 + 76) = v11;

      PKPassFaceShadowInsets();
      *(v25 + 79) = v13;
      *(v25 + 80) = v14;
      *(v25 + 82) = v15;
      *(v25 + 81) = 0;
      [*(v25 + 78) size];
      v18 = v17 - (*(v25 + 79) + *(v25 + 81));
      v19 = *(a1 + 48);
      v20 = *(a1 + 40) - (v16 - (*(v25 + 80) + *(v25 + 82)));
      *(v25 + 83) = 0;
      *(v25 + 85) = v19 - v18;
      PKFloatRoundToPixel();
      *(v25 + 84) = v21;
      *(v25 + 86) = v20 - v21;
      v22 = *(v25 + 66);
      *(v25 + 66) = 0;

      v23 = *(v25 + 63);
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *(v25 + 63);
        *(v25 + 63) = 0;
      }

      [v25 setNeedsLayout];
      v3 = v25;
    }
  }
}

+ (Class)_faceClassForStyle:(int64_t)a3
{
  if (a3 > 0xA || ((0x7D7u >> a3) & 1) == 0 || (v3 = objc_opt_class()) == 0)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

+ (id)newFrontFaceViewForStyle:(int64_t)a3
{
  v4 = objc_alloc([a1 _faceClassForStyle:?]);

  return [v4 initWithStyle:a3];
}

- (PKPassFaceView)initWithStyle:(int64_t)a3
{
  v22.receiver = self;
  v22.super_class = PKPassFaceView;
  v4 = [(PKPassFaceView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    *&v4->_flags |= 7u;
    if (PKIsLowEndDevice())
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      shadowBackgroundView = v5->_shadowBackgroundView;
      v5->_shadowBackgroundView = v6;

      v8 = [(UIImageView *)v5->_shadowBackgroundView layer];
      v9 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.09803922 alpha:1.0];
      v10 = [v9 CGColor];

      [v8 setContentsMultiplyColor:v10];
      [v8 setOpacity:0.0];
      [(UIImageView *)v5->_shadowBackgroundView setClipsToBounds:0];
      [(PKPassFaceView *)v5 addSubview:v5->_shadowBackgroundView];
    }

    v11 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    backgroundPlaceholderView = v5->_backgroundPlaceholderView;
    v5->_backgroundPlaceholderView = v11;

    [(PKPassFaceView *)v5 addSubview:v5->_backgroundPlaceholderView];
    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    backgroundView = v5->_backgroundView;
    v5->_backgroundView = v13;

    [(PKPassFaceView *)v5 addSubview:v5->_backgroundView];
    [(WLEasyToHitCustomView *)v5 setMargins:0.0, 0.0, 20.0, 20.0];
    v15 = objc_alloc_init(WLEasyToHitCustomView);
    contentView = v5->_contentView;
    v5->_contentView = &v15->super;

    [(UIView *)v5->_contentView setMargins:0.0, 0.0, 20.0, 20.0];
    [(PKPassFaceView *)v5 addSubview:v5->_contentView];
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v5 selector:sel__handleTimeOrLocaleChange_ name:*MEMORY[0x1E69DDB88] object:0];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v5 selector:sel__handleTimeOrLocaleChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v19 = [(PKPassFaceView *)v5 layer];
    v20 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v20 scale];
    [v19 setRasterizationScale:?];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDB88] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  paymentService = self->_paymentService;
  if (paymentService)
  {
    [(PKPaymentService *)paymentService unregisterObserver:self];
    v6 = +[PKUIForegroundActiveArbiter sharedInstance];
    [v6 unregisterObserver:self];
  }

  [(PKPassFaceView *)self invalidate];
  v7.receiver = self;
  v7.super_class = PKPassFaceView;
  [(PKPassFaceView *)&v7 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(PKPassFaceView *)self didInvalidate];
  }
}

- (void)setPass:(id)a3 colorProfile:(id)a4
{
  v13 = a3;
  v7 = a4;
  if (self->_pass != v13)
  {
    objc_storeStrong(&self->_pass, a3);
    pass = self->_pass;
    if (pass)
    {
      v9 = [PKLiveRenderedCardFaceView replacesContentForType:[(PKPass *)pass liveRenderType]];
      p_flags = &self->_flags;
      flags = self->_flags;
      if ((v9 ^ ((flags & 0x20) == 0)))
      {
        goto LABEL_10;
      }

      if (v9)
      {
        v12 = 32;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      p_flags = &self->_flags;
      flags = self->_flags;
      if ((flags & 0x20) == 0)
      {
        goto LABEL_10;
      }

      v12 = 0;
    }

    *p_flags = flags & 0xFFDF | v12;
    [(PKPassFaceView *)self setNeedsLayout];
  }

LABEL_10:
  if (self->_colorProfile != v7)
  {
    objc_storeStrong(&self->_colorProfile, a4);
  }
}

- (void)setPassState:(id)a3
{
  v5 = a3;
  if (self->_passState != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_passState, a3);
    v6 = [(PKPassFaceView *)self flushPassStateFieldValues];
    v5 = v7;
    if (v6)
    {
      [(PKPassFaceView *)self _recreateFieldDerivedContent];
      v5 = v7;
    }
  }
}

- (void)setVisibleRegions:(unint64_t)a3
{
  [(PKPassFaceView *)self _createInvariantViewsForRegions:?];
  [(PKPassFaceView *)self _createContentViewsForRegions:a3];
  [(PKPassFaceView *)self _setShowsHeaderViews:(a3 >> 1) & 1];
  [(PKPassFaceView *)self _setShowsBodyViews:(a3 >> 2) & 1];
  [(PKPassFaceView *)self _setShowsBackgroundView:a3 & 1];
  self->_visibleRegions = a3;
}

- (void)setClipsContent:(BOOL)a3
{
  if (self->_clipsContent != a3)
  {
    [(PKPassFaceView *)self setClipsToBounds:?];
    self->_clipsContent = a3;
  }
}

- (void)setBackgroundMode:(int64_t)a3
{
  flags = self->_flags;
  if (self->_backgroundMode != a3 || (flags & 0x2000) == 0)
  {
    *&self->_flags = flags | 0x2000;
    self->_backgroundMode = a3;
    [(PKPassFaceView *)self _loadFaceImageIfNecessary];

    [(PKPassFaceView *)self setNeedsLayout];
  }
}

- (void)setModallyPresented:(BOOL)a3
{
  if (self->_modallyPresented != a3)
  {
    self->_modallyPresented = a3;
    [(PKPassFaceView *)self _loadFaceImageIfNecessary];
    if (self->_modallyPresented)
    {

      [(PKPassFaceView *)self didPresent];
    }

    else
    {

      [(PKPassFaceView *)self didDismiss];
    }
  }
}

- (void)setLiveMotionEnabled:(BOOL)a3
{
  v3 = a3;
  self->_liveMotionEnabled = a3;
  [(PKLiveRenderedCardFaceView *)self->_liveBackgroundView setMotionEnabled:?];
  [(PKTransactionDataOverlayCardFaceView *)self->_transactionDataOverlayView setMotionEnabled:v3];
  dynamicCardView = self->_dynamicCardView;

  [(PKDynamicLayerView *)dynamicCardView setMotionEnabled:v3];
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    v4 = a3;
    self->_paused = a3;
    [(PKTransactionDataOverlayCardFaceView *)self->_transactionDataOverlayView setPaused:?];
    dynamicCardView = self->_dynamicCardView;

    [(PKDynamicLayerView *)dynamicCardView setPaused:v4];
  }
}

- (void)setShowsLiveRendering:(BOOL)a3 rendererState:(id)a4
{
  v4 = a3;
  v35 = a4;
  flags = self->_flags;
  if (v4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = flags & 0xFFFB | v7;
  *&self->_flags = v8;
  if (v4)
  {
    if ([(PKPass *)self->_pass passType]== PKPassTypeSecureElement)
    {
      pass = self->_pass;
    }

    else
    {
      pass = 0;
    }

    v11 = pass;
    v12 = self->_pass;
    if (v12)
    {
      if ([(PKPass *)v12 liveRenderType])
      {
        liveBackgroundView = self->_liveBackgroundView;
        if (!liveBackgroundView)
        {
          v26 = [PKLiveRenderedCardFaceView alloc];
          v27 = *MEMORY[0x1E695EFF8];
          v28 = *(MEMORY[0x1E695EFF8] + 8);
          [(PKPass *)self->_pass style];
          PKPassFrontFaceContentSize();
          v31 = [(PKLiveRenderedCardFaceView *)v26 initWithFrame:self->_pass pass:v27, v28, v29, v30];
          v32 = self->_liveBackgroundView;
          self->_liveBackgroundView = v31;

          v33 = self->_liveBackgroundView;
          if (!v33)
          {
            goto LABEL_27;
          }

          [(PKLiveRenderedCardFaceView *)v33 setMotionEnabled:self->_liveMotionEnabled];
          [(PKPassFaceView *)self insertSubview:self->_liveBackgroundView belowSubview:self->_contentView];
          liveBackgroundView = self->_liveBackgroundView;
          if (!liveBackgroundView)
          {
            goto LABEL_27;
          }
        }

        LODWORD(transactionDataOverlayView) = [(PKLiveRenderedCardFaceView *)liveBackgroundView requiresFaceImage];

        v8 = self->_flags;
        if ((v8 & 8) != 0)
        {
          v15 = 0;
          v10 = 1;
          goto LABEL_36;
        }

        goto LABEL_34;
      }

      v12 = self->_pass;
    }

    if (![(PKPass *)v12 supportsCategoryVisualization]|| !v11 || ([(PKPass *)v11 associatedAccountServiceAccountIdentifier], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
    {
LABEL_27:

      v8 = self->_flags;
      if ((v8 & 8) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_8;
    }

    transactionDataOverlayView = self->_transactionDataOverlayView;
    if (!transactionDataOverlayView)
    {
      v18 = [PKTransactionDataOverlayCardFaceView alloc];
      v19 = *MEMORY[0x1E695EFF8];
      v20 = *(MEMORY[0x1E695EFF8] + 8);
      [(PKPass *)self->_pass style];
      PKPassFrontFaceContentSize();
      v23 = [(PKTransactionDataOverlayCardFaceView *)v18 initWithFrame:self->_pass pass:v35 rendererState:v19, v20, v21, v22];
      v24 = self->_transactionDataOverlayView;
      self->_transactionDataOverlayView = v23;

      v25 = self->_transactionDataOverlayView;
      if (v25)
      {
        [(PKPassFaceView *)self insertSubview:v25 belowSubview:self->_contentView];
        transactionDataOverlayView = self->_transactionDataOverlayView;
      }

      else
      {
        transactionDataOverlayView = 0;
      }
    }

    v10 = transactionDataOverlayView != 0;

    v8 = self->_flags;
    if (v10 != ((v8 & 8) == 0))
    {
      goto LABEL_9;
    }

    if (!transactionDataOverlayView)
    {
      goto LABEL_29;
    }

    LODWORD(transactionDataOverlayView) = 0;
LABEL_34:
    v34 = 8;
    v10 = 1;
    goto LABEL_35;
  }

  if ((flags & 8) == 0)
  {
LABEL_8:
    v10 = 0;
LABEL_9:
    if ((v8 & 0x10) == 0)
    {
      [(PKTransactionDataOverlayCardFaceView *)self->_transactionDataOverlayView setHidden:!v10];
      goto LABEL_44;
    }

    v16 = 0;
    goto LABEL_42;
  }

LABEL_28:
  LODWORD(transactionDataOverlayView) = 0;
LABEL_29:
  v10 = 0;
  v34 = 0;
LABEL_35:
  v8 = v8 & 0xFFF7 | v34;
  *&self->_flags = v8;
  v15 = 1;
LABEL_36:
  if (((((v8 & 0x10) == 0) ^ transactionDataOverlayView) & 1) == 0)
  {
    if (transactionDataOverlayView)
    {
      v16 = 16;
    }

    else
    {
      v16 = 0;
    }

LABEL_42:
    *&self->_flags = v8 & 0xFFEF | v16;
    [(PKTransactionDataOverlayCardFaceView *)self->_transactionDataOverlayView setHidden:!v10];
    goto LABEL_43;
  }

  [(PKTransactionDataOverlayCardFaceView *)self->_transactionDataOverlayView setHidden:!v10];
  if (v15)
  {
LABEL_43:
    [(PKPassFaceView *)self setNeedsLayout];
  }

LABEL_44:
  [(PKPassFaceView *)self _updateEffectiveShowsBackgroundView];
  if ((*&self->_flags & 0x10) != 0)
  {
    [(PKPassFaceView *)self _loadFaceImageIfNecessary];
  }
}

- (void)_createDimmingFilterIfNecessary
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!self->_dimmingFilter)
  {
    v3 = [(PKPassFaceView *)self layer];
    v4 = objc_alloc(MEMORY[0x1E6979378]);
    v5 = [v4 initWithType:*MEMORY[0x1E6979CB0]];
    dimmingFilter = self->_dimmingFilter;
    self->_dimmingFilter = v5;

    [(CAFilter *)self->_dimmingFilter setName:@"dimmingFilter"];
    v7 = self->_dimmingFilter;
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 - self->_dimmer alpha:?];
    -[CAFilter setValue:forKey:](v7, "setValue:forKey:", [v8 CGColor], @"inputColor");

    v10[0] = self->_dimmingFilter;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v3 setFilters:v9];
  }
}

- (void)setDimmer:(double)a3 animated:(BOOL)a4
{
  if (self->_dimmer != a3)
  {
    v4 = a4;
    self->_dimmer = a3;
    [(PKPassFaceView *)self _createDimmingFilterIfNecessary];
    v13 = [(PKPassFaceView *)self layer];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 - self->_dimmer alpha:?];
    if (v4)
    {
      v7 = MEMORY[0x1E69DC888];
      v8 = [v13 valueForKeyPath:@"filters.dimmingFilter.inputColor"];
      v9 = [v7 colorWithCGColor:v8];

      v10 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.dimmingFilter.inputColor"];
      [v10 setDuration:0.25];
      [v10 setFillMode:*MEMORY[0x1E69797E8]];
      v11 = v9;
      if (!v9)
      {
        v11 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
      }

      [v10 setFromValue:{objc_msgSend(v11, "CGColor")}];
      if (!v9)
      {
      }

      [v10 setToValue:{objc_msgSend(v6, "CGColor")}];
      v12 = [v13 pkui_addAdditiveAnimation:v10];
    }

    [v13 setValue:objc_msgSend(v6 forKeyPath:{"CGColor"), @"filters.dimmingFilter.inputColor"}];
  }
}

- (void)createContentViewsWithFade:(BOOL)a3
{
  v3 = a3;
  [(PKPassFaceView *)self _createContentViewsForRegions:self->_visibleRegions];
  if (v3)
  {
    [(PKPassFaceView *)self _setContentViewsAlpha:0.0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__PKPassFaceView_createContentViewsWithFade___block_invoke;
    v5[3] = &unk_1E8010970;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.2];
  }
}

- (void)presentDiff:(id)a3 completion:(id)a4
{
  if (a3)
  {
    clipsContent = 1;
  }

  else
  {
    clipsContent = self->_clipsContent;
  }

  v7 = a4;
  v8 = a3;
  [(PKPassFaceView *)self setClipsToBounds:clipsContent];
  v9 = [(NSMutableArray *)self->_headerBucketViews arrayByAddingObjectsFromArray:self->_bodyBucketViews];
  [(PKPassFaceView *)self _presentDiffRecursivelyDiff:v8 forBucketAtIndex:0 withBuckets:v9 completion:v7];
}

- (void)_presentDiffRecursivelyDiff:(id)a3 forBucketAtIndex:(unint64_t)a4 withBuckets:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v11 count] <= a4)
  {
    if (v12)
    {
      v12[2](v12);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = [v11 objectAtIndex:a4];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__PKPassFaceView__presentDiffRecursivelyDiff_forBucketAtIndex_withBuckets_completion___block_invoke;
    v14[3] = &unk_1E80123E0;
    objc_copyWeak(v18, &location);
    v15 = v10;
    v18[1] = a4;
    v16 = v11;
    v17 = v12;
    [v13 presentDiff:v15 inView:self completion:v14];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }
}

void __86__PKPassFaceView__presentDiffRecursivelyDiff_forBucketAtIndex_withBuckets_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _presentDiffRecursivelyDiff:*(a1 + 32) forBucketAtIndex:*(a1 + 64) + 1 withBuckets:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)updateShadow:(double)a3 animated:(BOOL)a4 withDelay:(double)a5
{
  v6 = a4;
  [(PKRemoveableAnimationTrackerStore *)self->_delayedAnimations preempt];
  [(UIImageView *)self->_shadowBackgroundView layer];
  v17 = v9 = a3 * 0.27;
  [v17 opacity];
  if (v6)
  {
    v11 = *&v10;
    if (v9 != *&v10)
    {
      v12 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v12 setBeginTime:a5];
      [v12 pkui_updateForAdditiveAnimationFromScalar:v11 toScalar:v9];
      [v12 duration];
      [v12 setDuration:{fmax(v13 + a5, 0.0)}];
      delayedAnimations = self->_delayedAnimations;
      if (!delayedAnimations)
      {
        v15 = objc_alloc_init(MEMORY[0x1E69B9148]);
        v16 = self->_delayedAnimations;
        self->_delayedAnimations = v15;

        delayedAnimations = self->_delayedAnimations;
      }
    }
  }

  *&v10 = v9;
  [v17 setOpacity:v10];
}

void __50__PKPassFaceView_updateShadow_animated_withDelay___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 opacity];
  v7 = v6;
  v10 = [v4 fromValue];

  [v10 doubleValue];
  v9 = v8 + v7;
  *&v9 = v9;
  [v5 setOpacity:v9];
}

- (CGSize)contentSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)flushFormattedFieldValues
{
  v2 = [(PKPassFaceView *)self pass];
  [v2 flushFormattedFieldValues];

  return 1;
}

- (id)_viewSetForContentViewType:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return *(&self->super.super.super.super.isa + *off_1E80124E0[a3]);
  }
}

- (void)insertContentView:(id)a3 ofType:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v11 = v6;
    v7 = [v6 superview];
    contentView = self->_contentView;

    if (v7 != contentView)
    {
      [(UIView *)self->_contentView addSubview:v11];
    }

    if ((a4 - 2) < 2)
    {
      LOBYTE(v9) = (*&self->_flags & 2) == 0;
    }

    else
    {
      if (a4 > 1)
      {
LABEL_9:
        v10 = [(PKPassFaceView *)self _viewSetForContentViewType:a4];
        [v10 addObject:v11];

        [(PKPassFaceView *)self setNeedsLayout];
        v6 = v11;
        goto LABEL_10;
      }

      v9 = *&self->_flags ^ 1;
    }

    [v11 setHidden:v9 & 1];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)removeContentView:(id)a3 ofType:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v10 = v6;
    v7 = [v6 superview];
    contentView = self->_contentView;

    if (v7 == contentView)
    {
      [v10 removeFromSuperview];
    }

    v9 = [(PKPassFaceView *)self _viewSetForContentViewType:a4];
    [v9 removeObject:v10];

    [(PKPassFaceView *)self setNeedsLayout];
    v6 = v10;
  }
}

- (void)didInvalidate
{
  [(PKTransactionDataOverlayCardFaceView *)self->_transactionDataOverlayView invalidate];
  [(PKLiveRenderedCardFaceView *)self->_liveBackgroundView invalidate];
  dynamicCardView = self->_dynamicCardView;

  [(PKDynamicLayerView *)dynamicCardView invalidate];
}

- (void)didAuthenticate
{
  [(PKLiveRenderedCardFaceView *)self->_liveBackgroundView didAuthenticate];
  transactionDataOverlayView = self->_transactionDataOverlayView;

  [(PKTransactionDataOverlayCardFaceView *)transactionDataOverlayView setContentSuppressed:0];
}

- (void)_createInvariantViewsForRegions:(unint64_t)a3
{
  v4 = a3 & ~self->_invariantViewCreatedRegions;
  if ((v4 & 2) != 0)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    headerInvariantViews = self->_headerInvariantViews;
    self->_headerInvariantViews = v5;

    [(PKPassFaceView *)self createHeaderInvariantViews];
  }

  if ((v4 & 4) != 0)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    bodyInvariantViews = self->_bodyInvariantViews;
    self->_bodyInvariantViews = v7;

    [(PKPassFaceView *)self createBodyInvariantViews];
  }

  self->_invariantViewCreatedRegions |= v4;

  [(PKPassFaceView *)self setNeedsLayout];
}

- (void)_createContentViewsForRegions:(unint64_t)a3
{
  if ([(PKPass *)self->_pass isContentLoaded])
  {
    v5 = a3 & ~self->_contentViewCreatedRegions;
    if ((v5 & 2) != 0)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      headerContentViews = self->_headerContentViews;
      self->_headerContentViews = v6;

      [(PKPassFaceView *)self createHeaderContentViews];
    }

    if ((v5 & 4) != 0)
    {
      if (!self->_faceTemplate)
      {
        v8 = [(PKPassFaceView *)self passFaceTemplate];
        faceTemplate = self->_faceTemplate;
        self->_faceTemplate = v8;
      }

      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      bodyContentViews = self->_bodyContentViews;
      self->_bodyContentViews = v10;

      [(PKPassFaceView *)self createBodyContentViews];
    }

    self->_contentViewCreatedRegions |= v5;

    [(PKPassFaceView *)self setNeedsLayout];
  }
}

- (void)_flushContentViewsForRegions:(unint64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  contentViewCreatedRegions = self->_contentViewCreatedRegions;
  if ((contentViewCreatedRegions & 2) != 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_headerContentViews;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v21 + 1) + 8 * v9++) removeFromSuperview];
        }

        while (v7 != v9);
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    headerContentViews = self->_headerContentViews;
    self->_headerContentViews = 0;

    contentViewCreatedRegions = self->_contentViewCreatedRegions & 0xFFFFFFFFFFFFFFFDLL;
    self->_contentViewCreatedRegions = contentViewCreatedRegions;
  }

  if ((contentViewCreatedRegions & 4) != 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = self->_bodyContentViews;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * v15++) removeFromSuperview];
        }

        while (v13 != v15);
        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }

    bodyContentViews = self->_bodyContentViews;
    self->_bodyContentViews = 0;

    self->_contentViewCreatedRegions &= ~4uLL;
  }
}

- (void)_setShowsHeaderViews:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  *&self->_flags = *&self->_flags & 0xFFFE | a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_headerContentViews;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v9++) setHidden:!v3];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_headerInvariantViews;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) setHidden:{!v3, v15}];
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)_setShowsBodyViews:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFD | v5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_bodyContentViews;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v20 + 1) + 8 * i) setHidden:!v3];
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_bodyInvariantViews;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * j) setHidden:{!v3, v16}];
      }

      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)_setContentViewsAlpha:(double)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_headerContentViews;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v9++) setAlpha:a3];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_bodyContentViews;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) setAlpha:{a3, v15}];
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)_setShowsBackgroundView:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFBF | v3;
  [(PKPassFaceView *)self _updateEffectiveShowsBackgroundView];
}

void __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke_6(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke_7;
  v2[3] = &unk_1E80111D0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __43__PKPassFaceView__loadFaceImageIfNecessary__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 244) &= ~0x4000u;
    v4 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    v3 = v4;
  }
}

- (void)_updateForeignBalances
{
  if (self->_paymentService)
  {
    objc_initWeak(&location, self);
    paymentService = self->_paymentService;
    v4 = [(PKPassFaceView *)self pass];
    v5 = [v4 uniqueID];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__PKPassFaceView__updateForeignBalances__block_invoke;
    v6[3] = &unk_1E8012468;
    objc_copyWeak(&v7, &location);
    [(PKPaymentService *)paymentService balancesForPaymentPassWithUniqueIdentifier:v5 completion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __40__PKPassFaceView__updateForeignBalances__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PKPassFaceView__updateForeignBalances__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __40__PKPassFaceView__updateForeignBalances__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setBalances:*(a1 + 32)];
}

- (void)_setBalances:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v31 = self;
  if (self->_paymentService && [v4 count])
  {
    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v48;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v48 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v47 + 1) + 8 * i);
          v12 = [v11 identifiers];
          if (v12)
          {
            [v37 setObject:v11 forKeyedSubscript:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v8);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v13 = v31->_buckets;
    v34 = [(NSArray *)v13 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v34)
    {
      v30 = v5;
      v36 = 0;
      v32 = *v44;
      v33 = v13;
      do
      {
        v14 = 0;
        do
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(v13);
          }

          v35 = v14;
          v15 = *(*(&v43 + 1) + 8 * v14);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          obj = v15;
          v16 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v40;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v40 != v18)
                {
                  objc_enumerationMutation(obj);
                }

                v20 = *(*(&v39 + 1) + 8 * j);
                if ([v20 foreignReferenceType] == 1)
                {
                  v21 = [v20 foreignReferenceIdentifiers];
                  if (v21)
                  {
                    v22 = [v37 objectForKeyedSubscript:v21];
                    v23 = v22;
                    if (v22)
                    {
                      v24 = [v22 localizedTitle];
                      v25 = [v23 formattedValue];
                    }

                    else
                    {
                      v25 = 0;
                      v24 = 0;
                    }

                    v26 = [v20 label];
                    v27 = PKEqualObjects();

                    if ((v27 & 1) == 0)
                    {
                      [v20 setLabel:v24];
                      v36 = 1;
                    }

                    v28 = [v20 value];
                    v29 = PKEqualObjects();

                    if ((v29 & 1) == 0)
                    {
                      [v20 setUnformattedValue:v25];
                      [v20 flushCachedValue];
                      v36 = 1;
                    }
                  }
                }
              }

              v17 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
            }

            while (v17);
          }

          v14 = v35 + 1;
          v13 = v33;
        }

        while (v35 + 1 != v34);
        v34 = [(NSArray *)v33 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v34);

      v5 = v30;
      if (v36)
      {
        [(PKPassFaceView *)v31 _recreateFieldDerivedContent];
      }
    }

    else
    {
    }
  }
}

- (void)_recreateFieldDerivedContent
{
  contentViewCreatedRegions = self->_contentViewCreatedRegions;
  [(PKPassFaceView *)self _flushContentViewsForRegions:6];

  [(PKPassFaceView *)self _createContentViewsForRegions:contentViewCreatedRegions & 6];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKPassFaceView_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__PKPassFaceView_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pass];
  v3 = [v2 uniqueID];
  v4 = PKEqualObjects();

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    [v5 _setBalances:v6];
  }
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  v4 = *&a4 & 0x100;
  if (self->_foregroundActive != v4 >> 8)
  {
    self->_foregroundActive = BYTE1(v4);
    if (v4)
    {
      [(PKPassFaceView *)self _updateForeignBalances];
    }
  }
}

- (void)_handleTimeOrLocaleChange:(id)a3
{
  if ([(PKPassFaceView *)self flushFormattedFieldValues])
  {

    [(PKPassFaceView *)self _recreateFieldDerivedContent];
  }
}

- (PKPassFaceViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end