@interface SFAppDomainUsage
+ (id)fetchRequest;
@end

@implementation SFAppDomainUsage

+ (id)fetchRequest
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = +[SFAppDomainUsage entityName];
  v4 = [v2 initWithEntityName:v3];

  return v4;
}

@end