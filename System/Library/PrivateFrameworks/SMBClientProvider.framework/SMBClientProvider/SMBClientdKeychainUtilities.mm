@interface SMBClientdKeychainUtilities
+ (BOOL)addItem:(id)item forIdentifier:(id)identifier error:(id *)error;
+ (BOOL)removeItemForIdentifier:(id)identifier error:(id *)error;
+ (id)defaultItemAttributesWithIdentifier:(id)identifier;
+ (id)getItemForIdentifier:(id)identifier error:(id *)error;
@end

@implementation SMBClientdKeychainUtilities

+ (id)defaultItemAttributesWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000592B0();
  }

  v7[0] = kSecClass;
  v7[1] = kSecUseDataProtectionKeychain;
  v8[0] = kSecClassGenericPassword;
  v8[1] = &__kCFBooleanTrue;
  v7[2] = kSecAttrIsInvisible;
  v7[3] = kSecAttrService;
  v8[2] = &__kCFBooleanTrue;
  v8[3] = @"com.apple.filesystems.smbclientd";
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = [v4 mutableCopy];

  if (identifierCopy)
  {
    [v5 setObject:identifierCopy forKeyedSubscript:kSecAttrAccount];
  }

  return v5;
}

+ (BOOL)addItem:(id)item forIdentifier:(id)identifier error:(id *)error
{
  itemCopy = item;
  v8 = [SMBClientdKeychainUtilities defaultItemAttributesWithIdentifier:identifier];
  v9 = objc_opt_new();
  [v9 setObject:itemCopy forKeyedSubscript:kSecValueData];

  [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrSynchronizable];
  v10 = SecItemUpdate(v8, v9);
  if (v10 == -25300)
  {
    [(__CFDictionary *)v8 addEntriesFromDictionary:v9];
    v10 = SecItemAdd(v8, 0);
  }

  if (error)
  {
    *error = 0;
    if (v10)
    {
      [NSError errorWithDomain:NSOSStatusErrorDomain code:v10 userInfo:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = v10 == 0;
  }

  return v11;
}

+ (id)getItemForIdentifier:(id)identifier error:(id *)error
{
  v5 = [SMBClientdKeychainUtilities defaultItemAttributesWithIdentifier:identifier];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  [v5 setObject:kSecMatchLimitOne forKeyedSubscript:kSecMatchLimit];
  result = 0;
  if (error)
  {
    *error = 0;
    v6 = SecItemCopyMatching(v5, &result);
    if (v6)
    {
      [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
      *error = v7 = 0;
      goto LABEL_7;
    }
  }

  else if (SecItemCopyMatching(v5, &result))
  {
    v7 = 0;
    goto LABEL_7;
  }

  v7 = result;
LABEL_7:

  return v7;
}

+ (BOOL)removeItemForIdentifier:(id)identifier error:(id *)error
{
  v5 = [SMBClientdKeychainUtilities defaultItemAttributesWithIdentifier:identifier];
  v6 = SecItemDelete(v5);
  if (error)
  {
    *error = 0;
    if (v6)
    {
      [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
      *error = v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = v6 == 0;
  }

  return v7;
}

@end