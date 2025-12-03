@interface BlinkDetectionStage
+ (int)prewarmShaders:(id)shaders;
- (id)init:(id)init;
- (int)runOnLumaBand1:(id)band1 lumaBand2:(id)band2 lumaBand3:(id)band3 withFaces:(FaceDetectionBuffer)faces[10] facesCount:(int)count plist:(id)plist resultScore:(float *)score frameIdx:(int)self0;
@end

@implementation BlinkDetectionStage

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v7 = objc_msgSend_sharedInstance(BlinkDetectionStageShared, v4, v5, v6);
  v10 = objc_msgSend_getShaders_(v7, v8, shadersCopy, v9);

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -12786;
  }

  return v11;
}

- (id)init:(id)init
{
  initCopy = init;
  v25.receiver = self;
  v25.super_class = BlinkDetectionStage;
  v6 = [(BlinkDetectionStage *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metal, init);
    v11 = objc_msgSend_sharedInstance(BlinkDetectionStageShared, v8, v9, v10);
    v14 = objc_msgSend_getShaders_(v11, v12, v7->_metal, v13);

    if (v14)
    {
      v18 = objc_msgSend_device(v7->_metal, v15, v16, v17);
      v20 = objc_msgSend_newBufferWithLength_options_(v18, v19, 4, 0);
      blinkDetectionResultBuffer = v7->_blinkDetectionResultBuffer;
      v7->_blinkDetectionResultBuffer = v20;

      if (v7->_blinkDetectionResultBuffer)
      {
        v22 = v7;
      }

      else
      {
        sub_2958942EC(v7, &v26);
        v22 = v26;
      }
    }

    else
    {
      sub_29589439C();
      v22 = 0;
    }
  }

  else
  {
    sub_295894400();
    v22 = 0;
    v14 = 0;
  }

  v23 = v22;

  return v23;
}

- (int)runOnLumaBand1:(id)band1 lumaBand2:(id)band2 lumaBand3:(id)band3 withFaces:(FaceDetectionBuffer)faces[10] facesCount:(int)count plist:(id)plist resultScore:(float *)score frameIdx:(int)self0
{
  band1Copy = band1;
  band2Copy = band2;
  band3Copy = band3;
  plistCopy = plist;
  if (!score)
  {
    sub_295894770(&v91);
LABEL_30:
    v34 = 0;
    v62 = 0;
    v63 = 0;
    v84 = v91;
    goto LABEL_24;
  }

  if (!band1Copy)
  {
    sub_2958946D4(&v91);
    goto LABEL_30;
  }

  if (!band2Copy)
  {
    sub_295894638(&v91);
    goto LABEL_30;
  }

  if (!band3Copy)
  {
    sub_29589459C(&v91);
    goto LABEL_30;
  }

  *score = 0.0;
  if (count < 1)
  {
    v84 = 0;
    v34 = 0;
    v62 = 0;
    v63 = 0;
    goto LABEL_24;
  }

  v23 = objc_msgSend_sharedInstance(BlinkDetectionStageShared, v19, v20, v21);
  v26 = objc_msgSend_getShaders_(v23, v24, self->_metal, v25);

  if (!v26)
  {
    sub_295894500(&v91);
    goto LABEL_30;
  }

  v88 = band2Copy;
  v30 = objc_msgSend_commandQueue(self->_metal, v27, v28, v29);
  v34 = objc_msgSend_commandBuffer(v30, v31, v32, v33);

  if (!v34)
  {
    sub_295894464(&v91);
    v62 = 0;
    v84 = v91;
    band2Copy = v88;
    v63 = v26;
    goto LABEL_24;
  }

  selfCopy = self;
  v87 = band3Copy;
  v38 = 0;
  v95[0] = 0;
  memset(v94, 0, sizeof(v94));
  v93 = 0;
  p_yaw = &faces->yaw;
  do
  {
    if (*(p_yaw - 2) > plistCopy[5] && !*p_yaw)
    {
      v40 = *(plistCopy + 8);
      if (v40)
      {
        v48 = *(plistCopy + 7);
        v49 = *(plistCopy + 8);
        v50 = *(plistCopy + 9);
        v51 = *(plistCopy + 10);
        v52 = *(plistCopy + 16);
        v53 = objc_msgSend_height(band1Copy, v35, v36, v37);
        sub_29581FA58(faces, v38, &v93, v94, v53, v95, v48, v49, v50, v51, v52, v54);
        v40 = *(plistCopy + 8);
        if ((v40 & 2) == 0)
        {
LABEL_13:
          if ((v40 & 4) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          v41 = *(plistCopy + 11);
          v42 = *(plistCopy + 12);
          v43 = *(plistCopy + 13);
          v44 = *(plistCopy + 14);
          v45 = *(plistCopy + 17);
          v46 = objc_msgSend_height(band1Copy, v35, v36, v37);
          sub_29581FA58(faces, v38, &v93, v94, v46, v95, v41, v42, v43, v44, v45, v47);
          goto LABEL_15;
        }
      }

      else if ((plistCopy[4] & 2) == 0)
      {
        goto LABEL_13;
      }

      v55 = *(plistCopy + 3);
      v56 = *(plistCopy + 4);
      v57 = *(plistCopy + 5);
      v58 = *(plistCopy + 6);
      v59 = *(plistCopy + 15);
      v60 = objc_msgSend_height(band1Copy, v35, v36, v37);
      sub_29581FA58(faces, v38, &v93, v94, v60, v95, v55, v56, v57, v58, v59, v61);
      if ((plistCopy[4] & 4) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    ++v38;
    p_yaw += 20;
  }

  while (count != v38);
  if (v93 < 1)
  {
    v84 = 0;
    v62 = 0;
    band3Copy = v87;
    band2Copy = v88;
    v63 = v26;
  }

  else
  {
    LOWORD(v94[0]) = v93;
    v62 = objc_msgSend_computeCommandEncoder(v34, v35, v36, v37);
    v63 = v26;
    objc_msgSend_setComputePipelineState_(v62, v64, *(v26 + 8), v65);
    objc_msgSend_setTexture_atIndex_(v62, v66, band1Copy, 0);
    band2Copy = v88;
    objc_msgSend_setTexture_atIndex_(v62, v67, v88, 1);
    band3Copy = v87;
    objc_msgSend_setTexture_atIndex_(v62, v68, v87, 2);
    objc_msgSend_setBytes_length_atIndex_(v62, v69, v94, 416, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v62, v70, self->_blinkDetectionResultBuffer, 0, 1);
    v91 = v95[0];
    v92 = vdupq_n_s64(1uLL);
    v89 = v95[0];
    v90 = v92;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v62, v71, &v91, &v89);
    objc_msgSend_endEncoding(v62, v72, v73, v74);
    objc_msgSend_commit(v34, v75, v76, v77);
    objc_msgSend_waitUntilCompleted(v34, v78, v79, v80);
    v84 = 0;
    *score = *objc_msgSend_contents(selfCopy->_blinkDetectionResultBuffer, v81, v82, v83);
  }

LABEL_24:

  return v84;
}

@end