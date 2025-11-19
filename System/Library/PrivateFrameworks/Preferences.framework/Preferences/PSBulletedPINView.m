@interface PSBulletedPINView
- (BOOL)resignFirstResponder;
- (PSBulletedPINView)initWithFrame:(CGRect)a3 numberOfFields:(int)a4;
- (void)appendString:(id)a3;
- (void)dealloc;
- (void)deleteLastCharacter;
- (void)hidePasscodeField:(BOOL)a3;
- (void)layoutSubviews;
- (void)notifyDelegatePINChanged;
- (void)notifyDelegatePINEntered;
- (void)setStringValue:(id)a3;
@end

@implementation PSBulletedPINView

- (PSBulletedPINView)initWithFrame:(CGRect)a3 numberOfFields:(int)a4
{
  height = a3.size.height;
  width = a3.size.width;
  v23.receiver = self;
  v23.super_class = PSBulletedPINView;
  v7 = [(PSBulletedPINView *)&v23 initWithFrame:a3.origin.x, a3.origin.y];
  if (v7)
  {
    v8 = +[PSListController appearance];
    v9 = [v8 backgroundColor];
    [(PSBulletedPINView *)v7 setBackgroundColor:v9];

    v10 = [[PSPasscodeField alloc] initWithNumberOfEntryFields:a4];
    passcodeField = v7->_passcodeField;
    v7->_passcodeField = v10;

    [(PSPasscodeField *)v7->_passcodeField frame];
    [(PSPasscodeField *)v7->_passcodeField setFrame:floor((width - v12) * 0.5), floor((height - v13) * 0.5)];
    [(PSBulletedPINView *)v7 addSubview:v7->_passcodeField];
    [(PSPasscodeField *)v7->_passcodeField setDelegate:v7];
    v14 = objc_alloc(MEMORY[0x1E69DCC10]);
    v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v7->super._titleLabel;
    v7->super._titleLabel = v15;

    v17 = v7->super._titleLabel;
    v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v17 setFont:v18];

    [(UILabel *)v7->super._titleLabel setOpaque:0];
    [(UILabel *)v7->super._titleLabel setBackgroundColor:0];
    [(UILabel *)v7->super._titleLabel setTextAlignment:1];
    v19 = v7->super._titleLabel;
    v20 = +[PSListController appearance];
    v21 = [v20 textColor];
    [(UILabel *)v19 setTextColor:v21];

    [(UILabel *)v7->super._titleLabel setNumberOfLines:0];
    [(UILabel *)v7->super._titleLabel accessibilitySetIdentification:@"titleLabel"];
    [(UILabel *)v7->super._titleLabel setAdjustsFontSizeToFitWidth:1];
    [(PSBulletedPINView *)v7 addSubview:v7->super._titleLabel];
  }

  return v7;
}

- (void)dealloc
{
  [(PSPasscodeField *)self->_passcodeField setDelegate:0];
  v3.receiver = self;
  v3.super_class = PSBulletedPINView;
  [(PSBulletedPINView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  [(PSPasscodeField *)self->_passcodeField frame];
  v4 = v3;
  v6 = v5;
  [(PSBulletedPINView *)self bounds];
  v8 = floor((v7 - v4) * 0.5);
  [(PSBulletedPINView *)self bounds];
  v10 = floor((v9 - v6) * 0.5);
  [(PSPasscodeField *)self->_passcodeField setFrame:v8, v10, v4, v6];
  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v4;
  v16.size.height = v6;
  v11 = CGRectGetMinY(v16) + -22.0;
  [(PINView *)self layoutTopLabel:self->super._titleLabel withMaxY:v11];
  [(PINView *)self layoutTopLabel:self->super._errorTitleLabel withMaxY:v11];
  v15.receiver = self;
  v15.super_class = PSBulletedPINView;
  [(PINView *)&v15 layoutSubviews];
  if (self->super._pinPolicyLabel)
  {
    v17.origin.x = v8;
    v17.origin.y = v10;
    v17.size.width = v4;
    v17.size.height = v6;
    [(PINView *)self layoutBottomSubview:self->super._pinPolicyLabel withLabel:self->super._pinPolicyLabel withMinY:CGRectGetMaxY(v17) + 10.0];
  }

  if (self->super._failureView)
  {
    v18.origin.x = v8;
    v18.origin.y = v10;
    v18.size.width = v4;
    v18.size.height = v6;
    v12 = CGRectGetMaxY(v18) + 22.0;
    failureView = self->super._failureView;
    v14 = [(FailureBarView *)failureView titleLabel];
    [(PINView *)self layoutBottomSubview:failureView withLabel:v14 withMinY:v12];
  }
}

- (void)hidePasscodeField:(BOOL)a3
{
  v3 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x4010000000;
  v15[3] = "";
  v16 = 0u;
  v17 = 0u;
  [(PSPasscodeField *)self->_passcodeField frame];
  *&v16 = v5;
  *(&v16 + 1) = v6;
  *&v17 = v7;
  *(&v17 + 1) = v8;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__PSBulletedPINView_hidePasscodeField___block_invoke;
  aBlock[3] = &unk_1E71DCD18;
  objc_copyWeak(&v13, &location);
  aBlock[4] = v15;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (v3)
  {
    v11 = MEMORY[0x1E69DD250];
    [MEMORY[0x1E69DD228] defaultDurationForTransition:7];
    [v11 animateWithDuration:v10 animations:?];
  }

  else
  {
    (*(v9 + 2))(v9);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  _Block_object_dispose(v15, 8);
}

void __39__PSBulletedPINView_hidePasscodeField___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 32) = -*(*(*(a1 + 32) + 8) + 48);
  [WeakRetained[60] setFrame:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56)}];
}

- (void)setStringValue:(id)a3
{
  [(PSPasscodeField *)self->_passcodeField setStringValue:a3];

  [(PSBulletedPINView *)self notifyDelegatePINChanged];
}

- (void)deleteLastCharacter
{
  [(PSPasscodeField *)self->_passcodeField deleteBackward];

  [(PSBulletedPINView *)self notifyDelegatePINChanged];
}

- (void)appendString:(id)a3
{
  [(PSPasscodeField *)self->_passcodeField insertText:a3];

  [(PSBulletedPINView *)self notifyDelegatePINChanged];
}

- (BOOL)resignFirstResponder
{
  v4.receiver = self;
  v4.super_class = PSBulletedPINView;
  [(PSBulletedPINView *)&v4 resignFirstResponder];
  return [(PSPasscodeField *)self->_passcodeField resignFirstResponder];
}

- (void)notifyDelegatePINChanged
{
  v4 = [(PINView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(PSBulletedPINView *)self stringValue];
    [v4 pinView:self pinValueChanged:v3];
  }
}

- (void)notifyDelegatePINEntered
{
  v4 = [(PINView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(PSBulletedPINView *)self stringValue];
    [v4 pinView:self pinEntered:v3];
  }
}

@end