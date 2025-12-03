@interface PXStoryChromeSystemButton
- (CGRect)clippingRect;
- (NSCopying)userData;
- (_TtC12PhotosUICore25PXStoryChromeSystemButton)initWithCoder:(id)coder;
- (_TtC12PhotosUICore25PXStoryChromeSystemButton)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setClippingRect:(CGRect)rect;
- (void)setUserData:(id)data;
@end

@implementation PXStoryChromeSystemButton

- (NSCopying)userData
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setUserData:(id)data
{
  v5 = OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_userData;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = data;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_1A441A57C(v6);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (CGRect)clippingRect
{
  v2 = (self + OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_clippingRect);
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
  v7 = (self + OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_clippingRect);
  swift_beginAccess();
  *v7 = x;
  v7[1] = y;
  v7[2] = width;
  v7[3] = height;
}

- (void)prepareForReuse
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x68);
  selfCopy = self;
  v2(0);
}

- (_TtC12PhotosUICore25PXStoryChromeSystemButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_userData) = 0;
  v8 = (self + OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_clippingRect);
  v9 = type metadata accessor for PXStoryChromeSystemButton();
  *v8 = 0u;
  v8[1] = 0u;
  v11.receiver = self;
  v11.super_class = v9;
  return [(PXStoryChromeSystemButton *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC12PhotosUICore25PXStoryChromeSystemButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_userData) = 0;
  v4 = (self + OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_clippingRect);
  *v4 = 0u;
  v4[1] = 0u;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PXStoryChromeSystemButton();
  coderCopy = coder;
  v6 = [(PXStoryChromeSystemButton *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end