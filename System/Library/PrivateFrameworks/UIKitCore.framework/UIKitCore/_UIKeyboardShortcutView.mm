@interface _UIKeyboardShortcutView
- (_UIKeyboardShortcutView)initWithCoder:(id)coder;
- (_UIKeyboardShortcutView)initWithFrame:(CGRect)frame;
- (_UIMenuLeafKeyboardShortcut)shortcut;
- (double)inputLabelWidth;
- (double)modifiersLabelWidth;
- (id)_defaultInputCharacterFont;
- (id)_defaultStandardFont;
- (void)_commonInit;
- (void)_configureWithHUDMetrics:(id)metrics;
- (void)_getHardwareKeyboardIsArabic:(BOOL *)arabic globeKeyLabelHasGlobeSymbol:(BOOL *)symbol;
- (void)_setupInputHorizontalAlignmentConstraint;
- (void)_updateInputLabelSpacing:(id)spacing;
- (void)_updateInputLabelStyle:(id)style;
- (void)_updateInputLabelText;
- (void)_updateModifiersLabelText;
- (void)dealloc;
- (void)setFont:(id)font;
- (void)setInputCharacterFont:(id)font;
- (void)setInputStyledAsSingleCharacterOrSymbol:(BOOL)symbol;
- (void)setModifiersWidth:(double)width inputWidth:(double)inputWidth;
- (void)setShortcut:(id)shortcut;
- (void)setShouldAlignShortcutModifiersAndInputInColumn:(BOOL)column;
- (void)setShouldDisplayEscShortcutAlternative:(BOOL)alternative;
- (void)setShouldDisplayGlobeModifierAsGlobeSymbol:(BOOL)symbol;
- (void)setShouldMirrorShortcutInputs:(BOOL)inputs;
- (void)setStandardFont:(id)font;
- (void)setTextColor:(id)color;
- (void)setWantsCompressedWidth:(BOOL)width;
@end

@implementation _UIKeyboardShortcutView

- (_UIKeyboardShortcutView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIKeyboardShortcutView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIKeyboardShortcutView *)v3 _commonInit];
  }

  return v4;
}

- (_UIKeyboardShortcutView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIKeyboardShortcutView;
  v3 = [(UIView *)&v6 initWithCoder:coder];
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
  _defaultStandardFont = [(_UIKeyboardShortcutView *)self _defaultStandardFont];
  standardFont = self->_standardFont;
  self->_standardFont = _defaultStandardFont;

  _defaultInputCharacterFont = [(_UIKeyboardShortcutView *)self _defaultInputCharacterFont];
  inputCharacterFont = self->_inputCharacterFont;
  self->_inputCharacterFont = _defaultInputCharacterFont;

  self->_shouldDisplayEscShortcutAlternative = 1;
  traitCollection = [(UIView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  v57 = 0;
  [(_UIKeyboardShortcutView *)self _getHardwareKeyboardIsArabic:&v57 + 1 globeKeyLabelHasGlobeSymbol:&v57];
  self->_shouldDisplayGlobeModifierAsGlobeSymbol = v57;
  v9 = HIBYTE(v57);
  if (layoutDirection != 1)
  {
    v9 = 0;
  }

  self->_shouldMirrorShortcutInputs = v9;
  self->_shouldAlignShortcutModifiersAndInputInColumn = layoutDirection == 1;
  v10 = objc_opt_new();
  modifiersLabel = self->_modifiersLabel;
  self->_modifiersLabel = v10;

  [(UILabel *)self->_modifiersLabel setFont:self->_standardFont];
  [(UILabel *)self->_modifiersLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_modifiersLabel setTextAlignment:2];
  _defaultTextColor = [(_UIKeyboardShortcutView *)self _defaultTextColor];
  [(UILabel *)self->_modifiersLabel setTextColor:_defaultTextColor];

  [(UIView *)self->_modifiersLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1148846080;
  [(UIView *)self->_modifiersLabel setContentCompressionResistancePriority:0 forAxis:v13];
  v14 = objc_opt_new();
  inputLabel = self->_inputLabel;
  self->_inputLabel = v14;

  [(UILabel *)self->_inputLabel setFont:self->_inputCharacterFont];
  [(UILabel *)self->_inputLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_inputLabel setTextAlignment:[(_UIKeyboardShortcutView *)self shouldAlignShortcutModifiersAndInputInColumn]^ 1];
  _defaultTextColor2 = [(_UIKeyboardShortcutView *)self _defaultTextColor];
  [(UILabel *)self->_inputLabel setTextColor:_defaultTextColor2];

  [(UIView *)self->_inputLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = objc_opt_new();
  inputLabelContainer = self->_inputLabelContainer;
  self->_inputLabelContainer = v17;

  [(UIView *)self->_inputLabelContainer addSubview:self->_inputLabel];
  [(UIView *)self->_inputLabelContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [(UIView *)self->_inputLabelContainer widthAnchor];
  widthAnchor2 = [(UIView *)self->_inputLabel widthAnchor];
  v21 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

  LODWORD(v22) = 1144750080;
  v56 = v21;
  [v21 setPriority:v22];
  [(_UIKeyboardShortcutView *)self _setupInputHorizontalAlignmentConstraint];
  widthAnchor3 = [(UIView *)self->_inputLabelContainer widthAnchor];
  v24 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:0.0];
  reservedInputWidthConstraint = self->_reservedInputWidthConstraint;
  self->_reservedInputWidthConstraint = v24;

  widthAnchor4 = [(UIView *)self->_inputLabelContainer widthAnchor];
  widthAnchor5 = [(UIView *)self->_inputLabel widthAnchor];
  v28 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5 constant:0.0];
  reservedInputWidthSpacingConstraint = self->_reservedInputWidthSpacingConstraint;
  self->_reservedInputWidthSpacingConstraint = v28;

  v30 = MEMORY[0x1E69977A0];
  centerYAnchor = [(UIView *)self->_inputLabelContainer centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_inputLabel centerYAnchor];
  v33 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v60[0] = v33;
  v60[1] = v21;
  v34 = self->_reservedInputWidthConstraint;
  v60[2] = self->_reservedInputWidthSpacingConstraint;
  v60[3] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];
  [v30 activateConstraints:v35];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateInputLabelSpacing_ name:@"UIContentSizeCategoryDidChangeNotification" object:0];

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
  topAnchor = [(UIView *)self->_labelStackView topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v53 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v58[0] = v53;
  leadingAnchor = [(UIView *)self->_labelStackView leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v58[1] = v43;
  trailingAnchor = [(UIView *)self->_labelStackView trailingAnchor];
  trailingAnchor2 = [(UIView *)self trailingAnchor];
  v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v58[2] = v46;
  bottomAnchor = [(UIView *)self->_labelStackView bottomAnchor];
  bottomAnchor2 = [(UIView *)self bottomAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v58[3] = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
  [v51 activateConstraints:v50];

  [(_UIKeyboardShortcutView *)self _updateInputLabelSpacing:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIContentSizeCategoryDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIKeyboardShortcutView;
  [(UIView *)&v4 dealloc];
}

- (void)setShortcut:(id)shortcut
{
  obj = shortcut;
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

- (void)setTextColor:(id)color
{
  modifiersLabel = self->_modifiersLabel;
  colorCopy = color;
  [(UILabel *)modifiersLabel setTextColor:colorCopy];
  [(UILabel *)self->_inputLabel setTextColor:colorCopy];
}

- (void)setStandardFont:(id)font
{
  fontCopy = font;
  if (self->_standardFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_standardFont, font);
    [(UILabel *)self->_modifiersLabel setFont:v6];
    [(_UIKeyboardShortcutView *)self _updateInputLabelStyle:0];
    [(_UIKeyboardShortcutView *)self _updateInputLabelText];
    fontCopy = v6;
  }
}

- (void)setInputCharacterFont:(id)font
{
  fontCopy = font;
  if (self->_inputCharacterFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_inputCharacterFont, font);
    [(_UIKeyboardShortcutView *)self _updateInputLabelStyle:0];
    fontCopy = v6;
  }
}

- (void)setFont:(id)font
{
  v12[1] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  if (self->_standardFont != fontCopy)
  {
    objc_storeStrong(&self->_standardFont, font);
    [(UILabel *)self->_modifiersLabel setFont:fontCopy];
    fontDescriptor = [(UIFont *)fontCopy fontDescriptor];
    v11 = *off_1E70ECC98;
    v12[0] = &unk_1EFE2B290;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [fontDescriptor fontDescriptorByAddingAttributes:v7];

    v9 = [off_1E70ECC18 fontWithDescriptor:v8 size:0.0];
    inputCharacterFont = self->_inputCharacterFont;
    self->_inputCharacterFont = v9;

    [(_UIKeyboardShortcutView *)self _updateInputLabelStyle:0];
    [(_UIKeyboardShortcutView *)self _updateInputLabelText];
  }
}

- (void)setWantsCompressedWidth:(BOOL)width
{
  if (self->_wantsCompressedWidth != width)
  {
    self->_wantsCompressedWidth = width;
    [(_UIKeyboardShortcutView *)self _updateInputLabelSpacing:0];
  }
}

- (void)setShouldDisplayGlobeModifierAsGlobeSymbol:(BOOL)symbol
{
  if (self->_shouldDisplayGlobeModifierAsGlobeSymbol != symbol)
  {
    self->_shouldDisplayGlobeModifierAsGlobeSymbol = symbol;
    [(_UIKeyboardShortcutView *)self _updateModifiersLabelText];
  }
}

- (void)setShouldDisplayEscShortcutAlternative:(BOOL)alternative
{
  if (self->_shouldDisplayEscShortcutAlternative != alternative)
  {
    self->_shouldDisplayEscShortcutAlternative = alternative;
    [(_UIKeyboardShortcutView *)self _updateInputLabelText];
  }
}

- (void)setShouldMirrorShortcutInputs:(BOOL)inputs
{
  if (self->_shouldMirrorShortcutInputs != inputs)
  {
    self->_shouldMirrorShortcutInputs = inputs;
    [(_UIKeyboardShortcutView *)self _updateInputLabelText];
  }
}

- (void)setShouldAlignShortcutModifiersAndInputInColumn:(BOOL)column
{
  if (self->_shouldAlignShortcutModifiersAndInputInColumn != column)
  {
    self->_shouldAlignShortcutModifiersAndInputInColumn = column;
    [(UILabel *)self->_inputLabel setTextAlignment:!column];
    [(_UIKeyboardShortcutView *)self _setupInputHorizontalAlignmentConstraint];

    [(_UIKeyboardShortcutView *)self _updateInputLabelSpacing:0];
  }
}

- (void)setInputStyledAsSingleCharacterOrSymbol:(BOOL)symbol
{
  if (self->_inputStyledAsSingleCharacterOrSymbol != symbol)
  {
    self->_inputStyledAsSingleCharacterOrSymbol = symbol;
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

- (void)setModifiersWidth:(double)width inputWidth:(double)inputWidth
{
  modifiersLabelWidthConstraint = self->_modifiersLabelWidthConstraint;
  if (!modifiersLabelWidthConstraint)
  {
    goto LABEL_6;
  }

  [(NSLayoutConstraint *)modifiersLabelWidthConstraint constant];
  if (v8 == width)
  {
    inputLabelWidthConstraint = self->_inputLabelWidthConstraint;
    if (inputLabelWidthConstraint)
    {
      [(NSLayoutConstraint *)inputLabelWidthConstraint constant];
      if (v10 == inputWidth)
      {
        return;
      }
    }
  }

  v11 = self->_modifiersLabelWidthConstraint;
  if (!v11)
  {
LABEL_6:
    widthAnchor = [(UIView *)self->_modifiersLabel widthAnchor];
    v13 = [widthAnchor constraintEqualToConstant:0.0];
    v14 = self->_modifiersLabelWidthConstraint;
    self->_modifiersLabelWidthConstraint = v13;

    [(NSLayoutConstraint *)self->_modifiersLabelWidthConstraint setActive:1];
    v11 = self->_modifiersLabelWidthConstraint;
  }

  [(NSLayoutConstraint *)v11 setConstant:width];
  v15 = self->_inputLabelWidthConstraint;
  if (!v15)
  {
    widthAnchor2 = [(UIView *)self->_inputLabel widthAnchor];
    v17 = [widthAnchor2 constraintEqualToConstant:0.0];
    v18 = self->_inputLabelWidthConstraint;
    self->_inputLabelWidthConstraint = v17;

    [(NSLayoutConstraint *)self->_inputLabelWidthConstraint setActive:1];
    v15 = self->_inputLabelWidthConstraint;
  }

  [(NSLayoutConstraint *)v15 setConstant:inputWidth];

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

- (void)_getHardwareKeyboardIsArabic:(BOOL *)arabic globeKeyLabelHasGlobeSymbol:(BOOL *)symbol
{
  v6 = [UIApp getKeyboardDevicePropertiesForSenderID:_lastUsedKeyboardSenderID shouldUpdate:0];
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    language = [v6 language];
    *arabic = [language isEqualToString:@"Arabic"];

    globeKeyLabelHasGlobeSymbol = [v10 globeKeyLabelHasGlobeSymbol];
    v7 = v10;
  }

  else
  {
    *arabic = 0;
    globeKeyLabelHasGlobeSymbol = 1;
  }

  *symbol = globeKeyLabelHasGlobeSymbol;
}

- (void)_setupInputHorizontalAlignmentConstraint
{
  [(NSLayoutConstraint *)self->_inputHorizontalAlignmentConstraint setActive:0];
  shouldAlignShortcutModifiersAndInputInColumn = [(_UIKeyboardShortcutView *)self shouldAlignShortcutModifiersAndInputInColumn];
  inputLabelContainer = self->_inputLabelContainer;
  if (shouldAlignShortcutModifiersAndInputInColumn)
  {
    rightAnchor = [(UIView *)inputLabelContainer rightAnchor];
    [(UIView *)self->_inputLabel rightAnchor];
  }

  else
  {
    rightAnchor = [(UIView *)inputLabelContainer centerXAnchor];
    [(UIView *)self->_inputLabel centerXAnchor];
  }
  v6 = ;
  v7 = [rightAnchor constraintEqualToAnchor:v6];
  inputHorizontalAlignmentConstraint = self->_inputHorizontalAlignmentConstraint;
  self->_inputHorizontalAlignmentConstraint = v7;

  v9 = self->_inputHorizontalAlignmentConstraint;

  [(NSLayoutConstraint *)v9 setActive:1];
}

- (void)_updateModifiersLabelText
{
  shortcut = [(_UIKeyboardShortcutView *)self shortcut];
  standardFont = [(_UIKeyboardShortcutView *)self standardFont];
  v4 = [_UIKeyShortcutHUDUtilities modifiersAttributedStringForMenuLeafShortcut:shortcut font:standardFont shouldDisplayGlobeModiferAsGlobeSymbol:[(_UIKeyboardShortcutView *)self shouldDisplayGlobeModifierAsGlobeSymbol]];
  [(UILabel *)self->_modifiersLabel setAttributedText:v4];
}

- (void)_updateInputLabelText
{
  shortcut = [(_UIKeyboardShortcutView *)self shortcut];

  if (shortcut)
  {
    v7 = 0;
    shortcut2 = [(_UIKeyboardShortcutView *)self shortcut];
    standardFont = [(_UIKeyboardShortcutView *)self standardFont];
    v6 = [_UIKeyShortcutHUDUtilities inputAttributedStringForMenuLeafShortcut:shortcut2 symbolFont:standardFont shouldDisplayEscShortcutAlternative:[(_UIKeyboardShortcutView *)self shouldDisplayEscShortcutAlternative] shouldMirrorShortcutInputs:[(_UIKeyboardShortcutView *)self shouldMirrorShortcutInputs] shouldStyleAsSingleCharacterOrSymbol:&v7];
    [(UILabel *)self->_inputLabel setAttributedText:v6];

    [(_UIKeyboardShortcutView *)self setInputStyledAsSingleCharacterOrSymbol:v7];
  }
}

- (void)_updateInputLabelStyle:(id)style
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

- (void)_updateInputLabelSpacing:(id)spacing
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
  traitCollection = [(UIView *)self traitCollection];
  [v16 scaledValueForValue:traitCollection compatibleWithTraitCollection:20.0];
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
  traitCollection2 = [(UIView *)self traitCollection];
  [v16 scaledValueForValue:traitCollection2 compatibleWithTraitCollection:3.0];
  v9 = v8;

  if ([(_UIKeyboardShortcutView *)self shouldAlignShortcutModifiersAndInputInColumn])
  {
    modifiersLabelWidthConstraint = self->_modifiersLabelWidthConstraint;
    if (!modifiersLabelWidthConstraint || ([(NSLayoutConstraint *)modifiersLabelWidthConstraint constant], v13 = v12, v10 = 0.0, v13 != 0.0) && (v10 = v9, !self->_modifiersLabelWidthConstraint))
    {
      text = [(UILabel *)self->_modifiersLabel text];
      v15 = [text length];

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

- (void)_configureWithHUDMetrics:(id)metrics
{
  metricsCopy = metrics;
  standardHUDTextColor = [metricsCopy standardHUDTextColor];
  [(_UIKeyboardShortcutView *)self setTextColor:standardHUDTextColor];

  keyShortcutInputWordFont = [metricsCopy keyShortcutInputWordFont];
  [(_UIKeyboardShortcutView *)self setStandardFont:keyShortcutInputWordFont];

  keyShortcutInputCharacterFont = [metricsCopy keyShortcutInputCharacterFont];
  [(_UIKeyboardShortcutView *)self setInputCharacterFont:keyShortcutInputCharacterFont];

  -[_UIKeyboardShortcutView setShouldDisplayGlobeModifierAsGlobeSymbol:](self, "setShouldDisplayGlobeModifierAsGlobeSymbol:", [metricsCopy shouldDisplayGlobeModiferAsGlobeSymbol]);
  -[_UIKeyboardShortcutView setShouldDisplayEscShortcutAlternative:](self, "setShouldDisplayEscShortcutAlternative:", [metricsCopy shouldDisplayEscShortcutAlternative]);
  shouldMirrorShortcutInputs = [metricsCopy shouldMirrorShortcutInputs];

  [(_UIKeyboardShortcutView *)self setShouldMirrorShortcutInputs:shouldMirrorShortcutInputs];
}

@end