@interface PUAlbumListCellContentView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (CGPoint)_deleteButtonCenter;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PUAlbumListCellContentView)initWithFrame:(CGRect)frame;
- (PUAlbumListCellDelegate)delegate;
- (PXFocusInfo)focusInfo;
- (UIView)springLoadingTargetView;
- (double)_titleFieldAlpha;
- (void)_deleteAction:(id)action;
- (void)_updateCheckmarkView;
- (void)_updateDeleteButtonAnimated:(BOOL)animated;
- (void)_updateStackViewAnimated:(BOOL)animated;
- (void)_updateSubtitleLabelAnimated:(BOOL)animated;
- (void)_updateSubtitleLabelStyle;
- (void)_updateSubviewOrdering;
- (void)_updateTitleFieldAnimated:(BOOL)animated;
- (void)_updateTitleStyle;
- (void)cancelPerformRetitleAction;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCombinesPhotoDecorations:(BOOL)decorations;
- (void)setCustomImageView:(id)view;
- (void)setEditCapabilities:(unint64_t)capabilities animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLayout:(int64_t)layout;
- (void)setShouldCenterTextHorizontally:(BOOL)horizontally;
- (void)setShowsCheckmarkView:(BOOL)view;
- (void)setShowsDeleteButtonWhenEditing:(BOOL)editing;
- (void)setShowsTitle:(BOOL)title animated:(BOOL)animated;
- (void)setSubtitle:(id)subtitle animated:(BOOL)animated;
- (void)setSubtitleFont:(id)font;
- (void)setTitle:(id)title;
- (void)setTitleFont:(id)font;
- (void)setUsesLabelForTitle:(BOOL)title;
- (void)setXInset:(double)inset;
- (void)startPerformRetitleAction;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation PUAlbumListCellContentView

- (PUAlbumListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateSubtitleLabelStyle
{
  _subtitleLabel = [(PUAlbumListCellContentView *)self _subtitleLabel];
  layout = self->_layout;
  shouldCenterTextHorizontally = [(PUAlbumListCellContentView *)self shouldCenterTextHorizontally];
  if (_subtitleLabel)
  {
    if (shouldCenterTextHorizontally)
    {
      v5 = 1;
    }

    else
    {
      v5 = 4;
    }

    [_subtitleLabel setTextAlignment:v5];
    subtitleFont = [(PUAlbumListCellContentView *)self subtitleFont];
    [_subtitleLabel setFont:subtitleFont];

    v7 = +[PUInterfaceManager currentTheme];
    [v7 configureAlbumListSubtitleLabel:_subtitleLabel asOpaque:layout == 0];

    [_subtitleLabel setAdjustsFontSizeToFitWidth:0];
    [_subtitleLabel _setWantsContentAwareTypesettingLanguage:1];
    [_subtitleLabel setNeedsLayout];
  }
}

- (void)_updateTitleStyle
{
  selfCopy = self;
  _titleTextField = [(PUAlbumListCellContentView *)self _titleTextField];
  _titleLabel = [(PUAlbumListCellContentView *)selfCopy _titleLabel];
  layout = selfCopy->_layout;
  if ([(PUAlbumListCellContentView *)selfCopy shouldCenterTextHorizontally])
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  if (_titleTextField)
  {
    [_titleTextField setTextAlignment:v5];
    [_titleTextField setClearButtonMode:{-[PUAlbumListCellContentView _titleTextFieldClearButtonModeForLayout:](selfCopy, "_titleTextFieldClearButtonModeForLayout:", selfCopy->_layout)}];
    titleFont = [(PUAlbumListCellContentView *)selfCopy titleFont];
    [_titleTextField setFont:titleFont];

    v7 = +[PUInterfaceManager currentTheme];
    [v7 configureAlbumListTitleTextField:_titleTextField asOpaque:layout == 0];

    [_titleTextField setAdjustsFontSizeToFitWidth:0];
    [_titleTextField setContentVerticalAlignment:3];
  }

  else
  {
    if (!_titleLabel)
    {
      goto LABEL_9;
    }

    [(PUAlbumListCellContentView *)_titleLabel setTextAlignment:v5];
    titleFont2 = [(PUAlbumListCellContentView *)selfCopy titleFont];
    [(PUAlbumListCellContentView *)_titleLabel setFont:titleFont2];

    v9 = +[PUInterfaceManager currentTheme];
    [v9 configureAlbumListTitleLabel:_titleLabel asOpaque:layout == 0];

    [(PUAlbumListCellContentView *)_titleLabel setAdjustsFontSizeToFitWidth:0];
    [(PUAlbumListCellContentView *)_titleLabel _setWantsContentAwareTypesettingLanguage:1];
    selfCopy = _titleLabel;
  }

  [(PUAlbumListCellContentView *)selfCopy setNeedsLayout];
LABEL_9:
}

- (void)_deleteAction:(id)action
{
  actionCopy = action;
  delegate = [(PUAlbumListCellContentView *)self delegate];
  [delegate albumListCellContentView:self performDeleteAction:actionCopy];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [begin view];
  _titleLabel = [(PUAlbumListCellContentView *)self _titleLabel];

  if (view == _titleLabel)
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

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  [(PUAlbumListCellContentView *)self setUsesLabelForTitle:1];
  title = [(PUAlbumListCellContentView *)self title];
  text = [editingCopy text];
  if ([text length] && (objc_msgSend(text, "isEqualToString:", title) & 1) == 0)
  {
    [(PUAlbumListCellContentView *)self setTitle:text];
  }

  else
  {
    v6 = title;

    [editingCopy setText:v6];
    text = v6;
  }

  delegate = [(PUAlbumListCellContentView *)self delegate];
  [delegate albumListCellContentView:self didEndRetitlingFromTitle:title toTitle:text];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  if ((self->_layout - 1) <= 1)
  {
    [(PUAlbumListCellContentView *)self setNeedsLayout:field];
  }

  return 1;
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  delegate = [(PUAlbumListCellContentView *)self delegate];
  v5 = delegate;
  if (self->_enabled && (self->_editCapabilities & 2) != 0)
  {
    v6 = [delegate albumListCellContentViewShouldBeginRetitling:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUsesLabelForTitle:(BOOL)title
{
  if (self->_usesLabelForTitle != title)
  {
    self->_usesLabelForTitle = title;
    [(PUAlbumListCellContentView *)self _updateTitleFieldAnimated:0];

    [(PUAlbumListCellContentView *)self layoutIfNeeded];
  }
}

- (void)setCombinesPhotoDecorations:(BOOL)decorations
{
  if (self->_combinesPhotoDecorations != decorations)
  {
    decorationsCopy = decorations;
    self->_combinesPhotoDecorations = decorations;
    stackView = [(PUAlbumListCellContentView *)self stackView];
    [stackView setCombinesPhotoDecorations:decorationsCopy];
  }
}

- (void)cancelPerformRetitleAction
{
  _titleTextField = [(PUAlbumListCellContentView *)self _titleTextField];
  title = [(PUAlbumListCellContentView *)self title];
  [_titleTextField setText:title];

  _titleTextField2 = [(PUAlbumListCellContentView *)self _titleTextField];
  [_titleTextField2 resignFirstResponder];
}

- (void)startPerformRetitleAction
{
  [(PUAlbumListCellContentView *)self setUsesLabelForTitle:0];
  _titleTextField = [(PUAlbumListCellContentView *)self _titleTextField];
  [_titleTextField becomeFirstResponder];

  _titleTextField2 = [(PUAlbumListCellContentView *)self _titleTextField];
  [_titleTextField2 selectAll];
}

- (void)_updateSubtitleLabelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  subtitle = [(PUAlbumListCellContentView *)self subtitle];
  v6 = [subtitle length];
  _subtitleLabel = [(PUAlbumListCellContentView *)self _subtitleLabel];
  v8 = _subtitleLabel;
  if (!v6 || _subtitleLabel)
  {
    if (!v6)
    {
      [_subtitleLabel removeFromSuperview];
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

  [v8 setText:subtitle];
  [(PUAlbumListCellContentView *)self setNeedsLayout];
  [(PUAlbumListCellContentView *)self _titleFieldAlpha];
  v10 = v9;
  v11 = [subtitle isEqualToString:@" "];
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

  if (animatedCopy)
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

- (void)_updateTitleFieldAnimated:(BOOL)animated
{
  animatedCopy = animated;
  title = [(PUAlbumListCellContentView *)self title];
  v6 = [title length];
  _titleTextField = [(PUAlbumListCellContentView *)self _titleTextField];
  _titleLabel = [(PUAlbumListCellContentView *)self _titleLabel];
  usesLabelForTitle = [(PUAlbumListCellContentView *)self usesLabelForTitle];
  if (v6)
  {
    if (usesLabelForTitle)
    {
      [_titleTextField removeFromSuperview];
      if (!_titleLabel)
      {
        _titleLabel = objc_alloc_init(MEMORY[0x1E69DCC10]);
        [_titleLabel setUserInteractionEnabled:1];
        v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleLabelTap_];
        [v10 setDelegate:self];
        [_titleLabel addGestureRecognizer:v10];
        [(PUAlbumListCellContentView *)self _setTitleLabel:_titleLabel];
        [(PUAlbumListCellContentView *)self _updateTitleStyle];
        [(PUAlbumListCellContentView *)self _updateSubviewOrdering];
      }

      superview = [_titleLabel superview];

      if (superview != self)
      {
        [(PUAlbumListCellContentView *)self addSubview:_titleLabel];
      }

      goto LABEL_8;
    }

    [_titleLabel removeFromSuperview];
    if (!_titleTextField)
    {
      _titleTextField = objc_alloc_init(MEMORY[0x1E69DD0B0]);
      [_titleTextField setDelegate:self];
      [(PUAlbumListCellContentView *)self _setTitleTextField:_titleTextField];
      [(PUAlbumListCellContentView *)self _updateTitleStyle];
      [(PUAlbumListCellContentView *)self _updateSubviewOrdering];
    }

    superview2 = [_titleTextField superview];

    if (superview2 != self)
    {
      [(PUAlbumListCellContentView *)self addSubview:_titleTextField];
    }
  }

  else if (usesLabelForTitle)
  {
LABEL_8:
    v12 = _titleLabel;
    goto LABEL_14;
  }

  v12 = _titleTextField;
LABEL_14:
  [v12 setText:title];
  [(PUAlbumListCellContentView *)self setNeedsLayout];
  [(PUAlbumListCellContentView *)self _titleFieldAlpha];
  v15 = !animatedCopy;
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
  v21 = _titleTextField;
  v22 = _titleLabel;
  v18 = _titleLabel;
  v19 = _titleTextField;
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
  _showsTitleAndSubtitle = [(PUAlbumListCellContentView *)self _showsTitleAndSubtitle];
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
    if (_showsTitleAndSubtitle)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)_updateStackViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
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

  stackView = [(PUAlbumListCellContentView *)self stackView];
  customImageView = [(PUAlbumListCellContentView *)self customImageView];
  [stackView setHidden:customImageView != 0];
  layer = [stackView layer];
  [layer setAllowsGroupOpacity:v9 < 1.0];

  v8 = !animatedCopy;
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
  v19 = stackView;
  v20 = customImageView;
  v16 = customImageView;
  v17 = stackView;
  [v14 pu_animateWithDuration:v18 animations:0 completion:v15];
}

uint64_t __55__PUAlbumListCellContentView__updateStackViewAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setItemAlpha:*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 setAlpha:v3];
}

- (void)_updateDeleteButtonAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = !self->_editing || (self->_editCapabilities & 1) == 0;
  showsDeleteButtonWhenEditing = [(PUAlbumListCellContentView *)self showsDeleteButtonWhenEditing];
  if (animatedCopy)
  {
    v7 = 0.3;
  }

  else
  {
    v7 = 0.0;
  }

  _deleteButton = [(PUAlbumListCellContentView *)self _deleteButton];
  v9 = _deleteButton;
  if (v5 || !showsDeleteButtonWhenEditing)
  {
    if (!_deleteButton)
    {
      return;
    }

    v33 = MEMORY[0x1E69DD250];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __58__PUAlbumListCellContentView__updateDeleteButtonAnimated___block_invoke_3;
    v39[3] = &unk_1E7B80DD0;
    v31 = &v40;
    v40 = _deleteButton;
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
    if (!_deleteButton)
    {
      v10 = [MEMORY[0x1E69C3BE8] buttonWithType:0];
      [v10 addTarget:self action:sel__deleteAction_ forControlEvents:64];
      v11 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
      configurationPreferringMulticolor = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
      v13 = [v11 configurationByApplyingConfiguration:configurationPreferringMulticolor];

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
      px_configuration = [v9 px_configuration];
      [px_configuration setHitTestOutset:{v22, v24, v26, v28}];

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
  stackView = [(PUAlbumListCellContentView *)self stackView];
  [(PUAlbumListCellContentView *)self bringSubviewToFront:stackView];

  customImageView = [(PUAlbumListCellContentView *)self customImageView];
  [(PUAlbumListCellContentView *)self bringSubviewToFront:customImageView];

  _deleteButton = [(PUAlbumListCellContentView *)self _deleteButton];
  [(PUAlbumListCellContentView *)self bringSubviewToFront:_deleteButton];

  _subtitleLabel = [(PUAlbumListCellContentView *)self _subtitleLabel];
  [(PUAlbumListCellContentView *)self bringSubviewToFront:_subtitleLabel];

  _titleTextField = [(PUAlbumListCellContentView *)self _titleTextField];
  [(PUAlbumListCellContentView *)self bringSubviewToFront:_titleTextField];

  _titleLabel = [(PUAlbumListCellContentView *)self _titleLabel];
  [(PUAlbumListCellContentView *)self bringSubviewToFront:_titleLabel];

  checkmarkView = [(PUAlbumListCellContentView *)self checkmarkView];

  if (checkmarkView)
  {
    checkmarkView2 = [(PUAlbumListCellContentView *)self checkmarkView];
    [(PUAlbumListCellContentView *)self bringSubviewToFront:checkmarkView2];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(PUAlbumListCellContentView *)self isHighlighted]!= highlighted)
  {
    self->_highlighted = highlightedCopy;
    stackView = [(PUAlbumListCellContentView *)self stackView];
    [stackView setHighlighted:highlightedCopy];
  }
}

- (void)_updateCheckmarkView
{
  showsCheckmarkView = [(PUAlbumListCellContentView *)self showsCheckmarkView];
  checkmarkView = [(PUAlbumListCellContentView *)self checkmarkView];
  v7 = checkmarkView;
  if (showsCheckmarkView)
  {

    if (v7)
    {
      return;
    }

    v5 = MEMORY[0x1E69DD250];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v7 = [v5 px_circularGlyphViewWithName:@"checkmark.circle" backgroundColor:systemBlueColor];

    [v7 setUserInteractionEnabled:0];
    [(PUAlbumListCellContentView *)self addSubview:v7];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUAlbumListCellContentView *)self setCheckmarkView:v7];
    [(PUAlbumListCellContentView *)self setNeedsLayout];
    [(PUAlbumListCellContentView *)self _updateSubviewOrdering];
  }

  else
  {
    [checkmarkView removeFromSuperview];
  }
}

- (void)setShowsCheckmarkView:(BOOL)view
{
  if (self->_showsCheckmarkView != view)
  {
    self->_showsCheckmarkView = view;
    [(PUAlbumListCellContentView *)self _updateCheckmarkView];
  }
}

- (void)setShowsDeleteButtonWhenEditing:(BOOL)editing
{
  if (self->_showsDeleteButtonWhenEditing != editing)
  {
    self->_showsDeleteButtonWhenEditing = editing;
    [(PUAlbumListCellContentView *)self _updateDeleteButtonAnimated:0];
  }
}

- (void)setEditCapabilities:(unint64_t)capabilities animated:(BOOL)animated
{
  if (self->_editCapabilities != capabilities)
  {
    animatedCopy = animated;
    self->_editCapabilities = capabilities;
    [(PUAlbumListCellContentView *)self _updateDeleteButtonAnimated:animated];
    [(PUAlbumListCellContentView *)self _updateStackViewAnimated:animatedCopy];
    [(PUAlbumListCellContentView *)self _updateTitleFieldAnimated:animatedCopy];

    [(PUAlbumListCellContentView *)self _updateSubtitleLabelAnimated:animatedCopy];
  }
}

- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_enabled != enabled)
  {
    animatedCopy = animated;
    self->_enabled = enabled;
    [(PUAlbumListCellContentView *)self _updateStackViewAnimated:animated];
    [(PUAlbumListCellContentView *)self _updateTitleFieldAnimated:animatedCopy];

    [(PUAlbumListCellContentView *)self _updateSubtitleLabelAnimated:animatedCopy];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing != editing)
  {
    v14 = v7;
    v15 = v6;
    v16 = v4;
    v17 = v5;
    self->_editing = editing;
    if (animated)
    {
      v10 = 0.3;
    }

    else
    {
      v10 = 0.0;
    }

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] beginIgnoringInteractionEvents];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__PUAlbumListCellContentView_setEditing_animated___block_invoke;
    v12[3] = &unk_1E7B7FF98;
    v12[4] = self;
    animatedCopy = animated;
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

- (void)setLayout:(int64_t)layout
{
  if (self->_layout != layout)
  {
    self->_layout = layout;
    [(PUAlbumListCellContentView *)self _updateTitleFieldAnimated:0];
    [(PUAlbumListCellContentView *)self _updateSubtitleLabelAnimated:0];

    [(PUAlbumListCellContentView *)self setNeedsLayout];
  }
}

- (void)setXInset:(double)inset
{
  if (self->_xInset != inset)
  {
    self->_xInset = inset;
    [(PUAlbumListCellContentView *)self setNeedsLayout];
  }
}

- (void)setSubtitleFont:(id)font
{
  fontCopy = font;
  if (self->_subtitleFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_subtitleFont, font);
    [(PUAlbumListCellContentView *)self _updateSubtitleLabelStyle];
    fontCopy = v6;
  }
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  if (self->_titleFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_titleFont, font);
    [(PUAlbumListCellContentView *)self _updateTitleStyle];
    fontCopy = v6;
  }
}

- (void)setSubtitle:(id)subtitle animated:(BOOL)animated
{
  animatedCopy = animated;
  subtitleCopy = subtitle;
  v7 = subtitleCopy;
  if (self->_subtitle != subtitleCopy)
  {
    v10 = subtitleCopy;
    subtitleCopy = [subtitleCopy isEqualToString:?];
    v7 = v10;
    if ((subtitleCopy & 1) == 0)
    {
      v8 = [v10 copy];
      subtitle = self->_subtitle;
      self->_subtitle = v8;

      subtitleCopy = [(PUAlbumListCellContentView *)self _updateSubtitleLabelAnimated:animatedCopy];
      v7 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](subtitleCopy, v7);
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_title != titleCopy)
  {
    v8 = titleCopy;
    titleCopy = [titleCopy isEqualToString:?];
    v5 = v8;
    if ((titleCopy & 1) == 0)
    {
      v6 = [v8 copy];
      title = self->_title;
      self->_title = v6;

      titleCopy = [(PUAlbumListCellContentView *)self _updateTitleFieldAnimated:0];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](titleCopy, v5);
}

- (void)setShouldCenterTextHorizontally:(BOOL)horizontally
{
  if (self->_shouldCenterTextHorizontally != horizontally)
  {
    self->_shouldCenterTextHorizontally = horizontally;
    [(PUAlbumListCellContentView *)self _updateTitleStyle];
  }
}

- (void)setCustomImageView:(id)view
{
  viewCopy = view;
  customImageView = self->_customImageView;
  if (customImageView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)customImageView removeFromSuperview];
    objc_storeStrong(&self->_customImageView, view);
    if (self->_customImageView)
    {
      [(PUAlbumListCellContentView *)self addSubview:?];
      [(PUAlbumListCellContentView *)self _updateSubviewOrdering];
    }

    [(PUAlbumListCellContentView *)self _updateStackViewAnimated:0];
    customImageView = [(PUAlbumListCellContentView *)self setNeedsLayout];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](customImageView, viewCopy);
}

- (UIView)springLoadingTargetView
{
  customImageView = [(PUAlbumListCellContentView *)self customImageView];
  v4 = customImageView;
  if (customImageView)
  {
    v5 = customImageView;
  }

  else
  {
    stackView = [(PUAlbumListCellContentView *)self stackView];
    v7 = stackView;
    if (stackView)
    {
      selfCopy = stackView;
    }

    else
    {
      selfCopy = self;
    }

    v5 = selfCopy;
  }

  return v5;
}

- (void)prepareForReuse
{
  stackView = [(PUAlbumListCellContentView *)self stackView];
  [stackView prepareForReuse];
}

- (void)setShowsTitle:(BOOL)title animated:(BOOL)animated
{
  animatedCopy = animated;
  titleCopy = title;
  if ([(PUAlbumListCellContentView *)self _showsTitleAndSubtitle]!= title)
  {
    [(PUAlbumListCellContentView *)self _setShowsTitleAndSubtitle:titleCopy];
    [(PUAlbumListCellContentView *)self _updateTitleFieldAnimated:animatedCopy];

    [(PUAlbumListCellContentView *)self _updateSubtitleLabelAnimated:animatedCopy];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory) && !self->_layout)
  {
    _subtitleLabel = [(PUAlbumListCellContentView *)self _subtitleLabel];
    [_subtitleLabel sizeThatFits:{width, height}];
    v15 = v14;

    _titleTextField = [(PUAlbumListCellContentView *)self _titleTextField];
    _titleLabel = [(PUAlbumListCellContentView *)self _titleLabel];
    v18 = _titleTextField;
    if (_titleTextField || (v18 = _titleLabel) != 0)
    {
      [v18 sizeThatFits:{width, height}];
      v15 = v15 + v19;
    }

    stackView = [(PUAlbumListCellContentView *)self stackView];
    [stackView frame];
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
  stackView = [(PUAlbumListCellContentView *)self stackView];
  v3 = MEMORY[0x1E69C3598];
  [stackView cornerRadius];
  v4 = [v3 focusInfoWithView:stackView cornerRadius:*MEMORY[0x1E69796E0] cornerCurve:?];

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
  _subtitleLabel = [(PUAlbumListCellContentView *)self _subtitleLabel];
  _titleTextField = [(PUAlbumListCellContentView *)self _titleTextField];
  _titleLabel = [(PUAlbumListCellContentView *)self _titleLabel];
  _deleteButton = [(PUAlbumListCellContentView *)self _deleteButton];
  stackView = [(PUAlbumListCellContentView *)self stackView];
  customImageView = [(PUAlbumListCellContentView *)self customImageView];
  v134 = customImageView;
  if (customImageView && (v16 = customImageView, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = *(MEMORY[0x1E69DE258] + 8);
    v119 = *MEMORY[0x1E69DE258];
    [v16 collageSize];
    v19 = v18;
    v138 = v20;
  }

  else
  {
    [stackView stackSize];
    v19 = v21;
    v138 = v22;
    [stackView stackOffset];
    v119 = v23;
    v17 = v24;
  }

  v130 = v19;
  v122 = v4;
  v123 = v6;
  if (_subtitleLabel)
  {
    v120 = [_subtitleLabel isHidden] ^ 1;
  }

  else
  {
    v120 = 0;
  }

  v25 = MEMORY[0x1E695F058];
  v26 = *MEMORY[0x1E695F058];
  if (_titleTextField)
  {
    v27 = _titleTextField;
  }

  else
  {
    v27 = _titleLabel;
  }

  v28 = *MEMORY[0x1E695F060];
  v29 = *(MEMORY[0x1E695F060] + 8);
  [v27 sizeThatFits:{*MEMORY[0x1E695F060], v29}];
  v129 = v30;
  [_subtitleLabel sizeThatFits:{v28, v29}];
  v32 = v31;
  v33 = +[PUInterfaceManager currentTheme];
  albumListTitleLabelFont = [v33 albumListTitleLabelFont];
  v133 = v33;
  albumListSubtitleLabelFont = [v33 albumListSubtitleLabelFont];
  [albumListTitleLabelFont ascender];
  v37 = v36;
  [albumListTitleLabelFont descender];
  v39 = v38;
  [albumListSubtitleLabelFont ascender];
  v41 = v40;
  v142 = albumListSubtitleLabelFont;
  [albumListSubtitleLabelFont descender];
  v43 = v42;
  shouldCenterTextHorizontally = [(PUAlbumListCellContentView *)self shouldCenterTextHorizontally];
  _shouldReverseLayoutDirection = [(PUAlbumListCellContentView *)self _shouldReverseLayoutDirection];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  v132 = preferredContentSizeCategory;
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  v47 = _titleLabel;
  layout = self->_layout;
  v137 = v17;
  v143.origin.x = v26;
  if ((layout - 1) < 2)
  {
    v121 = v32;
    v127 = 0.0;
    v49 = 0.0;
    v50 = v47;
    v51 = _deleteButton;
    v52 = stackView;
    v53 = v134;
    if (_titleTextField | v47)
    {
      PXVisionScaledFloat();
      [albumListTitleLabelFont _scaledValueForValue:1 useLanguageAwareScaling:?];
      v55 = v54 - v37;
      if (PUMainScreenScale_onceToken != -1)
      {
        dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
      }

      v49 = round(*&PUMainScreenScale_screenScale * v55) / *&PUMainScreenScale_screenScale;
    }

    _subtitleLabel2 = [(PUAlbumListCellContentView *)self _subtitleLabel];

    if (_subtitleLabel2)
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

      [albumListTitleLabelFont _scaledValueForValue:1 useLanguageAwareScaling:v60];
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
    if (shouldCenterTextHorizontally)
    {
      v78 = v130;
      v79 = v130;
      x = v143.origin.x;
    }

    else
    {
      [_subtitleLabel sizeThatFits:{v130, v138}];
      if (v130 >= v85)
      {
        v78 = v85;
      }

      else
      {
        v78 = v130;
      }

      if (_shouldReverseLayoutDirection)
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
    v51 = _deleteButton;
    v52 = stackView;
    v53 = v134;
    goto LABEL_60;
  }

  v62 = IsAccessibilityCategory;
  v121 = v32;
  v127 = 0.0;
  if (_titleTextField | v47)
  {
    v63 = 10.0;
  }

  else
  {
    v63 = 0.0;
  }

  if ((_titleTextField | v47) != 0 && !IsAccessibilityCategory)
  {
    v64 = 48.0;
    if (v120)
    {
      v64 = 40.0;
    }

    [albumListTitleLabelFont _scaledValueForValue:1 useLanguageAwareScaling:v64];
    v66 = v65 - v37;
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    v63 = round(*&PUMainScreenScale_screenScale * v66) / *&PUMainScreenScale_screenScale;
  }

  _subtitleLabel3 = [(PUAlbumListCellContentView *)self _subtitleLabel];

  if (_subtitleLabel3)
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

  v51 = _deleteButton;
  v74 = round(*&PUMainScreenScale_screenScale * ((v9 - v71) * 0.5));
  v75 = v74 / *&PUMainScreenScale_screenScale;
  v52 = stackView;
  rect = v74 / *&PUMainScreenScale_screenScale;
  if (shouldCenterTextHorizontally || (_shouldReverseLayoutDirection & 1) == 0)
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
  if (_shouldReverseLayoutDirection)
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
  [_titleTextField setFrame:{v102, v104, v106, v108}];
  [v50 setFrame:{v102, v104, v106, v108}];
  [_subtitleLabel setFrame:{v143.origin.x, v141, v139, v136}];
  [(PUAlbumListCellContentView *)self _deleteButtonCenter];
  [v51 setCenter:?];
  checkmarkView = [(PUAlbumListCellContentView *)self checkmarkView];
  if (checkmarkView)
  {
    v155.origin.x = v95;
    v155.origin.y = v97;
    v155.size.width = v99;
    v155.size.height = v101;
    v113 = v137 + CGRectGetMaxY(v155) - v97;
    [checkmarkView bounds];
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
    [checkmarkView setFrame:{v118, CGRectGetMaxY(v157) - v117 + -3.5, v115, v117}];
  }
}

- (CGPoint)_deleteButtonCenter
{
  stackView = [(PUAlbumListCellContentView *)self stackView];
  [stackView topLeftCornerOfFrontStackItem];
  [(PUAlbumListCellContentView *)self convertPoint:stackView fromView:?];
  v5 = v4 + 2.0;
  v7 = v6 + 3.0;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (PUAlbumListCellContentView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PUAlbumListCellContentView;
  v3 = [(PUAlbumListCellContentView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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