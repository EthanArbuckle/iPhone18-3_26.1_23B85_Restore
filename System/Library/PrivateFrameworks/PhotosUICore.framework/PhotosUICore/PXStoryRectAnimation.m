@interface PXStoryRectAnimation
- ($810C7C628FE0F9AC50A6216490AB88B8)currentRect;
- ($810C7C628FE0F9AC50A6216490AB88B8)sourceRect;
- ($810C7C628FE0F9AC50A6216490AB88B8)targetRect;
- (CGRect)outerBounds;
- (CGSize)referenceSize;
- (PXStoryRectAnimation)initWithDuration:(id *)a3 curveInfo:(id)a4;
- (PXStoryRectAnimation)initWithIdentifier:(id)a3 duration:(id *)a4 curveInfo:(id)a5;
- (PXStoryRectAnimation)initWithIdentifier:(id)a3 sourceRect:(id *)a4 targetRect:(id *)a5 outerBounds:(CGRect)a6 referenceSize:(CGSize)a7 duration:(id *)a8 curveInfo:(id)a9;
@end

@implementation PXStoryRectAnimation

- ($810C7C628FE0F9AC50A6216490AB88B8)currentRect
{
  v3 = *&self[11].var0.d;
  *&retstr->var0.a = *&self[11].var0.b;
  *&retstr->var0.c = v3;
  *&retstr->var0.tx = *&self[11].var0.ty;
  return self;
}

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)outerBounds
{
  x = self->_outerBounds.origin.x;
  y = self->_outerBounds.origin.y;
  width = self->_outerBounds.size.width;
  height = self->_outerBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($810C7C628FE0F9AC50A6216490AB88B8)targetRect
{
  v3 = *&self[10].var0.d;
  *&retstr->var0.a = *&self[10].var0.b;
  *&retstr->var0.c = v3;
  *&retstr->var0.tx = *&self[10].var0.ty;
  return self;
}

- ($810C7C628FE0F9AC50A6216490AB88B8)sourceRect
{
  v3 = *&self[9].var0.d;
  *&retstr->var0.a = *&self[9].var0.b;
  *&retstr->var0.c = v3;
  *&retstr->var0.tx = *&self[9].var0.ty;
  return self;
}

- (PXStoryRectAnimation)initWithIdentifier:(id)a3 sourceRect:(id *)a4 targetRect:(id *)a5 outerBounds:(CGRect)a6 referenceSize:(CGSize)a7 duration:(id *)a8 curveInfo:(id)a9
{
  height = a7.height;
  width = a7.width;
  v20.receiver = self;
  v20.super_class = PXStoryRectAnimation;
  *&v19.a = *&a8->var0;
  *&v19.c = a8->var3;
  v13 = [(PXStoryValueAnimation *)&v20 initWithIdentifier:a3 duration:&v19 curveInfo:a9.var0, *&a9.var1.var0];
  if (v13)
  {
    v15 = *&a4->var0.c;
    v14 = *&a4->var0.tx;
    *(v13 + 440) = *&a4->var0.a;
    *(v13 + 456) = v15;
    *(v13 + 472) = v14;
    v16 = *&a5->var0.a;
    v17 = *&a5->var0.tx;
    *(v13 + 504) = *&a5->var0.c;
    *(v13 + 520) = v17;
    *(v13 + 488) = v16;
    *(v13 + 49) = width;
    *(v13 + 50) = height;
    memset(&v19, 0, sizeof(v19));
    PXSizeIsValid();
  }

  return 0;
}

- (PXStoryRectAnimation)initWithIdentifier:(id)a3 duration:(id *)a4 curveInfo:(id)a5
{
  v7 = a3;
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"PXStoryRectAnimation.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXStoryRectAnimation initWithIdentifier:duration:curveInfo:]"}];

  abort();
}

- (PXStoryRectAnimation)initWithDuration:(id *)a3 curveInfo:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryRectAnimation.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXStoryRectAnimation initWithDuration:curveInfo:]"}];

  abort();
}

@end