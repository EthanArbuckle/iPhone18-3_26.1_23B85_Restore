@interface RMManagementSourceMetadata
+ (id)fetchRequestWithManagementSource:(id)a3;
+ (id)fetchRequestWithManagementSource:(id)a3 key:(id)a4;
- (id)reportDetails;
@end

@implementation RMManagementSourceMetadata

+ (id)fetchRequestWithManagementSource:(id)a3
{
  v4 = a3;
  v5 = [a1 fetchRequest];
  v6 = [NSPredicate predicateWithFormat:@"(%K == %@)", @"managementSource", v4];

  [v5 setPredicate:v6];

  return v5;
}

+ (id)fetchRequestWithManagementSource:(id)a3 key:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 fetchRequest];
  v9 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)", @"managementSource", v7, @"key", v6];

  [v8 setPredicate:v9];

  return v8;
}

- (id)reportDetails
{
  v3 = objc_opt_new();
  v4 = [(RMManagementSourceMetadata *)self key];
  [v3 setObject:v4 forKeyedSubscript:@"key"];

  v5 = [(RMManagementSourceMetadata *)self value];
  [v3 setObject:v5 forKeyedSubscript:@"value"];

  v6 = [(RMManagementSourceMetadata *)self managementSource];
  v7 = [v6 identifier];
  [v3 setObject:v7 forKeyedSubscript:@"managementSource"];

  v8 = [v3 copy];

  return v8;
}

@end