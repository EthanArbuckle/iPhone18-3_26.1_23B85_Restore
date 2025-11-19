@interface StickerCollectionBlankCell
- (_TtC10StickersUI26StickerCollectionBlankCell)initWithCoder:(id)a3;
- (_TtC10StickersUI26StickerCollectionBlankCell)initWithFrame:(CGRect)a3;
@end

@implementation StickerCollectionBlankCell

- (_TtC10StickersUI26StickerCollectionBlankCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for StickerCollectionBlankCell();
  v7 = [(StickerCollectionBlankCell *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  [(StickerCollectionBlankCell *)v9 setBackgroundColor:v10];

  return v9;
}

- (_TtC10StickersUI26StickerCollectionBlankCell)initWithCoder:(id)a3
{
  result = sub_26BA9BD9C();
  __break(1u);
  return result;
}

@end