@interface SFLiveRoutePerf
+ (id)fetchRequest;
@end

@implementation SFLiveRoutePerf

+ (id)fetchRequest
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = +[SFLiveRoutePerf entityName];
  v4 = [v2 initWithEntityName:v3];

  return v4;
}

@end