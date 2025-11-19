@interface NSManagedObject(RTExtensions)
+ (id)entityName;
@end

@implementation NSManagedObject(RTExtensions)

+ (id)entityName
{
  v1 = [a1 entity];
  v2 = [v1 name];

  return v2;
}

@end