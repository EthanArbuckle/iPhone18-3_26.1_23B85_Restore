@interface VUIOverlayView
+ (id)overlayViewFromMediaItem:(id)item overlayType:(int64_t)type existingView:(id)view;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (UIEdgeInsets)_overlayPadding;
- (UIEdgeInsets)padding;
- (void)setBadgeViewWrappers:(id)wrappers;
- (void)setGradientLayer:(id)layer;
- (void)setGradientView:(id)view;
- (void)setOverlayType:(int64_t)type;
- (void)setProgressView:(id)view;
- (void)setTextBadge:(id)badge;
- (void)setTitleLabel:(id)label;
@end

@implementation VUIOverlayView

+ (id)overlayViewFromMediaItem:(id)item overlayType:(int64_t)type existingView:(id)view
{
  v29[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = viewCopy;
  }

  else
  {
    v10 = [VUIOverlayView alloc];
    v9 = [(VUIOverlayView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v11 = v9;
  [(VUIOverlayView *)v9 setOverlayType:type];
  bookmark = [itemCopy bookmark];
  [bookmark floatValue];
  v14 = v13;

  duration = [itemCopy duration];
  [duration floatValue];
  v17 = v16;

  playedState = [itemCopy playedState];

  integerValue = [playedState integerValue];
  if (integerValue == 3)
  {
    v20 = objc_alloc_init(MEMORY[0x1E69D5998]);
    v21 = [VUIImageResourceMap imageForResourceName:@"watched-checkmark"];
    [v20 setImage:v21];

    [v20 setContentMode:12];
    if (!v20)
    {
LABEL_12:

      goto LABEL_13;
    }

    v22 = objc_opt_new();
    [v22 setBadgeView:v20];
    [v22 setBadgeSize:{160.0, 160.0}];
    [v22 setBadgeType:@"checkmark"];
    v29[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [(VUIOverlayView *)v11 setBadgeViewWrappers:v23];

LABEL_11:
    goto LABEL_12;
  }

  if (v14 > 0.0 && v17 > 0.0)
  {
    v24 = v14 / v17;
    if (v24 > 0.0)
    {
      v20 = objc_opt_new();
      v22 = +[VUIProgressBarLayout defaultProgressBarLayout];
      gradientStartColor = [v22 gradientStartColor];
      [v20 setGradientStartColor:gradientStartColor];

      gradientEndColor = [v22 gradientEndColor];
      [v20 setGradientEndColor:gradientEndColor];

      [v22 cornerRadius];
      [v20 setCornerRadius:?];
      [v20 setShouldProgressBarUseRoundCorner:{objc_msgSend(v22, "shouldProgressBarUseRoundCorner")}];
      fillColor = [v22 fillColor];
      [v20 setCompleteTintColor:fillColor];

      [v20 setStyle:1];
      [v22 height];
      [v20 setHeight:?];
      [v20 setProgress:v24];
      [(VUIOverlayView *)v11 setProgressView:v20];
      goto LABEL_11;
    }
  }

LABEL_13:
  [(VUIOverlayView *)v11 _overlayPadding];
  [(VUIOverlayView *)v11 setPadding:?];

  return v11;
}

- (void)setOverlayType:(int64_t)type
{
  if (self->_overlayType != type)
  {
    self->_overlayType = type;
    [(VUIOverlayView *)self vui_setNeedsDisplay];
  }
}

- (void)setGradientLayer:(id)layer
{
  layerCopy = layer;
  gradientLayer = self->_gradientLayer;
  v9 = layerCopy;
  if (gradientLayer != layerCopy)
  {
    [(CALayer *)gradientLayer removeFromSuperlayer];
    objc_storeStrong(&self->_gradientLayer, layer);
    v7 = self->_gradientLayer;
    [(VUIBaseView *)self->_gradientView bounds];
    [(CALayer *)v7 setFrame:?];
    layer = [(VUIBaseView *)self->_gradientView layer];
    [layer addSublayer:self->_gradientLayer];
  }

  [(VUIOverlayView *)self vui_setNeedsLayout];
}

- (void)setGradientView:(id)view
{
  viewCopy = view;
  gradientView = self->_gradientView;
  v7 = viewCopy;
  if (gradientView != viewCopy)
  {
    [(VUIBaseView *)gradientView removeFromSuperview];
    [(VUIOverlayView *)self vui_insertSubview:v7 aboveSubview:0 oldView:self->_gradientView];
    objc_storeStrong(&self->_gradientView, view);
  }

  [(VUIOverlayView *)self vui_setNeedsLayout];
}

- (void)setTitleLabel:(id)label
{
  labelCopy = label;
  titleLabel = self->_titleLabel;
  v7 = labelCopy;
  if (titleLabel != labelCopy)
  {
    [(VUILabel *)titleLabel removeFromSuperview];
    objc_storeStrong(&self->_titleLabel, label);
    if (self->_titleLabel)
    {
      [(VUIOverlayView *)self addSubview:?];
    }
  }

  [(VUIOverlayView *)self vui_setNeedsLayout];
}

- (void)setTextBadge:(id)badge
{
  badgeCopy = badge;
  [(VUIOverlayView *)self vui_addSubview:badgeCopy oldView:self->_textBadge];
  if (self->_textBadge != badgeCopy)
  {
    objc_storeStrong(&self->_textBadge, badge);
  }

  [(VUIOverlayView *)self vui_setNeedsLayout];
}

- (void)setBadgeViewWrappers:(id)wrappers
{
  v28 = *MEMORY[0x1E69E9840];
  wrappersCopy = wrappers;
  if ([wrappersCopy count] || -[NSArray count](self->_badgeViewWrappers, "count"))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = self->_badgeViewWrappers;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          badgeView = [*(*(&v22 + 1) + 8 * v10) badgeView];
          [badgeView removeFromSuperview];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_badgeViewWrappers, wrappers);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = self->_badgeViewWrappers;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          badgeView2 = [*(*(&v18 + 1) + 8 * v16) badgeView];
          [(VUIOverlayView *)self addSubview:badgeView2];

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }

    [(VUIOverlayView *)self vui_setNeedsLayout];
  }
}

- (void)setProgressView:(id)view
{
  viewCopy = view;
  progressView = self->_progressView;
  v7 = viewCopy;
  if (progressView != viewCopy)
  {
    [(VUIProgressView *)progressView removeFromSuperview];
    objc_storeStrong(&self->_progressView, view);
    if (self->_progressView)
    {
      [(VUIOverlayView *)self addSubview:?];
    }
  }

  [(VUIOverlayView *)self setNeedsLayout];
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  v131 = *MEMORY[0x1E69E9840];
  v128.receiver = self;
  v128.super_class = VUIOverlayView;
  [(VUIOverlayView *)&v128 vui_layoutSubviews:only computationOnly:?];
  vuiIsRTL = [(VUIOverlayView *)self vuiIsRTL];
  [(VUIOverlayView *)self bounds];
  v7 = v6;
  v9 = v8;
  top = self->_padding.top;
  left = self->_padding.left;
  right = self->_padding.right;
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v110 = *MEMORY[0x1E695F058];
  v111 = v11;
  v112 = v13;
  v113 = v11;
  v104 = v11;
  v105 = v12;
  v14 = v13;
  v115 = *MEMORY[0x1E695F058];
  v116 = v12;
  v118 = v12;
  v119 = *MEMORY[0x1E695F058];
  if (self->_titleLabel)
  {
    v15 = *(MEMORY[0x1E695F058] + 8);
    titleLabel = [(VUIOverlayView *)self titleLabel];
    textLayout = [titleLabel textLayout];
    [textLayout margin];
    v19 = v18;
    v114 = v20;
    v22 = v21;

    v23 = v7 - v19 - v22;
    [(VUILabel *)self->_titleLabel sizeThatFits:v23, 0.0];
    v14 = v24;
    VUIRoundValue();
    overlayType = self->_overlayType;
    v115 = v26;
    v116 = v23;
    if (overlayType > 2)
    {
      if (overlayType == 3)
      {
        [(VUILabel *)self->_titleLabel sizeThatFits:v23, 0.0];
        v14 = v30;
        [(VUILabel *)self->_titleLabel bottomMarginWithBaselineMargin:v114];
        VUIRoundValue();
        v113 = v31;
        v104 = v9 + -145.0;
        v110 = *MEMORY[0x1E695EFF8];
        v111 = *(MEMORY[0x1E695EFF8] + 8);
        [(VUIOverlayView *)self vui_sendSubviewToBack:self->_gradientView];
        v112 = 145.0;
        v105 = v7;
        v12 = v118;
        v11 = v15;
LABEL_13:
        v10 = v119;
        goto LABEL_14;
      }

      v27 = overlayType == 4;
    }

    else
    {
      if (overlayType == 1)
      {
        VUIRoundValue();
        v112 = v13;
        v113 = v29;
        v11 = v15;
        v111 = v15;
        v12 = v118;
        v10 = v119;
        v110 = v119;
        goto LABEL_11;
      }

      v27 = overlayType == 2;
    }

    v11 = v15;
    if (!v27)
    {
      v12 = v118;
      v10 = v119;
      v110 = v119;
      v111 = v11;
      v112 = v13;
      v113 = v11;
LABEL_11:
      v104 = v11;
      v105 = v12;
      goto LABEL_14;
    }

    [(VUILabel *)self->_titleLabel bottomMarginWithBaselineMargin:v114];
    VUIRoundValue();
    v113 = v28;
    v104 = v9 - v9 * 0.28;
    v110 = *MEMORY[0x1E695EFF8];
    v111 = *(MEMORY[0x1E695EFF8] + 8);
    v112 = v9 * 0.28;
    [(VUIOverlayView *)self vui_sendSubviewToBack:self->_gradientView];
    v105 = v7;
    v12 = v118;
    goto LABEL_13;
  }

LABEL_14:
  v103 = v14;
  textBadge = self->_textBadge;
  v108 = v12;
  v109 = v13;
  v106 = v10;
  v107 = v11;
  if (textBadge)
  {
    [(UIView *)textBadge vui_sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v108 = v33;
    v109 = v34;
    if (self->_overlayType == 3)
    {
      v35 = 40.0;
    }

    else
    {
      v35 = top;
    }

    v36 = 30.0;
    if (self->_overlayType != 3)
    {
      v36 = left;
    }

    v106 = v36;
    v107 = v35;
  }

  badgeViewWrappers = self->_badgeViewWrappers;
  if (badgeViewWrappers)
  {
    v99 = v11;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v38 = badgeViewWrappers;
    v39 = [(NSArray *)v38 countByEnumeratingWithState:&v124 objects:v130 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v125;
      v42 = top + *MEMORY[0x1E69DDCE0];
      v43 = left + *(MEMORY[0x1E69DDCE0] + 8);
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v125 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v45 = *(*(&v124 + 1) + 8 * i);
          [v45 badgeSize];
          v47 = v46;
          v49 = v48;
          badgeType = [v45 badgeType];
          v51 = badgeType;
          v52 = v43;
          v53 = v42;
          if (badgeType)
          {
            v54 = [badgeType isEqualToString:{@"checkmark", v43, v42}];
            v52 = v7 - v47;
            v53 = v9 - v49;
            if (!v54)
            {
              v52 = v43;
              v53 = v42;
            }
          }

          if (vuiIsRTL)
          {
            VUIRectWithFlippedOriginRelativeToBoundingRect();
            v47 = v55;
            v49 = v56;
          }

          [v45 setBadgeFrame:{v52, v53, v47, v49}];
        }

        v40 = [(NSArray *)v38 countByEnumeratingWithState:&v124 objects:v130 count:16];
      }

      while (v40);
    }

    v10 = v119;
    v11 = v99;
  }

  v57 = v10;
  if (self->_progressView)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    [currentDevice userInterfaceIdiom];

    [(VUIProgressView *)self->_progressView sizeThatFits:v7 - left - right, 0.0];
    VUIRoundValue();
    v11 = v59;
    v57 = left;
    v10 = v119;
  }

  if (vuiIsRTL)
  {
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v57 = v60;
    v62 = v61;
    layer = [(VUIProgressView *)self->_progressView layer];
    [layer setFlipsHorizontalAxis:1];

    v11 = v62;
    v10 = v119;
  }

  [(VUIProgressView *)self->_progressView setFrame:v57, v11];
  [(VUIBaseView *)self->_gradientView setFrame:v10, v104, v105, v112];
  [(CALayer *)self->_gradientLayer setFrame:v110, v111, v105, v112];
  gradientLayer = self->_gradientLayer;
  if (gradientLayer)
  {
    mask = [(CALayer *)gradientLayer mask];

    if (mask)
    {
      mask2 = [(CALayer *)self->_gradientLayer mask];
      [mask2 setFrame:{v110, v111, v105, v112}];
    }
  }

  v67 = v103;
  v68 = v116;
  if (vuiIsRTL)
  {
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v70 = v69;
    v72 = v71;
    v68 = v73;
    v67 = v74;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v76 = v75;
    v77 = v70;
    v79 = v78;
    v80 = v72;
    v82 = v81;
    v84 = v83;
  }

  else
  {
    v80 = v113;
    v77 = v115;
    v82 = v108;
    v84 = v109;
    v76 = v106;
    v79 = v107;
  }

  [(VUILabel *)self->_titleLabel setFrame:v77, v80, v68, v67];
  [(VUITextBadgeView *)self->_textBadge setFrame:v76, v79, v82, v84];
  if (self->_overlayType == 3)
  {
    layer2 = [(VUITextBadgeView *)self->_textBadge layer];
    [layer2 removeAllAnimations];
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v86 = self->_badgeViewWrappers;
  v87 = [(NSArray *)v86 countByEnumeratingWithState:&v120 objects:v129 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v121;
    do
    {
      for (j = 0; j != v88; ++j)
      {
        if (*v121 != v89)
        {
          objc_enumerationMutation(v86);
        }

        v91 = *(*(&v120 + 1) + 8 * j);
        badgeView = [v91 badgeView];
        [v91 badgeFrame];
        [badgeView setFrame:?];
      }

      v88 = [(NSArray *)v86 countByEnumeratingWithState:&v120 objects:v129 count:16];
    }

    while (v88);
  }

  layer3 = [(VUIOverlayView *)self layer];
  [layer3 cornerRadius];
  v95 = v94;

  layer4 = [(VUIOverlayView *)self layer];
  [layer4 setMasksToBounds:v95 > 0.0];

  width = subviews.width;
  height = subviews.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)_overlayPadding
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  if (self->_overlayType == 4)
  {
    v5 = 8.0;
    v4 = 8.0;
    v3 = 8.0;
    v2 = 8.0;
  }

  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end