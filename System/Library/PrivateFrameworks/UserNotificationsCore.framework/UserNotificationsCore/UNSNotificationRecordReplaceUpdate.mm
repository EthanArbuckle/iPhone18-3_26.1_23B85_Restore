@interface UNSNotificationRecordReplaceUpdate
- (BOOL)isEqual:(id)equal;
- (UNSNotificationRecordReplaceUpdate)initWithCoder:(id)coder;
- (id)_initWithNotificationRecord:(id)record replacedNotificationRecord:(id)notificationRecord shouldRepost:(BOOL)repost;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNSNotificationRecordReplaceUpdate

- (id)_initWithNotificationRecord:(id)record replacedNotificationRecord:(id)notificationRecord shouldRepost:(BOOL)repost
{
  notificationRecordCopy = notificationRecord;
  v13.receiver = self;
  v13.super_class = UNSNotificationRecordReplaceUpdate;
  v10 = [(UNCNotificationRecordUpdate *)&v13 _initWithNotificationRecord:record shouldSync:1];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 4, notificationRecord);
    *(v11 + 24) = repost;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = UNSNotificationRecordReplaceUpdate;
  if ([(UNCNotificationRecordUpdate *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    replacedNotificationRecord = [(UNSNotificationRecordReplaceUpdate *)self replacedNotificationRecord];
    replacedNotificationRecord2 = [v5 replacedNotificationRecord];

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
  builder = [MEMORY[0x1E698E6B8] builder];
  v10.receiver = self;
  v10.super_class = UNSNotificationRecordReplaceUpdate;
  v4 = [builder appendUnsignedInteger:{-[UNCNotificationRecordUpdate hash](&v10, sel_hash)}];
  replacedNotificationRecord = [(UNSNotificationRecordReplaceUpdate *)self replacedNotificationRecord];
  v6 = [builder appendObject:replacedNotificationRecord];

  v7 = [builder appendBool:{-[UNSNotificationRecordReplaceUpdate shouldRepost](self, "shouldRepost")}];
  v8 = [builder hash];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UNSNotificationRecordReplaceUpdate;
  coderCopy = coder;
  [(UNCNotificationRecordUpdate *)&v6 encodeWithCoder:coderCopy];
  v5 = [(UNSNotificationRecordReplaceUpdate *)self replacedNotificationRecord:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"replacedNotificationRecord"];

  [coderCopy encodeBool:-[UNSNotificationRecordReplaceUpdate shouldRepost](self forKey:{"shouldRepost"), @"shouldRepost"}];
}

- (UNSNotificationRecordReplaceUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UNSNotificationRecordReplaceUpdate;
  v5 = [(UNCNotificationRecordUpdate *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replacedNotificationRecord"];
    replacedNotificationRecord = v5->_replacedNotificationRecord;
    v5->_replacedNotificationRecord = v6;

    v5->_shouldRepost = [coderCopy decodeBoolForKey:@"shouldRepost"];
  }

  return v5;
}

@end