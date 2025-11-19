@interface PKCurrencyAmountSelectorOptionProvider
- (PKCurrencyAmountSelectorOptionProvider)initWithType:(int64_t)a3 accountUser:(id)a4 currencyCode:(id)a5;
- (id)_optionWithAmount:(id)a3 isCustom:(BOOL)a4 selected:(BOOL)a5;
- (void)_updateOptions;
- (void)insertCustomAmount:(id)a3;
- (void)removeCustomAmount:(id)a3;
- (void)selectAmount:(id)a3;
@end

@implementation PKCurrencyAmountSelectorOptionProvider

- (PKCurrencyAmountSelectorOptionProvider)initWithType:(int64_t)a3 accountUser:(id)a4 currencyCode:(id)a5
{
  v29[4] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = PKCurrencyAmountSelectorOptionProvider;
  v11 = [(PKCurrencyAmountSelectorOptionProvider *)&v28 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_accountUser, a4);
    v13 = [v10 copy];
    currencyCode = v12->_currencyCode;
    v12->_currencyCode = v13;

    v15 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"25"];
    v29[0] = v15;
    v16 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"50"];
    v29[1] = v16;
    v17 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"100"];
    v29[2] = v17;
    v18 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"250"];
    v29[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

    defaultAmounts = v12->_defaultAmounts;
    v12->_defaultAmounts = v19;

    v21 = PKSharedCacheGetCustomOptions();
    customAmounts = v12->_customAmounts;
    v12->_customAmounts = v21;

    type = v12->_type;
    if (type == 2)
    {
      v24 = [(PKAccountUser *)v12->_accountUser notificationSettings];
      v25 = [v24 transactionNotificationThreshold];
    }

    else if (type == 1)
    {
      v24 = [(PKAccountUser *)v12->_accountUser notificationSettings];
      v25 = [v24 monthlySpendNotificationThreshold];
    }

    else
    {
      if (type)
      {
LABEL_11:
        [(PKCurrencyAmountSelectorOptionProvider *)v12 _updateOptions];
        goto LABEL_12;
      }

      v24 = [(PKAccountUser *)v12->_accountUser preferences];
      if (![v24 transactionSpendLimitEnabled])
      {
LABEL_10:

        goto LABEL_11;
      }

      v25 = [v24 transactionSpendLimitAmount];
    }

    amount = v12->_amount;
    v12->_amount = v25;

    goto LABEL_10;
  }

LABEL_12:

  return v12;
}

- (void)insertCustomAmount:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_amount, a3);
    v6 = v11;
    v7 = PKSharedCacheGetCustomOptions();
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    v8 = [v7 arrayByAddingObject:v6];

    PKSharedCacheSetCustomOptions(v8);
    v9 = PKSharedCacheGetCustomOptions();
    customAmounts = self->_customAmounts;
    self->_customAmounts = v9;

    [(PKCurrencyAmountSelectorOptionProvider *)self _updateOptions];
    v5 = v11;
  }
}

- (void)removeCustomAmount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    if (PKEqualObjects())
    {
      amount = self->_amount;
      self->_amount = 0;
    }

    v6 = v11;
    v7 = PKSharedCacheGetCustomOptions();
    v8 = [v7 pk_arrayByRemovingObject:v6];

    PKSharedCacheSetCustomOptions(v8);
    v9 = PKSharedCacheGetCustomOptions();
    customAmounts = self->_customAmounts;
    self->_customAmounts = v9;

    [(PKCurrencyAmountSelectorOptionProvider *)self _updateOptions];
    v4 = v11;
  }
}

- (void)selectAmount:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_amount, a3);
    [(PKCurrencyAmountSelectorOptionProvider *)self _updateOptions];
  }
}

- (id)_optionWithAmount:(id)a3 isCustom:(BOOL)a4 selected:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (v8)
  {
    v9 = PKCurrencyAmountMake();
    v10 = v9;
    type = self->_type;
    if (type == 2 || type == 1)
    {
      v15 = [v9 formattedStringValue];
      v12 = PKLocalizedFeatureString();
    }

    else if (type)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v9 formattedStringValue];
    }

    v13 = [[PKCurrencyAmountSelectorOption alloc] initWithCurrencyAmount:v10 displayValue:v12 customOption:v6 selected:v5];
  }

  else
  {
    if (self->_type > 2uLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = PKLocalizedFeatureString();
    }

    v13 = [[PKCurrencyAmountSelectorOption alloc] initWithCurrencyAmount:0 displayValue:v10 customOption:v6 selected:v5];
  }

  return v13;
}

- (void)_updateOptions
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  defaultAmounts = self->_defaultAmounts;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__PKCurrencyAmountSelectorOptionProvider__updateOptions__block_invoke;
  v18[3] = &unk_1E801C348;
  v18[4] = self;
  v5 = [(NSArray *)defaultAmounts pk_arrayByApplyingBlock:v18];
  [v3 addObjectsFromArray:v5];

  customAmounts = self->_customAmounts;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__PKCurrencyAmountSelectorOptionProvider__updateOptions__block_invoke_2;
  v17[3] = &unk_1E801C348;
  v17[4] = self;
  v7 = [(NSArray *)customAmounts pk_arrayByApplyingBlock:v17];
  [v3 addObjectsFromArray:v7];

  v8 = [(PKCurrencyAmountSelectorOptionProvider *)self _optionWithAmount:0 isCustom:0 selected:PKEqualObjects()];
  [v3 addObject:v8];

  v9 = [v3 pk_anyObjectPassingTest:&__block_literal_global_148];

  if (!v9)
  {
    v10 = [(PKCurrencyAmountSelectorOptionProvider *)self _optionWithAmount:self->_amount isCustom:1 selected:1];
    [v3 addObject:v10];
  }

  v11 = [v3 allObjects];
  v12 = [v11 sortedArrayUsingSelector:sel_compare_];
  options = self->_options;
  self->_options = v12;

  v14 = [v3 pk_anyObjectPassingTest:&__block_literal_global_209];
  selectedOption = self->_selectedOption;
  self->_selectedOption = v14;

  optionsUpdateHandler = self->_optionsUpdateHandler;
  if (optionsUpdateHandler)
  {
    optionsUpdateHandler[2](optionsUpdateHandler, self->_options);
  }
}

id __56__PKCurrencyAmountSelectorOptionProvider__updateOptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _optionWithAmount:v3 isCustom:0 selected:PKEqualObjects()];

  return v4;
}

id __56__PKCurrencyAmountSelectorOptionProvider__updateOptions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _optionWithAmount:v3 isCustom:1 selected:PKEqualObjects()];

  return v4;
}

@end