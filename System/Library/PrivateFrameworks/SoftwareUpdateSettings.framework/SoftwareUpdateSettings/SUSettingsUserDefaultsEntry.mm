@interface SUSettingsUserDefaultsEntry
- (SUSettingsUserDefaultsEntry)initWithType:(int64_t)type key:(id)key description:(id)description;
- (id)initBoolEntryWithKey:(id)key description:(id)description;
- (id)initNumberEntryWithKey:(id)key description:(id)description;
- (id)initStringEntryWithKey:(id)key description:(id)description;
@end

@implementation SUSettingsUserDefaultsEntry

- (SUSettingsUserDefaultsEntry)initWithType:(int64_t)type key:(id)key description:(id)description
{
  selfCopy = self;
  v14 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, key);
  v11 = 0;
  objc_storeStrong(&v11, description);
  v5 = selfCopy;
  selfCopy = 0;
  v10.receiver = v5;
  v10.super_class = SUSettingsUserDefaultsEntry;
  v9 = [(SUSettingsUserDefaultsEntry *)&v10 init];
  selfCopy = v9;
  objc_storeStrong(&selfCopy, v9);
  if (v9)
  {
    selfCopy->_type = typeCopy;
    objc_storeStrong(&selfCopy->_key, location);
    objc_storeStrong(&selfCopy->_entryDescription, v11);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)initBoolEntryWithKey:(id)key description:(id)description
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v8 = 0;
  objc_storeStrong(&v8, description);
  v4 = selfCopy;
  selfCopy = 0;
  selfCopy = [(SUSettingsUserDefaultsEntry *)v4 initWithType:0 key:location[0] description:v8];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)initNumberEntryWithKey:(id)key description:(id)description
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v8 = 0;
  objc_storeStrong(&v8, description);
  v4 = selfCopy;
  selfCopy = 0;
  selfCopy = [(SUSettingsUserDefaultsEntry *)v4 initWithType:1 key:location[0] description:v8];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)initStringEntryWithKey:(id)key description:(id)description
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v8 = 0;
  objc_storeStrong(&v8, description);
  v4 = selfCopy;
  selfCopy = 0;
  selfCopy = [(SUSettingsUserDefaultsEntry *)v4 initWithType:2 key:location[0] description:v8];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

@end