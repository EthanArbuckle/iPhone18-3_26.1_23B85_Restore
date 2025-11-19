@interface BlinkDetectionStage
+ (int)prewarmShaders:(id)a3;
- (id)init:(id)a3;
- (int)runOnLumaBand1:(id)a3 lumaBand2:(id)a4 lumaBand3:(id)a5 withFaces:(FaceDetectionBuffer)a6[10] facesCount:(int)a7 plist:(id)a8 resultScore:(float *)a9 frameIdx:(int)a10;
@end

@implementation BlinkDetectionStage

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_sharedInstance(BlinkDetectionStageShared, v4, v5, v6);
  v10 = objc_msgSend_getShaders_(v7, v8, v3, v9);

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

- (id)init:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = BlinkDetectionStage;
  v6 = [(BlinkDetectionStage *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metal, a3);
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

- (int)runOnLumaBand1:(id)a3 lumaBand2:(id)a4 lumaBand3:(id)a5 withFaces:(FaceDetectionBuffer)a6[10] facesCount:(int)a7 plist:(id)a8 resultScore:(float *)a9 frameIdx:(int)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v22 = a8;
  if (!a9)
  {
    sub_295894770(&v91);
LABEL_30:
    v34 = 0;
    v62 = 0;
    v63 = 0;
    v84 = v91;
    goto LABEL_24;
  }

  if (!v16)
  {
    sub_2958946D4(&v91);
    goto LABEL_30;
  }

  if (!v17)
  {
    sub_295894638(&v91);
    goto LABEL_30;
  }

  if (!v18)
  {
    sub_29589459C(&v91);
    goto LABEL_30;
  }

  *a9 = 0.0;
  if (a7 < 1)
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

  v88 = v17;
  v30 = objc_msgSend_commandQueue(self->_metal, v27, v28, v29);
  v34 = objc_msgSend_commandBuffer(v30, v31, v32, v33);

  if (!v34)
  {
    sub_295894464(&v91);
    v62 = 0;
    v84 = v91;
    v17 = v88;
    v63 = v26;
    goto LABEL_24;
  }

  v86 = self;
  v87 = v18;
  v38 = 0;
  v95[0] = 0;
  memset(v94, 0, sizeof(v94));
  v93 = 0;
  p_yaw = &a6->yaw;
  do
  {
    if (*(p_yaw - 2) > v22[5] && !*p_yaw)
    {
      v40 = *(v22 + 8);
      if (v40)
      {
        v48 = *(v22 + 7);
        v49 = *(v22 + 8);
        v50 = *(v22 + 9);
        v51 = *(v22 + 10);
        v52 = *(v22 + 16);
        v53 = objc_msgSend_height(v16, v35, v36, v37);
        sub_29581FA58(a6, v38, &v93, v94, v53, v95, v48, v49, v50, v51, v52, v54);
        v40 = *(v22 + 8);
        if ((v40 & 2) == 0)
        {
LABEL_13:
          if ((v40 & 4) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          v41 = *(v22 + 11);
          v42 = *(v22 + 12);
          v43 = *(v22 + 13);
          v44 = *(v22 + 14);
          v45 = *(v22 + 17);
          v46 = objc_msgSend_height(v16, v35, v36, v37);
          sub_29581FA58(a6, v38, &v93, v94, v46, v95, v41, v42, v43, v44, v45, v47);
          goto LABEL_15;
        }
      }

      else if ((v22[4] & 2) == 0)
      {
        goto LABEL_13;
      }

      v55 = *(v22 + 3);
      v56 = *(v22 + 4);
      v57 = *(v22 + 5);
      v58 = *(v22 + 6);
      v59 = *(v22 + 15);
      v60 = objc_msgSend_height(v16, v35, v36, v37);
      sub_29581FA58(a6, v38, &v93, v94, v60, v95, v55, v56, v57, v58, v59, v61);
      if ((v22[4] & 4) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    ++v38;
    p_yaw += 20;
  }

  while (a7 != v38);
  if (v93 < 1)
  {
    v84 = 0;
    v62 = 0;
    v18 = v87;
    v17 = v88;
    v63 = v26;
  }

  else
  {
    LOWORD(v94[0]) = v93;
    v62 = objc_msgSend_computeCommandEncoder(v34, v35, v36, v37);
    v63 = v26;
    objc_msgSend_setComputePipelineState_(v62, v64, *(v26 + 8), v65);
    objc_msgSend_setTexture_atIndex_(v62, v66, v16, 0);
    v17 = v88;
    objc_msgSend_setTexture_atIndex_(v62, v67, v88, 1);
    v18 = v87;
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
    *a9 = *objc_msgSend_contents(v86->_blinkDetectionResultBuffer, v81, v82, v83);
  }

LABEL_24:

  return v84;
}

@end