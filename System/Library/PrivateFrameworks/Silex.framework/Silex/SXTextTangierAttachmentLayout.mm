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
  v3 = [(SXTextTangierAttachmentLayout *)self polygon];

  if (!v3)
  {
    v4 = [(TSDLayout *)self info];
    v5 = [v4 exclusionPath];
    v6 = [(SXTextExclusionPath *)v5 path];
    v7 = [v6 TSDBezierPath];

    memset(&v26, 0, sizeof(v26));
    v8 = [(TSDLayout *)self info];
    v9 = [v8 exclusionPath];
    v10 = [(SXTextExclusionPath *)v9 position];
    v11 = [(TSDLayout *)self info];
    v12 = [v11 exclusionPath];
    [(SXTextExclusionPath *)v12 position];
    CGAffineTransformMakeTranslation(&v26, v10, v13);

    v25 = v26;
    [v7 transformUsingAffineTransform:&v25];
    v14 = [(TSDLayout *)self info];
    v15 = [v14 exclusionPath];
    v16 = [(SXAnimatedImageFrame *)v15 duration];

    if (v16 > 0.0)
    {
      v17 = [(TSDLayout *)self info];
      v18 = [v17 exclusionPath];
      v19 = [(SXAnimatedImageFrame *)v18 duration];
      [v7 setLineWidth:v19 + v19];

      v20 = [MEMORY[0x1E69D5628] outlineBezierPath:v7 withThreshold:0.0];
      v21 = [v7 uniteWithBezierPath:v20];

      v7 = v21;
    }

    v22 = [objc_alloc(MEMORY[0x1E69D5688]) initWithPath:v7];
    [(SXTextTangierAttachmentLayout *)self setPolygon:v22];
  }

  v23 = [(SXTextTangierAttachmentLayout *)self polygon];

  return v23;
}

- (void)fixTransformFromInterimPosition
{
  v7.receiver = self;
  v7.super_class = SXTextTangierAttachmentLayout;
  [(TSDAbstractLayout *)&v7 fixTransformFromInterimPosition];
  [(SXTextTangierAttachmentLayout *)self storeActualPosition];
  v3 = [(TSDLayout *)self info];
  v4 = [v3 exclusionPath];
  [(TSDAbstractLayout *)self frame];
  [(SXTextExclusionPath *)v4 adjustYPositionWithCurrentPosition:v5, v6];

  [(SXTextTangierAttachmentLayout *)self setPolygon:0];
}

- (void)validate
{
  v3 = [(TSDLayout *)self invalidGeometry];
  v4.receiver = self;
  v4.super_class = SXTextTangierAttachmentLayout;
  [(TSDLayout *)&v4 validate];
  if (v3)
  {
    [(SXTextTangierAttachmentLayout *)self storeActualPosition];
  }
}

- (CGRect)boundsInfluencingExteriorWrap
{
  v2 = [(SXTextTangierAttachmentLayout *)self wrapPolygon];
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
  v2 = [(SXTextTangierAttachmentLayout *)self wrapPolygon];
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

- (void)storeActualPosition
{
  v3 = [(TSDLayout *)self info];
  v4 = [v3 exclusionPath];
  if ([(SXTextExclusionPath *)v4 type]== 2)
  {
    v5 = [(TSDAbstractLayout *)self geometry];
    [v5 frame];
    v7 = v6;
    v8 = [(TSDLayout *)self info];
    v9 = [v8 exclusionPath];
    [(SXTextExclusionPath *)v9 position];
    v11 = v10;

    if (v7 < v11)
    {
      v22 = [(TSDLayout *)self info];
      v12 = [v22 exclusionPath];
      v13 = [(SXTextExclusionPath *)v12 position];
      v15 = v14;
      v16 = [(TSDLayout *)self info];
      v17 = [v16 exclusionPath];
      [(SXTextExclusionPath *)v17 setActualPosition:v13, v15];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v22 = [(TSDAbstractLayout *)self geometry];
  [v22 frame];
  v19 = v18;
  v21 = v20;
  v12 = [(TSDLayout *)self info];
  v16 = [v12 exclusionPath];
  [(SXTextExclusionPath *)v16 setActualPosition:v19, v21];
LABEL_6:
}

@end