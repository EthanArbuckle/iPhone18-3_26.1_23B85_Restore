@interface PhotosDetailsViewHeaderTungstenLayout
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (NSIndexSet)axSpriteIndexes;
- (_TtC12PhotosUICore37PhotosDetailsViewHeaderTungstenLayout)init;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (void)safeAreaInsetsDidChange;
@end

@implementation PhotosDetailsViewHeaderTungstenLayout

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosDetailsViewHeaderTungstenLayout();
  v2 = v3.receiver;
  [(PhotosDetailsViewHeaderTungstenLayout *)&v3 safeAreaInsetsDidChange];
  swift_beginAccess();
  sub_1A43F78DC();
  PXGLayout.invalidate<A>(updateFlags:with:)();
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  result = sub_1A43F79B0(a3);
  if (result)
  {

    return swift_getObjCClassFromMetadata();
  }

  return result;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *&a3;
  v6 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  sub_1A43F7A80(v4);
  type metadata accessor for PhotosDetailsViewHeaderContainerView.UserData(0);
  sub_1A43F7E60(v9 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsViewHeaderTungstenLayout_containerViewConfiguration, v8, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  v10 = sub_1A4842278(v8);

  return v10;
}

- (NSIndexSet)axSpriteIndexes
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = MEMORY[0x1E69E7CC0];
  sub_1A43F7B40();
  sub_1A43F8098(0, &qword_1EB126E90, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  sub_1A40D2B9C();
  sub_1A524E224();
  v6 = sub_1A5241414();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (_TtC12PhotosUICore37PhotosDetailsViewHeaderTungstenLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end