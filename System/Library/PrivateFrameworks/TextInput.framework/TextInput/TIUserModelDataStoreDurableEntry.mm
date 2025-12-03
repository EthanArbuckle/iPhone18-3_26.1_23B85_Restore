@interface TIUserModelDataStoreDurableEntry
- (TIUserModelDataStoreDurableEntry)initWithCreationDate:(id)date withLastUpdateDate:(id)updateDate withKey:(id)key withValue:(id)value;
@end

@implementation TIUserModelDataStoreDurableEntry

- (TIUserModelDataStoreDurableEntry)initWithCreationDate:(id)date withLastUpdateDate:(id)updateDate withKey:(id)key withValue:(id)value
{
  dateCopy = date;
  updateDateCopy = updateDate;
  keyCopy = key;
  valueCopy = value;
  v18.receiver = self;
  v18.super_class = TIUserModelDataStoreDurableEntry;
  v15 = [(TIUserModelDataStoreDurableEntry *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_creationDate, date);
    objc_storeStrong(&v16->_lastUpdateDate, updateDate);
    objc_storeStrong(&v16->_key, key);
    objc_storeStrong(&v16->_value, value);
  }

  return v16;
}

@end