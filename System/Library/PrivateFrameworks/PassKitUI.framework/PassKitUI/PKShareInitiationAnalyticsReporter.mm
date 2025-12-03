@interface PKShareInitiationAnalyticsReporter
- (id)_initWithPass:(id)pass sessionToken:(id)token reuseExistingSession:(BOOL)session;
- (void)_sendEventForPage:(unint64_t)page button:(unint64_t)button eventType:(id)type specifics:(id)specifics;
- (void)sendAuthenticationEventForSuccess:(BOOL)success specifics:(id)specifics;
- (void)sendDoneEventWithDidShare:(BOOL)share error:(id)error specifics:(id)specifics;
- (void)sendEvent:(id)event;
@end

@implementation PKShareInitiationAnalyticsReporter

- (id)_initWithPass:(id)pass sessionToken:(id)token reuseExistingSession:(BOOL)session
{
  sessionCopy = session;
  passCopy = pass;
  if (passCopy)
  {
    v10 = *MEMORY[0x1E69BB708];
    v15.receiver = self;
    v15.super_class = PKShareInitiationAnalyticsReporter;
    v11 = [(PKSharingAnalyticsReporter *)&v15 initWithSubject:v10 sessionToken:token reuseExistingSession:sessionCopy];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_pass, pass);
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  secureElementPass = [(PKPass *)self->_pass secureElementPass];
  [secureElementPass cardType];
  v6 = PKPaymentCardTypeToString();
  lowercaseString = [(__CFString *)v6 lowercaseString];
  [eventCopy setObject:lowercaseString forKeyedSubscript:*MEMORY[0x1E69BACA8]];

  v8 = self->_pass;
  if ([(PKPass *)v8 passType]== PKPassTypeSecureElement)
  {
    secureElementPass2 = [(PKPass *)v8 secureElementPass];
    cardType = [secureElementPass2 cardType];
    if (cardType <= 4)
    {
      v6 = **(&unk_1E8012548 + cardType);
    }
  }

  else
  {
    v6 = @"other";
  }

  [eventCopy setObject:v6 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
  secureElementPass3 = [(PKPass *)self->_pass secureElementPass];
  if (![secureElementPass3 isIdentityPass])
  {
    if (![secureElementPass3 isAccessPass])
    {
      goto LABEL_20;
    }

    accessType = [secureElementPass3 accessType];
    accessReportingType = [secureElementPass3 accessReportingType];
    v16 = accessReportingType;
    if (accessType <= 2)
    {
      switch(accessType)
      {
        case 0:
          v18 = @"general";
          if (accessReportingType)
          {
            v18 = accessReportingType;
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
      if (accessType <= 4)
      {
        if (accessType == 3)
        {
          v17 = @"singlefamily";
        }

        else
        {
          v17 = @"cars";
        }

        goto LABEL_39;
      }

      if (accessType == 5)
      {
        v17 = @"multifamily";
        goto LABEL_39;
      }

      if (accessType == 6)
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

  identityType = [secureElementPass3 identityType];
  if (identityType <= 2)
  {
    if (identityType == 1)
    {
      v13 = MEMORY[0x1E69BA648];
      goto LABEL_27;
    }

    if (identityType == 2)
    {
      v13 = MEMORY[0x1E69BB2C8];
      goto LABEL_27;
    }

LABEL_20:
    v13 = MEMORY[0x1E69BB3A8];
    goto LABEL_27;
  }

  if (identityType != 3)
  {
    if (identityType == 4)
    {
      v13 = MEMORY[0x1E69BA8E0];
      goto LABEL_27;
    }

    if (identityType != 5)
    {
      goto LABEL_20;
    }
  }

  v13 = MEMORY[0x1E69BACB0];
LABEL_27:
  v17 = *v13;
LABEL_40:

  [eventCopy setObject:v17 forKeyedSubscript:*MEMORY[0x1E69BAC88]];
  v19.receiver = self;
  v19.super_class = PKShareInitiationAnalyticsReporter;
  [(PKSharingAnalyticsReporter *)&v19 sendEvent:eventCopy];
}

- (void)sendAuthenticationEventForSuccess:(BOOL)success specifics:(id)specifics
{
  successCopy = success;
  v6 = [specifics mutableCopy];
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

  if (successCopy)
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

- (void)sendDoneEventWithDidShare:(BOOL)share error:(id)error specifics:(id)specifics
{
  shareCopy = share;
  errorCopy = error;
  v8 = [specifics mutableCopy];
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
  if (shareCopy)
  {
    v13 = MEMORY[0x1E69BB290];
  }

  else
  {
    if (errorCopy)
    {
      [v11 setObject:*MEMORY[0x1E69BB280] forKeyedSubscript:v12];
      v14 = ErrorTypeFromError(errorCopy);
      [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69BA678]];

      goto LABEL_10;
    }

    v13 = MEMORY[0x1E69BB278];
  }

  [v11 setObject:*v13 forKeyedSubscript:v12];
LABEL_10:
  [(PKShareInitiationAnalyticsReporter *)self _sendEventForPage:4 button:0 eventType:*MEMORY[0x1E69BA818] specifics:v11];
}

- (void)_sendEventForPage:(unint64_t)page button:(unint64_t)button eventType:(id)type specifics:(id)specifics
{
  typeCopy = type;
  v11 = [specifics mutableCopy];
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

  [v20 setObject:typeCopy forKeyedSubscript:*MEMORY[0x1E69BA680]];
  v14 = *MEMORY[0x1E69BABE8];
  v15 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69BABE8]];

  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = page > 4;
  }

  if (!v16)
  {
    [v20 setObject:off_1E8012650[page] forKeyedSubscript:v14];
  }

  v17 = *MEMORY[0x1E69BA440];
  v18 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69BA440]];

  if (!v18)
  {
    if (button == 1)
    {
      v19 = MEMORY[0x1E69BA468];
    }

    else
    {
      if (button != 2)
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