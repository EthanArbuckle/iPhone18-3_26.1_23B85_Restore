@interface PXAssetsSectionButton
+ (double)preferredHeightWithExtendedTraitCollection:(id)collection numberOfLines:(int64_t)lines;
+ (id)configurationWithTitle:(id)title numberOfLines:(int64_t)lines action:(id)action;
- (CGRect)clippingRect;
- (NSCopying)userData;
- (PXAssetsSectionButton)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setClippingRect:(CGRect)rect;
- (void)setUserData:(id)data;
@end

@implementation PXAssetsSectionButton

+ (double)preferredHeightWithExtendedTraitCollection:(id)collection numberOfLines:(int64_t)lines
{
  objc_opt_self();
  collectionCopy = collection;
  UIFontTextStyleFromPXFontTextStyle();
}

+ (id)configurationWithTitle:(id)title numberOfLines:(int64_t)lines action:(id)action
{
  v6 = _Block_copy(action);
  v7 = sub_1A524C674();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = type metadata accessor for AssetsSectionButton.Configuration();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtCC12PhotosUICore19AssetsSectionButton13Configuration_title];
  *v13 = v7;
  v13[1] = v9;
  *&v12[OBJC_IVAR____TtCC12PhotosUICore19AssetsSectionButton13Configuration_numberOfLines] = lines;
  v14 = &v12[OBJC_IVAR____TtCC12PhotosUICore19AssetsSectionButton13Configuration_action];
  *v14 = sub_1A3F3D4CC;
  v14[1] = v10;
  v17.receiver = v12;
  v17.super_class = v11;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  return v15;
}

- (PXAssetsSectionButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___PXAssetsSectionButton_configuration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXAssetsSectionButton_userData) = 0;
  v3 = (self + OBJC_IVAR___PXAssetsSectionButton_clippingRect);
  *v3 = 0u;
  v3[1] = 0u;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AssetsSectionButton();
  v2 = v4.receiver;
  [(PXAssetsSectionButton *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR___PXAssetsSectionButton_button];
  [v2 bounds];
  [v3 setFrame_];
}

- (NSCopying)userData
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setUserData:(id)data
{
  v5 = OBJC_IVAR___PXAssetsSectionButton_userData;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = data;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  if (data)
  {
    type metadata accessor for AssetsSectionButton.Configuration();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      swift_unknownObjectRetain();
      v7 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.super.isa) + 0x78))(v7);
  swift_unknownObjectRelease();
}

- (CGRect)clippingRect
{
  v2 = (self + OBJC_IVAR___PXAssetsSectionButton_clippingRect);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setClippingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = (self + OBJC_IVAR___PXAssetsSectionButton_clippingRect);
  swift_beginAccess();
  *v7 = x;
  v7[1] = y;
  v7[2] = width;
  v7[3] = height;
}

- (void)prepareForReuse
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x78);
  selfCopy = self;
  v2(0);
}

@end