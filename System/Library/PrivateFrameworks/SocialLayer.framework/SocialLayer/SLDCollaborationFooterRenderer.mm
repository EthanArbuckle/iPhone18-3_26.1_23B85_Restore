@interface SLDCollaborationFooterRenderer
- (SLDCollaborationFooterRenderer)initWithStyle:(id)a3 tag:(id)a4;
- (void)_renderString:(id)a3 inRect:(CGRect)a4 context:(CGContext *)a5;
- (void)_renderSubtitleInContext:(CGContext *)a3 titleRect:(CGRect)a4;
- (void)_renderTitleInContext:(CGContext *)a3 resultingRect:(CGRect *)a4;
- (void)renderInContext:(CGContext *)a3;
@end

@implementation SLDCollaborationFooterRenderer

- (SLDCollaborationFooterRenderer)initWithStyle:(id)a3 tag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SLDCollaborationFooterRenderer;
  v9 = [(SLDCollaborationFooterRenderer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotStyle, a3);
    objc_storeStrong(&v10->_slotTag, a4);
    v11 = [[SLDCollaborationFooterMetrics alloc] initWithSlotStyle:v7 tag:v8];
    metrics = v10->_metrics;
    v10->_metrics = v11;
  }

  return v10;
}

- (void)renderInContext:(CGContext *)a3
{
  v10 = 0u;
  v11 = 0u;
  v5 = [(SLDCollaborationFooterRenderer *)self slotTag];
  v6 = [v5 title];

  if (v6)
  {
    [(SLDCollaborationFooterRenderer *)self _renderTitleInContext:a3 resultingRect:&v10];
  }

  else
  {
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *MEMORY[0x277CBF3A0];
    v11 = v7;
  }

  v8 = [(SLDCollaborationFooterRenderer *)self slotTag:v10];
  v9 = [v8 subtitle];

  if (v9)
  {
    [(SLDCollaborationFooterRenderer *)self _renderSubtitleInContext:a3 titleRect:v10, v11];
  }
}

- (void)_renderTitleInContext:(CGContext *)a3 resultingRect:(CGRect *)a4
{
  v7 = [(SLDCollaborationFooterRenderer *)self metrics];
  v17 = [v7 titleAttributedString];

  v8 = [(SLDCollaborationFooterRenderer *)self metrics];
  [v8 boundingRectForString:v17];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(SLDCollaborationFooterRenderer *)self _renderString:v17 inRect:a3 context:v10, v12, v14, v16];
  a4->origin.x = v10;
  a4->origin.y = v12;
  a4->size.width = v14;
  a4->size.height = v16;
}

- (void)_renderSubtitleInContext:(CGContext *)a3 titleRect:(CGRect)a4
{
  height = a4.size.height;
  y = a4.origin.y;
  v8 = [(SLDCollaborationFooterRenderer *)self metrics:a4.origin.x];
  v17 = [v8 subtitleAttributedString];

  v9 = -(y + height);
  v10 = [(SLDCollaborationFooterRenderer *)self metrics];
  [v10 boundingRectForString:v17];
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(SLDCollaborationFooterRenderer *)self _renderString:v17 inRect:a3 context:v12, v9, v14, v16];
}

- (void)_renderString:(id)a3 inRect:(CGRect)a4 context:(CGContext *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v11 = CTFramesetterCreateWithAttributedString(v10);
  Mutable = CGPathCreateMutable();
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGPathAddRect(Mutable, 0, v17);
  v13 = [(__CFAttributedString *)v10 length];

  v16.location = 0;
  v16.length = v13;
  Frame = CTFramesetterCreateFrame(v11, v16, Mutable, 0);
  CGContextSaveGState(a5);
  v15.a = 1.0;
  v15.b = 0.0;
  v15.c = 0.0;
  v15.d = 1.0;
  v15.tx = x;
  v15.ty = 0.0;
  CGContextSetTextMatrix(a5, &v15);
  CGContextTranslateCTM(a5, 0.0, height);
  CGContextScaleCTM(a5, 1.0, -1.0);
  CTFrameDraw(Frame, a5);
  CGContextRestoreGState(a5);
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