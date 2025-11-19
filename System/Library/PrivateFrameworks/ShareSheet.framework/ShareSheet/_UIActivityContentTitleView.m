@interface _UIActivityContentTitleView
- (_UIActivityContentTitleView)initWithFrame:(CGRect)a3;
- (int64_t)preferredContentSizeForSize:(int64_t)a3;
- (void)_updateViewConfiguration;
- (void)contentDidChange;
- (void)layoutSubviews;
- (void)setHasCloseButton:(BOOL)a3;
- (void)setIsCloseButtonOnLeadingEdge:(BOOL)a3;
- (void)setIsPresentedInPopover:(BOOL)a3;
- (void)setLinkView:(id)a3;
- (void)setPhotosCarouselMode:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation _UIActivityContentTitleView

- (_UIActivityContentTitleView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UIActivityContentTitleView;
  v3 = [(_UINavigationBarTitleView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    if ([(_UIActivityContentTitleView *)v3 isPresentedInPopover])
    {
      v5 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v5 userInterfaceIdiom])
      {
        v6 = 0;
      }

      else
      {
        v6 = [(_UIActivityContentTitleView *)v4 hasCloseButton]^ 1;
      }

      [(_UINavigationBarTitleView *)v4 setDisallowNavigationBarMinimumTopPadding:v6];
    }

    else
    {
      [(_UINavigationBarTitleView *)v4 setDisallowNavigationBarMinimumTopPadding:0];
    }
  }

  return v4;
}

- (void)setLinkView:(id)a3
{
  v5 = a3;
  v6 = self->_linkView;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_8;
  }

  if ((v7 == 0) == (v6 != 0))
  {

    goto LABEL_7;
  }

  v8 = [(LPLinkView *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_linkView, a3);
    [(_UIActivityContentTitleView *)self _updateViewConfiguration];
    [(_UIActivityContentTitleView *)self setNeedsUpdateConstraints];
  }

LABEL_8:
}

- (void)updateConstraints
{
  v45[4] = *MEMORY[0x1E69E9840];
  v3 = [(_UIActivityContentTitleView *)self activeConstraints];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v5 = [(_UIActivityContentTitleView *)self activeConstraints];
    [v4 deactivateConstraints:v5];
  }

  if ([(_UIActivityContentTitleView *)self photosCarouselMode])
  {
    v44.receiver = self;
    v44.super_class = _UIActivityContentTitleView;
    [(_UIActivityContentTitleView *)&v44 updateConstraints];
  }

  else
  {
    v6 = [(_UIActivityContentTitleView *)self linkView];
    v7 = [v6 heightAnchor];
    v8 = [(_UIActivityContentTitleView *)self heightAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    v10 = [(_UIActivityContentTitleView *)self linkView];
    v11 = [v10 centerYAnchor];
    v12 = [(_UIActivityContentTitleView *)self centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    v14 = v9;
    v15 = v13;
    v16 = v14;
    v17 = v15;
    if (_ShareSheetSolariumEnabled())
    {
      v18 = [(_UIActivityContentTitleView *)self linkView];
      v19 = [v18 topAnchor];
      v20 = [(_UIActivityContentTitleView *)self layoutMarginsGuide];
      v21 = [v20 topAnchor];
      v22 = [v19 constraintEqualToAnchor:v21];

      v23 = [(_UIActivityContentTitleView *)self linkView];
      v24 = [v23 bottomAnchor];
      v25 = [(_UIActivityContentTitleView *)self layoutMarginsGuide];
      v26 = [v25 bottomAnchor];
      v17 = [v24 constraintEqualToAnchor:v26];

      v16 = v22;
      [(_UIActivityContentTitleView *)self setTopConstraint:v22];
      [(_UIActivityContentTitleView *)self setBottomConstraint:v17];
    }

    v37 = v16;
    v40 = [(_UIActivityContentTitleView *)self linkView];
    v38 = [v40 leadingAnchor];
    [(_UIActivityContentTitleView *)self layoutMarginsGuide];
    v39 = v42 = v15;
    v27 = [v39 leadingAnchor];
    v28 = [v38 constraintEqualToAnchor:v27];
    v45[0] = v28;
    v29 = [(_UIActivityContentTitleView *)self linkView];
    v30 = [v29 trailingAnchor];
    [(_UIActivityContentTitleView *)self layoutMarginsGuide];
    v31 = v41 = v14;
    v32 = [v31 trailingAnchor];
    v33 = [v30 constraintEqualToAnchor:v32];
    v45[1] = v33;
    v45[2] = v16;
    v45[3] = v17;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
    [(_UIActivityContentTitleView *)self setActiveConstraints:v34];

    v35 = MEMORY[0x1E696ACD8];
    v36 = [(_UIActivityContentTitleView *)self activeConstraints];
    [v35 activateConstraints:v36];

    v43.receiver = self;
    v43.super_class = _UIActivityContentTitleView;
    [(_UIActivityContentTitleView *)&v43 updateConstraints];
  }
}

- (void)setHasCloseButton:(BOOL)a3
{
  if (self->_hasCloseButton != a3)
  {
    v4 = a3;
    self->_hasCloseButton = a3;
    if ([(_UIActivityContentTitleView *)self isPresentedInPopover])
    {
      v6 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v6 userInterfaceIdiom])
      {
        v7 = 0;
      }

      else
      {
        v7 = !v4;
      }

      [(_UINavigationBarTitleView *)self setDisallowNavigationBarMinimumTopPadding:v7];
    }

    else
    {
      [(_UINavigationBarTitleView *)self setDisallowNavigationBarMinimumTopPadding:0];
    }

    [(_UIActivityContentTitleView *)self setNeedsLayout];
  }
}

- (void)setPhotosCarouselMode:(BOOL)a3
{
  if (self->_photosCarouselMode != a3)
  {
    self->_photosCarouselMode = a3;
    [(_UIActivityContentTitleView *)self _updateViewConfiguration];
    [(_UIActivityContentTitleView *)self setNeedsUpdateConstraints];
    [(_UIActivityContentTitleView *)self setNeedsLayout];

    [(_UINavigationBarTitleView *)self preferredContentSizeDidChange];
  }
}

- (void)setIsCloseButtonOnLeadingEdge:(BOOL)a3
{
  if (self->_isCloseButtonOnLeadingEdge != a3)
  {
    self->_isCloseButtonOnLeadingEdge = a3;
    [(_UIActivityContentTitleView *)self setNeedsLayout];
  }
}

- (void)setIsPresentedInPopover:(BOOL)a3
{
  if (self->_isPresentedInPopover != a3)
  {
    v10 = v4;
    v11 = v3;
    self->_isPresentedInPopover = a3;
    if (a3)
    {
      v8 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v8 userInterfaceIdiom])
      {
        v9 = 0;
      }

      else
      {
        v9 = [(_UIActivityContentTitleView *)self hasCloseButton]^ 1;
      }

      [(_UINavigationBarTitleView *)self setDisallowNavigationBarMinimumTopPadding:v9, v10, v11, v5];
    }

    else
    {
      [(_UINavigationBarTitleView *)self setDisallowNavigationBarMinimumTopPadding:?];
    }

    [(_UIActivityContentTitleView *)self setNeedsLayout];
  }
}

- (void)_updateViewConfiguration
{
  v3 = [(_UIActivityContentTitleView *)self photosCarouselMode];
  v4 = [(_UIActivityContentTitleView *)self linkView];
  v5 = v4;
  if (v3)
  {
    [v4 removeFromSuperview];
  }

  else
  {
    [(_UIActivityContentTitleView *)self addSubview:v4];
  }

  v6 = [(_UIActivityContentTitleView *)self photosCarouselMode];
  v7 = [(_UIActivityContentTitleView *)self linkView];
  [v7 setHidden:v6];

  v8 = [(_UIActivityContentTitleView *)self photosCarouselMode]^ 1;

  [(_UINavigationBarTitleView *)self setHideStandardTitle:v8];
}

- (void)contentDidChange
{
  v3.receiver = self;
  v3.super_class = _UIActivityContentTitleView;
  [(_UINavigationBarTitleView *)&v3 contentDidChange];
  [(_UIActivityContentTitleView *)self setNeedsLayout];
}

- (int64_t)preferredContentSizeForSize:(int64_t)a3
{
  if ([(_UIActivityContentTitleView *)self photosCarouselMode])
  {
    return a3;
  }

  else
  {
    return 3;
  }
}

- (void)layoutSubviews
{
  v72 = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = _UIActivityContentTitleView;
  [(_UIActivityContentTitleView *)&v67 layoutSubviews];
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  if ([(_UIActivityContentTitleView *)self hasCloseButton]&& ![(_UIActivityContentTitleView *)self photosCarouselMode])
  {
    v7 = [(_UIActivityContentTitleView *)self isCloseButtonOnLeadingEdge];
    v8 = [(_UINavigationBarTitleView *)self overlays];
    v9 = v8;
    if (v7)
    {
      [v8 leadingRect];
    }

    else
    {
      [v8 trailingRect];
    }

    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;

    if (v16 != *MEMORY[0x1E695F060] || v17 != *(MEMORY[0x1E695F060] + 8))
    {
      v66 = v15;
      v19 = v14;
      v20 = dyld_program_sdk_at_least();
      if (v16 == 0.0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        v22 = v16 + 16.0;
      }

      else
      {
        v22 = 59.0;
      }

      if (!_ShareSheetSolariumEnabled())
      {
        goto LABEL_23;
      }

      v23 = [(_UIActivityContentTitleView *)self linkView];
      v24 = [v23 effectiveUserInterfaceLayoutDirection];

      v25 = v19;
      if ([(_UIActivityContentTitleView *)self isCloseButtonOnLeadingEdge])
      {
        v26 = v66;
        if (v24 == 1)
        {
LABEL_19:
          v27 = [(_UIActivityContentTitleView *)self linkView];
          [v27 frame];
          MaxX = CGRectGetMaxX(v73);
LABEL_22:
          v75.origin.x = v25;
          v75.origin.y = v26;
          v75.size.width = v16;
          v75.size.height = v17;
          v32 = MaxX - CGRectGetMinX(v75);

          v22 = v32 + 15.0;
LABEL_23:
          v33 = [(_UIActivityContentTitleView *)self linkView];
          v34 = [v33 effectiveUserInterfaceLayoutDirection];

          v35 = [(_UIActivityContentTitleView *)self isCloseButtonOnLeadingEdge];
          v36 = [(_UIActivityContentTitleView *)self isCloseButtonOnLeadingEdge];
          if (v35)
          {
            v37 = v22;
          }

          else
          {
            v37 = v4;
          }

          if (v36)
          {
            v38 = v6;
          }

          else
          {
            v38 = v22;
          }

          if (v35)
          {
            v39 = v4;
          }

          else
          {
            v39 = v22;
          }

          if (v36)
          {
            v40 = v22;
          }

          else
          {
            v40 = v6;
          }

          if (v34 == 1)
          {
            v6 = v40;
          }

          else
          {
            v6 = v38;
          }

          if (v34 == 1)
          {
            v4 = v39;
          }

          else
          {
            v4 = v37;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v26 = v66;
        if (v24 != 1)
        {
          goto LABEL_19;
        }
      }

      v74.origin.x = v25;
      v74.origin.y = v26;
      v74.size.width = v16;
      v74.size.height = v17;
      MaxX = CGRectGetMaxX(v74);
      v27 = [(_UIActivityContentTitleView *)self linkView];
      [v27 frame];
      v25 = v28;
      v26 = v29;
      v16 = v30;
      v17 = v31;
      goto LABEL_22;
    }
  }

LABEL_41:
  v41 = [(_UIActivityContentTitleView *)self linkView];
  [v41 _setTextSafeAreaInset:{v3, v4, v5, v6}];

  if (!_ShareSheetSolariumEnabled())
  {
    [(_UIActivityContentTitleView *)self bounds];
    v44 = v43;
    [(_UIActivityContentTitleView *)self layoutMargins];
    v46 = v45;
    [(_UIActivityContentTitleView *)self layoutMargins];
    v48 = v47;
    v49 = [(_UIActivityContentTitleView *)self photosCarouselMode];
    v42 = 0.0;
    if (!v49)
    {
      v50 = [(_UIActivityContentTitleView *)self linkView];
      [v50 sizeThatFits:{v44 - (v46 + v48), 1.79769313e308}];
      v52 = v51;

      v42 = 72.0;
      if (v52 >= 72.0)
      {
        v42 = v52;
      }
    }

    goto LABEL_47;
  }

  if ([(_UIActivityContentTitleView *)self photosCarouselMode])
  {
    v42 = 0.0;
LABEL_47:
    [(_UINavigationBarTitleView *)self setHeight:v42];
    goto LABEL_49;
  }

  v53 = [(_UIActivityContentTitleView *)self linkView];
  [(_UIActivityContentTitleView *)self bounds];
  [v53 sizeThatFits:{v54, 1.79769313e308}];
  v56 = v55;
  [(_UIActivityContentTitleView *)self layoutMargins];
  v58 = v56 + v57;
  [(_UIActivityContentTitleView *)self layoutMargins];
  [(_UINavigationBarTitleView *)self setHeight:v58 + v59];

LABEL_49:
  v60 = share_sheet_log();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    [(_UINavigationBarTitleView *)self height];
    v62 = v61;
    v63 = [(_UIActivityContentTitleView *)self linkView];
    [v63 frame];
    v64 = NSStringFromCGRect(v76);
    *buf = 134218242;
    v69 = v62;
    v70 = 2112;
    v71 = v64;
    _os_log_impl(&dword_18B359000, v60, OS_LOG_TYPE_DEFAULT, "_UIActivityContentTitleView: layoutSubviews height:%f linkView:%@", buf, 0x16u);
  }
}

@end