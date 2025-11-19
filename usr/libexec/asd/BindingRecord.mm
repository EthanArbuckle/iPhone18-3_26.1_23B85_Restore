@interface BindingRecord
- (BindingRecord)initWithKey:(id)a3 updatedDate:(id)a4 value:(id)a5;
@end

@implementation BindingRecord

- (BindingRecord)initWithKey:(id)a3 updatedDate:(id)a4 value:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BindingRecord;
  v12 = [(BindingRecord *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, a5);
    objc_storeStrong(&v13->_key, a3);
    objc_storeStrong(&v13->_updated, a4);
  }

  return v13;
}

@end