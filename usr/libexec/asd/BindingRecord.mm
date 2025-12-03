@interface BindingRecord
- (BindingRecord)initWithKey:(id)key updatedDate:(id)date value:(id)value;
@end

@implementation BindingRecord

- (BindingRecord)initWithKey:(id)key updatedDate:(id)date value:(id)value
{
  keyCopy = key;
  dateCopy = date;
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = BindingRecord;
  v12 = [(BindingRecord *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, value);
    objc_storeStrong(&v13->_key, key);
    objc_storeStrong(&v13->_updated, date);
  }

  return v13;
}

@end