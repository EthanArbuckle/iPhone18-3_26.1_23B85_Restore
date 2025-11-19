@interface RemovedUser
+ (id)predicateForHandle:(id)a3;
+ (id)predicateForHandleString:(id)a3;
+ (id)predicateForPresenceIdentifier:(id)a3;
+ (id)predicateForStatusTypeIdentifier:(id)a3;
@end

@implementation RemovedUser

+ (id)predicateForHandle:(id)a3
{
  v4 = [a3 normalizedHandleString];
  v5 = [a1 predicateForHandleString:v4];

  return v5;
}

+ (id)predicateForHandleString:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[RemovedUser handleKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForStatusTypeIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[RemovedUser statusTypeIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForPresenceIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[RemovedUser presenceIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

@end