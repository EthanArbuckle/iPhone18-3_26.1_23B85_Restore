@interface WFMarkdownTextDrawingView
- (_TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)drawRect:(CGRect)a3;
@end

@implementation WFMarkdownTextDrawingView

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_274B5BA5C(x, y, width, height);
}

- (_TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  return sub_274B5CB40(a4, x, y, width, height);
}

@end