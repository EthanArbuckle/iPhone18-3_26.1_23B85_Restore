@interface SLDHighlightDisambiguationPillDrawing
- (CGSize)drawingSize;
- (SLDHighlightDisambiguationPillDrawing)initWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation SLDHighlightDisambiguationPillDrawing

- (SLDHighlightDisambiguationPillDrawing)initWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote
{
  styleCopy = style;
  tagCopy = tag;
  v16.receiver = self;
  v16.super_class = SLDHighlightDisambiguationPillDrawing;
  v11 = [(SLDHighlightDisambiguationPillDrawing *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_slotStyle, style);
    if ([tagCopy isMemberOfClass:objc_opt_class()])
    {
      v13 = tagCopy;
      p_super = &v12->_tag->super.super.super;
      v12->_tag = v13;
    }

    else
    {
      p_super = SLDaemonLogHandle();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [SLDHighlightDisambiguationPillDrawing initWithStyle:v12 tag:tagCopy forRemote:p_super];
      }
    }

    v12->_forRemote = remote;
    v12->_isRTL = [styleCopy layoutDirection] == 1;
  }

  return v12;
}

- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point
{
  if ([(SLDHighlightDisambiguationPillDrawing *)self forRemote:point.x])
  {
    v6 = [SLDHighlightDisambiguationPillRenderer alloc];
    slotStyle = [(SLDHighlightDisambiguationPillDrawing *)self slotStyle];
    v8 = [(SLDHighlightDisambiguationPillDrawing *)self tag];
    v10 = [(SLDHighlightDisambiguationPillRenderer *)v6 initWithStyle:slotStyle tag:v8];

    v9 = v10;
    if (v10)
    {
      [(SLDHighlightDisambiguationPillRenderer *)v10 renderInContext:context];
      v9 = v10;
    }
  }
}

- (CGSize)drawingSize
{
  v3 = [SLHighlightDisambiguationPillMetrics alloc];
  slotStyle = [(SLDHighlightDisambiguationPillDrawing *)self slotStyle];
  v5 = [(SLDHighlightDisambiguationPillDrawing *)self tag];
  v6 = [(SLHighlightDisambiguationPillMetrics *)v3 initWithSlotStyle:slotStyle tag:v5];

  [(SLHighlightDisambiguationPillMetrics *)v6 pillSize];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)initWithStyle:(uint64_t)a1 tag:(uint64_t)a2 forRemote:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_231772000, log, OS_LOG_TYPE_ERROR, "[SLDHighlightDisambiguationPillDrawing %p] Tried to initialize with a tag of the wrong type: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end