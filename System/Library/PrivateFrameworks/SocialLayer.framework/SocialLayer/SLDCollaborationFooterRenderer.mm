@interface SLDCollaborationFooterRenderer
- (SLDCollaborationFooterRenderer)initWithStyle:(id)style tag:(id)tag;
- (void)_renderString:(id)string inRect:(CGRect)rect context:(CGContext *)context;
- (void)_renderSubtitleInContext:(CGContext *)context titleRect:(CGRect)rect;
- (void)_renderTitleInContext:(CGContext *)context resultingRect:(CGRect *)rect;
- (void)renderInContext:(CGContext *)context;
@end

@implementation SLDCollaborationFooterRenderer

- (SLDCollaborationFooterRenderer)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v14.receiver = self;
  v14.super_class = SLDCollaborationFooterRenderer;
  v9 = [(SLDCollaborationFooterRenderer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotStyle, style);
    objc_storeStrong(&v10->_slotTag, tag);
    v11 = [[SLDCollaborationFooterMetrics alloc] initWithSlotStyle:styleCopy tag:tagCopy];
    metrics = v10->_metrics;
    v10->_metrics = v11;
  }

  return v10;
}

- (void)renderInContext:(CGContext *)context
{
  v10 = 0u;
  v11 = 0u;
  slotTag = [(SLDCollaborationFooterRenderer *)self slotTag];
  title = [slotTag title];

  if (title)
  {
    [(SLDCollaborationFooterRenderer *)self _renderTitleInContext:context resultingRect:&v10];
  }

  else
  {
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *MEMORY[0x277CBF3A0];
    v11 = v7;
  }

  v8 = [(SLDCollaborationFooterRenderer *)self slotTag:v10];
  subtitle = [v8 subtitle];

  if (subtitle)
  {
    [(SLDCollaborationFooterRenderer *)self _renderSubtitleInContext:context titleRect:v10, v11];
  }
}

- (void)_renderTitleInContext:(CGContext *)context resultingRect:(CGRect *)rect
{
  metrics = [(SLDCollaborationFooterRenderer *)self metrics];
  titleAttributedString = [metrics titleAttributedString];

  metrics2 = [(SLDCollaborationFooterRenderer *)self metrics];
  [metrics2 boundingRectForString:titleAttributedString];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(SLDCollaborationFooterRenderer *)self _renderString:titleAttributedString inRect:context context:v10, v12, v14, v16];
  rect->origin.x = v10;
  rect->origin.y = v12;
  rect->size.width = v14;
  rect->size.height = v16;
}

- (void)_renderSubtitleInContext:(CGContext *)context titleRect:(CGRect)rect
{
  height = rect.size.height;
  y = rect.origin.y;
  v8 = [(SLDCollaborationFooterRenderer *)self metrics:rect.origin.x];
  subtitleAttributedString = [v8 subtitleAttributedString];

  v9 = -(y + height);
  metrics = [(SLDCollaborationFooterRenderer *)self metrics];
  [metrics boundingRectForString:subtitleAttributedString];
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(SLDCollaborationFooterRenderer *)self _renderString:subtitleAttributedString inRect:context context:v12, v9, v14, v16];
}

- (void)_renderString:(id)string inRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  stringCopy = string;
  v11 = CTFramesetterCreateWithAttributedString(stringCopy);
  Mutable = CGPathCreateMutable();
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGPathAddRect(Mutable, 0, v17);
  v13 = [(__CFAttributedString *)stringCopy length];

  v16.location = 0;
  v16.length = v13;
  Frame = CTFramesetterCreateFrame(v11, v16, Mutable, 0);
  CGContextSaveGState(context);
  v15.a = 1.0;
  v15.b = 0.0;
  v15.c = 0.0;
  v15.d = 1.0;
  v15.tx = x;
  v15.ty = 0.0;
  CGContextSetTextMatrix(context, &v15);
  CGContextTranslateCTM(context, 0.0, height);
  CGContextScaleCTM(context, 1.0, -1.0);
  CTFrameDraw(Frame, context);
  CGContextRestoreGState(context);
  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (Frame)
  {
    CFRelease(Frame);
  }
}

@end