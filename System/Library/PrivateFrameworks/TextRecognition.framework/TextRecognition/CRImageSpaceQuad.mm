@interface CRImageSpaceQuad
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)entirelyContainsQuad:(id)quad;
- (BOOL)hasIntersectingEdges;
- (BOOL)intersectsImageMargin:(double)margin imageSize:(CGSize)size;
- (BOOL)intersectsQuad:(id)quad;
- (BOOL)isEqual:(id)equal;
- (BOOL)linesIntersectLine1P1:(double)p1 line1P2:(double)p2 line2P1:(double)line2P1 line2P2:(double)line2P2;
- (BOOL)overlapsQuad:(id)quad;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)midPoint;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGRect)boundingBox;
- (CGSize)size;
- (CRImageSpaceQuad)applyHomographyTransform:(float32x4_t)transform downscaleRate:(float32x4_t)rate;
- (CRImageSpaceQuad)initWithCRCodableDataRepresentation:(id)representation;
- (CRImageSpaceQuad)initWithCoder:(id)coder;
- (CRImageSpaceQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft;
- (double)aspectRatio;
- (double)boundingBoxIOUWithQuad:(id)quad;
- (double)orthogonalityScore;
- (double)shortestDistanceFromCornersOfQuad:(id)quad;
- (double)shortestDistanceFromPoint:(CGPoint)point;
- (double)squaredDistanceFromCorrespondingCornersOfQuad:(id)quad;
- (double)squaredDistanceMaxRatioFromCorrespondingCornersOfQuad:(id)quad;
- (id)copyWithZone:(_NSZone *)zone;
- (id)cornerAngles;
- (id)crCodableDataRepresentation;
- (id)normalizedQuadForImageSize:(CGSize)size;
- (id)rotated180;
- (id)rotatedAroundPoint:(CGPoint)point angle:(float)angle;
- (id)scaledBy:(CGPoint)by offset:(CGPoint)offset;
- (id)unionWithQuad:(id)quad baselineAngle:(float)angle;
- (void)encodeWithCoder:(id)coder;
- (void)homographyFromSelfToQuad:(void *)quad;
@end

@implementation CRImageSpaceQuad

- (CRImageSpaceQuad)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CRQuadData"];
  v6 = [coderCopy decodeIntegerForKey:@"CRQuadUncompressedDataSize"];

  v7 = uncompressDataOfSize(v5, v6);
  v8 = [(CRImageSpaceQuad *)self initWithCRCodableDataRepresentation:v7];

  return v8;
}

- (CRImageSpaceQuad)applyHomographyTransform:(float32x4_t)transform downscaleRate:(float32x4_t)rate
{
  *&v6 = a5;
  v7 = vdupq_lane_s64(v6, 0);
  v8 = vdivq_f64(*(self + 8), v7);
  v9 = v8.f64[0];
  v10 = v8.f64[1];
  v11 = vaddq_f32(rate, vmlaq_n_f32(vmulq_n_f32(a2, v9), transform, v10));
  if (*&v11.i32[2] != 0.0)
  {
    v8 = vcvtq_f64_f32(vdiv_f32(*v11.i8, vdup_laneq_s32(v11, 2)));
  }

  v12 = vdivq_f64(*(self + 24), v7);
  v13 = v12.f64[0];
  v14 = v12.f64[1];
  v15 = vaddq_f32(rate, vmlaq_n_f32(vmulq_n_f32(a2, v13), transform, v14));
  if (*&v15.i32[2] != 0.0)
  {
    v12 = vcvtq_f64_f32(vdiv_f32(*v15.i8, vdup_laneq_s32(v15, 2)));
  }

  v16 = vdivq_f64(*(self + 56), v7);
  v17 = v16.f64[0];
  v18 = v16.f64[1];
  v19 = vaddq_f32(rate, vmlaq_n_f32(vmulq_n_f32(a2, v17), transform, v18));
  if (*&v19.i32[2] != 0.0)
  {
    v16 = vcvtq_f64_f32(vdiv_f32(*v19.i8, vdup_laneq_s32(v19, 2)));
  }

  v20 = vdivq_f64(*(self + 40), v7);
  v21 = v20.f64[0];
  v22 = v20.f64[1];
  v23 = vaddq_f32(rate, vmlaq_n_f32(vmulq_n_f32(a2, v21), transform, v22));
  if (*&v23.i32[2] != 0.0)
  {
    v20 = vcvtq_f64_f32(vdiv_f32(*v23.i8, vdup_laneq_s32(v23, 2)));
  }

  v24 = [[CRImageSpaceQuad alloc] initWithTopLeft:vmulq_n_f64(v8 topRight:*&v6) bottomRight:vmulq_n_f64(v12 bottomLeft:*&v6), vmulq_n_f64(v20, *&v6), vmulq_n_f64(v16, *&v6)];

  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  crCodableDataRepresentation = [(CRImageSpaceQuad *)self crCodableDataRepresentation];
  v5 = compressData(crCodableDataRepresentation);
  [coderCopy encodeObject:v5 forKey:@"CRQuadData"];
  [coderCopy encodeInteger:objc_msgSend(crCodableDataRepresentation forKey:{"length"), @"CRQuadUncompressedDataSize"}];
}

- (CRImageSpaceQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft
{
  y = bottomLeft.y;
  x = bottomLeft.x;
  v8 = bottomRight.y;
  v9 = bottomRight.x;
  v10 = right.y;
  v11 = right.x;
  v12 = left.y;
  v13 = left.x;
  v15.receiver = self;
  v15.super_class = CRImageSpaceQuad;
  result = [(CRImageSpaceQuad *)&v15 init];
  if (result)
  {
    result->_topLeft.x = v13;
    result->_topLeft.y = v12;
    result->_topRight.x = v11;
    result->_topRight.y = v10;
    result->_bottomRight.x = v9;
    result->_bottomRight.y = v8;
    result->_bottomLeft.x = x;
    result->_bottomLeft.y = y;
  }

  return result;
}

- (CGRect)boundingBox
{
  v12 = *MEMORY[0x1E69E9840];
  topRight = self->_topRight;
  v11[0] = self->_topLeft;
  v11[1] = topRight;
  bottomLeft = self->_bottomLeft;
  v11[2] = self->_bottomRight;
  v11[3] = bottomLeft;
  v4 = v11[0];
  v5 = 1;
  v6 = v11[0];
  do
  {
    v7 = v11[v5];
    v6 = vbslq_s8(vcgtq_f64(v7, v6), v7, v6);
    v4 = vbslq_s8(vcgtq_f64(v7, v4), v4, v7);
    ++v5;
  }

  while (v5 != 4);
  v8 = v6.f64[0] - v4.f64[0];
  v9 = v4.f64[1];
  v10 = v6.f64[1] - v4.f64[1];
  result.origin.x = v4.f64[0];
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v9;
  return result;
}

- (CGSize)size
{
  p_bottomLeft = &self->_bottomLeft;
  p_y = &self->_bottomLeft.y;
  v4.f64[0] = self->_topRight.x;
  v5.f64[0] = self->_topRight.y;
  v6.f64[0] = self->_bottomRight.x;
  v7.f64[0] = self->_bottomRight.y;
  v8 = vld1q_dup_f64(&p_bottomLeft->x);
  v9.f64[0] = self->_topLeft.x;
  v9.f64[1] = v6.f64[0];
  v6.f64[1] = v4.f64[0];
  v4.f64[1] = v9.f64[0];
  v10 = vsubq_f64(vsubq_f64(vaddq_f64(v8, v9), v4), v6);
  __asm { FMOV            V2.2D, #0.5 }

  *&v10.f64[0] = vcvt_f32_f64(vmulq_f64(v10, _Q2));
  v16 = vld1q_dup_f64(p_y);
  v8.f64[0] = self->_topLeft.y;
  v8.f64[1] = v7.f64[0];
  v7.f64[1] = v5.f64[0];
  v5.f64[1] = v8.f64[0];
  v17 = vcvt_f32_f64(vmulq_f64(vsubq_f64(vsubq_f64(vaddq_f64(v16, v8), v5), v7), _Q2));
  *&_Q2.f64[0] = vand_s8(vceqz_f32(*&v10.f64[0]), vceqz_f32(v17));
  v18.i64[0] = SLODWORD(_Q2.f64[0]);
  v18.i64[1] = SHIDWORD(_Q2.f64[0]);
  v19 = vbicq_s8(vcvtq_f64_f32(vsqrt_f32(vmla_f32(vmul_f32(v17, v17), *&v10.f64[0], *&v10.f64[0]))), v18);
  v20 = *&v19.i64[1];
  result.width = *v19.i64;
  result.height = v20;
  return result;
}

- (double)aspectRatio
{
  [(CRImageSpaceQuad *)self size];
  v4 = v3 / v2;
  v5 = v2 == 0.0;
  result = 0.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (CGPoint)midPoint
{
  [(CRImageSpaceQuad *)self boundingBox];
  v4 = v3 + v2 * 0.5;
  v7 = v6 + v5 * 0.5;
  result.y = v7;
  result.x = v4;
  return result;
}

- (id)rotated180
{
  v2 = [objc_alloc(objc_opt_class()) initWithTopLeft:self->_bottomRight.x topRight:self->_bottomRight.y bottomRight:self->_bottomLeft.x bottomLeft:{self->_bottomLeft.y, self->_topLeft.x, self->_topLeft.y, self->_topRight.x, self->_topRight.y}];

  return v2;
}

- (id)normalizedQuadForImageSize:(CGSize)size
{
  v3 = [[CRNormalizedQuad alloc] initWithDenormalizedQuad:self size:size.width, size.height];

  return v3;
}

- (id)rotatedAroundPoint:(CGPoint)point angle:(float)angle
{
  y = point.y;
  x = point.x;
  v7 = self->_topLeft.x;
  v8 = self->_topLeft.y;
  v9 = __sincos_stret(angle);
  v10 = (v7 - x) * v9.__cosval - (v8 - y) * v9.__sinval;
  v11 = v9.__cosval * (v8 - y) + (v7 - x) * v9.__sinval;
  v12 = x + v10;
  v13 = y + v11;
  v14 = self->_topRight.x - x;
  v15 = self->_topRight.y - y;
  v16 = v14 * v9.__cosval - v15 * v9.__sinval;
  *&v14 = v9.__cosval * v15 + v14 * v9.__sinval;
  v17 = x + v16;
  v18 = y + *&v14;
  v19 = self->_bottomRight.x - x;
  v20 = self->_bottomRight.y - y;
  v21 = v19 * v9.__cosval - v20 * v9.__sinval;
  *&v19 = v9.__cosval * v20 + v19 * v9.__sinval;
  v22 = x + v21;
  v23 = y + *&v19;
  v24 = self->_bottomLeft.x - x;
  v25 = self->_bottomLeft.y - y;
  v26 = v24 * v9.__cosval - v25 * v9.__sinval;
  v27 = v9.__cosval * v25 + v24 * v9.__sinval;
  v28 = [[CRImageSpaceQuad alloc] initWithTopLeft:v12 topRight:v13 bottomRight:v17 bottomLeft:v18, v22, v23, x + v26, y + v27];

  return v28;
}

- (id)scaledBy:(CGPoint)by offset:(CGPoint)offset
{
  v4 = [[CRImageSpaceQuad alloc] initWithTopLeft:offset.x + self->_topLeft.x * by.x topRight:offset.y + self->_topLeft.y * by.y bottomRight:offset.x + self->_topRight.x * by.x bottomLeft:offset.y + self->_topRight.y * by.y, offset.x + self->_bottomRight.x * by.x, offset.y + self->_bottomRight.y * by.y, offset.x + self->_bottomLeft.x * by.x, offset.y + self->_bottomLeft.y * by.y];

  return v4;
}

- (id)unionWithQuad:(id)quad baselineAngle:(float)angle
{
  quadCopy = quad;
  [(CRImageSpaceQuad *)self boundingBox];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [quadCopy boundingBox];
  v63.origin.x = v15;
  v63.origin.y = v16;
  v63.size.width = v17;
  v63.size.height = v18;
  v61.origin.x = v8;
  v61.origin.y = v10;
  v61.size.width = v12;
  v61.size.height = v14;
  v62 = CGRectUnion(v61, v63);
  v62.size.width = v62.size.width * 0.5;
  v20 = v62.origin.y + v62.size.height * 0.5;
  v19 = v62.origin.x + v62.size.width;
  angleCopy = angle;
  *&v62.size.width = angle;
  v21 = [(CRImageSpaceQuad *)self rotatedAroundPoint:v19 angle:v20, v62.size.width];
  *&v22 = angle;
  v23 = [quadCopy rotatedAroundPoint:v19 angle:{v20, v22}];

  [v23 bottomLeft];
  v25 = v24;
  [v21 bottomLeft];
  v27 = v26;
  [v21 topLeft];
  v29 = v28;
  [v23 topLeft];
  if (v29 < v30)
  {
    v30 = v29;
  }

  if (v27 < v30)
  {
    v30 = v27;
  }

  if (v25 >= v30)
  {
    v25 = v30;
  }

  [v23 topLeft];
  v32 = v31;
  [v21 topLeft];
  v34 = v33;
  [v21 topRight];
  v36 = v35;
  [v23 topRight];
  if (v36 >= v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = v36;
  }

  if (v34 < v38)
  {
    v38 = v34;
  }

  if (v32 >= v38)
  {
    v32 = v38;
  }

  [v23 bottomRight];
  v40 = v39;
  [v21 bottomRight];
  v42 = v41;
  [v21 topRight];
  v44 = v43;
  [v23 topRight];
  if (v44 >= v45)
  {
    v45 = v44;
  }

  if (v42 >= v45)
  {
    v45 = v42;
  }

  if (v40 < v45)
  {
    v40 = v45;
  }

  [v23 bottomLeft];
  v47 = v46;
  [v21 bottomLeft];
  v49 = v48;
  [v21 bottomRight];
  v51 = v50;
  [v23 bottomRight];
  if (v51 >= v52)
  {
    v53 = v51;
  }

  else
  {
    v53 = v52;
  }

  if (v49 >= v53)
  {
    v53 = v49;
  }

  if (v47 >= v53)
  {
    v54 = v47;
  }

  else
  {
    v54 = v53;
  }

  v55 = [[CRImageSpaceQuad alloc] initWithTopLeft:v25 topRight:v32 bottomRight:v40 bottomLeft:v32, v40, v54, v25, v54];
  *&v56 = -angleCopy;
  v57 = [(CRImageSpaceQuad *)v55 rotatedAroundPoint:v19 angle:v20, v56];

  return v57;
}

- (double)boundingBoxIOUWithQuad:(id)quad
{
  quadCopy = quad;
  [(CRImageSpaceQuad *)self boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [quadCopy boundingBox];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  v25 = CGRectUnion(v24, v27);
  height = v25.size.height;
  width = v25.size.width;
  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  v26 = CGRectIntersection(v25, v28);
  return v26.size.width * v26.size.height / (width * height + 1.0e-23);
}

- (BOOL)overlapsQuad:(id)quad
{
  v37[8] = *MEMORY[0x1E69E9840];
  quadCopy = quad;
  selfCopy = self;
  [(CRImageSpaceQuad *)selfCopy topLeft];
  v37[0] = v6;
  v37[1] = v7;
  [(CRImageSpaceQuad *)selfCopy topRight];
  v37[2] = v8;
  v37[3] = v9;
  [(CRImageSpaceQuad *)selfCopy bottomRight];
  v37[4] = v10;
  v37[5] = v11;
  [(CRImageSpaceQuad *)selfCopy bottomLeft];
  v37[6] = v12;
  v37[7] = v13;
  [quadCopy topLeft];
  v35 = v14;
  v36[0] = v15;
  [quadCopy topRight];
  v36[1] = v16;
  v36[2] = v17;
  [quadCopy bottomRight];
  v36[3] = v18;
  v36[4] = v19;
  [quadCopy bottomLeft];
  v20 = 0;
  v36[5] = v21;
  v36[6] = v22;
  do
  {
    if (-[CRImageSpaceQuad containsPoint:](selfCopy, "containsPoint:", *&v36[v20 - 1], *&v36[v20]) || ([quadCopy containsPoint:{*&v37[v20], *&v37[v20 + 1]}] & 1) != 0)
    {
LABEL_12:
      v33 = 1;
      goto LABEL_13;
    }

    v20 += 2;
  }

  while (v20 != 8);
  v23 = 0;
  do
  {
    v24 = &v37[2 * v23];
    v25 = *v24;
    v26 = v24[1];
    v27 = &v37[2 * (++v23 & 3)];
    v28 = *v27;
    v29 = v27[1];
    v30 = 1;
    v31 = v36;
    while (v30 != 5)
    {
      v32 = [(CRImageSpaceQuad *)selfCopy linesIntersectLine1P1:v25 line1P2:v26 line2P1:v28 line2P2:v29, *(v31 - 1), *v31, *&v36[2 * (v30 & 3) - 1], *&v36[2 * (v30 & 3)]];
      v31 += 2;
      ++v30;
      if (v32)
      {
        goto LABEL_12;
      }
    }

    v33 = 0;
  }

  while (v23 != 4);
LABEL_13:

  return v33;
}

- (BOOL)linesIntersectLine1P1:(double)p1 line1P2:(double)p2 line2P1:(double)line2P1 line2P2:(double)line2P2
{
  if (result)
  {
    v9 = (line2P1 - p1) * (line2P2 - p2) - (p2 - a2) * (a7 - line2P1);
    v10 = (line2P1 - p1) * (a8 - p2) - (p2 - a2) * (a9 - line2P1);
    v11 = (a9 - a7) * (p2 - a8) - (a8 - line2P2) * (line2P1 - a9);
    v12 = (a9 - a7) * (a2 - a8) - (a8 - line2P2) * (p1 - a9);
    v13 = (v10 != 0.0) & ((v9 > 0.0) ^ (v10 <= 0.0));
    if (v9 == 0.0)
    {
      v13 = v10 == 0.0;
    }

    v14 = (v11 != 0.0) & ((v12 > 0.0) ^ (v11 <= 0.0));
    if (v12 == 0.0)
    {
      v14 = v11 == 0.0;
    }

    result = 1;
    if ((v13 & 1) != 0 || v14)
    {
      if (v9 != 0.0 || (a2 >= p2 ? (v15 = a2) : (v15 = p2), a2 >= p2 ? (v16 = p2) : (v16 = a2), line2P2 <= v15 ? (v17 = line2P2 < v16) : (v17 = 1), v17 || (p1 >= line2P1 ? (v30 = p1) : (v30 = line2P1), p1 >= line2P1 ? (v31 = line2P1) : (v31 = p1), a7 > v30 || a7 < v31)))
      {
        if (v10 != 0.0 || (a2 >= p2 ? (v18 = a2) : (v18 = p2), a2 >= p2 ? (v19 = p2) : (v19 = a2), a8 > v18 || a8 < v19 || (p1 >= line2P1 ? (v20 = p1) : (v20 = line2P1), p1 >= line2P1 ? (v21 = line2P1) : (v21 = p1), a9 > v20 || a9 < v21)))
        {
          if (v12 != 0.0 || (line2P2 >= a8 ? (v22 = line2P2) : (v22 = a8), line2P2 >= a8 ? (v23 = a8) : (v23 = line2P2), a2 > v22 || a2 < v23 || (a7 >= a9 ? (v24 = a7) : (v24 = a9), a7 >= a9 ? (v25 = a9) : (v25 = a7), p1 > v24 || p1 < v25)))
          {
            if (v11 != 0.0)
            {
              return 0;
            }

            v26 = line2P2 >= a8 ? line2P2 : a8;
            v27 = line2P2 >= a8 ? a8 : line2P2;
            if (p2 > v26 || p2 < v27)
            {
              return 0;
            }

            v28 = a7 >= a9 ? a7 : a9;
            v29 = a7 >= a9 ? a9 : a7;
            if (line2P1 > v28 || line2P1 < v29)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

- (double)shortestDistanceFromCornersOfQuad:(id)quad
{
  v17[8] = *MEMORY[0x1E69E9840];
  quadCopy = quad;
  [quadCopy topLeft];
  v17[0] = v5;
  v17[1] = v6;
  [quadCopy topRight];
  v17[2] = v7;
  v17[3] = v8;
  [quadCopy bottomRight];
  v17[4] = v9;
  v17[5] = v10;
  [quadCopy bottomLeft];
  v11 = 0;
  v17[6] = v12;
  v17[7] = v13;
  v14 = 1.79769313e308;
  do
  {
    [(CRImageSpaceQuad *)self shortestDistanceFromPoint:*&v17[v11], *&v17[v11 + 1]];
    if (v14 >= v15)
    {
      v14 = v15;
    }

    v11 += 2;
  }

  while (v11 != 8);

  return v14;
}

- (double)squaredDistanceFromCorrespondingCornersOfQuad:(id)quad
{
  v22[8] = *MEMORY[0x1E69E9840];
  quadCopy = quad;
  [quadCopy topLeft];
  v22[0] = v5;
  v22[1] = v6;
  [quadCopy topRight];
  v22[2] = v7;
  v22[3] = v8;
  [quadCopy bottomRight];
  v22[4] = v9;
  v22[5] = v10;
  [quadCopy bottomLeft];
  v11 = 0;
  v22[6] = v12;
  v22[7] = v13;
  topRight = self->_topRight;
  v21[0] = self->_topLeft;
  v21[1] = topRight;
  bottomLeft = self->_bottomLeft;
  v21[2] = self->_bottomRight;
  v21[3] = bottomLeft;
  v16 = 0.0;
  do
  {
    v17 = vsubq_f64(*&v22[v11 / 8], v21[v11 / 0x10]);
    v18 = vsubq_f64(*&v22[v11 / 8 + 2], v21[v11 / 0x10 + 1]);
    v19 = vpaddq_f64(vmulq_f64(v17, v17), vmulq_f64(v18, v18));
    v16 = v16 + v19.f64[0] + v19.f64[1];
    v11 += 32;
  }

  while (v11 != 64);

  return v16;
}

- (double)squaredDistanceMaxRatioFromCorrespondingCornersOfQuad:(id)quad
{
  v22[8] = *MEMORY[0x1E69E9840];
  quadCopy = quad;
  [quadCopy topLeft];
  v22[0] = v5;
  v22[1] = v6;
  [quadCopy topRight];
  v22[2] = v7;
  v22[3] = v8;
  [quadCopy bottomRight];
  v22[4] = v9;
  v22[5] = v10;
  [quadCopy bottomLeft];
  v11 = 0;
  v22[6] = v12;
  v22[7] = v13;
  topRight = self->_topRight;
  v21[0] = self->_topLeft;
  v21[1] = topRight;
  bottomLeft = self->_bottomLeft;
  v21[2] = self->_bottomRight;
  v21[3] = bottomLeft;
  v16 = 2.22507386e-308;
  v17 = 1.79769313e308;
  do
  {
    v18 = vsubq_f64(*&v22[v11 / 8], v21[v11 / 0x10]);
    v19 = vaddvq_f64(vmulq_f64(v18, v18));
    if (v19 > v16)
    {
      v16 = v19;
    }

    if (v19 < v17)
    {
      v17 = v19;
    }

    v11 += 16;
  }

  while (v11 != 64);

  return v16 / v17;
}

- (double)shortestDistanceFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(CRImageSpaceQuad *)self containsPoint:point.x, point.y, *&self->_topLeft.x, *&self->_topLeft.y, *&self->_topRight.x, *&self->_topRight.y, *&self->_bottomRight.x, *&self->_bottomRight.y, *&self->_bottomLeft.x, *&self->_bottomLeft.y];
  result = 0.0;
  if (!v5)
  {
    v7 = &v26 + 1;
    result = 1.79769313e308;
    for (i = 1; i != 5; ++i)
    {
      v9 = (&v26 + (i & 3));
      v10 = *(v7 - 1);
      v11 = v9[1];
      v12 = *v9 - v10;
      v13 = y - *v7;
      v14 = v11 - *v7;
      v15 = v13 * v14 + (x - v10) * v12;
      v16 = v13 * v13 + (x - v10) * (x - v10);
      v17 = v14 * v14 + v12 * v12;
      *&v16 = v16;
      v18 = (y - v11) * (y - v11) + (x - *v9) * (x - *v9);
      v19 = v15 / v17;
      *&v18 = v18;
      v20 = sqrtf(*&v16);
      v21 = sqrtf(*&v18);
      if (*&v16 >= *&v18)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      v23 = ((*v7 - y) * v12 - (v10 - x) * v14) / v17;
      v24 = sqrt(v17) * fabsf(v23);
      if (v19 < 0.0 || v19 > 1.0)
      {
        v24 = v22;
      }

      if (result >= v24)
      {
        result = v24;
      }

      v7 += 2;
    }
  }

  return result;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CRImageSpaceQuad *)self midPoint];
  v8 = v7;
  v10 = v9;
  if (self)
  {
    v11 = atan2(self->_topRight.y - self->_topLeft.y, self->_topRight.x - self->_topLeft.x);
    v12 = atan2(self->_bottomRight.y - self->_bottomLeft.y, self->_bottomRight.x - self->_bottomLeft.x);
    v13 = (-v12 - v11) * 0.5;
  }

  else
  {
    v13 = 0.0;
  }

  *&v6 = v13;
  v14 = [(CRImageSpaceQuad *)self rotatedAroundPoint:v8 angle:v10, v6];
  v15 = __sincos_stret(v13);
  v16 = (x - v8) * v15.__cosval - (y - v10) * v15.__sinval;
  v17 = (y - v10) * v15.__cosval + (x - v8) * v15.__sinval;
  v18 = v8 + v16;
  v19 = v10 + v17;
  [v14 boundingBox];
  v22.x = v18;
  v22.y = v19;
  if (CGRectContainsPoint(v23, v22))
  {
    v20 = 1;
  }

  else
  {
    [v14 boundingBox];
    v25.size.width = 1.0;
    v25.size.height = 1.0;
    v25.origin.x = v18 + -0.5;
    v25.origin.y = v19 + -0.5;
    v20 = CGRectIntersectsRect(v24, v25);
  }

  return v20;
}

- (id)cornerAngles
{
  v53[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  [(CRImageSpaceQuad *)self bottomLeft];
  v5 = v4;
  v7 = v6;
  [(CRImageSpaceQuad *)self topLeft];
  v9 = v8;
  v11 = v10;
  [(CRImageSpaceQuad *)self topRight];
  v14 = [v3 numberWithDouble:{angleBetweenPoints(v5, v7, v9, v11, v12, v13)}];
  v53[0] = v14;
  v15 = MEMORY[0x1E696AD98];
  [(CRImageSpaceQuad *)self topLeft];
  v17 = v16;
  v19 = v18;
  [(CRImageSpaceQuad *)self topRight];
  v21 = v20;
  v23 = v22;
  [(CRImageSpaceQuad *)self bottomRight];
  v26 = [v15 numberWithDouble:{angleBetweenPoints(v17, v19, v21, v23, v24, v25)}];
  v53[1] = v26;
  v27 = MEMORY[0x1E696AD98];
  [(CRImageSpaceQuad *)self topRight];
  v29 = v28;
  v31 = v30;
  [(CRImageSpaceQuad *)self bottomRight];
  v33 = v32;
  v35 = v34;
  [(CRImageSpaceQuad *)self bottomLeft];
  v38 = [v27 numberWithDouble:{angleBetweenPoints(v29, v31, v33, v35, v36, v37)}];
  v53[2] = v38;
  v39 = MEMORY[0x1E696AD98];
  [(CRImageSpaceQuad *)self bottomRight];
  v41 = v40;
  v43 = v42;
  [(CRImageSpaceQuad *)self bottomLeft];
  v45 = v44;
  v47 = v46;
  [(CRImageSpaceQuad *)self topLeft];
  v50 = [v39 numberWithDouble:{angleBetweenPoints(v41, v43, v45, v47, v48, v49)}];
  v53[3] = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];

  return v51;
}

- (double)orthogonalityScore
{
  cornerAngles = [(CRImageSpaceQuad *)self cornerAngles];
  v3 = [cornerAngles sortedArrayUsingSelector:sel_compare_];

  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 doubleValue];
  v6 = v5;
  v7 = [v3 objectAtIndexedSubscript:3];
  [v7 doubleValue];
  v9 = v6 / v8;

  return v9;
}

- (BOOL)hasIntersectingEdges
{
  x = self->_bottomLeft.x;
  y = self->_bottomLeft.y;
  v5 = self->_bottomRight.x;
  v6 = self->_bottomRight.y;
  v7 = self->_topLeft.x;
  v8 = self->_topLeft.y;
  v9 = self->_topRight.x;
  v10 = self->_topRight.y;
  if ([(CRImageSpaceQuad *)self linesIntersectLine1P1:y line1P2:v5 line2P1:v6 line2P2:v7, v8, v9, v10])
  {
    return 1;
  }

  return [(CRImageSpaceQuad *)self linesIntersectLine1P1:y line1P2:v7 line2P1:v8 line2P2:v5, v6, v9, v10];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(CRImageSpaceQuad *)v5 topLeft];
      v8 = vabdd_f64(self->_topLeft.y, v7);
      v9 = vabdd_f64(self->_topLeft.x, v6) > 0.5 || v8 > 0.5;
      if (v9 || (([(CRImageSpaceQuad *)v5 topRight], v12 = vabdd_f64(self->_topRight.y, v11), vabdd_f64(self->_topRight.x, v10) <= 0.5) ? (v13 = v12 > 0.5) : (v13 = 1), v13 || (([(CRImageSpaceQuad *)v5 bottomRight], v16 = vabdd_f64(self->_bottomRight.y, v15), vabdd_f64(self->_bottomRight.x, v14) <= 0.5) ? (v17 = v16 > 0.5) : (v17 = 1), v17)))
      {
        v18 = 0;
      }

      else
      {
        [(CRImageSpaceQuad *)v5 bottomLeft];
        v22 = vabdd_f64(self->_bottomLeft.x, v21) <= 0.5;
        v18 = vabdd_f64(self->_bottomLeft.y, v20) <= 0.5 && v22;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRImageSpaceQuad allocWithZone:zone];
  x = self->_topLeft.x;
  y = self->_topLeft.y;
  v7 = self->_topRight.x;
  v8 = self->_topRight.y;
  v9 = self->_bottomRight.x;
  v10 = self->_bottomRight.y;
  v11 = self->_bottomLeft.x;
  v12 = self->_bottomLeft.y;

  return [(CRImageSpaceQuad *)v4 initWithTopLeft:x topRight:y bottomRight:v7 bottomLeft:v8, v9, v10, v11, v12];
}

- (id)crCodableDataRepresentation
{
  v3 = objc_opt_new();
  [CRCodingUtilities appendInteger:1 toData:v3];
  [CRCodingUtilities appendPoint:v3 toData:self->_topLeft.x, self->_topLeft.y];
  [CRCodingUtilities appendPoint:v3 toData:self->_topRight.x, self->_topRight.y];
  [CRCodingUtilities appendPoint:v3 toData:self->_bottomRight.x, self->_bottomRight.y];
  [CRCodingUtilities appendPoint:v3 toData:self->_bottomLeft.x, self->_bottomLeft.y];

  return v3;
}

- (CRImageSpaceQuad)initWithCRCodableDataRepresentation:(id)representation
{
  representationCopy = representation;
  v21 = 0;
  if ([CRCodingUtilities integerFromEncodingData:representationCopy offset:&v21]== 1)
  {
    [CRCodingUtilities pointFromEncodingData:representationCopy offset:&v21];
    v6 = v5;
    v8 = v7;
    [CRCodingUtilities pointFromEncodingData:representationCopy offset:&v21];
    v10 = v9;
    v12 = v11;
    [CRCodingUtilities pointFromEncodingData:representationCopy offset:&v21];
    v14 = v13;
    v16 = v15;
    [CRCodingUtilities pointFromEncodingData:representationCopy offset:&v21];
    self = [(CRImageSpaceQuad *)self initWithTopLeft:v6 topRight:v8 bottomRight:v10 bottomLeft:v12, v14, v16, v17, v18];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)intersectsImageMargin:(double)margin imageSize:(CGSize)size
{
  v4 = size.width - margin;
  v5 = size.height - margin;
  topLeft = self->_topLeft;
  topRight = self->_topRight;
  bottomLeft = self->_bottomLeft;
  v9 = vdupq_lane_s64(*&margin, 0);
  v10.f64[0] = v4;
  v10.f64[1] = v5;
  v11 = vuzp1q_s32(vcgeq_f64(topLeft, v10), vcgeq_f64(topRight, v10));
  v12 = vcgeq_f64(bottomLeft, v10);
  *v12.i8 = vmovn_s64(v12);
  *v12.i8 = vmovn_s16(vuzp1q_s16(v11, v12));
  v12.i16[3] = vuzp1_s8(*&margin, vuzp1_s16(*&margin, vmovn_s64(vcgeq_f64(v9, *&topLeft)))).i16[3];
  v13 = 1;
  if ((vmaxv_u8(vcltz_s8(vshl_n_s8(*v12.i8, 7uLL))) & 1) == 0 && (vaddvq_s32(vandq_s8(vuzp1q_s32(vcgeq_f64(v9, topRight), vcgeq_f64(v9, bottomLeft)), xmmword_1B42AF430)) & 0xF) == 0)
  {
    x = self->_bottomRight.x;
    y = self->_bottomRight.y;
    v13 = x >= v4;
    v16 = y < v5;
    v17 = fmin(x, y);
    if (!v16)
    {
      v13 = 1;
    }

    if (v17 <= margin)
    {
      return 1;
    }
  }

  return v13;
}

- (BOOL)entirelyContainsQuad:(id)quad
{
  quadCopy = quad;
  [(CRImageSpaceQuad *)self area];
  v6 = v5;
  [quadCopy area];
  v8 = 0;
  if (v6 > v7)
  {
    [quadCopy topLeft];
    if ([(CRImageSpaceQuad *)self containsPoint:?])
    {
      [quadCopy topRight];
      if ([(CRImageSpaceQuad *)self containsPoint:?])
      {
        [quadCopy bottomRight];
        if ([(CRImageSpaceQuad *)self containsPoint:?])
        {
          [quadCopy bottomLeft];
          if ([(CRImageSpaceQuad *)self containsPoint:?])
          {
            v8 = 1;
          }
        }
      }
    }
  }

  return v8;
}

- (BOOL)intersectsQuad:(id)quad
{
  v23 = *MEMORY[0x1E69E9840];
  quadCopy = quad;
  topRight = self->_topRight;
  v22[0] = self->_topLeft;
  v22[1] = topRight;
  bottomLeft = self->_bottomLeft;
  v22[2] = self->_bottomRight;
  v22[3] = bottomLeft;
  [quadCopy topLeft];
  [quadCopy topRight];
  v21[2] = v9;
  v21[3] = v10;
  [quadCopy bottomRight];
  v21[4] = v11;
  v21[5] = v12;
  [quadCopy bottomLeft];
  v13 = 0;
  v21[6] = v14;
  v21[7] = v15;
  while (2)
  {
    v16 = 0;
    v17 = v13 + 1;
    do
    {
      v18 = v13 + 1;
      if (v13 != v16)
      {
        v18 = v16 + 1;
        if (doesLineSegmentIntersectLineSegment(*&v22[v13], *(&v22[v13] + 1), *&v22[(v13 + 1) & 3], *(&v22[(v13 + 1) & 3] + 1), *&v21[2 * v16], *&v21[2 * v16 + 1], *&v21[2 * ((v16 + 1) & 3)], *&v21[2 * ((v16 + 1) & 3) + 1]))
        {
          goto LABEL_8;
        }
      }

      v16 = v18;
    }

    while (v18 != 4);
    ++v13;
    if (v17 != 4)
    {
      continue;
    }

    break;
  }

  if ([(CRImageSpaceQuad *)self entirelyContainsQuad:quadCopy])
  {
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v19 = [quadCopy entirelyContainsQuad:self];
LABEL_9:

  return v19;
}

- (void)homographyFromSelfToQuad:(void *)quad
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(self + 24);
  v17[0] = *(self + 8);
  v17[1] = v3;
  v4 = *(self + 56);
  v17[2] = *(self + 40);
  v17[3] = v4;
  quadCopy = quad;
  [quadCopy topLeft];
  [quadCopy topRight];
  v16[2] = v8;
  v16[3] = v9;
  [quadCopy bottomRight];
  v16[4] = v10;
  v16[5] = v11;
  [quadCopy bottomLeft];
  v13 = v12;
  v15 = v14;

  v16[6] = v13;
  v16[7] = v15;
  find_homography(v17, v16);
}

- (CGPoint)topLeft
{
  x = self->_topLeft.x;
  y = self->_topLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)topRight
{
  x = self->_topRight.x;
  y = self->_topRight.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomRight
{
  x = self->_bottomRight.x;
  y = self->_bottomRight.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomLeft
{
  x = self->_bottomLeft.x;
  y = self->_bottomLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

@end