@interface WFTextFieldCell
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
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
- (void)copy:(id)a3;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setAccessoryType:(int64_t)a3;
- (void)setEditable:(BOOL)a3;
- (void)textFieldDidChange:(id)a3;
- (void)textFieldDidEndEditingExit:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFTextFieldCell

- (void)awakeFromNib
{
  self->_editable = 1;
  v14.receiver = self;
  v14.super_class = WFTextFieldCell;
  [(WFTextFieldCell *)&v14 awakeFromNib];
  v3 = [(WFTextFieldCell *)self textField];
  [v3 addTarget:self action:sel_textFieldDidChange_ forControlEvents:0x20000];

  v4 = [(WFTextFieldCell *)self textField];
  [v4 addTarget:self action:sel_textFieldDidEndEditingExit_ forControlEvents:0x80000];

  [(WFTextFieldCell *)self setSelectionStyle:0];
  [(WFTextFieldCell *)self _adjustStackViewPadding];
  v5 = [(WFTextFieldCell *)self textField];
  v6 = [v5 textInputTraits];
  [v6 setSmartQuotesType:1];

  v7 = [(WFTextFieldCell *)self textField];
  v8 = [v7 textInputTraits];
  [v8 setSmartDashesType:1];

  v9 = [MEMORY[0x277D75348] defaultTextColor];
  v10 = [(WFTextFieldCell *)self label];
  [v10 setTextColor:v9];

  v11 = [MEMORY[0x277D75348] defaultTextColor];
  v12 = [(WFTextFieldCell *)self textField];
  [v12 setTextColor:v11];

  if ([(WFTextFieldCell *)self _shouldReverseLayoutDirection])
  {
    v13 = [(WFTextFieldCell *)self textField];
    [v13 setTextAlignment:2];
  }

  [(WFTextFieldCell *)self _updateStackViewForTraitCollection];
}

- (void)_adjustStackViewPadding
{
  [(WFTextFieldCell *)self _verticalPadding];
  v4 = v3;
  v5 = [(WFTextFieldCell *)self stackViewTopConstraint];
  [v5 setConstant:v4];

  [(WFTextFieldCell *)self _verticalPadding];
  v7 = v6;
  v8 = [(WFTextFieldCell *)self stackViewBottomConstraint];
  [v8 setConstant:v7];
}

- (double)_verticalPadding
{
  v2 = [(WFTextFieldCell *)self label];
  v3 = [v2 font];
  [v3 _bodyLeading];
  v5 = v4 * 0.5;

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [a3 preferredContentSizeCategory];
  v5 = [(WFTextFieldCell *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    [(WFTextFieldCell *)self _adjustStackViewPadding];

    [(WFTextFieldCell *)self _updateStackViewForTraitCollection];
  }
}

- (void)_updateStackViewForTraitCollection
{
  v3 = [(WFTextFieldCell *)self traitCollection];
  v4 = [v3 isLargeTextTraitCollection];

  v5 = [(WFTextFieldCell *)self stackView];
  v6 = v5;
  if (v4)
  {
    [v5 setAxis:1];

    v7 = [(WFTextFieldCell *)self labelWidthConstraint];
    [v7 setActive:0];

    if (([(WFTextFieldCell *)self _shouldReverseLayoutDirection]& 1) != 0)
    {
      return;
    }

    v8 = [(WFTextFieldCell *)self textField];
    [v8 setTextAlignment:0];
  }

  else
  {
    [v5 setAxis:0];

    v8 = [(WFTextFieldCell *)self labelWidthConstraint];
    [v8 setActive:1];
  }
}

- (void)textFieldDidChange:(id)a3
{
  v4 = [(WFTextFieldCell *)self textChangeHandler];

  if (v4)
  {
    v5 = [(WFTextFieldCell *)self textField];
    v6 = [v5 text];
    if ([v6 length])
    {
      v7 = [(WFTextFieldCell *)self textField];
      v9 = [v7 text];
    }

    else
    {
      v9 = &stru_2882E4AD8;
    }

    v8 = [(WFTextFieldCell *)self textChangeHandler];
    (v8)[2](v8, v9);
  }
}

- (void)textFieldDidEndEditingExit:(id)a3
{
  v4 = [(WFTextFieldCell *)self returnKeyHandler];

  if (v4)
  {
    v5 = [(WFTextFieldCell *)self returnKeyHandler];
    v5[2](v5, self);
  }
}

- (void)setAccessoryType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = WFTextFieldCell;
  [(WFTextFieldCell *)&v8 setAccessoryType:?];
  v5 = [(WFTextFieldCell *)self trailingMarginConstraint];
  v6 = v5;
  v7 = 0.0;
  if (!a3)
  {
    v7 = 8.0;
  }

  [v5 setConstant:v7];
}

- (void)setEditable:(BOOL)a3
{
  if (self->_editable != a3)
  {
    self->_editable = a3;
  }
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = WFTextFieldCell;
  [(WFTextFieldCell *)&v10 prepareForReuse];
  v3 = [(WFTextFieldCell *)self textField];
  [v3 setText:&stru_2882E4AD8];

  v4 = [(WFTextFieldCell *)self textField];
  [v4 setKeyboardType:0];

  v5 = [(WFTextFieldCell *)self textField];
  [v5 setSecureTextEntry:0];

  [(WFTextFieldCell *)self setAccessoryType:0];
  self->_editable = 1;
  v6 = [MEMORY[0x277D75348] defaultTextColor];
  v7 = [(WFTextFieldCell *)self label];
  [v7 setTextColor:v6];

  v8 = [MEMORY[0x277D75348] defaultTextColor];
  v9 = [(WFTextFieldCell *)self textField];
  [v9 setTextColor:v8];
}

- (BOOL)becomeFirstResponder
{
  v2 = [(WFTextFieldCell *)self textField];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_copy_ == a3)
  {
    v5 = [(WFTextFieldCell *)self textField];
    v4 = [v5 isSecureTextEntry] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)copy:(id)a3
{
  v4 = [(WFTextFieldCell *)self textField];
  v5 = [v4 text];
  v6 = [v5 length];

  if (v6)
  {
    v9 = [(WFTextFieldCell *)self textField];
    v7 = [v9 text];
    v8 = [MEMORY[0x277D75810] generalPasteboard];
    [v8 setString:v7];
  }
}

- (void)dealloc
{
  v3 = [(WFTextFieldCell *)self textField];
  [v3 removeTarget:self forEvents:655360];

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