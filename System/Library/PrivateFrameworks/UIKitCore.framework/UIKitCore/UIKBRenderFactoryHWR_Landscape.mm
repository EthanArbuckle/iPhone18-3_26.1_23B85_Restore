@interface UIKBRenderFactoryHWR_Landscape
- (CGPoint)deleteGlyphOffset;
- (CGPoint)spaceKeyTextOffset;
- (UIEdgeInsets)handwritingAreaInsets;
- (UIEdgeInsets)symbolFrameInsets;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (unint64_t)edgesAdjustedForTranslucentGapsForGeometry:(id)geometry key:(id)key onKeyplane:(id)keyplane;
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
  controlKeyTraits = [(UIKBRenderFactory10Key_Round *)self controlKeyTraits];
  v6 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:controlKeyTraits];

  [v6 setKeyStates:3];
  [v6 addLayoutRect:0 asTriangle:{0.0, 0.0, 0.188, 1.0}];
  [(UIKBRenderFactory *)self addLayoutSegment:v6];
  activeControlKeyTraits = [(UIKBRenderFactory10Key_Round *)self activeControlKeyTraits];
  v5 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:activeControlKeyTraits];

  [v5 setKeyStates:4];
  [v5 addLayoutRect:0 asTriangle:{0.0, 0.0, 0.188, 1.0}];
  [(UIKBRenderFactory *)self addLayoutSegment:v5];
}

- (unint64_t)edgesAdjustedForTranslucentGapsForGeometry:(id)geometry key:(id)key onKeyplane:(id)keyplane
{
  v10.receiver = self;
  v10.super_class = UIKBRenderFactoryHWR_Landscape;
  keyCopy = key;
  v8 = [(UIKBRenderFactory10Key *)&v10 edgesAdjustedForTranslucentGapsForGeometry:geometry key:keyCopy onKeyplane:keyplane];
  LODWORD(geometry) = [keyCopy displayType];

  if (geometry == 12)
  {
    return 14;
  }

  else
  {
    return v8;
  }
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  v26.receiver = self;
  v26.super_class = UIKBRenderFactoryHWR_Landscape;
  v7 = [(UIKBRenderFactoryHWR_Portrait *)&v26 _traitsForKey:keyCopy onKeyplane:keyplane];
  if ([keyCopy displayType] == 12)
  {
    if ([(UIKBRenderFactory10Key_Round *)self useRoundCorner])
    {
      [v7 removeAllRenderEffects];
      geometry = [v7 geometry];
      [geometry setRoundRectCorners:-1];

      geometry2 = [v7 geometry];
      [geometry2 setRoundRectRadius:5.0];

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

    geometry3 = [v7 geometry];
    [geometry3 paddedFrame];
    v15 = v14 + v12;
    v17 = v16 + v11;
    v19 = v18 + v12;
    v21 = v20 + v10;
    geometry4 = [v7 geometry];
    [geometry4 setPaddedFrame:{v15, v19, v17, v21}];
  }

  if (-[UIKBRenderFactory10Key_Round useRoundCorner](self, "useRoundCorner") && [keyCopy interactionType] == 4)
  {
    geometry5 = [v7 geometry];
    [geometry5 setRoundRectCorners:2];

    geometry6 = [v7 geometry];
    [geometry6 setRoundRectRadius:5.0];
  }

  return v7;
}

@end