@interface RMManagementSourceMetadata
+ (id)fetchRequestWithManagementSource:(id)source;
+ (id)fetchRequestWithManagementSource:(id)source key:(id)key;
- (id)reportDetails;
@end

@implementation RMManagementSourceMetadata

+ (id)fetchRequestWithManagementSource:(id)source
{
  sourceCopy = source;
  fetchRequest = [self fetchRequest];
  sourceCopy = [NSPredicate predicateWithFormat:@"(%K == %@)", @"managementSource", sourceCopy];

  [fetchRequest setPredicate:sourceCopy];

  return fetchRequest;
}

+ (id)fetchRequestWithManagementSource:(id)source key:(id)key
{
  keyCopy = key;
  sourceCopy = source;
  fetchRequest = [self fetchRequest];
  keyCopy = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)", @"managementSource", sourceCopy, @"key", keyCopy];

  [fetchRequest setPredicate:keyCopy];

  return fetchRequest;
}

- (id)reportDetails
{
  v3 = objc_opt_new();
  v4 = [(RMManagementSourceMetadata *)self key];
  [v3 setObject:v4 forKeyedSubscript:@"key"];

  value = [(RMManagementSourceMetadata *)self value];
  [v3 setObject:value forKeyedSubscript:@"value"];

  managementSource = [(RMManagementSourceMetadata *)self managementSource];
  identifier = [managementSource identifier];
  [v3 setObject:identifier forKeyedSubscript:@"managementSource"];

  v8 = [v3 copy];

  return v8;
}

@end