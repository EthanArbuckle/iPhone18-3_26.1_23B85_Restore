@interface _UIBoundingPath
- (CGRect)_inscribedRectInBoundingPathAndRect:(CGRect)a3 byInsettingRect:(CGRect)a4 onEdges:(unint64_t)a5 withOptions:(unint64_t)a6;
- (CGRect)_inscribedRectInBoundingRect:(CGRect)a3 byInsettingRect:(CGRect)a4 onEdges:(unint64_t)a5;
- (CGRect)_largestInscribedRectInBoundingPathAndRect:(CGRect)a3 withCenter:(CGPoint)a4 aspectRatio:(double)a5;
- (CGRect)_largestInscribedRectInBoundingRect:(CGRect)a3 withCenter:(CGPoint)a4 aspectRatio:(double)a5;
- (CGRect)_rectTuckedAgainstEdge:(unint64_t)a3 ofBoundingPathAndRect:(CGRect)a4 withSize:(double)a5 cornerRadii:(UIRectCornerRadii)a6 minimumPadding:(double)a7;
- (CGRect)_rectTuckedAgainstEdge:(unint64_t)a3 ofBoundingRect:(CGRect)a4 withSize:(double)a5 minimumPadding:(double)a6;
- (CGRect)_rectTuckedInCorner:(unint64_t)a3 ofBoundingPathAndRect:(CGRect)a4 withSize:(CGSize)a5 cornerRadii:(UIRectCornerRadii)a6 minimumPadding:(double)a7;
- (CGRect)_rectTuckedInCorner:(unint64_t)a3 ofBoundingRect:(CGRect)a4 withSize:(CGSize)a5 minimumPadding:(double)a6;
- (UICoordinateSpace)coordinateSpace;
- (UIEdgeInsets)_centerEdgeInsetsOfBoundingPathAndRect:(CGRect)a3;
- (_UIBoundingPath)initWithCoder:(id)a3;
- (_UIBoundingPath)initWithCoordinateSpace:(id)a3;
- (id)_imageRepresentation;
- (id)boundingPathForCoordinateSpace:(id)a3;
- (id)boundingPathForCoordinateSpace:(id)a3 withCornerRadii:(UIRectCornerRadii)a4 orientation:(int64_t)a5 scale:(double)a6;
@end

@implementation _UIBoundingPath

- (UICoordinateSpace)coordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);

  return WeakRetained;
}

- (_UIBoundingPath)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIBoundingPath;
  return [(_UIBoundingPath *)&v4 init];
}

- (_UIBoundingPath)initWithCoordinateSpace:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIBoundingPath;
  v6 = [(_UIBoundingPath *)&v9 init];
  if (v6)
  {
    if (!v5)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:v6 file:@"_UIBoundingPath.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace != nil"}];
    }

    objc_storeWeak(&v6->_coordinateSpace, v5);
  }

  return v6;
}

- (id)boundingPathForCoordinateSpace:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"_UIBoundingPath.m" lineNumber:196 description:{@"%@ must provide a concrete implementation of %@", v7, v8}];

  return 0;
}

- (id)boundingPathForCoordinateSpace:(id)a3 withCornerRadii:(UIRectCornerRadii)a4 orientation:(int64_t)a5 scale:(double)a6
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"_UIBoundingPath.m" lineNumber:203 description:{@"%@ must provide a concrete implementation of %@", v10, v11}];

  return 0;
}

- (CGRect)_inscribedRectInBoundingPathAndRect:(CGRect)a3 byInsettingRect:(CGRect)a4 onEdges:(unint64_t)a5 withOptions:(unint64_t)a6
{
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_largestInscribedRectInBoundingPathAndRect:(CGRect)a3 withCenter:(CGPoint)a4 aspectRatio:(double)a5
{
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_rectTuckedInCorner:(unint64_t)a3 ofBoundingPathAndRect:(CGRect)a4 withSize:(CGSize)a5 cornerRadii:(UIRectCornerRadii)a6 minimumPadding:(double)a7
{
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v10 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_rectTuckedAgainstEdge:(unint64_t)a3 ofBoundingPathAndRect:(CGRect)a4 withSize:(double)a5 cornerRadii:(UIRectCornerRadii)a6 minimumPadding:(double)a7
{
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v10 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_inscribedRectInBoundingRect:(CGRect)a3 byInsettingRect:(CGRect)a4 onEdges:(unint64_t)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  if (CGRectIsNull(a4))
  {
    goto LABEL_12;
  }

  rect = v10;
  if ((v5 & 2) != 0)
  {
    v27.origin.x = v13;
    v27.origin.y = v12;
    v27.size.width = v11;
    v27.size.height = v10;
    MinX = CGRectGetMinX(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v17 = fmax(MinX - CGRectGetMinX(v28), 0.0);
    x = x + v17;
    width = width - v17;
    if ((v5 & 8) == 0)
    {
LABEL_4:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v31.origin.x = v13;
      v31.origin.y = v12;
      v31.size.width = v11;
      v31.size.height = rect;
      MinY = CGRectGetMinY(v31);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v20 = fmax(MinY - CGRectGetMinY(v32), 0.0);
      y = y + v20;
      height = height - v20;
      if ((v5 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_4;
  }

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MaxX = CGRectGetMaxX(v29);
  v30.origin.x = v13;
  v30.origin.y = v12;
  v30.size.width = v11;
  v30.size.height = rect;
  width = width - fmax(MaxX - CGRectGetMaxX(v30), 0.0);
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((v5 & 4) == 0)
  {
LABEL_6:
    v14 = v11;
    v15 = rect;
    goto LABEL_11;
  }

LABEL_10:
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MaxY = CGRectGetMaxY(v33);
  v34.origin.x = v13;
  v34.origin.y = v12;
  v34.size.width = v11;
  v14 = v11;
  v15 = rect;
  v34.size.height = rect;
  height = height - fmax(MaxY - CGRectGetMaxY(v34), 0.0);
LABEL_11:
  v35.origin.x = v13;
  v35.origin.y = v12;
  v35.size.width = v14;
  v35.size.height = v15;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  if (!CGRectContainsRect(v35, v37))
  {
LABEL_12:
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)_largestInscribedRectInBoundingRect:(CGRect)a3 withCenter:(CGPoint)a4 aspectRatio:(double)a5
{
  _UIBoundingPathLargestInscribedRectWithAspectRatioAndCenter(a5, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.x, a4.y);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_rectTuckedInCorner:(unint64_t)a3 ofBoundingRect:(CGRect)a4 withSize:(CGSize)a5 minimumPadding:(double)a6
{
  height = a5.height;
  width = a5.width;
  v9 = a4.size.height;
  v10 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (CGRectIsNull(a4) || (v62.origin.x = x, v62.origin.y = y, v62.size.width = v10, v62.size.height = v9, v63 = CGRectInset(v62, a6, a6), v45 = v63.origin.y, v63.size.width < 0.0) || v63.size.height < 0.0)
  {
    v14 = *MEMORY[0x1E695F050];
    v15 = *(MEMORY[0x1E695F050] + 8);
    v16 = *(MEMORY[0x1E695F050] + 16);
    v17 = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_26;
  }

  v18 = v63.origin.x;
  v19 = v63.size.width;
  rect = v63.size.height;
  v20 = _UIDirectionVectorForCorner(a3);
  v56 = 0;
  v57 = &v56;
  v58 = 0x4010000000;
  v59 = "";
  v60 = 0u;
  v61 = 0u;
  v21 = MEMORY[0x1E695F050];
  v42 = v20;
  v43 = v18;
  v41 = v22;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = v10;
      v68.size.height = v9;
      MinX = CGRectGetMinX(v68);
    }

    else
    {
      if (a3 != 8)
      {
        goto LABEL_12;
      }

      v65.origin.x = x;
      v65.origin.y = y;
      v65.size.width = v10;
      v65.size.height = v9;
      MinX = CGRectGetMaxX(v65) - width;
    }

    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = v10;
    v69.size.height = v9;
    MinY = CGRectGetMaxY(v69) - height;
    goto LABEL_17;
  }

  if (a3 == 1)
  {
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = v10;
    v66.size.height = v9;
    MinX = CGRectGetMinX(v66);
    goto LABEL_14;
  }

  if (a3 != 2)
  {
LABEL_12:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _rectWithSizeInCornerOfBoundingRect(const CGSize, const UIRectCorner, const CGRect)"}];
    [v24 handleFailureInFunction:v25 file:@"_UIBoundingPath.m" lineNumber:319 description:{@"Invalid UIRectCorner value (%ld)", a3}];

    MinX = v21->f64[0];
    MinY = v21->f64[1];
    v27 = v21[1].f64[0];
    v28 = v21[1].f64[1];
    goto LABEL_18;
  }

  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = v10;
  v64.size.height = v9;
  MinX = CGRectGetMaxX(v64) - width;
LABEL_14:
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = v10;
  v67.size.height = v9;
  MinY = CGRectGetMinY(v67);
LABEL_17:
  v27 = width;
  v28 = height;
LABEL_18:
  *&v60 = MinX;
  *(&v60 + 1) = MinY;
  *&v61 = v27;
  *(&v61 + 1) = v28;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v47 = __78___UIBoundingPath__rectTuckedInCorner_ofBoundingRect_withSize_minimumPadding___block_invoke;
  v48 = &unk_1E710C460;
  v49 = &v56;
  v50 = v42;
  v51 = v41;
  v52 = v43;
  v53 = v45;
  v54 = v19;
  v55 = rect;
  __78___UIBoundingPath__rectTuckedInCorner_ofBoundingRect_withSize_minimumPadding___block_invoke(v46, v57[2].f64[0], v57[2].f64[1]);
  if (width > 0.0 || height > 0.0)
  {
    v47(v46, v57[2].f64[0], v57[2].f64[1] + v57[3].f64[1]);
    v29 = vaddq_f64(v57[2], v57[3]);
    (v47)(v46, v29, v29.n128_f64[1]);
    v47(v46, v57[2].f64[0] + v57[3].f64[0], v57[2].f64[1]);
  }

  if (CGRectIsNull(*v57[2].f64) || (v30 = v57[2].f64[0], v31 = v57[2].f64[1], v70.origin.x = v43, v32 = v57[3].f64[0], v33 = v57[3].f64[1], v70.origin.y = v45, v70.size.width = v19, v70.size.height = rect, v71 = CGRectInset(v70, -0.01, -0.01), v73.origin.x = v30, v73.origin.y = v31, v73.size.width = v32, v73.size.height = v33, !CGRectContainsRect(v71, v73)))
  {
    v36 = &v21[1].f64[1];
    f64 = v21[1].f64;
    v34 = &v21->f64[1];
  }

  else
  {
    v21 = v57 + 2;
    v34 = &v57[2].f64[1];
    f64 = v57[3].f64;
    v36 = &v57[3].f64[1];
  }

  v17 = *v36;
  v16 = *f64;
  v15 = *v34;
  v14 = v21->f64[0];
  _Block_object_dispose(&v56, 8);
LABEL_26:
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGRect)_rectTuckedAgainstEdge:(unint64_t)a3 ofBoundingRect:(CGRect)a4 withSize:(double)a5 minimumPadding:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (CGRectIsNull(a4))
  {
    goto LABEL_2;
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v28 = CGRectInset(v27, a6, a6);
  if (v28.size.width < 0.0)
  {
    goto LABEL_2;
  }

  v22 = v28.size.height;
  if (v28.size.height < 0.0)
  {
    goto LABEL_2;
  }

  v23 = v28.origin.x;
  v24 = v28.origin.y;
  v25 = v28.size.width;
  if (a3 > 3)
  {
    if (a3 != 4)
    {
      if (a3 == 8)
      {
        MinX = CGRectGetMaxX(v28) - a5;
        goto LABEL_13;
      }

LABEL_14:
      a5 = *(MEMORY[0x1E695F050] + 16);
      v17 = *(MEMORY[0x1E695F050] + 24);
      MinX = *MEMORY[0x1E695F050];
      MinY = *(MEMORY[0x1E695F050] + 8);
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"_UIBoundingPath.m" lineNumber:403 description:{@"Invalid UIRectEdge value (%ld)", a3}];

      goto LABEL_18;
    }

    MinX = CGRectGetMinX(v28);
    v32.origin.x = v23;
    v32.origin.y = v24;
    v32.size.width = v25;
    v32.size.height = v22;
    MinY = CGRectGetMaxY(v32) - a5;
LABEL_17:
    v33.origin.x = v23;
    v33.origin.y = v24;
    v33.size.width = v25;
    v33.size.height = v22;
    v17 = a5;
    a5 = CGRectGetWidth(v33);
    goto LABEL_18;
  }

  if (a3 == 1)
  {
    MinX = CGRectGetMinX(v28);
    v31.origin.x = v23;
    v31.origin.y = v24;
    v31.size.width = v25;
    v31.size.height = v22;
    MinY = CGRectGetMinY(v31);
    goto LABEL_17;
  }

  if (a3 != 2)
  {
    goto LABEL_14;
  }

  MinX = CGRectGetMinX(v28);
LABEL_13:
  v29.origin.x = v23;
  v29.origin.y = v24;
  v29.size.width = v25;
  v29.size.height = v22;
  MinY = CGRectGetMinY(v29);
  v30.origin.x = v23;
  v30.origin.y = v24;
  v30.size.width = v25;
  v30.size.height = v22;
  v17 = CGRectGetHeight(v30);
LABEL_18:
  v34.origin.x = MinX;
  v34.origin.y = MinY;
  v34.size.width = a5;
  v34.size.height = v17;
  if (CGRectIsNull(v34) || (v35.origin.x = v23, v35.origin.y = v24, v35.size.width = v25, v35.size.height = v22, v36 = CGRectInset(v35, -0.01, -0.01), v38.origin.x = MinX, v38.origin.y = MinY, v38.size.width = a5, v38.size.height = v17, !CGRectContainsRect(v36, v38)))
  {
LABEL_2:
    MinX = *MEMORY[0x1E695F050];
    MinY = *(MEMORY[0x1E695F050] + 8);
    a5 = *(MEMORY[0x1E695F050] + 16);
    v17 = *(MEMORY[0x1E695F050] + 24);
  }

  v18 = MinX;
  v19 = MinY;
  v20 = a5;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (UIEdgeInsets)_centerEdgeInsetsOfBoundingPathAndRect:(CGRect)a3
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)_imageRepresentation
{
  v2 = objc_alloc_init(UIImage);

  return v2;
}

@end