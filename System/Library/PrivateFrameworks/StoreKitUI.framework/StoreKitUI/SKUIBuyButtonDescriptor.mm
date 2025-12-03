@interface SKUIBuyButtonDescriptor
- (BOOL)canPerformLocalActionWithItemState:(id)state;
- (BOOL)canPersonalizeUsingItemState:(id)state;
- (void)setButtonText:(id)text;
- (void)setConfirmationText:(id)text;
- (void)setStoreIdentifier:(id)identifier;
- (void)setVariantIdentifier:(id)identifier;
@end

@implementation SKUIBuyButtonDescriptor

- (void)setButtonText:(id)text
{
  if (self->_buttonText != text)
  {
    v5 = [text copy];
    buttonText = self->_buttonText;
    self->_buttonText = v5;

    MEMORY[0x2821F96F8](v5, buttonText);
  }
}

- (void)setConfirmationText:(id)text
{
  if (self->_confirmationText != text)
  {
    v5 = [text copy];
    confirmationText = self->_confirmationText;
    self->_confirmationText = v5;

    MEMORY[0x2821F96F8](v5, confirmationText);
  }
}

- (void)setStoreIdentifier:(id)identifier
{
  if (self->_storeIdentifier != identifier)
  {
    v5 = [identifier copy];
    storeIdentifier = self->_storeIdentifier;
    self->_storeIdentifier = v5;

    MEMORY[0x2821F96F8](v5, storeIdentifier);
  }
}

- (void)setVariantIdentifier:(id)identifier
{
  if (self->_variantIdentifier != identifier)
  {
    v5 = [identifier copy];
    variantIdentifier = self->_variantIdentifier;
    self->_variantIdentifier = v5;

    MEMORY[0x2821F96F8](v5, variantIdentifier);
  }
}

- (BOOL)canPersonalizeUsingItemState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self->_buttonType <= 3uLL && (itemIdentifier = self->_itemIdentifier, [stateCopy itemIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "longLongValue"), v7, itemIdentifier == v8) && ((storeIdentifier = self->_storeIdentifier) == 0 || (objc_msgSend(v5, "storeIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[SKUIStoreIdentifier isEqual:](storeIdentifier, "isEqual:", v10), v10, v11)))
  {
    variantIdentifier = [v5 variantIdentifier];
    variantIdentifier2 = [(SKUIBuyButtonDescriptor *)self variantIdentifier];
    v14 = variantIdentifier2;
    v15 = 1;
    if (variantIdentifier && variantIdentifier2)
    {
      v15 = [variantIdentifier isEqualToString:variantIdentifier2];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)canPerformLocalActionWithItemState:(id)state
{
  stateCopy = state;
  if ([(SKUIBuyButtonDescriptor *)self canPersonalizeUsingItemState:stateCopy])
  {
    buttonType = self->_buttonType;
    v6 = (buttonType != 2) ^ [stateCopy activeStateIsPreview];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end