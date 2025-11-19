@interface WBSSavedAccountPasswordHistoryItem
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (WBSSavedAccountPasswordHistoryItem)initWithDate:(id)a3 password:(id)a4 type:(id)a5;
- (WBSSavedAccountPasswordHistoryItem)initWithDictionaryRepresentation:(id)a3;
- (WBSSavedAccountPasswordHistoryItem)initWithPassword:(id)a3 oldPassword:(id)a4;
- (WBSSavedAccountPasswordHistoryItem)initWithPassword:(id)a3 type:(id)a4;
- (id)_initWithPassword:(id)a3 oldPassword:(id)a4 date:(id)a5 type:(id)a6 identifier:(id)a7 originalDictionaryRepresentation:(id)a8;
- (unint64_t)hash;
@end

@implementation WBSSavedAccountPasswordHistoryItem

- (WBSSavedAccountPasswordHistoryItem)initWithDate:(id)a3 password:(id)a4 type:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 UUID];
  v13 = [v12 UUIDString];
  v14 = [(WBSSavedAccountPasswordHistoryItem *)self _initWithPassword:v10 oldPassword:0 date:v11 type:v9 identifier:v13 originalDictionaryRepresentation:0];

  return v14;
}

- (WBSSavedAccountPasswordHistoryItem)initWithPassword:(id)a3 type:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];
  v12 = [(WBSSavedAccountPasswordHistoryItem *)self _initWithPassword:v8 oldPassword:0 date:v9 type:v7 identifier:v11 originalDictionaryRepresentation:0];

  return v12;
}

- (WBSSavedAccountPasswordHistoryItem)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 safari_stringForKey:@"t"];
    if (([v5 isEqualToString:@"pwch"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"pwcr") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"pw"))
    {
      v6 = [v4 objectForKeyedSubscript:@"p"];
      v7 = [v4 objectForKeyedSubscript:@"op"];
      v8 = [v4 objectForKeyedSubscript:@"d"];
      v9 = [v4 objectForKeyedSubscript:@"id"];
      self = [(WBSSavedAccountPasswordHistoryItem *)self _initWithPassword:v6 oldPassword:v7 date:v8 type:v5 identifier:v9 originalDictionaryRepresentation:v4];

      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (WBSSavedAccountPasswordHistoryItem)initWithPassword:(id)a3 oldPassword:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];
  v12 = [(WBSSavedAccountPasswordHistoryItem *)self _initWithPassword:v8 oldPassword:v7 date:v9 type:@"pwch" identifier:v11 originalDictionaryRepresentation:0];

  return v12;
}

- (id)_initWithPassword:(id)a3 oldPassword:(id)a4 date:(id)a5 type:(id)a6 identifier:(id)a7 originalDictionaryRepresentation:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v33.receiver = self;
  v33.super_class = WBSSavedAccountPasswordHistoryItem;
  v20 = [(WBSSavedAccountPasswordHistoryItem *)&v33 init];
  if (v20)
  {
    v21 = [v14 copy];
    password = v20->_password;
    v20->_password = v21;

    v23 = [v15 copy];
    oldPassword = v20->_oldPassword;
    v20->_oldPassword = v23;

    objc_storeStrong(&v20->_date, a5);
    v25 = [v18 copy];
    identifier = v20->_identifier;
    v20->_identifier = v25;

    v27 = [v17 copy];
    type = v20->_type;
    v20->_type = v27;

    v29 = [v19 copy];
    originalKeychainDictionary = v20->_originalKeychainDictionary;
    v20->_originalKeychainDictionary = v29;

    v31 = v20;
  }

  return v20;
}

- (NSDictionary)dictionaryRepresentation
{
  if (self->_originalKeychainDictionary)
  {
    originalKeychainDictionary = self->_originalKeychainDictionary;
  }

  else
  {
    originalKeychainDictionary = MEMORY[0x1E695E0F8];
  }

  v4 = [(NSDictionary *)originalKeychainDictionary mutableCopy];
  [v4 setObject:self->_password forKeyedSubscript:@"p"];
  [v4 setObject:self->_oldPassword forKeyedSubscript:@"op"];
  [v4 setObject:self->_date forKeyedSubscript:@"d"];
  [v4 setObject:self->_type forKeyedSubscript:@"t"];
  [v4 setObject:self->_identifier forKeyedSubscript:@"id"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      password = self->_password;
      v7 = [(WBSSavedAccountPasswordHistoryItem *)v5 password];
      if (WBSIsEqual(password, v7))
      {
        date = self->_date;
        v9 = [(WBSSavedAccountPasswordHistoryItem *)v5 date];
        v10 = WBSIsEqual(date, v9);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_password hash];
  v4 = [(NSDate *)self->_date hash]^ v3;
  v5 = [(NSString *)self->_type hash];
  return v4 ^ v5 ^ [(NSString *)self->_identifier hash];
}

@end