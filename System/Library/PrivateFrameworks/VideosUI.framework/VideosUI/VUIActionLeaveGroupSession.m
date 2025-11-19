@interface VUIActionLeaveGroupSession
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionLeaveGroupSession

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  +[VUIGroupActivitiesManagerObjC leaveSession];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 1);
    v4 = v5;
  }
}

@end