@interface TILanguageModelAdaptationContext
- (NSString)identifier;
- (TILanguageModelAdaptationContext)initWithClientIdentifier:(id)identifier andRecipientContactInfo:(id)info;
- (TILanguageModelAdaptationContext)initWithClientIdentifier:(id)identifier andRecipientRecord:(id)record;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TILanguageModelAdaptationContext

- (id)copyWithZone:(_NSZone *)zone
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
    recipientNameDigest = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", self->_appContext, recipientNameDigest];
  }

  else
  {
    recipientNameDigest = self->_appContext;
  }

  return recipientNameDigest;
}

- (TILanguageModelAdaptationContext)initWithClientIdentifier:(id)identifier andRecipientContactInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  if ([infoCopy length])
  {
    v8 = [MEMORY[0x277CBEB98] setWithObject:infoCopy];
    v9 = TIAddressBookFindRecordsMatchingRecipients(v8);
    v10 = [v9 objectForKey:infoCopy];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(TILanguageModelAdaptationContext *)self initWithClientIdentifier:identifierCopy andRecipientRecord:v10];

  return v11;
}

- (TILanguageModelAdaptationContext)initWithClientIdentifier:(id)identifier andRecipientRecord:(id)record
{
  identifierCopy = identifier;
  recordCopy = record;
  v21.receiver = self;
  v21.super_class = TILanguageModelAdaptationContext;
  v8 = [(TILanguageModelAdaptationContext *)&v21 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    appContext = v8->_appContext;
    v8->_appContext = v9;

    v8->_isOnline = 1;
    if (recordCopy)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v12 = [recordCopy objectForKey:@"compositeName"];
      if (v12)
      {
        v13 = +[TICryptographer sharedCryptographer];
        v14 = [v13 stringDigestForName:v12];
      }

      else
      {
        v14 = 0;
      }

      v15 = [recordCopy objectForKey:@"firstName"];
      if (v15)
      {
        [(NSDictionary *)v11 setObject:v15 forKey:*MEMORY[0x277D23138]];
      }

      v16 = [recordCopy objectForKey:@"lastName"];
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