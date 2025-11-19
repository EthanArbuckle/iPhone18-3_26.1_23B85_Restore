@interface FBSDisplayLayoutPublisherConfiguration(SBSContinuityDisplayLayout)
+ (id)configurationForContinuityDisplay;
@end

@implementation FBSDisplayLayoutPublisherConfiguration(SBSContinuityDisplayLayout)

+ (id)configurationForContinuityDisplay
{
  v0 = objc_alloc_init(MEMORY[0x1E699FB08]);
  [v0 setDomainIdentifier:@"com.apple.frontboard"];
  [v0 setInstanceIdentifier:@"com.apple.SpringBoard.continuity-display"];

  return v0;
}

@end