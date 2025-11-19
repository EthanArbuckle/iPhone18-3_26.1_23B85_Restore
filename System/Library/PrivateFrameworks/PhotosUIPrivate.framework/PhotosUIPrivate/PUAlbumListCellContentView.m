@interface PUAlbumListCellContentView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (CGPoint)_deleteButtonCenter;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PUAlbumListCellContentView)initWithFrame:(CGRect)a3;
- (PUAlbumListCellDelegate)delegate;
- (PXFocusInfo)focusInfo;
- (UIView)springLoadingTargetView;
- (double)_titleFieldAlpha;
- (void)_deleteAction:(id)a3;
- (void)_updateCheckmarkView;
- (void)_updateDeleteButtonAnimated:(BOOL)a3;
- (void)_updateStackViewAnimated:(BOOL)a3;
- (void)_updateSubtitleLabelAnimated:(BOOL)a3;
- (void)_updateSubtitleLabelStyle;
- (void)_updateSubviewOrdering;
- (void)_updateTitleFieldAnimated:(BOOL)a3;
- (void)_updateTitleStyle;
- (void)cancelPerformRetitleAction;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCombinesPhotoDecorations:(BOOL)a3;
- (void)setCustomImageView:(id)a3;
- (void)setEditCapabilities:(unint64_t)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setLayout:(int64_t)a3;
- (void)setShouldCenterTextHorizontally:(BOOL)a3;
- (void)setShowsCheckmarkView:(BOOL)a3;
- (void)setShowsDeleteButtonWhenEditing:(BOOL)a3;
- (void)setShowsTitle:(BOOL)a3 animated:(BOOL)a4;
- (void)setSubtitle:(id)a3 animated:(BOOL)a4;
- (void)setSubtitleFont:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleFont:(id)a3;
- (void)setUsesLabelForTitle:(BOOL)a3;
- (void)setXInset:(double)a3;
- (void)startPerformRetitleAction;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation PUAlbumListCellContentView

- (PUAlbumListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateSubtitleLabelStyle
{
  v8 = [(PUAlbumListCellContentView *)self _subtitleLabel];
  layout = self->_layout;
  v4 = [(PUAlbumListCellContentView *)self shouldCenterTextHorizontally];
  if (v8)
  {
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 4;
    }

    [v8 setTextAlignment:v5];
    v6 = [(PUAlbumListCellContentView *)self subtitleFont];
    [v8 setFont:v6];

    v7 = +[PUInterfaceManager currentTheme];
    [v7 configureAlbumListSubtitleLabel:v8 asOpaque:layout == 0];

    [v8 setAdjustsFontSizeToFitWidth:0];
    [v8 _setWantsContentAwareTypesettingLanguage:1];
    [v8 setNeedsLayout];
  }
}

- (void)_updateTitleStyle
{
  v2 = self;
  v10 = [(PUAlbumListCellContentView *)self _titleTextField];
  v3 = [(PUAlbumListCellContentView *)v2 _titleLabel];
  layout = v2->_layout;
  if ([(PUAlbumListCellContentView *)v2 shouldCenterTextHorizontally])
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  if (v10)
  {
    [v10 setTextAlignment:v5];
    [v10 setClearButtonMode:{-[PUAlbumListCellContentView _titleTextFieldClearButtonModeForLayout:](v2, "_titleTextFieldClearButtonModeForLayout:", v2->_layout)}];
    v6 = [(PUAlbumListCellContentView *)v2 titleFont];
    [v10 setFont:v6];

    v7 = +[PUInterfaceManager currentTheme];
    [v7 configureAlbumListTitleTextField:v10 asOpaque:layout == 0];

    [v10 setAdjustsFontSizeToFitWidth:0];
    [v10 setContentVerticalAlignment:3];
  }

  else
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    [(PUAlbumListCellContentView *)v3 setTextAlignment:v5];
    v8 = [(PUAlbumListCellContentView *)v2 titleFont];
    [(PUAlbumListCellContentView *)v3 setFont:v8];

    v9 = +[PUInterfaceManager currentTheme];
    [v9 configureAlbumListTitleLabel:v3 asOpaque:layout == 0];

    [(PUAlbumListCellContentView *)v3 setAdjustsFontSizeToFitWidth:0];
    [(PUAlbumListCellContentView *)v3 _setWantsContentAwareTypesettingLanguage:1];
    v2 = v3;
  }

  [(PUAlbumListCellContentView *)v2 setNeedsLayout];
LABEL_9:
}

- (void)_deleteAction:(id)a3
{
  v4 = a3;
  v5 = [(PUAlbumListCellContentView *)self delegate];
  [v5 albumListCellContentView:self performDeleteAction:v4];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [a3 view];
  v5 = [(PUAlbumListCellContentView *)self _titleLabel];

  if (v4 == v5)
  {
    LODWORD(v6) = [(PUAlbumListCellContentView *)self isEditing];
    if (v6)
    {
      return ([(PUAlbumListCellContentView *)self editCapabilities]>> 1) & 1;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v8 = a3;
  [(PUAlbumListCellContentView *)self setUsesLabelForTitle:1];
  v4 = [(PUAlbumListCellContentView *)self title];
  v5 = [v8 text];
  if ([v5 length] && (objc_msgSend(v5, "isEqualToString:", v4) & 1) == 0)
  {
    [(PUAlbumListCellContentView *)self setTitle:v5];
  }

  else
  {
    v6 = v4;

    [v8 setText:v6];
    v5 = v6;
  }

  v7 = [(PUAlbumListCellContentView *)self delegate];
  [v7 albumListCellContentView:self didEndRetitlingFromTitle:v4 toTitle:v5];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  if ((self->_layout - 1) <= 1)
  {
    [(PUAlbumListCellContentView *)self setNeedsLayout:a3];
  }

  return 1;
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = [(PUAlbumListCellContentView *)self delegate];
  v5 = v4;
  if (self->_enabled && (self->_editCapabilities & 2) != 0)
  {
    v6 = [v4 albumListCellContentViewShouldBeginRetitling:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUsesLabelForTitle:(BOOL)a3
{
  if (self->_usesLabelForTitle != a3)
  {
    self->_usesLabelForTitle = a3;
    [(PUAlbumListCellContentView *)self _updateTitleFieldAnimated:0];

    [(PUAlbumListCellContentView *)self layoutIfNeeded];
  }
}

- (void)setCombinesPhotoDecorations:(BOOL)a3
{
  if (self->_combinesPhotoDecorations != a3)
  {
    v4 = a3;
    self->_combinesPhotoDecorations = a3;
    v5 = [(PUAlbumListCellContentView *)self stackView];
    [v5 setCombinesPhotoDecorations:v4];
  }
}

- (void)cancelPerformRetitleAction
{
  v3 = [(PUAlbumListCellContentView *)self _titleTextField];
  v4 = [(PUAlbumListCellContentView *)self title];
  [v3 setText:v4];

  v5 = [(PUAlbumListCellContentView *)self _titleTextField];
  [v5 resignFirstResponder];
}

- (void)startPerformRetitleAction
{
  [(PUAlbumListCellContentView *)self setUsesLabelForTitle:0];
  v3 = [(PUAlbumListCellContentView *)self _titleTextField];
  [v3 becomeFirstResponder];

  v4 = [(PUAlbumListCellContentView *)self _titleTextField];
  [v4 selectAll];
}

- (void)_updateSubtitleLabelAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUAlbumListCellContentView *)self subtitle];
  v6 = [v5 length];
  v7 = [(PUAlbumListCellContentView *)self _subtitleLabel];
  v8 = v7;
  if (!v6 || v7)
  {
    if (!v6)
    {
      [v7 removeFromSuperview];
      [(PUAlbumListCellContentView *)self _setSubtitleLabel:0];
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(PUAlbumListCellContentView *)self addSubview:v8];
    [(PUAlbumListCellContentView *)self _setSubtitleLabel:v8];
    [(PUAlbumListCellContentView *)self _updateSubtitleLabelStyle];
    [(PUAlbumListCellContentView *)self _updateSubviewOrdering];
  }

  [v8 setText:v5];
  [(PUAlbumListCellContentView *)self setNeedsLayout];
  [(PUAlbumListCellContentView *)self _titleFieldAlpha];
  v10 = v9;
  v11 = [v5 isEqualToString:@" "];
  v12 = 1.0;
  v13 = 0.0;
  if (v11)
  {
    v12 = 0.0;
  }

  if (v10 >= v12)
  {
    v10 = v12;
  }

  if (v3)
  {
    [v8 alpha];
    if (v10 == v14)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 0.3;
    }
  }

  v15 = MEMORY[0x1E69DD250];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__PUAlbumListCellContentView__updateSubtitleLabelAnimated___block_invoke;
  v17[3] = &unk_1E7B7FF70;
  v18 = v8;
  v19 = v10;
  v16 = v8;
  [v15 pu_animateWithDuration:v17 animations:v13];
}

- (void)_updateTitleFieldAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUAlbumListCellContentView *)self title];
  v6 = [v5 length];
  v7 = [(PUAlbumListCellContentView *)self _titleTextField];
  v8 = [(PUAlbumListCellContentView *)self _titleLabel];
  v9 = [(PUAlbumListCellContentView *)self usesLabelForTitle];
  if (v6)
  {
    if (v9)
    {
      [v7 removeFromSuperview];
      if (!v8)
      {
        v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        [v8 setUserInteractionEnabled:1];
        v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleLabelTap_];
        [v10 setDelegate:self];
        [v8 addGestureRecognizer:v10];
        [(PUAlbumListCellContentView *)self _setTitleLabel:v8];
        [(PUAlbumListCellContentView *)self _updateTitleStyle];
        [(PUAlbumListCellContentView *)self _updateSubviewOrdering];
      }

      v11 = [v8 superview];

      if (v11 != self)
      {
        [(PUAlbumListCellContentView *)self addSubview:v8];
      }

      goto LABEL_8;
    }

    [v8 removeFromSuperview];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
      [v7 setDelegate:self];
      [(PUAlbumListCellContentView *)self _setTitleTextField:v7];
      [(PUAlbumListCellContentView *)self _updateTitleStyle];
      [(PUAlbumListCellContentView *)self _updateSubviewOrdering];
    }

    v13 = [v7 superview];

    if (v13 != self)
    {
      [(PUAlbumListCellContentView *)self addSubview:v7];
    }
  }

  else if (v9)
  {
LABEL_8:
    v12 = v8;
    goto LABEL_14;
  }

  v12 = v7;
LABEL_14:
  [v12 setText:v5];
  [(PUAlbumListCellContentView *)self setNeedsLayout];
  [(PUAlbumListCellContentView *)self _titleFieldAlpha];
  v15 = !v3;
  v16 = MEMORY[0x1E69DD250];
  v20[1] = 3221225472;
  v20[0] = MEMORY[0x1E69E9820];
  v20[2] = __56__PUAlbumListCellContentView__updateTitleFieldAnimated___block_invoke;
  v20[3] = &unk_1E7B7F350;
  if (v15)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 0.3;
  }

  v23 = v14;
  v21 = v7;
  v22 = v8;
  v18 = v8;
  v19 = v7;
  [v16 pu_animateWithEnforcedDuration:v20 animations:0 completion:v17];
}

uint64_t __56__PUAlbumListCellContentView__updateTitleFieldAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 setAlpha:v3];
}

- (double)_titleFieldAlpha
{
  enabled = self->_enabled;
  editCapabilities = self->_editCapabilities;
  v5 = [(PUAlbumListCellContentView *)self _showsTitleAndSubtitle];
  if (!enabled || (self->_editing ? (v6 = (editCapabilities & 2) == 0) : (v6 = 0), v6))
  {
    v8 = +[PUInterfaceManager currentTheme];
    [v8 albumListDisabledAlbumTitleAlpha];
    v10 = v9;

    return v10;
  }

  else
  {
    result = 0.0;
    if (v5)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)_updateStackViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = +[PUInterfaceManager currentTheme];
  v6 = v5;
  v7 = self->_editing && (self->_editCapabilities & 4) == 0;
  v8 = self->_enabled && !v7;
  v9 = 1.0;
  if (!v8)
  {
    [v5 albumListDisabledAlbumStackViewAlpha];
    v9 = v10;
  }

  v11 = [(PUAlbumListCellContentView *)self stackView];
  v12 = [(PUAlbumListCellContentView *)self customImageView];
  [v11 setHidden:v12 != 0];
  v13 = [v11 layer];
  [v13 setAllowsGroupOpacity:v9 < 1.0];

  v8 = !v3;
  v14 = MEMORY[0x1E69DD250];
  v18[1] = 3221225472;
  v18[0] = MEMORY[0x1E69E9820];
  v18[2] = __55__PUAlbumListCellContentView__updateStackViewAnimated___block_invoke;
  v18[3] = &unk_1E7B7F350;
  if (v8)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 0.3;
  }

  v21 = v9;
  v19 = v11;
  v20 = v12;
  v16 = v12;
  v17 = v11;
  [v14 pu_animateWithDuration:v18 animations:0 completion:v15];
}

uint64_t __55__PUAlbumListCellContentView__updateStackViewAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setItemAlpha:*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 setAlpha:v3];
}

- (void)_updateDeleteButtonAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = !self->_editing || (self->_editCapabilities & 1) == 0;
  v6 = [(PUAlbumListCellContentView *)self showsDeleteButtonWhenEditing];
  if (v3)
  {
    v7 = 0.3;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(PUAlbumListCellContentView *)self _deleteButton];
  v9 = v8;
  if (v5 || !v6)
  {
    if (!v8)
    {
      return;
    }

    v33 = MEMORY[0x1E69DD250];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __58__PUAlbumListCellContentView__updateDeleteButtonAnimated___block_invoke_3;
    v39[3] = &unk_1E7B80DD0;
    v31 = &v40;
    v40 = v8;
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __58__PUAlbumListCellContentView__updateDeleteButtonAnimated___block_invoke_4;
    v37 = &unk_1E7B7F020;
    v38 = v40;
    v32 = v40;
    [v33 pu_animateWithDuration:v39 animations:&v34 completion:v7];
    [(PUAlbumListCellContentView *)self _setDeleteButton:0, v34, v35, v36, v37];
  }

  else
  {
    if (!v8)
    {
      v10 = [MEMORY[0x1E69C3BE8] buttonWithType:0];
      [v10 addTarget:self action:sel__deleteAction_ forControlEvents:64];
      v11 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
      v12 = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
      v13 = [v11 configurationByApplyingConfiguration:v12];

      v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle.fill"];
      v15 = [v14 imageByApplyingSymbolConfiguration:v13];

      [v10 setImage:v15 forState:0];
      [(PUAlbumListCellContentView *)self _deleteButtonCenter];
      v17 = v16;
      v19 = v18;
      v20 = MEMORY[0x1E69DD250];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __58__PUAlbumListCellContentView__updateDeleteButtonAnimated___block_invoke;
      v43[3] = &unk_1E7B7C518;
      v9 = v10;
      v44 = v9;
      v45 = v17;
      v46 = v19;
      [v20 performWithoutAnimation:v43];
      PXEdgeInsetsMake();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = [v9 px_configuration];
      [v29 setHitTestOutset:{v22, v24, v26, v28}];

      [(PUAlbumListCellContentView *)self addSubview:v9];
      [(PUAlbumListCellContentView *)self setNeedsLayout];
      [(PUAlbumListCellContentView *)self _setDeleteButton:v9];
      [(PUAlbumListCellContentView *)self _updateSubviewOrdering];
    }

    v30 = MEMORY[0x1E69DD250];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __58__PUAlbumListCellContentView__updateDeleteButtonAnimated___block_invoke_2;
    v41[3] = &unk_1E7B80DD0;
    v31 = &v42;
    v42 = v9;
    v32 = v9;
    [v30 pu_animateWithDuration:v41 animations:v7];
  }
}

uint64_t __58__PUAlbumListCellContentView__updateDeleteButtonAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sizeToFit];
  [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

- (void)_updateSubviewOrdering
{
  v3 = [(PUAlbumListCellContentView *)self stackView];
  [(PUAlbumListCellContentView *)self bringSubviewToFront:v3];

  v4 = [(PUAlbumListCellContentView *)self customImageView];
  [(PUAlbumListCellContentView *)self bringSubviewToFront:v4];

  v5 = [(PUAlbumListCellContentView *)self _deleteButton];
  [(PUAlbumListCellContentView *)self bringSubviewToFront:v5];

  v6 = [(PUAlbumListCellContentView *)self _subtitleLabel];
  [(PUAlbumListCellContentView *)self bringSubviewToFront:v6];

  v7 = [(PUAlbumListCellContentView *)self _titleTextField];
  [(PUAlbumListCellContentView *)self bringSubviewToFront:v7];

  v8 = [(PUAlbumListCellContentView *)self _titleLabel];
  [(PUAlbumListCellContentView *)self bringSubviewToFront:v8];

  v9 = [(PUAlbumListCellContentView *)self checkmarkView];

  if (v9)
  {
    v10 = [(PUAlbumListCellContentView *)self checkmarkView];
    [(PUAlbumListCellContentView *)self bringSubviewToFront:v10];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(PUAlbumListCellContentView *)self isHighlighted]!= a3)
  {
    self->_highlighted = v3;
    v5 = [(PUAlbumListCellContentView *)self stackView];
    [v5 setHighlighted:v3];
  }
}

- (void)_updateCheckmarkView
{
  v3 = [(PUAlbumListCellContentView *)self showsCheckmarkView];
  v4 = [(PUAlbumListCellContentView *)self checkmarkView];
  v7 = v4;
  if (v3)
  {

    if (v7)
    {
      return;
    }

    v5 = MEMORY[0x1E69DD250];
    v6 = [MEMORY[0x1E69DC888] systemBlueColor];
    v7 = [v5 px_circularGlyphViewWithName:@"checkmark.circle" backgroundColor:v6];

    [v7 setUserInteractionEnabled:0];
    [(PUAlbumListCellContentView *)self addSubview:v7];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUAlbumListCellContentView *)self setCheckmarkView:v7];
    [(PUAlbumListCellContentView *)self setNeedsLayout];
    [(PUAlbumListCellContentView *)self _updateSubviewOrdering];
  }

  else
  {
    [v4 removeFromSuperview];
  }
}

- (void)setShowsCheckmarkView:(BOOL)a3
{
  if (self->_showsCheckmarkView != a3)
  {
    self->_showsCheckmarkView = a3;
    [(PUAlbumListCellContentView *)self _updateCheckmarkView];
  }
}

- (void)setShowsDeleteButtonWhenEditing:(BOOL)a3
{
  if (self->_showsDeleteButtonWhenEditing != a3)
  {
    self->_showsDeleteButtonWhenEditing = a3;
    [(PUAlbumListCellContentView *)self _updateDeleteButtonAnimated:0];
  }
}

- (void)setEditCapabilities:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_editCapabilities != a3)
  {
    v5 = a4;
    self->_editCapabilities = a3;
    [(PUAlbumListCellContentView *)self _updateDeleteButtonAnimated:a4];
    [(PUAlbumListCellContentView *)self _updateStackViewAnimated:v5];
    [(PUAlbumListCellContentView *)self _updateTitleFieldAnimated:v5];

    [(PUAlbumListCellContentView *)self _updateSubtitleLabelAnimated:v5];
  }
}

- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_enabled != a3)
  {
    v5 = a4;
    self->_enabled = a3;
    [(PUAlbumListCellContentView *)self _updateStackViewAnimated:a4];
    [(PUAlbumListCellContentView *)self _updateTitleFieldAnimated:v5];

    [(PUAlbumListCellContentView *)self _updateSubtitleLabelAnimated:v5];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    v14 = v7;
    v15 = v6;
    v16 = v4;
    v17 = v5;
    self->_editing = a3;
    if (a4)
    {
      v10 = 0.3;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    [v11 beginIgnoringInteractionEvents];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__PUAlbumListCellContentView_setEditing_animated___block_invoke;
    v12[3] = &unk_1E7B7FF98;
    v12[4] = self;
    v13 = a4;
    [MEMORY[0x1E69DD250] pu_animateWithEnforcedDuration:v12 animations:&__block_literal_global_6584 completion:v10];
  }
}

uint64_t __50__PUAlbumListCellContentView_setEditing_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateStackViewAnimated:*(a1 + 40)];
  [*(a1 + 32) _updateDeleteButtonAnimated:*(a1 + 40)];
  [*(a1 + 32) _updateTitleFieldAnimated:*(a1 + 40)];
  [*(a1 + 32) _updateSubtitleLabelAnimated:*(a1 + 40)];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __50__PUAlbumListCellContentView_setEditing_animated___block_invoke_2()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  [v0 endIgnoringInteractionEvents];
}

- (void)setLayout:(int64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    [(PUAlbumListCellContentView *)self _updateTitleFieldAnimated:0];
    [(PUAlbumListCellContentView *)self _updateSubtitleLabelAnimated:0];

    [(PUAlbumListCellContentView *)self setNeedsLayout];
  }
}

- (void)setXInset:(double)a3
{
  if (self->_xInset != a3)
  {
    self->_xInset = a3;
    [(PUAlbumListCellContentView *)self setNeedsLayout];
  }
}

- (void)setSubtitleFont:(id)a3
{
  v5 = a3;
  if (self->_subtitleFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_subtitleFont, a3);
    [(PUAlbumListCellContentView *)self _updateSubtitleLabelStyle];
    v5 = v6;
  }
}

- (void)setTitleFont:(id)a3
{
  v5 = a3;
  if (self->_titleFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_titleFont, a3);
    [(PUAlbumListCellContentView *)self _updateTitleStyle];
    v5 = v6;
  }
}

- (void)setSubtitle:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (self->_subtitle != v6)
  {
    v10 = v6;
    v6 = [v6 isEqualToString:?];
    v7 = v10;
    if ((v6 & 1) == 0)
    {
      v8 = [v10 copy];
      subtitle = self->_subtitle;
      self->_subtitle = v8;

      v6 = [(PUAlbumListCellContentView *)self _updateSubtitleLabelAnimated:v4];
      v7 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title != v4)
  {
    v8 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      title = self->_title;
      self->_title = v6;

      v4 = [(PUAlbumListCellContentView *)self _updateTitleFieldAnimated:0];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setShouldCenterTextHorizontally:(BOOL)a3
{
  if (self->_shouldCenterTextHorizontally != a3)
  {
    self->_shouldCenterTextHorizontally = a3;
    [(PUAlbumListCellContentView *)self _updateTitleStyle];
  }
}

- (void)setCustomImageView:(id)a3
{
  v5 = a3;
  customImageView = self->_customImageView;
  if (customImageView != v5)
  {
    v7 = v5;
    [(UIView *)customImageView removeFromSuperview];
    objc_storeStrong(&self->_customImageView, a3);
    if (self->_customImageView)
    {
      [(PUAlbumListCellContentView *)self addSubview:?];
      [(PUAlbumListCellContentView *)self _updateSubviewOrdering];
    }

    [(PUAlbumListCellContentView *)self _updateStackViewAnimated:0];
    customImageView = [(PUAlbumListCellContentView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](customImageView, v5);
}

- (UIView)springLoadingTargetView
{
  v3 = [(PUAlbumListCellContentView *)self customImageView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(PUAlbumListCellContentView *)self stackView];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = self;
    }

    v5 = v8;
  }

  return v5;
}

- (void)prepareForReuse
{
  v2 = [(PUAlbumListCellContentView *)self stackView];
  [v2 prepareForReuse];
}

- (void)setShowsTitle:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(PUAlbumListCellContentView *)self _showsTitleAndSubtitle]!= a3)
  {
    [(PUAlbumListCellContentView *)self _setShowsTitleAndSubtitle:v5];
    [(PUAlbumListCellContentView *)self _updateTitleFieldAnimated:v4];

    [(PUAlbumListCellContentView *)self _updateSubtitleLabelAnimated:v4];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [v6 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v7) && !self->_layout)
  {
    v13 = [(PUAlbumListCellContentView *)self _subtitleLabel];
    [v13 sizeThatFits:{width, height}];
    v15 = v14;

    v16 = [(PUAlbumListCellContentView *)self _titleTextField];
    v17 = [(PUAlbumListCellContentView *)self _titleLabel];
    v18 = v16;
    if (v16 || (v18 = v17) != 0)
    {
      [v18 sizeThatFits:{width, height}];
      v15 = v15 + v19;
    }

    v20 = [(PUAlbumListCellContentView *)self stackView];
    [v20 frame];
    v22 = v21;

    if (v15 >= v22)
    {
      v23 = v15;
    }

    else
    {
      v23 = v22;
    }

    v10 = v23 + 20.0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = PUAlbumListCellContentView;
    [(PUAlbumListCellContentView *)&v24 sizeThatFits:width, height];
    width = v8;
    v10 = v9;
  }

  v11 = width;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (PXFocusInfo)focusInfo
{
  v2 = [(PUAlbumListCellContentView *)self stackView];
  v3 = MEMORY[0x1E69C3598];
  [v2 cornerRadius];
  v4 = [v3 focusInfoWithView:v2 cornerRadius:*MEMORY[0x1E69796E0] cornerCurve:?];

  return v4;
}

- (void)layoutSubviews
{
  *&v143.origin.y = self;
  *&v143.size.width = PUAlbumListCellContentView;
  [(CGFloat *)&v143.origin.y layoutSubviews];
  [(PUAlbumListCellContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v126 = v7;
  v9 = v8;
  v10 = [(PUAlbumListCellContentView *)self _subtitleLabel];
  v11 = [(PUAlbumListCellContentView *)self _titleTextField];
  v12 = [(PUAlbumListCellContentView *)self _titleLabel];
  v13 = [(PUAlbumListCellContentView *)self _deleteButton];
  v14 = [(PUAlbumListCellContentView *)self stackView];
  v15 = [(PUAlbumListCellContentView *)self customImageView];
  v134 = v15;
  if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = *(MEMORY[0x1E69DE258] + 8);
    v119 = *MEMORY[0x1E69DE258];
    [v16 collageSize];
    v19 = v18;
    v138 = v20;
  }

  else
  {
    [v14 stackSize];
    v19 = v21;
    v138 = v22;
    [v14 stackOffset];
    v119 = v23;
    v17 = v24;
  }

  v130 = v19;
  v122 = v4;
  v123 = v6;
  if (v10)
  {
    v120 = [v10 isHidden] ^ 1;
  }

  else
  {
    v120 = 0;
  }

  v25 = MEMORY[0x1E695F058];
  v26 = *MEMORY[0x1E695F058];
  if (v11)
  {
    v27 = v11;
  }

  else
  {
    v27 = v12;
  }

  v28 = *MEMORY[0x1E695F060];
  v29 = *(MEMORY[0x1E695F060] + 8);
  [v27 sizeThatFits:{*MEMORY[0x1E695F060], v29}];
  v129 = v30;
  [v10 sizeThatFits:{v28, v29}];
  v32 = v31;
  v33 = +[PUInterfaceManager currentTheme];
  v34 = [v33 albumListTitleLabelFont];
  v133 = v33;
  v35 = [v33 albumListSubtitleLabelFont];
  [v34 ascender];
  v37 = v36;
  [v34 descender];
  v39 = v38;
  [v35 ascender];
  v41 = v40;
  v142 = v35;
  [v35 descender];
  v43 = v42;
  v124 = [(PUAlbumListCellContentView *)self shouldCenterTextHorizontally];
  v125 = [(PUAlbumListCellContentView *)self _shouldReverseLayoutDirection];
  v44 = [MEMORY[0x1E69DC668] sharedApplication];
  v45 = [v44 preferredContentSizeCategory];

  v132 = v45;
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v45);
  v47 = v12;
  layout = self->_layout;
  v137 = v17;
  v143.origin.x = v26;
  if ((layout - 1) < 2)
  {
    v121 = v32;
    v127 = 0.0;
    v49 = 0.0;
    v50 = v47;
    v51 = v13;
    v52 = v14;
    v53 = v134;
    if (v11 | v47)
    {
      PXVisionScaledFloat();
      [v34 _scaledValueForValue:1 useLanguageAwareScaling:?];
      v55 = v54 - v37;
      if (PUMainScreenScale_onceToken != -1)
      {
        dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
      }

      v49 = round(*&PUMainScreenScale_screenScale * v55) / *&PUMainScreenScale_screenScale;
    }

    v56 = [(PUAlbumListCellContentView *)self _subtitleLabel];

    if (v56)
    {
      [v142 _scaledValueForValue:1 useLanguageAwareScaling:20.0];
      v58 = v43 + v39 + v57 - v41;
      if (PUMainScreenScale_onceToken != -1)
      {
        dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
      }

      v127 = round(*&PUMainScreenScale_screenScale * v58) / *&PUMainScreenScale_screenScale;
    }

    v144.origin.x = v122;
    v144.origin.y = v123;
    v144.size.width = v126;
    v144.size.height = v9;
    v59 = CGRectGetMidX(v144) + v130 * -0.5;
    if ([(PUAlbumListCellContentView *)self topInsetEnabled])
    {
      v60 = 10.0;
      if (layout == 2)
      {
        v60 = 8.0;
      }

      [v34 _scaledValueForValue:1 useLanguageAwareScaling:v60];
    }

    else
    {
      v146.origin.x = v122;
      v146.origin.y = v123;
      v146.size.width = v126;
      v146.size.height = v9;
      MinX = CGRectGetMinX(v146);
    }

    v147.origin.y = MinX;
    v147.origin.x = v59;
    rect = v147.origin.y;
    v147.size.width = v130;
    v147.size.height = v138;
    v77 = v49 + v137 + CGRectGetMaxY(v147);
    if (v124)
    {
      v78 = v130;
      v79 = v130;
      x = v143.origin.x;
    }

    else
    {
      [v10 sizeThatFits:{v130, v138}];
      if (v130 >= v85)
      {
        v78 = v85;
      }

      else
      {
        v78 = v130;
      }

      if (v125)
      {
        v148.origin.x = v59;
        v148.origin.y = rect;
        v148.size.width = v130;
        v148.size.height = v138;
        v79 = v130;
        x = CGRectGetMaxX(v148) - v78;
      }

      else
      {
        v79 = v130;
        x = v59;
      }
    }

    v83 = v130;
    v73 = v59;
    goto LABEL_59;
  }

  v50 = v47;
  v140 = v25[1];
  v135 = v25[2];
  if (layout)
  {
    v81 = v25[3];
    x = v26;
    v71 = 0.0;
    v131 = v81;
    v79 = v25[2];
    v82 = v25[1];
    v83 = 0.0;
    v84 = 0.0;
    v73 = 0.0;
    v51 = v13;
    v52 = v14;
    v53 = v134;
    goto LABEL_60;
  }

  v62 = IsAccessibilityCategory;
  v121 = v32;
  v127 = 0.0;
  if (v11 | v47)
  {
    v63 = 10.0;
  }

  else
  {
    v63 = 0.0;
  }

  if ((v11 | v47) != 0 && !IsAccessibilityCategory)
  {
    v64 = 48.0;
    if (v120)
    {
      v64 = 40.0;
    }

    [v34 _scaledValueForValue:1 useLanguageAwareScaling:v64];
    v66 = v65 - v37;
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    v63 = round(*&PUMainScreenScale_screenScale * v66) / *&PUMainScreenScale_screenScale;
  }

  v67 = [(PUAlbumListCellContentView *)self _subtitleLabel];

  if (v67)
  {
    [v142 _scaledValueForValue:1 useLanguageAwareScaling:20.0];
    v69 = v39 + v68 - v41;
    if (v62)
    {
      v70 = 0.0;
    }

    else
    {
      v70 = v69;
    }

    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    v127 = round(*&PUMainScreenScale_screenScale * v70) / *&PUMainScreenScale_screenScale;
  }

  v71 = fmax(v130, 70.0) + 16.0;
  [(PUAlbumListCellContentView *)self xInset];
  v73 = v72;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v51 = v13;
  v74 = round(*&PUMainScreenScale_screenScale * ((v9 - v71) * 0.5));
  v75 = v74 / *&PUMainScreenScale_screenScale;
  v52 = v14;
  rect = v74 / *&PUMainScreenScale_screenScale;
  if (v124 || (v125 & 1) == 0)
  {
    v145.origin.x = v73;
    v145.origin.y = v74 / *&PUMainScreenScale_screenScale;
    v145.size.width = v71;
    v145.size.height = v71;
    v76 = v126 - CGRectGetMaxX(v145);
  }

  else
  {
    v149.origin.x = v122;
    v149.origin.y = v123;
    v86 = v75;
    v149.size.width = v126;
    v149.size.height = v9;
    MaxX = CGRectGetMaxX(v149);
    v150.origin.x = v73;
    v150.origin.y = v86;
    v150.size.width = v71;
    v150.size.height = v71;
    v88 = MaxX - CGRectGetWidth(v150);
    v151.origin.x = v73;
    v151.origin.y = v86;
    v151.size.width = v71;
    v151.size.height = v71;
    v73 = v88 - CGRectGetMinX(v151);
    v152.origin.x = v73;
    v152.origin.y = v86;
    v152.size.width = v71;
    v152.size.height = v71;
    v76 = CGRectGetMinX(v152);
  }

  v53 = v134;
  v81 = v129;
  v79 = v76 + -8.0 + -4.0;
  v89 = v73;
  v90 = rect;
  v91 = v71;
  v92 = v71;
  if (v125)
  {
    v93 = CGRectGetMinX(*&v89) + -8.0;
    v153.origin.x = v143.origin.x;
    v153.origin.y = v140;
    v153.size.width = v79;
    v153.size.height = v129;
    x = v93 - CGRectGetWidth(v153);
  }

  else
  {
    x = CGRectGetMaxX(*&v89) + 8.0;
  }

  v82 = v119 + v63;
  if (v120)
  {
    v83 = v71;
    v59 = x;
    v78 = v79;
    v138 = v83;
    v77 = v82;
LABEL_59:
    v154.origin.x = v59;
    v154.origin.y = v77;
    v154.size.width = v79;
    v82 = v77;
    v81 = v129;
    v154.size.height = v129;
    MaxY = CGRectGetMaxY(v154);
    v131 = v121;
    v84 = rect;
    v140 = v127 + MaxY;
    v135 = v78;
    v143.origin.x = x;
    x = v59;
    v71 = v138;
    goto LABEL_60;
  }

  v83 = v71;
  v84 = rect;
  v131 = 0.0;
LABEL_60:
  v95 = PURoundRectToPixel(v73, v84, v83, v71);
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v102 = PUExtendRectToPixel(x, v82, v79, v81);
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v143.origin.x = PUExtendRectToPixel(v143.origin.x, v140, v135, v131);
  v139 = v110;
  v141 = v109;
  v136 = v111;
  [v52 setFrame:{v95, v97, v99, v101}];
  [v53 setFrame:{v95, v97, v99, v101}];
  [v11 setFrame:{v102, v104, v106, v108}];
  [v50 setFrame:{v102, v104, v106, v108}];
  [v10 setFrame:{v143.origin.x, v141, v139, v136}];
  [(PUAlbumListCellContentView *)self _deleteButtonCenter];
  [v51 setCenter:?];
  v112 = [(PUAlbumListCellContentView *)self checkmarkView];
  if (v112)
  {
    v155.origin.x = v95;
    v155.origin.y = v97;
    v155.size.width = v99;
    v155.size.height = v101;
    v113 = v137 + CGRectGetMaxY(v155) - v97;
    [v112 bounds];
    v115 = v114;
    v117 = v116;
    v156.origin.x = v95;
    v156.origin.y = v97;
    v156.size.width = v99;
    v156.size.height = v113;
    v118 = CGRectGetMaxX(v156) - v115 + -3.5;
    v157.origin.x = v95;
    v157.origin.y = v97;
    v157.size.width = v99;
    v157.size.height = v113;
    [v112 setFrame:{v118, CGRectGetMaxY(v157) - v117 + -3.5, v115, v117}];
  }
}

- (CGPoint)_deleteButtonCenter
{
  v3 = [(PUAlbumListCellContentView *)self stackView];
  [v3 topLeftCornerOfFrontStackItem];
  [(PUAlbumListCellContentView *)self convertPoint:v3 fromView:?];
  v5 = v4 + 2.0;
  v7 = v6 + 3.0;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (PUAlbumListCellContentView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PUAlbumListCellContentView;
  v3 = [(PUAlbumListCellContentView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_enabled = 1;
    v3->__showsTitleAndSubtitle = 1;
    v3->_usesLabelForTitle = 1;
    v5 = [PUStackView alloc];
    [(PUAlbumListCellContentView *)v4 bounds];
    v6 = [(PUStackView *)v5 initWithFrame:?];
    [(PUAlbumListCellContentView *)v4 addSubview:v6];
    [(PUAlbumListCellContentView *)v4 _setStackView:v6];
    [(PUAlbumListCellContentView *)v4 setOpaque:0];
  }

  return v4;
}

@end