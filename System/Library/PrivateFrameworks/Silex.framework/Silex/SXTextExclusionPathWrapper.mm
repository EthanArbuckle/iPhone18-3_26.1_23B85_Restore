@interface SXTextExclusionPathWrapper
- (CGRect)boundsInRoot;
- (CGRect)boundsInfluencingExteriorWrap;
- (SXTextExclusionPath)exclusionPath;
- (SXTextExclusionPathWrapper)initWithTextExclusionPath:(id)path;
- (id)wrapPolygon;
@end

@implementation SXTextExclusionPathWrapper

- (SXTextExclusionPathWrapper)initWithTextExclusionPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = SXTextExclusionPathWrapper;
  v5 = [(SXTextExclusionPathWrapper *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_exclusionPath, pathCopy);
    path = [(SXTextExclusionPath *)pathCopy path];
    v6->_isRectangular = CGPathIsRect([path CGPath], 0);
  }

  return v6;
}

- (id)wrapPolygon
{
  myWrapPolygon = [(SXTextExclusionPathWrapper *)self myWrapPolygon];

  if (!myWrapPolygon)
  {
    exclusionPath = [(SXTextExclusionPathWrapper *)self exclusionPath];
    path = [(SXTextExclusionPath *)exclusionPath path];
    tSDBezierPath = [path TSDBezierPath];

    memset(&v22, 0, sizeof(v22));
    exclusionPath2 = [(SXTextExclusionPathWrapper *)self exclusionPath];
    position = [(SXTextExclusionPath *)exclusionPath2 position];
    exclusionPath3 = [(SXTextExclusionPathWrapper *)self exclusionPath];
    [(SXTextExclusionPath *)exclusionPath3 position];
    CGAffineTransformMakeTranslation(&v22, position, v10);

    v21 = v22;
    [tSDBezierPath transformUsingAffineTransform:&v21];
    exclusionPath4 = [(SXTextExclusionPathWrapper *)self exclusionPath];
    duration = [(SXAnimatedImageFrame *)exclusionPath4 duration];

    if (duration > 0.0)
    {
      exclusionPath5 = [(SXTextExclusionPathWrapper *)self exclusionPath];
      duration2 = [(SXAnimatedImageFrame *)exclusionPath5 duration];
      [tSDBezierPath setLineWidth:duration2 + duration2];

      v15 = [MEMORY[0x1E69D5628] outlineBezierPath:tSDBezierPath withThreshold:0.0];
      v16 = [tSDBezierPath uniteWithBezierPath:v15];

      tSDBezierPath = v16;
    }

    v17 = [objc_alloc(MEMORY[0x1E69D5688]) initWithPath:tSDBezierPath];
    myWrapPolygon = self->_myWrapPolygon;
    self->_myWrapPolygon = v17;
  }

  myWrapPolygon2 = [(SXTextExclusionPathWrapper *)self myWrapPolygon];

  return myWrapPolygon2;
}

- (CGRect)boundsInfluencingExteriorWrap
{
  wrapPolygon = [(SXTextExclusionPathWrapper *)self wrapPolygon];
  [wrapPolygon bounds];
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
  wrapPolygon = [(SXTextExclusionPathWrapper *)self wrapPolygon];
  [wrapPolygon bounds];
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