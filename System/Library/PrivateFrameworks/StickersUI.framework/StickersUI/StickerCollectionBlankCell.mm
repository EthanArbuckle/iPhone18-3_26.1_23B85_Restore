@interface StickerCollectionBlankCell
- (_TtC10StickersUI26StickerCollectionBlankCell)initWithCoder:(id)coder;
- (_TtC10StickersUI26StickerCollectionBlankCell)initWithFrame:(CGRect)frame;
@end

@implementation StickerCollectionBlankCell

- (_TtC10StickersUI26StickerCollectionBlankCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for StickerCollectionBlankCell();
  height = [(StickerCollectionBlankCell *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  clearColor = [v8 clearColor];
  [(StickerCollectionBlankCell *)v9 setBackgroundColor:clearColor];

  return v9;
}

- (_TtC10StickersUI26StickerCollectionBlankCell)initWithCoder:(id)coder
{
  result = sub_26BA9BD9C();
  __break(1u);
  return result;
}

@end