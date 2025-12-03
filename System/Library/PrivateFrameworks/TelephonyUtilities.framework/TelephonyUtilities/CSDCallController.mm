@interface CSDCallController
- (CSDCallContainer)callContainer;
- (CSDCallController)initWithDataSources:(id)sources queue:(id)queue;
- (CSDCallStateController)callStateController;
- (id)callChanged;
- (void)registerCall:(id)call;
- (void)setCallChanged:(id)changed;
- (void)setCallStateController:(id)controller;
@end

@implementation CSDCallController

- (CSDCallContainer)callContainer
{
  selfCopy = self;
  sub_10000B23C();
  v4 = v3;

  return v4;
}

- (void)registerCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_100023490(callCopy);
}

- (CSDCallStateController)callStateController
{
  v2 = sub_100326CB8();

  return v2;
}

- (void)setCallStateController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100326D24(controller);
}

- (id)callChanged
{
  v2 = sub_100326E14();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100024F0C;
    v6[3] = &unk_100627520;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCallChanged:(id)changed
{
  v4 = _Block_copy(changed);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1000174A8;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_100326EFC(v4, v5);
}

- (CSDCallController)initWithDataSources:(id)sources queue:(id)queue
{
  sub_100006AF0(0, &qword_1006A5990, off_1006165E8);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100326F1C(v5, queue);
}

@end