@interface SLDHighlightPillDrawing
- (CGSize)drawingSize;
- (SLDHighlightPillDrawing)initWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5;
- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4;
- (void)drawingSize;
@end

@implementation SLDHighlightPillDrawing

- (SLDHighlightPillDrawing)initWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SLDHighlightPillDrawing;
  v11 = [(SLDHighlightPillDrawing *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_slotStyle, a3);
    if ([v10 isMemberOfClass:objc_opt_class()])
    {
      objc_storeStrong(&v12->_tag, a4);
    }

    v12->_forRemote = a5;
    v12->_isRTL = [v9 layoutDirection] == 1;
  }

  return v12;
}

- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4
{
  if ([(SLDHighlightPillDrawing *)self forRemote:a4.x])
  {
    v6 = [SLDHighlightPillRenderer alloc];
    v7 = [(SLDHighlightPillDrawing *)self slotStyle];
    v8 = [(SLDHighlightPillDrawing *)self tag];
    v10 = [(SLDHighlightPillRenderer *)v6 initWithStyle:v7 tag:v8];

    v9 = v10;
    if (v10)
    {
      [(SLDHighlightPillRenderer *)v10 renderInContext:a3];
      v9 = v10;
    }
  }
}

- (CGSize)drawingSize
{
  v3 = [SLHighlightPillMetrics alloc];
  v4 = [(SLDHighlightPillDrawing *)self slotStyle];
  v5 = [(SLDHighlightPillDrawing *)self tag];
  v6 = [(SLHighlightPillMetrics *)v3 initWithSlotStyle:v4 tag:v5];

  [(SLHighlightPillMetrics *)v6 pillSize];
  v8 = v7;
  v10 = v9;
  v11 = [(SLDHighlightPillDrawing *)self tag];
  [v11 maxWidth];
  v13 = v12;

  if (v8 > v13)
  {
    v14 = SLDaemonLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SLDHighlightPillDrawing *)self drawingSize];
    }

    v15 = [(SLDHighlightPillDrawing *)self tag];
    [v15 maxWidth];
    v8 = v16;
  }

  v17 = v8;
  v18 = v10;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)drawingSize
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 tag];
  [v6 maxWidth];
  v9 = 134218496;
  v10 = a1;
  v11 = 2048;
  v12 = v7;
  v13 = 2048;
  v14 = a3;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLDHighlightPillSlotDrawer: %p] client specified a max width smaller than the min size to fit the non-flexible contents. This will result in incorrect layout. maxWidth: %f, non-flexible item width: %f", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end