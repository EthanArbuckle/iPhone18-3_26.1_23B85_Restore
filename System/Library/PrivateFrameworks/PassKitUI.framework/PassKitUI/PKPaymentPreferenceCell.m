@interface PKPaymentPreferenceCell
- (PKPaymentPreferenceCell)initWithReuseIdentifier:(id)a3;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setHasError:(BOOL)a3;
@end

@implementation PKPaymentPreferenceCell

- (PKPaymentPreferenceCell)initWithReuseIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentPreferenceCell;
  return [(PKPaymentPreferenceCell *)&v4 initWithStyle:0 reuseIdentifier:a3];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKPaymentPreferenceCell;
  [(PKTableViewCell *)&v3 prepareForReuse];
  [(PKPaymentPreferenceCell *)self setHasError:0];
}

- (void)setHasError:(BOOL)a3
{
  if (self->_hasError == a3)
  {
    return;
  }

  v4 = a3;
  self->_hasError = a3;
  if (!self->_errorColor)
  {
    v10 = [MEMORY[0x1E69DC888] pkui_osloErrorColor];
    errorColor = self->_errorColor;
    self->_errorColor = v10;

    if (v4)
    {
      goto LABEL_4;
    }

LABEL_6:
    [(PKPaymentPreferenceCell *)self setAccessoryView:0];
    v12 = [(PKPaymentPreferenceCell *)self detailTextLabel];
    v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v12 setTextColor:v13];

    v14 = [(PKPaymentPreferenceCell *)self textLabel];
    v7 = [MEMORY[0x1E69DC888] labelColor];
    [v14 setTextColor:v7];
    goto LABEL_7;
  }

  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = PKUIImageNamed(@"Payment_AlertAccessory");
  v14 = [v6 _flatImageWithColor:self->_errorColor];

  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v14];
  [(PKPaymentPreferenceCell *)self setAccessoryView:v7];
  v8 = [(PKPaymentPreferenceCell *)self detailTextLabel];
  [v8 setTextColor:self->_errorColor];

  v9 = [(PKPaymentPreferenceCell *)self textLabel];
  [v9 setTextColor:self->_errorColor];

LABEL_7:
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPaymentPreferenceCell;
  [(PKPaymentPreferenceCell *)&v2 dealloc];
}

@end