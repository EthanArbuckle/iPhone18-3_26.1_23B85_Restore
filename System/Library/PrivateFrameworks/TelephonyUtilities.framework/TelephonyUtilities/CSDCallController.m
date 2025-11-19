@interface CSDCallController
- (CSDCallContainer)callContainer;
- (CSDCallController)initWithDataSources:(id)a3 queue:(id)a4;
- (CSDCallStateController)callStateController;
- (id)callChanged;
- (void)registerCall:(id)a3;
- (void)setCallChanged:(id)a3;
- (void)setCallStateController:(id)a3;
@end

@implementation CSDCallController

- (CSDCallContainer)callContainer
{
  v2 = self;
  sub_10000B23C();
  v4 = v3;

  return v4;
}

- (void)registerCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100023490(v4);
}

- (CSDCallStateController)callStateController
{
  v2 = sub_100326CB8();

  return v2;
}

- (void)setCallStateController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100326D24(a3);
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

- (void)setCallChanged:(id)a3
{
  v4 = _Block_copy(a3);
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

  v6 = self;
  sub_100326EFC(v4, v5);
}

- (CSDCallController)initWithDataSources:(id)a3 queue:(id)a4
{
  sub_100006AF0(0, &qword_1006A5990, off_1006165E8);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100326F1C(v5, a4);
}

@end