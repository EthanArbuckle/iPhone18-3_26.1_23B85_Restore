@interface UNSNotificationRecordReplaceUpdate
- (BOOL)isEqual:(id)a3;
- (UNSNotificationRecordReplaceUpdate)initWithCoder:(id)a3;
- (id)_initWithNotificationRecord:(id)a3 replacedNotificationRecord:(id)a4 shouldRepost:(BOOL)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNSNotificationRecordReplaceUpdate

- (id)_initWithNotificationRecord:(id)a3 replacedNotificationRecord:(id)a4 shouldRepost:(BOOL)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = UNSNotificationRecordReplaceUpdate;
  v10 = [(UNCNotificationRecordUpdate *)&v13 _initWithNotificationRecord:a3 shouldSync:1];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 4, a4);
    *(v11 + 24) = a5;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UNSNotificationRecordReplaceUpdate;
  if ([(UNCNotificationRecordUpdate *)&v10 isEqual:v4])
  {
    v5 = v4;
    v6 = [(UNSNotificationRecordReplaceUpdate *)self replacedNotificationRecord];
    v7 = [v5 replacedNotificationRecord];

    v8 = UNEqualObjects();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v10.receiver = self;
  v10.super_class = UNSNotificationRecordReplaceUpdate;
  v4 = [v3 appendUnsignedInteger:{-[UNCNotificationRecordUpdate hash](&v10, sel_hash)}];
  v5 = [(UNSNotificationRecordReplaceUpdate *)self replacedNotificationRecord];
  v6 = [v3 appendObject:v5];

  v7 = [v3 appendBool:{-[UNSNotificationRecordReplaceUpdate shouldRepost](self, "shouldRepost")}];
  v8 = [v3 hash];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UNSNotificationRecordReplaceUpdate;
  v4 = a3;
  [(UNCNotificationRecordUpdate *)&v6 encodeWithCoder:v4];
  v5 = [(UNSNotificationRecordReplaceUpdate *)self replacedNotificationRecord:v6.receiver];
  [v4 encodeObject:v5 forKey:@"replacedNotificationRecord"];

  [v4 encodeBool:-[UNSNotificationRecordReplaceUpdate shouldRepost](self forKey:{"shouldRepost"), @"shouldRepost"}];
}

- (UNSNotificationRecordReplaceUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UNSNotificationRecordReplaceUpdate;
  v5 = [(UNCNotificationRecordUpdate *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replacedNotificationRecord"];
    replacedNotificationRecord = v5->_replacedNotificationRecord;
    v5->_replacedNotificationRecord = v6;

    v5->_shouldRepost = [v4 decodeBoolForKey:@"shouldRepost"];
  }

  return v5;
}

@end