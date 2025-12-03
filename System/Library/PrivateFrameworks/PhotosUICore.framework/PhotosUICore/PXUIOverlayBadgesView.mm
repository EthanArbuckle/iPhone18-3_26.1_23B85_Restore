@interface PXUIOverlayBadgesView
+ (id)badgesViewWithDefaultBadgesAndOrder;
+ (id)defaultBadges;
+ (id)defaultViewForBadge:(int64_t)badge;
- (PXUIOverlayBadgesView)init;
- (PXUIOverlayBadgesView)initWithBadges:(id)badges order:(id)order;
- (PXUIOverlayBadgesView)initWithCoder:(id)coder;
- (PXUIOverlayBadgesView)initWithFrame:(CGRect)frame;
- (UIImageView)backgroundView;
- (id)createWeaklyReferencedBackgroundView;
- (void)showBadges:(id)badges;
- (void)showBadgesForPHAsset:(id)asset;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXUIOverlayBadgesView

- (UIImageView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

- (PXUIOverlayBadgesView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:158 description:{@"%s is not available as initializer", "-[PXUIOverlayBadgesView initWithCoder:]"}];

  abort();
}

- (PXUIOverlayBadgesView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:154 description:{@"%s is not available as initializer", "-[PXUIOverlayBadgesView initWithFrame:]"}];

  abort();
}

- (PXUIOverlayBadgesView)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:150 description:{@"%s is not available as initializer", "-[PXUIOverlayBadgesView init]"}];

  abort();
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = PXUIOverlayBadgesView;
  changeCopy = change;
  [(PXUIOverlayBadgesView *)&v11 traitCollectionDidChange:changeCopy];
  v5 = [(PXUIOverlayBadgesView *)self traitCollection:v11.receiver];
  layoutDirection = [v5 layoutDirection];
  layoutDirection2 = [changeCopy layoutDirection];

  if (layoutDirection != layoutDirection2)
  {
    traitCollection = [(PXUIOverlayBadgesView *)self traitCollection];
    v9 = [off_1E77214D8 leadingCornerGradientBackgroundImageForLayoutDirection:{objc_msgSend(traitCollection, "layoutDirection")}];
    backgroundView = [(PXUIOverlayBadgesView *)self backgroundView];
    [backgroundView setImage:v9];
  }
}

- (void)showBadges:(id)badges
{
  v44 = *MEMORY[0x1E69E9840];
  badgesCopy = badges;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  badges = [(PXUIOverlayBadgesView *)self badges];
  allValues = [badges allValues];

  v7 = [allValues countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v38 + 1) + 8 * i) setHidden:1];
      }

      v8 = [allValues countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = badgesCopy;
  v33 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v33)
  {
    v12 = *v35;
    v13 = v33;
    do
    {
      v14 = 0;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v34 + 1) + 8 * v14);
        badges2 = [(PXUIOverlayBadgesView *)self badges];
        v17 = [badges2 objectForKeyedSubscript:v15];

        [v17 setHidden:0];
        if ([v15 integerValue] == 4)
        {
          v18 = v17;
          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_16;
            }

            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v24 = objc_opt_class();
            v21 = NSStringFromClass(v24);
            px_descriptionForAssertionMessage = [v18 px_descriptionForAssertionMessage];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:90 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"badge", v21, px_descriptionForAssertionMessage}];
          }

          else
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:90 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"badge", v21}];
          }

LABEL_16:
          v19 = [v11 objectForKeyedSubscript:v15];
          if (v19)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
LABEL_18:
              [v18 setText:v19];

              goto LABEL_19;
            }

            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            v25 = objc_opt_class();
            v23 = NSStringFromClass(v25);
            px_descriptionForAssertionMessage2 = [v19 px_descriptionForAssertionMessage];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:91 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"badgesToShow[badgeNumber]", v23, px_descriptionForAssertionMessage2}];
          }

          else
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:91 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"badgesToShow[badgeNumber]", v23}];
          }

          goto LABEL_18;
        }

LABEL_19:

        ++v14;
      }

      while (v13 != v14);
      v26 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
      v13 = v26;
    }

    while (v26);
  }

  [(PXUIOverlayBadgesView *)self setIsShowingAnyBadge:v33 != 0];
  backgroundView = [(PXUIOverlayBadgesView *)self backgroundView];
  [backgroundView setHidden:v33 == 0];
}

- (id)createWeaklyReferencedBackgroundView
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  traitCollection = [(PXUIOverlayBadgesView *)self traitCollection];
  v5 = [off_1E77214D8 leadingCornerGradientBackgroundImageForLayoutDirection:{objc_msgSend(traitCollection, "layoutDirection")}];
  v6 = [v3 initWithImage:v5];

  [v6 setHidden:{-[PXUIOverlayBadgesView isShowingAnyBadge](self, "isShowingAnyBadge") ^ 1}];
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
  [v6 setTintColor:v7];

  [(PXUIOverlayBadgesView *)self setBackgroundView:v6];

  return v6;
}

- (PXUIOverlayBadgesView)initWithBadges:(id)badges order:(id)order
{
  v10 = *MEMORY[0x1E69E9840];
  badgesCopy = badges;
  orderCopy = order;
  v9.receiver = self;
  v9.super_class = PXUIOverlayBadgesView;
  if ([(PXUIOverlayBadgesView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)])
  {
    badgesCopy;
    PXMap();
  }

  return 0;
}

+ (id)defaultViewForBadge:(int64_t)badge
{
  if (badge <= 2)
  {
    if (badge == 1)
    {
      v4 = @"heart.fill";
    }

    else
    {
      if (badge != 2)
      {
        goto LABEL_11;
      }

      v4 = @"pano.fill";
    }

    goto LABEL_10;
  }

  if (badge == 3)
  {
    v4 = @"icloud.fill";
LABEL_10:
    v3 = PXUIOverlayBadgesViewCreateDefaultSystemImageBadgeView(v4);
    goto LABEL_11;
  }

  if (badge == 4)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    [v3 setFont:v5];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v3 setTextColor:whiteColor];
  }

LABEL_11:

  return v3;
}

+ (id)defaultBadges
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F1909A18;
  v3 = [self defaultViewForBadge:1];
  v9[0] = v3;
  v8[1] = &unk_1F1909A30;
  v4 = [self defaultViewForBadge:2];
  v9[1] = v4;
  v8[2] = &unk_1F1909A48;
  v5 = [self defaultViewForBadge:4];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (id)badgesViewWithDefaultBadgesAndOrder
{
  v3 = [PXUIOverlayBadgesView alloc];
  defaultBadges = [self defaultBadges];
  defaultOrder = [self defaultOrder];
  v6 = [(PXUIOverlayBadgesView *)v3 initWithBadges:defaultBadges order:defaultOrder];

  return v6;
}

- (void)showBadgesForPHAsset:(id)asset
{
  assetCopy = asset;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([assetCopy isFavorite])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:&unk_1F190DE10];
  }

  if ([assetCopy isMediaSubtype:1])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:&unk_1F190DE28];
  }

  if ([assetCopy isVideo])
  {
    [assetCopy duration];
    PXLocalizedVideoDuration();
  }

  v5 = [v4 copy];
  [(PXUIOverlayBadgesView *)self showBadges:v5];
}

@end