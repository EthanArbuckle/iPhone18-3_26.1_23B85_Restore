@interface ICContentKeyStoreEntry
- (ICContentKeyStoreEntry)initWithDictionaryRepresentation:(id)a3;
- (ICContentKeyStoreEntry)initWithIdentifier:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation ICContentKeyStoreEntry

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  keyData = self->_keyData;
  if (keyData)
  {
    [v3 setObject:keyData forKeyedSubscript:@"key"];
  }

  renewalDate = self->_renewalDate;
  if (renewalDate)
  {
    v6 = MEMORY[0x1E696AD98];
    [(NSDate *)renewalDate timeIntervalSinceReferenceDate];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"renewalDate"];
  }

  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    v9 = MEMORY[0x1E696AD98];
    [(NSDate *)expirationDate timeIntervalSinceReferenceDate];
    v10 = [v9 numberWithDouble:?];
    [v3 setObject:v10 forKeyedSubscript:@"expirationDate"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_failureCount];
  [v3 setObject:v11 forKeyedSubscript:@"failureCount"];

  [v3 setObject:self->_accountDSID forKeyedSubscript:@"dsid"];
  [v3 setObject:self->_adamID forKeyedSubscript:@"adamID"];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_keyServerProtocolType];
  [v3 setObject:v12 forKeyedSubscript:@"keyServerProtocolType"];

  v13 = [v3 copy];

  return v13;
}

- (ICContentKeyStoreEntry)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  v6 = [(ICContentKeyStoreEntry *)self initWithIdentifier:v5];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"key"];
    keyData = v6->_keyData;
    v6->_keyData = v7;

    v9 = MEMORY[0x1E695DF00];
    v10 = [v4 objectForKeyedSubscript:@"renewalDate"];
    [v10 doubleValue];
    v11 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    renewalDate = v6->_renewalDate;
    v6->_renewalDate = v11;

    v13 = [v4 objectForKeyedSubscript:@"expirationDate"];
    v14 = v13;
    if (v13)
    {
      v15 = MEMORY[0x1E695DF00];
      [v13 doubleValue];
      v16 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
      expirationDate = v6->_expirationDate;
      v6->_expirationDate = v16;
    }

    v18 = [v4 objectForKeyedSubscript:@"failureCount"];
    v6->_failureCount = [v18 unsignedIntValue];

    v19 = [v4 objectForKeyedSubscript:@"dsid"];
    accountDSID = v6->_accountDSID;
    v6->_accountDSID = v19;

    v21 = [v4 objectForKeyedSubscript:@"adamID"];
    adamID = v6->_adamID;
    v6->_adamID = v21;

    v23 = [v4 objectForKeyedSubscript:@"keyServerProtocolType"];
    v6->_keyServerProtocolType = [v23 integerValue];
  }

  return v6;
}

- (ICContentKeyStoreEntry)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICContentKeyStoreEntry;
  v6 = [(ICContentKeyStoreEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

@end