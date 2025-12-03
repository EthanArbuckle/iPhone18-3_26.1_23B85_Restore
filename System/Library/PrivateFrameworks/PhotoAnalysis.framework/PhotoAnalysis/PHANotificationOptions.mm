@interface PHANotificationOptions
+ (id)stringFromNotificationType:(unsigned __int8)type;
- (PHANotificationOptions)initWithType:(unsigned __int8)type;
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
  title = [(PHANotificationOptions *)self title];
  subtitle = [(PHANotificationOptions *)self subtitle];
  keyAsset = [(PHANotificationOptions *)self keyAsset];
  deliveryDate = [(PHANotificationOptions *)self deliveryDate];
  keyAsset2 = [(PHANotificationOptions *)self keyAsset];
  collectionUUID = [(PHANotificationOptions *)self collectionUUID];
  v12 = [v3 stringWithFormat:@"%@ - %@ Notification with:\n\tTitle: %@\n\tSubtitle: %@\n\tKey asset: %@\n\tDelivery date: %@\n\tKey asset: %@\n\tCollection uuid: %@", v4, v5, title, subtitle, keyAsset, deliveryDate, keyAsset2, collectionUUID];

  return v12;
}

- (PHANotificationOptions)initWithType:(unsigned __int8)type
{
  v5.receiver = self;
  v5.super_class = PHANotificationOptions;
  result = [(PHANotificationOptions *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

+ (id)stringFromNotificationType:(unsigned __int8)type
{
  v3 = &stru_2844B1BF0;
  if (type == 1)
  {
    v3 = @"Suggestions";
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"Memories";
  }
}

@end