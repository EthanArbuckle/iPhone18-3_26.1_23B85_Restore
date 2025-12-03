@interface PKShareRedemptionAnalyticsReporter
- (PKShareRedemptionAnalyticsReporter)initWithSessionToken:(id)token;
- (void)_sendEventForPage:(unint64_t)page button:(unint64_t)button eventType:(id)type specifics:(id)specifics;
- (void)sendAuthenticationEventForSuccess:(BOOL)success specifics:(id)specifics;
- (void)sendEvent:(id)event;
- (void)sendEventForPage:(unint64_t)page error:(id)error specifics:(id)specifics;
@end

@implementation PKShareRedemptionAnalyticsReporter

- (PKShareRedemptionAnalyticsReporter)initWithSessionToken:(id)token
{
  v4 = *MEMORY[0x1E69BB700];
  v6.receiver = self;
  v6.super_class = PKShareRedemptionAnalyticsReporter;
  return [(PKSharingAnalyticsReporter *)&v6 initWithSubject:v4 sessionToken:token reuseExistingSession:0];
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  secureElementPass = [0 secureElementPass];
  isIdentityPass = [secureElementPass isIdentityPass];

  if (isIdentityPass)
  {
    v7 = @"identity";
  }

  else
  {
    v7 = @"access";
  }

  [eventCopy setObject:v7 forKeyedSubscript:*MEMORY[0x1E69BACA8]];
  secureElementPass2 = [0 secureElementPass];
  isIdentityPass2 = [secureElementPass2 isIdentityPass];

  if (isIdentityPass2)
  {
    v10 = @"identity";
  }

  else
  {
    v10 = @"access";
  }

  [eventCopy setObject:v10 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
  accessPassType = self->_accessPassType;
  if (accessPassType >= 7)
  {
    v12 = *MEMORY[0x1E69BB3A8];
  }

  else
  {
    v12 = off_1E8012678[accessPassType];
  }

  [eventCopy setObject:v12 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

  v13.receiver = self;
  v13.super_class = PKShareRedemptionAnalyticsReporter;
  [(PKSharingAnalyticsReporter *)&v13 sendEvent:eventCopy];
}

- (void)sendEventForPage:(unint64_t)page error:(id)error specifics:(id)specifics
{
  errorCopy = error;
  v9 = [specifics mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v13 = v11;

  v12 = ErrorTypeFromError(errorCopy);

  [v13 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69BA678]];
  [(PKShareRedemptionAnalyticsReporter *)self _sendEventForPage:page button:0 eventType:*MEMORY[0x1E69BA818] specifics:v13];
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
  [(PKShareRedemptionAnalyticsReporter *)self _sendEventForPage:1 button:0 eventType:*MEMORY[0x1E69BA760] specifics:v10];
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
    v16 = page > 2;
  }

  if (!v16)
  {
    [v20 setObject:off_1E80126B0[page] forKeyedSubscript:v14];
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
  [(PKShareRedemptionAnalyticsReporter *)self sendEvent:v20];
}

@end