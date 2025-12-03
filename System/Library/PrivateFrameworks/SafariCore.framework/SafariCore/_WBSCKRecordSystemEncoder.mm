@interface _WBSCKRecordSystemEncoder
- (CKRecord)record;
- (Class)classForCoder;
- (_WBSCKRecordSystemEncoder)initWithRecord:(id)record;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _WBSCKRecordSystemEncoder

- (_WBSCKRecordSystemEncoder)initWithRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = _WBSCKRecordSystemEncoder;
  v5 = [(_WBSCKRecordSystemEncoder *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_record, recordCopy);
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  WeakRetained = objc_loadWeakRetained(&self->_record);
  [WeakRetained encodeSystemFieldsWithCoder:coderCopy];
}

- (CKRecord)record
{
  WeakRetained = objc_loadWeakRetained(&self->_record);

  return WeakRetained;
}

@end