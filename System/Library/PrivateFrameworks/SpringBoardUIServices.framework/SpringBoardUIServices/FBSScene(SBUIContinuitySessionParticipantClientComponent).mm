@interface FBSScene(SBUIContinuitySessionParticipantClientComponent)
- (uint64_t)continuitySessionParticipantClientComponent;
@end

@implementation FBSScene(SBUIContinuitySessionParticipantClientComponent)

- (uint64_t)continuitySessionParticipantClientComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end