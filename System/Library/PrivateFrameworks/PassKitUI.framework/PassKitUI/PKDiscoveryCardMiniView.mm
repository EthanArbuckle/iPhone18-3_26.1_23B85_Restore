@interface PKDiscoveryCardMiniView
- (CGSize)_layoutSubviewsInBounds:(CGRect)bounds template:(BOOL)template;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDiscoveryCardMiniView)initWithArticleLayout:(id)layout;
- (PKDiscoveryCardViewDelegate)delegate;
- (void)_loadImageData;
- (void)_tapGestureRecognized:(id)recognized;
- (void)layoutSubviews;
@end

@implementation PKDiscoveryCardMiniView

- (PKDiscoveryCardMiniView)initWithArticleLayout:(id)layout
{
  layoutCopy = layout;
  v34.receiver = self;
  v34.super_class = PKDiscoveryCardMiniView;
  v6 = [(PKDiscoveryCardMiniView *)&v34 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_articleLayout, layout);
    miniCard = [layoutCopy miniCard];
    v9 = miniCard;
    if (miniCard)
    {
      card = miniCard;
    }

    else
    {
      card = [layoutCopy card];
    }

    v11 = card;

    if (_UISolariumFeatureFlagEnabled())
    {
      [(UIView *)v7 pkui_setMaskType:3];
    }

    else
    {
      layer = [(PKDiscoveryCardMiniView *)v7 layer];
      [layer setMasksToBounds:1];

      [(PKDiscoveryCardMiniView *)v7 _setContinuousCornerRadius:14.0];
    }

    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(PKDiscoveryCardMiniView *)v7 setBackgroundColor:secondarySystemGroupedBackgroundColor];

    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    headingLabel = v7->_headingLabel;
    v7->_headingLabel = v14;

    v16 = v7->_headingLabel;
    heading = [v11 heading];
    [(UILabel *)v16 setText:heading];

    [(UILabel *)v7->_headingLabel setNumberOfLines:0];
    v18 = v7->_headingLabel;
    v19 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD40] weight:*MEMORY[0x1E69DB958]];
    [(UILabel *)v18 setFont:v19];

    [(PKDiscoveryCardMiniView *)v7 addSubview:v7->_headingLabel];
    v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v20;

    v22 = v7->_titleLabel;
    title = [v11 title];
    [(UILabel *)v22 setText:title];

    [(UILabel *)v7->_titleLabel setNumberOfLines:0];
    v24 = v7->_titleLabel;
    v25 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v24 setFont:v25];

    [(PKDiscoveryCardMiniView *)v7 addSubview:v7->_titleLabel];
    v26 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v7->_imageView;
    v7->_imageView = v26;

    v28 = _UISolariumFeatureFlagEnabled();
    v29 = v7->_imageView;
    if (v28)
    {
      [(UIImageView *)v29 pkui_setMaskType:3];
    }

    else
    {
      layer2 = [(UIImageView *)v29 layer];
      [layer2 setMasksToBounds:1];

      [(UIImageView *)v7->_imageView _setContinuousCornerRadius:8.0];
    }

    [(UIImageView *)v7->_imageView setContentMode:1];
    [(PKDiscoveryCardMiniView *)v7 addSubview:v7->_imageView];
    [(PKDiscoveryCardMiniView *)v7 _loadImageData];
    v31 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v7 action:sel__tapGestureRecognized_];
    tapRecognizer = v7->_tapRecognizer;
    v7->_tapRecognizer = v31;

    [(PKDiscoveryCardMiniView *)v7 addGestureRecognizer:v7->_tapRecognizer];
  }

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDiscoveryCardMiniView;
  [(PKDiscoveryCardMiniView *)&v3 layoutSubviews];
  [(PKDiscoveryCardMiniView *)self bounds];
  [(PKDiscoveryCardMiniView *)self _layoutSubviewsInBounds:0 template:?];
}

- (CGSize)_layoutSubviewsInBounds:(CGRect)bounds template:(BOOL)template
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  traitCollection = [(PKDiscoveryCardMiniView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v12 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC70]);

  isWritingDirectionRTL = [(PKDiscoveryArticleLayout *)self->_articleLayout isWritingDirectionRTL];
  if (isWritingDirectionRTL)
  {
    _shouldReverseLayoutDirection = isWritingDirectionRTL == 1;
  }

  else
  {
    _shouldReverseLayoutDirection = [(PKDiscoveryCardMiniView *)self _shouldReverseLayoutDirection];
  }

  if (_shouldReverseLayoutDirection)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  if (_shouldReverseLayoutDirection)
  {
    v16 = CGRectMinXEdge;
  }

  else
  {
    v16 = CGRectMaxXEdge;
  }

  if (v12 == NSOrderedDescending)
  {
    v17 = 15.0;
  }

  else
  {
    v17 = 12.0;
  }

  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v52 = CGRectInset(v51, 15.0, v17);
  v18 = v52.origin.x;
  v19 = v52.origin.y;
  v20 = v52.size.width;
  v21 = v52.size.height;
  remainder = v52;
  memset(&slice, 0, sizeof(slice));
  text = [(UILabel *)self->_headingLabel text];
  if ([text length])
  {
    text2 = [(UILabel *)self->_titleLabel text];
    if ([text2 length])
    {
      v24 = 2.0;
    }

    else
    {
      v24 = 0.0;
    }
  }

  else
  {
    v24 = 0.0;
  }

  text3 = [(UILabel *)self->_headingLabel text];
  if ([text3 length])
  {
    v26 = 1;
  }

  else
  {
    text4 = [(UILabel *)self->_titleLabel text];
    v26 = [text4 length] != 0;
  }

  v28 = v17 + v17;

  image = [(UIImageView *)self->_imageView image];

  if (image)
  {
    if (v12 == NSOrderedDescending)
    {
      v30 = CGRectMinYEdge;
    }

    else
    {
      v30 = v16;
    }

    if (v12 == NSOrderedDescending)
    {
      v31 = v15;
    }

    else
    {
      v31 = CGRectMinYEdge;
    }

    v53.origin.x = v18;
    v53.origin.y = v19;
    v53.size.width = v20;
    v53.size.height = v21;
    CGRectDivide(v53, &slice, &remainder, 116.0, v30);
    memset(&v47, 0, sizeof(v47));
    CGRectDivide(slice, &slice, &v47, 116.0, v31);
    if (!template)
    {
      [(UIImageView *)self->_imageView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    }

    if (v26)
    {
      v32 = remainder.origin.x;
      v33 = remainder.origin.y;
      v34 = remainder.size.width;
      v35 = remainder.size.height;
      if (v12 == NSOrderedDescending)
      {
        CGRectDivide(*&v32, &slice, &remainder, 10.0, CGRectMinYEdge);
        v28 = v28 + 10.0;
      }

      else
      {
        CGRectDivide(*&v32, &slice, &remainder, 12.0, v16);
      }
    }

    v46 = v28;
    v20 = remainder.size.width;
    v21 = remainder.size.height;
    v45 = 116.0;
  }

  else
  {
    v45 = 0.0;
    v46 = v17 + v17;
  }

  [(UILabel *)self->_headingLabel sizeThatFits:v20, v21];
  v37 = v36;
  [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v39 = v38;
  v40 = v24 + v37 + v38;
  CGRectDivide(remainder, &slice, &remainder, v40, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v47 = v54;
  CGRectDivide(v54, &slice, &v47, v37, CGRectMinYEdge);
  if (!template)
  {
    [(UILabel *)self->_headingLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  CGRectDivide(v47, &slice, &v47, v24, CGRectMinYEdge);
  CGRectDivide(v47, &slice, &v47, v39, CGRectMinYEdge);
  if (!template)
  {
    [(UILabel *)self->_titleLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  v41 = v45 + v40;
  v42 = fmax(v40, v45);
  if (v12 != NSOrderedDescending)
  {
    v41 = v42;
  }

  v43 = v46 + v41;
  v44 = width;
  result.height = v43;
  result.width = v44;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKDiscoveryCardMiniView *)self _layoutSubviewsInBounds:1 template:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_loadImageData
{
  miniCard = [(PKDiscoveryArticleLayout *)self->_articleLayout miniCard];
  v4 = miniCard;
  if (miniCard)
  {
    card = miniCard;
  }

  else
  {
    card = [(PKDiscoveryArticleLayout *)self->_articleLayout card];
  }

  v6 = card;

  objc_initWeak(&location, self);
  backgroundMedia = [v6 backgroundMedia];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__PKDiscoveryCardMiniView__loadImageData__block_invoke;
  v8[3] = &unk_1E80203C0;
  objc_copyWeak(&v9, &location);
  PKFetchImageForDiscoveryMedia(backgroundMedia, 116.0, 116.0, 1, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __41__PKDiscoveryCardMiniView__loadImageData__block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      [WeakRetained[53] setImage:v5];
      [v7 invalidateIntrinsicContentSize];
    }

    else
    {
      v8 = MEMORY[0x1E69DD250];
      v9 = WeakRetained[53];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __41__PKDiscoveryCardMiniView__loadImageData__block_invoke_2;
      v10[3] = &unk_1E8010A10;
      v10[4] = WeakRetained;
      v11 = v5;
      [v8 transitionWithView:v9 duration:5242880 options:v10 animations:0 completion:0.300000012];
    }
  }
}

uint64_t __41__PKDiscoveryCardMiniView__loadImageData__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setImage:*(a1 + 40)];
  [*(a1 + 32) invalidateIntrinsicContentSize];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_tapGestureRecognized:(id)recognized
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v6 = objc_opt_respondsToSelector();
    v5 = v7;
    if (v6)
    {
      [v7 discoveryCardViewTapped:self];
      v5 = v7;
    }
  }
}

- (PKDiscoveryCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end