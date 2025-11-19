@interface TTRListBadgeView.BackgroundLayer
- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer)initWithLayer:(id)a3;
- (float)opacity;
- (void)layoutSublayers;
- (void)setOpacity:(float)a3;
@end

@implementation TTRListBadgeView.BackgroundLayer

- (void)layoutSublayers
{
  v2 = self;
  sub_21D11D2E0();
}

- (float)opacity
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1.0;
  }

  v3 = Strong;
  [Strong opacity];
  v5 = v4;

  return v5;
}

- (void)setOpacity:(float)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    *&v5 = a3;
    [Strong setOpacity_];
  }
}

- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  return sub_21DB39768(v4);
}

@end