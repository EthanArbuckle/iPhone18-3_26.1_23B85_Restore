@interface SPRMeta
+ (SPRMeta)current;
- (NSDate)buildDate;
- (SPRMeta)initWithBundle:(id)a3 timestamp:(id)a4;
- (id)description;
@end

@implementation SPRMeta

+ (SPRMeta)current
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26A94406C;
  block[3] = &unk_279CA5718;
  block[4] = a1;
  if (qword_2810B9C00 != -1)
  {
    dispatch_once(&qword_2810B9C00, block);
  }

  v2 = qword_2810B9C08;

  return v2;
}

- (NSDate)buildDate
{
  v3 = objc_opt_new();
  objc_msgSend_setDateFormat_(v3, v4, @"EEE MMM dd HH:mm:ss yyyy", v5, v6);
  v10 = objc_msgSend_dateFromString_(v3, v7, self->_timestamp, v8, v9);

  return v10;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_bundleIdentifier(self, a2, v2, v3, v4);
  v12 = objc_msgSend_bundleVersion(self, v8, v9, v10, v11);
  v17 = objc_msgSend_buildDate(self, v13, v14, v15, v16);
  v21 = objc_msgSend_stringWithFormat_(v6, v18, @"SPRMeta(bundleIdentifier: %@, bundleVersion: %@, buildDate: %@)", v19, v20, v7, v12, v17);

  return v21;
}

- (SPRMeta)initWithBundle:(id)a3 timestamp:(id)a4
{
  v6 = a3;
  v7 = a4;
  bundle = self->_bundle;
  self->_bundle = v6;
  v9 = v6;

  timestamp = self->_timestamp;
  self->_timestamp = v7;

  return self;
}

@end