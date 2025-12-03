@interface SLDCollaborationAttributionViewDrawing
- (CGSize)drawingSize;
- (SLDCollaborationAttributionViewDrawing)initWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation SLDCollaborationAttributionViewDrawing

- (SLDCollaborationAttributionViewDrawing)initWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote
{
  styleCopy = style;
  tagCopy = tag;
  v14.receiver = self;
  v14.super_class = SLDCollaborationAttributionViewDrawing;
  v11 = [(SLDCollaborationAttributionViewDrawing *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_slotStyle, style);
    objc_storeStrong(&v12->_tag, tag);
    v12->_forRemote = remote;
    v12->_isRTL = [styleCopy layoutDirection] == 1;
  }

  return v12;
}

- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point
{
  if (-[SLDCollaborationAttributionViewDrawing forRemote](self, "forRemote", point.x, point.y) || (-[SLDCollaborationAttributionViewDrawing tag](self, "tag"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isPlaceholder], v6, v7))
  {
    v8 = [SLDCollaborationAttributionViewRenderer alloc];
    slotStyle = [(SLDCollaborationAttributionViewDrawing *)self slotStyle];
    v10 = [(SLDCollaborationAttributionViewDrawing *)self tag];
    v12 = [(SLDCollaborationAttributionViewRenderer *)v8 initWithStyle:slotStyle tag:v10];

    v11 = v12;
    if (v12)
    {
      [(SLDCollaborationAttributionViewRenderer *)v12 renderInContext:context];
      v11 = v12;
    }
  }
}

- (CGSize)drawingSize
{
  v3 = [SLCollaborationAttributionViewMetricsProvider alloc];
  slotStyle = [(SLDCollaborationAttributionViewDrawing *)self slotStyle];
  v5 = [(SLDCollaborationAttributionViewDrawing *)self tag];
  v6 = [(SLCollaborationAttributionViewMetricsProvider *)v3 initWithSlotStyle:slotStyle tag:v5];

  [(SLCollaborationAttributionViewMetricsProvider *)v6 drawingSize];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end