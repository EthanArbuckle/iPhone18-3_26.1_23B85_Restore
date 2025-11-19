@interface SearchUIContactsThumbnailView
+ (id)avatarSettings;
+ (void)clearAvatarSettings;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SearchUIContactsThumbnailView)init;
- (id)singleContactPreviewButtonItemOnRowModel;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContactImage:(id)a3 useCompactDisplay:(BOOL)a4;
- (void)setUsesCompactWidth:(BOOL)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)updateForcePressView;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIContactsThumbnailView

+ (void)clearAvatarSettings
{
  v2 = avatarViewControllerSettings;
  avatarViewControllerSettings = 0;
}

+ (id)avatarSettings
{
  v2 = avatarViewControllerSettings;
  if (!avatarViewControllerSettings)
  {
    v3 = MEMORY[0x1E695D0E0];
    v4 = +[SearchUIContactCache sharedCache];
    v5 = [v4 contactStore];
    v6 = [v3 settingsWithContactStore:v5];
    v7 = avatarViewControllerSettings;
    avatarViewControllerSettings = v6;

    v2 = avatarViewControllerSettings;
  }

  return v2;
}

- (SearchUIContactsThumbnailView)init
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SearchUIContactsThumbnailView_init__block_invoke;
  block[3] = &unk_1E85B24C8;
  v2 = self;
  v9 = v2;
  if (init_onceToken != -1)
  {
    dispatch_once(&init_onceToken, block);
  }

  v3 = [objc_opt_class() avatarSettings];
  v7.receiver = v2;
  v7.super_class = SearchUIContactsThumbnailView;
  v4 = [(CNAvatarView *)&v7 initWithSettings:v3];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel_tlk_updateWithCurrentAppearance name:*MEMORY[0x1E69DEA38] object:0];
  }

  return v4;
}

void __37__SearchUIContactsThumbnailView_init__block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 addObserver:objc_opt_class() selector:sel_clearAvatarSettings name:*MEMORY[0x1E69DDAD8] object:0];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = SearchUIContactsThumbnailView;
  [(SearchUIContactsThumbnailView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(SearchUIContactsThumbnailView *)self tlk_updateWithCurrentAppearance];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SearchUIContactsThumbnailView;
  [(CNAvatarView *)&v3 didMoveToWindow];
  [(SearchUIContactsThumbnailView *)self tlk_updateWithCurrentAppearance];
  [(SearchUIContactsThumbnailView *)self updateForcePressView];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v9.receiver = self;
  v9.super_class = SearchUIContactsThumbnailView;
  v4 = a3;
  [(SearchUIContactsThumbnailView *)&v9 tlk_updateForAppearance:v4];
  v5 = MEMORY[0x1E69D9108];
  v6 = [v4 isVibrant];

  v7 = [MEMORY[0x1E69D9108] bestAppearanceForSystem];
  v8 = [v5 appearanceWithVibrancyEnabled:v6 isDark:{objc_msgSend(v7, "isDark")}];

  [v8 overrideAppearanceForView:self];
  if ([v8 style] == 1)
  {
    [MEMORY[0x1E69D9248] enableLightKeylineStroke:1 forView:self];
  }

  else
  {
    [MEMORY[0x1E69D9248] enableShadow:1 forView:self];
  }
}

- (void)setContactImage:(id)a3 useCompactDisplay:(BOOL)a4
{
  objc_storeStrong(&self->_contactImage, a3);
  self->_useCompactDisplay = a4;

  [(SearchUIContactsThumbnailView *)self invalidateIntrinsicContentSize];
}

- (void)setUsesCompactWidth:(BOOL)a3
{
  if (self->_usesCompactWidth != a3)
  {
    self->_usesCompactWidth = a3;
    [(SearchUIContactsThumbnailView *)self invalidateIntrinsicContentSize];

    [(SearchUIContactsThumbnailView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if ([(SearchUIContactsThumbnailView *)self useCompactDisplay:a3.width])
  {

    +[SearchUISuggestionImageUtilities maximumSize];
  }

  else
  {
    [MEMORY[0x1E69D91A8] maxThumbnailSizeIsCompactWidth:{-[SearchUIContactsThumbnailView usesCompactWidth](self, "usesCompactWidth")}];
    v7 = v6;
    v8 = [(SearchUIContactsThumbnailView *)self contactImage];
    [v8 size];
    if (v10 == *MEMORY[0x1E695F060] && v9 == *(MEMORY[0x1E695F060] + 8))
    {
      v15 = v7;
    }

    else
    {
      v12 = [(SearchUIContactsThumbnailView *)self contactImage];
      [v12 size];
      v7 = v13;
      v15 = v14;
    }

    v4 = v7;
    v5 = v15;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)updateWithRowModel:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SearchUIContactsThumbnailView *)self setRowModel:v4];
  v5 = [v4 leadingImage];
  v6 = [(SearchUIContactsThumbnailView *)self contactImage];
  v7 = [v5 isEqual:v6];

  v8 = [v4 useCompactVersionOfUI];
  v9 = [(SearchUIContactsThumbnailView *)self useCompactDisplay];
  if (!v7 || v8 != v9)
  {
    -[SearchUIContactsThumbnailView setContactImage:useCompactDisplay:](self, "setContactImage:useCompactDisplay:", v5, [v4 useCompactVersionOfUI]);
    if ((v7 & 1) == 0)
    {
      [(CNAvatarView *)self setContacts:MEMORY[0x1E695E0F0]];
      v10 = +[SearchUIContactCache sharedCache];
      v11 = [v5 contactIdentifiers];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __52__SearchUIContactsThumbnailView_updateWithRowModel___block_invoke;
      v43[3] = &unk_1E85B29E8;
      v43[4] = self;
      v44 = v5;
      [v10 fetchContactsForIdentifiers:v11 completionHandler:v43];
    }
  }

  v38 = v5;
  v12 = [(SearchUIContactsThumbnailView *)self singleContactPreviewButtonItemOnRowModel];
  [(SearchUIContactsThumbnailView *)self setForcePressViewIsEntireEnclosingCell:v12 != 0];
  v13 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = [v12 actionTypesToShow];
  v15 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v39 + 1) + 8 * i) intValue] - 1;
        if (v19 <= 3)
        {
          v20 = **(&unk_1E85B2A08 + v19);
          if (v20)
          {
            v21 = v20;
            [v13 addObject:v20];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v16);
  }

  v22 = [(SearchUIContactsThumbnailView *)self contactImage];
  v23 = [v22 threeDTouchEnabled];
  if (v12 || v23)
  {
    v24 = [(SearchUIContactsThumbnailView *)self useCompactDisplay]^ 1;
  }

  else
  {
    v24 = 0;
  }

  [(CNAvatarView *)self setThreeDTouchEnabled:v24];

  [(SearchUIContactsThumbnailView *)self updateForcePressView];
  if (![v13 count])
  {
    v25 = [v38 badgingImage];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v38 badgingImage];
      v27 = [v26 bundleIdentifier];
    }

    else
    {
      v27 = 0;
    }

    v28 = [SearchUIUtilities bundleIdentifierForApp:10];
    v29 = [v27 isEqualToString:v28];

    if (v29)
    {
      v30 = MEMORY[0x1E695D070];
    }

    else
    {
      v31 = [SearchUIUtilities bundleIdentifierForApp:8];
      v32 = [v27 isEqualToString:v31];

      if (v32)
      {
        v30 = MEMORY[0x1E695D078];
      }

      else
      {
        v33 = [SearchUIUtilities bundleIdentifierForApp:26];
        v34 = [v27 isEqualToString:v33];

        v30 = MEMORY[0x1E695D068];
        if (v34)
        {
          v30 = MEMORY[0x1E695D080];
        }
      }
    }

    [v13 addObject:*v30];
  }

  [(CNAvatarView *)self setActionCategories:v13];
  v35 = [v4 contactIdentifiers];
  v36 = [v35 count] < 2;
  v37 = [(SearchUIContactsThumbnailView *)self layer];
  [v37 setShadowPathIsBounds:v36];
}

void __52__SearchUIContactsThumbnailView_updateWithRowModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SearchUIContactsThumbnailView_updateWithRowModel___block_invoke_2;
  v6[3] = &unk_1E85B26A8;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v5 = v3;
  [SearchUIUtilities dispatchMainIfNecessary:v6];
}

void __52__SearchUIContactsThumbnailView_updateWithRowModel___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) contactImage];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);

    [v5 setContacts:v4];
  }
}

- (id)singleContactPreviewButtonItemOnRowModel
{
  v2 = [(SearchUIContactsThumbnailView *)self rowModel];
  v3 = [v2 cardSection];
  v4 = [v3 previewButtonItems];

  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 firstObject];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SearchUIContactsThumbnailView;
  [(CNAvatarView *)&v5 layoutSubviews];
  [(SearchUIContactsThumbnailView *)self bounds];
  v3 = CGRectGetWidth(v6) * 0.5;
  v4 = [(SearchUIContactsThumbnailView *)self layer];
  [v4 setCornerRadius:v3];
}

- (void)updateForcePressView
{
  if ([(CNAvatarView *)self isThreeDTouchEnabled])
  {
    v6 = self;
    if ([(SearchUIContactsThumbnailView *)v6 forcePressViewIsEntireEnclosingCell])
    {
      if (v6)
      {
        v3 = v6;
        while (1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          v4 = [(SearchUIContactsThumbnailView *)v3 superview];

          v3 = v4;
          if (!v4)
          {
            goto LABEL_8;
          }
        }

        v5 = v3;
      }

      else
      {
LABEL_8:
        v5 = v6;
      }
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  [(CNAvatarView *)self setForcePressView:v5];
}

@end