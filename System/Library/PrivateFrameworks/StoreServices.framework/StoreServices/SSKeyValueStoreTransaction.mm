@interface SSKeyValueStoreTransaction
- (BOOL)setData:(id)data forDomain:(id)domain key:(id)key;
- (BOOL)setValue:(id)value forDomain:(id)domain key:(id)key;
- (void)removeAccountFromDomain:(id)domain;
@end

@implementation SSKeyValueStoreTransaction

- (void)removeAccountFromDomain:(id)domain
{
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AccountAvailableServiceTypes"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AccountURLBagType"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AltDSID"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AppleID"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AccountServiceTypes"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AccountIsNewCustomer"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AccountSocialEnabled"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AccountKind"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AccountSource"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AccountStoreFront"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"CreditDisplayString"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"DidFallbackToPassword"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"DSPersonID"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"UserName"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AccountITunesPassSerial"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"FirstName"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"LastName"];
  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AccountFreeDownloadsPasswordSetting"];

  [(SSKeyValueStoreTransaction *)self setValue:0 forDomain:domain key:@"AccountPaidPurchasesPasswordSetting"];
}

- (BOOL)setData:(id)data forDomain:(id)domain key:(id)key
{
  if (data)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v9 setObject:domain forKey:@"domain"];
    [v9 setObject:key forKey:@"key"];
    [v9 setObject:data forKey:@"value"];
    v10 = [(SSSQLiteEntity *)[SSKeyValueStoreValueEntity alloc] initWithPropertyValues:v9 inDatabase:[(SSKeyValueStoreSession *)self database]];
    v11 = v10 != 0;

    return v11;
  }

  v13 = [(SSKeyValueStoreSession *)self existingEntityForDomain:domain key:key];
  if (!v13)
  {
    return 1;
  }

  return [v13 deleteFromDatabase];
}

- (BOOL)setValue:(id)value forDomain:(id)domain key:(id)key
{
  if (value)
  {
    v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:value format:200 options:0 error:0];
    if (!v8)
    {
      return v8;
    }

    value = v8;
  }

  LOBYTE(v8) = [(SSKeyValueStoreTransaction *)self setData:value forDomain:domain key:key];
  return v8;
}

@end