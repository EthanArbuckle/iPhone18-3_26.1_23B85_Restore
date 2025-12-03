@interface ActionTabSwitch
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation ActionTabSwitch

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1E3835F0C;
  }

  else
  {
    v7 = 0;
  }

  responderCopy = responder;
  selfCopy = self;
  sub_1E3FC7580(selfCopy, v6, v7);
  sub_1E34AF594(v6);
}

@end