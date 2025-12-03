@interface WBFieldChangeRecord
- (WBFieldChangeRecord)initWithField:(id)field changeType:(int)type attributes:(id)attributes record:(id)record identifier:(int64_t)identifier;
@end

@implementation WBFieldChangeRecord

- (WBFieldChangeRecord)initWithField:(id)field changeType:(int)type attributes:(id)attributes record:(id)record identifier:(int64_t)identifier
{
  fieldCopy = field;
  attributesCopy = attributes;
  recordCopy = record;
  v20.receiver = self;
  v20.super_class = WBFieldChangeRecord;
  v16 = [(WBFieldChangeRecord *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_field, field);
    v17->_changeType = type;
    objc_storeStrong(&v17->_attributes, attributes);
    objc_storeStrong(&v17->_record, record);
    v17->_identifier = identifier;
    v18 = v17;
  }

  return v17;
}

@end