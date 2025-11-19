@interface RBSProcessReportedProcesses
+ (id)reportedPredicate;
@end

@implementation RBSProcessReportedProcesses

+ (id)reportedPredicate
{
  v2 = objc_alloc_init(RBSProcessReportedProcesses);
  v3 = [RBSProcessPredicate predicateMatching:v2];

  return v3;
}

@end