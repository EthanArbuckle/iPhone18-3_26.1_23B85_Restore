@interface SLDCollaborationFooterDrawing
- (CGSize)drawingSize;
- (SLDCollaborationFooterDrawing)initWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5;
- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4;
@end

@implementation SLDCollaborationFooterDrawing

- (SLDCollaborationFooterDrawing)initWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = SLDCollaborationFooterDrawing;
  v11 = [(SLDCollaborationFooterDrawing *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_slotStyle, a3);
    if ([v10 isMemberOfClass:objc_opt_class()])
    {
      v13 = v10;
      p_super = &v12->_tag->super.super.super;
      v12->_tag = v13;
    }

    else
    {
      p_super = SLDaemonLogHandle();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [SLDCollaborationFooterDrawing initWithStyle:v12 tag:v10 forRemote:p_super];
      }
    }

    v12->_forRemote = a5;
    v12->_isRTL = [v9 layoutDirection] == 1;
  }

  return v12;
}

- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4
{
  if ([(SLDCollaborationFooterDrawing *)self forRemote:a4.x])
  {
    v6 = [SLDCollaborationFooterRenderer alloc];
    v7 = [(SLDCollaborationFooterDrawing *)self slotStyle];
    v8 = [(SLDCollaborationFooterDrawing *)self tag];
    v10 = [(SLDCollaborationFooterRenderer *)v6 initWithStyle:v7 tag:v8];

    v9 = v10;
    if (v10)
    {
      [(SLDCollaborationFooterRenderer *)v10 renderInContext:a3];
      v9 = v10;
    }
  }
}

- (CGSize)drawingSize
{
  v3 = [SLDCollaborationFooterMetrics alloc];
  v4 = [(SLDCollaborationFooterDrawing *)self slotStyle];
  v5 = [(SLDCollaborationFooterDrawing *)self tag];
  v6 = [(SLDCollaborationFooterMetrics *)v3 initWithSlotStyle:v4 tag:v5];

  v7 = [(SLDCollaborationFooterDrawing *)self tag];
  [v7 maxWidth];
  v9 = v8;
  [(SLDCollaborationFooterMetrics *)v6 expectedHeight];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)initWithStyle:(uint64_t)a1 tag:(uint64_t)a2 forRemote:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_231772000, log, OS_LOG_TYPE_ERROR, "[SLDCollaborationFooterDrawing %p] Tried to initialize with a tag of the wrong type: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end