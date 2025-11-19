@interface SFAppEndpoint
+ (id)fetchRequest;
@end

@implementation SFAppEndpoint

+ (id)fetchRequest
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = +[SFAppEndpoint entityName];
  v4 = [v2 initWithEntityName:v3];

  return v4;
}

@end