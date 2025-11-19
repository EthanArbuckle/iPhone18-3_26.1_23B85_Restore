@interface PXStoryTransitionCut
+ (id)cut;
@end

@implementation PXStoryTransitionCut

+ (id)cut
{
  v2 = [a1 alloc];
  CMTimeMakeWithSeconds(&v5, 0.0, 600);
  v3 = [v2 initWithIdentifier:0 kind:1 duration:&v5 event:0];

  return v3;
}

@end