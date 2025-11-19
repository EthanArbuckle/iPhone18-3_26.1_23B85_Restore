@interface VisionCoreSparseOpticalFlowQuad
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGRect)boundingBox;
- (VisionCoreSparseOpticalFlowQuad)initWithTopLeft:(CGPoint)a3 topRight:(CGPoint)a4 bottomRight:(CGPoint)a5 bottomLeft:(CGPoint)a6 indentifier:(id)a7 homographyGroupID:(int)a8;
- (double)getEmptyDistanceBetweenCenters:(id)a3;
- (void)generateGridKeypointsWithMaxKeypoints:(void *)a3@<X8> minGridFrequency:(float)a4@<S0>;
@end

@implementation VisionCoreSparseOpticalFlowQuad

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
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

- (CGPoint)bottomRight
{
  x = self->_bottomRight.x;
  y = self->_bottomRight.y;
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

- (CGPoint)topLeft
{
  x = self->_topLeft.x;
  y = self->_topLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)generateGridKeypointsWithMaxKeypoints:(void *)a3@<X8> minGridFrequency:(float)a4@<S0>
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[10];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[3];
  v11 = a1[4];
  v12 = (v4 - v6 + v8 - v10) * 0.5;
  v13 = (v5 - v7 + v9 - v11) * 0.5;
  v14 = (v8 - v4 + v10 - v6) * 0.5;
  v15 = (v9 - v5 + v11 - v7) * 0.5;
  v16 = sqrtf((v13 * v13) + (v12 * v12));
  v17 = 1.0;
  if (v16 < 1.0)
  {
    v16 = 1.0;
  }

  v18 = sqrtf((v15 * v15) + (v14 * v14));
  if (v18 >= 1.0)
  {
    v17 = v18;
  }

  v19 = sqrtf((v16 * a4) / v17);
  if (v19 < a2)
  {
    v19 = a2;
  }

  v20 = sqrtf((v17 * a4) / v16);
  if (v20 < a2)
  {
    v20 = a2;
  }

  if (v20 > 0.0)
  {
    v21 = 0;
    do
    {
      if (v19 > 0.0)
      {
        rand();
        rand();
        std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(1);
      }

      ++v21;
    }

    while (v20 > v21);
  }
}

- (double)getEmptyDistanceBetweenCenters:(id)a3
{
  v4 = a3;
  x = self->_topLeft.x;
  v72 = self->_bottomLeft.x;
  y = self->_topLeft.y;
  v68 = self->_bottomLeft.y;
  v69 = self->_topRight.x;
  v70 = self->_bottomRight.x;
  v65 = self->_topRight.y;
  v66 = self->_bottomRight.y;
  [v4 bottomLeft];
  v64 = v5;
  [v4 topLeft];
  v63 = v6;
  [v4 bottomRight];
  v62 = v7;
  [v4 topRight];
  v61 = v8;
  [v4 bottomLeft];
  v60 = v9;
  [v4 topLeft];
  v59 = v10;
  [v4 bottomRight];
  v58 = v11;
  [v4 topRight];
  v57 = v12;
  v55 = self->_bottomLeft.x;
  v56 = self->_bottomRight.x;
  v49 = self->_bottomLeft.y;
  v50 = self->_bottomRight.y;
  v53 = self->_topLeft.x;
  v54 = self->_topRight.x;
  v51 = self->_topLeft.y;
  v52 = self->_topRight.y;
  [v4 bottomRight];
  v48 = v13;
  [v4 bottomLeft];
  v47 = v14;
  [v4 topRight];
  v46 = v15;
  [v4 topLeft];
  v45 = v16;
  [v4 bottomRight];
  v44 = v17;
  [v4 bottomLeft];
  v43 = v18;
  [v4 topRight];
  v42 = v19;
  [v4 topLeft];
  v21 = v20;
  [v4 topLeft];
  v23 = v22;
  [v4 bottomLeft];
  v25 = v24;
  [v4 topRight];
  v27 = v26;
  [v4 bottomRight];
  v29 = v28;
  [v4 topLeft];
  v31 = v30;
  [v4 bottomLeft];
  v33 = v32;
  [v4 topRight];
  v35 = v34;
  [v4 bottomRight];
  v37 = (v31 - v33 + v35 - v36) * 0.5;
  v38 = fmax(vabdd_f64((v64 + v63 + v62 + v61) * 0.25, (v72 + x + v70 + v69) * 0.25) - ((v56 - v55 + v54 - v53) * 0.5 + (v54 - v56 + v53 - v55) * 0.5 + (v48 - v47 + v46 - v45) * 0.5 + (v23 - v25 + v27 - v29) * 0.5) * 0.25, 0.0);
  v39 = fmax(vabdd_f64((v60 + v59 + v58 + v57) * 0.25, (v68 + y + v66 + v65) * 0.25) - ((v50 - v49 + v52 - v51) * 0.5 + (v52 - v50 + v51 - v49) * 0.5 + (v44 - v43 + v42 - v21) * 0.5 + v37) * 0.25, 0.0);
  v40 = v38 * v38 + v39 * v39;

  return v40;
}

- (VisionCoreSparseOpticalFlowQuad)initWithTopLeft:(CGPoint)a3 topRight:(CGPoint)a4 bottomRight:(CGPoint)a5 bottomLeft:(CGPoint)a6 indentifier:(id)a7 homographyGroupID:(int)a8
{
  y = a6.y;
  x = a6.x;
  v12 = a5.y;
  v13 = a5.x;
  v14 = a4.y;
  v15 = a4.x;
  v16 = a3.y;
  v17 = a3.x;
  v19 = a7;
  v26.receiver = self;
  v26.super_class = VisionCoreSparseOpticalFlowQuad;
  v20 = [(VisionCoreSparseOpticalFlowQuad *)&v26 init];
  v21 = v20;
  if (v20)
  {
    v20->_topLeft.x = v17;
    v20->_topLeft.y = v16;
    v20->_topRight.x = v15;
    v20->_topRight.y = v14;
    v20->_bottomRight.x = v13;
    v20->_bottomRight.y = v12;
    v20->_bottomLeft.x = x;
    v20->_bottomLeft.y = y;
    objc_storeStrong(&v20->_UUID, a7);
    v21->_homographyGroupID = a8;
    v21->_boundingBox.origin.x = VisionCoreBoundingBoxForQuadrilateralPoints(v17, v16, v15, v14, v13, v12, x);
    v21->_boundingBox.origin.y = v22;
    v21->_boundingBox.size.width = v23;
    v21->_boundingBox.size.height = v24;
  }

  return v21;
}

@end