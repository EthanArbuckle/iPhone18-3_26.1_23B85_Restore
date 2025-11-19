@interface PSSGMessagePauseResources
+ (id)messageWithResourceKeys:(id)a3 sender:(id)a4;
@end

@implementation PSSGMessagePauseResources

+ (id)messageWithResourceKeys:(id)a3 sender:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PSSGMessageBase *)[PSSGMessagePauseResources alloc] initWithType:44 string1:v5 stringSet:v6];

  return v7;
}

@end