@interface PKPaymentPreferenceAddListItem
- (PKPaymentPreferenceAddListItem)initWithAddPreferenceType:(int)a3 forSectionPreference:(id)a4 handler:(id)a5;
- (id)_text;
- (id)configuration;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKPaymentPreferenceAddListItem

- (PKPaymentPreferenceAddListItem)initWithAddPreferenceType:(int)a3 forSectionPreference:(id)a4 handler:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = PKPaymentPreferenceAddListItem;
  v9 = [(PKPaymentPreferenceListItem *)&v14 initWithSectionPreference:a4];
  v10 = v9;
  if (v9)
  {
    v9->_type = a3;
    v11 = _Block_copy(v8);
    handler = v10->_handler;
    v10->_handler = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = PKPaymentPreferenceAddListItem;
  v4 = [(PKPaymentPreferenceListItem *)&v8 copyWithZone:a3];
  v4[4] = self->_type;
  v5 = _Block_copy(self->_handler);
  v6 = *(v4 + 3);
  *(v4 + 3) = v5;

  return v4;
}

- (id)configuration
{
  v9.receiver = self;
  v9.super_class = PKPaymentPreferenceAddListItem;
  v3 = [(PKPaymentPreferenceListItem *)&v9 configuration];
  buttonTextColor = self->_buttonTextColor;
  if (buttonTextColor)
  {
    v5 = buttonTextColor;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  v6 = v5;
  v7 = [v3 textProperties];
  [v7 setColor:v6];

  return v3;
}

- (id)_text
{
  v3 = [(PKPaymentPreferenceListItem *)self sectionPreference];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v5 = [(PKPaymentPreferenceListItem *)self sectionPreference];
  v6 = v5;
  type = self->_type;
  if (type == 1)
  {
    v8 = [v5 addExistingTitle];
  }

  else
  {
    if (type)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = [v5 addNewTitle];
  }

  v9 = v8;
LABEL_9:

LABEL_10:

  return v9;
}

@end