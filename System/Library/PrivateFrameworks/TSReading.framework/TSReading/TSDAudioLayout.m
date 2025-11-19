@interface TSDAudioLayout
- (CGRect)alignmentFrame;
- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3;
- (TSDAudioLayout)initWithInfo:(id)a3;
- (id)layoutGeometryFromInfo;
- (id)movieInfo;
@end

@implementation TSDAudioLayout

- (TSDAudioLayout)initWithInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSDAudioLayout;
  v3 = [(TSDMediaLayout *)&v6 initWithInfo:a3];
  v4 = v3;
  if (v3)
  {
    if (![(TSDAudioLayout *)v3 movieInfo])
    {

      v4 = 0;
    }

    [(TSDLayout *)v4 invalidateFrame];
  }

  return v4;
}

- (id)layoutGeometryFromInfo
{
  v2 = [(TSDLayoutGeometry *)[TSDMutableLayoutGeometry alloc] initWithInfoGeometry:[(TSDInfo *)[(TSDLayout *)self info] geometry]];
  [(TSDMutableLayoutGeometry *)v2 setSize:130.0, 66.0];
  v3 = [(TSDMutableLayoutGeometry *)v2 copy];

  return v3;
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3
{
  v3 = a3;
  memset(&v10, 0, sizeof(v10));
  v5 = [(TSDAbstractLayout *)self geometry];
  if (v5)
  {
    [(TSDLayoutGeometry *)v5 fullTransform];
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if ([(TSDAbstractLayout *)self parent])
  {
    v6 = [(TSDAbstractLayout *)self parent];
    if (v6)
    {
      [(TSDAbstractLayout *)v6 transformInRoot];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    v7 = v10;
    CGAffineTransformConcat(&v9, &v7, &t2);
    v10 = v9;
  }

LABEL_10:
  v9 = v10;
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 1.0;
  v11.size.height = 1.0;
  return CGRectApplyAffineTransform(v11, &v9);
}

- (CGRect)alignmentFrame
{
  v2 = [(TSDAbstractLayout *)self geometry];

  [(TSDLayoutGeometry *)v2 frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)movieInfo
{
  objc_opt_class();
  [(TSDLayout *)self info];

  return TSUDynamicCast();
}

@end