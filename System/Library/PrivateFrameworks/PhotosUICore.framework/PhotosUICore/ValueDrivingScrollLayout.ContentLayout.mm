@interface ValueDrivingScrollLayout.ContentLayout
- (NSIndexSet)axSpriteIndexes;
- (void)referenceSizeDidChange;
- (void)update;
- (void)visibleRectDidChange;
@end

@implementation ValueDrivingScrollLayout.ContentLayout

- (void)update
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtCC12PhotosUICore24ValueDrivingScrollLayoutP33_47CE02453974CF9C45460F69EF777CFA13ContentLayout_updater);
  if (v2)
  {
    selfCopy = self;
    [v2 updateIfNeeded];
    v4.receiver = selfCopy;
    v4.super_class = type metadata accessor for ValueDrivingScrollLayout.ContentLayout();
    [(ValueDrivingScrollLayout.ContentLayout *)&v4 update];
  }

  else
  {
    __break(1u);
  }
}

- (void)referenceSizeDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ValueDrivingScrollLayout.ContentLayout();
  v2 = v5.receiver;
  [(ValueDrivingScrollLayout.ContentLayout *)&v5 referenceSizeDidChange];
  v3 = *&v2[OBJC_IVAR____TtCC12PhotosUICore24ValueDrivingScrollLayoutP33_47CE02453974CF9C45460F69EF777CFA13ContentLayout_updater];
  if (v3)
  {
    v4 = v3;
    [v4 setNeedsUpdateOf_];
  }

  else
  {
    __break(1u);
  }
}

- (void)visibleRectDidChange
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ValueDrivingScrollLayout.ContentLayout();
  [(ValueDrivingScrollLayout.ContentLayout *)&v2 visibleRectDidChange];
}

- (NSIndexSet)axSpriteIndexes
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52414B4();
  v6 = sub_1A5241414();
  (*(v3 + 8))(v5, v2);

  return v6;
}

@end