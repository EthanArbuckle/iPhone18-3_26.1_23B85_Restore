@interface PKCurrencyAmountSelectorOption
- (BOOL)isEqual:(id)a3;
- (PKCurrencyAmountSelectorOption)initWithCurrencyAmount:(id)a3 displayValue:(id)a4 customOption:(BOOL)a5 selected:(BOOL)a6;
- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation PKCurrencyAmountSelectorOption

- (PKCurrencyAmountSelectorOption)initWithCurrencyAmount:(id)a3 displayValue:(id)a4 customOption:(BOOL)a5 selected:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = PKCurrencyAmountSelectorOption;
  v13 = [(PKCurrencyAmountSelectorOption *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_currencyAmount, a3);
    v15 = [v12 copy];
    displayValue = v14->_displayValue;
    v14->_displayValue = v15;

    v14->_isCustomOption = a5;
    v14->_selected = a6;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
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

- (int64_t)compare:(id)a3
{
  currencyAmount = self->_currencyAmount;
  v4 = a3;
  v5 = [(PKCurrencyAmount *)currencyAmount amount];
  v6 = [v4 currencyAmount];

  v7 = [v6 amount];

  if (v5 == v7)
  {
    v8 = 0;
  }

  else if (v5)
  {
    if (v7)
    {
      v8 = [v5 compare:v7];
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

- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() cellReuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [v9 defaultContentConfiguration];
  v11 = [(PKCurrencyAmountSelectorOption *)self displayValue];
  [v10 setText:v11];

  [v9 setContentConfiguration:v10];
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