@interface TSWPHyperlinkPopoverTitleView
- (TSWPHyperlinkPopoverTitleView)initWithFrame:(CGRect)frame titleString:(id)string;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
@end

@implementation TSWPHyperlinkPopoverTitleView

- (TSWPHyperlinkPopoverTitleView)initWithFrame:(CGRect)frame titleString:(id)string
{
  v7.receiver = self;
  v7.super_class = TSWPHyperlinkPopoverTitleView;
  v5 = [(TSWPHyperlinkPopoverTitleView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    -[TSWPHyperlinkPopoverTitleView setTitleString:](v5, "setTitleString:", [string stringByRemovingPercentEncoding]);
    [(TSWPHyperlinkPopoverTitleView *)v5 setOpaque:0];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPHyperlinkPopoverTitleView;
  [(TSWPHyperlinkPopoverTitleView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(TSWPHyperlinkPopoverTitleView *)self bounds];
  CGContextClearRect(CurrentContext, v32);
  CGContextSetFillColorWithColor(CurrentContext, [objc_msgSend(MEMORY[0x277D6C2A8] "blackColor")]);
  for (i = 18.0; ; i = i + -1.0)
  {
    v6 = [MEMORY[0x277D74300] boldSystemFontOfSize:i];
    [(NSString *)[(TSWPHyperlinkPopoverTitleView *)self titleString] sizeWithFont:v6];
    v8 = v7;
    [(TSWPHyperlinkPopoverTitleView *)self bounds];
    if (i == 12.0 || v8 < v9)
    {
      break;
    }
  }

  titleString = [(TSWPHyperlinkPopoverTitleView *)self titleString];
  [(TSWPHyperlinkPopoverTitleView *)self bounds];
  [(NSString *)titleString sizeWithFont:v6 constrainedToSize:5 lineBreakMode:v12, v13];
  v15 = v14;
  v17 = v16;
  [(TSWPHyperlinkPopoverTitleView *)self bounds];
  v19 = v18 - v17;
  [(TSWPHyperlinkPopoverTitleView *)self bounds];
  v21 = v20 - v15;
  [(TSWPHyperlinkPopoverTitleView *)self bounds];
  v23 = v22 + v19 * 0.5;
  v25 = v24 - v19;
  v27 = v26 + v21 * 0.5;
  v29 = v28 - v21;
  titleString2 = [(TSWPHyperlinkPopoverTitleView *)self titleString];

  [(NSString *)titleString2 drawInRect:v6 withFont:5 lineBreakMode:1 alignment:v27, v23, v29, v25];
}

@end