@interface NCEventTrackerNotificationMetadata
+ (id)metadataForNotificationRequest:(id)request;
- (BOOL)isEqual:(id)equal;
- (id)_initWithNotificationIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier date:(id)date;
- (id)description;
- (unint64_t)hash;
@end

@implementation NCEventTrackerNotificationMetadata

+ (id)metadataForNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = [self alloc];
  notificationIdentifier = [requestCopy notificationIdentifier];
  sectionIdentifier = [requestCopy sectionIdentifier];
  timestamp = [requestCopy timestamp];

  v9 = [v5 _initWithNotificationIdentifier:notificationIdentifier bundleIdentifier:sectionIdentifier date:timestamp];

  return v9;
}

- (id)_initWithNotificationIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier date:(id)date
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = NCEventTrackerNotificationMetadata;
  v11 = [(NCEventTrackerNotificationMetadata *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    notificationIdentifier = v11->_notificationIdentifier;
    v11->_notificationIdentifier = v12;

    v14 = [bundleIdentifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v14;

    v16 = [dateCopy copy];
    date = v11->_date;
    v11->_date = v16;
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  notificationIdentifier = [(NCEventTrackerNotificationMetadata *)self notificationIdentifier];
  v5 = [v3 appendObject:notificationIdentifier withName:@"notification identifier"];

  bundleIdentifier = [(NCEventTrackerNotificationMetadata *)self bundleIdentifier];
  v7 = [v3 appendObject:bundleIdentifier withName:@"bundle identifier"];

  date = [(NCEventTrackerNotificationMetadata *)self date];
  v9 = [v3 appendObject:date withName:@"date"];

  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  notificationIdentifier = [(NCEventTrackerNotificationMetadata *)self notificationIdentifier];
  v5 = [builder appendObject:notificationIdentifier];

  bundleIdentifier = [(NCEventTrackerNotificationMetadata *)self bundleIdentifier];
  v7 = [builder appendObject:bundleIdentifier];

  date = [(NCEventTrackerNotificationMetadata *)self date];
  v9 = [builder appendObject:date];

  v10 = [builder hash];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v5 = equalCopy) != 0)
    {
      v6 = v5;
      notificationIdentifier = [(NCEventTrackerNotificationMetadata *)self notificationIdentifier];
      notificationIdentifier2 = [(NCEventTrackerNotificationMetadata *)v6 notificationIdentifier];
      if (BSEqualObjects())
      {
        bundleIdentifier = [(NCEventTrackerNotificationMetadata *)self bundleIdentifier];
        bundleIdentifier2 = [(NCEventTrackerNotificationMetadata *)v6 bundleIdentifier];
        if (BSEqualObjects())
        {
          date = [(NCEventTrackerNotificationMetadata *)self date];
          date2 = [(NCEventTrackerNotificationMetadata *)v6 date];
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