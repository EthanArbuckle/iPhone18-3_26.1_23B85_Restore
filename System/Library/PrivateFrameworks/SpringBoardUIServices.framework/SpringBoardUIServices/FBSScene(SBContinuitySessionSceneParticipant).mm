@interface FBSScene(SBContinuitySessionSceneParticipant)
- (id)continuitySessionSceneParticipant;
@end

@implementation FBSScene(SBContinuitySessionSceneParticipant)

- (id)continuitySessionSceneParticipant
{
  continuitySessionParticipantClientComponent = [self continuitySessionParticipantClientComponent];
  v3 = continuitySessionParticipantClientComponent;
  if (continuitySessionParticipantClientComponent)
  {
    settings2 = continuitySessionParticipantClientComponent;
LABEL_5:
    v7 = settings2;
    goto LABEL_6;
  }

  settings = [self settings];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    settings2 = [self settings];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end