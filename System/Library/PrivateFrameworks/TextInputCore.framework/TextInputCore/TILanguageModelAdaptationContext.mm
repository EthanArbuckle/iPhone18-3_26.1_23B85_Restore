@interface TILanguageModelAdaptationContext
- (NSString)identifier;
- (TILanguageModelAdaptationContext)initWithClientIdentifier:(id)a3 andRecipientContactInfo:(id)a4;
- (TILanguageModelAdaptationContext)initWithClientIdentifier:(id)a3 andRecipientRecord:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TILanguageModelAdaptationContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TILanguageModelAdaptationContext);
  v5 = [(NSString *)self->_appContext copy];
  appContext = v4->_appContext;
  v4->_appContext = v5;

  objc_storeStrong(&v4->_recipientContext, self->_recipientContext);
  v7 = [(NSString *)self->_recipientNameDigest copy];
  recipientNameDigest = v4->_recipientNameDigest;
  v4->_recipientNameDigest = v7;

  return v4;
}

- (NSString)identifier
{
  recipientNameDigest = self->_recipientNameDigest;
  if (recipientNameDigest)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", self->_appContext, recipientNameDigest];
  }

  else
  {
    v3 = self->_appContext;
  }

  return v3;
}

- (TILanguageModelAdaptationContext)initWithClientIdentifier:(id)a3 andRecipientContactInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [MEMORY[0x277CBEB98] setWithObject:v7];
    v9 = TIAddressBookFindRecordsMatchingRecipients(v8);
    v10 = [v9 objectForKey:v7];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(TILanguageModelAdaptationContext *)self initWithClientIdentifier:v6 andRecipientRecord:v10];

  return v11;
}

- (TILanguageModelAdaptationContext)initWithClientIdentifier:(id)a3 andRecipientRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = TILanguageModelAdaptationContext;
  v8 = [(TILanguageModelAdaptationContext *)&v21 init];
  if (v8)
  {
    v9 = [v6 copy];
    appContext = v8->_appContext;
    v8->_appContext = v9;

    v8->_isOnline = 1;
    if (v7)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v12 = [v7 objectForKey:@"compositeName"];
      if (v12)
      {
        v13 = +[TICryptographer sharedCryptographer];
        v14 = [v13 stringDigestForName:v12];
      }

      else
      {
        v14 = 0;
      }

      v15 = [v7 objectForKey:@"firstName"];
      if (v15)
      {
        [(NSDictionary *)v11 setObject:v15 forKey:*MEMORY[0x277D23138]];
      }

      v16 = [v7 objectForKey:@"lastName"];
      if (v16)
      {
        [(NSDictionary *)v11 setObject:v16 forKey:*MEMORY[0x277D23130]];
      }

      if (v14)
      {
        [(NSDictionary *)v11 setObject:v14 forKey:*MEMORY[0x277D23140]];
      }

      v17 = [v14 copy];
      recipientNameDigest = v8->_recipientNameDigest;
      v8->_recipientNameDigest = v17;

      recipientContext = v8->_recipientContext;
      v8->_recipientContext = v11;
    }
  }

  return v8;
}

@end