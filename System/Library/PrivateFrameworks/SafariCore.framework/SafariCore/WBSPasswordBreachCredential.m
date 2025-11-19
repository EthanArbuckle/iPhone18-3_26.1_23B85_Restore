@interface WBSPasswordBreachCredential
- (WBSPasswordBreachCredential)initWithPassword:(id)a3 persistentIdentifier:(id)a4 dateLastModified:(id)a5;
- (WBSPasswordBreachCredential)initWithSecItemDictionary:(id)a3;
@end

@implementation WBSPasswordBreachCredential

- (WBSPasswordBreachCredential)initWithSecItemDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_dataForKey:*MEMORY[0x1E697B3C0]];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
  if (v6)
  {
    v7 = [v4 safari_dataForKey:*MEMORY[0x1E697B3C8]];
    v8 = [v4 safari_dateForKey:*MEMORY[0x1E697ADD0]];
    self = [(WBSPasswordBreachCredential *)self initWithPassword:v6 persistentIdentifier:v7 dateLastModified:v8];

    v9 = self;
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [WBSPasswordBreachCredential initWithSecItemDictionary:v10];
    }

    v9 = 0;
  }

  return v9;
}

- (WBSPasswordBreachCredential)initWithPassword:(id)a3 persistentIdentifier:(id)a4 dateLastModified:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = WBSPasswordBreachCredential;
  v11 = [(WBSPasswordBreachCredential *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    password = v11->_password;
    v11->_password = v12;

    v14 = [v9 copy];
    persistentIdentifier = v11->_persistentIdentifier;
    v11->_persistentIdentifier = v14;

    v16 = [v10 copy];
    dateLastModified = v11->_dateLastModified;
    v11->_dateLastModified = v16;

    v18 = v11;
  }

  return v11;
}

@end