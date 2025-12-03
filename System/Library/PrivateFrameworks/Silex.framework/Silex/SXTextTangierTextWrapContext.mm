@interface SXTextTangierTextWrapContext
- (CGAffineTransform)targetInverseTransformInRoot;
- (SXTextTangierTextWrapContext)initWithColumn:(id)column targetLayout:(id)layout;
- (TSWPLayoutTarget)target;
- (id)transformedWrapPolygonForWrappable:(id)wrappable canvasSpaceToWrapSpaceTransform:(CGAffineTransform *)transform;
- (void)setTarget:(id)target;
@end

@implementation SXTextTangierTextWrapContext

- (SXTextTangierTextWrapContext)initWithColumn:(id)column targetLayout:(id)layout
{
  columnCopy = column;
  layoutCopy = layout;
  v13.receiver = self;
  v13.super_class = SXTextTangierTextWrapContext;
  v9 = [(SXTextTangierTextWrapContext *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69D5778]);
    wrapPathInverseTransformInRootDictionary = v9->_wrapPathInverseTransformInRootDictionary;
    v9->_wrapPathInverseTransformInRootDictionary = v10;

    objc_storeStrong(&v9->_column, column);
    [(SXTextTangierTextWrapContext *)v9 setTarget:layoutCopy];
  }

  return v9;
}

- (void)setTarget:(id)target
{
  objc_storeWeak(&self->_target, target);
  target = [(SXTextTangierTextWrapContext *)self target];
  v5 = target;
  if (target)
  {
    [target transformInRoot];
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

- (id)transformedWrapPolygonForWrappable:(id)wrappable canvasSpaceToWrapSpaceTransform:(CGAffineTransform *)transform
{
  wrappableCopy = wrappable;
  wrapPathInverseTransformInRootDictionary = [(SXTextTangierTextWrapContext *)self wrapPathInverseTransformInRootDictionary];
  v8 = [wrapPathInverseTransformInRootDictionary objectForKey:wrappableCopy];

  if (!v8)
  {
    wrapPolygon = [wrappableCopy wrapPolygon];
    v8 = [wrapPolygon copy];

    if (v8)
    {
      bezierPath = [v8 bezierPath];
      intersectsSelf = [v8 intersectsSelf];
      v12 = *&self->_targetInverseTransformInRoot.c;
      v16 = *&self->_targetInverseTransformInRoot.a;
      v17 = v12;
      v18 = *&self->_targetInverseTransformInRoot.tx;
      [bezierPath transformUsingAffineTransform:&v16];
      v13 = *&transform->c;
      v16 = *&transform->a;
      v17 = v13;
      v18 = *&transform->tx;
      [bezierPath transformUsingAffineTransform:&v16];
      [v8 setPath:bezierPath];
      [v8 setIntersectsSelf:intersectsSelf];
      [(TSUPointerKeyDictionary *)self->_wrapPathInverseTransformInRootDictionary setObject:v8 forUncopiedKey:wrappableCopy];
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