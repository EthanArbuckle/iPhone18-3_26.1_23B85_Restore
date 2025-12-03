@interface _UIDocumentUnavailableTitlePageView
- (_UIDocumentUnavailableTitlePageView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setPrimaryAction:(id *)action;
- (void)setPrimaryButtonTint:(id *)tint;
- (void)setPrimaryMenu:(id *)menu;
- (void)setSecondaryAction:(id *)action;
- (void)setSecondaryMenu:(id *)menu;
- (void)setTitle:(id *)title;
@end

@implementation _UIDocumentUnavailableTitlePageView

- (_UIDocumentUnavailableTitlePageView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = _UIDocumentUnavailableTitlePageView;
  v3 = [(_UIDocumentUnavailablePageView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    LODWORD(v6) = 1036831949;
    [layer setShadowOpacity:v6];

    layer2 = [(UIView *)v4 layer];
    [layer2 setShadowRadius:40.0];

    layer3 = [(UIView *)v4 layer];
    [layer3 setShadowOffset:{0.0, 8.0}];

    v9 = +[UIColor tertiarySystemBackgroundColor];
    [(UIView *)v4 setBackgroundColor:v9];

    v10 = [UIContentUnavailableView alloc];
    v11 = +[UIContentUnavailableConfiguration emptyConfiguration];
    v12 = [(UIContentUnavailableView *)v10 initWithConfiguration:v11];

    [(UIView *)v4 bounds];
    [(UIView *)v12 setFrame:?];
    [(UIView *)v12 setAutoresizingMask:18];
    [(UIContentUnavailableView *)v12 setScrollEnabled:1];
    [(UIView *)v4 addSubview:v12];
    contentUnavailableView = v4->_contentUnavailableView;
    v4->_contentUnavailableView = v12;
  }

  return v4;
}

- (void)setTitle:(id *)title
{
  if (title)
  {
    v6 = title[53];
    v4 = a2;
    if (v6 == v4)
    {
    }

    else
    {
      if (v4 && v6)
      {
        v5 = [v6 isEqual:v4];

        if (v5)
        {
          return;
        }
      }

      else
      {
      }

      objc_storeStrong(title + 53, a2);

      [title setNeedsLayout];
    }
  }
}

- (void)setPrimaryButtonTint:(id *)tint
{
  if (tint)
  {
    v6 = tint[54];
    v4 = a2;
    if (v6 == v4)
    {
    }

    else
    {
      if (v4 && v6)
      {
        v5 = [v6 isEqual:v4];

        if (v5)
        {
          return;
        }
      }

      else
      {
      }

      objc_storeStrong(tint + 54, a2);

      [tint setNeedsLayout];
    }
  }
}

- (void)setPrimaryAction:(id *)action
{
  if (action)
  {
    v6 = action[55];
    v4 = a2;
    if (v6 == v4)
    {
    }

    else
    {
      if (v4 && v6)
      {
        v5 = [v6 isEqual:v4];

        if (v5)
        {
          return;
        }
      }

      else
      {
      }

      objc_storeStrong(action + 55, a2);

      [action setNeedsLayout];
    }
  }
}

- (void)setPrimaryMenu:(id *)menu
{
  if (menu)
  {
    v6 = menu[56];
    v4 = a2;
    if (v6 == v4)
    {
    }

    else
    {
      if (v4 && v6)
      {
        v5 = [v6 isEqual:v4];

        if (v5)
        {
          return;
        }
      }

      else
      {
      }

      objc_storeStrong(menu + 56, a2);

      [menu setNeedsLayout];
    }
  }
}

- (void)setSecondaryAction:(id *)action
{
  if (action)
  {
    v6 = action[57];
    v4 = a2;
    if (v6 == v4)
    {
    }

    else
    {
      if (v4 && v6)
      {
        v5 = [v6 isEqual:v4];

        if (v5)
        {
          return;
        }
      }

      else
      {
      }

      objc_storeStrong(action + 57, a2);

      [action setNeedsLayout];
    }
  }
}

- (void)setSecondaryMenu:(id *)menu
{
  if (menu)
  {
    v6 = menu[58];
    v4 = a2;
    if (v6 == v4)
    {
    }

    else
    {
      if (v4 && v6)
      {
        v5 = [v6 isEqual:v4];

        if (v5)
        {
          return;
        }
      }

      else
      {
      }

      objc_storeStrong(menu + 58, a2);

      [menu setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = _UIDocumentUnavailableTitlePageView;
  [(UIView *)&v24 layoutSubviews];
  if (self)
  {
    v3 = +[UIContentUnavailableConfiguration emptyConfiguration];
    traitCollection = [(UIView *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    traitCollection2 = [(UIView *)self traitCollection];
    verticalSizeClass = [traitCollection2 verticalSizeClass];

    actionsEnabled = self->_actionsEnabled;
    if (verticalSizeClass != 1)
    {
      [v3 setText:self->_title];
      textProperties = [v3 textProperties];
      [textProperties setNumberOfLines:1];

      textProperties2 = [v3 textProperties];
      [textProperties2 setAdjustsFontSizeToFitWidth:1];

      [v3 setTextToButtonPadding:36.0];
      if (horizontalSizeClass == 1)
      {
        v11 = 64.0;
      }

      else
      {
        v11 = 96.0;
      }

      v12 = _UISolariumEnabled();
      v13 = off_1E70ECD30;
      if (!v12)
      {
        v13 = off_1E70ECD20;
      }

      v14 = [off_1E70ECC18 systemFontOfSize:v11 weight:*v13];
      textProperties3 = [v3 textProperties];
      [textProperties3 setFont:v14];
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __77___UIDocumentUnavailableTitlePageView__updateContentUnavailableConfiguration__block_invoke;
    v30[3] = &unk_1E7125620;
    v30[4] = self;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v26 = __77___UIDocumentUnavailableTitlePageView__updateContentUnavailableConfiguration__block_invoke_2;
    v27 = &__block_descriptor_41_e73_v40__0__UIContentUnavailableConfiguration_8__UIAction_16__UIMenu_24B32B36lu32l8;
    v28 = v30;
    v29 = actionsEnabled;
    primaryMenu = self->_primaryMenu;
    v17 = self->_primaryAction;
    __77___UIDocumentUnavailableTitlePageView__updateContentUnavailableConfiguration__block_invoke_2(v25, v3, v17, primaryMenu, 1u);

    secondaryMenu = self->_secondaryMenu;
    hasSecondaryProgress = self->_hasSecondaryProgress;
    v20 = v26;
    v21 = self->_secondaryAction;
    (v20)(v25, v3, v21, secondaryMenu, 0, hasSecondaryProgress);

    v22 = _UISolariumEnabled();
    v23 = 12.0;
    if (!v22)
    {
      v23 = 20.0;
    }

    [v3 setButtonToSecondaryButtonPadding:v23];
    [v3 setDirectionalLayoutMargins:{20.0, 20.0, self->_bottomInset + 20.0, 20.0}];
    [(UIContentUnavailableView *)self->_contentUnavailableView setConfiguration:v3];
  }
}

@end