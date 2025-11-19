@interface TTRIHashtagWrappingCollectionView
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)isLayoutSizeDependentOnPerpendicularAxis;
- (CGSize)_layoutSizeThatFits:(CGSize)a3 fixedAxes:(unint64_t)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(void *)a3 previewForHighlightingMenuWithConfiguration:(void *)a4;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)addTagButtonAction:(id)a3;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)hashtagButtonAction:(id)a3;
- (void)layoutSubviews;
@end

@implementation TTRIHashtagWrappingCollectionView

- (id)contextMenuInteraction:(void *)a3 previewForHighlightingMenuWithConfiguration:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_21D8F8D84();

  return v9;
}

- (void)layoutSubviews
{
  v2 = self;
  TTRIHashtagWrappingCollectionView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = TTRIHashtagWrappingCollectionView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)isLayoutSizeDependentOnPerpendicularAxis
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v2)
  {
    LOBYTE(v2) = [v2 isLayoutSizeDependentOnPerpendicularAxis];
  }

  else
  {
    __break(1u);
  }

  return v2;
}

- (CGSize)_layoutSizeThatFits:(CGSize)a3 fixedAxes:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  [(TTRIHashtagWrappingCollectionView *)&v9 _layoutSizeThatFits:a4 fixedAxes:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)addTagButtonAction:(id)a3
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
    memset(v9, 0, sizeof(v9));
    v5 = self;
  }

  v6 = self + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(self, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_21D0CF7E0(v9, &qword_27CE5C690);
}

- (void)hashtagButtonAction:(id)a3
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

  sub_21D8F3088(v6);

  sub_21D0CF7E0(v6, &qword_27CE5C690);
}

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
{
  v4 = a3;
  v5 = self;
  TTRIHashtagWrappingCollectionView.containerViewDidLayoutArrangedSubviews(_:)(v4);
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v5 = self + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 32);
    swift_unknownObjectRetain();
    v8 = self;
    v9 = v7();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v5[0] = 0;
  v5[1] = 0;
  v4 = self;
  sub_21D8F381C(v5);
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v5 = xmmword_21DC19C40;
  v4 = self;
  sub_21D8F381C(&v5);
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_21D8F354C(a4);
  v10 = v9;
  v13 = v8;
  v14 = v9;
  sub_21DBF8E0C();
  sub_21D8F381C(&v13);
  sub_21D59B93C(v13, v14);
  if (v10)
  {

    v10 = 2;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277D754A8]) initWithDropOperation_];

  swift_unknownObjectRelease();

  return v11;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_21D8F8530(a4);

  swift_unknownObjectRelease();
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_21D8F8768(v10);

  return v12;
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v8 = xmmword_21DC19C40;
  v4 = self;
  sub_21D8F381C(&v8);
  v5 = *(&v4->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState);
  v6 = *(&v4->super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState);
  *(&v4->super.super + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState) = xmmword_21DC19C40;
  sub_21D59B93C(v5, v6);
  v7 = (&v4->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_targetHashtagLabelForPerformingDrop);
  *v7 = 0;
  v7[1] = 0;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = _s15RemindersUICore33TTRIHashtagWrappingCollectionViewC22contextMenuInteraction_016configurationForH10AtLocationSo09UIContextH13ConfigurationCSgSo0nhI0C_So7CGPointVtF_0();

  return v7;
}

@end