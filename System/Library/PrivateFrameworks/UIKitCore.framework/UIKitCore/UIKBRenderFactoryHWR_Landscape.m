@interface UIKBRenderFactoryHWR_Landscape
- (CGPoint)deleteGlyphOffset;
- (CGPoint)spaceKeyTextOffset;
- (UIEdgeInsets)handwritingAreaInsets;
- (UIEdgeInsets)symbolFrameInsets;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (unint64_t)edgesAdjustedForTranslucentGapsForGeometry:(id)a3 key:(id)a4 onKeyplane:(id)a5;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactoryHWR_Landscape

- (UIEdgeInsets)handwritingAreaInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGPoint)deleteGlyphOffset
{
  v2 = 0.5;
  v3 = 0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)spaceKeyTextOffset
{
  v2 = 0.0;
  v3 = 1.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (UIEdgeInsets)symbolFrameInsets
{
  v2 = 3.0;
  v3 = 3.0;
  v4 = 3.0;
  v5 = 3.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setupLayoutSegments
{
  v3 = [(UIKBRenderFactory10Key_Round *)self controlKeyTraits];
  v6 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v3];

  [v6 setKeyStates:3];
  [v6 addLayoutRect:0 asTriangle:{0.0, 0.0, 0.188, 1.0}];
  [(UIKBRenderFactory *)self addLayoutSegment:v6];
  v4 = [(UIKBRenderFactory10Key_Round *)self activeControlKeyTraits];
  v5 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v4];

  [v5 setKeyStates:4];
  [v5 addLayoutRect:0 asTriangle:{0.0, 0.0, 0.188, 1.0}];
  [(UIKBRenderFactory *)self addLayoutSegment:v5];
}

- (unint64_t)edgesAdjustedForTranslucentGapsForGeometry:(id)a3 key:(id)a4 onKeyplane:(id)a5
{
  v10.receiver = self;
  v10.super_class = UIKBRenderFactoryHWR_Landscape;
  v7 = a4;
  v8 = [(UIKBRenderFactory10Key *)&v10 edgesAdjustedForTranslucentGapsForGeometry:a3 key:v7 onKeyplane:a5];
  LODWORD(a3) = [v7 displayType];

  if (a3 == 12)
  {
    return 14;
  }

  else
  {
    return v8;
  }
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = UIKBRenderFactoryHWR_Landscape;
  v7 = [(UIKBRenderFactoryHWR_Portrait *)&v26 _traitsForKey:v6 onKeyplane:a4];
  if ([v6 displayType] == 12)
  {
    if ([(UIKBRenderFactory10Key_Round *)self useRoundCorner])
    {
      [v7 removeAllRenderEffects];
      v8 = [v7 geometry];
      [v8 setRoundRectCorners:-1];

      v9 = [v7 geometry];
      [v9 setRoundRectRadius:5.0];

      v10 = 1.0;
      v11 = 0.5;
      v12 = -0.5;
    }

    else
    {
      v11 = -0.5;
      v12 = 0.0;
      v10 = -0.5;
    }

    v13 = [v7 geometry];
    [v13 paddedFrame];
    v15 = v14 + v12;
    v17 = v16 + v11;
    v19 = v18 + v12;
    v21 = v20 + v10;
    v22 = [v7 geometry];
    [v22 setPaddedFrame:{v15, v19, v17, v21}];
  }

  if (-[UIKBRenderFactory10Key_Round useRoundCorner](self, "useRoundCorner") && [v6 interactionType] == 4)
  {
    v23 = [v7 geometry];
    [v23 setRoundRectCorners:2];

    v24 = [v7 geometry];
    [v24 setRoundRectRadius:5.0];
  }

  return v7;
}

@end