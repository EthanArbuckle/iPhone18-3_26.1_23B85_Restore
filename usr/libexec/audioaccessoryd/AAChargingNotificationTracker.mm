@interface AAChargingNotificationTracker
+ (id)trackerKeyForIdentifier:(id)a3 andType:(unsigned __int8)a4;
- (AAChargingNotificationTracker)initWithCoder:(id)a3;
- (BOOL)posted;
- (NSString)trackerKey;
- (double)durationTillCleared;
- (double)durationTillDismissed;
- (int64_t)reportedHour;
- (int64_t)reportedWeekday;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAChargingNotificationTracker

+ (id)trackerKeyForIdentifier:(id)a3 andType:(unsigned __int8)a4
{
  if (a4 > 2u)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1002B7C78[a4];
  }

  return [NSString stringWithFormat:@"%@--%s", a3, v6, v4, v5];
}

- (AAChargingNotificationTracker)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AAChargingNotificationTracker *)self init];
  if (v5)
  {
    v6 = v4;
    if ([v6 containsValueForKey:@"baCo"])
    {
      v5->_backoffCount = [v6 decodeInt64ForKey:@"baCo"];
    }

    v7 = v6;
    if ([v7 containsValueForKey:@"bCTD"])
    {
      v5->_backoffCountTillDismiss = [v7 decodeInt64ForKey:@"bCTD"];
    }

    v8 = v7;
    if ([v8 containsValueForKey:@"clBL"])
    {
      [v8 decodeDoubleForKey:@"clBL"];
      v5->_clearBatteryLevel = v9;
    }

    v10 = v8;
    if ([v10 containsValueForKey:@"clrd"])
    {
      v5->_cleared = [v10 decodeBoolForKey:@"clrd"];
    }

    v11 = v10;
    if ([v11 containsValueForKey:@"clTi"])
    {
      [v11 decodeDoubleForKey:@"clTi"];
      v5->_clearTime = v12;
    }

    v13 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v14 = v13;
    if ([v14 containsValueForKey:@"diBl"])
    {
      [v14 decodeDoubleForKey:@"diBl"];
      v5->_dismissBatteryLevel = v15;
    }

    v16 = v14;
    if ([v16 containsValueForKey:@"diRe"])
    {
      v5->_dismissReason = [v16 decodeIntegerForKey:@"diRe"];
    }

    v17 = v16;
    if ([v17 containsValueForKey:@"diTi"])
    {
      [v17 decodeDoubleForKey:@"diTi"];
      v5->_dismissTime = v18;
    }

    v19 = v17;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v20 = v19;
    if ([v20 containsValueForKey:@"laBL"])
    {
      [v20 decodeDoubleForKey:@"laBL"];
      v5->_lastBatteryLevel = v21;
    }

    v22 = v20;
    if ([v22 containsValueForKey:@"laST"])
    {
      [v22 decodeDoubleForKey:@"laST"];
      v5->_lastSeenTime = v23;
    }

    v24 = v22;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v25 = v24;
    if ([v25 containsValueForKey:@"prID"])
    {
      v5->_productID = [v25 decodeInt64ForKey:@"prID"];
    }

    v26 = v25;
    if ([v26 containsValueForKey:@"reBL"])
    {
      [v26 decodeDoubleForKey:@"reBL"];
      v5->_reportBatteryLevel = v27;
    }

    v28 = v26;
    if ([v28 containsValueForKey:@"reTi"])
    {
      [v28 decodeDoubleForKey:@"reTi"];
      v5->_reportTime = v29;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_type = 0;
    }

    v30 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  backoffCount = self->_backoffCount;
  v12 = v4;
  if (backoffCount)
  {
    [v4 encodeInt64:backoffCount forKey:@"baCo"];
    v4 = v12;
  }

  backoffCountTillDismiss = self->_backoffCountTillDismiss;
  if (backoffCountTillDismiss)
  {
    [v12 encodeInt64:backoffCountTillDismiss forKey:@"bCTD"];
    v4 = v12;
  }

  if (self->_clearBatteryLevel != 0.0)
  {
    [v12 encodeDouble:@"clBL" forKey:?];
    v4 = v12;
  }

  if (self->_cleared)
  {
    [v12 encodeBool:1 forKey:@"clrd"];
    v4 = v12;
  }

  if (self->_clearTime != 0.0)
  {
    [v12 encodeDouble:@"clTi" forKey:?];
    v4 = v12;
  }

  deviceAddress = self->_deviceAddress;
  if (deviceAddress)
  {
    [v12 encodeObject:deviceAddress forKey:@"daAd"];
    v4 = v12;
  }

  if (self->_dismissBatteryLevel != 0.0)
  {
    [v12 encodeDouble:@"diBl" forKey:?];
    v4 = v12;
  }

  dismissReason = self->_dismissReason;
  if (dismissReason)
  {
    [v12 encodeInteger:dismissReason forKey:@"diRe"];
    v4 = v12;
  }

  if (self->_dismissTime != 0.0)
  {
    [v12 encodeDouble:@"diTi" forKey:?];
    v4 = v12;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v12 encodeObject:identifier forKey:@"iden"];
    v4 = v12;
  }

  if (self->_lastBatteryLevel != 0.0)
  {
    [v12 encodeDouble:@"laBL" forKey:?];
    v4 = v12;
  }

  if (self->_lastSeenTime != 0.0)
  {
    [v12 encodeDouble:@"laST" forKey:?];
    v4 = v12;
  }

  notificationIdentifier = self->_notificationIdentifier;
  if (notificationIdentifier)
  {
    [v12 encodeObject:notificationIdentifier forKey:@"NoId"];
    v4 = v12;
  }

  productID = self->_productID;
  if (productID)
  {
    [v12 encodeInt64:productID forKey:@"prID"];
    v4 = v12;
  }

  if (self->_reportBatteryLevel != 0.0)
  {
    [v12 encodeDouble:@"reBL" forKey:?];
    v4 = v12;
  }

  if (self->_reportTime != 0.0)
  {
    [v12 encodeDouble:@"reTi" forKey:?];
    v4 = v12;
  }

  if (self->_type)
  {
    [v12 encodeInteger:? forKey:?];
    v4 = v12;
  }
}

- (double)durationTillCleared
{
  v3 = [(AAChargingNotificationTracker *)self cleared];
  result = 0.0;
  if (v3)
  {
    [(AAChargingNotificationTracker *)self clearTime];
    v6 = v5;
    [(AAChargingNotificationTracker *)self reportTime];
    return v6 - v7;
  }

  return result;
}

- (double)durationTillDismissed
{
  v3 = [(AAChargingNotificationTracker *)self dismissed];
  result = 0.0;
  if (v3)
  {
    [(AAChargingNotificationTracker *)self dismissTime];
    v6 = v5;
    [(AAChargingNotificationTracker *)self reportTime];
    return v6 - v7;
  }

  return result;
}

- (BOOL)posted
{
  v2 = [(AAChargingNotificationTracker *)self notificationIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (int64_t)reportedHour
{
  [(AAChargingNotificationTracker *)self reportTime];
  v3 = [NSDate dateWithTimeIntervalSince1970:v2 + 978307200.0];
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 component:32 fromDate:v3];

  return v5;
}

- (int64_t)reportedWeekday
{
  [(AAChargingNotificationTracker *)self reportTime];
  v3 = [NSDate dateWithTimeIntervalSince1970:v2 + 978307200.0];
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 component:512 fromDate:v3];

  return v5;
}

- (NSString)trackerKey
{
  v3 = [(AAChargingNotificationTracker *)self identifier];
  v4 = [AAChargingNotificationTracker trackerKeyForIdentifier:v3 andType:[(AAChargingNotificationTracker *)self type]];

  return v4;
}

@end