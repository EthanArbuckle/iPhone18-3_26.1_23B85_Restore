@interface _MRCMetalHybridBinarizer
- (_MRCMetalHybridBinarizer)init;
- (_MRCMetalHybridBinarizer)initWithMetalContext:(id)a3 error:(id *)a4;
- (id)newTextureByBinarizingPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
@end

@implementation _MRCMetalHybridBinarizer

- (id)newTextureByBinarizingPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v126 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType != 875704422 && PixelFormatType != 1278226488 && PixelFormatType != 875704438)
  {
    return 0;
  }

  if (CVPixelBufferIsPlanar(a3))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidth(a3);
    HeightOfPlane = CVPixelBufferGetHeight(a3);
  }

  v9 = HeightOfPlane;
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (!IOSurface)
  {
    return 0;
  }

  v13 = objc_msgSend_newTextureByBindingIOSurface_pixelFormat_width_height_usage_plane_error_(self->_metalContext, v11, IOSurface, 13, WidthOfPlane, v9, 1, 0, 0);
  if (v13)
  {
    v14 = (WidthOfPlane + 7) >> 3;
    v15 = (v9 + 7) >> 3;
    v16 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v12, 13, v14, v15, 0);
    v18 = v16;
    if (v16)
    {
      objc_msgSend_setUsage_(v16, v17, 3);
      v21 = objc_msgSend_device(self->_metalContext, v19, v20);
      v23 = objc_msgSend_newTextureWithDescriptor_(v21, v22, v18);

      if (v23)
      {
        v26 = objc_msgSend_device(self->_metalContext, v24, v25);
        v28 = objc_msgSend_newTextureWithDescriptor_(v26, v27, v18);

        if (v28)
        {
          v30 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v29, 13, v14, v9, 0);
          v32 = v30;
          if (v30)
          {
            objc_msgSend_setUsage_(v30, v31, 2);
            v35 = objc_msgSend_device(self->_metalContext, v33, v34);
            v37 = objc_msgSend_newTextureWithDescriptor_(v35, v36, v32);

            if (v37)
            {
              v40 = objc_msgSend_beginCommandBuffer(self->_metalContext, v38, v39);
              v43 = v40;
              if (v40)
              {
                v44 = objc_msgSend_computeCommandEncoder(v40, v41, v42);
                v47 = v43;
                if (v44)
                {
                  v48 = v44;
                  v117 = v37;
                  v120 = v47;
                  v118 = objc_msgSend_threadExecutionWidth(self->_calcuateBlackPointsPipelineState, v45, v46);
                  v51 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_calcuateBlackPointsPipelineState, v49, v50);
                  v54 = v51 / objc_msgSend_threadExecutionWidth(self->_calcuateBlackPointsPipelineState, v52, v53);
                  v115 = v15 - 1;
                  objc_msgSend_setComputePipelineState_(v48, v55, self->_calcuateBlackPointsPipelineState);
                  objc_msgSend_setTexture_atIndex_(v48, v56, v13, 0);
                  objc_msgSend_setTexture_atIndex_(v48, v57, v23, 1);
                  *&buf = (v14 - 1 + v118) / v118;
                  *(&buf + 1) = (v15 - 1 + v54) / v54;
                  v125 = 1;
                  v121 = v118;
                  v122 = v54;
                  v123 = 1;
                  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v48, v58, &buf, &v121);
                  objc_msgSend_endEncoding(v48, v59, v60);

                  v63 = objc_msgSend_computeCommandEncoder(v120, v61, v62);
                  if (v63)
                  {
                    v66 = v63;
                    v67 = objc_msgSend_threadExecutionWidth(self->_fixBlackPointsPipelineState, v64, v65);
                    v70 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_fixBlackPointsPipelineState, v68, v69);
                    v73 = v70 / objc_msgSend_threadExecutionWidth(self->_fixBlackPointsPipelineState, v71, v72);
                    objc_msgSend_setComputePipelineState_(v66, v74, self->_fixBlackPointsPipelineState);
                    objc_msgSend_setTexture_atIndex_(v66, v75, v23, 0);
                    objc_msgSend_setTexture_atIndex_(v66, v76, v28, 1);
                    *&buf = (v14 - 1 + v67) / v67;
                    *(&buf + 1) = (v115 + v73) / v73;
                    v125 = 1;
                    v121 = v67;
                    v122 = v73;
                    v123 = 1;
                    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v66, v77, &buf, &v121);
                    objc_msgSend_endEncoding(v66, v78, v79);

                    v43 = v120;
                    v82 = objc_msgSend_computeCommandEncoder(v120, v80, v81);
                    if (v82)
                    {
                      v85 = v82;
                      v86 = objc_msgSend_threadExecutionWidth(self->_thresholdPipelineState, v83, v84);
                      v89 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_thresholdPipelineState, v87, v88);
                      v92 = v89 / objc_msgSend_threadExecutionWidth(self->_thresholdPipelineState, v90, v91);
                      v119 = (v86 + objc_msgSend_width(v117, v93, v94) - 1) / v86;
                      v116 = (v92 + objc_msgSend_height(v117, v95, v96) - 1) / v92;
                      objc_msgSend_setComputePipelineState_(v85, v97, self->_thresholdPipelineState);
                      objc_msgSend_setTexture_atIndex_(v85, v98, v13, 0);
                      objc_msgSend_setTexture_atIndex_(v85, v99, v28, 1);
                      objc_msgSend_setTexture_atIndex_(v85, v100, v117, 2);
                      *&buf = v119;
                      *(&buf + 1) = v116;
                      v125 = 1;
                      v121 = v86;
                      v122 = v92;
                      v123 = 1;
                      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v85, v101, &buf, &v121);
                      objc_msgSend_endEncoding(v85, v102, v103);

                      objc_msgSend_commitCommandBufferShouldWaitUntilCompleted_(self->_metalContext, v104, 1);
                      if (qword_27FEB41F0 != -1)
                      {
                        dispatch_once(&qword_27FEB41F0, &unk_2873D0740);
                      }

                      v105 = qword_27FEB41E8;
                      v37 = v117;
                      v43 = v120;
                      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
                      {
                        objc_msgSend_GPUEndTime(v120, v106, v107);
                        v111 = v110;
                        objc_msgSend_GPUStartTime(v120, v112, v113);
                        LODWORD(buf) = 134349056;
                        *(&buf + 4) = v111 - v114;
                        _os_log_debug_impl(&dword_26146F000, v105, OS_LOG_TYPE_DEBUG, "elapsedTime: %{public}.6f", &buf, 0xCu);
                      }

                      v108 = v117;
                    }

                    else
                    {
                      v108 = 0;
                      v37 = v117;
                    }
                  }

                  else
                  {
                    v108 = 0;
                    v37 = v117;
                    v43 = v120;
                  }
                }

                else
                {
                  v108 = 0;
                }
              }

              else
              {
                v108 = 0;
              }
            }

            else
            {
              v108 = 0;
            }
          }

          else
          {
            v108 = 0;
          }
        }

        else
        {
          v108 = 0;
        }
      }

      else
      {
        v108 = 0;
      }
    }

    else
    {
      v108 = 0;
    }
  }

  else
  {
    v108 = 0;
  }

  return v108;
}

- (_MRCMetalHybridBinarizer)initWithMetalContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = _MRCMetalHybridBinarizer;
  v7 = [(_MRCMetalHybridBinarizer *)&v24 init];
  if (!v7 || (!v6 ? (v9 = [_MRCMetalContext alloc], v8 = objc_msgSend_initWithDevice_libraryURL_error_(v9, v10, 0, 0, a4)) : (v8 = v6), (metalContext = v7->_metalContext, v7->_metalContext = v8, metalContext, (v13 = v7->_metalContext) != 0) && (v14 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_error_(v13, v12, @"_MRCMetalHybridBinarizer_calculateBlackPoints", 0, a4), calcuateBlackPointsPipelineState = v7->_calcuateBlackPointsPipelineState, v7->_calcuateBlackPointsPipelineState = v14, calcuateBlackPointsPipelineState, v7->_calcuateBlackPointsPipelineState) && (v17 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_error_(v7->_metalContext, v16, @"_MRCMetalHybridBinarizer_fixBlackPoints", 0, a4), fixBlackPointsPipelineState = v7->_fixBlackPointsPipelineState, v7->_fixBlackPointsPipelineState = v17, fixBlackPointsPipelineState, v7->_fixBlackPointsPipelineState) && (v20 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_error_(v7->_metalContext, v19, @"_MRCMetalHybridBinarizer_threshold", 0, a4), thresholdPipelineState = v7->_thresholdPipelineState, v7->_thresholdPipelineState = v20, thresholdPipelineState, v7->_thresholdPipelineState)))
  {
    v22 = v7;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (_MRCMetalHybridBinarizer)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

@end