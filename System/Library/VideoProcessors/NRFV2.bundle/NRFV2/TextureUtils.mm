@interface TextureUtils
+ (int)prewarmShaders:(id)a3;
- (TextureUtils)initWithMetalContext:(id)a3;
- (int)_fillTexturePaddedArea10BitPacked:(__CVBuffer *)a3 roi:(const CGRect *)a4 fullWidth:(unsigned int)a5 fullHeight:(unsigned int)a6 useSeparateCommandQueue:(BOOL)a7;
- (int)_fillTexturePaddedArea:(id)a3 roi:(const CGRect *)a4 useSeparateCommandQueue:(BOOL)a5;
- (int)copyTexture:(id)a3 outTex:(id)a4;
@end

@implementation TextureUtils

- (TextureUtils)initWithMetalContext:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = TextureUtils;
  v6 = [(TextureUtils *)&v28 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_metal, a3);
  v11 = objc_msgSend_device(v7->_metal, v8, v9, v10);
  v15 = objc_msgSend_newCommandQueue(v11, v12, v13, v14);
  separateCommandQueue = v7->_separateCommandQueue;
  v7->_separateCommandQueue = v15;

  if (v7->_separateCommandQueue)
  {
    v20 = objc_msgSend_sharedInstance(TextureUtilsShared, v17, v18, v19);
    v23 = objc_msgSend_getShaders_(v20, v21, v7->_metal, v22);
    shaders = v7->_shaders;
    v7->_shaders = v23;

    if (v7->_shaders)
    {
      goto LABEL_4;
    }

    sub_2958C3F2C(&v29);
  }

  else
  {
    sub_2958C3FC8(&v29);
  }

  if (v29)
  {
    v25 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v25 = v7;
LABEL_5:
  v26 = v25;

  return v26;
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v4 = [TextureUtilsShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, v3, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -12786;
  }

  return v8;
}

- (int)_fillTexturePaddedArea:(id)a3 roi:(const CGRect *)a4 useSeparateCommandQueue:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (objc_msgSend_iosurface(v8, v9, v10, v11))
  {
    v15 = objc_msgSend_iosurface(v8, v12, v13, v14);
    ID = IOSurfaceGetID(v15);
  }

  else
  {
    ID = 0;
  }

  v17 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  if (v5)
  {
    v21 = objc_msgSend_commandBuffer(self->_separateCommandQueue, v12, v13, v14);
  }

  else
  {
    v22 = objc_msgSend_commandQueue(self->_metal, v12, v13, v14);
    v21 = objc_msgSend_commandBuffer(v22, v23, v24, v25);
  }

  if (!v21)
  {
    sub_2958C4100(&v97);
    v29 = 0;
LABEL_31:
    v82 = v97;
    goto LABEL_26;
  }

  v26 = objc_msgSend_computeCommandEncoder(v21, v18, v19, v20);
  v29 = v26;
  if (!v26)
  {
    sub_2958C4064(&v97);
    goto LABEL_31;
  }

  v85 = ID;
  v86 = v21;
  v87 = v5;
  objc_msgSend_setComputePipelineState_(v26, v27, self->_shaders->_fillTexturePaddedArea, v28);
  objc_msgSend_setTexture_atIndex_(v29, v30, v8, 0);
  v34 = objc_msgSend_width(v8, v31, v32, v33);
  v88 = v8;
  v38 = objc_msgSend_height(v8, v35, v36, v37);
  v40 = v38;
  v41.i64[0] = 0;
  v41.i64[1] = __PAIR64__(v38, v34);
  v101 = v41;
  if (a4)
  {
    v101 = vuzp1q_s32(vcvtq_u64_f64(a4->origin), vcvtq_u64_f64(a4->size));
  }

  objc_msgSend_setBytes_length_atIndex_(v29, v39, &v101, 16, 0);
  objc_msgSend_setImageblockWidth_height_(v29, v42, 32, 32);
  v46 = v101;
  v47 = v101.i32[1] + v101.i32[3];
  v48 = (v101.u32[1] + 31) >> 5;
  v49 = ((v40 - (v101.i32[1] + v101.i32[3])) + 31) >> 5;
  if (v101.i32[1])
  {
    v100 = 0uLL;
    v84 = v101;
    objc_msgSend_setBytes_length_atIndex_(v29, v43, &v100, 16, 1);
    v97 = (v34 + 31) >> 5;
    v98 = v48;
    v99 = 1;
    v95 = vdupq_n_s64(0x20uLL);
    v96 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v29, v50, &v97, &v95);
    v46 = v84;
  }

  v51 = v46.u32[0];
  v52 = v46.i32[2];
  v53 = (v40 + 31) >> 5;
  if (v40 != v47)
  {
    LODWORD(v54) = 0;
    HIDWORD(v54) = 0;
    *(&v54 + 4) = (32 * (v53 - v49));
    v100 = v54;
    objc_msgSend_setBytes_length_atIndex_(v29, v43, &v100, 16, 1);
    v97 = (v34 + 31) >> 5;
    v98 = v49;
    v99 = 1;
    v95 = vdupq_n_s64(0x20uLL);
    v96 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v29, v55, &v97, &v95);
  }

  v56 = v51 + v52;
  if (v51)
  {
    LODWORD(v57) = 0;
    HIDWORD(v57) = 32 * v48;
    v100 = v57;
    objc_msgSend_setBytes_length_atIndex_(v29, v43, &v100, 16, 1);
    v97 = (v51 + 31) >> 5;
    v98 = (v53 - v48 - v49);
    v99 = 1;
    v95 = vdupq_n_s64(0x20uLL);
    v96 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v29, v58, &v97, &v95);
  }

  if (v34 != v56)
  {
    LODWORD(v59) = 32 * (((v34 + 31) >> 5) - (((v34 - v56) + 31) >> 5));
    HIDWORD(v59) = 32 * v48;
    v100 = v59;
    objc_msgSend_setBytes_length_atIndex_(v29, v43, &v100, 16, 1);
    v97 = ((v34 - v56) + 31) >> 5;
    v98 = (v53 - v48 - v49);
    v99 = 1;
    v95 = vdupq_n_s64(0x20uLL);
    v96 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v29, v60, &v97, &v95);
  }

  objc_msgSend_endEncoding(v29, v43, v44, v45);
  v17 = MEMORY[0x29EDB9270];
  v8 = v88;
  v21 = v86;
  if (*MEMORY[0x29EDB9270])
  {
    v64 = objc_msgSend_commandQueue(v86, v61, v62, v63);
    v68 = objc_msgSend_commandBuffer(v64, v65, v66, v67);

    objc_msgSend_setLabel_(v68, v69, @"KTRACE_MTLCMDBUF", v70);
    v92[0] = MEMORY[0x29EDCA5F8];
    v92[1] = 3221225472;
    v92[2] = sub_2958660E0;
    v92[3] = &unk_29EDDC490;
    v71 = v88;
    v93 = v71;
    v94 = v85;
    objc_msgSend_addCompletedHandler_(v68, v72, v92, v73);
    objc_msgSend_commit(v68, v74, v75, v76);
    v89[0] = MEMORY[0x29EDCA5F8];
    v89[1] = 3221225472;
    v89[2] = sub_295866114;
    v89[3] = &unk_29EDDC490;
    v90 = v71;
    v91 = v85;
    objc_msgSend_addCompletedHandler_(v86, v77, v89, v78);
  }

  objc_msgSend_commit(v86, v61, v62, v63);
  if (v87)
  {
    objc_msgSend_waitUntilScheduled(v86, v79, v80, v81);
  }

  v82 = 0;
LABEL_26:
  if (*v17 == 1)
  {
    kdebug_trace();
  }

  return v82;
}

- (int)_fillTexturePaddedArea10BitPacked:(__CVBuffer *)a3 roi:(const CGRect *)a4 fullWidth:(unsigned int)a5 fullHeight:(unsigned int)a6 useSeparateCommandQueue:(BOOL)a7
{
  v7 = a7;
  v109[0] = a5;
  IOSurface = CVPixelBufferGetIOSurface(a3);
  v13 = IOSurface;
  if (IOSurface)
  {
    ID = IOSurfaceGetID(IOSurface);
  }

  else
  {
    ID = 0;
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  v94 = ID;
  if (!CVPixelBufferIsPlanar(a3))
  {
    sub_2958C4544(&v103);
LABEL_27:
    v25 = 0;
LABEL_29:
    v52 = 0;
    v32 = 0;
LABEL_34:
    v92 = v103;
    v74 = MEMORY[0x29EDB9270];
    goto LABEL_21;
  }

  if (!CVPixelBufferGetPlaneCount(a3))
  {
    sub_2958C44A8(&v103);
    goto LABEL_27;
  }

  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v13, 0);
  v16 = IOSurfaceGetBaseAddressOfPlane(v13, 1uLL);
  if (BaseAddressOfPlane >= v16)
  {
    sub_2958C419C(&v103);
    goto LABEL_27;
  }

  v17 = v16;
  v95 = ID;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  v107 = BytesPerRowOfPlane >> 3;
  v108 = BytesPerRowOfPlane >> 2;
  v22 = objc_msgSend_device(self->_metal, v19, v20, v21);
  v25 = objc_msgSend_newBufferWithIOSurface_(v22, v23, v13, v24);

  if (!v25)
  {
    sub_2958C440C(&v103);
    goto LABEL_29;
  }

  v96 = v7;
  if (v7)
  {
    v32 = objc_msgSend_commandBuffer(self->_separateCommandQueue, v26, v27, v28);
  }

  else
  {
    v33 = objc_msgSend_commandQueue(self->_metal, v26, v27, v28);
    v32 = objc_msgSend_commandBuffer(v33, v34, v35, v36);
  }

  if (!v32)
  {
    sub_2958C4370(&v103);
LABEL_32:
    v52 = 0;
    goto LABEL_34;
  }

  v37 = objc_msgSend_computeCommandEncoder(v32, v29, v30, v31);
  if (!v37)
  {
    sub_2958C42D4(&v103);
    goto LABEL_32;
  }

  v40 = v37;
  objc_msgSend_setComputePipelineState_(v37, v38, self->_shaders->_fillTexturePaddedArea10BitPacked_Luma, v39);
  objc_msgSend_setBuffer_offset_atIndex_(v40, v41, v25, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v40, v42, v109, 4, 1);
  objc_msgSend_setBytes_length_atIndex_(v40, v43, &v108, 4, 2);
  v106 = vuzp1q_s32(vcvtq_u64_f64(a4->origin), vcvtq_u64_f64(a4->size));
  objc_msgSend_setBytes_length_atIndex_(v40, v44, &v106, 16, 3);
  v103 = (v109[0] + 2) / 3uLL;
  v104 = a6;
  v105 = 1;
  v101 = xmmword_2959D6450;
  v102 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v40, v45, &v103, &v101);
  objc_msgSend_endEncoding(v40, v46, v47, v48);
  v109[0] >>= 1;
  v52 = objc_msgSend_computeCommandEncoder(v32, v49, v50, v51);

  if (!v52)
  {
    sub_2958C4238(&v103);
    goto LABEL_34;
  }

  objc_msgSend_setComputePipelineState_(v52, v53, self->_shaders->_fillTexturePaddedArea10BitPacked_Chroma, v54);
  objc_msgSend_setBuffer_offset_atIndex_(v52, v55, v25, (v17 - BaseAddressOfPlane), 0);
  objc_msgSend_setBytes_length_atIndex_(v52, v56, v109, 4, 1);
  objc_msgSend_setBytes_length_atIndex_(v52, v57, &v107, 4, 2);
  x = a4->origin.x;
  y = a4->origin.y;
  width = a4->size.width;
  height = a4->size.height;
  makeChromaROI();
  v63.f64[1] = v62;
  v65.f64[1] = v64;
  v106 = vuzp1q_s32(vcvtq_u64_f64(v63), vcvtq_u64_f64(v65));
  objc_msgSend_setBytes_length_atIndex_(v52, v66, &v106, 16, 3);
  v103 = (v109[0] + 2) / 3uLL;
  v104 = a6 >> 1;
  v105 = 1;
  v101 = xmmword_2959D6450;
  v102 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v52, v67, &v103, &v101);
  objc_msgSend_endEncoding(v52, v68, v69, v70);
  v74 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270])
  {
    v75 = objc_msgSend_commandQueue(v32, v71, v72, v73);
    v79 = objc_msgSend_commandBuffer(v75, v76, v77, v78);

    objc_msgSend_setLabel_(v79, v80, @"KTRACE_MTLCMDBUF", v81);
    v99[0] = MEMORY[0x29EDCA5F8];
    v99[1] = 3221225472;
    v99[2] = sub_2958666DC;
    v99[3] = &unk_29EDDC4B0;
    v99[4] = a3;
    v100 = v95;
    objc_msgSend_addCompletedHandler_(v79, v82, v99, v83);
    objc_msgSend_commit(v79, v84, v85, v86);
    v97[0] = MEMORY[0x29EDCA5F8];
    v97[1] = 3221225472;
    v97[2] = sub_295866710;
    v97[3] = &unk_29EDDC4B0;
    v97[4] = a3;
    v98 = v95;
    objc_msgSend_addCompletedHandler_(v32, v87, v97, v88);
  }

  objc_msgSend_commit(v32, v71, v72, v73, v94);
  if (v96)
  {
    objc_msgSend_waitUntilScheduled(v32, v89, v90, v91);
  }

  v92 = 0;
LABEL_21:
  if (*v74 == 1)
  {
    kdebug_trace();
  }

  return v92;
}

- (int)copyTexture:(id)a3 outTex:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_commandQueue(self->_metal, v8, v9, v10);
  v15 = objc_msgSend_commandBuffer(v11, v12, v13, v14);

  if (!v15)
  {
    sub_2958C4AD8(v56);
LABEL_22:
    v53 = v56[0];
    v33 = v7;
    goto LABEL_19;
  }

  v19 = objc_msgSend_computeCommandEncoder(v15, v16, v17, v18);
  if (!v19)
  {
    sub_2958C4A3C(v56);
    goto LABEL_22;
  }

  v23 = v19;
  isCompressed = objc_msgSend_isCompressed(v7, v20, v21, v22);
  if (isCompressed)
  {
    v28 = 32;
  }

  else
  {
    v28 = 4;
  }

  if (isCompressed)
  {
    v29 = 32;
  }

  else
  {
    v29 = 64;
  }

  if ((objc_msgSend_isCompressed(v7, v25, v26, v27) & 1) != 0 || objc_msgSend_pixelFormat(v7, v30, v31, v32) != 588)
  {
    if ((objc_msgSend_isCompressed(v7, v30, v31, v32) & 1) != 0 || objc_msgSend_pixelFormat(v7, v34, v37, v35) != 589)
    {
      v36 = 48;
      v33 = v7;
      goto LABEL_18;
    }

    v33 = objc_msgSend_rebindTex_format_usage_plane_xFactor_(self->_metal, v34, v7, 103, 6, 1, 3);

    if (v33)
    {
      v36 = 40;
      goto LABEL_18;
    }

    sub_2958C4988(v23, v56);
LABEL_25:
    v53 = v56[0];
    goto LABEL_19;
  }

  v33 = objc_msgSend_rebindTex_format_usage_plane_xFactor_(self->_metal, v30, v7, 53, 6, 0, 3);

  if (!v33)
  {
    sub_2958C48D4(v23, v56);
    goto LABEL_25;
  }

  v36 = 32;
LABEL_18:
  objc_msgSend_setComputePipelineState_(v23, v34, *(&self->_shaders->super.isa + v36), v35);
  objc_msgSend_setTexture_atIndex_(v23, v38, v6, 0);
  objc_msgSend_setTexture_atIndex_(v23, v39, v33, 1);
  v56[0] = objc_msgSend_width(v33, v40, v41, v42);
  v56[1] = objc_msgSend_height(v33, v43, v44, v45);
  v56[2] = 1;
  v55[0] = v29;
  v55[1] = v28;
  v55[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v23, v46, v56, v55);
  objc_msgSend_endEncoding(v23, v47, v48, v49);
  objc_msgSend_commit(v15, v50, v51, v52);

  v53 = 0;
LABEL_19:

  return v53;
}

@end