@interface FigStreamingDepthProcessorCPU
- (BOOL)allocateResources;
- (FigStreamingDepthProcessorCPU)initWithParameters:(depthProcessorParameters *)a3 commandQueue:(id)a4;
- (int)_copyToDepthImage:(__CVBuffer *)a3 disparityIn:(float *)a4 resX:(int)a5 resY:(int)a6 extendedWidth:(int)a7;
- (int)_performGDRFilterOnDisparity:(float *)a3 yuvBuffer:(__CVBuffer *)a4 disparityOut:(float *)a5;
- (int)_performSMPFilterOnDisparity:(float *)a3 depthBuffer:(__CVBuffer *)a4 inputInvalidDisparityValue:(float)a5 outputInvalidDisparityValue:(float)a6 disparityOut:(float *)a7;
- (int)_performSMPFilterOnDisparity:(float *)a3 inputInvalidDisparityValue:(float)a4 outputInvalidDisparityValue:(float)a5 disparityOut:(float *)a6;
- (int)processDepthBuffer:(__CVBuffer *)a3 yuvBuffer:(__CVBuffer *)a4 parametersDictionary:(id)a5 outputDisparityBuffer:(__CVBuffer *)a6;
- (void)_endSMPFilteringTrace;
- (void)_startSMPFilteringTrace;
- (void)dealloc;
- (void)releaseResources;
- (void)setCameraInfoByPortType:(id)a3;
@end

@implementation FigStreamingDepthProcessorCPU

- (FigStreamingDepthProcessorCPU)initWithParameters:(depthProcessorParameters *)a3 commandQueue:(id)a4
{
  v8.receiver = self;
  v8.super_class = FigStreamingDepthProcessorCPU;
  result = [(FigStreamingDepthProcessorCPU *)&v8 init:a3];
  if (result)
  {
    *&result->_resourcesAllocated = 0;
    result->_streamingGDRFilterEnabled = 1;
    v6 = vmovn_s64(*&a3->var0);
    *&result->_resX = v6;
    v7 = a3->var2 >> 2;
    if (!v7)
    {
      LODWORD(v7) = v6.i32[0];
    }

    result->_extendedWidth = v7;
    result->_gdr = 0;
    result->_streamingSMPFilterEnabled = 1;
    result->_smpFilter = 0;
  }

  return result;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = FigStreamingDepthProcessorCPU;
  [(FigStreamingDepthProcessorCPU *)&v7 dealloc];
}

- (void)releaseResources
{
  gdr = self->_gdr;
  if (gdr)
  {
    v4 = sub_295728090(gdr, a2);
    MEMORY[0x29C250EB0](v4, 0x10A0C406C794524);
  }

  image = self->_image;
  if (image)
  {
    MEMORY[0x29C250E90](image, 0x1000C8052888210);
  }

  disparity = self->_disparity;
  if (disparity)
  {
    MEMORY[0x29C250E90](disparity, 0x1000C8052888210);
  }

  smpFilter = self->_smpFilter;
  if (smpFilter)
  {
    v8 = *(*smpFilter + 8);

    v8();
  }
}

- (BOOL)allocateResources
{
  if (self->_resourcesAllocated)
  {
    return 1;
  }

  if (self->_streamingGDRFilterEnabled)
  {
    if (self->_isFrontFacing)
    {
      v3 = &unk_2A1388F48;
    }

    else
    {
      v3 = &unk_2A1388F94;
    }

    resY = self->_resY;
    *v3 = self->_resX;
    v3[1] = resY;
    if (*MEMORY[0x29EDB9270] == 1)
    {
      kdebug_trace();
    }

    operator new();
  }

  if (self->_streamingSMPFilterEnabled)
  {
    if (*MEMORY[0x29EDB9270] == 1)
    {
      kdebug_trace();
    }

    operator new();
  }

  result = 1;
  self->_resourcesAllocated = 1;
  return result;
}

- (void)setCameraInfoByPortType:(id)a3
{
  v7 = objc_msgSend_objectForKeyedSubscript_(a3, a2, *MEMORY[0x29EDBFF58], v3, v4, v5);
  self->_isFrontFacing = v7 != 0;
}

- (int)_performSMPFilterOnDisparity:(float *)a3 inputInvalidDisparityValue:(float)a4 outputInvalidDisparityValue:(float)a5 disparityOut:(float *)a6
{
  objc_msgSend__startSMPFilteringTrace(self, a2, a3, a6, v6, v7);
  *&v13 = a4;
  sub_29571AB8C(self->_smpFilter, a3, 0, v20, v13, a5);
  objc_msgSend__endSMPFilteringTrace(self, v14, v15, v16, v17, v18);
  sub_29572D568(v20, a6, &v21);
  return v21;
}

- (int)processDepthBuffer:(__CVBuffer *)a3 yuvBuffer:(__CVBuffer *)a4 parametersDictionary:(id)a5 outputDisparityBuffer:(__CVBuffer *)a6
{
  v12 = a5;
  v19 = 0;
  if (!self->_resourcesAllocated)
  {
    v15 = 4;
    goto LABEL_24;
  }

  if (self->_streamingGDRFilterEnabled && !self->_gdr)
  {
    v15 = 1;
    goto LABEL_24;
  }

  v15 = 1;
  if (self->_streamingSMPFilterEnabled)
  {
    if (!a4 || !a3 || !self->_smpFilter)
    {
      goto LABEL_24;
    }

LABEL_11:
    if (self->_streamingGDRFilterEnabled)
    {
      LODWORD(v14) = 1036831949;
      LODWORD(v13) = -1.0;
      v15 = objc_msgSend__convertInputShifts_disparityOut_resX_resY_extendedWidth_inputInvalidDisparityValue_outputDisparitySaturationValue_(self, v10, a3, self->_disparity, self->_resX, self->_resY, self->_extendedWidth, v13, v14);
      if (v15)
      {
        goto LABEL_24;
      }

      disparity = self->_disparity;
      LODWORD(v13) = -1.0;
      if (!self->_streamingSMPFilterEnabled)
      {
        v17 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      disparity = 0;
      if (!self->_streamingSMPFilterEnabled)
      {
        v17 = 0;
        goto LABEL_20;
      }

      LODWORD(v13) = 2143289344;
    }

    LODWORD(v14) = LODWORD(v13);
    v15 = objc_msgSend__performSMPFilterOnDisparity_depthBuffer_inputInvalidDisparityValue_outputInvalidDisparityValue_disparityOut_(self, v10, disparity, a3, &v19, v11, v13, v14);
    if (v15)
    {
      goto LABEL_24;
    }

    v17 = v19;
    disparity = v19;
LABEL_20:
    if (self->_streamingGDRFilterEnabled)
    {
      v15 = objc_msgSend__performGDRFilterOnDisparity_yuvBuffer_disparityOut_(self, v10, disparity, a4, &v19, v11, v13);
      if (v15)
      {
        goto LABEL_24;
      }

      v17 = v19;
    }

    v15 = objc_msgSend__copyToDepthImage_disparityIn_resX_resY_extendedWidth_(self, v10, a6, v17, self->_resX, self->_resY, self->_extendedWidth);
    goto LABEL_24;
  }

  if (a3 && a4)
  {
    goto LABEL_11;
  }

LABEL_24:

  return v15;
}

- (void)_startSMPFilteringTrace
{
  resX = self->_resX;
  if (resX <= self->_resY)
  {
    resX = self->_resY;
  }

  if (resX > 639)
  {
    if ((resX == 656 || resX == 640) && *MEMORY[0x29EDB9270] == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (resX == 180)
    {
      if (*MEMORY[0x29EDB9270] != 1)
      {
        return;
      }

      goto LABEL_13;
    }

    if (resX == 320 && *MEMORY[0x29EDB9270] == 1)
    {
LABEL_13:
      kdebug_trace();
    }
  }
}

- (void)_endSMPFilteringTrace
{
  resX = self->_resX;
  if (resX <= self->_resY)
  {
    resX = self->_resY;
  }

  if (resX > 639)
  {
    if ((resX == 656 || resX == 640) && *MEMORY[0x29EDB9270] == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (resX == 180)
    {
      if (*MEMORY[0x29EDB9270] != 1)
      {
        return;
      }

      goto LABEL_13;
    }

    if (resX == 320 && *MEMORY[0x29EDB9270] == 1)
    {
LABEL_13:
      kdebug_trace();
    }
  }
}

- (int)_copyToDepthImage:(__CVBuffer *)a3 disparityIn:(float *)a4 resX:(int)a5 resY:(int)a6 extendedWidth:(int)a7
{
  v12 = sub_2957195E8(self, a2, a3);
  if (CVPixelBufferLockBaseAddress(v7, 0))
  {
    return 5;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v7);
  if (v10)
  {
    if (v8 >= 1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (v9 < 8)
        {
          v20 = 0;
        }

        else
        {
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = *(v10 + v15 + 16);
            v18 = &BaseAddress[v15];
            *v18 = *(v10 + v15);
            *(v18 + 1) = v17;
            v19 = v16 + 15;
            v16 += 8;
            v15 += 32;
          }

          while (v19 < v9);
          v20 = v16;
        }

        if (v20 < v9)
        {
          do
          {
            *&BaseAddress[4 * v20] = *(v10 + 4 * v20);
            ++v20;
          }

          while (v9 != v20);
        }

        BaseAddress += 4 * (v12 >> 2);
        v10 += 4 * v11;
      }
    }

    v21 = 0;
  }

  else
  {
    v21 = 3;
  }

  CVPixelBufferUnlockBaseAddress(v7, 0);
  return v21;
}

- (int)_performSMPFilterOnDisparity:(float *)a3 depthBuffer:(__CVBuffer *)a4 inputInvalidDisparityValue:(float)a5 outputInvalidDisparityValue:(float)a6 disparityOut:(float *)a7
{
  if (a3)
  {
    *&v13 = sub_29571962C();

    return objc_msgSend__performSMPFilterOnDisparity_inputInvalidDisparityValue_outputInvalidDisparityValue_disparityOut_(v7, v8, v9, v10, v11, v12, v13);
  }

  else if (CVPixelBufferLockBaseAddress(a4, 1uLL))
  {
    return 3;
  }

  else
  {
    CVPixelBufferGetBaseAddress(a4);
    *&v16 = sub_29571962C();
    v23 = objc_msgSend__performSMPFilterOnDisparity_inputInvalidDisparityValue_outputInvalidDisparityValue_disparityOut_(v17, v18, v19, v20, v21, v22, v16);
    CVPixelBufferUnlockBaseAddress(a4, 1uLL);
    return v23;
  }
}

- (int)_performGDRFilterOnDisparity:(float *)a3 yuvBuffer:(__CVBuffer *)a4 disparityOut:(float *)a5
{
  v9 = objc_msgSend__convertInputYUV_(self, a2, a4, a4, a5, v5);
  if (!v9)
  {
    v10 = MEMORY[0x29EDB9270];
    if (*MEMORY[0x29EDB9270] == 1)
    {
      sub_295719610();
    }

    sub_295728094(self->_gdr, self->_image, a3);
    if (*v10 == 1)
    {
      sub_295719610();
    }

    *a5 = a3;
  }

  return v9;
}

@end