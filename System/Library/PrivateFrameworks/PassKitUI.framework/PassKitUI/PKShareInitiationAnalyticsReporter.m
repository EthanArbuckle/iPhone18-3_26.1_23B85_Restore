@interface PKShareInitiationAnalyticsReporter
- (id)_initWithPass:(id)a3 sessionToken:(id)a4 reuseExistingSession:(BOOL)a5;
- (void)_sendEventForPage:(unint64_t)a3 button:(unint64_t)a4 eventType:(id)a5 specifics:(id)a6;
- (void)sendAuthenticationEventForSuccess:(BOOL)a3 specifics:(id)a4;
- (void)sendDoneEventWithDidShare:(BOOL)a3 error:(id)a4 specifics:(id)a5;
- (void)sendEvent:(id)a3;
@end

@implementation PKShareInitiationAnalyticsReporter

- (id)_initWithPass:(id)a3 sessionToken:(id)a4 reuseExistingSession:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  if (v9)
  {
    v10 = *MEMORY[0x1E69BB708];
    v15.receiver = self;
    v15.super_class = PKShareInitiationAnalyticsReporter;
    v11 = [(PKSharingAnalyticsReporter *)&v15 initWithSubject:v10 sessionToken:a4 reuseExistingSession:v5];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_pass, a3);
    }

    self = v12;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = [(PKPass *)self->_pass secureElementPass];
  [v5 cardType];
  v6 = PKPaymentCardTypeToString();
  v7 = [(__CFString *)v6 lowercaseString];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

  v8 = self->_pass;
  if ([(PKPass *)v8 passType]== PKPassTypeSecureElement)
  {
    v9 = [(PKPass *)v8 secureElementPass];
    v10 = [v9 cardType];
    if (v10 <= 4)
    {
      v6 = **(&unk_1E8012548 + v10);
    }
  }

  else
  {
    v6 = @"other";
  }

  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
  v11 = [(PKPass *)self->_pass secureElementPass];
  if (![v11 isIdentityPass])
  {
    if (![v11 isAccessPass])
    {
      goto LABEL_20;
    }

    v14 = [v11 accessType];
    v15 = [v11 accessReportingType];
    v16 = v15;
    if (v14 <= 2)
    {
      switch(v14)
      {
        case 0:
          v18 = @"general";
          if (v15)
          {
            v18 = v15;
          }

          goto LABEL_35;
        case 1:
          v17 = @"hospitality";
          goto LABEL_39;
        case 2:
          v17 = @"corporate";
LABEL_39:

          goto LABEL_40;
      }
    }

    else
    {
      if (v14 <= 4)
      {
        if (v14 == 3)
        {
          v17 = @"singlefamily";
        }

        else
        {
          v17 = @"cars";
        }

        goto LABEL_39;
      }

      if (v14 == 5)
      {
        v17 = @"multifamily";
        goto LABEL_39;
      }

      if (v14 == 6)
      {
        v17 = @"urbanmobility";
        goto LABEL_39;
      }
    }

    v18 = *MEMORY[0x1E69BB3A8];
LABEL_35:
    v17 = v18;
    goto LABEL_39;
  }

  v12 = [v11 identityType];
  if (v12 <= 2)
  {
    if (v12 == 1)
    {
      v13 = MEMORY[0x1E69BA648];
      goto LABEL_27;
    }

    if (v12 == 2)
    {
      v13 = MEMORY[0x1E69BB2C8];
      goto LABEL_27;
    }

LABEL_20:
    v13 = MEMORY[0x1E69BB3A8];
    goto LABEL_27;
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      v13 = MEMORY[0x1E69BA8E0];
      goto LABEL_27;
    }

    if (v12 != 5)
    {
      goto LABEL_20;
    }
  }

  v13 = MEMORY[0x1E69BACB0];
LABEL_27:
  v17 = *v13;
LABEL_40:

  [v4 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69BAC88]];
  v19.receiver = self;
  v19.super_class = PKShareInitiationAnalyticsReporter;
  [(PKSharingAnalyticsReporter *)&v19 sendEvent:v4];
}

- (void)sendAuthenticationEventForSuccess:(BOOL)a3 specifics:(id)a4
{
  v4 = a3;
  v6 = [a4 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v10 = v8;

  if (v4)
  {
    v9 = @"success";
  }

  else
  {
    v9 = @"failure";
  }

  [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69BB228]];
  [(PKShareInitiationAnalyticsReporter *)self _sendEventForPage:3 button:0 eventType:*MEMORY[0x1E69BA760] specifics:v10];
}

- (void)sendDoneEventWithDidShare:(BOOL)a3 error:(id)a4 specifics:(id)a5
{
  v6 = a3;
  v15 = a4;
  v8 = [a5 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69BB288];
  if (v6)
  {
    v13 = MEMORY[0x1E69BB290];
  }

  else
  {
    if (v15)
    {
      [v11 setObject:*MEMORY[0x1E69BB280] forKeyedSubscript:v12];
      v14 = ErrorTypeFromError(v15);
      [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69BA678]];

      goto LABEL_10;
    }

    v13 = MEMORY[0x1E69BB278];
  }

  [v11 setObject:*v13 forKeyedSubscript:v12];
LABEL_10:
  [(PKShareInitiationAnalyticsReporter *)self _sendEventForPage:4 button:0 eventType:*MEMORY[0x1E69BA818] specifics:v11];
}

- (void)_sendEventForPage:(unint64_t)a3 button:(unint64_t)a4 eventType:(id)a5 specifics:(id)a6
{
  v10 = a5;
  v11 = [a6 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v20 = v13;

  [v20 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69BA680]];
  v14 = *MEMORY[0x1E69BABE8];
  v15 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69BABE8]];

  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = a3 > 4;
  }

  if (!v16)
  {
    [v20 setObject:off_1E8012650[a3] forKeyedSubscript:v14];
  }

  v17 = *MEMORY[0x1E69BA440];
  v18 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69BA440]];

  if (!v18)
  {
    if (a4 == 1)
    {
      v19 = MEMORY[0x1E69BA468];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_15;
      }

      v19 = MEMORY[0x1E69BA500];
    }

    [v20 setObject:*v19 forKeyedSubscript:v17];
  }

LABEL_15:
  [(PKShareInitiationAnalyticsReporter *)self sendEvent:v20];
}

@end