@interface _UIActivityContentTitleView
- (_UIActivityContentTitleView)initWithFrame:(CGRect)frame;
- (int64_t)preferredContentSizeForSize:(int64_t)size;
- (void)_updateViewConfiguration;
- (void)contentDidChange;
- (void)layoutSubviews;
- (void)setHasCloseButton:(BOOL)button;
- (void)setIsCloseButtonOnLeadingEdge:(BOOL)edge;
- (void)setIsPresentedInPopover:(BOOL)popover;
- (void)setLinkView:(id)view;
- (void)setPhotosCarouselMode:(BOOL)mode;
- (void)updateConstraints;
@end

@implementation _UIActivityContentTitleView

- (_UIActivityContentTitleView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIActivityContentTitleView;
  v3 = [(_UINavigationBarTitleView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    if ([(_UIActivityContentTitleView *)v3 isPresentedInPopover])
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom])
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

- (void)setLinkView:(id)view
{
  viewCopy = view;
  v6 = self->_linkView;
  v7 = viewCopy;
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
    objc_storeStrong(&self->_linkView, view);
    [(_UIActivityContentTitleView *)self _updateViewConfiguration];
    [(_UIActivityContentTitleView *)self setNeedsUpdateConstraints];
  }

LABEL_8:
}

- (void)updateConstraints
{
  v45[4] = *MEMORY[0x1E69E9840];
  activeConstraints = [(_UIActivityContentTitleView *)self activeConstraints];

  if (activeConstraints)
  {
    v4 = MEMORY[0x1E696ACD8];
    activeConstraints2 = [(_UIActivityContentTitleView *)self activeConstraints];
    [v4 deactivateConstraints:activeConstraints2];
  }

  if ([(_UIActivityContentTitleView *)self photosCarouselMode])
  {
    v44.receiver = self;
    v44.super_class = _UIActivityContentTitleView;
    [(_UIActivityContentTitleView *)&v44 updateConstraints];
  }

  else
  {
    linkView = [(_UIActivityContentTitleView *)self linkView];
    heightAnchor = [linkView heightAnchor];
    heightAnchor2 = [(_UIActivityContentTitleView *)self heightAnchor];
    v9 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

    linkView2 = [(_UIActivityContentTitleView *)self linkView];
    centerYAnchor = [linkView2 centerYAnchor];
    centerYAnchor2 = [(_UIActivityContentTitleView *)self centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    v14 = v9;
    v15 = v13;
    v16 = v14;
    v17 = v15;
    if (_ShareSheetSolariumEnabled())
    {
      linkView3 = [(_UIActivityContentTitleView *)self linkView];
      topAnchor = [linkView3 topAnchor];
      layoutMarginsGuide = [(_UIActivityContentTitleView *)self layoutMarginsGuide];
      topAnchor2 = [layoutMarginsGuide topAnchor];
      v22 = [topAnchor constraintEqualToAnchor:topAnchor2];

      linkView4 = [(_UIActivityContentTitleView *)self linkView];
      bottomAnchor = [linkView4 bottomAnchor];
      layoutMarginsGuide2 = [(_UIActivityContentTitleView *)self layoutMarginsGuide];
      bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
      v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

      v16 = v22;
      [(_UIActivityContentTitleView *)self setTopConstraint:v22];
      [(_UIActivityContentTitleView *)self setBottomConstraint:v17];
    }

    v37 = v16;
    linkView5 = [(_UIActivityContentTitleView *)self linkView];
    leadingAnchor = [linkView5 leadingAnchor];
    [(_UIActivityContentTitleView *)self layoutMarginsGuide];
    v39 = v42 = v15;
    leadingAnchor2 = [v39 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v45[0] = v28;
    linkView6 = [(_UIActivityContentTitleView *)self linkView];
    trailingAnchor = [linkView6 trailingAnchor];
    [(_UIActivityContentTitleView *)self layoutMarginsGuide];
    v31 = v41 = v14;
    trailingAnchor2 = [v31 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v45[1] = v33;
    v45[2] = v16;
    v45[3] = v17;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
    [(_UIActivityContentTitleView *)self setActiveConstraints:v34];

    v35 = MEMORY[0x1E696ACD8];
    activeConstraints3 = [(_UIActivityContentTitleView *)self activeConstraints];
    [v35 activateConstraints:activeConstraints3];

    v43.receiver = self;
    v43.super_class = _UIActivityContentTitleView;
    [(_UIActivityContentTitleView *)&v43 updateConstraints];
  }
}

- (void)setHasCloseButton:(BOOL)button
{
  if (self->_hasCloseButton != button)
  {
    buttonCopy = button;
    self->_hasCloseButton = button;
    if ([(_UIActivityContentTitleView *)self isPresentedInPopover])
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom])
      {
        v7 = 0;
      }

      else
      {
        v7 = !buttonCopy;
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

- (void)setPhotosCarouselMode:(BOOL)mode
{
  if (self->_photosCarouselMode != mode)
  {
    self->_photosCarouselMode = mode;
    [(_UIActivityContentTitleView *)self _updateViewConfiguration];
    [(_UIActivityContentTitleView *)self setNeedsUpdateConstraints];
    [(_UIActivityContentTitleView *)self setNeedsLayout];

    [(_UINavigationBarTitleView *)self preferredContentSizeDidChange];
  }
}

- (void)setIsCloseButtonOnLeadingEdge:(BOOL)edge
{
  if (self->_isCloseButtonOnLeadingEdge != edge)
  {
    self->_isCloseButtonOnLeadingEdge = edge;
    [(_UIActivityContentTitleView *)self setNeedsLayout];
  }
}

- (void)setIsPresentedInPopover:(BOOL)popover
{
  if (self->_isPresentedInPopover != popover)
  {
    v10 = v4;
    v11 = v3;
    self->_isPresentedInPopover = popover;
    if (popover)
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom])
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
  photosCarouselMode = [(_UIActivityContentTitleView *)self photosCarouselMode];
  linkView = [(_UIActivityContentTitleView *)self linkView];
  v5 = linkView;
  if (photosCarouselMode)
  {
    [linkView removeFromSuperview];
  }

  else
  {
    [(_UIActivityContentTitleView *)self addSubview:linkView];
  }

  photosCarouselMode2 = [(_UIActivityContentTitleView *)self photosCarouselMode];
  linkView2 = [(_UIActivityContentTitleView *)self linkView];
  [linkView2 setHidden:photosCarouselMode2];

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

- (int64_t)preferredContentSizeForSize:(int64_t)size
{
  if ([(_UIActivityContentTitleView *)self photosCarouselMode])
  {
    return size;
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
    isCloseButtonOnLeadingEdge = [(_UIActivityContentTitleView *)self isCloseButtonOnLeadingEdge];
    overlays = [(_UINavigationBarTitleView *)self overlays];
    v9 = overlays;
    if (isCloseButtonOnLeadingEdge)
    {
      [overlays leadingRect];
    }

    else
    {
      [overlays trailingRect];
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

      linkView = [(_UIActivityContentTitleView *)self linkView];
      effectiveUserInterfaceLayoutDirection = [linkView effectiveUserInterfaceLayoutDirection];

      v25 = v19;
      if ([(_UIActivityContentTitleView *)self isCloseButtonOnLeadingEdge])
      {
        v26 = v66;
        if (effectiveUserInterfaceLayoutDirection == 1)
        {
LABEL_19:
          linkView2 = [(_UIActivityContentTitleView *)self linkView];
          [linkView2 frame];
          MaxX = CGRectGetMaxX(v73);
LABEL_22:
          v75.origin.x = v25;
          v75.origin.y = v26;
          v75.size.width = v16;
          v75.size.height = v17;
          v32 = MaxX - CGRectGetMinX(v75);

          v22 = v32 + 15.0;
LABEL_23:
          linkView3 = [(_UIActivityContentTitleView *)self linkView];
          effectiveUserInterfaceLayoutDirection2 = [linkView3 effectiveUserInterfaceLayoutDirection];

          isCloseButtonOnLeadingEdge2 = [(_UIActivityContentTitleView *)self isCloseButtonOnLeadingEdge];
          isCloseButtonOnLeadingEdge3 = [(_UIActivityContentTitleView *)self isCloseButtonOnLeadingEdge];
          if (isCloseButtonOnLeadingEdge2)
          {
            v37 = v22;
          }

          else
          {
            v37 = v4;
          }

          if (isCloseButtonOnLeadingEdge3)
          {
            v38 = v6;
          }

          else
          {
            v38 = v22;
          }

          if (isCloseButtonOnLeadingEdge2)
          {
            v39 = v4;
          }

          else
          {
            v39 = v22;
          }

          if (isCloseButtonOnLeadingEdge3)
          {
            v40 = v22;
          }

          else
          {
            v40 = v6;
          }

          if (effectiveUserInterfaceLayoutDirection2 == 1)
          {
            v6 = v40;
          }

          else
          {
            v6 = v38;
          }

          if (effectiveUserInterfaceLayoutDirection2 == 1)
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
        if (effectiveUserInterfaceLayoutDirection != 1)
        {
          goto LABEL_19;
        }
      }

      v74.origin.x = v25;
      v74.origin.y = v26;
      v74.size.width = v16;
      v74.size.height = v17;
      MaxX = CGRectGetMaxX(v74);
      linkView2 = [(_UIActivityContentTitleView *)self linkView];
      [linkView2 frame];
      v25 = v28;
      v26 = v29;
      v16 = v30;
      v17 = v31;
      goto LABEL_22;
    }
  }

LABEL_41:
  linkView4 = [(_UIActivityContentTitleView *)self linkView];
  [linkView4 _setTextSafeAreaInset:{v3, v4, v5, v6}];

  if (!_ShareSheetSolariumEnabled())
  {
    [(_UIActivityContentTitleView *)self bounds];
    v44 = v43;
    [(_UIActivityContentTitleView *)self layoutMargins];
    v46 = v45;
    [(_UIActivityContentTitleView *)self layoutMargins];
    v48 = v47;
    photosCarouselMode = [(_UIActivityContentTitleView *)self photosCarouselMode];
    v42 = 0.0;
    if (!photosCarouselMode)
    {
      linkView5 = [(_UIActivityContentTitleView *)self linkView];
      [linkView5 sizeThatFits:{v44 - (v46 + v48), 1.79769313e308}];
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

  linkView6 = [(_UIActivityContentTitleView *)self linkView];
  [(_UIActivityContentTitleView *)self bounds];
  [linkView6 sizeThatFits:{v54, 1.79769313e308}];
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
    linkView7 = [(_UIActivityContentTitleView *)self linkView];
    [linkView7 frame];
    v64 = NSStringFromCGRect(v76);
    *buf = 134218242;
    v69 = v62;
    v70 = 2112;
    v71 = v64;
    _os_log_impl(&dword_18B359000, v60, OS_LOG_TYPE_DEFAULT, "_UIActivityContentTitleView: layoutSubviews height:%f linkView:%@", buf, 0x16u);
  }
}

@end