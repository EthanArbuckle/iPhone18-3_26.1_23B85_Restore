@interface SXTextTangierTextWrapContext
- (CGAffineTransform)targetInverseTransformInRoot;
- (SXTextTangierTextWrapContext)initWithColumn:(id)a3 targetLayout:(id)a4;
- (TSWPLayoutTarget)target;
- (id)transformedWrapPolygonForWrappable:(id)a3 canvasSpaceToWrapSpaceTransform:(CGAffineTransform *)a4;
- (void)setTarget:(id)a3;
@end

@implementation SXTextTangierTextWrapContext

- (SXTextTangierTextWrapContext)initWithColumn:(id)a3 targetLayout:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SXTextTangierTextWrapContext;
  v9 = [(SXTextTangierTextWrapContext *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69D5778]);
    wrapPathInverseTransformInRootDictionary = v9->_wrapPathInverseTransformInRootDictionary;
    v9->_wrapPathInverseTransformInRootDictionary = v10;

    objc_storeStrong(&v9->_column, a3);
    [(SXTextTangierTextWrapContext *)v9 setTarget:v8];
  }

  return v9;
}

- (void)setTarget:(id)a3
{
  objc_storeWeak(&self->_target, a3);
  v4 = [(SXTextTangierTextWrapContext *)self target];
  v5 = v4;
  if (v4)
  {
    [v4 transformInRoot];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CGAffineTransformInvert(&v8, &v7);
  v6 = *&v8.c;
  *&self->_targetInverseTransformInRoot.a = *&v8.a;
  *&self->_targetInverseTransformInRoot.c = v6;
  *&self->_targetInverseTransformInRoot.tx = *&v8.tx;
}

- (id)transformedWrapPolygonForWrappable:(id)a3 canvasSpaceToWrapSpaceTransform:(CGAffineTransform *)a4
{
  v6 = a3;
  v7 = [(SXTextTangierTextWrapContext *)self wrapPathInverseTransformInRootDictionary];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v9 = [v6 wrapPolygon];
    v8 = [v9 copy];

    if (v8)
    {
      v10 = [v8 bezierPath];
      v11 = [v8 intersectsSelf];
      v12 = *&self->_targetInverseTransformInRoot.c;
      v16 = *&self->_targetInverseTransformInRoot.a;
      v17 = v12;
      v18 = *&self->_targetInverseTransformInRoot.tx;
      [v10 transformUsingAffineTransform:&v16];
      v13 = *&a4->c;
      v16 = *&a4->a;
      v17 = v13;
      v18 = *&a4->tx;
      [v10 transformUsingAffineTransform:&v16];
      [v8 setPath:v10];
      [v8 setIntersectsSelf:v11];
      [(TSUPointerKeyDictionary *)self->_wrapPathInverseTransformInRootDictionary setObject:v8 forUncopiedKey:v6];
    }
  }

  v14 = v8;

  return v14;
}

- (TSWPLayoutTarget)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (CGAffineTransform)targetInverseTransformInRoot
{
  v3 = *&self[1].b;
  *&retstr->a = *&self->ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].d;
  return self;
}

@end