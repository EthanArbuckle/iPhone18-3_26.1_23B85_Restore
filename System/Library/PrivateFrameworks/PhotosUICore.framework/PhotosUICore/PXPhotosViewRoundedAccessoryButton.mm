@interface PXPhotosViewRoundedAccessoryButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (CGPoint)menuOffset;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXPhotosViewRoundedAccessoryButton)initWithCoder:(id)coder;
- (PXPhotosViewRoundedAccessoryButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setMenuOffset:(CGPoint)offset;
@end

@implementation PXPhotosViewRoundedAccessoryButton

- (CGPoint)menuOffset
{
  v2 = (self + OBJC_IVAR___PXPhotosViewRoundedAccessoryButton_menuOffset);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setMenuOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v5 = (self + OBJC_IVAR___PXPhotosViewRoundedAccessoryButton_menuOffset);
  swift_beginAccess();
  *v5 = x;
  v5[1] = y;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  v18.receiver = self;
  v18.super_class = type metadata accessor for PhotosViewRoundedAccessoryButton();
  configurationCopy = configuration;
  v5 = v18.receiver;
  v6 = [(PXPhotosViewRoundedAccessoryButton *)&v18 menuAttachmentPointForConfiguration:configurationCopy];
  v8 = v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x78);
  v11 = v10 + v9(v6);
  (v9)(v12, v13);
  v15 = v14;

  v16 = v8 + v15;
  v17 = v11;
  result.y = v16;
  result.x = v17;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1A4113858(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1A4113D98();
}

- (PXPhotosViewRoundedAccessoryButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.super.super.isa + OBJC_IVAR___PXPhotosViewRoundedAccessoryButton_symbolName);
  *v8 = 0;
  v8[1] = 0;
  v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR___PXPhotosViewRoundedAccessoryButton_menuOffset);
  v10 = type metadata accessor for PhotosViewRoundedAccessoryButton();
  *v9 = 0;
  v9[1] = 0;
  v12.receiver = self;
  v12.super_class = v10;
  return [(PXPhotosViewRoundedAccessoryButton *)&v12 initWithFrame:x, y, width, height];
}

- (PXPhotosViewRoundedAccessoryButton)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR___PXPhotosViewRoundedAccessoryButton_symbolName);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR___PXPhotosViewRoundedAccessoryButton_menuOffset);
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PhotosViewRoundedAccessoryButton();
  coderCopy = coder;
  v7 = [(PXPhotosViewRoundedAccessoryButton *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end