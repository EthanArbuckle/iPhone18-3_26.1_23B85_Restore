@interface VUIActionLeaveGroupSession
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionLeaveGroupSession

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  handlerCopy = handler;
  +[VUIGroupActivitiesManagerObjC leaveSession];
  v4 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
    v4 = handlerCopy;
  }
}

@end