@interface SFAppTypicalUsage
+ (id)fetchRequest;
@end

@implementation SFAppTypicalUsage

+ (id)fetchRequest
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = +[SFAppTypicalUsage entityName];
  v4 = [v2 initWithEntityName:v3];

  return v4;
}

@end