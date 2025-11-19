@interface _UIDocumentUnavailableTitlePageView
- (_UIDocumentUnavailableTitlePageView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setPrimaryAction:(id *)a1;
- (void)setPrimaryButtonTint:(id *)a1;
- (void)setPrimaryMenu:(id *)a1;
- (void)setSecondaryAction:(id *)a1;
- (void)setSecondaryMenu:(id *)a1;
- (void)setTitle:(id *)a1;
@end

@implementation _UIDocumentUnavailableTitlePageView

- (_UIDocumentUnavailableTitlePageView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = _UIDocumentUnavailableTitlePageView;
  v3 = [(_UIDocumentUnavailablePageView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 layer];
    LODWORD(v6) = 1036831949;
    [v5 setShadowOpacity:v6];

    v7 = [(UIView *)v4 layer];
    [v7 setShadowRadius:40.0];

    v8 = [(UIView *)v4 layer];
    [v8 setShadowOffset:{0.0, 8.0}];

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

- (void)setTitle:(id *)a1
{
  if (a1)
  {
    v6 = a1[53];
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

      objc_storeStrong(a1 + 53, a2);

      [a1 setNeedsLayout];
    }
  }
}

- (void)setPrimaryButtonTint:(id *)a1
{
  if (a1)
  {
    v6 = a1[54];
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

      objc_storeStrong(a1 + 54, a2);

      [a1 setNeedsLayout];
    }
  }
}

- (void)setPrimaryAction:(id *)a1
{
  if (a1)
  {
    v6 = a1[55];
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

      objc_storeStrong(a1 + 55, a2);

      [a1 setNeedsLayout];
    }
  }
}

- (void)setPrimaryMenu:(id *)a1
{
  if (a1)
  {
    v6 = a1[56];
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

      objc_storeStrong(a1 + 56, a2);

      [a1 setNeedsLayout];
    }
  }
}

- (void)setSecondaryAction:(id *)a1
{
  if (a1)
  {
    v6 = a1[57];
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

      objc_storeStrong(a1 + 57, a2);

      [a1 setNeedsLayout];
    }
  }
}

- (void)setSecondaryMenu:(id *)a1
{
  if (a1)
  {
    v6 = a1[58];
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

      objc_storeStrong(a1 + 58, a2);

      [a1 setNeedsLayout];
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
    v4 = [(UIView *)self traitCollection];
    v5 = [v4 horizontalSizeClass];

    v6 = [(UIView *)self traitCollection];
    v7 = [v6 verticalSizeClass];

    actionsEnabled = self->_actionsEnabled;
    if (v7 != 1)
    {
      [v3 setText:self->_title];
      v9 = [v3 textProperties];
      [v9 setNumberOfLines:1];

      v10 = [v3 textProperties];
      [v10 setAdjustsFontSizeToFitWidth:1];

      [v3 setTextToButtonPadding:36.0];
      if (v5 == 1)
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
      v15 = [v3 textProperties];
      [v15 setFont:v14];
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