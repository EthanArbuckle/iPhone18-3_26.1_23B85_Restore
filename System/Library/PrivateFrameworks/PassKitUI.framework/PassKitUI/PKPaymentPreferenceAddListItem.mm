@interface PKPaymentPreferenceAddListItem
- (PKPaymentPreferenceAddListItem)initWithAddPreferenceType:(int)type forSectionPreference:(id)preference handler:(id)handler;
- (id)_text;
- (id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKPaymentPreferenceAddListItem

- (PKPaymentPreferenceAddListItem)initWithAddPreferenceType:(int)type forSectionPreference:(id)preference handler:(id)handler
{
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = PKPaymentPreferenceAddListItem;
  v9 = [(PKPaymentPreferenceListItem *)&v14 initWithSectionPreference:preference];
  v10 = v9;
  if (v9)
  {
    v9->_type = type;
    v11 = _Block_copy(handlerCopy);
    handler = v10->_handler;
    v10->_handler = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = PKPaymentPreferenceAddListItem;
  v4 = [(PKPaymentPreferenceListItem *)&v8 copyWithZone:zone];
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
  configuration = [(PKPaymentPreferenceListItem *)&v9 configuration];
  buttonTextColor = self->_buttonTextColor;
  if (buttonTextColor)
  {
    systemBlueColor = buttonTextColor;
  }

  else
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  v6 = systemBlueColor;
  textProperties = [configuration textProperties];
  [textProperties setColor:v6];

  return configuration;
}

- (id)_text
{
  sectionPreference = [(PKPaymentPreferenceListItem *)self sectionPreference];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = 0;
    goto LABEL_10;
  }

  sectionPreference2 = [(PKPaymentPreferenceListItem *)self sectionPreference];
  v6 = sectionPreference2;
  type = self->_type;
  if (type == 1)
  {
    addExistingTitle = [sectionPreference2 addExistingTitle];
  }

  else
  {
    if (type)
    {
      v9 = 0;
      goto LABEL_9;
    }

    addExistingTitle = [sectionPreference2 addNewTitle];
  }

  v9 = addExistingTitle;
LABEL_9:

LABEL_10:

  return v9;
}

@end