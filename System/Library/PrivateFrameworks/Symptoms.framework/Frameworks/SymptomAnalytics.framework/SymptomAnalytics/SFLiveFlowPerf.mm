@interface SFLiveFlowPerf
+ (id)fetchRequest;
@end

@implementation SFLiveFlowPerf

+ (id)fetchRequest
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = +[SFLiveFlowPerf entityName];
  v4 = [v2 initWithEntityName:v3];

  return v4;
}

@end