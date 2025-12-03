@interface PXUIWidgetFooterView
- (PXUIWidgetFooterViewDelegate)delegate;
- (UIEdgeInsets)contentInsets;
- (id)_disclosureButtonCreateIfNeeded:(BOOL)needed;
- (id)_focusGuideCreateIfNeeded:(BOOL)needed;
- (id)_leadingSeparatorCreateIfNeeded:(BOOL)needed;
- (id)_trailingSeparatorCreateIfNeeded:(BOOL)needed;
- (void)_handleDisclosureButton:(id)button;
- (void)_setConstraints:(id)constraints;
- (void)_setHasContent:(BOOL)content;
- (void)_setNeedsUpdate;
- (void)_updateDisclosureIfNeeded;
- (void)_updateFocusGuideIfNeeded;
- (void)_updateHasContentIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateSeparatorsIfNeeded;
- (void)performChanges:(id)changes;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setDelegate:(id)delegate;
- (void)setDisclosureTitle:(id)title;
- (void)setFont:(id)font;
- (void)setLayoutStyle:(int64_t)style;
- (void)tintColorDidChange;
- (void)updateConstraints;
@end

@implementation PXUIWidgetFooterView

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXUIWidgetFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateFocusGuideIfNeeded
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.focusGuide)
  {
    self->_needsUpdateFlags.focusGuide = 0;
    if ([(PXUIWidgetFooterView *)self _hasContent])
    {
      layoutStyle = [(PXUIWidgetFooterView *)self layoutStyle];
      v4 = [(PXUIWidgetFooterView *)self _focusGuideCreateIfNeeded:layoutStyle == 1];
      if (layoutStyle == 1)
      {
        _disclosureButton = [(PXUIWidgetFooterView *)self _disclosureButton];
        if (_disclosureButton)
        {
          v6 = _disclosureButton;
          v8[0] = _disclosureButton;
          v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
          [v4 setPreferredFocusEnvironments:v7];

LABEL_8:
          return;
        }
      }
    }

    else
    {
      v4 = [(PXUIWidgetFooterView *)self _focusGuideCreateIfNeeded:0];
    }

    [v4 setPreferredFocusEnvironments:MEMORY[0x1E695E0F0]];
    goto LABEL_8;
  }
}

- (void)_updateSeparatorsIfNeeded
{
  if (self->_needsUpdateFlags.separators)
  {
    v15 = v2;
    v16 = v3;
    self->_needsUpdateFlags.separators = 0;
    v5 = 0;
    if ([(PXUIWidgetFooterView *)self _hasContent])
    {
      v5 = [(PXUIWidgetFooterView *)self layoutStyle]== 1;
    }

    v6 = [(PXUIWidgetFooterView *)self _leadingSeparatorCreateIfNeeded:v5];
    v7 = [(PXUIWidgetFooterView *)self _trailingSeparatorCreateIfNeeded:v5];
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.349999994 alpha:0.600000024];
    v9 = [(PXUIWidgetFooterView *)self _accessibilityHigherContrastTintColorForColor:v8];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__PXUIWidgetFooterView__updateSeparatorsIfNeeded__block_invoke;
    v12[3] = &unk_1E772F1F0;
    v14 = v5;
    v13 = v9;
    v10 = v9;
    v11 = _Block_copy(v12);
    v11[2](v11, v6);
    v11[2](v11, v7);
  }
}

void __49__PXUIWidgetFooterView__updateSeparatorsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 40) == 1)
  {
    [v3 setBackgroundColor:*(a1 + 32)];
    v3 = v5;
    v4 = *(a1 + 40) ^ 1;
  }

  else
  {
    v4 = 1;
  }

  [v3 setHidden:v4 & 1];
}

- (void)_updateDisclosureIfNeeded
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.disclosure)
  {
    self->_needsUpdateFlags.disclosure = 0;
    disclosureTitle = [(PXUIWidgetFooterView *)self disclosureTitle];
    v4 = [disclosureTitle length];
    v5 = [(PXUIWidgetFooterView *)self _disclosureButtonCreateIfNeeded:v4 != 0];
    if (v4)
    {
      if ([(PXUIWidgetFooterView *)self layoutStyle]== 1)
      {
        v6 = disclosureTitle;
        v7 = 0;
LABEL_14:
        [v5 px_setTitle:v6 orAttributedTitle:v7 forState:0];
        [v5 setHidden:v4 == 0];

        return;
      }

      font = [(PXUIWidgetFooterView *)self font];
      v9 = font;
      if (font)
      {
        v10 = font;
      }

      else
      {
        v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      }

      v11 = v10;

      if (disclosureTitle)
      {
        v12 = objc_alloc(MEMORY[0x1E696AAB0]);
        v14 = *MEMORY[0x1E69DB648];
        v15[0] = v11;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
        v7 = [v12 initWithString:disclosureTitle attributes:v13];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
    goto LABEL_14;
  }
}

- (void)_updateHasContentIfNeeded
{
  if (self->_needsUpdateFlags.hasContent)
  {
    self->_needsUpdateFlags.hasContent = 0;
    disclosureTitle = [(PXUIWidgetFooterView *)self disclosureTitle];
    v5 = [disclosureTitle length] != 0;

    [(PXUIWidgetFooterView *)self _setHasContent:v5];
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIWidgetFooterView.m" lineNumber:259 description:@"not inside -performChanges: or _updateIfNeeded"];
  }
}

- (void)_updateIfNeeded
{
  if ([(PXUIWidgetFooterView *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PXUIWidgetFooterView *)self _updateHasContentIfNeeded];
    [(PXUIWidgetFooterView *)self _updateDisclosureIfNeeded];
    [(PXUIWidgetFooterView *)self _updateSeparatorsIfNeeded];
    [(PXUIWidgetFooterView *)self _updateFocusGuideIfNeeded];
    self->_isPerformingUpdates = isPerformingUpdates;
    if ([(PXUIWidgetFooterView *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIWidgetFooterView.m" lineNumber:246 description:@"update still needed after update pass"];
    }
  }
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  v6 = changesCopy;
  if (changesCopy)
  {
    changesCopy[2](changesCopy);
    changesCopy = v6;
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    [(PXUIWidgetFooterView *)self _updateIfNeeded];
    changesCopy = v6;
  }
}

- (void)_handleDisclosureButton:(id)button
{
  if (self->_delegateRespondsTo.didSelectDisclosure)
  {
    buttonCopy = button;
    delegate = [(PXUIWidgetFooterView *)self delegate];
    [delegate widgetFooterView:self didSelectDisclosure:buttonCopy];
  }
}

- (void)_setConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v5 = constraintsCopy;
  if (self->__constraints != constraintsCopy)
  {
    v9 = constraintsCopy;
    v6 = [(NSArray *)constraintsCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      if (self->__constraints)
      {
        [MEMORY[0x1E696ACD8] deactivateConstraints:?];
        v5 = v9;
      }

      v7 = [(NSArray *)v5 copy];
      constraints = self->__constraints;
      self->__constraints = v7;

      v5 = v9;
      if (self->__constraints)
      {
        [MEMORY[0x1E696ACD8] activateConstraints:?];
        v5 = v9;
      }
    }
  }
}

- (void)_setHasContent:(BOOL)content
{
  if (self->__hasContent != content)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->__hasContent = content;
    [(PXUIWidgetFooterView *)self setNeedsUpdateConstraints];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__PXUIWidgetFooterView__setHasContent___block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXUIWidgetFooterView *)self performChanges:v6];
  }
}

uint64_t __39__PXUIWidgetFooterView__setHasContent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateSeparators];
  v2 = *(a1 + 32);

  return [v2 _invalidateFocusGuide];
}

- (id)_focusGuideCreateIfNeeded:(BOOL)needed
{
  focusGuide = self->__focusGuide;
  if (focusGuide)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCA20]);
    v7 = self->__focusGuide;
    self->__focusGuide = v6;

    [(PXUIWidgetFooterView *)self addLayoutGuide:self->__focusGuide];
    leftAnchor = [(UIFocusGuide *)self->__focusGuide leftAnchor];
    leftAnchor2 = [(PXUIWidgetFooterView *)self leftAnchor];
    v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v10 setActive:1];

    topAnchor = [(UIFocusGuide *)self->__focusGuide topAnchor];
    topAnchor2 = [(PXUIWidgetFooterView *)self topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v13 setActive:1];

    bottomAnchor = [(UIFocusGuide *)self->__focusGuide bottomAnchor];
    bottomAnchor2 = [(PXUIWidgetFooterView *)self bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v16 setActive:1];

    rightAnchor = [(UIFocusGuide *)self->__focusGuide rightAnchor];
    rightAnchor2 = [(PXUIWidgetFooterView *)self rightAnchor];
    v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v19 setActive:1];

    focusGuide = self->__focusGuide;
  }

  return focusGuide;
}

- (id)_trailingSeparatorCreateIfNeeded:(BOOL)needed
{
  trailingSeparator = self->__trailingSeparator;
  if (trailingSeparator)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v7 = self->__trailingSeparator;
    self->__trailingSeparator = v6;

    [(UIView *)self->__trailingSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXUIWidgetFooterView *)self addSubview:self->__trailingSeparator];
    trailingSeparator = self->__trailingSeparator;
  }

  return trailingSeparator;
}

- (id)_leadingSeparatorCreateIfNeeded:(BOOL)needed
{
  leadingSeparator = self->__leadingSeparator;
  if (leadingSeparator)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v7 = self->__leadingSeparator;
    self->__leadingSeparator = v6;

    [(UIView *)self->__leadingSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXUIWidgetFooterView *)self addSubview:self->__leadingSeparator];
    leadingSeparator = self->__leadingSeparator;
  }

  return leadingSeparator;
}

- (id)_disclosureButtonCreateIfNeeded:(BOOL)needed
{
  disclosureButton = self->__disclosureButton;
  if (disclosureButton)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v7 = self->__disclosureButton;
    self->__disclosureButton = v6;

    [(UIButton *)self->__disclosureButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->__disclosureButton addTarget:self action:sel__handleDisclosureButton_ forControlEvents:0x2000];
    [(PXUIWidgetFooterView *)self addSubview:self->__disclosureButton];
    disclosureButton = self->__disclosureButton;
  }

  return disclosureButton;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = PXUIWidgetFooterView;
  [(PXUIWidgetFooterView *)&v4 tintColorDidChange];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PXUIWidgetFooterView_tintColorDidChange__block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXUIWidgetFooterView *)self performChanges:v3];
}

- (void)updateConstraints
{
  v44[3] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__PXUIWidgetFooterView_updateConstraints__block_invoke;
  aBlock[3] = &unk_1E772F1C8;
  v4 = array;
  v42 = v4;
  v5 = _Block_copy(aBlock);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __41__PXUIWidgetFooterView_updateConstraints__block_invoke_2;
  v39[3] = &unk_1E772F1C8;
  v6 = v4;
  v40 = v6;
  v7 = _Block_copy(v39);
  if ([(PXUIWidgetFooterView *)self _hasContent])
  {
    _disclosureButton = [(PXUIWidgetFooterView *)self _disclosureButton];
    _leadingSeparator = [(PXUIWidgetFooterView *)self _leadingSeparator];
    _trailingSeparator = [(PXUIWidgetFooterView *)self _trailingSeparator];
    [(PXUIWidgetFooterView *)self contentInsets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v37 = _NSDictionaryOfVariableBindings(&cfstr_Leadingseparat.isa, _leadingSeparator, _disclosureButton, _trailingSeparator, 0);
    v43[0] = @"leadingMargin";
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    v44[0] = v18;
    v43[1] = @"trailingMargin";
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    v43[2] = @"padding";
    v44[1] = v19;
    v44[2] = &unk_1F1911AE8;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];

    v20 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"|-leadingMargin-[leadingSeparator(trailingSeparator)]-padding-[button(>=200)]-padding-[trailingSeparator(<=885@249)]-trailingMargin-|" options:1024 metrics:v36 views:v37];
    [v6 addObjectsFromArray:v20];

    topAnchor = [_disclosureButton topAnchor];
    topAnchor2 = [(PXUIWidgetFooterView *)self topAnchor];
    v7[2](v7, topAnchor, topAnchor2, v11);

    centerYAnchor = [_leadingSeparator centerYAnchor];
    centerYAnchor2 = [(PXUIWidgetFooterView *)self centerYAnchor];
    v5[2](v5, centerYAnchor, centerYAnchor2, 0.0);

    centerYAnchor3 = [_disclosureButton centerYAnchor];
    centerYAnchor4 = [(PXUIWidgetFooterView *)self centerYAnchor];
    v5[2](v5, centerYAnchor3, centerYAnchor4, 0.0);

    centerYAnchor5 = [_trailingSeparator centerYAnchor];
    centerYAnchor6 = [(PXUIWidgetFooterView *)self centerYAnchor];
    v5[2](v5, centerYAnchor5, centerYAnchor6, 0.0);

    heightAnchor = [_leadingSeparator heightAnchor];
    v30 = [heightAnchor constraintEqualToConstant:2.0];
    [v30 setActive:1];

    heightAnchor2 = [_trailingSeparator heightAnchor];
    v32 = [heightAnchor2 constraintEqualToConstant:2.0];
    [v32 setActive:1];

    bottomAnchor = [(PXUIWidgetFooterView *)self bottomAnchor];
    bottomAnchor2 = [_disclosureButton bottomAnchor];
    v7[2](v7, bottomAnchor, bottomAnchor2, v15);
  }

  [(PXUIWidgetFooterView *)self _setConstraints:v6];
  v38.receiver = self;
  v38.super_class = PXUIWidgetFooterView;
  [(PXUIWidgetFooterView *)&v38 updateConstraints];
}

void __41__PXUIWidgetFooterView_updateConstraints__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v3 = *(a1 + 32);
    v4 = [a2 constraintEqualToAnchor:? constant:?];
    [v3 addObject:v4];
  }
}

void __41__PXUIWidgetFooterView_updateConstraints__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v3 = *(a1 + 32);
    v4 = [a2 constraintGreaterThanOrEqualToAnchor:? constant:?];
    [v3 addObject:v4];
  }
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInsets.top), vceqq_f64(v4, *&self->_contentInsets.bottom)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(PXUIWidgetFooterView *)self setNeedsUpdateConstraints];
  }
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_layoutStyle = style;
    [(PXUIWidgetFooterView *)self setNeedsUpdateConstraints];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__PXUIWidgetFooterView_setLayoutStyle___block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXUIWidgetFooterView *)self performChanges:v6];
  }
}

uint64_t __39__PXUIWidgetFooterView_setLayoutStyle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateSeparators];
  v2 = *(a1 + 32);

  return [v2 _invalidateFocusGuide];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  v6 = fontCopy;
  if (self->_font != fontCopy && ([(UIFont *)fontCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_font, font);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __32__PXUIWidgetFooterView_setFont___block_invoke;
    v7[3] = &unk_1E774C648;
    v7[4] = self;
    [(PXUIWidgetFooterView *)self performChanges:v7];
  }
}

- (void)setDisclosureTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_disclosureTitle != titleCopy && ([(NSString *)titleCopy isEqual:?]& 1) == 0)
  {
    v6 = [(NSString *)v5 copy];
    disclosureTitle = self->_disclosureTitle;
    self->_disclosureTitle = v6;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__PXUIWidgetFooterView_setDisclosureTitle___block_invoke;
    v8[3] = &unk_1E774C648;
    v8[4] = self;
    [(PXUIWidgetFooterView *)self performChanges:v8];
  }
}

uint64_t __43__PXUIWidgetFooterView_setDisclosureTitle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateHasContent];
  v2 = *(a1 + 32);

  return [v2 _invalidateDisclosure];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.didSelectDisclosure = objc_opt_respondsToSelector() & 1;
  }
}

@end