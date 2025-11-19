@interface SUUIUserDefaultsEntry
- (SUUIUserDefaultsEntry)initWithType:(int64_t)a3 key:(id)a4 description:(id)a5;
- (id)initBoolEntryWithKey:(id)a3 description:(id)a4;
- (id)initNumberEntryWithKey:(id)a3 description:(id)a4;
- (id)initStringEntryWithKey:(id)a3 description:(id)a4;
@end

@implementation SUUIUserDefaultsEntry

- (SUUIUserDefaultsEntry)initWithType:(int64_t)a3 key:(id)a4 description:(id)a5
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v5 = v15;
  v15 = 0;
  v10.receiver = v5;
  v10.super_class = SUUIUserDefaultsEntry;
  v9 = [(SUUIUserDefaultsEntry *)&v10 init];
  v15 = v9;
  objc_storeStrong(&v15, v9);
  if (v9)
  {
    v15->_type = v13;
    objc_storeStrong(&v15->_key, location);
    objc_storeStrong(&v15->_entryDescription, v11);
  }

  v7 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (id)initBoolEntryWithKey:(id)a3 description:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v4 = v10;
  v10 = 0;
  v10 = [(SUUIUserDefaultsEntry *)v4 initWithType:0 key:location[0] description:v8];
  v7 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (id)initNumberEntryWithKey:(id)a3 description:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v4 = v10;
  v10 = 0;
  v10 = [(SUUIUserDefaultsEntry *)v4 initWithType:1 key:location[0] description:v8];
  v7 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (id)initStringEntryWithKey:(id)a3 description:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v4 = v10;
  v10 = 0;
  v10 = [(SUUIUserDefaultsEntry *)v4 initWithType:2 key:location[0] description:v8];
  v7 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

@end