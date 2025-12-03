@interface ICDelegateAccountStoreReader
- (ICDelegateAccountStoreReader)initWithConnection:(id)connection;
- (NSDate)lastExpirationPruningDate;
- (id)_tokenWithSQLiteRow:(id)row;
- (id)_userIdentityWithSQLiteRow:(id)row;
- (id)identityPropertiesForUserIdentity:(id)identity;
- (id)tokenForUserIdentity:(id)identity;
- (int64_t)overestimatedNumberOfTokens;
- (void)_enumerateQueryResults:(id)results usingBlock:(id)block;
- (void)enumerateDelegationUUIDsForUserIdentity:(id)identity usingBlock:(id)block;
- (void)enumerateTokensUsingBlock:(id)block;
- (void)enumerateTokensWithType:(int64_t)type usingBlock:(id)block;
- (void)invalidate;
@end

@implementation ICDelegateAccountStoreReader

- (id)_userIdentityWithSQLiteRow:(id)row
{
  v3 = [row stringForColumnName:@"account_identity"];
  v4 = [v3 length];
  if (v4)
  {
    if (v4 < 40)
    {
      v5 = strtoull([v3 UTF8String], 0, 10);
      if (v5)
      {
        v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:v5];
        v5 = [ICUserIdentity specificAccountWithDSID:v6];
      }
    }

    else
    {
      v5 = [ICUserIdentity carrierBundleWithDeviceIdentifier:v3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_tokenWithSQLiteRow:(id)row
{
  rowCopy = row;
  v4 = [rowCopy int64ForColumnName:@"type"];
  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v6 = 1;
  }

  v7 = [rowCopy dataForColumnName:@"data"];
  if ([v7 length])
  {
    v8 = [rowCopy numberForColumnName:@"expiration_date"];
    v9 = v8;
    if (v8)
    {
      [v8 doubleValue];
      v10 = [ICDelegateAccountStoreSchema dateForValue:?];
    }

    else
    {
      v10 = 0;
    }

    v5 = [[ICDelegateToken alloc] initWithType:v6 data:v7 expirationDate:v10];
  }

  else
  {
    v5 = 0;
  }

LABEL_12:

  return v5;
}

- (void)_enumerateQueryResults:(id)results usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__ICDelegateAccountStoreReader__enumerateQueryResults_usingBlock___block_invoke;
  v8[3] = &unk_1E7BF9530;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [results enumerateRowsUsingBlock:v8];
}

void __66__ICDelegateAccountStoreReader__enumerateQueryResults_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v7 = [v3 _userIdentityWithSQLiteRow:v4];
    v5 = [*(a1 + 32) _tokenWithSQLiteRow:v4];

    if (v7)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (id)tokenForUserIdentity:(id)identity
{
  identityCopy = identity;
  if (!self->_isValid)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Out-of-scope transaction usage: %@", self}];
  }

  v5 = ICDelegateAccountStorePrimaryKeyForUserIdentity(identityCopy);
  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Non-concrete user identity: %@", identityCopy}];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__36971;
  v14 = __Block_byref_object_dispose__36972;
  v15 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__ICDelegateAccountStoreReader_tokenForUserIdentity___block_invoke;
  v9[3] = &unk_1E7BF9508;
  v9[4] = v5;
  v9[5] = self;
  v9[6] = &v10;
  [(ICSQLiteConnection *)connection executeQuery:@"SELECT data withResults:expiration_date, type FROM token WHERE account_identity==?", v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __53__ICDelegateAccountStoreReader_tokenForUserIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ICDelegateAccountStoreReader_tokenForUserIdentity___block_invoke_2;
  v5[3] = &unk_1E7BF94E0;
  v6 = *(a1 + 40);
  [v4 enumerateRowsUsingBlock:v5];
}

void __53__ICDelegateAccountStoreReader_tokenForUserIdentity___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = [*(a1 + 32) _tokenWithSQLiteRow:a2];
    if (([v6 isExpired] & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    }
  }

  *a4 = 1;
}

- (int64_t)overestimatedNumberOfTokens
{
  if (!self->_isValid)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Out-of-scope transaction usage: %@", self}];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  connection = self->_connection;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__ICDelegateAccountStoreReader_overestimatedNumberOfTokens__block_invoke;
  v6[3] = &unk_1E7BF9D48;
  v6[4] = &v7;
  [(ICSQLiteConnection *)connection executeQuery:@"SELECT count(account_identity) FROM token" withResults:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __59__ICDelegateAccountStoreReader_overestimatedNumberOfTokens__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 firstInt64Value];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (NSDate)lastExpirationPruningDate
{
  if (!self->_isValid)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Out-of-scope transaction usage: %@", self}];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__36971;
  v11 = __Block_byref_object_dispose__36972;
  v12 = 0;
  connection = self->_connection;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__ICDelegateAccountStoreReader_lastExpirationPruningDate__block_invoke;
  v6[3] = &unk_1E7BF9D48;
  v6[4] = &v7;
  [(ICSQLiteConnection *)connection executeQuery:@"SELECT value FROM metadata WHERE key==?" withResults:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __57__ICDelegateAccountStoreReader_lastExpirationPruningDate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindString:@"expiration_prune" atPosition:1];
  v8 = [v3 firstNumberValue];

  v4 = v8;
  if (v8)
  {
    [v8 doubleValue];
    v5 = [ICDelegateAccountStoreSchema dateForValue:?];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }
}

- (id)identityPropertiesForUserIdentity:(id)identity
{
  identityCopy = identity;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__36971;
  v18 = __Block_byref_object_dispose__36972;
  v19 = 0;
  if (!self->_isValid)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Out-of-scope transaction usage: %@", self}];
  }

  v5 = ICDelegateAccountStorePrimaryKeyForUserIdentity(identityCopy);
  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Non-concrete user identity: %@", identityCopy}];
  }

  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__ICDelegateAccountStoreReader_identityPropertiesForUserIdentity___block_invoke;
  v10[3] = &unk_1E7BF94B0;
  v10[4] = v5;
  v13 = &v14;
  v7 = identityCopy;
  v11 = v7;
  selfCopy = self;
  [(ICSQLiteConnection *)connection executeQuery:@"SELECT account.storefront AS storefront withResults:token.data AS data, token.expiration_date AS expiration_date, token.type AS type FROM account LEFT OUTER JOIN token ON account.identity==token.account_identity WHERE account.identity==?", v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __66__ICDelegateAccountStoreReader_identityPropertiesForUserIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__ICDelegateAccountStoreReader_identityPropertiesForUserIdentity___block_invoke_2;
  v7[3] = &unk_1E7BF9488;
  v10 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v4 enumerateRowsUsingBlock:v7];
}

void __66__ICDelegateAccountStoreReader_identityPropertiesForUserIdentity___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = a2;
    v7 = objc_alloc_init(ICMutableUserIdentityProperties);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(*(a1 + 48) + 8) + 40);
    v11 = [*(a1 + 32) deviceIdentifier];
    [v10 setCarrierBundleDeviceIdentifier:v11];

    [*(*(*(a1 + 48) + 8) + 40) setDelegated:1];
    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = [*(a1 + 32) DSID];
    [v12 setDSID:v13];

    v14 = *(*(*(a1 + 48) + 8) + 40);
    v15 = [v6 stringForColumnName:@"storefront"];
    [v14 setStorefrontIdentifier:v15];

    v16 = [*(a1 + 40) _tokenWithSQLiteRow:v6];

    if (v16 && ([v16 isExpired] & 1) == 0)
    {
      [*(*(*(a1 + 48) + 8) + 40) setDelegateToken:v16];
    }
  }

  *a4 = 1;
}

- (void)enumerateTokensWithType:(int64_t)type usingBlock:(id)block
{
  blockCopy = block;
  if (!self->_isValid)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Out-of-scope transaction usage: %@", self}];
  }

  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__ICDelegateAccountStoreReader_enumerateTokensWithType_usingBlock___block_invoke;
  v9[3] = &unk_1E7BF9460;
  v10 = blockCopy;
  typeCopy = type;
  v9[4] = self;
  v8 = blockCopy;
  [(ICSQLiteConnection *)connection executeQuery:@"SELECT data withResults:expiration_date, type, account_identity FROM token WHERE (type == ?) AND ((expiration_date IS NULL) OR (expiration_date >= ?))", v9];
}

void __67__ICDelegateAccountStoreReader_enumerateTokensWithType_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v8 = a2;
  v4 = [v3 date];
  [ICDelegateAccountStoreSchema valueForDate:v4];
  v6 = v5;

  if (*(a1 + 48) == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v8 bindInt64:v7 atPosition:1];
  [v8 bindDouble:2 atPosition:v6];
  [*(a1 + 32) _enumerateQueryResults:v8 usingBlock:*(a1 + 40)];
}

- (void)enumerateTokensUsingBlock:(id)block
{
  blockCopy = block;
  if (!self->_isValid)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Out-of-scope transaction usage: %@", self}];
  }

  connection = self->_connection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__ICDelegateAccountStoreReader_enumerateTokensUsingBlock___block_invoke;
  v7[3] = &unk_1E7BF9438;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(ICSQLiteConnection *)connection executeQuery:@"SELECT data withResults:expiration_date, type, account_identity FROM token WHERE (expiration_date IS NULL) OR (expiration_date >= ?)", v7];
}

void __58__ICDelegateAccountStoreReader_enumerateTokensUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v7 = a2;
  v4 = [v3 date];
  [ICDelegateAccountStoreSchema valueForDate:v4];
  v6 = v5;

  [v7 bindDouble:1 atPosition:v6];
  [*(a1 + 32) _enumerateQueryResults:v7 usingBlock:*(a1 + 40)];
}

- (void)enumerateDelegationUUIDsForUserIdentity:(id)identity usingBlock:(id)block
{
  identityCopy = identity;
  blockCopy = block;
  if (!self->_isValid)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Out-of-scope transaction usage: %@", self}];
  }

  v8 = ICDelegateAccountStorePrimaryKeyForUserIdentity(identityCopy);
  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Non-concrete user identity: %@", identityCopy}];
  }

  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__ICDelegateAccountStoreReader_enumerateDelegationUUIDsForUserIdentity_usingBlock___block_invoke;
  v11[3] = &unk_1E7BF9438;
  v11[4] = v8;
  v12 = blockCopy;
  v10 = blockCopy;
  [(ICSQLiteConnection *)connection executeQuery:@"SELECT uuid FROM delegation_uuid WHERE user_identity==?" withResults:v11];
}

void __83__ICDelegateAccountStoreReader_enumerateDelegationUUIDsForUserIdentity_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__ICDelegateAccountStoreReader_enumerateDelegationUUIDsForUserIdentity_usingBlock___block_invoke_2;
  v5[3] = &unk_1E7BF9410;
  v6 = *(a1 + 40);
  [v4 enumerateRowsUsingBlock:v5];
}

void __83__ICDelegateAccountStoreReader_enumerateDelegationUUIDsForUserIdentity_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 stringForColumnName:@"uuid"];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)invalidate
{
  connection = self->_connection;
  self->_connection = 0;

  self->_isValid = 0;
}

- (ICDelegateAccountStoreReader)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = ICDelegateAccountStoreReader;
  v6 = [(ICDelegateAccountStoreReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v7->_isValid = 1;
  }

  return v7;
}

@end