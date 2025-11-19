@interface PXUIOverlayBadgesView
+ (id)badgesViewWithDefaultBadgesAndOrder;
+ (id)defaultBadges;
+ (id)defaultViewForBadge:(int64_t)a3;
- (PXUIOverlayBadgesView)init;
- (PXUIOverlayBadgesView)initWithBadges:(id)a3 order:(id)a4;
- (PXUIOverlayBadgesView)initWithCoder:(id)a3;
- (PXUIOverlayBadgesView)initWithFrame:(CGRect)a3;
- (UIImageView)backgroundView;
- (id)createWeaklyReferencedBackgroundView;
- (void)showBadges:(id)a3;
- (void)showBadgesForPHAsset:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXUIOverlayBadgesView

- (UIImageView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

- (PXUIOverlayBadgesView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:158 description:{@"%s is not available as initializer", "-[PXUIOverlayBadgesView initWithCoder:]"}];

  abort();
}

- (PXUIOverlayBadgesView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:154 description:{@"%s is not available as initializer", "-[PXUIOverlayBadgesView initWithFrame:]"}];

  abort();
}

- (PXUIOverlayBadgesView)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:150 description:{@"%s is not available as initializer", "-[PXUIOverlayBadgesView init]"}];

  abort();
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = PXUIOverlayBadgesView;
  v4 = a3;
  [(PXUIOverlayBadgesView *)&v11 traitCollectionDidChange:v4];
  v5 = [(PXUIOverlayBadgesView *)self traitCollection:v11.receiver];
  v6 = [v5 layoutDirection];
  v7 = [v4 layoutDirection];

  if (v6 != v7)
  {
    v8 = [(PXUIOverlayBadgesView *)self traitCollection];
    v9 = [off_1E77214D8 leadingCornerGradientBackgroundImageForLayoutDirection:{objc_msgSend(v8, "layoutDirection")}];
    v10 = [(PXUIOverlayBadgesView *)self backgroundView];
    [v10 setImage:v9];
  }
}

- (void)showBadges:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [(PXUIOverlayBadgesView *)self badges];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v38 + 1) + 8 * i) setHidden:1];
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v4;
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
        v16 = [(PXUIOverlayBadgesView *)self badges];
        v17 = [v16 objectForKeyedSubscript:v15];

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

            v30 = [MEMORY[0x1E696AAA8] currentHandler];
            v24 = objc_opt_class();
            v21 = NSStringFromClass(v24);
            v28 = [v18 px_descriptionForAssertionMessage];
            [v30 handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:90 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"badge", v21, v28}];
          }

          else
          {
            v30 = [MEMORY[0x1E696AAA8] currentHandler];
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            [v30 handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:90 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"badge", v21}];
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

            v31 = [MEMORY[0x1E696AAA8] currentHandler];
            v25 = objc_opt_class();
            v23 = NSStringFromClass(v25);
            v29 = [v19 px_descriptionForAssertionMessage];
            [v31 handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:91 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"badgesToShow[badgeNumber]", v23, v29}];
          }

          else
          {
            v31 = [MEMORY[0x1E696AAA8] currentHandler];
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            [v31 handleFailureInMethod:a2 object:self file:@"PXUIOverlayBadgesView.m" lineNumber:91 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"badgesToShow[badgeNumber]", v23}];
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
  v27 = [(PXUIOverlayBadgesView *)self backgroundView];
  [v27 setHidden:v33 == 0];
}

- (id)createWeaklyReferencedBackgroundView
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [(PXUIOverlayBadgesView *)self traitCollection];
  v5 = [off_1E77214D8 leadingCornerGradientBackgroundImageForLayoutDirection:{objc_msgSend(v4, "layoutDirection")}];
  v6 = [v3 initWithImage:v5];

  [v6 setHidden:{-[PXUIOverlayBadgesView isShowingAnyBadge](self, "isShowingAnyBadge") ^ 1}];
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
  [v6 setTintColor:v7];

  [(PXUIOverlayBadgesView *)self setBackgroundView:v6];

  return v6;
}

- (PXUIOverlayBadgesView)initWithBadges:(id)a3 order:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = PXUIOverlayBadgesView;
  if ([(PXUIOverlayBadgesView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)])
  {
    v6;
    PXMap();
  }

  return 0;
}

+ (id)defaultViewForBadge:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v4 = @"heart.fill";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_11;
      }

      v4 = @"pano.fill";
    }

    goto LABEL_10;
  }

  if (a3 == 3)
  {
    v4 = @"icloud.fill";
LABEL_10:
    v3 = PXUIOverlayBadgesViewCreateDefaultSystemImageBadgeView(v4);
    goto LABEL_11;
  }

  if (a3 == 4)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    [v3 setFont:v5];

    v6 = [MEMORY[0x1E69DC888] whiteColor];
    [v3 setTextColor:v6];
  }

LABEL_11:

  return v3;
}

+ (id)defaultBadges
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F1909A18;
  v3 = [a1 defaultViewForBadge:1];
  v9[0] = v3;
  v8[1] = &unk_1F1909A30;
  v4 = [a1 defaultViewForBadge:2];
  v9[1] = v4;
  v8[2] = &unk_1F1909A48;
  v5 = [a1 defaultViewForBadge:4];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (id)badgesViewWithDefaultBadgesAndOrder
{
  v3 = [PXUIOverlayBadgesView alloc];
  v4 = [a1 defaultBadges];
  v5 = [a1 defaultOrder];
  v6 = [(PXUIOverlayBadgesView *)v3 initWithBadges:v4 order:v5];

  return v6;
}

- (void)showBadgesForPHAsset:(id)a3
{
  v6 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v6 isFavorite])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:&unk_1F190DE10];
  }

  if ([v6 isMediaSubtype:1])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:&unk_1F190DE28];
  }

  if ([v6 isVideo])
  {
    [v6 duration];
    PXLocalizedVideoDuration();
  }

  v5 = [v4 copy];
  [(PXUIOverlayBadgesView *)self showBadges:v5];
}

@end