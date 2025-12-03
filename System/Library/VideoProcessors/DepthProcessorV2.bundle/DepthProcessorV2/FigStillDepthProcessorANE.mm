@interface FigStillDepthProcessorANE
- (FigStillDepthProcessorANE)init;
- (FigStillDepthProcessorANE)initWithParameters:(depthProcessorParameters *)parameters commandQueue:(id)queue;
- (int)convertDepth:(__CVBuffer *)depth toDisparity:(__CVBuffer *)disparity;
- (int)processDepthBuffer:(__CVBuffer *)buffer yuvBuffer:(__CVBuffer *)yuvBuffer parametersDictionary:(id)dictionary outputDisparityBuffer:(__CVBuffer *)disparityBuffer;
- (int)scaleInputDepth:(__CVBuffer *)depth toDisparity:(__CVBuffer *)disparity;
- (void)dealloc;
@end

@implementation FigStillDepthProcessorANE

- (FigStillDepthProcessorANE)init
{
  memset(v9, 0, sizeof(v9));
  v3 = [FigStillDepthProcessorANE alloc];
  v7 = objc_msgSend_initWithParameters_commandQueue_(v3, v4, v9, 0, v5, v6);

  return v7;
}

- (FigStillDepthProcessorANE)initWithParameters:(depthProcessorParameters *)parameters commandQueue:(id)queue
{
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = FigStillDepthProcessorANE;
  v6 = [(FigStillDepthProcessorANE *)&v29 init];
  if (!v6)
  {
    v27 = 0;
    goto LABEL_7;
  }

  v7 = MEMORY[0x29EDB9F48];
  v8 = objc_opt_class();
  v13 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11, v12);
  v14 = objc_alloc(MEMORY[0x29EDC0A40]);
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v14, v15, v13, queueCopy, v16, v17);
  v19 = *(v6 + 1);
  *(v6 + 1) = inited;

  if (!*(v6 + 1))
  {
    sub_29572E128();
LABEL_10:
    v27 = 0;
    goto LABEL_5;
  }

  v20 = [ANEDepthScalingProcessor alloc];
  v25 = objc_msgSend_initWithMetalContext_(v20, v21, *(v6 + 1), v22, v23, v24);
  v26 = *(v6 + 2);
  *(v6 + 2) = v25;

  if (!*(v6 + 2))
  {
    sub_29572E0AC();
    goto LABEL_10;
  }

  v27 = v6;
LABEL_5:

LABEL_7:
  return v27;
}

- (int)processDepthBuffer:(__CVBuffer *)buffer yuvBuffer:(__CVBuffer *)yuvBuffer parametersDictionary:(id)dictionary outputDisparityBuffer:(__CVBuffer *)disparityBuffer
{
  dictionaryCopy = dictionary;
  if (buffer)
  {
    if (disparityBuffer)
    {
      if (!objc_msgSend_convertDepth_toDisparity_(self, v9, buffer, disparityBuffer, v10, v11))
      {
        self->_disparityQualityScore = 1.0;
        self->_disparityQualityIsHigh = 1;
        faceLandmarksArray = self->_faceLandmarksArray;
        if (faceLandmarksArray)
        {
          v19 = objc_msgSend_count(faceLandmarksArray, v13, v14, v15, v16, v17) > 0;
        }

        else
        {
          v19 = 0;
        }

        self->_figDepthQuality = v19;
        v20 = self->_faceLandmarksArray;
        self->_faceLandmarksArray = 0;

        goto LABEL_8;
      }

      sub_29572E1A4(&v25);
      v23 = v25;
    }

    else
    {
      sub_29572E250(&v26);
      v23 = v26;
    }
  }

  else
  {
    sub_29572E2FC(&v27);
    v23 = v27;
  }

  v24 = self->_faceLandmarksArray;
  self->_faceLandmarksArray = 0;

  if (v23)
  {
    v21 = 17;
    goto LABEL_9;
  }

LABEL_8:
  v21 = 0;
LABEL_9:

  return v21;
}

- (int)scaleInputDepth:(__CVBuffer *)depth toDisparity:(__CVBuffer *)disparity
{
  v7 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, a2, depth, 55, 17, 0);
  if (v7)
  {
    v11 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v6, disparity, 25, 23, 0);
    if (v11)
    {
      v12 = objc_msgSend_scaleFromDepth_toDisparity_(self->_depthScaling, v8, v7, v11, v9, v10);
      if (v12)
      {
        sub_29572E3A8();
      }
    }

    else
    {
      sub_29572E428(&v14);
      v12 = v14;
    }
  }

  else
  {
    sub_29572E4D8(&v15);
    v11 = 0;
    v12 = v15;
  }

  return v12;
}

- (int)convertDepth:(__CVBuffer *)depth toDisparity:(__CVBuffer *)disparity
{
  if (depth)
  {
    if (disparity)
    {
      if (CVPixelBufferGetPixelFormatType(depth) == 1717855600)
      {
        if (CVPixelBufferGetPixelFormatType(disparity) == 1751411059)
        {
          if (CVPixelBufferGetWidth(depth))
          {
            if (CVPixelBufferGetHeight(depth))
            {
              if (CVPixelBufferGetWidth(disparity))
              {
                if (CVPixelBufferGetHeight(disparity))
                {
                  objc_msgSend_scaleInputDepth_toDisparity_(self, v7, depth, disparity, v8, v9);
                  objc_msgSend_waitForSchedule(self->_metalContext, v10, v11, v12, v13, v14);
                }

                else
                {
                  sub_29572E6E8();
                }
              }

              else
              {
                sub_29572E798();
              }
            }

            else
            {
              sub_29572E848();
            }
          }

          else
          {
            sub_29572E8F8();
          }
        }

        else
        {
          sub_29572E638();
        }
      }

      else
      {
        sub_29572E588();
      }
    }

    else
    {
      sub_29572E9A8();
    }
  }

  else
  {
    sub_29572EA58();
  }

  return 0;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = FigStillDepthProcessorANE;
  [(FigStillDepthProcessorANE *)&v7 dealloc];
}

@end