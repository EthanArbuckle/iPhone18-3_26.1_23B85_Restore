@interface SubscribedLocalStatus
+ (id)predicateForSubscribedLocalStatusIDSIdentifier:(id)a3;
+ (id)predicateForSubscribedLocalStatusIdentifier:(id)a3;
+ (id)predicateForSubscribedLocalStatusIdentifier:(id)a3 idsIdentifier:(id)a4;
@end

@implementation SubscribedLocalStatus

+ (id)predicateForSubscribedLocalStatusIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[SubscribedLocalStatus identifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForSubscribedLocalStatusIDSIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[SubscribedLocalStatus idsIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForSubscribedLocalStatusIdentifier:(id)a3 idsIdentifier:(id)a4
{
  v5 = MEMORY[0x277CCAC30];
  v6 = a4;
  v7 = a3;
  v8 = +[SubscribedLocalStatus idsIdentifierKeyPath];
  v9 = +[SubscribedLocalStatus identifierKeyPath];
  v10 = [v5 predicateWithFormat:@"%K == %@ AND %K == %@", v8, v6, v9, v7];

  return v10;
}

@end