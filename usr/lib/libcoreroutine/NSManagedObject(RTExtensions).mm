@interface NSManagedObject(RTExtensions)
+ (id)entityName;
@end

@implementation NSManagedObject(RTExtensions)

+ (id)entityName
{
  entity = [self entity];
  name = [entity name];

  return name;
}

@end