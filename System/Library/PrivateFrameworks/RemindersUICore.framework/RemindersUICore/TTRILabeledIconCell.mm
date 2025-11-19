@interface TTRILabeledIconCell
- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5;
- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5;
- (_TtC15RemindersUICore19TTRILabeledIconCell)initWithArrangedSubviews:(id)a3;
- (_TtC15RemindersUICore19TTRILabeledIconCell)initWithCoder:(id)a3;
- (_TtC15RemindersUICore19TTRILabeledIconCell)initWithFrame:(CGRect)a3;
- (void)buttonAction:(id)a3;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
- (void)tintColorDidChange;
@end

@implementation TTRILabeledIconCell

- (_TtC15RemindersUICore19TTRILabeledIconCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_cellDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isDebugTitleFramesEnabled) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView) = 0;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews);
  *v4 = 0;
  v4[1] = 0;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_21D3EB248();
}

- (void)buttonAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21D3EA7B0(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_index));

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_21D1A8418(v6);
}

- (_TtC15RemindersUICore19TTRILabeledIconCell)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore19TTRILabeledIconCell)initWithArrangedSubviews:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = self;
  sub_21D3EC234(v8);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_21D3EC35C(v12, x, y, width, height);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D3EC6F4();
}

@end