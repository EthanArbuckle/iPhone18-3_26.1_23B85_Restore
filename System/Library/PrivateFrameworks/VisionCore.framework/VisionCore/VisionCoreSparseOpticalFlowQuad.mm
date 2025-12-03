@interface VisionCoreSparseOpticalFlowQuad
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGRect)boundingBox;
- (VisionCoreSparseOpticalFlowQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft indentifier:(id)indentifier homographyGroupID:(int)d;
- (double)getEmptyDistanceBetweenCenters:(id)centers;
- (void)generateGridKeypointsWithMaxKeypoints:(void *)keypoints@<X8> minGridFrequency:(float)frequency@<S0>;
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

- (void)generateGridKeypointsWithMaxKeypoints:(void *)keypoints@<X8> minGridFrequency:(float)frequency@<S0>
{
  *keypoints = 0;
  keypoints[1] = 0;
  keypoints[2] = 0;
  v4 = self[7];
  v5 = self[8];
  v6 = self[9];
  v7 = self[10];
  v8 = self[5];
  v9 = self[6];
  v10 = self[3];
  v11 = self[4];
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

  v19 = sqrtf((v16 * frequency) / v17);
  if (v19 < a2)
  {
    v19 = a2;
  }

  v20 = sqrtf((v17 * frequency) / v16);
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

- (double)getEmptyDistanceBetweenCenters:(id)centers
{
  centersCopy = centers;
  x = self->_topLeft.x;
  v72 = self->_bottomLeft.x;
  y = self->_topLeft.y;
  v68 = self->_bottomLeft.y;
  v69 = self->_topRight.x;
  v70 = self->_bottomRight.x;
  v65 = self->_topRight.y;
  v66 = self->_bottomRight.y;
  [centersCopy bottomLeft];
  v64 = v5;
  [centersCopy topLeft];
  v63 = v6;
  [centersCopy bottomRight];
  v62 = v7;
  [centersCopy topRight];
  v61 = v8;
  [centersCopy bottomLeft];
  v60 = v9;
  [centersCopy topLeft];
  v59 = v10;
  [centersCopy bottomRight];
  v58 = v11;
  [centersCopy topRight];
  v57 = v12;
  v55 = self->_bottomLeft.x;
  v56 = self->_bottomRight.x;
  v49 = self->_bottomLeft.y;
  v50 = self->_bottomRight.y;
  v53 = self->_topLeft.x;
  v54 = self->_topRight.x;
  v51 = self->_topLeft.y;
  v52 = self->_topRight.y;
  [centersCopy bottomRight];
  v48 = v13;
  [centersCopy bottomLeft];
  v47 = v14;
  [centersCopy topRight];
  v46 = v15;
  [centersCopy topLeft];
  v45 = v16;
  [centersCopy bottomRight];
  v44 = v17;
  [centersCopy bottomLeft];
  v43 = v18;
  [centersCopy topRight];
  v42 = v19;
  [centersCopy topLeft];
  v21 = v20;
  [centersCopy topLeft];
  v23 = v22;
  [centersCopy bottomLeft];
  v25 = v24;
  [centersCopy topRight];
  v27 = v26;
  [centersCopy bottomRight];
  v29 = v28;
  [centersCopy topLeft];
  v31 = v30;
  [centersCopy bottomLeft];
  v33 = v32;
  [centersCopy topRight];
  v35 = v34;
  [centersCopy bottomRight];
  v37 = (v31 - v33 + v35 - v36) * 0.5;
  v38 = fmax(vabdd_f64((v64 + v63 + v62 + v61) * 0.25, (v72 + x + v70 + v69) * 0.25) - ((v56 - v55 + v54 - v53) * 0.5 + (v54 - v56 + v53 - v55) * 0.5 + (v48 - v47 + v46 - v45) * 0.5 + (v23 - v25 + v27 - v29) * 0.5) * 0.25, 0.0);
  v39 = fmax(vabdd_f64((v60 + v59 + v58 + v57) * 0.25, (v68 + y + v66 + v65) * 0.25) - ((v50 - v49 + v52 - v51) * 0.5 + (v52 - v50 + v51 - v49) * 0.5 + (v44 - v43 + v42 - v21) * 0.5 + v37) * 0.25, 0.0);
  v40 = v38 * v38 + v39 * v39;

  return v40;
}

- (VisionCoreSparseOpticalFlowQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft indentifier:(id)indentifier homographyGroupID:(int)d
{
  y = bottomLeft.y;
  x = bottomLeft.x;
  v12 = bottomRight.y;
  v13 = bottomRight.x;
  v14 = right.y;
  v15 = right.x;
  v16 = left.y;
  v17 = left.x;
  indentifierCopy = indentifier;
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
    objc_storeStrong(&v20->_UUID, indentifier);
    v21->_homographyGroupID = d;
    v21->_boundingBox.origin.x = VisionCoreBoundingBoxForQuadrilateralPoints(v17, v16, v15, v14, v13, v12, x);
    v21->_boundingBox.origin.y = v22;
    v21->_boundingBox.size.width = v23;
    v21->_boundingBox.size.height = v24;
  }

  return v21;
}

@end