@interface NCEventTrackerNotificationMetadata
+ (id)metadataForNotificationRequest:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithNotificationIdentifier:(id)a3 bundleIdentifier:(id)a4 date:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation NCEventTrackerNotificationMetadata

+ (id)metadataForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 notificationIdentifier];
  v7 = [v4 sectionIdentifier];
  v8 = [v4 timestamp];

  v9 = [v5 _initWithNotificationIdentifier:v6 bundleIdentifier:v7 date:v8];

  return v9;
}

- (id)_initWithNotificationIdentifier:(id)a3 bundleIdentifier:(id)a4 date:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = NCEventTrackerNotificationMetadata;
  v11 = [(NCEventTrackerNotificationMetadata *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    notificationIdentifier = v11->_notificationIdentifier;
    v11->_notificationIdentifier = v12;

    v14 = [v9 copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v14;

    v16 = [v10 copy];
    date = v11->_date;
    v11->_date = v16;
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NCEventTrackerNotificationMetadata *)self notificationIdentifier];
  v5 = [v3 appendObject:v4 withName:@"notification identifier"];

  v6 = [(NCEventTrackerNotificationMetadata *)self bundleIdentifier];
  v7 = [v3 appendObject:v6 withName:@"bundle identifier"];

  v8 = [(NCEventTrackerNotificationMetadata *)self date];
  v9 = [v3 appendObject:v8 withName:@"date"];

  v10 = [v3 build];

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(NCEventTrackerNotificationMetadata *)self notificationIdentifier];
  v5 = [v3 appendObject:v4];

  v6 = [(NCEventTrackerNotificationMetadata *)self bundleIdentifier];
  v7 = [v3 appendObject:v6];

  v8 = [(NCEventTrackerNotificationMetadata *)self date];
  v9 = [v3 appendObject:v8];

  v10 = [v3 hash];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v5 = v4) != 0)
    {
      v6 = v5;
      v7 = [(NCEventTrackerNotificationMetadata *)self notificationIdentifier];
      v8 = [(NCEventTrackerNotificationMetadata *)v6 notificationIdentifier];
      if (BSEqualObjects())
      {
        v9 = [(NCEventTrackerNotificationMetadata *)self bundleIdentifier];
        v10 = [(NCEventTrackerNotificationMetadata *)v6 bundleIdentifier];
        if (BSEqualObjects())
        {
          v11 = [(NCEventTrackerNotificationMetadata *)self date];
          v12 = [(NCEventTrackerNotificationMetadata *)v6 date];
          v13 = BSEqualObjects();
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end