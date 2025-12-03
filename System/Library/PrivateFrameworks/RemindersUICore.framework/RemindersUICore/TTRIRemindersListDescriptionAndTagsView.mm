@interface TTRIRemindersListDescriptionAndTagsView
- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size;
- (_TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView)initWithArrangedSubviews:(id)subviews;
- (_TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView)initWithFrame:(CGRect)frame;
- (void)invalidateInternalStateForInvalidation:(int64_t)invalidation;
- (void)layoutArrangedSubviewsInBounds:(CGRect)bounds;
@end

@implementation TTRIRemindersListDescriptionAndTagsView

- (void)invalidateInternalStateForInvalidation:(int64_t)invalidation
{
  v24.receiver = self;
  v24.super_class = swift_getObjectType();
  v4 = v24.receiver;
  [(TTRIRemindersListDescriptionAndTagsView *)&v24 invalidateInternalStateForInvalidation:invalidation];
  if (invalidation > 1)
  {
    sub_21D6B9EA4(v20);
    v5 = &v4[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo];
    v6 = *&v4[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 16];
    v22[0] = *&v4[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo];
    v22[1] = v6;
    v7 = *&v4[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 80];
    v9 = *&v4[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 32];
    v8 = *&v4[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 48];
    v22[4] = *&v4[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 64];
    v22[5] = v7;
    v22[2] = v9;
    v22[3] = v8;
    v11 = *&v4[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 112];
    v10 = *&v4[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 128];
    v12 = *&v4[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 96];
    v23 = *&v4[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 144];
    v22[7] = v11;
    v22[8] = v10;
    v22[6] = v12;
    v13 = v20[1];
    *v5 = v20[0];
    *(v5 + 1) = v13;
    v14 = v20[2];
    v15 = v20[3];
    v16 = v20[5];
    *(v5 + 4) = v20[4];
    *(v5 + 5) = v16;
    *(v5 + 2) = v14;
    *(v5 + 3) = v15;
    v17 = v20[6];
    v18 = v20[7];
    v19 = v20[8];
    *(v5 + 18) = v21;
    *(v5 + 7) = v18;
    *(v5 + 8) = v19;
    *(v5 + 6) = v17;
    sub_21D0CF7E0(v22, &qword_27CE5FEF8);
  }
}

- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size
{
  width = size.width;
  selfCopy = self;
  sub_21D6B66DC(v7, width);

  sub_21D6BA094(v7);
  v5 = v8;
  v6 = v9;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutArrangedSubviewsInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  TTRIRemindersListDescriptionAndTagsView.layoutArrangedSubviews(inBounds:)(v9);
}

- (_TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView)initWithArrangedSubviews:(id)subviews
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end