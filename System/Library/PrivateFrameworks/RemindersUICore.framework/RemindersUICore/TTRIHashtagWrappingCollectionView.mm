@interface TTRIHashtagWrappingCollectionView
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (BOOL)isLayoutSizeDependentOnPerpendicularAxis;
- (CGSize)_layoutSizeThatFits:(CGSize)fits fixedAxes:(unint64_t)axes;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(void *)interaction previewForHighlightingMenuWithConfiguration:(void *)configuration;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)addTagButtonAction:(id)action;
- (void)containerViewDidLayoutArrangedSubviews:(id)subviews;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
- (void)hashtagButtonAction:(id)action;
- (void)layoutSubviews;
@end

@implementation TTRIHashtagWrappingCollectionView

- (id)contextMenuInteraction:(void *)interaction previewForHighlightingMenuWithConfiguration:(void *)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_21D8F8D84();

  return v9;
}

- (void)layoutSubviews
{
  selfCopy = self;
  TTRIHashtagWrappingCollectionView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
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

- (CGSize)_layoutSizeThatFits:(CGSize)fits fixedAxes:(unint64_t)axes
{
  height = fits.height;
  width = fits.width;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  [(TTRIHashtagWrappingCollectionView *)&v9 _layoutSizeThatFits:axes fixedAxes:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)addTagButtonAction:(id)action
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
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
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

- (void)hashtagButtonAction:(id)action
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

  sub_21D8F3088(v6);

  sub_21D0CF7E0(v6, &qword_27CE5C690);
}

- (void)containerViewDidLayoutArrangedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  selfCopy = self;
  TTRIHashtagWrappingCollectionView.containerViewDidLayoutArrangedSubviews(_:)(subviewsCopy);
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  v5 = self + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 32);
    swift_unknownObjectRetain();
    selfCopy = self;
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

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  v5[0] = 0;
  v5[1] = 0;
  selfCopy = self;
  sub_21D8F381C(v5);
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  v5 = xmmword_21DC19C40;
  selfCopy = self;
  sub_21D8F381C(&v5);
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_21D8F354C(update);
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

  initWithDropOperation_ = [objc_allocWithZone(MEMORY[0x277D754A8]) initWithDropOperation_];

  swift_unknownObjectRelease();

  return initWithDropOperation_;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21D8F8530(drop);

  swift_unknownObjectRelease();
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  interactionCopy = interaction;
  itemCopy = item;
  defaultCopy = default;
  selfCopy = self;
  v12 = sub_21D8F8768(defaultCopy);

  return v12;
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  v8 = xmmword_21DC19C40;
  selfCopy = self;
  sub_21D8F381C(&v8);
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState);
  v6 = *(&selfCopy->super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState);
  *(&selfCopy->super.super + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState) = xmmword_21DC19C40;
  sub_21D59B93C(v5, v6);
  v7 = (&selfCopy->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_targetHashtagLabelForPerformingDrop);
  *v7 = 0;
  v7[1] = 0;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = _s15RemindersUICore33TTRIHashtagWrappingCollectionViewC22contextMenuInteraction_016configurationForH10AtLocationSo09UIContextH13ConfigurationCSgSo0nhI0C_So7CGPointVtF_0();

  return v7;
}

@end