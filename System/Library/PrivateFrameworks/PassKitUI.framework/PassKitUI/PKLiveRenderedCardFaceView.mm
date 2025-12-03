@interface PKLiveRenderedCardFaceView
- (PKLiveRenderedCardFaceView)initWithFrame:(CGRect)frame pass:(id)pass;
- (UIEdgeInsets)faceImageAlignmentInsets;
- (UIEdgeInsets)faceImageContentInsets;
- (void)_showState:(unint64_t)state animated:(BOOL)animated;
- (void)_updateFaceImage;
- (void)clearFaceImage;
- (void)dealloc;
- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state;
- (void)invalidate;
- (void)layoutSubviews;
- (void)setFaceImage:(id)image withAverageColor:(id)color alignmentInsets:(UIEdgeInsets)insets contentInsets:(UIEdgeInsets)contentInsets;
- (void)setMotionEnabled:(BOOL)enabled;
@end

@implementation PKLiveRenderedCardFaceView

- (void)clearFaceImage
{
  faceImage = self->_faceImage;
  if (faceImage)
  {
    self->_faceImage = 0;

    faceImageAverageColor = self->_faceImageAverageColor;
    self->_faceImageAverageColor = 0;

    self->_usingFaceImage = 0;

    [(PKLiveRenderedCardFaceView *)self _updateFaceImage];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKLiveRenderedCardFaceView;
  [(PKLiveRenderedCardFaceView *)&v12 layoutSubviews];
  [(PKLiveRenderedCardFaceView *)self bounds];
  v7 = v3;
  v8 = v4;
  if (self->_usingFaceImage)
  {
    top = self->_faceImageContentInsets.top;
    left = self->_faceImageContentInsets.left;
    v3 = v3 + left;
    v4 = v4 + top;
    v5 = v5 - (left + self->_faceImageContentInsets.right);
    v6 = v6 - (top + self->_faceImageContentInsets.bottom);
  }

  [(UIView *)self->_cardView setFrame:v3, v4, v5, v6];
  logoImageView = self->_logoImageView;
  [(UIImageView *)logoImageView frame];
  [(UIImageView *)logoImageView setFrame:v7, v8];
}

- (PKLiveRenderedCardFaceView)initWithFrame:(CGRect)frame pass:(id)pass
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v93 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  if (!passCopy)
  {
    goto LABEL_48;
  }

  v88.receiver = self;
  v88.super_class = PKLiveRenderedCardFaceView;
  height = [(PKLiveRenderedCardFaceView *)&v88 initWithFrame:x, y, width, height];
  self = height;
  if (!height)
  {
LABEL_47:
    self = self;
    selfCopy = self;
LABEL_49:

    return selfCopy;
  }

  objc_storeStrong(&height->_pass, pass);
  self->_type = [(PKPass *)self->_pass liveRenderType];
  self->_state = 0;
  v12 = +[PKUIForegroundActiveArbiter sharedInstance];
  v13 = v12;
  if (v12)
  {
    v14 = ([v12 registerObserver:self] >> 8) & 1;
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  self->_foregroundActive = v14;
  displayProfile = [(PKPass *)self->_pass displayProfile];
  v16 = MEMORY[0x1E69DC888];
  backgroundColor = [displayProfile backgroundColor];
  v18 = [v16 pkui_colorWithPKColor:backgroundColor];
  [(PKLiveRenderedCardFaceView *)self setBackgroundColor:v18];

  [(PKPass *)self->_pass liveRenderedImageSet];
  v87 = v86 = displayProfile;
  type = self->_type;
  if (type > 2)
  {
    if (type == 3)
    {
      v48 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:&__block_literal_global_143];
      systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
      v50 = systemGray5Color;
      if (v48)
      {
        v51 = [systemGray5Color resolvedColorWithTraitCollection:v48];

        v50 = v51;
      }

      v30 = [v50 colorWithAlphaComponent:0.15];

      v52 = objc_alloc_init(MEMORY[0x1E69BC728]);
      texturedCardView = self->_texturedCardView;
      self->_texturedCardView = v52;

      v35 = v52;
    }

    else
    {
      if (type != 5)
      {
        goto LABEL_52;
      }

      self->_requiresFaceImage = 1;
      v31 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:&__block_literal_global_143];
      systemGray5Color2 = [MEMORY[0x1E69DC888] systemGray5Color];
      v33 = systemGray5Color2;
      if (v31)
      {
        v34 = [systemGray5Color2 resolvedColorWithTraitCollection:v31];

        v33 = v34;
      }

      v30 = [v33 colorWithAlphaComponent:0.15];

      v35 = objc_alloc_init(MEMORY[0x1E69DD250]);
    }

    cardView = self->_cardView;
    self->_cardView = v35;
    goto LABEL_44;
  }

  if (type == 1)
  {
    v36 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:&__block_literal_global_141];
    systemGray5Color3 = [MEMORY[0x1E69DC888] systemGray5Color];
    v38 = systemGray5Color3;
    v85 = v13;
    if (v36)
    {
      v39 = [systemGray5Color3 resolvedColorWithTraitCollection:v36];

      v38 = v39;
    }

    v30 = [v38 colorWithAlphaComponent:0.6];

    v40 = objc_alloc(MEMORY[0x1E69BC730]);
    cardView = [v87 diffuseMaterialPropertyImage];
    imageRef = [cardView imageRef];
    metalnessMaterialPropertyImage = [v87 metalnessMaterialPropertyImage];
    imageRef2 = [metalnessMaterialPropertyImage imageRef];
    normalMaterialPropertyImage = [v87 normalMaterialPropertyImage];
    v46 = [v40 initWithDiffuse:imageRef metalness:imageRef2 normal:{objc_msgSend(normalMaterialPropertyImage, "imageRef")}];
    v47 = self->_texturedCardView;
    self->_texturedCardView = v46;

    objc_storeStrong(&self->_cardView, v46);
    v13 = v85;
LABEL_44:

    v67 = self->_cardView;
    if (v67)
    {
      [(PKLiveRenderedCardFaceView *)self addSubview:self->_cardView];
      v68 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      logoImageView = self->_logoImageView;
      self->_logoImageView = v68;

      v70 = self->_logoImageView;
      v71 = MEMORY[0x1E69DCAB8];
      logoImage = [(PKPass *)self->_pass logoImage];
      v73 = [v71 imageWithPKImage:logoImage];
      [(UIImageView *)v70 setImage:v73];

      [(UIImageView *)self->_logoImageView sizeToFit];
      [(PKLiveRenderedCardFaceView *)self addSubview:self->_logoImageView];
      layer = [(PKLiveRenderedCardFaceView *)self layer];
      [(PKPass *)self->_pass style];
      PKPassFrontFaceContentSize();
      [v30 CGColor];
      PKPaymentStyleApplyCorners();
    }

    else
    {
      layer = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(layer, OS_LOG_TYPE_DEFAULT))
      {
        v77 = self->_type;
        uniqueID = [(PKPass *)self->_pass uniqueID];
        *buf = 134218242;
        v90 = v77;
        v91 = 2112;
        v92 = uniqueID;
        _os_log_impl(&dword_1BD026000, layer, OS_LOG_TYPE_DEFAULT, "PKLiveRenderedCardFaceView: live render type %lu recognized but failed to initialize for pass %@.", buf, 0x16u);
      }
    }

    if (v67)
    {
      goto LABEL_47;
    }

LABEL_48:
    selfCopy = 0;
    goto LABEL_49;
  }

  if (type == 2)
  {
    v20 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC0]];
    v21 = [v20 fontDescriptorWithSymbolicTraits:2];

    v84 = [MEMORY[0x1E69DB878] fontWithDescriptor:v21 size:22.0];
    frontFieldBuckets = [passCopy frontFieldBuckets];
    firstObject = [frontFieldBuckets firstObject];
    v23FirstObject = [firstObject firstObject];
    value = [v23FirstObject value];

    v25 = MEMORY[0x1E69DC888];
    displayProfile2 = [passCopy displayProfile];
    foregroundColor = [displayProfile2 foregroundColor];
    v82 = [v25 pkui_colorWithPKColor:foregroundColor];

    homeKeyLiveRenderType = [passCopy homeKeyLiveRenderType];
    v81 = v21;
    if (homeKeyLiveRenderType > 1)
    {
      if (homeKeyLiveRenderType == 2)
      {
        v29 = 1;
        v54 = LightBorderColor();
      }

      else
      {
        if (homeKeyLiveRenderType != 4)
        {
          v29 = 2;
          if (homeKeyLiveRenderType != 3)
          {
            goto LABEL_40;
          }

          v30 = LightBorderColor();
          v29 = 0;
          if (!v30)
          {
            goto LABEL_40;
          }

LABEL_43:
          v65 = [objc_alloc(MEMORY[0x1E69BC738]) initWithStyle:v29 text:value font:v84 textColor:v82];
          v66 = self->_texturedCardView;
          self->_texturedCardView = v65;

          objc_storeStrong(&self->_cardView, v65);
          cardView = v81;
          goto LABEL_44;
        }

        v29 = 3;
        v54 = DarkBorderColor();
      }

      v30 = v54;
      if (v54)
      {
        goto LABEL_43;
      }

LABEL_40:
      v60 = v13;
      v61 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:{&__block_literal_global_143, v81}];
      systemGray5Color4 = [MEMORY[0x1E69DC888] systemGray5Color];
      v63 = systemGray5Color4;
      if (v61)
      {
        v64 = [systemGray5Color4 resolvedColorWithTraitCollection:v61];

        v63 = v64;
      }

      v30 = [v63 colorWithAlphaComponent:0.15];

      v13 = v60;
      goto LABEL_43;
    }

    if (homeKeyLiveRenderType)
    {
      v29 = 2;
      if (homeKeyLiveRenderType != 1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v55 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v55, OS_LOG_TYPE_DEFAULT, "Attempting to show PKAppleHomeKeyCardView, but unknown type provided, falling back to silver", buf, 2u);
      }
    }

    v56 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:{&__block_literal_global_143, v81}];
    systemGray5Color5 = [MEMORY[0x1E69DC888] systemGray5Color];
    v58 = systemGray5Color5;
    if (v56)
    {
      v59 = [systemGray5Color5 resolvedColorWithTraitCollection:v56];

      v58 = v59;
    }

    v30 = [v58 colorWithAlphaComponent:0.15];

    v29 = 2;
    if (v30)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_52:
  v79 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID2 = [(PKPass *)self->_pass uniqueID];
    *buf = 134218242;
    v90 = type;
    v91 = 2112;
    v92 = uniqueID2;
    _os_log_impl(&dword_1BD026000, v79, OS_LOG_TYPE_DEFAULT, "PKLiveRenderedCardFaceView: invalid live render type %lu for pass %@.", buf, 0x16u);
  }

  __break(1u);
  return result;
}

- (void)dealloc
{
  [(PKLiveRenderedCardFaceView *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKLiveRenderedCardFaceView;
  [(PKLiveRenderedCardFaceView *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(PKTexturedCardView *)self->_texturedCardView invalidate];
  }
}

- (void)setMotionEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(PKTexturedCardView *)self->_texturedCardView setMotionEnabled:?];
  }
}

- (void)setFaceImage:(id)image withAverageColor:(id)color alignmentInsets:(UIEdgeInsets)insets contentInsets:(UIEdgeInsets)contentInsets
{
  bottom = contentInsets.bottom;
  right = contentInsets.right;
  top = contentInsets.top;
  left = contentInsets.left;
  v20 = insets.bottom;
  v21 = insets.right;
  v18 = insets.top;
  v19 = insets.left;
  imageCopy = image;
  colorCopy = color;
  if (imageCopy)
  {
    if (self->_faceImage == imageCopy && (v10.f64[0] = v18, v10.f64[1] = v19, v11.f64[0] = v20, v11.f64[1] = v21, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_faceImageAlignmentInsets.top, v10), vceqq_f64(*&self->_faceImageAlignmentInsets.bottom, v11)))) & 1) != 0))
    {
      v12.f64[0] = top;
      v12.f64[1] = left;
      v13.f64[0] = bottom;
      v13.f64[1] = right;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_faceImageContentInsets.top, v12), vceqq_f64(*&self->_faceImageContentInsets.bottom, v13)))) & 1) == 0)
      {
        self->_faceImageContentInsets.top = top;
        self->_faceImageContentInsets.left = left;
        self->_faceImageContentInsets.bottom = bottom;
        self->_faceImageContentInsets.right = right;
        [(PKLiveRenderedCardFaceView *)self setNeedsLayout];
      }
    }

    else
    {
      objc_storeStrong(&self->_faceImage, image);
      objc_storeStrong(&self->_faceImageAverageColor, color);
      self->_faceImageAlignmentInsets.top = v18;
      self->_faceImageAlignmentInsets.left = v19;
      self->_faceImageAlignmentInsets.bottom = v20;
      self->_faceImageAlignmentInsets.right = v21;
      self->_faceImageContentInsets.top = top;
      self->_faceImageContentInsets.left = left;
      self->_faceImageContentInsets.bottom = bottom;
      self->_faceImageContentInsets.right = right;
      [(PKLiveRenderedCardFaceView *)self _updateFaceImage];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)_updateFaceImage
{
  if (self->_type == 5 && !self->_invalidated)
  {
    [(PKPass *)self->_pass style];
    self->_usingFaceImage = self->_faceImage != 0;
    if (self->_faceImage)
    {
      v3 = self->_cardView;
      top = self->_faceImageAlignmentInsets.top;
      left = self->_faceImageAlignmentInsets.left;
      bottom = self->_faceImageAlignmentInsets.bottom;
      right = self->_faceImageAlignmentInsets.right;
      [(UIImage *)self->_faceImage scale];
      v9 = v8;
      v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:&__block_literal_global_79];
      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 0;
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __46__PKLiveRenderedCardFaceView__updateFaceImage__block_invoke_2;
      v31[3] = &unk_1E8017D68;
      v31[4] = self;
      v31[5] = &v36;
      v31[6] = &v32;
      PKUIPerformWithEffectiveTraitCollection(v10, v31);
      v11 = objc_alloc(MEMORY[0x1E69BC798]);
      v12 = [v11 initWithDiffuse:v37[3] contentInsets:v33[3] averageColor:{top * v9, left * v9, bottom * v9, right * v9}];
      spotlightCardView = self->_spotlightCardView;
      self->_spotlightCardView = v12;

      objc_storeStrong(&self->_texturedCardView, v12);
      objc_storeStrong(&self->_cardView, v12);
      [(PKTexturedCardView *)self->_texturedCardView setMotionEnabled:self->_enabled];
      CGImageRelease(v37[3]);
      CGColorRelease(v33[3]);
      [(PKLiveRenderedCardFaceView *)self insertSubview:self->_cardView belowSubview:v3];
      [(UIView *)v3 removeFromSuperview];
      [(PKLiveRenderedCardFaceView *)self setNeedsLayout];
      isLight = [(PKSpotlightCardView *)self->_spotlightCardView isLight];
      _Block_object_dispose(&v32, 8);
      _Block_object_dispose(&v36, 8);
    }

    else
    {
      v15 = self->_spotlightCardView;
      if (v15)
      {
        v16 = MEMORY[0x1E69DD250];
        v17 = v15;
        v18 = objc_alloc_init(v16);
        cardView = self->_cardView;
        self->_cardView = v18;

        v20 = self->_spotlightCardView;
        self->_spotlightCardView = 0;

        texturedCardView = self->_texturedCardView;
        self->_texturedCardView = 0;

        [(PKLiveRenderedCardFaceView *)self insertSubview:self->_cardView belowSubview:v17];
        [(PKSpotlightCardView *)v17 removeFromSuperview];
        [(PKSpotlightCardView *)v17 invalidate];
        [(PKLiveRenderedCardFaceView *)self setNeedsLayout];
      }

      isLight = 1;
    }

    layer = [(PKLiveRenderedCardFaceView *)self layer];
    PKPassFrontFaceContentSize();
    if (isLight)
    {
      v23 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:&__block_literal_global_143];
      systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
      v25 = systemGray5Color;
      if (v23)
      {
        v26 = [systemGray5Color resolvedColorWithTraitCollection:v23];

        v25 = v26;
      }

      v27 = 0.15;
    }

    else
    {
      v23 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:&__block_literal_global_141];
      systemGray5Color2 = [MEMORY[0x1E69DC888] systemGray5Color];
      v25 = systemGray5Color2;
      if (v23)
      {
        v29 = [systemGray5Color2 resolvedColorWithTraitCollection:v23];

        v25 = v29;
      }

      v27 = 0.6;
    }

    v30 = [v25 colorWithAlphaComponent:v27];

    [v30 CGColor];
    PKPaymentStyleApplyCorners();
  }
}

CGColorRef __46__PKLiveRenderedCardFaceView__updateFaceImage__block_invoke_2(void *a1)
{
  *(*(a1[5] + 8) + 24) = CGImageRetain([*(a1[4] + 472) CGImage]);
  result = CGColorRetain([*(a1[4] + 480) CGColor]);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state
{
  v4 = (*&state.var0 >> 8) & 1;
  if (v4 != self->_foregroundActive)
  {
    self->_foregroundActive = v4;
  }
}

- (void)_showState:(unint64_t)state animated:(BOOL)animated
{
  if (self->_type == 1)
  {
    v25 = v7;
    v26 = v6;
    v27 = v4;
    v28 = v5;
    if (!self->_invalidated && self->_state != state)
    {
      animatedCopy = animated;
      self->_state = state;
      if (state == 1)
      {
        liveRenderedArmedStateImageSet = [(PKPass *)self->_pass liveRenderedArmedStateImageSet];
      }

      else
      {
        if (state)
        {
          return;
        }

        liveRenderedArmedStateImageSet = [(PKPass *)self->_pass liveRenderedImageSet];
      }

      v11 = liveRenderedArmedStateImageSet;
      if (liveRenderedArmedStateImageSet)
      {
        v12 = objc_alloc(MEMORY[0x1E69BC730]);
        diffuseMaterialPropertyImage = [v11 diffuseMaterialPropertyImage];
        imageRef = [diffuseMaterialPropertyImage imageRef];
        metalnessMaterialPropertyImage = [v11 metalnessMaterialPropertyImage];
        imageRef2 = [metalnessMaterialPropertyImage imageRef];
        normalMaterialPropertyImage = [v11 normalMaterialPropertyImage];
        v18 = [v12 initWithDiffuse:imageRef metalness:imageRef2 normal:{objc_msgSend(normalMaterialPropertyImage, "imageRef")}];

        [v18 setMotionEnabled:self->_enabled];
        [v18 setAlpha:0.0];
        [(UIView *)self->_cardView frame];
        [v18 setFrame:?];
        [(PKLiveRenderedCardFaceView *)self insertSubview:v18 aboveSubview:self->_cardView];
        if (animatedCopy)
        {
          v19 = MEMORY[0x1E69DD250];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __50__PKLiveRenderedCardFaceView__showState_animated___block_invoke;
          v22[3] = &unk_1E8010A10;
          v23 = v18;
          selfCopy = self;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __50__PKLiveRenderedCardFaceView__showState_animated___block_invoke_2;
          v20[3] = &unk_1E8012FD0;
          v20[4] = self;
          v21 = v23;
          [v19 pkui_animateUsingOptions:4 animations:v22 completion:v20];
        }

        else
        {
          [v18 setAlpha:1.0];
          [(UIView *)self->_cardView removeFromSuperview];
          [(PKTexturedCardView *)self->_texturedCardView invalidate];
          objc_storeStrong(&self->_texturedCardView, v18);
          objc_storeStrong(&self->_cardView, v18);
        }
      }
    }
  }
}

uint64_t __50__PKLiveRenderedCardFaceView__showState_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(*(a1 + 40) + 432);

  return [v2 setAlpha:0.0];
}

uint64_t __50__PKLiveRenderedCardFaceView__showState_animated___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 432) removeFromSuperview];
    [*(*(a1 + 32) + 448) invalidate];
    v3 = *(a1 + 40);
    objc_storeStrong((*(a1 + 32) + 448), v3);
    objc_storeStrong((*(a1 + 32) + 432), v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 448);
    v6 = *(v4 + 466);

    return [v5 setMotionEnabled:v6];
  }

  else
  {
    [*(a1 + 40) removeFromSuperview];
    [*(a1 + 40) invalidate];
    v8 = *(*(a1 + 32) + 432);

    return [v8 setAlpha:1.0];
  }
}

- (UIEdgeInsets)faceImageAlignmentInsets
{
  top = self->_faceImageAlignmentInsets.top;
  left = self->_faceImageAlignmentInsets.left;
  bottom = self->_faceImageAlignmentInsets.bottom;
  right = self->_faceImageAlignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)faceImageContentInsets
{
  top = self->_faceImageContentInsets.top;
  left = self->_faceImageContentInsets.left;
  bottom = self->_faceImageContentInsets.bottom;
  right = self->_faceImageContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end