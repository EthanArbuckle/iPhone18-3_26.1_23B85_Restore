@interface InAppReviewRequest
+ (id)entityForContext:(id)context;
- (id)valueHash;
@end

@implementation InAppReviewRequest

+ (id)entityForContext:(id)context
{
  persistentStoreCoordinator = [context persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];

  entitiesByName = [managedObjectModel entitiesByName];
  v6 = [entitiesByName objectForKey:@"InAppReviewRequest"];

  return v6;
}

- (id)valueHash
{
  bundleIdentifier = [(InAppReviewRequest *)self bundleIdentifier];
  if (!bundleIdentifier)
  {
    goto LABEL_5;
  }

  v4 = bundleIdentifier;
  bundleVersion = [(InAppReviewRequest *)self bundleVersion];
  if (!bundleVersion)
  {
    stringValue = 0;
    goto LABEL_7;
  }

  v6 = bundleVersion;
  date = [(InAppReviewRequest *)self date];

  if (!date)
  {
LABEL_5:
    stringValue = 0;
    goto LABEL_8;
  }

  bundleIdentifier2 = [(InAppReviewRequest *)self bundleIdentifier];
  bundleVersion2 = [(InAppReviewRequest *)self bundleVersion];
  date2 = [(InAppReviewRequest *)self date];
  v11 = [date2 description];
  v4 = [NSString stringWithFormat:@"%@%@%@", bundleIdentifier2, bundleVersion2, v11];

  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 hash]);
  stringValue = [v12 stringValue];

LABEL_7:
LABEL_8:

  return stringValue;
}

@end