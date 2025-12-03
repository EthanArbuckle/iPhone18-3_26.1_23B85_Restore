@interface SXTextTangierAttachmentLayout
- (CGRect)boundsInRoot;
- (CGRect)boundsInfluencingExteriorWrap;
- (id)wrapPolygon;
- (void)fixTransformFromInterimPosition;
- (void)storeActualPosition;
- (void)validate;
@end

@implementation SXTextTangierAttachmentLayout

- (id)wrapPolygon
{
  polygon = [(SXTextTangierAttachmentLayout *)self polygon];

  if (!polygon)
  {
    info = [(TSDLayout *)self info];
    exclusionPath = [info exclusionPath];
    path = [(SXTextExclusionPath *)exclusionPath path];
    tSDBezierPath = [path TSDBezierPath];

    memset(&v26, 0, sizeof(v26));
    info2 = [(TSDLayout *)self info];
    exclusionPath2 = [info2 exclusionPath];
    position = [(SXTextExclusionPath *)exclusionPath2 position];
    info3 = [(TSDLayout *)self info];
    exclusionPath3 = [info3 exclusionPath];
    [(SXTextExclusionPath *)exclusionPath3 position];
    CGAffineTransformMakeTranslation(&v26, position, v13);

    v25 = v26;
    [tSDBezierPath transformUsingAffineTransform:&v25];
    info4 = [(TSDLayout *)self info];
    exclusionPath4 = [info4 exclusionPath];
    duration = [(SXAnimatedImageFrame *)exclusionPath4 duration];

    if (duration > 0.0)
    {
      info5 = [(TSDLayout *)self info];
      exclusionPath5 = [info5 exclusionPath];
      duration2 = [(SXAnimatedImageFrame *)exclusionPath5 duration];
      [tSDBezierPath setLineWidth:duration2 + duration2];

      v20 = [MEMORY[0x1E69D5628] outlineBezierPath:tSDBezierPath withThreshold:0.0];
      v21 = [tSDBezierPath uniteWithBezierPath:v20];

      tSDBezierPath = v21;
    }

    v22 = [objc_alloc(MEMORY[0x1E69D5688]) initWithPath:tSDBezierPath];
    [(SXTextTangierAttachmentLayout *)self setPolygon:v22];
  }

  polygon2 = [(SXTextTangierAttachmentLayout *)self polygon];

  return polygon2;
}

- (void)fixTransformFromInterimPosition
{
  v7.receiver = self;
  v7.super_class = SXTextTangierAttachmentLayout;
  [(TSDAbstractLayout *)&v7 fixTransformFromInterimPosition];
  [(SXTextTangierAttachmentLayout *)self storeActualPosition];
  info = [(TSDLayout *)self info];
  exclusionPath = [info exclusionPath];
  [(TSDAbstractLayout *)self frame];
  [(SXTextExclusionPath *)exclusionPath adjustYPositionWithCurrentPosition:v5, v6];

  [(SXTextTangierAttachmentLayout *)self setPolygon:0];
}

- (void)validate
{
  invalidGeometry = [(TSDLayout *)self invalidGeometry];
  v4.receiver = self;
  v4.super_class = SXTextTangierAttachmentLayout;
  [(TSDLayout *)&v4 validate];
  if (invalidGeometry)
  {
    [(SXTextTangierAttachmentLayout *)self storeActualPosition];
  }
}

- (CGRect)boundsInfluencingExteriorWrap
{
  wrapPolygon = [(SXTextTangierAttachmentLayout *)self wrapPolygon];
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
  wrapPolygon = [(SXTextTangierAttachmentLayout *)self wrapPolygon];
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

- (void)storeActualPosition
{
  info = [(TSDLayout *)self info];
  exclusionPath = [info exclusionPath];
  if ([(SXTextExclusionPath *)exclusionPath type]== 2)
  {
    geometry = [(TSDAbstractLayout *)self geometry];
    [geometry frame];
    v7 = v6;
    info2 = [(TSDLayout *)self info];
    exclusionPath2 = [info2 exclusionPath];
    [(SXTextExclusionPath *)exclusionPath2 position];
    v11 = v10;

    if (v7 < v11)
    {
      info3 = [(TSDLayout *)self info];
      exclusionPath3 = [info3 exclusionPath];
      position = [(SXTextExclusionPath *)exclusionPath3 position];
      v15 = v14;
      info4 = [(TSDLayout *)self info];
      exclusionPath4 = [info4 exclusionPath];
      [(SXTextExclusionPath *)exclusionPath4 setActualPosition:position, v15];

      goto LABEL_6;
    }
  }

  else
  {
  }

  info3 = [(TSDAbstractLayout *)self geometry];
  [info3 frame];
  v19 = v18;
  v21 = v20;
  exclusionPath3 = [(TSDLayout *)self info];
  info4 = [exclusionPath3 exclusionPath];
  [(SXTextExclusionPath *)info4 setActualPosition:v19, v21];
LABEL_6:
}

@end