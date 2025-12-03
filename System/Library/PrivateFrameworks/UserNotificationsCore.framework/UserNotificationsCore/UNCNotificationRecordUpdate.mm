@interface UNCNotificationRecordUpdate
- (BOOL)isEqual:(id)equal;
- (UNCNotificationRecordUpdate)initWithCoder:(id)coder;
- (id)_initWithNotificationRecord:(id)record shouldSync:(BOOL)sync;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNCNotificationRecordUpdate

- (id)_initWithNotificationRecord:(id)record shouldSync:(BOOL)sync
{
  recordCopy = record;
  v11.receiver = self;
  v11.super_class = UNCNotificationRecordUpdate;
  v8 = [(UNCNotificationRecordUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationRecord, record);
    v9->_shouldSync = sync;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      notificationRecord = [(UNCNotificationRecordUpdate *)self notificationRecord];
      notificationRecord2 = [(UNCNotificationRecordUpdate *)v5 notificationRecord];

      v8 = UNEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  notificationRecord = [(UNCNotificationRecordUpdate *)self notificationRecord];
  v5 = [builder appendObject:notificationRecord];

  v6 = [builder hash];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  notificationRecord = [(UNCNotificationRecordUpdate *)self notificationRecord];
  [coderCopy encodeObject:notificationRecord forKey:@"notificationRecord"];

  [coderCopy encodeBool:-[UNCNotificationRecordUpdate shouldSync](self forKey:{"shouldSync"), @"shouldSync"}];
}

- (UNCNotificationRecordUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UNCNotificationRecordUpdate;
  v5 = [(UNCNotificationRecordUpdate *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notificationRecord"];
    notificationRecord = v5->_notificationRecord;
    v5->_notificationRecord = v6;

    v5->_shouldSync = [coderCopy decodeBoolForKey:@"shouldSync"];
  }

  return v5;
}

@end