@interface TTRListBadgeView.ShadowLayer
- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A411ShadowLayer)init;
- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A411ShadowLayer)initWithCoder:(id)a3;
- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A411ShadowLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
@end

@implementation TTRListBadgeView.ShadowLayer

- (void)layoutSublayers
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TTRListBadgeView.ShadowLayer();
  v2 = v4.receiver;
  [(TTRListBadgeView.ShadowLayer *)&v4 layoutSublayers];
  [v2 bounds];
  v3 = CGPathCreateWithEllipseInRect(v5, 0);
  [v2 setShadowPath_];
}

- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A411ShadowLayer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRListBadgeView.ShadowLayer();
  return [(TTRNoDefaultImplicitActionLayer *)&v3 init];
}

- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A411ShadowLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v4 = sub_21DBFC62C();
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRListBadgeView.ShadowLayer();
  v5 = [(TTRNoDefaultImplicitActionLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A411ShadowLayer)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRListBadgeView.ShadowLayer();
  v4 = a3;
  v5 = [(TTRNoDefaultImplicitActionLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end