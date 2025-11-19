@interface VKRecognizedItem
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldAssociateWithItem:(id)a3;
- (CGAffineTransform)_applyWarpTransform:(CGAffineTransform *)result toVisionPoint:;
- (VKQuad)layerQuad;
- (VKRecognizedItem)initWithFrameInfo:(id)a3 rectangleObservation:(id)a4 layoutDirection:(unint64_t)a5;
- (unint64_t)hash;
- (void)applyHomographyWarpTransform:(uint64_t)a1;
- (void)associateWithItem:(id)a3;
@end

@implementation VKRecognizedItem

- (VKRecognizedItem)initWithFrameInfo:(id)a3 rectangleObservation:(id)a4 layoutDirection:(unint64_t)a5
{
  v41[8] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v40.receiver = self;
  v40.super_class = VKRecognizedItem;
  v11 = [(VKRecognizedItem *)&v40 init];
  if (v11)
  {
    v12 = [v10 uuid];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    objc_storeStrong(&v11->_frameInfo, a3);
    [v10 topLeft];
    v15 = v14;
    v17 = v16;
    *v41 = v14;
    *&v41[1] = v16;
    [v10 topRight];
    v19 = v18;
    v21 = v20;
    *&v41[2] = v18;
    *&v41[3] = v20;
    [v10 bottomRight];
    v23 = v22;
    v25 = v24;
    [v10 bottomLeft];
    v27 = v26;
    v29 = v28;
    v30 = [VKQuad alloc];
    if (a5 == 5)
    {
      v31 = v23;
    }

    else
    {
      v31 = v19;
    }

    if (a5 == 5)
    {
      v32 = v25;
    }

    else
    {
      v32 = v21;
    }

    if (a5 == 5)
    {
      v33 = v27;
    }

    else
    {
      v33 = v23;
    }

    if (a5 == 5)
    {
      v34 = v29;
    }

    else
    {
      v34 = v25;
    }

    if (a5 == 5)
    {
      v35 = v15;
    }

    else
    {
      v35 = v27;
    }

    if (a5 == 5)
    {
      v36 = v17;
    }

    else
    {
      v36 = v29;
    }

    v37 = [(VKQuad *)v30 initWithTopLeft:*&v41[2 * (a5 == 5)] topRight:*&v41[2 * (a5 == 5) + 1] bottomRight:v31 bottomLeft:v32, v33, v34, v35, v36];
    visionQuad = v11->_visionQuad;
    v11->_visionQuad = v37;

    [(VKRecognizedItem *)v11 setObservation:v10];
  }

  return v11;
}

- (VKQuad)layerQuad
{
  layerQuad = self->_layerQuad;
  if (!layerQuad)
  {
    v4 = [(VKRecognizedItem *)self frameInfo];
    [(VKQuad *)self->_visionQuad topLeft];
    v33 = v6;
    v7 = 0uLL;
    v38 = 0u;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v4)
    {
      v40 = v5;
      [v4 visionToLayerTransform];
      v5 = v40;
      v9 = v44;
      v7 = v45;
      v8 = v46;
    }

    v30 = v9;
    v36 = v8;
    v41 = vmulq_n_f64(v7, v5);
    [(VKQuad *)self->_visionQuad topRight];
    v12 = 0uLL;
    v13 = 0uLL;
    if (v4)
    {
      v27 = v11;
      v28 = v10;
      [v4 visionToLayerTransform];
      v11 = v27;
      v10 = v28;
      v12 = v44;
      v13 = v45;
      v38 = v46;
    }

    v42 = vmlaq_n_f64(v41, v30, v33);
    v34 = vmlaq_n_f64(vmulq_n_f64(v13, v11), v12, v10);
    [(VKQuad *)self->_visionQuad bottomRight];
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    if (v4)
    {
      v29 = v15;
      v31 = v14;
      [v4 visionToLayerTransform];
      v15 = v29;
      v14 = v31;
      v17 = v44;
      v18 = v45;
      v16 = v46;
    }

    v37 = vaddq_f64(v36, v42);
    v43 = vaddq_f64(v38, v34);
    v39 = vaddq_f64(v16, vmlaq_n_f64(vmulq_n_f64(v18, v15), v17, v14));
    [(VKQuad *)self->_visionQuad bottomLeft];
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    if (v4)
    {
      v32 = v20;
      v35 = v19;
      [v4 visionToLayerTransform];
      v20 = v32;
      v19 = v35;
      v21 = v44;
      v22 = v45;
      v23 = v46;
    }

    v24 = [[VKQuad alloc] initWithTopLeft:*&v37 topRight:*&v43 bottomLeft:vaddq_f64(v23 bottomRight:vmlaq_n_f64(vmulq_n_f64(v22, v20), v21, v19)), *&v39];
    v25 = self->_layerQuad;
    self->_layerQuad = v24;

    layerQuad = self->_layerQuad;
  }

  return layerQuad;
}

- (BOOL)shouldAssociateWithItem:(id)a3
{
  v4 = a3;
  v5 = [(VKRecognizedItem *)self visionQuad];
  v6 = [v4 visionQuad];

  [v5 topLeft];
  v8 = v7;
  v10 = v9;
  [v6 topLeft];
  if (VKMNearlyEqualPointsWithThreshold(v8, v10, v11, v12, 0.1) && ([v5 topRight], v14 = v13, v16 = v15, objc_msgSend(v6, "topRight"), VKMNearlyEqualPointsWithThreshold(v14, v16, v17, v18, 0.1)) && (objc_msgSend(v5, "bottomRight"), v20 = v19, v22 = v21, objc_msgSend(v6, "bottomRight"), VKMNearlyEqualPointsWithThreshold(v20, v22, v23, v24, 0.1)))
  {
    [v5 bottomLeft];
    v26 = v25;
    v28 = v27;
    [v6 bottomLeft];
    v31 = VKMNearlyEqualPointsWithThreshold(v26, v28, v29, v30, 0.1);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)associateWithItem:(id)a3
{
  v4 = a3;
  v5 = [v4 observation];
  observation = self->_observation;
  self->_observation = v5;

  v7 = objc_opt_class();
  v11 = VKCheckedDynamicCast(v7, v4);

  v8 = [v11 visionQuad];
  visionQuad = self->_visionQuad;
  self->_visionQuad = v8;

  layerQuad = self->_layerQuad;
  self->_layerQuad = 0;
}

- (void)applyHomographyWarpTransform:(uint64_t)a1
{
  __invert_f3(a2);
  [*(a1 + 16) topLeft];
  [VKRecognizedItem _applyWarpTransform:a1 toVisionPoint:?];
  v4 = v3;
  v6 = v5;
  [*(a1 + 16) topRight];
  [VKRecognizedItem _applyWarpTransform:a1 toVisionPoint:?];
  v8 = v7;
  v10 = v9;
  [*(a1 + 16) bottomRight];
  [VKRecognizedItem _applyWarpTransform:a1 toVisionPoint:?];
  v12 = v11;
  v14 = v13;
  [*(a1 + 16) bottomLeft];
  [VKRecognizedItem _applyWarpTransform:a1 toVisionPoint:?];
  v17 = [[VKQuad alloc] initWithTopLeft:v4 topRight:v6 bottomLeft:v8 bottomRight:v10, v15, v16, v12, v14];
  v18 = *(a1 + 16);
  *(a1 + 16) = v17;

  v19 = *(a1 + 24);
  *(a1 + 24) = 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VKRecognizedItem *)self uuid];
      v6 = [(VKRecognizedItem *)v4 uuid];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(VKRecognizedItem *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (CGAffineTransform)_applyWarpTransform:(CGAffineTransform *)result toVisionPoint:
{
  if (result)
  {
    memset(&v5, 0, sizeof(v5));
    v1 = [(CGAffineTransform *)result frameInfo];
    v2 = v1;
    if (v1)
    {
      [v1 visionToCroppedImageTransform];
    }

    else
    {
      memset(&v5, 0, sizeof(v5));
    }

    v3 = v5;
    memset(&v4, 0, sizeof(v4));
    return CGAffineTransformInvert(&v4, &v3);
  }

  return result;
}

@end