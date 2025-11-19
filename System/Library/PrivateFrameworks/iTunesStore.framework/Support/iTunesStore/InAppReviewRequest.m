@interface InAppReviewRequest
+ (id)entityForContext:(id)a3;
- (id)valueHash;
@end

@implementation InAppReviewRequest

+ (id)entityForContext:(id)a3
{
  v3 = [a3 persistentStoreCoordinator];
  v4 = [v3 managedObjectModel];

  v5 = [v4 entitiesByName];
  v6 = [v5 objectForKey:@"InAppReviewRequest"];

  return v6;
}

- (id)valueHash
{
  v3 = [(InAppReviewRequest *)self bundleIdentifier];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(InAppReviewRequest *)self bundleVersion];
  if (!v5)
  {
    v13 = 0;
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [(InAppReviewRequest *)self date];

  if (!v7)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = [(InAppReviewRequest *)self bundleIdentifier];
  v9 = [(InAppReviewRequest *)self bundleVersion];
  v10 = [(InAppReviewRequest *)self date];
  v11 = [v10 description];
  v4 = [NSString stringWithFormat:@"%@%@%@", v8, v9, v11];

  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 hash]);
  v13 = [v12 stringValue];

LABEL_7:
LABEL_8:

  return v13;
}

@end