@interface BoundInferenceResults
- (BoundInferenceResults)initWithResult:(id)result andMetal:(id)metal;
- (void)dealloc;
@end

@implementation BoundInferenceResults

- (BoundInferenceResults)initWithResult:(id)result andMetal:(id)metal
{
  resultCopy = result;
  metalCopy = metal;
  v77.receiver = self;
  v77.super_class = BoundInferenceResults;
  v11 = [(BoundInferenceResults *)&v77 init];
  if (v11)
  {
    if (resultCopy)
    {
      if (metalCopy)
      {
        v12 = objc_msgSend_status(resultCopy, v8, v9, v10);
        if (v12)
        {
          sub_29587FA44(v12, resultCopy);
        }

        else
        {
          v11->_skinMaskPixelBuffer = 0;
          if (objc_msgSend_skinMask(resultCopy, v13, v14, v15))
          {
            v19 = objc_msgSend_skinMask(resultCopy, v16, v17, v18);
            v21 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalCopy, v20, v19, 10, 1, 0);
            skinMask = v11->_skinMask;
            v11->_skinMask = v21;

            if (!v11->_skinMask)
            {
              sub_29587FABC();
              goto LABEL_35;
            }

            v26 = objc_msgSend_skinMask(resultCopy, v23, v24, v25);
            if (v26)
            {
              v26 = CFRetain(v26);
            }

            v11->_skinMaskPixelBuffer = v26;
          }

          v11->_skyMaskPixelBuffer = 0;
          if (objc_msgSend_skyMask(resultCopy, v16, v17, v18))
          {
            v30 = objc_msgSend_skyMask(resultCopy, v27, v28, v29);
            v32 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalCopy, v31, v30, 10, 1, 0);
            skyMask = v11->_skyMask;
            v11->_skyMask = v32;

            if (!v11->_skyMask)
            {
              sub_29587FB48();
              goto LABEL_35;
            }

            v37 = objc_msgSend_skyMask(resultCopy, v34, v35, v36);
            if (v37)
            {
              v37 = CFRetain(v37);
            }

            v11->_skyMaskPixelBuffer = v37;
          }

          if (!objc_msgSend_personMask(resultCopy, v27, v28, v29) || (v41 = objc_msgSend_personMask(resultCopy, v38, v39, v40), objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalCopy, v42, v41, 25, 1, 0), v43 = objc_claimAutoreleasedReturnValue(), personMask = v11->_personMask, v11->_personMask = v43, personMask, v11->_personMask))
          {
            v45 = objc_msgSend_faceLandmarks(resultCopy, v38, v39, v40);

            if (v45)
            {
              v49 = objc_msgSend_faceLandmarks(resultCopy, v46, v47, v48);
              faceLandmarks = v11->_faceLandmarks;
              v11->_faceLandmarks = v49;
            }

            v51 = objc_msgSend_lowResPersonInstanceMasks(resultCopy, v46, v47, v48);

            if (v51)
            {
              v55 = objc_msgSend_lowResPersonInstanceMasks(resultCopy, v52, v53, v54);
              instanceMasks = v11->_instanceMasks;
              v11->_instanceMasks = v55;
            }

            v57 = objc_msgSend_skinToneClassificationsForFaces(resultCopy, v52, v53, v54);

            if (v57)
            {
              v61 = objc_msgSend_skinToneClassificationsForFaces(resultCopy, v58, v59, v60);
              skinToneClassification = v11->_skinToneClassification;
              v11->_skinToneClassification = v61;
            }

            v63 = objc_msgSend_lowResPersonInstanceConfidences(resultCopy, v58, v59, v60);

            if (v63)
            {
              v67 = objc_msgSend_lowResPersonInstanceConfidences(resultCopy, v64, v65, v66);
              maskConfidences = v11->_maskConfidences;
              v11->_maskConfidences = v67;
            }

            v69 = objc_msgSend_smartCameraSceneType(resultCopy, v64, v65, v66);

            if (v69)
            {
              v73 = objc_msgSend_smartCameraSceneType(resultCopy, v70, v71, v72);
              sceneType = v11->_sceneType;
              v11->_sceneType = v73;
            }

            goto LABEL_27;
          }

          sub_29587FBD4();
        }
      }

      else
      {
        sub_29587FC60();
      }
    }

    else
    {
      sub_29587FCEC();
    }

LABEL_35:
    v75 = 0;
    goto LABEL_28;
  }

LABEL_27:
  v75 = v11;
LABEL_28:

  return v75;
}

- (void)dealloc
{
  skyMaskPixelBuffer = self->_skyMaskPixelBuffer;
  if (skyMaskPixelBuffer)
  {
    CFRelease(skyMaskPixelBuffer);
    self->_skyMaskPixelBuffer = 0;
  }

  skinMaskPixelBuffer = self->_skinMaskPixelBuffer;
  if (skinMaskPixelBuffer)
  {
    CFRelease(skinMaskPixelBuffer);
    self->_skinMaskPixelBuffer = 0;
  }

  v5.receiver = self;
  v5.super_class = BoundInferenceResults;
  [(BoundInferenceResults *)&v5 dealloc];
}

@end