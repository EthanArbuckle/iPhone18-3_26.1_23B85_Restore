@interface WBSPasswordBreachCredential
- (WBSPasswordBreachCredential)initWithPassword:(id)password persistentIdentifier:(id)identifier dateLastModified:(id)modified;
- (WBSPasswordBreachCredential)initWithSecItemDictionary:(id)dictionary;
@end

@implementation WBSPasswordBreachCredential

- (WBSPasswordBreachCredential)initWithSecItemDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy safari_dataForKey:*MEMORY[0x1E697B3C0]];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
  if (v6)
  {
    v7 = [dictionaryCopy safari_dataForKey:*MEMORY[0x1E697B3C8]];
    v8 = [dictionaryCopy safari_dateForKey:*MEMORY[0x1E697ADD0]];
    self = [(WBSPasswordBreachCredential *)self initWithPassword:v6 persistentIdentifier:v7 dateLastModified:v8];

    selfCopy = self;
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [WBSPasswordBreachCredential initWithSecItemDictionary:v10];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (WBSPasswordBreachCredential)initWithPassword:(id)password persistentIdentifier:(id)identifier dateLastModified:(id)modified
{
  passwordCopy = password;
  identifierCopy = identifier;
  modifiedCopy = modified;
  v20.receiver = self;
  v20.super_class = WBSPasswordBreachCredential;
  v11 = [(WBSPasswordBreachCredential *)&v20 init];
  if (v11)
  {
    v12 = [passwordCopy copy];
    password = v11->_password;
    v11->_password = v12;

    v14 = [identifierCopy copy];
    persistentIdentifier = v11->_persistentIdentifier;
    v11->_persistentIdentifier = v14;

    v16 = [modifiedCopy copy];
    dateLastModified = v11->_dateLastModified;
    v11->_dateLastModified = v16;

    v18 = v11;
  }

  return v11;
}

@end