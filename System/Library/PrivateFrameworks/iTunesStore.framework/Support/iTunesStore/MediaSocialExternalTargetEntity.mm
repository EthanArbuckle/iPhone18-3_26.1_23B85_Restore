@interface MediaSocialExternalTargetEntity
+ (id)newEntityValuesWithMediaSocialExternalDestination:(id)destination;
@end

@implementation MediaSocialExternalTargetEntity

+ (id)newEntityValuesWithMediaSocialExternalDestination:(id)destination
{
  destinationCopy = destination;
  v4 = objc_alloc_init(NSMutableDictionary);
  accessToken = [destinationCopy accessToken];
  if (accessToken)
  {
    [v4 setObject:accessToken forKey:@"access_token"];
  }

  pageAccessToken = [destinationCopy pageAccessToken];

  if (pageAccessToken)
  {
    [v4 setObject:pageAccessToken forKey:@"page_access_token"];
  }

  pageIdentifier = [destinationCopy pageIdentifier];

  if (pageIdentifier)
  {
    [v4 setObject:pageIdentifier forKey:@"page_id"];
  }

  v8 = [NSNumber alloc];
  serviceIdentifier = [destinationCopy serviceIdentifier];
  v10 = [v8 initWithInteger:sub_1001231D0(serviceIdentifier)];

  [v4 setObject:v10 forKey:@"service_type"];
  return v4;
}

@end