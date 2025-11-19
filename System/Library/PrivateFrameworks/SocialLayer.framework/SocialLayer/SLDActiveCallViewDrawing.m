@interface SLDActiveCallViewDrawing
- (CGSize)drawingSize;
- (SLDActiveCallViewDrawing)initWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5;
- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4;
@end

@implementation SLDActiveCallViewDrawing

- (SLDActiveCallViewDrawing)initWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SLDActiveCallViewDrawing;
  v11 = [(SLDActiveCallViewDrawing *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_slotStyle, a3);
    objc_storeStrong(&v12->_tag, a4);
    v12->_forRemote = a5;
    v12->_isRTL = [v9 layoutDirection] == 1;
  }

  return v12;
}

- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4
{
  if ([(SLDActiveCallViewDrawing *)self forRemote:a4.x])
  {
    v6 = [SLDActiveCallViewRenderer alloc];
    v7 = [(SLDActiveCallViewDrawing *)self slotStyle];
    v8 = [(SLDActiveCallViewDrawing *)self tag];
    v10 = [(SLDActiveCallViewRenderer *)v6 initWithStyle:v7 tag:v8];

    v9 = v10;
    if (v10)
    {
      [(SLDActiveCallViewRenderer *)v10 renderInContext:a3];
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