@interface PendingPublishRequest
+ (id)predicateForStatusTypeIdentifier:(id)a3;
+ (id)predicateForStatusUniqueIdentifier:(id)a3;
@end

@implementation PendingPublishRequest

+ (id)predicateForStatusTypeIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[PendingPublishRequest statusTypeIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForStatusUniqueIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[PendingPublishRequest statusUniqueIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

@end