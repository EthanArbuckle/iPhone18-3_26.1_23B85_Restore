@interface SACommandSucceeded(SiriUIFoundationAdditions)
+ (id)sruif_commandSucceededWithRefId:()SiriUIFoundationAdditions;
@end

@implementation SACommandSucceeded(SiriUIFoundationAdditions)

+ (id)sruif_commandSucceededWithRefId:()SiriUIFoundationAdditions
{
  v3 = MEMORY[0x277D47218];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setRefId:v4];

  return v5;
}

@end