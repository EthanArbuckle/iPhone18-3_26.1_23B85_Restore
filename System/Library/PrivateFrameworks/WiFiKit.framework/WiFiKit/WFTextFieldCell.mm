@interface WFTextFieldCell
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (NSLayoutConstraint)labelWidthConstraint;
- (NSLayoutConstraint)stackViewBottomConstraint;
- (NSLayoutConstraint)stackViewLeadingConstraint;
- (NSLayoutConstraint)stackViewTopConstraint;
- (NSLayoutConstraint)trailingMarginConstraint;
- (UIStackView)stackView;
- (UITextField)textField;
- (double)_verticalPadding;
- (void)_adjustStackViewPadding;
- (void)_updateStackViewForTraitCollection;
- (void)awakeFromNib;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setAccessoryType:(int64_t)type;
- (void)setEditable:(BOOL)editable;
- (void)textFieldDidChange:(id)change;
- (void)textFieldDidEndEditingExit:(id)exit;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFTextFieldCell

- (void)awakeFromNib
{
  self->_editable = 1;
  v14.receiver = self;
  v14.super_class = WFTextFieldCell;
  [(WFTextFieldCell *)&v14 awakeFromNib];
  textField = [(WFTextFieldCell *)self textField];
  [textField addTarget:self action:sel_textFieldDidChange_ forControlEvents:0x20000];

  textField2 = [(WFTextFieldCell *)self textField];
  [textField2 addTarget:self action:sel_textFieldDidEndEditingExit_ forControlEvents:0x80000];

  [(WFTextFieldCell *)self setSelectionStyle:0];
  [(WFTextFieldCell *)self _adjustStackViewPadding];
  textField3 = [(WFTextFieldCell *)self textField];
  textInputTraits = [textField3 textInputTraits];
  [textInputTraits setSmartQuotesType:1];

  textField4 = [(WFTextFieldCell *)self textField];
  textInputTraits2 = [textField4 textInputTraits];
  [textInputTraits2 setSmartDashesType:1];

  defaultTextColor = [MEMORY[0x277D75348] defaultTextColor];
  label = [(WFTextFieldCell *)self label];
  [label setTextColor:defaultTextColor];

  defaultTextColor2 = [MEMORY[0x277D75348] defaultTextColor];
  textField5 = [(WFTextFieldCell *)self textField];
  [textField5 setTextColor:defaultTextColor2];

  if ([(WFTextFieldCell *)self _shouldReverseLayoutDirection])
  {
    textField6 = [(WFTextFieldCell *)self textField];
    [textField6 setTextAlignment:2];
  }

  [(WFTextFieldCell *)self _updateStackViewForTraitCollection];
}

- (void)_adjustStackViewPadding
{
  [(WFTextFieldCell *)self _verticalPadding];
  v4 = v3;
  stackViewTopConstraint = [(WFTextFieldCell *)self stackViewTopConstraint];
  [stackViewTopConstraint setConstant:v4];

  [(WFTextFieldCell *)self _verticalPadding];
  v7 = v6;
  stackViewBottomConstraint = [(WFTextFieldCell *)self stackViewBottomConstraint];
  [stackViewBottomConstraint setConstant:v7];
}

- (double)_verticalPadding
{
  label = [(WFTextFieldCell *)self label];
  font = [label font];
  [font _bodyLeading];
  v5 = v4 * 0.5;

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  preferredContentSizeCategory = [change preferredContentSizeCategory];
  traitCollection = [(WFTextFieldCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v7 & 1) == 0)
  {
    [(WFTextFieldCell *)self _adjustStackViewPadding];

    [(WFTextFieldCell *)self _updateStackViewForTraitCollection];
  }
}

- (void)_updateStackViewForTraitCollection
{
  traitCollection = [(WFTextFieldCell *)self traitCollection];
  isLargeTextTraitCollection = [traitCollection isLargeTextTraitCollection];

  stackView = [(WFTextFieldCell *)self stackView];
  v6 = stackView;
  if (isLargeTextTraitCollection)
  {
    [stackView setAxis:1];

    labelWidthConstraint = [(WFTextFieldCell *)self labelWidthConstraint];
    [labelWidthConstraint setActive:0];

    if (([(WFTextFieldCell *)self _shouldReverseLayoutDirection]& 1) != 0)
    {
      return;
    }

    textField = [(WFTextFieldCell *)self textField];
    [textField setTextAlignment:0];
  }

  else
  {
    [stackView setAxis:0];

    textField = [(WFTextFieldCell *)self labelWidthConstraint];
    [textField setActive:1];
  }
}

- (void)textFieldDidChange:(id)change
{
  textChangeHandler = [(WFTextFieldCell *)self textChangeHandler];

  if (textChangeHandler)
  {
    textField = [(WFTextFieldCell *)self textField];
    text = [textField text];
    if ([text length])
    {
      textField2 = [(WFTextFieldCell *)self textField];
      text2 = [textField2 text];
    }

    else
    {
      text2 = &stru_2882E4AD8;
    }

    textChangeHandler2 = [(WFTextFieldCell *)self textChangeHandler];
    (textChangeHandler2)[2](textChangeHandler2, text2);
  }
}

- (void)textFieldDidEndEditingExit:(id)exit
{
  returnKeyHandler = [(WFTextFieldCell *)self returnKeyHandler];

  if (returnKeyHandler)
  {
    returnKeyHandler2 = [(WFTextFieldCell *)self returnKeyHandler];
    returnKeyHandler2[2](returnKeyHandler2, self);
  }
}

- (void)setAccessoryType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = WFTextFieldCell;
  [(WFTextFieldCell *)&v8 setAccessoryType:?];
  trailingMarginConstraint = [(WFTextFieldCell *)self trailingMarginConstraint];
  v6 = trailingMarginConstraint;
  v7 = 0.0;
  if (!type)
  {
    v7 = 8.0;
  }

  [trailingMarginConstraint setConstant:v7];
}

- (void)setEditable:(BOOL)editable
{
  if (self->_editable != editable)
  {
    self->_editable = editable;
  }
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = WFTextFieldCell;
  [(WFTextFieldCell *)&v10 prepareForReuse];
  textField = [(WFTextFieldCell *)self textField];
  [textField setText:&stru_2882E4AD8];

  textField2 = [(WFTextFieldCell *)self textField];
  [textField2 setKeyboardType:0];

  textField3 = [(WFTextFieldCell *)self textField];
  [textField3 setSecureTextEntry:0];

  [(WFTextFieldCell *)self setAccessoryType:0];
  self->_editable = 1;
  defaultTextColor = [MEMORY[0x277D75348] defaultTextColor];
  label = [(WFTextFieldCell *)self label];
  [label setTextColor:defaultTextColor];

  defaultTextColor2 = [MEMORY[0x277D75348] defaultTextColor];
  textField4 = [(WFTextFieldCell *)self textField];
  [textField4 setTextColor:defaultTextColor2];
}

- (BOOL)becomeFirstResponder
{
  textField = [(WFTextFieldCell *)self textField];
  becomeFirstResponder = [textField becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_copy_ == action)
  {
    textField = [(WFTextFieldCell *)self textField];
    v4 = [textField isSecureTextEntry] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)copy:(id)copy
{
  textField = [(WFTextFieldCell *)self textField];
  text = [textField text];
  v6 = [text length];

  if (v6)
  {
    textField2 = [(WFTextFieldCell *)self textField];
    text2 = [textField2 text];
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    [generalPasteboard setString:text2];
  }
}

- (void)dealloc
{
  textField = [(WFTextFieldCell *)self textField];
  [textField removeTarget:self forEvents:655360];

  v4.receiver = self;
  v4.super_class = WFTextFieldCell;
  [(WFTextFieldCell *)&v4 dealloc];
}

- (UITextField)textField
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

- (NSLayoutConstraint)trailingMarginConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_trailingMarginConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)labelWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_labelWidthConstraint);

  return WeakRetained;
}

- (UIStackView)stackView
{
  WeakRetained = objc_loadWeakRetained(&self->_stackView);

  return WeakRetained;
}

- (NSLayoutConstraint)stackViewTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_stackViewTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)stackViewBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_stackViewBottomConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)stackViewLeadingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_stackViewLeadingConstraint);

  return WeakRetained;
}

@end