@interface DupDownscaleHalfConvert
- (DupDownscaleHalfConvert)initWithMetalContext:(id)a3;
- (int)AllocateResources;
- (int)DownscaleAndCrop:(float)a3 outY:(__CVBuffer *)a4 inYuv420:(__CVBuffer *)a5;
- (int)DownscaleConvertAndCenterCrop:(__CVBuffer *)a3 outCroppedLuma:(__CVBuffer *)a4 inYuv420:(__CVBuffer *)a5;
- (int)GenerateImageY:(id)a3 inYuv420:(id)a4 waitForCompletion:(BOOL)a5;
- (int)GenerateImageYUVA:(__CVBuffer *)a3 outYuvaWidth:(unsigned int)a4 outYuvaHeight:(unsigned int)a5 outY:(__CVBuffer *)a6 inYuv420:(__CVBuffer *)a7 gainToApplyToOutputs:(float)a8 waitForCompletion:(BOOL)a9;
- (void)dealloc;
@end

@implementation DupDownscaleHalfConvert

- (DupDownscaleHalfConvert)initWithMetalContext:(id)a3
{
  v5 = a3;
  v30.receiver = self;
  v30.super_class = DupDownscaleHalfConvert;
  v6 = [(DupDownscaleHalfConvert *)&v30 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  v6->_ResourcesAvailable = 0;
  objc_storeStrong(&v6->_MetalContext, a3);
  v7->_ContextAvailable = 1;
  v11 = objc_msgSend_computePipelineStateFor_constants_(v7->_MetalContext, v8, @"kernelDownscalerConverterYUVA", 0, v9, v10);
  KernelYUVA = v7->_KernelYUVA;
  v7->_KernelYUVA = v11;

  if (!v7->_KernelYUVA)
  {
    sub_295701F00();
LABEL_12:
    v28 = 0;
    goto LABEL_7;
  }

  v16 = objc_msgSend_computePipelineStateFor_constants_(v7->_MetalContext, v13, @"kernelDownscalerConverterY", 0, v14, v15);
  KernelY = v7->_KernelY;
  v7->_KernelY = v16;

  if (!v7->_KernelY)
  {
    sub_295701E88();
    goto LABEL_12;
  }

  v21 = objc_msgSend_computePipelineStateFor_constants_(v7->_MetalContext, v18, @"kernelDownscaleConvertAndCenterCrop", 0, v19, v20);
  KernelDownscaleConvertAndCenterCrop = v7->_KernelDownscaleConvertAndCenterCrop;
  v7->_KernelDownscaleConvertAndCenterCrop = v21;

  if (!v7->_KernelDownscaleConvertAndCenterCrop)
  {
    sub_295701E10();
    goto LABEL_12;
  }

  v26 = objc_msgSend_computePipelineStateFor_constants_(v7->_MetalContext, v23, @"kernelDownscaleAndCrop", 0, v24, v25);
  KernelDownscaleAndCrop = v7->_KernelDownscaleAndCrop;
  v7->_KernelDownscaleAndCrop = v26;

  if (!v7->_KernelDownscaleAndCrop)
  {
    sub_295701D98();
    goto LABEL_12;
  }

LABEL_6:
  v28 = v7;
LABEL_7:

  return v28;
}

- (int)AllocateResources
{
  if (!self->_ContextAvailable)
  {
    return -12786;
  }

  result = 0;
  self->_ResourcesAvailable = 1;
  return result;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_MetalContext, a2, v2, v3, v4, v5);
  objc_msgSend_ReleaseResources(self, v7, v8, v9, v10, v11);
  v12.receiver = self;
  v12.super_class = DupDownscaleHalfConvert;
  [(DupDownscaleHalfConvert *)&v12 dealloc];
}

- (int)GenerateImageYUVA:(__CVBuffer *)a3 outYuvaWidth:(unsigned int)a4 outYuvaHeight:(unsigned int)a5 outY:(__CVBuffer *)a6 inYuv420:(__CVBuffer *)a7 gainToApplyToOutputs:(float)a8 waitForCompletion:(BOOL)a9
{
  v9 = a9;
  v117 = a8;
  if (!a4 || (Height = a5, Width = a4, !a5))
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
  }

  v115 = 0;
  v116 = 0;
  if (!self->_ContextAvailable)
  {
    sub_295701F78();
LABEL_20:
    a6 = 0;
    v25 = 0;
    v19 = 0;
    v17 = 0;
    v55 = 0;
    v44 = 0;
    v9 = -12780;
    goto LABEL_17;
  }

  if (!self->_ResourcesAvailable)
  {
    sub_295701FF0();
    goto LABEL_20;
  }

  v17 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, a2, a7, 10, 17, 0);
  if (!v17)
  {
    sub_2957022C0();
    a6 = 0;
    v25 = 0;
    v19 = 0;
LABEL_27:
    v55 = 0;
    v44 = 0;
    goto LABEL_28;
  }

  v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v16, a7, 30, 17, 1);
  if (!v19)
  {
    sub_295702248();
    a6 = 0;
    v25 = 0;
    goto LABEL_27;
  }

  v25 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_MetalContext, v18, a3, 80, 22, 0, Width, Height);
  if (!v25)
  {
    sub_2957021D0();
    a6 = 0;
    goto LABEL_27;
  }

  if (a6)
  {
    a6 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_MetalContext, v20, a6, 10, 22, 0, Width, Height);
    if (!a6)
    {
      sub_295702068();
      goto LABEL_27;
    }
  }

  v26 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_KernelYUVA, v20, v21, v22, v23, v24);
  v32 = objc_msgSend_threadExecutionWidth(self->_KernelYUVA, v27, v28, v29, v30, v31);
  sub_2956F342C(v26, v32, &v116, &v115, Width, Height);
  v38 = objc_msgSend_commandQueue(self->_MetalContext, v33, v34, v35, v36, v37);
  v44 = objc_msgSend_commandBuffer(v38, v39, v40, v41, v42, v43);

  if (!v44)
  {
    sub_295702158();
    v55 = 0;
LABEL_28:
    v9 = -12786;
    goto LABEL_17;
  }

  v50 = objc_msgSend_computeCommandEncoder(v44, v45, v46, v47, v48, v49);
  v55 = v50;
  if (!v50)
  {
    sub_2957020E0();
    goto LABEL_28;
  }

  objc_msgSend_setComputePipelineState_(v50, v51, self->_KernelYUVA, v52, v53, v54);
  objc_msgSend_setTexture_atIndex_(v55, v56, v17, 0, v57, v58);
  objc_msgSend_setTexture_atIndex_(v55, v59, v19, 1, v60, v61);
  objc_msgSend_setTexture_atIndex_(v55, v62, v25, 2, v63, v64);
  objc_msgSend_setTexture_atIndex_(v55, v65, a6, 3, v66, v67);
  objc_msgSend_setBytes_length_atIndex_(v55, v68, &v117, 4, 0, v69);
  v114[0] = Width / v116;
  v114[1] = Height / v115;
  v114[2] = 1;
  v113[0] = v116;
  v113[1] = v115;
  v113[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v55, v70, v114, v113, v71, v72);
  objc_msgSend_endEncoding(v55, v73, v74, v75, v76, v77);
  if (*MEMORY[0x29EDB9270])
  {
    v83 = objc_msgSend_commandQueue(v44, v78, v79, v80, v81, v82);
    v89 = objc_msgSend_commandBuffer(v83, v84, v85, v86, v87, v88);

    objc_msgSend_setLabel_(v89, v90, @"KTRACE_MTLCMDBUF", v91, v92, v93);
    objc_msgSend_addCompletedHandler_(v89, v94, &unk_2A1C958A8, v95, v96, v97);
    objc_msgSend_commit(v89, v98, v99, v100, v101, v102);
    objc_msgSend_addCompletedHandler_(v44, v103, &unk_2A1C958C8, v104, v105, v106);
  }

  objc_msgSend_commit(v44, v78, v79, v80, v81, v82);
  if (v9)
  {
    objc_msgSend_waitUntilCompleted(v44, v107, v108, v109, v110, v111);
    v9 = 0;
  }

LABEL_17:

  return v9;
}

- (int)GenerateImageY:(id)a3 inYuv420:(id)a4 waitForCompletion:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v15 = objc_msgSend_width(v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_height(v9, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_width(v8, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_height(v8, v28, v29, v30, v31, v32);
  v131 = 0;
  if (!self->_ContextAvailable)
  {
    sub_295702338();
LABEL_23:
    v79 = 0;
    v68 = 0;
    v5 = -12780;
    goto LABEL_15;
  }

  if (!self->_ResourcesAvailable)
  {
    sub_2957023B0();
    goto LABEL_23;
  }

  if (!v9)
  {
    sub_2957026F8();
    goto LABEL_23;
  }

  v39 = v33;
  if (objc_msgSend_pixelFormat(v9, v34, v35, v36, v37, v38) != 10)
  {
    sub_295702428();
    goto LABEL_23;
  }

  if (!v8)
  {
    sub_295702680();
    goto LABEL_23;
  }

  if (objc_msgSend_pixelFormat(v8, v40, v41, v42, v43, v44) != 10)
  {
    sub_2957024A0();
    goto LABEL_23;
  }

  if (v15 != 2 * v27 || 2 * v39 != v21)
  {
    sub_295702608();
    goto LABEL_23;
  }

  v50 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_KernelY, v45, v46, v47, v48, v49);
  v56 = objc_msgSend_threadExecutionWidth(self->_KernelY, v51, v52, v53, v54, v55);
  sub_2956F342C(v50, v56, &v131 + 1, &v131, v27, v39);
  v62 = objc_msgSend_commandQueue(self->_MetalContext, v57, v58, v59, v60, v61);
  v68 = objc_msgSend_commandBuffer(v62, v63, v64, v65, v66, v67);

  if (!v68)
  {
    sub_295702590();
    v79 = 0;
LABEL_26:
    v5 = -12786;
    goto LABEL_15;
  }

  v74 = objc_msgSend_computeCommandEncoder(v68, v69, v70, v71, v72, v73);
  v79 = v74;
  if (!v74)
  {
    sub_295702518();
    goto LABEL_26;
  }

  objc_msgSend_setComputePipelineState_(v74, v75, self->_KernelY, v76, v77, v78);
  objc_msgSend_setTexture_atIndex_(v79, v80, v9, 0, v81, v82);
  objc_msgSend_setTexture_atIndex_(v79, v83, v8, 1, v84, v85);
  v130[0] = v27 / HIDWORD(v131);
  v130[1] = v39 / v131;
  v130[2] = 1;
  v129[0] = HIDWORD(v131);
  v129[1] = v131;
  v129[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v79, v86, v130, v129, v87, v88);
  objc_msgSend_endEncoding(v79, v89, v90, v91, v92, v93);
  if (*MEMORY[0x29EDB9270])
  {
    v99 = objc_msgSend_commandQueue(v68, v94, v95, v96, v97, v98);
    v105 = objc_msgSend_commandBuffer(v99, v100, v101, v102, v103, v104);

    objc_msgSend_setLabel_(v105, v106, @"KTRACE_MTLCMDBUF", v107, v108, v109);
    objc_msgSend_addCompletedHandler_(v105, v110, &unk_2A1C958E8, v111, v112, v113);
    objc_msgSend_commit(v105, v114, v115, v116, v117, v118);
    objc_msgSend_addCompletedHandler_(v68, v119, &unk_2A1C95908, v120, v121, v122);
  }

  objc_msgSend_commit(v68, v94, v95, v96, v97, v98);
  if (v5)
  {
    objc_msgSend_waitUntilCompleted(v68, v123, v124, v125, v126, v127);
    v5 = 0;
  }

LABEL_15:

  return v5;
}

- (int)DownscaleConvertAndCenterCrop:(__CVBuffer *)a3 outCroppedLuma:(__CVBuffer *)a4 inYuv420:(__CVBuffer *)a5
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v111 = 0;
  if (!self->_ContextAvailable)
  {
    sub_295702770();
    return -12780;
  }

  if (!self->_ResourcesAvailable)
  {
    sub_2957027E8();
    return -12780;
  }

  v12 = Height;
  v13 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v11, a5, 10, 17, 0);
  if (!v13)
  {
    sub_295702AD8();
    return -12786;
  }

  v15 = v13;
  v16 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v14, a5, 30, 17, 1);
  if (!v16)
  {
    sub_295702A48(v15);
    return -12786;
  }

  v18 = v16;
  v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v17, a3, 80, 22, 0);
  if (!v19)
  {
    sub_2957029B0(v18, v15);
    return -12786;
  }

  v21 = v19;
  v22 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v20, a4, 10, 22, 0);
  if (!v22)
  {
    sub_295702908(v21, v18, v15);
    return -12786;
  }

  v28 = v22;
  v29 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_KernelDownscaleConvertAndCenterCrop, v23, v24, v25, v26, v27);
  v35 = objc_msgSend_threadExecutionWidth(self->_KernelDownscaleConvertAndCenterCrop, v30, v31, v32, v33, v34);
  sub_2956F342C(v29, v35, &v111 + 1, &v111, Width, v12);
  v41 = objc_msgSend_commandQueue(self->_MetalContext, v36, v37, v38, v39, v40);
  v47 = objc_msgSend_commandBuffer(v41, v42, v43, v44, v45, v46);

  if (!v47)
  {
    sub_295702860(v28, v21, v18, v15);
    return -12786;
  }

  v53 = objc_msgSend_computeCommandEncoder(v47, v48, v49, v50, v51, v52);
  if (!v53)
  {
    fig_log_get_emitter();
    FigDebugAssert3();

    return -12786;
  }

  v58 = v53;
  objc_msgSend_setComputePipelineState_(v53, v54, self->_KernelDownscaleConvertAndCenterCrop, v55, v56, v57);
  objc_msgSend_setTexture_atIndex_(v58, v59, v15, 0, v60, v61);
  objc_msgSend_setTexture_atIndex_(v58, v62, v18, 1, v63, v64);
  objc_msgSend_setTexture_atIndex_(v58, v65, v21, 2, v66, v67);
  objc_msgSend_setTexture_atIndex_(v58, v68, v28, 3, v69, v70);
  v110[0] = Width / HIDWORD(v111);
  v110[1] = v12 / v111;
  v110[2] = 1;
  v109[0] = HIDWORD(v111);
  v109[1] = v111;
  v109[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v58, v71, v110, v109, v72, v73);
  objc_msgSend_endEncoding(v58, v74, v75, v76, v77, v78);
  if (*MEMORY[0x29EDB9270])
  {
    v84 = objc_msgSend_commandQueue(v47, v79, v80, v81, v82, v83);
    v90 = objc_msgSend_commandBuffer(v84, v85, v86, v87, v88, v89);

    objc_msgSend_setLabel_(v90, v91, @"KTRACE_MTLCMDBUF", v92, v93, v94);
    objc_msgSend_addCompletedHandler_(v90, v95, &unk_2A1C95928, v96, v97, v98);
    objc_msgSend_commit(v90, v99, v100, v101, v102, v103);
    objc_msgSend_addCompletedHandler_(v47, v104, &unk_2A1C95948, v105, v106, v107);
  }

  objc_msgSend_commit(v47, v79, v80, v81, v82, v83);

  return 0;
}

- (int)DownscaleAndCrop:(float)a3 outY:(__CVBuffer *)a4 inYuv420:(__CVBuffer *)a5
{
  if (!self->_ContextAvailable)
  {
    sub_295702B50();
    return -12780;
  }

  if (!self->_ResourcesAvailable)
  {
    sub_295702BC8();
    return -12780;
  }

  if (!a5)
  {
    sub_295702FD8();
    return -12780;
  }

  if (!a4)
  {
    sub_295702F60();
    return -12780;
  }

  if (CVPixelBufferGetPixelFormatType(a5) != 875704422)
  {
    sub_295702C40();
    return -12780;
  }

  Width = CVPixelBufferGetWidth(a5);
  Height = CVPixelBufferGetHeight(a5);
  v11 = CVPixelBufferGetWidth(a4);
  v13 = CVPixelBufferGetHeight(a4);
  v14 = v13;
  if (Width <= v11 || Height <= v14)
  {
    sub_295702EE8();
    return -12780;
  }

  v16 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v12, a5, 10, 17, 0);
  if (!v16)
  {
    sub_295702E70();
    return -12786;
  }

  v18 = v16;
  v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v17, a4, 10, 22, 0);
  if (!v19)
  {
    sub_295702DE0(v18);
    return -12786;
  }

  v25 = v19;
  v106 = 0;
  v26 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_KernelDownscaleAndCrop, v20, v21, v22, v23, v24);
  v32 = objc_msgSend_threadExecutionWidth(self->_KernelDownscaleAndCrop, v27, v28, v29, v30, v31);
  sub_2956F342C(v26, v32, &v106 + 1, &v106, v11, v13);
  v33 = (1.0 - (1.0 / a3)) * 0.5;
  v105[0] = Width / (v11 * a3);
  v105[1] = v33 * Width;
  v105[2] = Height / (v14 * a3);
  v105[3] = v33 * Height;
  v39 = objc_msgSend_commandQueue(self->_MetalContext, v34, v35, v36, v37, v38);
  v45 = objc_msgSend_commandBuffer(v39, v40, v41, v42, v43, v44);

  if (!v45)
  {
    sub_295702D50(v25, v18);
    return -12786;
  }

  v51 = objc_msgSend_computeCommandEncoder(v45, v46, v47, v48, v49, v50);
  if (!v51)
  {
    sub_295702CB8(v25, v18, v45);
    return -12786;
  }

  v56 = v51;
  objc_msgSend_setComputePipelineState_(v51, v52, self->_KernelDownscaleAndCrop, v53, v54, v55);
  objc_msgSend_setTexture_atIndex_(v56, v57, v18, 0, v58, v59);
  objc_msgSend_setTexture_atIndex_(v56, v60, v25, 1, v61, v62);
  objc_msgSend_setBytes_length_atIndex_(v56, v63, v105, 16, 0, v64);
  v104[0] = v11 / HIDWORD(v106);
  v104[1] = v13 / v106;
  v104[2] = 1;
  v103[0] = HIDWORD(v106);
  v103[1] = v106;
  v103[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v56, v65, v104, v103, v66, v67);
  objc_msgSend_endEncoding(v56, v68, v69, v70, v71, v72);
  if (*MEMORY[0x29EDB9270])
  {
    v78 = objc_msgSend_commandQueue(v45, v73, v74, v75, v76, v77);
    v84 = objc_msgSend_commandBuffer(v78, v79, v80, v81, v82, v83);

    objc_msgSend_setLabel_(v84, v85, @"KTRACE_MTLCMDBUF", v86, v87, v88);
    objc_msgSend_addCompletedHandler_(v84, v89, &unk_2A1C95968, v90, v91, v92);
    objc_msgSend_commit(v84, v93, v94, v95, v96, v97);
    objc_msgSend_addCompletedHandler_(v45, v98, &unk_2A1C95988, v99, v100, v101);
  }

  objc_msgSend_commit(v45, v73, v74, v75, v76, v77);

  return 0;
}

@end