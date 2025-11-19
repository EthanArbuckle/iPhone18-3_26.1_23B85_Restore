@interface FBSScene(SBContinuitySessionSceneParticipant)
- (id)continuitySessionSceneParticipant;
@end

@implementation FBSScene(SBContinuitySessionSceneParticipant)

- (id)continuitySessionSceneParticipant
{
  v2 = [a1 continuitySessionParticipantClientComponent];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
LABEL_5:
    v7 = v4;
    goto LABEL_6;
  }

  v5 = [a1 settings];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v4 = [a1 settings];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end