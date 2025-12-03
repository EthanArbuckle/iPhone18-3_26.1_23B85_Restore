@interface SLDActiveCallViewDrawing
- (CGSize)drawingSize;
- (SLDActiveCallViewDrawing)initWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation SLDActiveCallViewDrawing

- (SLDActiveCallViewDrawing)initWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote
{
  styleCopy = style;
  tagCopy = tag;
  v14.receiver = self;
  v14.super_class = SLDActiveCallViewDrawing;
  v11 = [(SLDActiveCallViewDrawing *)&v14 init];
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
  if ([(SLDActiveCallViewDrawing *)self forRemote:point.x])
  {
    v6 = [SLDActiveCallViewRenderer alloc];
    slotStyle = [(SLDActiveCallViewDrawing *)self slotStyle];
    v8 = [(SLDActiveCallViewDrawing *)self tag];
    v10 = [(SLDActiveCallViewRenderer *)v6 initWithStyle:slotStyle tag:v8];

    v9 = v10;
    if (v10)
    {
      [(SLDActiveCallViewRenderer *)v10 renderInContext:context];
      v9 = v10;
    }
  }
}

- (CGSize)drawingSize
{
  v2 = [(SLDActiveCallViewDrawing *)self tag];
  [v2 maxWidth];
  v4 = v3;

  v5 = 200.0;
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

@end