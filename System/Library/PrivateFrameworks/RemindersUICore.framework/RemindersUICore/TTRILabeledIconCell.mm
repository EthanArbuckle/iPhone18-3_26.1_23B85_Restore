@interface TTRILabeledIconCell
- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame;
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (_TtC15RemindersUICore19TTRILabeledIconCell)initWithArrangedSubviews:(id)subviews;
- (_TtC15RemindersUICore19TTRILabeledIconCell)initWithCoder:(id)coder;
- (_TtC15RemindersUICore19TTRILabeledIconCell)initWithFrame:(CGRect)frame;
- (void)buttonAction:(id)action;
- (void)containerViewDidLayoutArrangedSubviews:(id)subviews;
- (void)tintColorDidChange;
@end

@implementation TTRILabeledIconCell

- (_TtC15RemindersUICore19TTRILabeledIconCell)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_21D3EB248();
}

- (void)buttonAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
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

- (_TtC15RemindersUICore19TTRILabeledIconCell)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore19TTRILabeledIconCell)initWithArrangedSubviews:(id)subviews
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  viewCopy = view;
  subviewCopy = subview;
  selfCopy = self;
  sub_21D3EC234(subviewCopy);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  subviewCopy = subview;
  selfCopy = self;
  sub_21D3EC35C(subviewCopy, x, y, width, height);
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

- (void)containerViewDidLayoutArrangedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  selfCopy = self;
  sub_21D3EC6F4();
}

@end