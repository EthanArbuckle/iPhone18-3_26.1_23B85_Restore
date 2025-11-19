@interface SXTextExclusionPathWrapper
- (CGRect)boundsInRoot;
- (CGRect)boundsInfluencingExteriorWrap;
- (SXTextExclusionPath)exclusionPath;
- (SXTextExclusionPathWrapper)initWithTextExclusionPath:(id)a3;
- (id)wrapPolygon;
@end

@implementation SXTextExclusionPathWrapper

- (SXTextExclusionPathWrapper)initWithTextExclusionPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SXTextExclusionPathWrapper;
  v5 = [(SXTextExclusionPathWrapper *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_exclusionPath, v4);
    v7 = [(SXTextExclusionPath *)v4 path];
    v6->_isRectangular = CGPathIsRect([v7 CGPath], 0);
  }

  return v6;
}

- (id)wrapPolygon
{
  v3 = [(SXTextExclusionPathWrapper *)self myWrapPolygon];

  if (!v3)
  {
    v4 = [(SXTextExclusionPathWrapper *)self exclusionPath];
    v5 = [(SXTextExclusionPath *)v4 path];
    v6 = [v5 TSDBezierPath];

    memset(&v22, 0, sizeof(v22));
    v7 = [(SXTextExclusionPathWrapper *)self exclusionPath];
    v8 = [(SXTextExclusionPath *)v7 position];
    v9 = [(SXTextExclusionPathWrapper *)self exclusionPath];
    [(SXTextExclusionPath *)v9 position];
    CGAffineTransformMakeTranslation(&v22, v8, v10);

    v21 = v22;
    [v6 transformUsingAffineTransform:&v21];
    v11 = [(SXTextExclusionPathWrapper *)self exclusionPath];
    v12 = [(SXAnimatedImageFrame *)v11 duration];

    if (v12 > 0.0)
    {
      v13 = [(SXTextExclusionPathWrapper *)self exclusionPath];
      v14 = [(SXAnimatedImageFrame *)v13 duration];
      [v6 setLineWidth:v14 + v14];

      v15 = [MEMORY[0x1E69D5628] outlineBezierPath:v6 withThreshold:0.0];
      v16 = [v6 uniteWithBezierPath:v15];

      v6 = v16;
    }

    v17 = [objc_alloc(MEMORY[0x1E69D5688]) initWithPath:v6];
    myWrapPolygon = self->_myWrapPolygon;
    self->_myWrapPolygon = v17;
  }

  v19 = [(SXTextExclusionPathWrapper *)self myWrapPolygon];

  return v19;
}

- (CGRect)boundsInfluencingExteriorWrap
{
  v2 = [(SXTextExclusionPathWrapper *)self wrapPolygon];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)boundsInRoot
{
  v2 = [(SXTextExclusionPathWrapper *)self wrapPolygon];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (SXTextExclusionPath)exclusionPath
{
  WeakRetained = objc_loadWeakRetained(&self->_exclusionPath);

  return WeakRetained;
}

@end