@interface PKBuinessChatApplyContext
- (PKBuinessChatApplyContext)initWithIdentifier:(id)a3 intent:(int64_t)a4;
- (id)bodyText;
- (id)groupParameters;
- (id)intentParameters;
@end

@implementation PKBuinessChatApplyContext

- (PKBuinessChatApplyContext)initWithIdentifier:(id)a3 intent:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKBuinessChatApplyContext;
  v8 = [(PKBuinessChatApplyContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_intent = a4;
  }

  return v9;
}

- (id)intentParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  intent = self->_intent;
  if (intent > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E8013348[intent];
  }

  [v3 setObject:v6 forKeyedSubscript:@"targetDialog"];
  v7 = [v4 copy];

  return v7;
}

- (id)groupParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:@"apple_pay" forKeyedSubscript:@"domain"];
  [v3 setObject:@"Wallet" forKeyedSubscript:@"origin"];
  intent = self->_intent;
  if (intent > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E8013360[intent];
  }

  [v3 setObject:v5 forKeyedSubscript:@"page"];
  v6 = [v3 copy];

  return v6;
}

- (id)bodyText
{
  intent = self->_intent;
  if (intent == 1 || intent == 2)
  {
    v3 = PKLocalizedFeatureStringWithDefaultValue();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end