@interface VKRecognizedItem
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldAssociateWithItem:(id)item;
- (CGAffineTransform)_applyWarpTransform:(CGAffineTransform *)result toVisionPoint:;
- (VKQuad)layerQuad;
- (VKRecognizedItem)initWithFrameInfo:(id)info rectangleObservation:(id)observation layoutDirection:(unint64_t)direction;
- (unint64_t)hash;
- (void)applyHomographyWarpTransform:(uint64_t)transform;
- (void)associateWithItem:(id)item;
@end

@implementation VKRecognizedItem

- (VKRecognizedItem)initWithFrameInfo:(id)info rectangleObservation:(id)observation layoutDirection:(unint64_t)direction
{
  v41[8] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  observationCopy = observation;
  v40.receiver = self;
  v40.super_class = VKRecognizedItem;
  v11 = [(VKRecognizedItem *)&v40 init];
  if (v11)
  {
    uuid = [observationCopy uuid];
    uuid = v11->_uuid;
    v11->_uuid = uuid;

    objc_storeStrong(&v11->_frameInfo, info);
    [observationCopy topLeft];
    v15 = v14;
    v17 = v16;
    *v41 = v14;
    *&v41[1] = v16;
    [observationCopy topRight];
    v19 = v18;
    v21 = v20;
    *&v41[2] = v18;
    *&v41[3] = v20;
    [observationCopy bottomRight];
    v23 = v22;
    v25 = v24;
    [observationCopy bottomLeft];
    v27 = v26;
    v29 = v28;
    v30 = [VKQuad alloc];
    if (direction == 5)
    {
      v31 = v23;
    }

    else
    {
      v31 = v19;
    }

    if (direction == 5)
    {
      v32 = v25;
    }

    else
    {
      v32 = v21;
    }

    if (direction == 5)
    {
      v33 = v27;
    }

    else
    {
      v33 = v23;
    }

    if (direction == 5)
    {
      v34 = v29;
    }

    else
    {
      v34 = v25;
    }

    if (direction == 5)
    {
      v35 = v15;
    }

    else
    {
      v35 = v27;
    }

    if (direction == 5)
    {
      v36 = v17;
    }

    else
    {
      v36 = v29;
    }

    v37 = [(VKQuad *)v30 initWithTopLeft:*&v41[2 * (direction == 5)] topRight:*&v41[2 * (direction == 5) + 1] bottomRight:v31 bottomLeft:v32, v33, v34, v35, v36];
    visionQuad = v11->_visionQuad;
    v11->_visionQuad = v37;

    [(VKRecognizedItem *)v11 setObservation:observationCopy];
  }

  return v11;
}

- (VKQuad)layerQuad
{
  layerQuad = self->_layerQuad;
  if (!layerQuad)
  {
    frameInfo = [(VKRecognizedItem *)self frameInfo];
    [(VKQuad *)self->_visionQuad topLeft];
    v33 = v6;
    v7 = 0uLL;
    v38 = 0u;
    v8 = 0uLL;
    v9 = 0uLL;
    if (frameInfo)
    {
      v40 = v5;
      [frameInfo visionToLayerTransform];
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
    if (frameInfo)
    {
      v27 = v11;
      v28 = v10;
      [frameInfo visionToLayerTransform];
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
    if (frameInfo)
    {
      v29 = v15;
      v31 = v14;
      [frameInfo visionToLayerTransform];
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
    if (frameInfo)
    {
      v32 = v20;
      v35 = v19;
      [frameInfo visionToLayerTransform];
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

- (BOOL)shouldAssociateWithItem:(id)item
{
  itemCopy = item;
  visionQuad = [(VKRecognizedItem *)self visionQuad];
  visionQuad2 = [itemCopy visionQuad];

  [visionQuad topLeft];
  v8 = v7;
  v10 = v9;
  [visionQuad2 topLeft];
  if (VKMNearlyEqualPointsWithThreshold(v8, v10, v11, v12, 0.1) && ([visionQuad topRight], v14 = v13, v16 = v15, objc_msgSend(visionQuad2, "topRight"), VKMNearlyEqualPointsWithThreshold(v14, v16, v17, v18, 0.1)) && (objc_msgSend(visionQuad, "bottomRight"), v20 = v19, v22 = v21, objc_msgSend(visionQuad2, "bottomRight"), VKMNearlyEqualPointsWithThreshold(v20, v22, v23, v24, 0.1)))
  {
    [visionQuad bottomLeft];
    v26 = v25;
    v28 = v27;
    [visionQuad2 bottomLeft];
    v31 = VKMNearlyEqualPointsWithThreshold(v26, v28, v29, v30, 0.1);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)associateWithItem:(id)item
{
  itemCopy = item;
  observation = [itemCopy observation];
  observation = self->_observation;
  self->_observation = observation;

  v7 = objc_opt_class();
  v11 = VKCheckedDynamicCast(v7, itemCopy);

  visionQuad = [v11 visionQuad];
  visionQuad = self->_visionQuad;
  self->_visionQuad = visionQuad;

  layerQuad = self->_layerQuad;
  self->_layerQuad = 0;
}

- (void)applyHomographyWarpTransform:(uint64_t)transform
{
  __invert_f3(a2);
  [*(transform + 16) topLeft];
  [VKRecognizedItem _applyWarpTransform:transform toVisionPoint:?];
  v4 = v3;
  v6 = v5;
  [*(transform + 16) topRight];
  [VKRecognizedItem _applyWarpTransform:transform toVisionPoint:?];
  v8 = v7;
  v10 = v9;
  [*(transform + 16) bottomRight];
  [VKRecognizedItem _applyWarpTransform:transform toVisionPoint:?];
  v12 = v11;
  v14 = v13;
  [*(transform + 16) bottomLeft];
  [VKRecognizedItem _applyWarpTransform:transform toVisionPoint:?];
  v17 = [[VKQuad alloc] initWithTopLeft:v4 topRight:v6 bottomLeft:v8 bottomRight:v10, v15, v16, v12, v14];
  v18 = *(transform + 16);
  *(transform + 16) = v17;

  v19 = *(transform + 24);
  *(transform + 24) = 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(VKRecognizedItem *)self uuid];
      uuid2 = [(VKRecognizedItem *)equalCopy uuid];
      v7 = [uuid isEqual:uuid2];
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
  uuid = [(VKRecognizedItem *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (CGAffineTransform)_applyWarpTransform:(CGAffineTransform *)result toVisionPoint:
{
  if (result)
  {
    memset(&v5, 0, sizeof(v5));
    frameInfo = [(CGAffineTransform *)result frameInfo];
    v2 = frameInfo;
    if (frameInfo)
    {
      [frameInfo visionToCroppedImageTransform];
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