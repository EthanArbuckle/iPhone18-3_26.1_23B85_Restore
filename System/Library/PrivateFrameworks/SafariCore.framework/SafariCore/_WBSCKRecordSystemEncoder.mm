@interface _WBSCKRecordSystemEncoder
- (CKRecord)record;
- (Class)classForCoder;
- (_WBSCKRecordSystemEncoder)initWithRecord:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _WBSCKRecordSystemEncoder

- (_WBSCKRecordSystemEncoder)initWithRecord:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _WBSCKRecordSystemEncoder;
  v5 = [(_WBSCKRecordSystemEncoder *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_record, v4);
    v7 = v6;
  }

  return v6;
}

- (Class)classForCoder
{
  WeakRetained = objc_loadWeakRetained(&self->_record);
  v3 = objc_opt_class();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_record);
  [WeakRetained encodeSystemFieldsWithCoder:v4];
}

- (CKRecord)record
{
  WeakRetained = objc_loadWeakRetained(&self->_record);

  return WeakRetained;
}

@end