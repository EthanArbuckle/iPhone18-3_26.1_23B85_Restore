@interface SSKeyValueStoreTransaction
- (BOOL)setData:(id)a3 forDomain:(id)a4 key:(id)a5;
- (BOOL)setValue:(id)a3 forDomain:(id)a4 key:(id)a5;
- (void)removeAccountFromDomain:(id)a3;
@end

@implementation SSKeyValueStoreTransaction

- (void)removeAccountFromDomain:(id)a3
{
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AccountAvailableServiceTypes"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AccountURLBagType"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AltDSID"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AppleID"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AccountServiceTypes"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AccountIsNewCustomer"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AccountSocialEnabled"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AccountKind"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AccountSource"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AccountStoreFront"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"CreditDisplayString"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"DidFallbackToPassword"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"DSPersonID"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"UserName"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AccountITunesPassSerial"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"FirstName"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"LastName"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AccountFreeDownloadsPasswordSetting"];

  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:a3 key:@"AccountPaidPurchasesPasswordSetting"];
}

- (BOOL)setData:(id)a3 forDomain:(id)a4 key:(id)a5
{
  if (a3)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v9 setObject:a4 forKey:@"domain"];
    [v9 setObject:a5 forKey:@"key"];
    [v9 setObject:a3 forKey:@"value"];
    v10 = [(SSSQLiteEntity *)[SSKeyValueStoreValueEntity alloc] initWithPropertyValues:v9 inDatabase:[(SSKeyValueStoreSession *)self database]];
    v11 = v10 != 0;

    return v11;
  }

  v13 = [(SSKeyValueStoreSession *)self existingEntityForDomain:a4 key:a5];
  if (!v13)
  {
    return 1;
  }

  return [v13 deleteFromDatabase];
}

- (BOOL)setValue:(id)a3 forDomain:(id)a4 key:(id)a5
{
  if (a3)
  {
    v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:0];
    if (!v8)
    {
      return v8;
    }

    a3 = v8;
  }

  LOBYTE(v8) = [(SSKeyValueStoreTransaction *)self setData:a3 forDomain:a4 key:a5];
  return v8;
}

@end