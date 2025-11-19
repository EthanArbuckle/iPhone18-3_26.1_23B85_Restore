@interface _UIKeyboardShortcutView
- (_UIKeyboardShortcutView)initWithCoder:(id)a3;
- (_UIKeyboardShortcutView)initWithFrame:(CGRect)a3;
- (_UIMenuLeafKeyboardShortcut)shortcut;
- (double)inputLabelWidth;
- (double)modifiersLabelWidth;
- (id)_defaultInputCharacterFont;
- (id)_defaultStandardFont;
- (void)_commonInit;
- (void)_configureWithHUDMetrics:(id)a3;
- (void)_getHardwareKeyboardIsArabic:(BOOL *)a3 globeKeyLabelHasGlobeSymbol:(BOOL *)a4;
- (void)_setupInputHorizontalAlignmentConstraint;
- (void)_updateInputLabelSpacing:(id)a3;
- (void)_updateInputLabelStyle:(id)a3;
- (void)_updateInputLabelText;
- (void)_updateModifiersLabelText;
- (void)dealloc;
- (void)setFont:(id)a3;
- (void)setInputCharacterFont:(id)a3;
- (void)setInputStyledAsSingleCharacterOrSymbol:(BOOL)a3;
- (void)setModifiersWidth:(double)a3 inputWidth:(double)a4;
- (void)setShortcut:(id)a3;
- (void)setShouldAlignShortcutModifiersAndInputInColumn:(BOOL)a3;
- (void)setShouldDisplayEscShortcutAlternative:(BOOL)a3;
- (void)setShouldDisplayGlobeModifierAsGlobeSymbol:(BOOL)a3;
- (void)setShouldMirrorShortcutInputs:(BOOL)a3;
- (void)setStandardFont:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setWantsCompressedWidth:(BOOL)a3;
@end

@implementation _UIKeyboardShortcutView

- (_UIKeyboardShortcutView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIKeyboardShortcutView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIKeyboardShortcutView *)v3 _commonInit];
  }

  return v4;
}

- (_UIKeyboardShortcutView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIKeyboardShortcutView;
  v3 = [(UIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIKeyboardShortcutView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v60[4] = *MEMORY[0x1E69E9840];
  [(_UIKeyboardShortcutView *)self setInputStyledAsSingleCharacterOrSymbol:1];
  [(_UIKeyboardShortcutView *)self setWantsCompressedWidth:0];
  v3 = [(_UIKeyboardShortcutView *)self _defaultStandardFont];
  standardFont = self->_standardFont;
  self->_standardFont = v3;

  v5 = [(_UIKeyboardShortcutView *)self _defaultInputCharacterFont];
  inputCharacterFont = self->_inputCharacterFont;
  self->_inputCharacterFont = v5;

  self->_shouldDisplayEscShortcutAlternative = 1;
  v7 = [(UIView *)self traitCollection];
  v8 = [v7 layoutDirection];

  v57 = 0;
  [(_UIKeyboardShortcutView *)self _getHardwareKeyboardIsArabic:&v57 + 1 globeKeyLabelHasGlobeSymbol:&v57];
  self->_shouldDisplayGlobeModifierAsGlobeSymbol = v57;
  v9 = HIBYTE(v57);
  if (v8 != 1)
  {
    v9 = 0;
  }

  self->_shouldMirrorShortcutInputs = v9;
  self->_shouldAlignShortcutModifiersAndInputInColumn = v8 == 1;
  v10 = objc_opt_new();
  modifiersLabel = self->_modifiersLabel;
  self->_modifiersLabel = v10;

  [(UILabel *)self->_modifiersLabel setFont:self->_standardFont];
  [(UILabel *)self->_modifiersLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_modifiersLabel setTextAlignment:2];
  v12 = [(_UIKeyboardShortcutView *)self _defaultTextColor];
  [(UILabel *)self->_modifiersLabel setTextColor:v12];

  [(UIView *)self->_modifiersLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1148846080;
  [(UIView *)self->_modifiersLabel setContentCompressionResistancePriority:0 forAxis:v13];
  v14 = objc_opt_new();
  inputLabel = self->_inputLabel;
  self->_inputLabel = v14;

  [(UILabel *)self->_inputLabel setFont:self->_inputCharacterFont];
  [(UILabel *)self->_inputLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_inputLabel setTextAlignment:[(_UIKeyboardShortcutView *)self shouldAlignShortcutModifiersAndInputInColumn]^ 1];
  v16 = [(_UIKeyboardShortcutView *)self _defaultTextColor];
  [(UILabel *)self->_inputLabel setTextColor:v16];

  [(UIView *)self->_inputLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = objc_opt_new();
  inputLabelContainer = self->_inputLabelContainer;
  self->_inputLabelContainer = v17;

  [(UIView *)self->_inputLabelContainer addSubview:self->_inputLabel];
  [(UIView *)self->_inputLabelContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [(UIView *)self->_inputLabelContainer widthAnchor];
  v20 = [(UIView *)self->_inputLabel widthAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  LODWORD(v22) = 1144750080;
  v56 = v21;
  [v21 setPriority:v22];
  [(_UIKeyboardShortcutView *)self _setupInputHorizontalAlignmentConstraint];
  v23 = [(UIView *)self->_inputLabelContainer widthAnchor];
  v24 = [v23 constraintGreaterThanOrEqualToConstant:0.0];
  reservedInputWidthConstraint = self->_reservedInputWidthConstraint;
  self->_reservedInputWidthConstraint = v24;

  v26 = [(UIView *)self->_inputLabelContainer widthAnchor];
  v27 = [(UIView *)self->_inputLabel widthAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:0.0];
  reservedInputWidthSpacingConstraint = self->_reservedInputWidthSpacingConstraint;
  self->_reservedInputWidthSpacingConstraint = v28;

  v30 = MEMORY[0x1E69977A0];
  v31 = [(UIView *)self->_inputLabelContainer centerYAnchor];
  v32 = [(UIView *)self->_inputLabel centerYAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  v60[0] = v33;
  v60[1] = v21;
  v34 = self->_reservedInputWidthConstraint;
  v60[2] = self->_reservedInputWidthSpacingConstraint;
  v60[3] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];
  [v30 activateConstraints:v35];

  v36 = [MEMORY[0x1E696AD88] defaultCenter];
  [v36 addObserver:self selector:sel__updateInputLabelSpacing_ name:@"UIContentSizeCategoryDidChangeNotification" object:0];

  v37 = [UIStackView alloc];
  v38 = self->_inputLabelContainer;
  v59[0] = self->_modifiersLabel;
  v59[1] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
  v40 = [(UIStackView *)v37 initWithArrangedSubviews:v39];
  labelStackView = self->_labelStackView;
  self->_labelStackView = v40;

  [(UIView *)self->_labelStackView setSemanticContentAttribute:3];
  [(UIStackView *)self->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self addSubview:self->_labelStackView];
  v51 = MEMORY[0x1E69977A0];
  v55 = [(UIView *)self->_labelStackView topAnchor];
  v54 = [(UIView *)self topAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v58[0] = v53;
  v52 = [(UIView *)self->_labelStackView leadingAnchor];
  v42 = [(UIView *)self leadingAnchor];
  v43 = [v52 constraintEqualToAnchor:v42];
  v58[1] = v43;
  v44 = [(UIView *)self->_labelStackView trailingAnchor];
  v45 = [(UIView *)self trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  v58[2] = v46;
  v47 = [(UIView *)self->_labelStackView bottomAnchor];
  v48 = [(UIView *)self bottomAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  v58[3] = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
  [v51 activateConstraints:v50];

  [(_UIKeyboardShortcutView *)self _updateInputLabelSpacing:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIContentSizeCategoryDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIKeyboardShortcutView;
  [(UIView *)&v4 dealloc];
}

- (void)setShortcut:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_shortcut);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_shortcut, obj);
    [(_UIKeyboardShortcutView *)self _updateModifiersLabelText];
    [(_UIKeyboardShortcutView *)self _updateInputLabelText];
    [(_UIKeyboardShortcutView *)self _updateInputLabelSpacing:0];
    v5 = obj;
  }
}

- (void)setTextColor:(id)a3
{
  modifiersLabel = self->_modifiersLabel;
  v5 = a3;
  [(UILabel *)modifiersLabel setTextColor:v5];
  [(UILabel *)self->_inputLabel setTextColor:v5];
}

- (void)setStandardFont:(id)a3
{
  v5 = a3;
  if (self->_standardFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_standardFont, a3);
    [(UILabel *)self->_modifiersLabel setFont:v6];
    [(_UIKeyboardShortcutView *)self _updateInputLabelStyle:0];
    [(_UIKeyboardShortcutView *)self _updateInputLabelText];
    v5 = v6;
  }
}

- (void)setInputCharacterFont:(id)a3
{
  v5 = a3;
  if (self->_inputCharacterFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_inputCharacterFont, a3);
    [(_UIKeyboardShortcutView *)self _updateInputLabelStyle:0];
    v5 = v6;
  }
}

- (void)setFont:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_standardFont != v5)
  {
    objc_storeStrong(&self->_standardFont, a3);
    [(UILabel *)self->_modifiersLabel setFont:v5];
    v6 = [(UIFont *)v5 fontDescriptor];
    v11 = *off_1E70ECC98;
    v12[0] = &unk_1EFE2B290;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 fontDescriptorByAddingAttributes:v7];

    v9 = [off_1E70ECC18 fontWithDescriptor:v8 size:0.0];
    inputCharacterFont = self->_inputCharacterFont;
    self->_inputCharacterFont = v9;

    [(_UIKeyboardShortcutView *)self _updateInputLabelStyle:0];
    [(_UIKeyboardShortcutView *)self _updateInputLabelText];
  }
}

- (void)setWantsCompressedWidth:(BOOL)a3
{
  if (self->_wantsCompressedWidth != a3)
  {
    self->_wantsCompressedWidth = a3;
    [(_UIKeyboardShortcutView *)self _updateInputLabelSpacing:0];
  }
}

- (void)setShouldDisplayGlobeModifierAsGlobeSymbol:(BOOL)a3
{
  if (self->_shouldDisplayGlobeModifierAsGlobeSymbol != a3)
  {
    self->_shouldDisplayGlobeModifierAsGlobeSymbol = a3;
    [(_UIKeyboardShortcutView *)self _updateModifiersLabelText];
  }
}

- (void)setShouldDisplayEscShortcutAlternative:(BOOL)a3
{
  if (self->_shouldDisplayEscShortcutAlternative != a3)
  {
    self->_shouldDisplayEscShortcutAlternative = a3;
    [(_UIKeyboardShortcutView *)self _updateInputLabelText];
  }
}

- (void)setShouldMirrorShortcutInputs:(BOOL)a3
{
  if (self->_shouldMirrorShortcutInputs != a3)
  {
    self->_shouldMirrorShortcutInputs = a3;
    [(_UIKeyboardShortcutView *)self _updateInputLabelText];
  }
}

- (void)setShouldAlignShortcutModifiersAndInputInColumn:(BOOL)a3
{
  if (self->_shouldAlignShortcutModifiersAndInputInColumn != a3)
  {
    self->_shouldAlignShortcutModifiersAndInputInColumn = a3;
    [(UILabel *)self->_inputLabel setTextAlignment:!a3];
    [(_UIKeyboardShortcutView *)self _setupInputHorizontalAlignmentConstraint];

    [(_UIKeyboardShortcutView *)self _updateInputLabelSpacing:0];
  }
}

- (void)setInputStyledAsSingleCharacterOrSymbol:(BOOL)a3
{
  if (self->_inputStyledAsSingleCharacterOrSymbol != a3)
  {
    self->_inputStyledAsSingleCharacterOrSymbol = a3;
    [(_UIKeyboardShortcutView *)self _updateInputLabelStyle:0];
  }
}

- (double)modifiersLabelWidth
{
  [(UIView *)self->_modifiersLabel bounds];

  return CGRectGetWidth(*&v2);
}

- (double)inputLabelWidth
{
  [(UIView *)self->_inputLabelContainer bounds];

  return CGRectGetWidth(*&v2);
}

- (void)setModifiersWidth:(double)a3 inputWidth:(double)a4
{
  modifiersLabelWidthConstraint = self->_modifiersLabelWidthConstraint;
  if (!modifiersLabelWidthConstraint)
  {
    goto LABEL_6;
  }

  [(NSLayoutConstraint *)modifiersLabelWidthConstraint constant];
  if (v8 == a3)
  {
    inputLabelWidthConstraint = self->_inputLabelWidthConstraint;
    if (inputLabelWidthConstraint)
    {
      [(NSLayoutConstraint *)inputLabelWidthConstraint constant];
      if (v10 == a4)
      {
        return;
      }
    }
  }

  v11 = self->_modifiersLabelWidthConstraint;
  if (!v11)
  {
LABEL_6:
    v12 = [(UIView *)self->_modifiersLabel widthAnchor];
    v13 = [v12 constraintEqualToConstant:0.0];
    v14 = self->_modifiersLabelWidthConstraint;
    self->_modifiersLabelWidthConstraint = v13;

    [(NSLayoutConstraint *)self->_modifiersLabelWidthConstraint setActive:1];
    v11 = self->_modifiersLabelWidthConstraint;
  }

  [(NSLayoutConstraint *)v11 setConstant:a3];
  v15 = self->_inputLabelWidthConstraint;
  if (!v15)
  {
    v16 = [(UIView *)self->_inputLabel widthAnchor];
    v17 = [v16 constraintEqualToConstant:0.0];
    v18 = self->_inputLabelWidthConstraint;
    self->_inputLabelWidthConstraint = v17;

    [(NSLayoutConstraint *)self->_inputLabelWidthConstraint setActive:1];
    v15 = self->_inputLabelWidthConstraint;
  }

  [(NSLayoutConstraint *)v15 setConstant:a4];

  [(_UIKeyboardShortcutView *)self _updateInputLabelSpacing:0];
}

- (id)_defaultStandardFont
{
  if (qword_1ED49A4E0 != -1)
  {
    dispatch_once(&qword_1ED49A4E0, &__block_literal_global_8);
  }

  v3 = _MergedGlobals_5_0;

  return v3;
}

- (id)_defaultInputCharacterFont
{
  if (qword_1ED49A4F0 != -1)
  {
    dispatch_once(&qword_1ED49A4F0, &__block_literal_global_17);
  }

  v3 = qword_1ED49A4E8;

  return v3;
}

- (void)_getHardwareKeyboardIsArabic:(BOOL *)a3 globeKeyLabelHasGlobeSymbol:(BOOL *)a4
{
  v6 = [UIApp getKeyboardDevicePropertiesForSenderID:_lastUsedKeyboardSenderID shouldUpdate:0];
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    v8 = [v6 language];
    *a3 = [v8 isEqualToString:@"Arabic"];

    v9 = [v10 globeKeyLabelHasGlobeSymbol];
    v7 = v10;
  }

  else
  {
    *a3 = 0;
    v9 = 1;
  }

  *a4 = v9;
}

- (void)_setupInputHorizontalAlignmentConstraint
{
  [(NSLayoutConstraint *)self->_inputHorizontalAlignmentConstraint setActive:0];
  v3 = [(_UIKeyboardShortcutView *)self shouldAlignShortcutModifiersAndInputInColumn];
  inputLabelContainer = self->_inputLabelContainer;
  if (v3)
  {
    v5 = [(UIView *)inputLabelContainer rightAnchor];
    [(UIView *)self->_inputLabel rightAnchor];
  }

  else
  {
    v5 = [(UIView *)inputLabelContainer centerXAnchor];
    [(UIView *)self->_inputLabel centerXAnchor];
  }
  v6 = ;
  v7 = [v5 constraintEqualToAnchor:v6];
  inputHorizontalAlignmentConstraint = self->_inputHorizontalAlignmentConstraint;
  self->_inputHorizontalAlignmentConstraint = v7;

  v9 = self->_inputHorizontalAlignmentConstraint;

  [(NSLayoutConstraint *)v9 setActive:1];
}

- (void)_updateModifiersLabelText
{
  v5 = [(_UIKeyboardShortcutView *)self shortcut];
  v3 = [(_UIKeyboardShortcutView *)self standardFont];
  v4 = [_UIKeyShortcutHUDUtilities modifiersAttributedStringForMenuLeafShortcut:v5 font:v3 shouldDisplayGlobeModiferAsGlobeSymbol:[(_UIKeyboardShortcutView *)self shouldDisplayGlobeModifierAsGlobeSymbol]];
  [(UILabel *)self->_modifiersLabel setAttributedText:v4];
}

- (void)_updateInputLabelText
{
  v3 = [(_UIKeyboardShortcutView *)self shortcut];

  if (v3)
  {
    v7 = 0;
    v4 = [(_UIKeyboardShortcutView *)self shortcut];
    v5 = [(_UIKeyboardShortcutView *)self standardFont];
    v6 = [_UIKeyShortcutHUDUtilities inputAttributedStringForMenuLeafShortcut:v4 symbolFont:v5 shouldDisplayEscShortcutAlternative:[(_UIKeyboardShortcutView *)self shouldDisplayEscShortcutAlternative] shouldMirrorShortcutInputs:[(_UIKeyboardShortcutView *)self shouldMirrorShortcutInputs] shouldStyleAsSingleCharacterOrSymbol:&v7];
    [(UILabel *)self->_inputLabel setAttributedText:v6];

    [(_UIKeyboardShortcutView *)self setInputStyledAsSingleCharacterOrSymbol:v7];
  }
}

- (void)_updateInputLabelStyle:(id)a3
{
  if ([(_UIKeyboardShortcutView *)self isInputStyledAsSingleCharacterOrSymbol])
  {
    [(_UIKeyboardShortcutView *)self inputCharacterFont];
  }

  else
  {
    [(_UIKeyboardShortcutView *)self standardFont];
  }
  v4 = ;
  [(UILabel *)self->_inputLabel setFont:v4];
}

- (void)_updateInputLabelSpacing:(id)a3
{
  v16 = [UIFontMetrics metricsForTextStyle:@"UICTFontTextStyleBody"];
  if ([(_UIKeyboardShortcutView *)self wantsCompressedWidth])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(_UIKeyboardShortcutView *)self shouldAlignShortcutModifiersAndInputInColumn]^ 1;
  }

  [(NSLayoutConstraint *)self->_reservedInputWidthConstraint setActive:v4];
  v5 = [(UIView *)self traitCollection];
  [v16 scaledValueForValue:v5 compatibleWithTraitCollection:20.0];
  [(NSLayoutConstraint *)self->_reservedInputWidthConstraint setConstant:?];

  if ([(_UIKeyboardShortcutView *)self isInputStyledAsSingleCharacterOrSymbol]&& ![(_UIKeyboardShortcutView *)self shouldAlignShortcutModifiersAndInputInColumn])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(_UIKeyboardShortcutView *)self wantsCompressedWidth]^ 1;
  }

  [(NSLayoutConstraint *)self->_reservedInputWidthSpacingConstraint setActive:v6];
  v7 = [(UIView *)self traitCollection];
  [v16 scaledValueForValue:v7 compatibleWithTraitCollection:3.0];
  v9 = v8;

  if ([(_UIKeyboardShortcutView *)self shouldAlignShortcutModifiersAndInputInColumn])
  {
    modifiersLabelWidthConstraint = self->_modifiersLabelWidthConstraint;
    if (!modifiersLabelWidthConstraint || ([(NSLayoutConstraint *)modifiersLabelWidthConstraint constant], v13 = v12, v10 = 0.0, v13 != 0.0) && (v10 = v9, !self->_modifiersLabelWidthConstraint))
    {
      v14 = [(UILabel *)self->_modifiersLabel text];
      v15 = [v14 length];

      v10 = 0.0;
      if (v15)
      {
        v10 = v9;
      }
    }
  }

  else
  {
    v10 = v9 + v9;
  }

  [(NSLayoutConstraint *)self->_reservedInputWidthSpacingConstraint setConstant:v10];
}

- (_UIMenuLeafKeyboardShortcut)shortcut
{
  WeakRetained = objc_loadWeakRetained(&self->_shortcut);

  return WeakRetained;
}

- (void)_configureWithHUDMetrics:(id)a3
{
  v4 = a3;
  v5 = [v4 standardHUDTextColor];
  [(_UIKeyboardShortcutView *)self setTextColor:v5];

  v6 = [v4 keyShortcutInputWordFont];
  [(_UIKeyboardShortcutView *)self setStandardFont:v6];

  v7 = [v4 keyShortcutInputCharacterFont];
  [(_UIKeyboardShortcutView *)self setInputCharacterFont:v7];

  -[_UIKeyboardShortcutView setShouldDisplayGlobeModifierAsGlobeSymbol:](self, "setShouldDisplayGlobeModifierAsGlobeSymbol:", [v4 shouldDisplayGlobeModiferAsGlobeSymbol]);
  -[_UIKeyboardShortcutView setShouldDisplayEscShortcutAlternative:](self, "setShouldDisplayEscShortcutAlternative:", [v4 shouldDisplayEscShortcutAlternative]);
  v8 = [v4 shouldMirrorShortcutInputs];

  [(_UIKeyboardShortcutView *)self setShouldMirrorShortcutInputs:v8];
}

@end