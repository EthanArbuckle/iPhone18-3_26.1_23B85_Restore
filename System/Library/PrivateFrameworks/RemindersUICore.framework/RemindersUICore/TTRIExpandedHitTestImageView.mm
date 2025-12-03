@interface TTRIExpandedHitTestImageView
- (CGRect)accessibilityFrame;
- (_TtC15RemindersUICore28TTRIExpandedHitTestImageView)initWithImage:(id)image;
- (_TtC15RemindersUICore28TTRIExpandedHitTestImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation TTRIExpandedHitTestImageView

- (CGRect)accessibilityFrame
{
  v2 = sub_21D5DF1B4(self, a2, type metadata accessor for TTRIExpandedHitTestImageView);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_TtC15RemindersUICore28TTRIExpandedHitTestImageView)initWithImage:(id)image
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TTRIExpandedHitTestImageView();
  return [(TTRIExpandedHitTestImageView *)&v5 initWithImage:image];
}

- (_TtC15RemindersUICore28TTRIExpandedHitTestImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRIExpandedHitTestImageView();
  return [(TTRIExpandedHitTestImageView *)&v7 initWithImage:image highlightedImage:highlightedImage];
}

@end