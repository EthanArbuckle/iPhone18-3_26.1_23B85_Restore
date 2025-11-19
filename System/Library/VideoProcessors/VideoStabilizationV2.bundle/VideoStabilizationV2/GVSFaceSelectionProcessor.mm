@interface GVSFaceSelectionProcessor
- (CGRect)faceRectangle;
- (GVSFaceSelectionProcessor)init;
- (float)_computeFaceRectangleScore:(CGRect)a3 finalCropRect:(CGRect)a4 imageCenterNormalized:;
- (void)reset;
- (void)updateFaceSelectionWithFaceDetections:(GVSFaceSelectionProcessor *)self imageCenter:(SEL)a2 sourcePixelBufferDimensions:(id)a3 finalCropRect:(CGRect)a4 currentCaptureTime:(double)a5;
@end

@implementation GVSFaceSelectionProcessor

- (GVSFaceSelectionProcessor)init
{
  v6.receiver = self;
  v6.super_class = GVSFaceSelectionProcessor;
  v2 = [(GVSFaceSelectionProcessor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_minScoreForEntry = 0x3727C5AC3FC00000;
    v2->_waitTimeForExit = 1.0;
    [(GVSFaceSelectionProcessor *)v2 reset];
    v4 = v3;
  }

  return v3;
}

- (void)reset
{
  self->_faceIdentifier = -1;
  size = CGRectNull.size;
  self->_faceRectangle.origin = CGRectNull.origin;
  self->_faceRectangle.size = size;
  self->_faceLatestActiveTime = -1.0;
}

- (float)_computeFaceRectangleScore:(CGRect)a3 finalCropRect:(CGRect)a4 imageCenterNormalized:
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  IsNull = CGRectIsNull(a3);
  result = 0.0;
  if (!IsNull)
  {
    v24.origin.x = v11;
    v24.origin.y = v10;
    v24.size.width = v9;
    v24.size.height = v8;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v25 = CGRectIntersection(v24, v26);
    v14 = v25.size.width;
    v15 = v25.size.height;
    v16 = CGRectIsNull(v25);
    v17 = v14 * v15 * 100.0;
    v18 = v17 / (width * height);
    if (v16)
    {
      v18 = 0.0;
    }

    v19.f32[0] = v11 + v9 * 0.5;
    v20 = v10 + v8 * 0.5;
    v19.f32[1] = v20;
    v21 = vsub_f32(v19, v23);
    v21.f32[0] = sqrtf(vaddv_f32(vmul_f32(v21, v21)));
    v22 = fminf(fmaxf(v21.f32[0] + v21.f32[0], 0.0), 1.0);
    return (1.0 - ((v22 * v22) * ((v22 * -2.0) + 3.0))) * v18;
  }

  return result;
}

- (void)updateFaceSelectionWithFaceDetections:(GVSFaceSelectionProcessor *)self imageCenter:(SEL)a2 sourcePixelBufferDimensions:(id)a3 finalCropRect:(CGRect)a4 currentCaptureTime:(double)a5
{
  v7 = v6;
  v8 = v5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  size = CGRectNull.size;
  v44.origin = CGRectNull.origin;
  v44.size = size;
  v37 = self;
  faceIdentifier = self->_faceIdentifier;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = vdiv_f32(*&x, *&y);
    v22 = *v41;
    v23 = kFigCaptureStreamMetadata_Rect;
    v24 = kFigCaptureStreamMetadata_FaceID;
    v25 = 0.0;
    v36 = -1;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v27 = *(*(&v40 + 1) + 8 * i);
        memset(&rect, 0, sizeof(rect));
        v28 = [v27 objectForKeyedSubscript:v23];
        v29 = CGRectMakeWithDictionaryRepresentation(v28, &rect);

        if (v29)
        {
          v30 = [v27 objectForKeyedSubscript:v24];
          v31 = [v30 intValue];

          [(GVSFaceSelectionProcessor *)v37 _computeFaceRectangleScore:rect.origin.x finalCropRect:rect.origin.y imageCenterNormalized:rect.size.width, rect.size.height, width, height, a5, v8, *&v21];
          if (faceIdentifier == v31)
          {
            if (v32 >= v37->_minScoreForTracking)
            {
              v37->_faceLatestActiveTime = v7;
              faceLatestActiveTime = v7;
            }

            else
            {
              faceLatestActiveTime = v37->_faceLatestActiveTime;
            }

            if (v7 - faceLatestActiveTime >= v37->_waitTimeForExit)
            {
              [(GVSFaceSelectionProcessor *)v37 reset];
            }

            else
            {
              v35 = rect.size;
              v37->_faceRectangle.origin = rect.origin;
              v37->_faceRectangle.size = v35;
            }

            goto LABEL_24;
          }

          if (v32 > v25)
          {
            v44 = rect;
            v36 = v31;
            v25 = v32;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v40 objects:v39 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v25 = 0.0;
    v36 = -1;
  }

  if (v25 <= v37->_minScoreForEntry)
  {
    [(GVSFaceSelectionProcessor *)v37 reset];
  }

  else
  {
    v37->_faceIdentifier = v36;
    v34 = v44.size;
    v37->_faceRectangle.origin = v44.origin;
    v37->_faceRectangle.size = v34;
    v37->_faceLatestActiveTime = v7;
  }

LABEL_24:
}

- (CGRect)faceRectangle
{
  x = self->_faceRectangle.origin.x;
  y = self->_faceRectangle.origin.y;
  width = self->_faceRectangle.size.width;
  height = self->_faceRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end