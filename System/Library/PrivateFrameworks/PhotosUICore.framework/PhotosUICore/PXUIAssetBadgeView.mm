@interface PXUIAssetBadgeView
+ (CGSize)sizeForBadgeInfo:(PXAssetBadgeInfo *)a3 contentWidth:(double)a4;
+ (double)preferredHeightForStyle:(int64_t)a3;
+ (id)badgeSizeCacheKeyValueFromBadgeInfo:(PXAssetBadgeInfo *)a3 contentWidth:(double)a4;
+ (id)measuringLabel;
+ (void)preloadResourcesForStyle:(int64_t)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)bottomElementsPadding;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXAssetBadgeInfo)badgeInfo;
- (PXUIAssetBadgeView)initWithFrame:(CGRect)a3;
- (PXUIAssetBadgeViewDelegate)delegate;
- (id)_updateTopGroup:(id)a3 withBadgeInfo:(PXAssetBadgeInfo *)a4;
- (void)_handleButton:(id)a3;
- (void)_invalidate;
- (void)_layoutBottomCornersImages;
- (void)_layoutBottomLabel;
- (void)_layoutTopGroup:(id)a3;
- (void)_removeViewsFromGroup:(id)a3;
- (void)_setBackgroundImage:(id)a3;
- (void)_setNeedsUpdate;
- (void)_updateBackgroundIfNeeded;
- (void)_updateBottomLabelIfNeeded;
- (void)_updateBottomLeadingImageIfNeeded;
- (void)_updateBottomSpatialBadgeImageIfNeeded;
- (void)_updateBottomTrailingImageIfNeeded;
- (void)_updateContentSizeIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateTopLeftElementsIfNeeded;
- (void)_updateTopRightElementsIfNeeded;
- (void)layoutSubviews;
- (void)performChanges:(id)a3 animated:(BOOL)a4;
- (void)prepareForReuse;
- (void)setContentWidth:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setOverContent:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation PXUIAssetBadgeView

- (CGSize)bottomElementsPadding
{
  width = self->_bottomElementsPadding.width;
  height = self->_bottomElementsPadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXAssetBadgeInfo)badgeInfo
{
  v3 = *&self[17].count;
  *&retstr->badges = *&self[17].badges;
  *&retstr->count = v3;
  return self;
}

- (PXUIAssetBadgeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v20.receiver = self;
  v20.super_class = PXUIAssetBadgeView;
  if ([(PXUIAssetBadgeView *)&v20 pointInside:v7 withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(PXUIAssetBadgeView *)self subviews];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          [(PXUIAssetBadgeView *)self convertPoint:v14 toView:x, y];
          if ([v14 pointInside:v7 withEvent:?])
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_13:
  }

  return v8;
}

- (void)_updateContentSizeIfNeeded
{
  if (self->_needsUpdateFlags.contentSize)
  {
    self->_needsUpdateFlags.contentSize = 0;
    v3 = *(MEMORY[0x1E695F058] + 24);
    topLeftPrimaryGroup = self->_topLeftPrimaryGroup;
    if (topLeftPrimaryGroup)
    {
      [(_PXUIAssetBadgeTopGroup *)topLeftPrimaryGroup badgeInfo];
      PXAssetBadgeInfoIsNull();
    }

    topLeftSecondaryGroup = self->_topLeftSecondaryGroup;
    if (topLeftSecondaryGroup)
    {
      [(_PXUIAssetBadgeTopGroup *)topLeftSecondaryGroup badgeInfo];
      PXAssetBadgeInfoIsNull();
    }

    topRightGroup = self->_topRightGroup;
    if (topRightGroup)
    {
      [(_PXUIAssetBadgeTopGroup *)topRightGroup badgeInfo];
      PXAssetBadgeInfoIsNull();
    }

    self->_contentSize.width = *(MEMORY[0x1E695F058] + 16);
    self->_contentSize.height = v3;
  }
}

- (void)_updateBackgroundIfNeeded
{
  if (self->_needsUpdateFlags.background)
  {
    self->_needsUpdateFlags.background = 0;
    [(PXUIAssetBadgeView *)self badgeInfo];
    v3 = [(PXUIAssetBadgeView *)self style];
    if (v3 == 7 || v3 == 1)
    {
      v4 = +[PXAssetVariationsSettings sharedInstance];
      [v4 showLoopBadges];
    }

    [(PXUIAssetBadgeView *)self _setBackgroundImage:0];
  }
}

- (void)_updateBottomLabelIfNeeded
{
  if (self->_needsUpdateFlags.bottomLabel)
  {
    self->_needsUpdateFlags.bottomLabel = 0;
    if ([(PXUIAssetBadgeView *)self _wantsBottomLabel])
    {
      if (!self->_bottomLabel)
      {
        v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        bottomLabel = self->_bottomLabel;
        self->_bottomLabel = v3;

        v5 = self->_bottomLabel;
        v6 = [MEMORY[0x1E69DC888] clearColor];
        [(UILabel *)v5 setBackgroundColor:v6];

        v7 = self->_bottomLabel;
        v8 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
        [(UILabel *)v7 setFont:v8];

        v9 = self->_bottomLabel;
        v10 = [MEMORY[0x1E69DC888] whiteColor];
        [(UILabel *)v9 setTextColor:v10];

        [(UILabel *)self->_bottomLabel setTextAlignment:4];
        [(PXUIAssetBadgeView *)self addSubview:self->_bottomLabel];
      }

      [(PXUIAssetBadgeView *)self badgeInfo];
      PXLocalizedVideoDuration();
    }

    [(UILabel *)self->_bottomLabel setHidden:[(PXUIAssetBadgeView *)self _wantsBottomLabel]^ 1];
  }
}

- (void)_updateBottomTrailingImageIfNeeded
{
  if (self->_needsUpdateFlags.bottomTrailingImage)
  {
    self->_needsUpdateFlags.bottomTrailingImage = 0;
    if ([(PXUIAssetBadgeView *)self _wantsBottomLabel])
    {
      goto LABEL_11;
    }

    v3 = [(PXUIAssetBadgeView *)self style];
    if (v3 != 7 && v3 != 1)
    {
      goto LABEL_11;
    }

    [(PXUIAssetBadgeView *)self badgeInfo];
    if ((v10 & 0x180) != 0)
    {
      v4 = +[PXAssetVariationsSettings sharedInstance];
      v5 = [v4 showLoopBadges];

      if (v5)
      {
        v6 = [off_1E77214D8 loopingBadgeImage];
        goto LABEL_17;
      }
    }

    if ((v10 & 2) != 0)
    {
      v6 = [off_1E77214D8 panoramaBadgeImage];
    }

    else if ((v10 & 0x20) != 0)
    {
      v6 = [off_1E77214D8 cloudBadgeImage];
    }

    else
    {
      if ((v10 & 0x80000000) == 0)
      {
LABEL_11:
        v7 = 0;
LABEL_12:
        [(_PXUIAssetBadgeImageView *)self->_bottomTrailingImageView setImage:v7];

        return;
      }

      v6 = [off_1E77214D8 contentSyndicationBadgeImage];
    }

LABEL_17:
    v7 = v6;
    if (v6)
    {
      if (!self->_bottomTrailingImageView)
      {
        v8 = objc_alloc_init(_PXUIAssetBadgeImageView);
        bottomTrailingImageView = self->_bottomTrailingImageView;
        self->_bottomTrailingImageView = v8;

        [(PXUIAssetBadgeView *)self addSubview:self->_bottomTrailingImageView];
      }
    }

    goto LABEL_12;
  }
}

- (void)_updateBottomSpatialBadgeImageIfNeeded
{
  if (self->_needsUpdateFlags.bottomSpatialBadgeImage)
  {
    self->_needsUpdateFlags.bottomSpatialBadgeImage = 0;
    [(PXUIAssetBadgeView *)self badgeInfo];
    if ((v6 & 2) != 0 && [(PXUIAssetBadgeView *)self style]== 1)
    {
      v3 = [off_1E77214D8 spatialBadgeImage];
      if (v3)
      {
        if (!self->_bottomSpatialBadgeImageView)
        {
          v4 = objc_alloc_init(_PXUIAssetBadgeImageView);
          bottomSpatialBadgeImageView = self->_bottomSpatialBadgeImageView;
          self->_bottomSpatialBadgeImageView = v4;

          [(PXUIAssetBadgeView *)self addSubview:self->_bottomSpatialBadgeImageView];
        }
      }
    }

    else
    {
      v3 = 0;
    }

    [(_PXUIAssetBadgeImageView *)self->_bottomSpatialBadgeImageView setImage:v3];
    [(_PXUIAssetBadgeImageView *)self->_bottomSpatialBadgeImageView sizeToFit];
  }
}

- (void)_updateBottomLeadingImageIfNeeded
{
  if (self->_needsUpdateFlags.bottomLeadingImage)
  {
    self->_needsUpdateFlags.bottomLeadingImage = 0;
    [(PXUIAssetBadgeView *)self badgeInfo];
    if (v8)
    {
      v3 = [(PXUIAssetBadgeView *)self style];
      if (v3 == 2)
      {
        v4 = [off_1E77214D8 favoritesCollectionBadgeImage];
LABEL_10:
        v5 = v4;
        if (v4)
        {
          if (!self->_bottomLeadingImageView)
          {
            v6 = objc_alloc_init(_PXUIAssetBadgeImageView);
            bottomLeadingImageView = self->_bottomLeadingImageView;
            self->_bottomLeadingImageView = v6;

            [(PXUIAssetBadgeView *)self addSubview:self->_bottomLeadingImageView];
          }
        }

        goto LABEL_7;
      }

      if (v3 == 1)
      {
        v4 = [off_1E77214D8 favoriteBadgeImage];
        goto LABEL_10;
      }
    }

    v5 = 0;
LABEL_7:
    [(_PXUIAssetBadgeImageView *)self->_bottomLeadingImageView setImage:v5];
  }
}

- (id)_updateTopGroup:(id)a3 withBadgeInfo:(PXAssetBadgeInfo *)a4
{
  a3;
  v6 = [(PXUIAssetBadgeView *)self style];
  v7 = [(PXUIAssetBadgeView *)self isOverContent];
  if ((v6 - 3) < 4)
  {
    v8 = *&a4->count;
    v13 = *&a4->badges;
    v14 = v8;
    [off_1E77214D8 imageForBadgeInfo:&v13 style:v6 isOverContent:v7];
    objc_claimAutoreleasedReturnValue();
    v9 = *&a4->count;
    v13 = *&a4->badges;
    v14 = v9;
    [off_1E77214D8 textForBadgeInfo:&v13 style:v6];
    objc_claimAutoreleasedReturnValue();
    v10 = *&a4->count;
    v13 = *&a4->badges;
    v14 = v10;
    PXAssetBadgeInfoIsToggleable();
  }

  v11 = *&a4->count;
  v13 = *&a4->badges;
  v14 = v11;
  PXAssetBadgeInfoIsToggleable();
}

- (void)_updateTopRightElementsIfNeeded
{
  if (self->_needsUpdateFlags.topRightElements)
  {
    v19 = v5;
    v20 = v4;
    v21 = v2;
    v22 = v3;
    self->_needsUpdateFlags.topRightElements = 0;
    v17 = 0u;
    v18 = 0u;
    [(PXUIAssetBadgeView *)self badgeInfo];
    v15 = 0u;
    v16 = 0u;
    v13 = v17;
    v14 = v18;
    [off_1E77214D8 topRightBadgeInfoForBadgeInfo:&v13];
    topRightGroup = self->_topRightGroup;
    v13 = v15;
    v14 = v16;
    v8 = [(PXUIAssetBadgeView *)self _updateTopGroup:topRightGroup withBadgeInfo:&v13];
    contentWidth = self->_contentWidth;
    [(_PXUIAssetBadgeTopGroup *)v8 frame];
    v11 = contentWidth - v10;
    [(_PXUIAssetBadgeTopGroup *)v8 frame];
    v24 = CGRectOffset(v23, v11, 0.0);
    [(_PXUIAssetBadgeTopGroup *)v8 setFrame:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
    [(_PXUIAssetBadgeTopGroup *)v8 imageFrame];
    v26 = CGRectOffset(v25, v11, 0.0);
    [(_PXUIAssetBadgeTopGroup *)v8 setImageFrame:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
    [(_PXUIAssetBadgeTopGroup *)v8 labelFrame];
    v28 = CGRectOffset(v27, v11, 0.0);
    [(_PXUIAssetBadgeTopGroup *)v8 setLabelFrame:v28.origin.x, v28.origin.y, v28.size.width, v28.size.height];
    [(_PXUIAssetBadgeTopGroup *)v8 chevronImageFrame];
    v30 = CGRectOffset(v29, v11, 0.0);
    [(_PXUIAssetBadgeTopGroup *)v8 setChevronImageFrame:v30.origin.x, v30.origin.y, v30.size.width, v30.size.height];
    v12 = self->_topRightGroup;
    self->_topRightGroup = v8;
  }
}

- (void)_updateTopLeftElementsIfNeeded
{
  if (self->_needsUpdateFlags.topLeftElements)
  {
    v22 = v5;
    v23 = v4;
    v24 = v2;
    v25 = v3;
    self->_needsUpdateFlags.topLeftElements = 0;
    v20 = 0u;
    v21 = 0u;
    [(PXUIAssetBadgeView *)self badgeInfo];
    v18 = 0u;
    v19 = 0u;
    v16 = v20;
    v17 = v21;
    [off_1E77214D8 topLeftPrimaryBadgeInfoForBadgeInfo:&v16];
    v16 = 0u;
    v17 = 0u;
    v14 = v20;
    v15 = v21;
    [off_1E77214D8 topLeftSecondaryBadgeInfoForBadgeInfo:&v14];
    topLeftPrimaryGroup = self->_topLeftPrimaryGroup;
    v14 = v18;
    v15 = v19;
    v8 = [(PXUIAssetBadgeView *)self _updateTopGroup:topLeftPrimaryGroup withBadgeInfo:&v14];
    topLeftSecondaryGroup = self->_topLeftSecondaryGroup;
    v14 = v16;
    v15 = v17;
    v10 = [(PXUIAssetBadgeView *)self _updateTopGroup:topLeftSecondaryGroup withBadgeInfo:&v14];
    if (v8)
    {
      v14 = v18;
      v15 = v19;
      PXAssetBadgeInfoIsNull();
    }

    v11 = self->_topLeftPrimaryGroup;
    self->_topLeftPrimaryGroup = 0;
    v12 = 0;

    v13 = self->_topLeftSecondaryGroup;
    self->_topLeftSecondaryGroup = v10;
  }
}

- (void)_invalidate
{
  [(PXUIAssetBadgeView *)self _invalidateTopLeftElements];
  [(PXUIAssetBadgeView *)self _invalidateTopRightElements];
  [(PXUIAssetBadgeView *)self _invalidateBottomLeadingImage];
  [(PXUIAssetBadgeView *)self _invalidateBottomSpatialBadgeImage];
  [(PXUIAssetBadgeView *)self _invalidateBottomTrailingImage];
  [(PXUIAssetBadgeView *)self _invalidateBottomLabel];
  [(PXUIAssetBadgeView *)self _invalidateBackground];

  [(PXUIAssetBadgeView *)self _invalidateContentSize];
}

- (void)_updateIfNeeded
{
  if ([(PXUIAssetBadgeView *)self _needsUpdate])
  {
    isPerformingUpdate = self->_isPerformingUpdate;
    self->_isPerformingUpdate = 1;
    [(PXUIAssetBadgeView *)self _updateTopLeftElementsIfNeeded];
    [(PXUIAssetBadgeView *)self _updateTopRightElementsIfNeeded];
    [(PXUIAssetBadgeView *)self _updateBottomLeadingImageIfNeeded];
    [(PXUIAssetBadgeView *)self _updateBottomSpatialBadgeImageIfNeeded];
    [(PXUIAssetBadgeView *)self _updateBottomTrailingImageIfNeeded];
    [(PXUIAssetBadgeView *)self _updateBottomLabelIfNeeded];
    [(PXUIAssetBadgeView *)self _updateBackgroundIfNeeded];
    [(PXUIAssetBadgeView *)self _updateContentSizeIfNeeded];
    self->_isPerformingUpdate = isPerformingUpdate;
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingUpdate)
  {
    [(PXUIAssetBadgeView *)self setNeedsLayout];
  }
}

- (void)_setBackgroundImage:(id)a3
{
  v6 = a3;
  v4 = [(PXUIAssetBadgeView *)self layer];
  if (v6)
  {
    [v4 setContentsGravity:@"resize"];
  }

  v5 = v6;
  [v4 setContents:{objc_msgSend(v6, "CGImage")}];
}

- (void)_handleButton:(id)a3
{
  v4 = a3;
  v5 = [(_PXUIAssetBadgeTopGroup *)self->_topLeftPrimaryGroup button];

  if (v5 == v4)
  {
    topLeftPrimaryGroup = self->_topLeftPrimaryGroup;
    if (topLeftPrimaryGroup)
    {
      [(_PXUIAssetBadgeTopGroup *)topLeftPrimaryGroup badgeInfo];
      v8 = v20;
    }

    else
    {
      v8 = 0;
      v20 = 0u;
      v21 = 0u;
    }
  }

  else
  {
    v6 = [(_PXUIAssetBadgeTopGroup *)self->_topLeftSecondaryGroup button];

    if (v6 == v4)
    {
      topLeftSecondaryGroup = self->_topLeftSecondaryGroup;
      if (topLeftSecondaryGroup)
      {
        [(_PXUIAssetBadgeTopGroup *)topLeftSecondaryGroup badgeInfo];
        v8 = v18;
      }

      else
      {
        v8 = 0;
        v18 = 0u;
        v19 = 0u;
      }
    }

    else
    {
      v7 = [(_PXUIAssetBadgeTopGroup *)self->_topRightGroup button];

      if (v7 == v4)
      {
        topRightGroup = self->_topRightGroup;
        if (topRightGroup)
        {
          [(_PXUIAssetBadgeTopGroup *)topRightGroup badgeInfo];
          v8 = v16;
        }

        else
        {
          v8 = 0;
          v16 = 0u;
          v17 = 0u;
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  if (self->_delegateRespondsTo.userDidSelectBadges)
  {
    v12 = [(PXUIAssetBadgeView *)self delegate];
    [v12 assetBadgeView:self userDidSelectBadges:v8];
  }

  if (self->_delegateRespondsTo.dismissPresentedViewController)
  {
    v13 = [(PXUIAssetBadgeView *)self delegate];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __36__PXUIAssetBadgeView__handleButton___block_invoke;
    v14[3] = &unk_1E774C648;
    v15 = v4;
    [v13 assetBadgeView:self dismissAnyPresentedViewControllerWithCompletion:v14];
  }
}

void __36__PXUIAssetBadgeView__handleButton___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contextMenuInteraction];
  [v1 _presentMenuAtLocation:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

- (CGSize)intrinsicContentSize
{
  [(PXUIAssetBadgeView *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PXUIAssetBadgeView *)self _updateIfNeeded:a3.width];
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_layoutBottomLabel
{
  bottomLabel = self->_bottomLabel;
  if (bottomLabel && ([(UILabel *)bottomLabel isHidden]& 1) == 0)
  {
    width = self->_bottomElementsPadding.width;
    rect_8 = self->_bottomElementsPadding.height + -2.0;
    [(PXUIAssetBadgeView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UILabel *)self->_bottomLabel frame];
    rect = v13;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    if ([(PXUIAssetBadgeView *)self style]== 7 || ([(PXUIAssetBadgeView *)self _shouldReverseLayoutDirection]& 1) != 0)
    {
      v28.origin.x = v6;
      v28.origin.y = v8;
      v28.size.width = v10;
      v28.size.height = v12;
      v20 = width + CGRectGetMinX(v28);
    }

    else
    {
      v29.origin.x = v6;
      v29.origin.y = v8;
      v29.size.width = v10;
      v29.size.height = v12;
      v21 = CGRectGetMaxX(v29) - width;
      v30.origin.x = rect;
      v30.origin.y = v15;
      v30.size.width = v17;
      v30.size.height = v19;
      v20 = v21 - CGRectGetWidth(v30);
    }

    v31.origin.x = v6;
    v31.origin.y = v8;
    v31.size.width = v10;
    v31.size.height = v12;
    v22 = CGRectGetMaxY(v31) - rect_8;
    v32.origin.x = v20;
    v32.origin.y = v15;
    v32.size.width = v17;
    v32.size.height = v19;
    Height = CGRectGetHeight(v32);
    v24 = self->_bottomLabel;

    [(UILabel *)v24 setFrame:v20, v22 - Height, v17, v19];
  }
}

- (void)_layoutBottomCornersImages
{
  v54 = [(_PXUIAssetBadgeImageView *)self->_bottomLeadingImageView image];
  v3 = [(_PXUIAssetBadgeImageView *)self->_bottomSpatialBadgeImageView image];
  v4 = [(_PXUIAssetBadgeImageView *)self->_bottomTrailingImageView image];
  if (v54)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5 || v3 != 0)
  {
    width = self->_bottomElementsPadding.width;
    height = self->_bottomElementsPadding.height;
    [(PXUIAssetBadgeView *)self bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(PXUIAssetBadgeView *)self _shouldReverseLayoutDirection];
    v16 = MEMORY[0x1E695F058];
    v53 = v8;
    if (v54)
    {
      v17 = *(MEMORY[0x1E695F058] + 8);
      [v54 size];
      v19 = v18;
      v21 = v20;
      if (v15)
      {
        v22 = *v16;
        v56.origin.x = v8;
        v56.origin.y = v10;
        v56.size.width = v12;
        v56.size.height = v14;
        v23 = CGRectGetMaxX(v56) - width;
        v57.origin.x = v22;
        v57.origin.y = v17;
        v57.size.width = v19;
        v57.size.height = v21;
        v24 = v23 - CGRectGetWidth(v57);
        v8 = v53;
      }

      else
      {
        v58.origin.x = v8;
        v58.origin.y = v10;
        v58.size.width = v12;
        v58.size.height = v14;
        v24 = width + CGRectGetMinX(v58);
      }

      v59.origin.x = v8;
      v59.origin.y = v10;
      v59.size.width = v12;
      v59.size.height = v14;
      v25 = CGRectGetMaxY(v59) - height;
      v60.origin.x = v24;
      v60.origin.y = v17;
      v60.size.width = v19;
      v60.size.height = v21;
      v26 = v25 - CGRectGetHeight(v60);
      v8 = v53;
      [(_PXUIAssetBadgeImageView *)self->_bottomLeadingImageView setFrame:v24, v26, v19, v21];
    }

    if (v3)
    {
      v27 = v16[1];
      [v3 size];
      v29 = v28;
      v31 = v30;
      if (v15)
      {
        v32 = *v16;
        v61.origin.x = v8;
        v61.origin.y = v10;
        v61.size.width = v12;
        v61.size.height = v14;
        v33 = CGRectGetMaxX(v61) - width;
        [(_PXUIAssetBadgeImageView *)self->_bottomLeadingImageView frame];
        v35 = v33 - v34;
        v62.origin.x = v32;
        v62.origin.y = v27;
        v62.size.width = v29;
        v62.size.height = v31;
        v36 = v35 - CGRectGetWidth(v62);
        v8 = v53;
      }

      else
      {
        v63.origin.x = v8;
        v63.origin.y = v10;
        v63.size.width = v12;
        v63.size.height = v14;
        MinX = CGRectGetMinX(v63);
        [(_PXUIAssetBadgeImageView *)self->_bottomLeadingImageView frame];
        v36 = width + MinX + v38;
      }

      v64.origin.x = v8;
      v64.origin.y = v10;
      v64.size.width = v12;
      v64.size.height = v14;
      v39 = CGRectGetMaxY(v64) - height;
      v65.origin.x = v36;
      v65.origin.y = v27;
      v65.size.width = v29;
      v65.size.height = v31;
      v40 = v39 - CGRectGetHeight(v65);
      v8 = v53;
      [(_PXUIAssetBadgeImageView *)self->_bottomSpatialBadgeImageView setFrame:v36, v40, v29, v31];
    }

    if (v4)
    {
      v41 = v16[1];
      [v4 size];
      v43 = v42;
      v45 = v44;
      if ([(PXUIAssetBadgeView *)self style]== 7 || ([(PXUIAssetBadgeView *)self _shouldReverseLayoutDirection]& 1) != 0)
      {
        v66.origin.x = v8;
        v66.origin.y = v10;
        v66.size.width = v12;
        v66.size.height = v14;
        v46 = width + CGRectGetMinX(v66);
      }

      else
      {
        v47 = *v16;
        v67.origin.x = v8;
        v67.origin.y = v10;
        v67.size.width = v12;
        v67.size.height = v14;
        v48 = CGRectGetMaxX(v67) - width;
        v68.origin.x = v47;
        v68.origin.y = v41;
        v68.size.width = v43;
        v68.size.height = v45;
        v49 = v48 - CGRectGetWidth(v68);
        v8 = v53;
        v46 = v49 + -2.0;
      }

      v69.origin.x = v8;
      v69.origin.y = v10;
      v69.size.width = v12;
      v69.size.height = v14;
      v50 = CGRectGetMaxY(v69) - height;
      v70.origin.x = v46;
      v70.origin.y = v41;
      v70.size.width = v43;
      v70.size.height = v45;
      [(_PXUIAssetBadgeImageView *)self->_bottomTrailingImageView setFrame:v46, v50 - CGRectGetHeight(v70) + -4.0, v43, v45];
    }
  }
}

- (void)_removeViewsFromGroup:(id)a3
{
  if (a3)
  {
    v8 = a3;
    v3 = [v8 backgroundView];
    [v3 removeFromSuperview];

    [v8 setBackgroundView:0];
    v4 = [v8 button];
    [v4 removeFromSuperview];

    [v8 setButton:0];
    v5 = [v8 imageView];
    [v5 removeFromSuperview];

    [v8 setImageView:0];
    v6 = [v8 chevronImageView];
    [v6 removeFromSuperview];

    [v8 setChevronImageView:0];
    v7 = [v8 label];
    [v7 removeFromSuperview];

    [v8 setLabel:0];
  }
}

- (void)_layoutTopGroup:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [v5 backgroundView];
    [v14 setFrame:{v7, v9, v11, v13}];

    if ([(PXUIAssetBadgeView *)self style]== 4)
    {
      [(PXUIAssetBadgeView *)self badgeInfo];
      PXAssetBadgeInfoIsLivePhotoToggleable();
    }

    v15 = [v5 button];
    [v15 setFrame:{v7, v9, v11, v13}];

    v16 = [v5 imageView];
    [v5 imageFrame];
    [v16 setFrame:?];

    v17 = [v5 chevronImageView];
    [v5 chevronImageFrame];
    [v17 setFrame:?];

    v18 = [v5 label];
    [v5 labelFrame];
    [v18 setFrame:?];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXUIAssetBadgeView;
  [(PXUIAssetBadgeView *)&v3 layoutSubviews];
  [(PXUIAssetBadgeView *)self _updateIfNeeded];
  [(PXUIAssetBadgeView *)self _layoutTopGroup:self->_topLeftPrimaryGroup];
  [(PXUIAssetBadgeView *)self _layoutTopGroup:self->_topLeftSecondaryGroup];
  [(PXUIAssetBadgeView *)self _layoutTopGroup:self->_topRightGroup];
  [(PXUIAssetBadgeView *)self _layoutBottomCornersImages];
  [(PXUIAssetBadgeView *)self _layoutBottomLabel];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PXUIAssetBadgeView *)self frame];
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    v12.receiver = self;
    v12.super_class = PXUIAssetBadgeView;
    [(PXUIAssetBadgeView *)&v12 setFrame:x, y, width, height];
    [(PXUIAssetBadgeView *)self layoutIfNeeded];
  }
}

- (void)performChanges:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (v4)
    {
      v8 = MEMORY[0x1E69DD250];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __46__PXUIAssetBadgeView_performChanges_animated___block_invoke;
      v9[3] = &unk_1E774C2F0;
      v9[4] = self;
      v10 = v6;
      [v8 transitionWithView:self duration:5242886 options:v9 animations:0 completion:0.3];
    }

    else
    {
      v6[2](v6);
    }
  }
}

uint64_t __46__PXUIAssetBadgeView_performChanges_animated___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setContentWidth:(double)a3
{
  if (self->_contentWidth != a3)
  {
    self->_contentWidth = a3;
    [(PXUIAssetBadgeView *)self _invalidate];
  }
}

- (void)setOverContent:(BOOL)a3
{
  if (self->_overContent != a3)
  {
    self->_overContent = a3;
    [(PXUIAssetBadgeView *)self _invalidate];
  }
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(PXUIAssetBadgeView *)self _invalidate];
  }
}

- (void)prepareForReuse
{
  [(PXUIAssetBadgeView *)self _removeViewsFromGroup:self->_topLeftPrimaryGroup];
  [(PXUIAssetBadgeView *)self _removeViewsFromGroup:self->_topLeftSecondaryGroup];
  [(PXUIAssetBadgeView *)self _removeViewsFromGroup:self->_topRightGroup];

  [(PXUIAssetBadgeView *)self _invalidate];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->menuForBadges = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->userDidSelectBadges = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->dismissPresentedViewController = objc_opt_respondsToSelector() & 1;
  }
}

- (PXUIAssetBadgeView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = PXUIAssetBadgeView;
  v3 = [(PXUIAssetBadgeView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PXUIAssetBadgeView *)v3 layer];
    [v5 setAllowsGroupBlending:0];
    [v5 setAllowsGroupOpacity:0];
    __asm { FMOV            V0.2D, #5.0 }

    v4->_bottomElementsPadding = _Q0;
  }

  return v4;
}

+ (CGSize)sizeForBadgeInfo:(PXAssetBadgeInfo *)a3 contentWidth:(double)a4
{
  v4 = *&a3->count;
  v5 = *&a3->badges;
  v6 = v4;
  PXAssetBadgeInfoIsNull();
}

uint64_t __52__PXUIAssetBadgeView_sizeForBadgeInfo_contentWidth___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  [sizeForBadgeInfo_contentWidth__measuringBadgeView setBadgeInfo:v4];
  [sizeForBadgeInfo_contentWidth__measuringBadgeView setStyle:3];
  [sizeForBadgeInfo_contentWidth__measuringBadgeView setOverContent:0];
  return [sizeForBadgeInfo_contentWidth__measuringBadgeView setContentWidth:*(a1 + 64)];
}

void __52__PXUIAssetBadgeView_sizeForBadgeInfo_contentWidth___block_invoke_2()
{
  v0 = [PXUIAssetBadgeView alloc];
  v1 = [(PXUIAssetBadgeView *)v0 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v2 = sizeForBadgeInfo_contentWidth__measuringBadgeView;
  sizeForBadgeInfo_contentWidth__measuringBadgeView = v1;
}

uint64_t __52__PXUIAssetBadgeView_sizeForBadgeInfo_contentWidth___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = sizeForBadgeInfo_contentWidth__sizeCache;
  sizeForBadgeInfo_contentWidth__sizeCache = v0;

  v2 = sizeForBadgeInfo_contentWidth__sizeCache;

  return [v2 setCountLimit:42];
}

+ (id)badgeSizeCacheKeyValueFromBadgeInfo:(PXAssetBadgeInfo *)a3 contentWidth:(double)a4
{
  v6[0] = a3->badges;
  v6[1] = *&a3->duration;
  v6[2] = a3->count;
  *&v6[3] = a4;
  v4 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:v6 objCType:"{_PXBadgeSizeCacheKey=Qdqd}"];

  return v4;
}

+ (id)measuringLabel
{
  if (measuringLabel_onceToken != -1)
  {
    dispatch_once(&measuringLabel_onceToken, &__block_literal_global_211_248140);
  }

  v3 = measuringLabel_measuringLabel;

  return v3;
}

void __36__PXUIAssetBadgeView_measuringLabel__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v1 = measuringLabel_measuringLabel;
  measuringLabel_measuringLabel = v0;

  PXAssetBadgeInfoCreateWithBadges();
}

+ (double)preferredHeightForStyle:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 1) <= 6)
  {
    return dbl_1A5383B08[a3 - 1];
  }

  return result;
}

+ (void)preloadResourcesForStyle:(int64_t)a3
{
  if ((a3 - 3) <= 2 && preloadResourcesForStyle__onceToken != -1)
  {
    dispatch_once(&preloadResourcesForStyle__onceToken, &__block_literal_global_248142);
  }

  if (a3 == 7)
  {
    if (preloadResourcesForStyle__onceToken_205 == -1)
    {
      return;
    }

    v4 = &preloadResourcesForStyle__onceToken_205;
    v5 = &__block_literal_global_207_248145;
  }

  else if (a3 == 6)
  {
    if (preloadResourcesForStyle__onceToken_200 == -1)
    {
      return;
    }

    v4 = &preloadResourcesForStyle__onceToken_200;
    v5 = &__block_literal_global_202_248144;
  }

  else
  {
    if (a3 != 1 || preloadResourcesForStyle__onceToken_191 == -1)
    {
      return;
    }

    v4 = &preloadResourcesForStyle__onceToken_191;
    v5 = &__block_literal_global_193_248143;
  }

  dispatch_once(v4, v5);
}

void __47__PXUIAssetBadgeView_preloadResourcesForStyle___block_invoke_9()
{
  v0 = [off_1E7721858 sharedScheduler];
  [v0 scheduleMainQueueTask:&__block_literal_global_209_248148];
}

void __47__PXUIAssetBadgeView_preloadResourcesForStyle___block_invoke_7()
{
  v0 = [off_1E7721858 sharedScheduler];
  [v0 scheduleMainQueueTask:&__block_literal_global_204];
}

void __47__PXUIAssetBadgeView_preloadResourcesForStyle___block_invoke_3()
{
  v0 = [off_1E7721858 sharedScheduler];
  [v0 scheduleMainQueueTask:&__block_literal_global_195_248152];

  v1 = [off_1E7721858 sharedScheduler];
  [v1 scheduleMainQueueTask:&__block_literal_global_197_248153];

  v2 = [off_1E7721858 sharedScheduler];
  [v2 scheduleMainQueueTask:&__block_literal_global_199_248154];
}

void __47__PXUIAssetBadgeView_preloadResourcesForStyle___block_invoke()
{
  v0 = [off_1E7721858 sharedScheduler];
  [v0 scheduleMainQueueTask:&__block_literal_global_189_248159];
}

@end