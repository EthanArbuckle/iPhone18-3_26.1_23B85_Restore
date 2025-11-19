@interface PHANotificationOptions
+ (id)stringFromNotificationType:(unsigned __int8)a3;
- (PHANotificationOptions)initWithType:(unsigned __int8)a3;
- (id)description;
@end

@implementation PHANotificationOptions

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = PHANotificationOptions;
  v4 = [(PHANotificationOptions *)&v14 description];
  v5 = [objc_opt_class() stringFromNotificationType:{-[PHANotificationOptions type](self, "type")}];
  v6 = [(PHANotificationOptions *)self title];
  v7 = [(PHANotificationOptions *)self subtitle];
  v8 = [(PHANotificationOptions *)self keyAsset];
  v9 = [(PHANotificationOptions *)self deliveryDate];
  v10 = [(PHANotificationOptions *)self keyAsset];
  v11 = [(PHANotificationOptions *)self collectionUUID];
  v12 = [v3 stringWithFormat:@"%@ - %@ Notification with:\n\tTitle: %@\n\tSubtitle: %@\n\tKey asset: %@\n\tDelivery date: %@\n\tKey asset: %@\n\tCollection uuid: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (PHANotificationOptions)initWithType:(unsigned __int8)a3
{
  v5.receiver = self;
  v5.super_class = PHANotificationOptions;
  result = [(PHANotificationOptions *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

+ (id)stringFromNotificationType:(unsigned __int8)a3
{
  v3 = &stru_2844B1BF0;
  if (a3 == 1)
  {
    v3 = @"Suggestions";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Memories";
  }
}

@end