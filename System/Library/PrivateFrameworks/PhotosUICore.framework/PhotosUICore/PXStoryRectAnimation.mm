@interface PXStoryRectAnimation
- ($810C7C628FE0F9AC50A6216490AB88B8)currentRect;
- ($810C7C628FE0F9AC50A6216490AB88B8)sourceRect;
- ($810C7C628FE0F9AC50A6216490AB88B8)targetRect;
- (CGRect)outerBounds;
- (CGSize)referenceSize;
- (PXStoryRectAnimation)initWithDuration:(id *)duration curveInfo:(id)info;
- (PXStoryRectAnimation)initWithIdentifier:(id)identifier duration:(id *)duration curveInfo:(id)info;
- (PXStoryRectAnimation)initWithIdentifier:(id)identifier sourceRect:(id *)rect targetRect:(id *)targetRect outerBounds:(CGRect)bounds referenceSize:(CGSize)size duration:(id *)duration curveInfo:(id)info;
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

- (PXStoryRectAnimation)initWithIdentifier:(id)identifier sourceRect:(id *)rect targetRect:(id *)targetRect outerBounds:(CGRect)bounds referenceSize:(CGSize)size duration:(id *)duration curveInfo:(id)info
{
  height = size.height;
  width = size.width;
  v20.receiver = self;
  v20.super_class = PXStoryRectAnimation;
  *&v19.a = *&duration->var0;
  *&v19.c = duration->var3;
  v13 = [(PXStoryValueAnimation *)&v20 initWithIdentifier:identifier duration:&v19 curveInfo:info.var0, *&info.var1.var0];
  if (v13)
  {
    v15 = *&rect->var0.c;
    v14 = *&rect->var0.tx;
    *(v13 + 440) = *&rect->var0.a;
    *(v13 + 456) = v15;
    *(v13 + 472) = v14;
    v16 = *&targetRect->var0.a;
    v17 = *&targetRect->var0.tx;
    *(v13 + 504) = *&targetRect->var0.c;
    *(v13 + 520) = v17;
    *(v13 + 488) = v16;
    *(v13 + 49) = width;
    *(v13 + 50) = height;
    memset(&v19, 0, sizeof(v19));
    PXSizeIsValid();
  }

  return 0;
}

- (PXStoryRectAnimation)initWithIdentifier:(id)identifier duration:(id *)duration curveInfo:(id)info
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRectAnimation.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXStoryRectAnimation initWithIdentifier:duration:curveInfo:]"}];

  abort();
}

- (PXStoryRectAnimation)initWithDuration:(id *)duration curveInfo:(id)info
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRectAnimation.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXStoryRectAnimation initWithDuration:curveInfo:]"}];

  abort();
}

@end