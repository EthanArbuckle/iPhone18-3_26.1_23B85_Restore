@interface SLICMetal
- (SLICMetal)initWithParameters:(id)parameters andMetalContext:(id)context;
- (id)_createTextureOfSize:(CGSize)size withFormat:(unint64_t)format;
- (int)_slicCompileShadersWithLibrary:(id)library;
- (int)_slicEnsureConnectivity;
- (int)_slicFinalReductionResult;
- (int)_slicFindCenterAssociation:(id *)association;
- (int)_slicInitClusterCenters;
- (int)_slicUpdateClusterCenter;
- (int)allocateResources;
- (int)processSLICToOutputSPixelCentersIdsAndCounts:(id)counts outputSPixelColor:(id)color outputIndexes:(id)indexes inputImage:(id)image parameters:(id *)parameters;
- (void)_swapTexturesAtIndex:(int)index and:(int)and;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation SLICMetal

- (SLICMetal)initWithParameters:(id)parameters andMetalContext:(id)context
{
  parametersCopy = parameters;
  contextCopy = context;
  v9 = contextCopy;
  if (parametersCopy)
  {
    if (contextCopy)
    {
      v50.receiver = self;
      v50.super_class = SLICMetal;
      v10 = [(SLICMetal *)&v50 init];
      self = v10;
      if (v10)
      {
        objc_storeStrong(&v10->_mtlContext, context);
        v16 = objc_msgSend_device(self->_mtlContext, v11, v12, v13, v14, v15);
        mtlDevice = self->_mtlDevice;
        self->_mtlDevice = v16;

        v23 = objc_msgSend_commandQueue(self->_mtlContext, v18, v19, v20, v21, v22);
        mtlCommandQueue = self->_mtlCommandQueue;
        self->_mtlCommandQueue = v23;

        objc_storeStrong(&self->_parameters, parameters);
        objc_msgSend_superPixelSize(parametersCopy, v25, v26, v27, v28, v29);
        v31 = v30;
        objc_msgSend_superPixelSize(parametersCopy, v32, v33, v34, v35, v36);
        self->_no_grid_per_center = vcvtps_s32_f32(((v31 * v37) * 9.0) * 0.0039062);
        v43 = objc_msgSend_library(self->_mtlContext, v38, v39, v40, v41, v42);
        v48 = objc_msgSend__slicCompileShadersWithLibrary_(self, v44, v43, v45, v46, v47);

        if (v48)
        {
          sub_295735DF8(v48, self);
          self = 0;
        }
      }
    }

    else
    {
      sub_295735EC4();
    }
  }

  else
  {
    sub_295735F78();
  }

  return self;
}

- (void)releaseResources
{
  v3 = self->_slicTextures[7];
  self->_slicTextures[7] = 0;

  v4 = self->_slicTextures[4];
  self->_slicTextures[4] = 0;

  v5 = self->_slicTextures[5];
  self->_slicTextures[5] = 0;

  v6 = self->_slicTextures[1];
  self->_slicTextures[1] = 0;

  v7 = self->_slicTextures[0];
  self->_slicTextures[0] = 0;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = SLICMetal;
  [(SLICMetal *)&v7 dealloc];
}

- (int)processSLICToOutputSPixelCentersIdsAndCounts:(id)counts outputSPixelColor:(id)color outputIndexes:(id)indexes inputImage:(id)image parameters:(id *)parameters
{
  countsCopy = counts;
  colorCopy = color;
  indexesCopy = indexes;
  imageCopy = image;
  objc_storeStrong(&self->_slicTextures[2], counts);
  objc_storeStrong(&self->_slicTextures[3], color);
  objc_storeStrong(&self->_slicTextures[6], indexes);
  objc_storeStrong(&self->_slicTextures[8], image);
  v22 = objc_msgSend_commandBuffer(self->_mtlContext, v17, v18, v19, v20, v21);
  mtlCommandBuffer = self->_mtlCommandBuffer;
  self->_mtlCommandBuffer = v22;

  if (self->_mtlCommandBuffer)
  {
    inited = objc_msgSend__slicInitClusterCenters(self, v24, v25, v26, v27, v28);
    if (inited)
    {
      v93 = inited;
      sub_29573602C();
    }

    else
    {
      CenterAssociation = objc_msgSend__slicFindCenterAssociation_(self, v30, parameters, v31, v32, v33);
      if (CenterAssociation)
      {
        v93 = CenterAssociation;
        sub_2957360A4();
      }

      else if (objc_msgSend_no_iters(self->_parameters, v35, v36, v37, v38, v39))
      {
        v45 = 0;
        while (1)
        {
          updated = objc_msgSend__slicUpdateClusterCenter(self, v40, v41, v42, v43, v44);
          if (updated)
          {
            v93 = updated;
            sub_29573611C();
            goto LABEL_14;
          }

          v52 = objc_msgSend__slicFinalReductionResult(self, v47, v48, v49, v50, v51);
          if (v52)
          {
            v93 = v52;
            sub_295736194();
            goto LABEL_14;
          }

          v57 = objc_msgSend__slicFindCenterAssociation_(self, v53, parameters, v54, v55, v56);
          if (v57)
          {
            break;
          }

          if (++v45 >= objc_msgSend_no_iters(self->_parameters, v58, v59, v60, v61, v62))
          {
            goto LABEL_10;
          }
        }

        v93 = v57;
        sub_29573620C();
      }

      else
      {
LABEL_10:
        v63 = objc_msgSend__slicEnsureConnectivity(self, v40, v41, v42, v43, v44);
        if (v63)
        {
          v93 = v63;
          sub_295736284();
        }

        else
        {
          if (*MEMORY[0x29EDB9270])
          {
            v69 = objc_msgSend_commandQueue(self->_mtlCommandBuffer, v64, v65, v66, v67, v68);
            v75 = objc_msgSend_commandBuffer(v69, v70, v71, v72, v73, v74);

            objc_msgSend_setLabel_(v75, v76, @"KTRACE_MTLCMDBUF", v77, v78, v79);
            objc_msgSend_addCompletedHandler_(v75, v80, &unk_2A1C98400, v81, v82, v83);
            objc_msgSend_commit(v75, v84, v85, v86, v87, v88);
            objc_msgSend_addCompletedHandler_(self->_mtlCommandBuffer, v89, &unk_2A1C98420, v90, v91, v92);
          }

          objc_msgSend_commit(self->_mtlContext, v64, v65, v66, v67, v68);
          v93 = 0;
        }
      }
    }
  }

  else
  {
    sub_2957362FC(&v98);
    v93 = v98;
  }

LABEL_14:
  v94 = self->_slicTextures[2];
  self->_slicTextures[2] = 0;

  v95 = self->_slicTextures[3];
  self->_slicTextures[3] = 0;

  v96 = self->_slicTextures[6];
  self->_slicTextures[6] = 0;

  return v93;
}

- (void)_swapTexturesAtIndex:(int)index and:(int)and
{
  slicTextures = self->_slicTextures;
  v6 = &self->_slicTextures[index];
  v7 = *v6;
  objc_storeStrong(v6, slicTextures[and]);
  v8 = slicTextures[and];
  slicTextures[and] = v7;
}

- (id)_createTextureOfSize:(CGSize)size withFormat:(unint64_t)format
{
  v5 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], a2, format, size.width, size.height, 0);
  objc_msgSend_setUsage_(v5, v6, 3, v7, v8, v9);
  v14 = objc_msgSend_newTextureWithDescriptor_(self->_mtlDevice, v10, v5, v11, v12, v13);

  return v14;
}

- (int)_slicCompileShadersWithLibrary:(id)library
{
  objc_msgSend_superPixelSize(self->_parameters, a2, library, v3, v4, v5);
  v57 = v7;
  no_grid_per_center = self->_no_grid_per_center;
  objc_msgSend_superPixelSize(self->_parameters, v8, v9, v10, v11, v12);
  v54 = self->_no_grid_per_center;
  v55 = ((v13 * 3.0) * 0.0625);
  v53 = 1120403456;
  v14 = objc_alloc_init(MEMORY[0x29EDBB5A8]);
  v17 = v14;
  if (!v14)
  {
    goto LABEL_9;
  }

  objc_msgSend_setConstantValue_type_withName_(v14, v15, &v57, 33, @"slicMetal::spixel_size_uint", v16);
  objc_msgSend_setConstantValue_type_withName_(v17, v18, &no_grid_per_center, 29, @"slicMetal::no_blocks_per_spixel", v19);
  objc_msgSend_setConstantValue_type_withName_(v17, v20, &v55, 29, @"slicMetal::no_blocks_per_line", v21);
  objc_msgSend_setConstantValue_type_withName_(v17, v22, &v54, 29, @"slicMetal::no_grid_per_center", v23);
  objc_msgSend_setConstantValue_type_withName_(v17, v24, &v53, 33, @"slicMetal::distanceInitValue_uint", v25);
  v29 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v26, @"initClustersCenters", v17, v27, v28);
  v30 = self->_slicComputePipelinesStates[0];
  self->_slicComputePipelinesStates[0] = v29;

  if (!self->_slicComputePipelinesStates[0])
  {
    goto LABEL_9;
  }

  v34 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v31, @"findCenterAssociation", v17, v32, v33);
  v35 = self->_slicComputePipelinesStates[1];
  self->_slicComputePipelinesStates[1] = v34;

  if (!self->_slicComputePipelinesStates[1])
  {
    goto LABEL_9;
  }

  v39 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v36, @"updateClusterCenter", v17, v37, v38);
  v40 = self->_slicComputePipelinesStates[2];
  self->_slicComputePipelinesStates[2] = v39;

  if (!self->_slicComputePipelinesStates[2])
  {
    goto LABEL_9;
  }

  v44 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v41, @"finalizeReductionResult", v17, v42, v43);
  v45 = self->_slicComputePipelinesStates[3];
  self->_slicComputePipelinesStates[3] = v44;

  if (!self->_slicComputePipelinesStates[3])
  {
    goto LABEL_9;
  }

  v49 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v46, @"ensureConnectivity", v17, v47, v48);
  v50 = self->_slicComputePipelinesStates[4];
  self->_slicComputePipelinesStates[4] = v49;

  if (self->_slicComputePipelinesStates[4])
  {
    v51 = 0;
  }

  else
  {
LABEL_9:
    v51 = -12786;
  }

  return v51;
}

- (int)allocateResources
{
  objc_msgSend_inputImageSize(self->_parameters, a2, v2, v3, v4, v5);
  v11 = objc_msgSend__createTextureOfSize_withFormat_(self, v7, 53, v8, v9, v10);
  if (!v11)
  {
    return -12786;
  }

  v12 = self->_slicTextures[7];
  self->_slicTextures[7] = v11;
  v13 = v11;

  objc_msgSend_mapSize(self->_parameters, v14, v15, v16, v17, v18);
  v19 = sub_295725688();
  v25 = objc_msgSend__createTextureOfSize_withFormat_(v20, v21, 55, v22, v23, v24, v19);
  if (!v25)
  {
    return -12786;
  }

  v26 = self->_slicTextures[4];
  self->_slicTextures[4] = v25;
  v27 = v25;

  objc_msgSend_mapSize(self->_parameters, v28, v29, v30, v31, v32);
  v33 = sub_295725688();
  v39 = objc_msgSend__createTextureOfSize_withFormat_(v34, v35, 55, v36, v37, v38, v33);
  if (!v39)
  {
    return -12786;
  }

  v40 = self->_slicTextures[5];
  self->_slicTextures[5] = v39;
  v41 = v39;

  v47 = objc_msgSend_mapSize(self->_parameters, v42, v43, v44, v45, v46);
  sub_295725704(v53, v47, v48, v49, v50, v51, v52);

  v54 = sub_295725688();
  v60 = objc_msgSend__createTextureOfSize_withFormat_(v55, v56, 125, v57, v58, v59, v54);
  if (!v60)
  {
    return -12786;
  }

  v61 = self->_slicTextures[1];
  self->_slicTextures[1] = v60;
  v62 = v60;

  v68 = objc_msgSend_mapSize(self->_parameters, v63, v64, v65, v66, v67);
  sub_295725704(v74, v68, v69, v70, v71, v72, v73);

  v75 = sub_295725688();
  v81 = objc_msgSend__createTextureOfSize_withFormat_(v76, v77, 125, v78, v79, v80, v75);
  if (!v81)
  {
    return -12786;
  }

  v82 = self->_slicTextures[0];
  self->_slicTextures[0] = v81;
  v83 = v81;

  return 0;
}

- (int)_slicInitClusterCenters
{
  v3 = self->_slicComputePipelinesStates[0];
  v4 = self->_mtlCommandBuffer;
  v10 = self->_slicTextures[2];
  if (v4 && (objc_msgSend_computeCommandEncoder(v4, v5, v6, v7, v8, v9), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v11;
    objc_msgSend_threadExecutionWidth(v3, v12, v13, v14, v15, v16);
    v23 = objc_msgSend_maxTotalThreadsPerThreadgroup(v3, v18, v19, v20, v21, v22);
    v29 = sub_2957256E8(v23, v24, v25, v26, v27, v28);
    sub_295725744(v29, v30, v31, v32, v33, v34);
    v39 = objc_msgSend_setComputePipelineState_(v17, v35, v3, v36, v37, v38);
    sub_295725724(v39, v40, v41, v42, v43, v44);
    sub_2957256A8();
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v17, v45, v46, v47, v48, v49);
    objc_msgSend_endEncoding(v17, v50, v51, v52, v53, v54);

    v55 = 0;
  }

  else
  {
    v55 = -12786;
  }

  return v55;
}

- (int)_slicFindCenterAssociation:(id *)association
{
  v5 = self->_slicComputePipelinesStates[1];
  v6 = self->_mtlCommandBuffer;
  v7 = self->_slicTextures[8];
  objc_msgSend_defaultsSlicoSpatialBias(self->_parameters, v8, v9, v10, v11, v12);
  if (association)
  {
    var0 = association->var0;
  }

  else
  {
    var0 = v18;
  }

  objc_msgSend_slicoInverseWeight(self->_parameters, v13, v14, v15, v16, v17);
  v65 = var0 * v25;
  if (v6 && (objc_msgSend_computeCommandEncoder(v6, v20, v21, v22, v23, v24), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v32 = v26;
    v33 = (objc_msgSend_width(v7, v27, v28, v29, v30, v31) + 15) >> 4;
    v39 = (objc_msgSend_height(v7, v34, v35, v36, v37, v38) + 15) >> 4;
    v44 = objc_msgSend_setComputePipelineState_(v32, v40, v5, v41, v42, v43);
    sub_2957256C8(v44, v45, v46, v47, v48, v49);
    objc_msgSend_setBytes_length_atIndex_(v32, v50, &v65, 4, 0, v51);
    v64[0] = v33;
    v64[1] = v39;
    v64[2] = 1;
    v62 = vdupq_n_s64(0x10uLL);
    v63 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v32, v52, v64, &v62, v53, v54);
    objc_msgSend_endEncoding(v32, v55, v56, v57, v58, v59);

    v60 = 0;
  }

  else
  {
    v60 = -12786;
  }

  return v60;
}

- (int)_slicUpdateClusterCenter
{
  v3 = self->_slicComputePipelinesStates[2];
  v4 = self->_mtlCommandBuffer;
  v10 = self->_slicTextures[2];
  if (v4 && (objc_msgSend_computeCommandEncoder(v4, v5, v6, v7, v8, v9), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v11;
    v18 = objc_msgSend_width(v10, v12, v13, v14, v15, v16);
    v24 = objc_msgSend_height(v10, v19, v20, v21, v22, v23);
    no_grid_per_center = self->_no_grid_per_center;
    v26 = v24;
    v31 = objc_msgSend_setComputePipelineState_(v17, v27, v3, v28, v29, v30);
    sub_295725724(v31, v32, v33, v34, v35, v36);
    v49[0] = v18;
    v49[1] = v26;
    v49[2] = no_grid_per_center;
    v47 = vdupq_n_s64(0x10uLL);
    v48 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v17, v37, v49, &v47, v38, v39);
    objc_msgSend_endEncoding(v17, v40, v41, v42, v43, v44);

    v45 = 0;
  }

  else
  {
    v45 = -12786;
  }

  return v45;
}

- (int)_slicFinalReductionResult
{
  v3 = self->_slicComputePipelinesStates[3];
  v4 = self->_mtlCommandBuffer;
  v10 = self->_slicTextures[2];
  if (v4 && (objc_msgSend_computeCommandEncoder(v4, v5, v6, v7, v8, v9), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v11;
    objc_msgSend_threadExecutionWidth(v3, v12, v13, v14, v15, v16);
    v23 = objc_msgSend_maxTotalThreadsPerThreadgroup(v3, v18, v19, v20, v21, v22);
    v29 = sub_2957256E8(v23, v24, v25, v26, v27, v28);
    sub_295725744(v29, v30, v31, v32, v33, v34);
    v39 = objc_msgSend_setComputePipelineState_(v17, v35, v3, v36, v37, v38);
    sub_2957256C8(v39, v40, v41, v42, v43, v44);
    sub_2957256A8();
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v17, v45, v46, v47, v48, v49);
    objc_msgSend_endEncoding(v17, v50, v51, v52, v53, v54);
    objc_msgSend__swapTexturesAtIndex_and_(self, v55, 4, 5, v56, v57);

    v58 = 0;
  }

  else
  {
    v58 = -12786;
  }

  return v58;
}

- (int)_slicEnsureConnectivity
{
  v5 = self->_slicComputePipelinesStates[4];
  v6 = self->_mtlCommandBuffer;
  v12 = self->_slicTextures[6];
  if (v6 && (objc_msgSend_computeCommandEncoder(v6, v7, v8, v9, v10, v11), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v13;
    v20 = objc_msgSend_threadExecutionWidth(v5, v14, v15, v16, v17, v18);
    v26 = objc_msgSend_maxTotalThreadsPerThreadgroup(v5, v21, v22, v23, v24, v25);
    v32 = (sub_2957256E8(v26, v27, v28, v29, v30, v31) + v20 - 1) / v2;
    v38 = (v3 + objc_msgSend_height(v12, v33, v34, v35, v36, v37) - 1) / v3;
    v43 = objc_msgSend_setComputePipelineState_(v19, v39, v5, v40, v41, v42);
    sub_2957256C8(v43, v44, v45, v46, v47, v48);
    v88 = v32;
    v89 = v38;
    v85 = v2;
    v90 = 1;
    v86 = v3;
    v87 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v19, v49, &v88, &v85, v50, v51);
    objc_msgSend_endEncoding(v19, v52, v53, v54, v55, v56);
    objc_msgSend__swapTexturesAtIndex_and_(self, v57, 6, 7, v58, v59);
    v65 = objc_msgSend_computeCommandEncoder(v6, v60, v61, v62, v63, v64);

    objc_msgSend_setComputePipelineState_(v65, v66, v5, v67, v68, v69);
    objc_msgSend_setTextures_withRange_(v65, v70, self->_slicTextures, 0, 9, v71);
    v88 = v32;
    v89 = v38;
    v90 = 1;
    v85 = v2;
    v86 = v3;
    v87 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v65, v72, &v88, &v85, v73, v74);
    objc_msgSend_endEncoding(v65, v75, v76, v77, v78, v79);
    objc_msgSend__swapTexturesAtIndex_and_(self, v80, 6, 7, v81, v82);

    v83 = 0;
  }

  else
  {
    v83 = -12786;
  }

  return v83;
}

@end