@interface WFMarkdownTextDrawingView
- (_TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)drawRect:(CGRect)rect;
@end

@implementation WFMarkdownTextDrawingView

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_274B5BA5C(x, y, width, height);
}

- (_TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  return sub_274B5CB40(container, x, y, width, height);
}

@end