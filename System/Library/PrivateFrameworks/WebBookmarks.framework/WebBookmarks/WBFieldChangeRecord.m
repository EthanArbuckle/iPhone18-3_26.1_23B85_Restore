@interface WBFieldChangeRecord
- (WBFieldChangeRecord)initWithField:(id)a3 changeType:(int)a4 attributes:(id)a5 record:(id)a6 identifier:(int64_t)a7;
@end

@implementation WBFieldChangeRecord

- (WBFieldChangeRecord)initWithField:(id)a3 changeType:(int)a4 attributes:(id)a5 record:(id)a6 identifier:(int64_t)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v20.receiver = self;
  v20.super_class = WBFieldChangeRecord;
  v16 = [(WBFieldChangeRecord *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_field, a3);
    v17->_changeType = a4;
    objc_storeStrong(&v17->_attributes, a5);
    objc_storeStrong(&v17->_record, a6);
    v17->_identifier = a7;
    v18 = v17;
  }

  return v17;
}

@end