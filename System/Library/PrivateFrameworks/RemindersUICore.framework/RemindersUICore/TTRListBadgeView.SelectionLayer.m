@interface TTRListBadgeView.SelectionLayer
- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer)init;
- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer)initWithCoder:(id)a3;
- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer)initWithLayer:(id)a3;
@end

@implementation TTRListBadgeView.SelectionLayer

- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer)init
{
  v2 = self + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v2[40] = 2;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TTRListBadgeView.SelectionLayer();
  v3 = [(TTRNoDefaultImplicitActionLayer *)&v5 init];
  [(TTRListBadgeView.SelectionLayer *)v3 setBackgroundColor:0];
  return v3;
}

- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  v4 = self + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v4[40] = 2;
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = sub_21DBFC62C();
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRListBadgeView.SelectionLayer();
  v6 = [(TTRNoDefaultImplicitActionLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  [(TTRListBadgeView.SelectionLayer *)v6 setBackgroundColor:0];
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v3[40] = 2;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

@end