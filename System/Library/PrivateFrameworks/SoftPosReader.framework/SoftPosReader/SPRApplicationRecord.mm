@interface SPRApplicationRecord
- (SPRApplicationRecord)initWithBundleID:(id)d lastUsedDate:(id)date;
- (SPRApplicationRecord)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRApplicationRecord

- (SPRApplicationRecord)initWithBundleID:(id)d lastUsedDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  bundleID = self->_bundleID;
  self->_bundleID = dCopy;
  v9 = dCopy;

  lastUsedDate = self->_lastUsedDate;
  self->_lastUsedDate = dateCopy;

  return self;
}

- (SPRApplicationRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SPRApplicationRecord;
  v5 = [(SPRApplicationRecord *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"bundleID", v8);
    bundleID = v5->_bundleID;
    v5->_bundleID = v9;

    v11 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"lastUsedDate", v13);
    lastUsedDate = v5->_lastUsedDate;
    v5->_lastUsedDate = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, bundleID, @"bundleID", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_lastUsedDate, @"lastUsedDate", v8);
}

@end