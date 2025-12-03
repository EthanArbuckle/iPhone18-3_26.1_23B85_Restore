@interface PKPaymentPreferenceCell
- (PKPaymentPreferenceCell)initWithReuseIdentifier:(id)identifier;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setHasError:(BOOL)error;
@end

@implementation PKPaymentPreferenceCell

- (PKPaymentPreferenceCell)initWithReuseIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = PKPaymentPreferenceCell;
  return [(PKPaymentPreferenceCell *)&v4 initWithStyle:0 reuseIdentifier:identifier];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKPaymentPreferenceCell;
  [(PKTableViewCell *)&v3 prepareForReuse];
  [(PKPaymentPreferenceCell *)self setHasError:0];
}

- (void)setHasError:(BOOL)error
{
  if (self->_hasError == error)
  {
    return;
  }

  errorCopy = error;
  self->_hasError = error;
  if (!self->_errorColor)
  {
    pkui_osloErrorColor = [MEMORY[0x1E69DC888] pkui_osloErrorColor];
    errorColor = self->_errorColor;
    self->_errorColor = pkui_osloErrorColor;

    if (errorCopy)
    {
      goto LABEL_4;
    }

LABEL_6:
    [(PKPaymentPreferenceCell *)self setAccessoryView:0];
    detailTextLabel = [(PKPaymentPreferenceCell *)self detailTextLabel];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [detailTextLabel setTextColor:secondaryLabelColor];

    textLabel = [(PKPaymentPreferenceCell *)self textLabel];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [textLabel setTextColor:labelColor];
    goto LABEL_7;
  }

  if (!error)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = PKUIImageNamed(@"Payment_AlertAccessory");
  textLabel = [v6 _flatImageWithColor:self->_errorColor];

  labelColor = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:textLabel];
  [(PKPaymentPreferenceCell *)self setAccessoryView:labelColor];
  detailTextLabel2 = [(PKPaymentPreferenceCell *)self detailTextLabel];
  [detailTextLabel2 setTextColor:self->_errorColor];

  textLabel2 = [(PKPaymentPreferenceCell *)self textLabel];
  [textLabel2 setTextColor:self->_errorColor];

LABEL_7:
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPaymentPreferenceCell;
  [(PKPaymentPreferenceCell *)&v2 dealloc];
}

@end