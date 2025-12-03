@interface SSKeyValueStoreSession
- (SSKeyValueStoreSession)initWithDatabase:(id)database;
- (id)copyAccountDictionaryForDomain:(id)domain;
- (id)copyDataForDomain:(id)domain key:(id)key;
- (id)copyValueForDomain:(id)domain key:(id)key;
- (id)existingEntityForDomain:(id)domain key:(id)key;
- (id)iTunesValueForKey:(id)key usedDomain:(id *)domain;
- (void)dealloc;
@end

@implementation SSKeyValueStoreSession

- (SSKeyValueStoreSession)initWithDatabase:(id)database
{
  v6.receiver = self;
  v6.super_class = SSKeyValueStoreSession;
  v4 = [(SSKeyValueStoreSession *)&v6 init];
  if (v4)
  {
    v4->_database = database;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSKeyValueStoreSession;
  [(SSKeyValueStoreSession *)&v3 dealloc];
}

- (id)copyAccountDictionaryForDomain:(id)domain
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AccountAvailableServiceTypes"];
  if (v6)
  {
    v7 = v6;
    [v5 setObject:v6 forKey:@"AccountAvailableServiceTypes"];
  }

  v8 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AccountURLBagType"];
  if (v8)
  {
    v9 = v8;
    [v5 setObject:v8 forKey:@"AccountURLBagType"];
  }

  v10 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AltDSID"];
  if (v10)
  {
    v11 = v10;
    [v5 setObject:v10 forKey:@"AltDSID"];
  }

  v12 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AppleID"];
  if (v12)
  {
    v13 = v12;
    [v5 setObject:v12 forKey:@"AppleID"];
  }

  v14 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AccountServiceTypes"];
  if (v14)
  {
    v15 = v14;
    [v5 setObject:v14 forKey:@"AccountServiceTypes"];
  }

  v16 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AccountIsNewCustomer"];
  if (v16)
  {
    v17 = v16;
    [v5 setObject:v16 forKey:@"AccountIsNewCustomer"];
  }

  v18 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AccountSocialEnabled"];
  if (v18)
  {
    v19 = v18;
    [v5 setObject:v18 forKey:@"AccountSocialEnabled"];
  }

  v20 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AccountKind"];
  if (v20)
  {
    v21 = v20;
    [v5 setObject:v20 forKey:@"AccountKind"];
  }

  v22 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AccountSource"];
  if (v22)
  {
    v23 = v22;
    [v5 setObject:v22 forKey:@"AccountSource"];
  }

  v24 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AccountStoreFront"];
  if (v24)
  {
    v25 = v24;
    [v5 setObject:v24 forKey:@"AccountStoreFront"];
  }

  v26 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"CreditDisplayString"];
  if (v26)
  {
    v27 = v26;
    [v5 setObject:v26 forKey:@"CreditDisplayString"];
  }

  v28 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"DidFallbackToPassword"];
  if (v28)
  {
    v29 = v28;
    [v5 setObject:v28 forKey:@"DidFallbackToPassword"];
  }

  v30 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"DSPersonID"];
  if (v30)
  {
    v31 = v30;
    [v5 setObject:v30 forKey:@"DSPersonID"];
  }

  v32 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"UserName"];
  if (v32)
  {
    v33 = v32;
    [v5 setObject:v32 forKey:@"UserName"];
  }

  v34 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AccountITunesPassSerial"];
  if (v34)
  {
    v35 = v34;
    [v5 setObject:v34 forKey:@"AccountITunesPassSerial"];
  }

  v36 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"FirstName"];
  if (v36)
  {
    v37 = v36;
    [v5 setObject:v36 forKey:@"FirstName"];
  }

  v38 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"LastName"];
  if (v38)
  {
    v39 = v38;
    [v5 setObject:v38 forKey:@"LastName"];
  }

  v40 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AccountFreeDownloadsPasswordSetting"];
  if (v40)
  {
    v41 = v40;
    [v5 setObject:v40 forKey:@"AccountFreeDownloadsPasswordSetting"];
  }

  v42 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AccountPaidPurchasesPasswordSetting"];
  if (v42)
  {
    v43 = v42;
    [v5 setObject:v42 forKey:@"AccountPaidPurchasesPasswordSetting"];
  }

  v44 = [(SSKeyValueStoreSession *)self copyValueForDomain:domain key:@"AccountIsManagedAppleID"];
  if (v44)
  {
    v45 = v44;
    [v5 setObject:v44 forKey:@"AccountIsManagedAppleID"];
  }

  return v5;
}

- (id)copyDataForDomain:(id)domain key:(id)key
{
  v18[1] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__57;
  v16 = __Block_byref_object_dispose__57;
  v17 = 0;
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"domain" equalToValue:domain];
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"key" equalToValue:key];
  v8 = +[SSSQLiteEntity queryWithDatabase:predicate:](SSKeyValueStoreValueEntity, "queryWithDatabase:predicate:", -[SSKeyValueStoreSession database](self, "database"), +[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAllPredicates:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v6, v7, 0}]));
  v18[0] = @"value";
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__SSKeyValueStoreSession_copyDataForDomain_key___block_invoke;
  v11[3] = &unk_1E84B1DB0;
  v11[4] = &v12;
  [v8 enumeratePersistentIDsAndProperties:v18 count:1 usingBlock:v11];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

id __48__SSKeyValueStoreSession_copyDataForDomain_key___block_invoke(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  result = *a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

- (id)copyValueForDomain:(id)domain key:(id)key
{
  result = [(SSKeyValueStoreSession *)self copyDataForDomain:domain key:key];
  if (result)
  {
    v5 = result;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:result options:0 format:0 error:0];

    return v6;
  }

  return result;
}

- (id)existingEntityForDomain:(id)domain key:(id)key
{
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"domain" equalToValue:domain];
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"key" equalToValue:key];
  v8 = +[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAllPredicates:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v6, v7, 0}]);
  database = [(SSKeyValueStoreSession *)self database];

  return [(SSSQLiteEntity *)SSKeyValueStoreValueEntity anyInDatabase:database predicate:v8];
}

- (id)iTunesValueForKey:(id)key usedDomain:(id *)domain
{
  v7 = @"com.apple.itunesstored";
  v8 = [(SSKeyValueStoreSession *)self copyValueForDomain:@"com.apple.itunesstored" key:key];
  if (!v8)
  {
    v7 = @"com.apple.mobile.iTunes.store";
    v8 = [(SSKeyValueStoreSession *)self copyValueForDomain:@"com.apple.mobile.iTunes.store" key:key];
  }

  if (domain && v8)
  {
    *domain = v7;
  }

  return v8;
}

@end