@interface SPRApplicationRecord
- (SPRApplicationRecord)initWithBundleID:(id)a3 lastUsedDate:(id)a4;
- (SPRApplicationRecord)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPRApplicationRecord

- (SPRApplicationRecord)initWithBundleID:(id)a3 lastUsedDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  bundleID = self->_bundleID;
  self->_bundleID = v6;
  v9 = v6;

  lastUsedDate = self->_lastUsedDate;
  self->_lastUsedDate = v7;

  return self;
}

- (SPRApplicationRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SPRApplicationRecord;
  v5 = [(SPRApplicationRecord *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"bundleID", v8);
    bundleID = v5->_bundleID;
    v5->_bundleID = v9;

    v11 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"lastUsedDate", v13);
    lastUsedDate = v5->_lastUsedDate;
    v5->_lastUsedDate = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v9 = a3;
  objc_msgSend_encodeObject_forKey_(v9, v5, bundleID, @"bundleID", v6);
  objc_msgSend_encodeObject_forKey_(v9, v7, self->_lastUsedDate, @"lastUsedDate", v8);
}

@end