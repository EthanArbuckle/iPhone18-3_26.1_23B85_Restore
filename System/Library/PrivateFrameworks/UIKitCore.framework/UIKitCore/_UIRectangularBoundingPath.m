@interface _UIRectangularBoundingPath
- (BOOL)_validateBoundingRect:(CGRect)a3 forCoordinateSpace:(id)a4;
- (BOOL)validateForCoordinateSpace;
- (CGRect)_inscribedRectInBoundingPathAndRect:(CGRect)a3 byInsettingRect:(CGRect)a4 onEdges:(unint64_t)a5 withOptions:(unint64_t)a6;
- (CGRect)_largestInscribedRectInBoundingPathAndRect:(CGRect)a3 withCenter:(CGPoint)a4 aspectRatio:(double)a5;
- (CGRect)_rectTuckedAgainstEdge:(unint64_t)a3 ofBoundingPathAndRect:(CGRect)a4 withSize:(double)a5 cornerRadii:(UIRectCornerRadii)a6 minimumPadding:(double)a7;
- (CGRect)_rectTuckedInCorner:(unint64_t)a3 ofBoundingPathAndRect:(CGRect)a4 withSize:(CGSize)a5 cornerRadii:(UIRectCornerRadii)a6 minimumPadding:(double)a7;
- (CGRect)boundingRect;
- (UIEdgeInsets)_centerEdgeInsetsOfBoundingPathAndRect:(CGRect)a3;
- (_UIRectangularBoundingPath)initWithCoder:(id)a3;
- (_UIRectangularBoundingPath)initWithCoordinateSpace:(id)a3 boundingRect:(CGRect)a4;
- (id)_imageRepresentation;
- (id)boundingPathForCoordinateSpace:(id)a3;
- (id)boundingPathForCoordinateSpace:(id)a3 withCornerRadii:(UIRectCornerRadii)a4 orientation:(int64_t)a5 scale:(double)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setCoordinateSpace:(id)a3;
@end

@implementation _UIRectangularBoundingPath

- (BOOL)validateForCoordinateSpace
{
  v2 = self;
  p_boundingRect = &self->_boundingRect;
  v4 = [(_UIBoundingPath *)self coordinateSpace];
  LOBYTE(v2) = [(_UIRectangularBoundingPath *)v2 _validateBoundingRect:v4 forCoordinateSpace:p_boundingRect->origin.x, p_boundingRect->origin.y, p_boundingRect->size.width, p_boundingRect->size.height];

  return v2;
}

- (CGRect)boundingRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIRectangularBoundingPath;
  v4 = a3;
  [(_UIBoundingPath *)&v5 encodeWithCoder:v4];
  [v4 encodeCGRect:@"boundingRect" forKey:{self->_boundingRect.origin.x, self->_boundingRect.origin.y, self->_boundingRect.size.width, self->_boundingRect.size.height, v5.receiver, v5.super_class}];
}

- (_UIRectangularBoundingPath)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UIRectangularBoundingPath;
  v5 = [(_UIBoundingPath *)&v13 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    p_boundingRect = &v5->_boundingRect;
    [v4 decodeCGRectForKey:@"boundingRect"];
    *&p_boundingRect->origin.x = v8;
    v6->_boundingRect.origin.y = v9;
    v6->_boundingRect.size.width = v10;
    v6->_boundingRect.size.height = v11;
  }

  return v6;
}

- (_UIRectangularBoundingPath)initWithCoordinateSpace:(id)a3 boundingRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v12.receiver = self;
  v12.super_class = _UIRectangularBoundingPath;
  v10 = [(_UIBoundingPath *)&v12 initWithCoordinateSpace:v9];
  if (v10)
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    if (CGRectIsNull(v13))
    {
      x = *MEMORY[0x1E695F058];
      y = *(MEMORY[0x1E695F058] + 8);
      width = *(MEMORY[0x1E695F058] + 16);
      height = *(MEMORY[0x1E695F058] + 24);
    }

    [(_UIRectangularBoundingPath *)v10 _validateBoundingRect:v9 forCoordinateSpace:x, y, width, height];
    v10->_boundingRect.origin.x = x;
    v10->_boundingRect.origin.y = y;
    v10->_boundingRect.size.width = width;
    v10->_boundingRect.size.height = height;
  }

  return v10;
}

- (id)boundingPathForCoordinateSpace:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"_UIRectangularBoundingPath.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace != nil"}];
  }

  v6 = [(_UIBoundingPath *)self coordinateSpace];
  if (!v6)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"_UIRectangularBoundingPath.m" lineNumber:59 description:@"The bounding path's coordinate space cannot be nil"];
  }

  [v5 bounds];
  [v6 convertRect:v5 fromCoordinateSpace:?];
  v31 = CGRectIntersection(v30, self->_boundingRect);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  if (CGRectIsNull(v31) || (v32.origin.x = x, v32.origin.y = y, v32.size.width = width, v32.size.height = height, CGRectIsEmpty(v32)))
  {
    v11 = [_UIRectangularBoundingPath alloc];
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    v16 = v5;
  }

  else
  {
    [v6 convertRect:v5 toCoordinateSpace:{x, y, width, height}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v11 = [_UIRectangularBoundingPath alloc];
    v16 = v5;
    v12 = v18;
    v13 = v20;
    v14 = v22;
    v15 = v24;
  }

  v25 = [(_UIRectangularBoundingPath *)v11 initWithCoordinateSpace:v16 boundingRect:v12, v13, v14, v15];

  return v25;
}

- (id)boundingPathForCoordinateSpace:(id)a3 withCornerRadii:(UIRectCornerRadii)a4 orientation:(int64_t)a5 scale:(double)a6
{
  topRight = a4.topRight;
  bottomRight = a4.bottomRight;
  bottomLeft = a4.bottomLeft;
  topLeft = a4.topLeft;
  if (a4.topLeft == 0.0 && a4.bottomLeft == 0.0 && a4.bottomRight == 0.0 && a4.topRight == 0.0)
  {
    v13 = a3;
    v14 = [(_UIRectangularBoundingPath *)self boundingPathForCoordinateSpace:v13];
  }

  else
  {
    v15 = a3;
    v16 = [_UIComplexBoundingPath alloc];
    v17 = [(_UIBoundingPath *)self coordinateSpace];
    v13 = [(_UIComplexBoundingPath *)v16 initWithRectangularCoordinateSpace:v17 orientation:a5 scale:a6];

    v14 = [(_UIComplexBoundingPath *)v13 boundingPathForCoordinateSpace:v15 withCornerRadii:a5 orientation:topLeft scale:bottomLeft, bottomRight, topRight, a6];
  }

  return v14;
}

- (BOOL)_validateBoundingRect:(CGRect)a3 forCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23 = *MEMORY[0x1E69E9840];
  v10 = a4;
  [v10 bounds];
  v25 = CGRectInset(v24, -0.001, -0.001);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v11 = CGRectContainsRect(v25, v28);
  v12 = v11;
  if (_UIBoundingPathValidationAssertsEnabled == 1)
  {
    if (!v11)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v14 = NSStringFromCGRect(v26);
      [v13 handleFailureInMethod:a2 object:self file:@"_UIRectangularBoundingPath.m" lineNumber:87 description:{@"Bounding path likely out of sync with its coordinate space: The view's bounds must contain the bounding rect. Bounding rect: %@; coordinate space: %@", v14, v10}];
    }
  }

  else if (!v11)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &_validateBoundingRect_forCoordinateSpace____s_category) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        v18 = NSStringFromCGRect(v27);
        *buf = 138412546;
        v20 = v18;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Bounding path likely out of sync with its coordinate space: The view's bounds must contain the bounding rect. Bounding rect: %@; coordinate space: %@", buf, 0x16u);
      }
    }
  }

  return v12;
}

- (void)setCoordinateSpace:(id)a3
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  v8 = a3;
  [(_UIRectangularBoundingPath *)self _validateBoundingRect:v8 forCoordinateSpace:x, y, width, height];
  v9.receiver = self;
  v9.super_class = _UIRectangularBoundingPath;
  [(_UIBoundingPath *)&v9 setCoordinateSpace:v8];
}

- (CGRect)_inscribedRectInBoundingPathAndRect:(CGRect)a3 byInsettingRect:(CGRect)a4 onEdges:(unint64_t)a5 withOptions:(unint64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v20 = CGRectIntersection(a3, self->_boundingRect);
  [(_UIBoundingPath *)self _inscribedRectInBoundingRect:a5 byInsettingRect:v20.origin.x onEdges:v20.origin.y, v20.size.width, v20.size.height, x, y, width, height];
  v12 = v21.origin.x;
  v13 = v21.origin.y;
  v14 = v21.size.width;
  v15 = v21.size.height;
  if (CGRectIsNull(v21) || v14 <= 0.0 || v15 <= 0.0)
  {
    v12 = *MEMORY[0x1E695F050];
    v13 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_largestInscribedRectInBoundingPathAndRect:(CGRect)a3 withCenter:(CGPoint)a4 aspectRatio:(double)a5
{
  y = a4.y;
  x = a4.x;
  v17 = CGRectIntersection(a3, self->_boundingRect);
  [(_UIBoundingPath *)self _largestInscribedRectInBoundingRect:v17.origin.x withCenter:v17.origin.y aspectRatio:v17.size.width, v17.size.height, x, y, a5];
  v9 = v18.origin.x;
  v10 = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  if (CGRectIsNull(v18) || width <= 0.0 || height <= 0.0)
  {
    v9 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  v13 = v9;
  v14 = v10;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_rectTuckedInCorner:(unint64_t)a3 ofBoundingPathAndRect:(CGRect)a4 withSize:(CGSize)a5 cornerRadii:(UIRectCornerRadii)a6 minimumPadding:(double)a7
{
  height = a5.height;
  width = a5.width;
  v16 = CGRectIntersection(a4, self->_boundingRect);

  [(_UIBoundingPath *)self _rectTuckedInCorner:a3 ofBoundingRect:v16.origin.x withSize:v16.origin.y minimumPadding:v16.size.width, v16.size.height, width, height, a7];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_rectTuckedAgainstEdge:(unint64_t)a3 ofBoundingPathAndRect:(CGRect)a4 withSize:(double)a5 cornerRadii:(UIRectCornerRadii)a6 minimumPadding:(double)a7
{
  v15 = CGRectIntersection(a4, self->_boundingRect);

  [(_UIBoundingPath *)self _rectTuckedAgainstEdge:a3 ofBoundingRect:v15.origin.x withSize:v15.origin.y minimumPadding:v15.size.width, v15.size.height, a5, a7];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (UIEdgeInsets)_centerEdgeInsetsOfBoundingPathAndRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_UIRectangularBoundingPath *)self _inscribedRectInBoundingPathAndRect:15 byInsettingRect:1 onEdges:a3.origin.x withOptions:a3.origin.y, a3.size.width, a3.size.height, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v25.origin.x;
  v8 = v25.origin.y;
  v9 = v25.size.width;
  v10 = v25.size.height;
  if (CGRectIsNull(v25))
  {
    v11 = INFINITY;
    v12 = INFINITY;
    v13 = INFINITY;
    v14 = INFINITY;
  }

  else
  {
    v26.origin.x = v7;
    v26.origin.y = v8;
    v26.size.width = v9;
    v26.size.height = v10;
    v23 = v8;
    rect = v7;
    MinY = CGRectGetMinY(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v11 = MinY - CGRectGetMinY(v27);
    v28.origin.x = v7;
    v28.origin.y = v23;
    v28.size.width = v9;
    v28.size.height = v10;
    MinX = CGRectGetMinX(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v22 = MinX - CGRectGetMinX(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    MaxY = CGRectGetMaxY(v30);
    v31.origin.x = v7;
    v31.origin.y = v23;
    v31.size.width = v9;
    v31.size.height = v10;
    v16 = MaxY - CGRectGetMaxY(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    MaxX = CGRectGetMaxX(v32);
    v33.origin.y = v23;
    v33.origin.x = rect;
    v33.size.width = v9;
    v33.size.height = v10;
    v18 = CGRectGetMaxX(v33);
    v13 = v16;
    v12 = v22;
    v14 = MaxX - v18;
  }

  v19 = v11;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v19;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_UIBoundingPath *)self coordinateSpace];
  v6 = NSStringFromCGRect(self->_boundingRect);
  v7 = [v3 stringWithFormat:@"<%@: %p coordinateSpace=%@ boundingRect=%@>", v4, self, v5, v6];;

  return v7;
}

- (id)_imageRepresentation
{
  v3 = [(_UIBoundingPath *)self coordinateSpace];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = objc_alloc_init(UIGraphicsImageRendererFormat);
  [(UIGraphicsImageRendererFormat *)v8 setOpaque:1];
  [(UIGraphicsImageRendererFormat *)v8 setPreferredRange:2];
  v9 = [[UIGraphicsImageRenderer alloc] initWithSize:v8 format:v5, v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50___UIRectangularBoundingPath__imageRepresentation__block_invoke;
  v12[3] = &unk_1E7106EC0;
  *&v12[5] = v5;
  *&v12[6] = v7;
  v12[4] = self;
  v10 = [(UIGraphicsImageRenderer *)v9 imageWithActions:v12];

  return v10;
}

@end