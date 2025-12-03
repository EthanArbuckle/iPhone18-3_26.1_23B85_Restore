@interface PKCurrencyAmountSelectorOption
- (BOOL)isEqual:(id)equal;
- (PKCurrencyAmountSelectorOption)initWithCurrencyAmount:(id)amount displayValue:(id)value customOption:(BOOL)option selected:(BOOL)selected;
- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation PKCurrencyAmountSelectorOption

- (PKCurrencyAmountSelectorOption)initWithCurrencyAmount:(id)amount displayValue:(id)value customOption:(BOOL)option selected:(BOOL)selected
{
  amountCopy = amount;
  valueCopy = value;
  v18.receiver = self;
  v18.super_class = PKCurrencyAmountSelectorOption;
  v13 = [(PKCurrencyAmountSelectorOption *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_currencyAmount, amount);
    v15 = [valueCopy copy];
    displayValue = v14->_displayValue;
    v14->_displayValue = v15;

    v14->_isCustomOption = option;
    v14->_selected = selected;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        if (PKEqualObjects())
        {
          displayValue = v6->_displayValue;
          v8 = self->_displayValue;
          v9 = displayValue;
          v10 = v9;
          if (v8 == v9)
          {
          }

          else
          {
            if (!v8 || !v9)
            {

              goto LABEL_16;
            }

            v11 = [(NSString *)v8 isEqualToString:v9];

            if (!v11)
            {
              goto LABEL_16;
            }
          }

          if (self->_isCustomOption == v6->_isCustomOption)
          {
            v12 = self->_selected == v6->_selected;
LABEL_17:

            goto LABEL_18;
          }
        }

LABEL_16:
        v12 = 0;
        goto LABEL_17;
      }
    }

    v12 = 0;
  }

LABEL_18:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_currencyAmount];
  [v3 safelyAddObject:self->_displayValue];
  PKCombinedHash();
  PKIntegerHash();
  v4 = PKIntegerHash();

  return v4;
}

- (int64_t)compare:(id)compare
{
  currencyAmount = self->_currencyAmount;
  compareCopy = compare;
  amount = [(PKCurrencyAmount *)currencyAmount amount];
  currencyAmount = [compareCopy currencyAmount];

  amount2 = [currencyAmount amount];

  if (amount == amount2)
  {
    v8 = 0;
  }

  else if (amount)
  {
    if (amount2)
    {
      v8 = [amount compare:amount2];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  cellReuseIdentifier = [objc_opt_class() cellReuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:cellReuseIdentifier forIndexPath:pathCopy];

  defaultContentConfiguration = [v9 defaultContentConfiguration];
  displayValue = [(PKCurrencyAmountSelectorOption *)self displayValue];
  [defaultContentConfiguration setText:displayValue];

  [v9 setContentConfiguration:defaultContentConfiguration];
  if (self->_selected)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v9 setAccessoryType:v12];
  [v9 setAccessibilityIdentifier:*MEMORY[0x1E69B9448]];

  return v9;
}

@end