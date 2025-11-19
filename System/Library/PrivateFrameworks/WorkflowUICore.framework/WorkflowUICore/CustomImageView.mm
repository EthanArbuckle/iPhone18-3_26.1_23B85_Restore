@interface CustomImageView
- (CGSize)intrinsicContentSize;
- (_TtC14WorkflowUICoreP33_05C30733584E7BCE9234AF268964879815CustomImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation CustomImageView

- (CGSize)intrinsicContentSize
{
  v2 = sub_274B331C8();
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC14WorkflowUICoreP33_05C30733584E7BCE9234AF268964879815CustomImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  return sub_274B33258(a3, a4);
}

@end