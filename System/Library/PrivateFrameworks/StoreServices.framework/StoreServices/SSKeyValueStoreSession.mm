@interface SSKeyValueStoreSession
- (SSKeyValueStoreSession)initWithDatabase:(id)a3;
- (id)copyAccountDictionaryForDomain:(id)a3;
- (id)copyDataForDomain:(id)a3 key:(id)a4;
- (id)copyValueForDomain:(id)a3 key:(id)a4;
- (id)existingEntityForDomain:(id)a3 key:(id)a4;
- (id)iTunesValueForKey:(id)a3 usedDomain:(id *)a4;
- (void)dealloc;
@end

@implementation SSKeyValueStoreSession

- (SSKeyValueStoreSession)initWithDatabase:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSKeyValueStoreSession;
  v4 = [(SSKeyValueStoreSession *)&v6 init];
  if (v4)
  {
    v4->_database = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSKeyValueStoreSession;
  [(SSKeyValueStoreSession *)&v3 dealloc];
}

- (id)copyAccountDictionaryForDomain:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AccountAvailableServiceTypes"];
  if (v6)
  {
    v7 = v6;
    [v5 setObject:v6 forKey:@"AccountAvailableServiceTypes"];
  }

  v8 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AccountURLBagType"];
  if (v8)
  {
    v9 = v8;
    [v5 setObject:v8 forKey:@"AccountURLBagType"];
  }

  v10 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AltDSID"];
  if (v10)
  {
    v11 = v10;
    [v5 setObject:v10 forKey:@"AltDSID"];
  }

  v12 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AppleID"];
  if (v12)
  {
    v13 = v12;
    [v5 setObject:v12 forKey:@"AppleID"];
  }

  v14 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AccountServiceTypes"];
  if (v14)
  {
    v15 = v14;
    [v5 setObject:v14 forKey:@"AccountServiceTypes"];
  }

  v16 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AccountIsNewCustomer"];
  if (v16)
  {
    v17 = v16;
    [v5 setObject:v16 forKey:@"AccountIsNewCustomer"];
  }

  v18 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AccountSocialEnabled"];
  if (v18)
  {
    v19 = v18;
    [v5 setObject:v18 forKey:@"AccountSocialEnabled"];
  }

  v20 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AccountKind"];
  if (v20)
  {
    v21 = v20;
    [v5 setObject:v20 forKey:@"AccountKind"];
  }

  v22 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AccountSource"];
  if (v22)
  {
    v23 = v22;
    [v5 setObject:v22 forKey:@"AccountSource"];
  }

  v24 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AccountStoreFront"];
  if (v24)
  {
    v25 = v24;
    [v5 setObject:v24 forKey:@"AccountStoreFront"];
  }

  v26 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"CreditDisplayString"];
  if (v26)
  {
    v27 = v26;
    [v5 setObject:v26 forKey:@"CreditDisplayString"];
  }

  v28 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"DidFallbackToPassword"];
  if (v28)
  {
    v29 = v28;
    [v5 setObject:v28 forKey:@"DidFallbackToPassword"];
  }

  v30 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"DSPersonID"];
  if (v30)
  {
    v31 = v30;
    [v5 setObject:v30 forKey:@"DSPersonID"];
  }

  v32 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"UserName"];
  if (v32)
  {
    v33 = v32;
    [v5 setObject:v32 forKey:@"UserName"];
  }

  v34 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AccountITunesPassSerial"];
  if (v34)
  {
    v35 = v34;
    [v5 setObject:v34 forKey:@"AccountITunesPassSerial"];
  }

  v36 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"FirstName"];
  if (v36)
  {
    v37 = v36;
    [v5 setObject:v36 forKey:@"FirstName"];
  }

  v38 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"LastName"];
  if (v38)
  {
    v39 = v38;
    [v5 setObject:v38 forKey:@"LastName"];
  }

  v40 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AccountFreeDownloadsPasswordSetting"];
  if (v40)
  {
    v41 = v40;
    [v5 setObject:v40 forKey:@"AccountFreeDownloadsPasswordSetting"];
  }

  v42 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AccountPaidPurchasesPasswordSetting"];
  if (v42)
  {
    v43 = v42;
    [v5 setObject:v42 forKey:@"AccountPaidPurchasesPasswordSetting"];
  }

  v44 = [(SSKeyValueStoreSession *)self copyValueForDomain:a3 key:@"AccountIsManagedAppleID"];
  if (v44)
  {
    v45 = v44;
    [v5 setObject:v44 forKey:@"AccountIsManagedAppleID"];
  }

  return v5;
}

- (id)copyDataForDomain:(id)a3 key:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__57;
  v16 = __Block_byref_object_dispose__57;
  v17 = 0;
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"domain" equalToValue:a3];
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"key" equalToValue:a4];
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

- (id)copyValueForDomain:(id)a3 key:(id)a4
{
  result = [(SSKeyValueStoreSession *)self copyDataForDomain:a3 key:a4];
  if (result)
  {
    v5 = result;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:result options:0 format:0 error:0];

    return v6;
  }

  return result;
}

- (id)existingEntityForDomain:(id)a3 key:(id)a4
{
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"domain" equalToValue:a3];
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"key" equalToValue:a4];
  v8 = +[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAllPredicates:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v6, v7, 0}]);
  v9 = [(SSKeyValueStoreSession *)self database];

  return [(SSSQLiteEntity *)SSKeyValueStoreValueEntity anyInDatabase:v9 predicate:v8];
}

- (id)iTunesValueForKey:(id)a3 usedDomain:(id *)a4
{
  v7 = @"com.apple.itunesstored";
  v8 = [(SSKeyValueStoreSession *)self copyValueForDomain:@"com.apple.itunesstored" key:a3];
  if (!v8)
  {
    v7 = @"com.apple.mobile.iTunes.store";
    v8 = [(SSKeyValueStoreSession *)self copyValueForDomain:@"com.apple.mobile.iTunes.store" key:a3];
  }

  if (a4 && v8)
  {
    *a4 = v7;
  }

  return v8;
}

@end