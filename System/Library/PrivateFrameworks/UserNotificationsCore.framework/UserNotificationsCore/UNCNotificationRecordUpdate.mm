@interface UNCNotificationRecordUpdate
- (BOOL)isEqual:(id)a3;
- (UNCNotificationRecordUpdate)initWithCoder:(id)a3;
- (id)_initWithNotificationRecord:(id)a3 shouldSync:(BOOL)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNCNotificationRecordUpdate

- (id)_initWithNotificationRecord:(id)a3 shouldSync:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = UNCNotificationRecordUpdate;
  v8 = [(UNCNotificationRecordUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationRecord, a3);
    v9->_shouldSync = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(UNCNotificationRecordUpdate *)self notificationRecord];
      v7 = [(UNCNotificationRecordUpdate *)v5 notificationRecord];

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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(UNCNotificationRecordUpdate *)self notificationRecord];
  v5 = [v3 appendObject:v4];

  v6 = [v3 hash];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(UNCNotificationRecordUpdate *)self notificationRecord];
  [v5 encodeObject:v4 forKey:@"notificationRecord"];

  [v5 encodeBool:-[UNCNotificationRecordUpdate shouldSync](self forKey:{"shouldSync"), @"shouldSync"}];
}

- (UNCNotificationRecordUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UNCNotificationRecordUpdate;
  v5 = [(UNCNotificationRecordUpdate *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notificationRecord"];
    notificationRecord = v5->_notificationRecord;
    v5->_notificationRecord = v6;

    v5->_shouldSync = [v4 decodeBoolForKey:@"shouldSync"];
  }

  return v5;
}

@end