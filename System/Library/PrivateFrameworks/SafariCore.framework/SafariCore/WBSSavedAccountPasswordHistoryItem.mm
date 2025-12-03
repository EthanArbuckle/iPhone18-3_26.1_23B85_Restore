@interface WBSSavedAccountPasswordHistoryItem
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (WBSSavedAccountPasswordHistoryItem)initWithDate:(id)date password:(id)password type:(id)type;
- (WBSSavedAccountPasswordHistoryItem)initWithDictionaryRepresentation:(id)representation;
- (WBSSavedAccountPasswordHistoryItem)initWithPassword:(id)password oldPassword:(id)oldPassword;
- (WBSSavedAccountPasswordHistoryItem)initWithPassword:(id)password type:(id)type;
- (id)_initWithPassword:(id)password oldPassword:(id)oldPassword date:(id)date type:(id)type identifier:(id)identifier originalDictionaryRepresentation:(id)representation;
- (unint64_t)hash;
@end

@implementation WBSSavedAccountPasswordHistoryItem

- (WBSSavedAccountPasswordHistoryItem)initWithDate:(id)date password:(id)password type:(id)type
{
  v8 = MEMORY[0x1E696AFB0];
  typeCopy = type;
  passwordCopy = password;
  dateCopy = date;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];
  v14 = [(WBSSavedAccountPasswordHistoryItem *)self _initWithPassword:passwordCopy oldPassword:0 date:dateCopy type:typeCopy identifier:uUIDString originalDictionaryRepresentation:0];

  return v14;
}

- (WBSSavedAccountPasswordHistoryItem)initWithPassword:(id)password type:(id)type
{
  v6 = MEMORY[0x1E695DF00];
  typeCopy = type;
  passwordCopy = password;
  date = [v6 date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v12 = [(WBSSavedAccountPasswordHistoryItem *)self _initWithPassword:passwordCopy oldPassword:0 date:date type:typeCopy identifier:uUIDString originalDictionaryRepresentation:0];

  return v12;
}

- (WBSSavedAccountPasswordHistoryItem)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [representationCopy safari_stringForKey:@"t"];
    if (([v5 isEqualToString:@"pwch"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"pwcr") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"pw"))
    {
      v6 = [representationCopy objectForKeyedSubscript:@"p"];
      v7 = [representationCopy objectForKeyedSubscript:@"op"];
      v8 = [representationCopy objectForKeyedSubscript:@"d"];
      v9 = [representationCopy objectForKeyedSubscript:@"id"];
      self = [(WBSSavedAccountPasswordHistoryItem *)self _initWithPassword:v6 oldPassword:v7 date:v8 type:v5 identifier:v9 originalDictionaryRepresentation:representationCopy];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WBSSavedAccountPasswordHistoryItem)initWithPassword:(id)password oldPassword:(id)oldPassword
{
  v6 = MEMORY[0x1E695DF00];
  oldPasswordCopy = oldPassword;
  passwordCopy = password;
  date = [v6 date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v12 = [(WBSSavedAccountPasswordHistoryItem *)self _initWithPassword:passwordCopy oldPassword:oldPasswordCopy date:date type:@"pwch" identifier:uUIDString originalDictionaryRepresentation:0];

  return v12;
}

- (id)_initWithPassword:(id)password oldPassword:(id)oldPassword date:(id)date type:(id)type identifier:(id)identifier originalDictionaryRepresentation:(id)representation
{
  passwordCopy = password;
  oldPasswordCopy = oldPassword;
  dateCopy = date;
  typeCopy = type;
  identifierCopy = identifier;
  representationCopy = representation;
  v33.receiver = self;
  v33.super_class = WBSSavedAccountPasswordHistoryItem;
  v20 = [(WBSSavedAccountPasswordHistoryItem *)&v33 init];
  if (v20)
  {
    v21 = [passwordCopy copy];
    password = v20->_password;
    v20->_password = v21;

    v23 = [oldPasswordCopy copy];
    oldPassword = v20->_oldPassword;
    v20->_oldPassword = v23;

    objc_storeStrong(&v20->_date, date);
    v25 = [identifierCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v25;

    v27 = [typeCopy copy];
    type = v20->_type;
    v20->_type = v27;

    v29 = [representationCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      password = self->_password;
      password = [(WBSSavedAccountPasswordHistoryItem *)v5 password];
      if (WBSIsEqual(password, password))
      {
        date = self->_date;
        date = [(WBSSavedAccountPasswordHistoryItem *)v5 date];
        v10 = WBSIsEqual(date, date);
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