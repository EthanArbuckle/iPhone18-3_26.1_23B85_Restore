@interface TIUserModelDataStoreDurableEntry
- (TIUserModelDataStoreDurableEntry)initWithCreationDate:(id)a3 withLastUpdateDate:(id)a4 withKey:(id)a5 withValue:(id)a6;
@end

@implementation TIUserModelDataStoreDurableEntry

- (TIUserModelDataStoreDurableEntry)initWithCreationDate:(id)a3 withLastUpdateDate:(id)a4 withKey:(id)a5 withValue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TIUserModelDataStoreDurableEntry;
  v15 = [(TIUserModelDataStoreDurableEntry *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_creationDate, a3);
    objc_storeStrong(&v16->_lastUpdateDate, a4);
    objc_storeStrong(&v16->_key, a5);
    objc_storeStrong(&v16->_value, a6);
  }

  return v16;
}

@end