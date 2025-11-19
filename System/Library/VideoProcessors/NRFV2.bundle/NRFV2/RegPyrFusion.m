@interface RegPyrFusion
+ (int)prewarmShaders:(id)a3;
+ (void)calculatePyramidDimensions:(float)a3 pyrWidths:(int *)a4 pyrHeights:(int *)a5 topLevelIndex:(int)a6 maxDim:(int)a7 minDim:(int)a8;
- (RegPyrFusion)fusionWithCommandBuffer:(id)a3 refTex:(id)a4 refDerivTex:(id)a5 nonRefDerivTex:(id)a6 prevShiftMap:(id)a7 nextShiftMap:(id)a8 homography:(id)a9 pyrLevel:(int)a10;
- (RegPyrFusion)initWithMetalContext:(id)a3;
- (int)basicSearchWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 refDerivTex:(id)a5 nonRefDerivTex:(id)a6 prevShiftMap:(id)a7 nextShiftMap:(id)a8 homography:(id)a9 pyrLevel:(int)a10;
- (int)bilinearScaleWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 refTexIn:(id)a5 refTexOut:(id)a6 nonRefTexIn:(id)a7 nonRefTexOut:(id)a8 pyrLevel:(int)a9;
- (int)confidenceMapWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 shiftMap:(id)a5 confidenceOut:(id)a6;
- (int)generateDerivativesWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 inputTex:(id)a5 outputTex:(id)a6;
- (int)initialDownScaleWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 refTex:(id)a5 nonRefTex:(id)a6 refTexOut:(id)a7 nonRefTexOut:(id)a8 refCamType:(int)a9;
- (int)registerImagesWithReferenceImg:(id)a3 nonRefImage:(id)a4 refTexlvl1:(id)a5 nonRefTexlvl1:(id)a6 shiftMap:(id)a7 confidenceMap:(id)a8;
- (int)selectionWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 refDerivTex:(id)a5 nonRefDerivTex:(id)a6 prevShiftMap:(id)a7 nextShiftMap:(id)a8 homography:(id)a9 pyrLevel:(int)a10;
- (int)setupPyramidScalersUsingCalib;
- (int)smoothShiftMapWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 input:(id)a5 output:(id)a6;
- (void)scaleHomographyUsingCalib:(id *)a3 to:(id *)a4;
@end

@implementation RegPyrFusion

+ (void)calculatePyramidDimensions:(float)a3 pyrWidths:(int *)a4 pyrHeights:(int *)a5 topLevelIndex:(int)a6 maxDim:(int)a7 minDim:(int)a8
{
  v13 = log2f(a7);
  if (a6 < 2)
  {
    v14 = 0.0;
    if (a6 != 1)
    {
      return;
    }
  }

  else
  {
    v14 = (v13 - log2f(a8)) / (a6 - 1);
  }

  v15 = 0;
  v16 = sqrtf(1.0 / a3);
  do
  {
    v17 = (ceilf((v16 * exp2f(v13 - (v15 * v14))) / 6.0) * 6.0);
    a4[v15] = (v17 * a3);
    a5[v15++] = v17;
  }

  while (a6 != v15);
}

- (RegPyrFusion)initWithMetalContext:(id)a3
{
  v5 = a3;
  v65.receiver = self;
  v65.super_class = RegPyrFusion;
  v6 = [(RegPyrFusion *)&v65 init];
  v7 = v6;
  if (!v6)
  {
    sub_2958905B0(&v66);
    goto LABEL_26;
  }

  objc_storeStrong(&v6->_metal, a3);
  if (!v7->_metal)
  {
    sub_295890504(&v66);
    goto LABEL_26;
  }

  v8 = objc_opt_new();
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setStorageMode_(v8, v9, 0, v10);
    objc_msgSend_setHazardTrackingMode_(v11, v12, 2, v13);
    objc_msgSend_setSize_(v11, v14, 20480, v15);
    v19 = objc_msgSend_device(v7->_metal, v16, v17, v18);
    v22 = objc_msgSend_newHeapWithDescriptor_(v19, v20, v11, v21);
    uniformsHeap = v7->_uniformsHeap;
    v7->_uniformsHeap = v22;

    if (v7->_uniformsHeap)
    {
      pyrHomographyTeleIsRef = v7->_pyrHomographyTeleIsRef;
      pyrHomographyWideIsRef = v7->_pyrHomographyWideIsRef;
      v29 = 20;
      do
      {
        --v29;
        v30 = v7->_uniformsHeap;
        v31 = objc_msgSend_resourceOptions(v30, v24, v25, v26);
        v33 = objc_msgSend_newBufferWithLength_options_(v30, v32, 48, v31);
        v34 = pyrHomographyTeleIsRef[v29];
        pyrHomographyTeleIsRef[v29] = v33;

        if (!pyrHomographyTeleIsRef[v29])
        {
          sub_295890300(&v66);
          goto LABEL_17;
        }

        v38 = v7->_uniformsHeap;
        v39 = objc_msgSend_resourceOptions(v38, v35, v36, v37);
        v41 = objc_msgSend_newBufferWithLength_options_(v38, v40, 48, v39);
        v42 = pyrHomographyWideIsRef[v29];
        pyrHomographyWideIsRef[v29] = v41;

        if (!pyrHomographyWideIsRef[v29])
        {
          sub_295890254(&v66);
          goto LABEL_17;
        }
      }

      while (v29 >= 2);

      v46 = objc_msgSend_sharedInstance(RegPyrFusionShared, v43, v44, v45);
      v49 = objc_msgSend_getShaders_(v46, v47, v7->_metal, v48);
      shaders = v7->_shaders;
      v7->_shaders = v49;

      if (v7->_shaders)
      {
        v51 = objc_opt_new();
        refPyr = v7->_refPyr;
        v7->_refPyr = v51;

        v53 = v7->_refPyr;
        if (v53)
        {
          v53->levels = 11;
          v54 = objc_opt_new();
          nonRefPyr = v7->_nonRefPyr;
          v7->_nonRefPyr = v54;

          v58 = v7->_nonRefPyr;
          if (v58)
          {
            v58->levels = 11;
            objc_msgSend_prewarmRenderers_(RegPyrFusion, v56, v7->_metal, v57);
            LODWORD(v59) = 1068149419;
            objc_msgSend_calculatePyramidDimensions_pyrWidths_pyrHeights_topLevelIndex_maxDim_minDim_(RegPyrFusion, v60, &v7->_pyrWidths[1], &v7->_pyrHeights[1], 10, 1024, 32, v59);
            goto LABEL_13;
          }

          sub_295890050(&v66);
        }

        else
        {
          sub_2958900FC(&v66);
        }
      }

      else
      {
        sub_2958901A8(&v66);
      }

LABEL_26:
      if (!v66)
      {
        goto LABEL_13;
      }

LABEL_18:
      v61 = 0;
      goto LABEL_14;
    }

    sub_2958903AC(&v66);
  }

  else
  {
    sub_295890458(&v66);
  }

LABEL_17:
  v64 = v66;

  if (v64)
  {
    goto LABEL_18;
  }

LABEL_13:
  v61 = v7;
LABEL_14:
  v62 = v61;

  return v62;
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v4 = [RegPyrFusionShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, v3, v6);

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = -12786;
  }

  objc_msgSend_prewarmRenderers_(RegPyrFusion, v8, v3, v9);

  return v10;
}

- (void)scaleHomographyUsingCalib:(id *)a3 to:(id *)a4
{
  v7 = truncf((a3[2].var1.var1.var0 - a3[2].var1.var0.var0) + 1.0);
  v8 = truncf((a3[2].var1.var1.var1 - a3[2].var1.var0.var1) + 1.0);
  *&v4 = self->_pyrWidths[1];
  v9 = self->_pyrHeights[1];
  *&v58 = truncf((a3[1].var2.var1.var0 - a3[1].var2.var0.var0) + 1.0) / *&v4;
  v61 = truncf((a3[1].var2.var1.var1 - a3[1].var2.var0.var1) + 1.0) / v9;
  v54 = v9;
  v55 = v4;
  v65 = 0u;
  v66 = 0u;
  v10 = v7 / *&v4;
  v64 = 0u;
  var2 = a3->var2;
  var1 = a3[1].var1;
  v73 = a3->var1;
  v74 = var2;
  v75 = var1;
  v70 = xmmword_2959D5E20;
  v71 = xmmword_2959D5E30;
  v72 = xmmword_2959D5E40;
  v67 = xmmword_2959D5E50;
  v68 = xmmword_2959D5E60;
  v69 = xmmword_2959D5E40;
  v13 = v8 / v9;
  v14 = sub_29581A3D8(&v70, &v73, &v67);
  v64.i32[2] = v15;
  DWORD2(v65) = v16;
  *v64.i64 = v14;
  *&v65 = v17;
  DWORD2(v66) = v18;
  *&v66 = v19;
  LODWORD(v19) = 0;
  *(&v19 + 1) = 1.0 / v13;
  v73 = COERCE_UNSIGNED_INT(1.0 / v10);
  v74 = v19;
  v75 = xmmword_2959D5E40;
  LODWORD(v17) = 0;
  *(&v17 + 1) = v61;
  v70 = v58;
  v71 = v17;
  v72 = xmmword_2959D5E40;
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  v20 = sub_29581A3D8(&v73, &v64, &v70);
  DWORD2(v67) = v21;
  DWORD2(v68) = v22;
  *&v67 = v20;
  *&v68 = v23.i64[0];
  DWORD2(v69) = v24;
  v23.i32[1] = 0;
  v23.i32[3] = 0;
  v23.f32[0] = 1.0 / *&v55;
  *&v69 = v25;
  v23.f32[2] = -0.5 / *&v55;
  LODWORD(v25) = 0;
  *(&v25 + 1) = 1.0 / v54;
  v52 = v25;
  v26 = v25;
  *(&v26 + 2) = -0.5 / v54;
  v27 = v55;
  DWORD1(v27) = 0;
  DWORD2(v27) = 0.5;
  v73 = v23;
  v74 = v26;
  LODWORD(v26) = 0;
  *(&v26 + 1) = v54;
  v53 = v26;
  LODWORD(v26) = 0;
  v75 = xmmword_2959D5E40;
  *(&v26 + 1) = COERCE_UNSIGNED_INT(0.5);
  v70 = v27;
  v71 = v26;
  v72 = xmmword_2959D5E40;
  *&v28 = sub_29581A3D8(&v73, &v67, &v70);
  v56 = v28;
  v59 = v29;
  v62 = v30;
  v31 = a4[1];
  v35 = objc_msgSend_contents(v31, v32, v33, v34);
  *v35 = v56;
  *(v35 + 8) = DWORD2(v56);
  *(v35 + 16) = v59;
  *(v35 + 24) = DWORD2(v59);
  *(v35 + 32) = v62;
  *(v35 + 40) = DWORD2(v62);
  v36 = &self->_pyrHeights[2];
  for (i = 2; i != 11; ++i)
  {
    v38 = *(v36 - 20);
    v39 = *v36++;
    v41 = v52;
    v40 = COERCE_UNSIGNED_INT(1.0 / *&v55);
    v40.f32[2] = -0.5 / v38;
    v41.var1.var0 = -0.5 / v39;
    v73 = v40;
    v74 = v41;
    v75 = xmmword_2959D5E40;
    v42 = v55;
    v42.f32[2] = (*&v55 / v38) * 0.5;
    v43 = v53;
    *(&v43 + 2) = (v54 / v39) * 0.5;
    v70 = v42;
    v71 = v43;
    v72 = xmmword_2959D5E40;
    *&v44 = sub_29581A3D8(&v73, &v67, &v70);
    v57 = v44;
    v60 = v45;
    v63 = v46;
    v47 = a4[i];
    v51 = objc_msgSend_contents(v47, v48, v49, v50);
    *(v51 + 8) = DWORD2(v57);
    *v51 = v57;
    *(v51 + 16) = v60;
    *(v51 + 24) = DWORD2(v60);
    *(v51 + 32) = v63;
    *(v51 + 40) = DWORD2(v63);
  }
}

- (int)setupPyramidScalersUsingCalib
{
  v5 = objc_msgSend_device(self->_metal, a2, v2, v3);
  v7 = objc_msgSend_newBufferWithLength_options_(v5, v6, 16, 0);
  v8 = self->_pyrScaleParamLevel0[1];
  self->_pyrScaleParamLevel0[1] = v7;

  if (self->_pyrScaleParamLevel0[1])
  {
    v12 = objc_msgSend_device(self->_metal, v9, v10, v11);
    v14 = objc_msgSend_newBufferWithLength_options_(v12, v13, 16, 0);
    v15 = self->_pyrScaleParamLevel0[0];
    self->_pyrScaleParamLevel0[0] = v14;

    if (self->_pyrScaleParamLevel0[0])
    {
      v19 = objc_msgSend_device(self->_metal, v16, v17, v18);
      v21 = objc_msgSend_newBufferWithLength_options_(v19, v20, 16, 0);
      v22 = self->_pyrRoiScaleLevel0[1];
      self->_pyrRoiScaleLevel0[1] = v21;

      if (self->_pyrRoiScaleLevel0[1])
      {
        v26 = objc_msgSend_device(self->_metal, v23, v24, v25);
        v28 = objc_msgSend_newBufferWithLength_options_(v26, v27, 16, 0);
        v29 = self->_pyrRoiScaleLevel0[0];
        self->_pyrRoiScaleLevel0[0] = v28;

        if (self->_pyrRoiScaleLevel0[0])
        {
          v30 = self->_pyrWidths[1];
          v31 = self->_pyrHeights[1];
          v32 = self->_pyrScaleParamLevel0[1];
          v36 = objc_msgSend_contents(v32, v33, v34, v35);
          if (v36)
          {
            v37 = v30;
            v38 = v31;
            *&v39 = ((self->_wideIsRefCalibData[1].var2.var1.var0 - self->_wideIsRefCalibData[1].var2.var0.var0) + 1.0) / v37;
            *v36 = v39;
            *(&v39 + 1) = ((self->_wideIsRefCalibData[1].var2.var1.var1 - self->_wideIsRefCalibData[1].var2.var0.var1) + 1.0) / v31;
            *v36 = v39;
            *&v39 = ((self->_wideIsRefCalibData[2].var1.var1.var0 - self->_wideIsRefCalibData[2].var1.var0.var0) + 1.0) / v37;
            v36[2] = v39;
            *(&v39 + 1) = ((self->_wideIsRefCalibData[2].var1.var1.var1 - self->_wideIsRefCalibData[2].var1.var0.var1) + 1.0) / v31;
            *(v36 + 1) = v39;
            v40 = self->_pyrRoiScaleLevel0[1];
            v44 = objc_msgSend_contents(v40, v41, v42, v43);
            if (v44)
            {
              var0 = self->_wideIsRefCalibData[1].var2.var0.var0;
              *v44 = var0;
              LODWORD(v46) = var0;
              HIDWORD(v46) = self->_wideIsRefCalibData[1].var2.var0.var1;
              *v44 = v46;
              v47 = self->_wideIsRefCalibData[1].var2.var1.var0;
              v44[2] = v47;
              LODWORD(v46) = v47;
              HIDWORD(v46) = self->_wideIsRefCalibData[1].var2.var1.var1;
              *(v44 + 1) = v46;
              v48 = self->_pyrScaleParamLevel0[0];
              v52 = objc_msgSend_contents(v48, v49, v50, v51);
              if (!v52)
              {
                sub_29589065C();
              }

              *&v53 = ((self->_teleIsRefCalibData[1].var2.var1.var0 - self->_teleIsRefCalibData[1].var2.var0.var0) + 1.0) / v37;
              v52[2] = v53;
              *(&v53 + 1) = ((self->_teleIsRefCalibData[1].var2.var1.var1 - self->_teleIsRefCalibData[1].var2.var0.var1) + 1.0) / v38;
              *(v52 + 1) = v53;
              *&v53 = ((self->_teleIsRefCalibData[2].var1.var1.var0 - self->_teleIsRefCalibData[2].var1.var0.var0) + 1.0) / v37;
              *v52 = v53;
              *(&v53 + 1) = ((self->_teleIsRefCalibData[2].var1.var1.var1 - self->_teleIsRefCalibData[2].var1.var0.var1) + 1.0) / v38;
              *v52 = v53;
              v54 = self->_pyrRoiScaleLevel0[0];
              v58 = objc_msgSend_contents(v54, v55, v56, v57);
              if (v58)
              {
                v59 = v58;
                result = 0;
                v61 = self->_teleIsRefCalibData[2].var1.var0.var0;
                *v59 = v61;
                LODWORD(v62) = v61;
                HIDWORD(v62) = self->_teleIsRefCalibData[2].var1.var0.var1;
                *v59 = v62;
                v63 = self->_teleIsRefCalibData[2].var1.var1.var0;
                v59[2] = v63;
                LODWORD(v62) = v63;
                HIDWORD(v62) = self->_teleIsRefCalibData[2].var1.var1.var1;
                *(v59 + 1) = v62;
                return result;
              }

              sub_2958906CC(&v64);
            }

            else
            {
              sub_295890778(&v64);
            }
          }

          else
          {
            sub_295890824(&v64);
          }
        }

        else
        {
          sub_2958908D0(&v64);
        }
      }

      else
      {
        sub_29589097C(&v64);
      }
    }

    else
    {
      sub_295890A28(&v64);
    }
  }

  else
  {
    sub_295890AD4(&v64);
  }

  return v64;
}

- (int)generateDerivativesWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 inputTex:(id)a5 outputTex:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v129 = 0;
  v17 = objc_msgSend_allocator(self->_metal, v14, v15, v16);
  v20 = objc_msgSend_newTextureDescriptor_(v17, v18, 0, v19);

  if (!v20)
  {
    sub_295890DBC(v128);
LABEL_12:
    v121 = v128[0];
    goto LABEL_8;
  }

  v24 = objc_msgSend_width(v12, v21, v22, v23);
  v28 = objc_msgSend_desc(v20, v25, v26, v27);
  objc_msgSend_setWidth_(v28, v29, v24, v30);

  v34 = objc_msgSend_height(v12, v31, v32, v33);
  v38 = objc_msgSend_desc(v20, v35, v36, v37);
  objc_msgSend_setHeight_(v38, v39, v34, v40);

  v44 = objc_msgSend_desc(v20, v41, v42, v43);
  objc_msgSend_setUsage_(v44, v45, 7, v46);

  v50 = objc_msgSend_desc(v20, v47, v48, v49);
  objc_msgSend_setPixelFormat_(v50, v51, 65, v52);

  objc_msgSend_setLabel_(v20, v53, 0, v54);
  v58 = objc_msgSend_allocator(self->_metal, v55, v56, v57);
  v60 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v58, v59, v20, 0);
  v129 = v60;

  if (!v60)
  {
    sub_295890D10(v128);
    goto LABEL_12;
  }

  v64 = objc_msgSend_colorAttachments(v11, v61, v62, v63);
  v67 = objc_msgSend_objectAtIndexedSubscript_(v64, v65, 0, v66);
  objc_msgSend_setTexture_(v67, v68, v60, v69);

  v72 = objc_msgSend_renderCommandEncoderWithDescriptor_(v10, v70, v11, v71);
  if (!v72)
  {
    sub_295890C54();
    goto LABEL_12;
  }

  v76 = v72;
  v125 = v13;
  v77 = objc_msgSend_fullRangeVertexBuf(self->_metal, v73, v74, v75);
  objc_msgSend_setVertexBuffer_offset_atIndex_(v76, v78, v77, 0, 0);

  objc_msgSend_setFragmentTexture_atIndex_(v76, v79, v12, 0);
  objc_msgSend_setRenderPipelineState_(v76, v80, self->_shaders->_derivSobelPipelineState, v81);
  objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v76, v82, 4, 0, 4);
  objc_msgSend_endEncoding(v76, v83, v84, v85);
  v89 = objc_msgSend_width(v12, v86, v87, v88);
  v93 = objc_msgSend_height(v12, v90, v91, v92);
  v97 = objc_msgSend_computeCommandEncoder(v10, v94, v95, v96);
  if (v97)
  {
    v101 = v97;
    v123 = v11;
    v124 = v10;
    v102 = (v89 + 31) >> 5;
    v103 = (v93 + 31) >> 5;
    v104 = objc_msgSend_allocator(self->_metal, v98, v99, v100);
    v108 = objc_msgSend_allocatorType(v104, v105, v106, v107);

    if (v108 == 2)
    {
      objc_msgSend_insertCompressedTextureReinterpretationFlush(v101, v109, v110, v111);
    }

    objc_msgSend_setImageblockWidth_height_(v101, v109, 32, 32);
    objc_msgSend_setComputePipelineState_(v101, v112, self->_shaders->_derivPipelineState, v113);
    objc_msgSend_setTexture_atIndex_(v101, v114, v12, 0);
    objc_msgSend_setTexture_atIndex_(v101, v115, v60, 1);
    v13 = v125;
    objc_msgSend_setTexture_atIndex_(v101, v116, v125, 2);
    v128[0] = v102;
    v128[1] = v103;
    v128[2] = 1;
    v126 = vdupq_n_s64(0x10uLL);
    v127 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v101, v117, v128, &v126);
    objc_msgSend_endEncoding(v101, v118, v119, v120);
    FigMetalDecRef();

    v121 = 0;
    v11 = v123;
    v10 = v124;
  }

  else
  {
    sub_295890B80(v60, v76, v128);
    v121 = v128[0];
    v13 = v125;
  }

LABEL_8:

  return v121;
}

- (int)basicSearchWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 refDerivTex:(id)a5 nonRefDerivTex:(id)a6 prevShiftMap:(id)a7 nextShiftMap:(id)a8 homography:(id)a9 pyrLevel:(int)a10
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = a8;
  v21 = a4;
  v22 = a3;
  v26 = objc_msgSend_colorAttachments(v21, v23, v24, v25);
  v29 = objc_msgSend_objectAtIndexedSubscript_(v26, v27, 0, v28);
  objc_msgSend_setTexture_(v29, v30, v20, v31);

  v34 = objc_msgSend_renderCommandEncoderWithDescriptor_(v22, v32, v21, v33);

  if (v34)
  {
    v38 = objc_msgSend_fullRangeVertexBuf(self->_metal, v35, v36, v37);
    objc_msgSend_setVertexBuffer_offset_atIndex_(v34, v39, v38, 0, 0);

    objc_msgSend_setFragmentTexture_atIndex_(v34, v40, v16, 0);
    objc_msgSend_setFragmentTexture_atIndex_(v34, v41, v17, 1);
    objc_msgSend_setFragmentTexture_atIndex_(v34, v42, v18, 2);
    objc_msgSend_setFragmentBuffer_offset_atIndex_(v34, v43, v19, 0, 0);
    objc_msgSend_setRenderPipelineState_(v34, v44, self->_shaders->_basicSearchLumaPipelineState, v45);
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v34, v46, 4, 0, 4);
    objc_msgSend_endEncoding(v34, v47, v48, v49);
    v50 = 0;
  }

  else
  {
    sub_295890E68(&v52);
    v50 = v52;
  }

  return v50;
}

- (int)smoothShiftMapWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 input:(id)a5 output:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v17 = objc_msgSend_colorAttachments(v12, v14, v15, v16);
  v20 = objc_msgSend_objectAtIndexedSubscript_(v17, v18, 0, v19);
  objc_msgSend_setTexture_(v20, v21, v11, v22);

  v25 = objc_msgSend_renderCommandEncoderWithDescriptor_(v13, v23, v12, v24);

  if (v25)
  {
    v29 = objc_msgSend_fullRangeVertexBuf(self->_metal, v26, v27, v28);
    objc_msgSend_setVertexBuffer_offset_atIndex_(v25, v30, v29, 0, 0);

    objc_msgSend_setFragmentTexture_atIndex_(v25, v31, v10, 0);
    objc_msgSend_setRenderPipelineState_(v25, v32, self->_shaders->_smoothPipelineState, v33);
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v25, v34, 4, 0, 4);
    objc_msgSend_endEncoding(v25, v35, v36, v37);
    v38 = 0;
  }

  else
  {
    sub_295890F14(&v40);
    v38 = v40;
  }

  return v38;
}

- (int)selectionWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 refDerivTex:(id)a5 nonRefDerivTex:(id)a6 prevShiftMap:(id)a7 nextShiftMap:(id)a8 homography:(id)a9 pyrLevel:(int)a10
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = a8;
  v21 = a4;
  v22 = a3;
  v26 = objc_msgSend_colorAttachments(v21, v23, v24, v25);
  v29 = objc_msgSend_objectAtIndexedSubscript_(v26, v27, 0, v28);
  objc_msgSend_setTexture_(v29, v30, v20, v31);

  v35 = objc_msgSend_width(v16, v32, v33, v34);
  v39 = objc_msgSend_height(v16, v36, v37, v38);
  v42 = objc_msgSend_renderCommandEncoderWithDescriptor_(v22, v40, v21, v41);

  if (v42)
  {
    v46 = objc_msgSend_fullRangeVertexBuf(self->_metal, v43, v44, v45);
    objc_msgSend_setVertexBuffer_offset_atIndex_(v42, v47, v46, 0, 0);

    objc_msgSend_setFragmentTexture_atIndex_(v42, v48, v16, 0);
    objc_msgSend_setFragmentTexture_atIndex_(v42, v49, v17, 1);
    objc_msgSend_setFragmentTexture_atIndex_(v42, v50, v18, 2);
    objc_msgSend_setFragmentBuffer_offset_atIndex_(v42, v51, v19, 0, 0);
    v61 = 2.0 / (1024.0 / sqrtf((v39 * v35)));
    objc_msgSend_setFragmentBytes_length_atIndex_(v42, v52, &v61, 4, 1);
    objc_msgSend_setRenderPipelineState_(v42, v53, self->_shaders->_selectionLumaPipelineState, v54);
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v42, v55, 4, 0, 4);
    objc_msgSend_endEncoding(v42, v56, v57, v58);
    v59 = 0;
  }

  else
  {
    sub_295890FC0(&v62);
    v59 = v62;
  }

  return v59;
}

- (RegPyrFusion)fusionWithCommandBuffer:(id)a3 refTex:(id)a4 refDerivTex:(id)a5 nonRefDerivTex:(id)a6 prevShiftMap:(id)a7 nextShiftMap:(id)a8 homography:(id)a9 pyrLevel:(int)a10
{
  v141 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v143 = a8;
  v20 = a9;
  v146 = 0;
  v24 = objc_msgSend_allocator(self->_metal, v21, v22, v23);
  v28 = objc_msgSend_newTextureDescriptor(v24, v25, v26, v27);

  if (v28)
  {
    v32 = objc_msgSend_width(v19, v29, v30, v31);
    v36 = objc_msgSend_desc(v28, v33, v34, v35);
    objc_msgSend_setWidth_(v36, v37, v32, v38);

    v42 = objc_msgSend_height(v19, v39, v40, v41);
    v46 = objc_msgSend_desc(v28, v43, v44, v45);
    objc_msgSend_setHeight_(v46, v47, v42, v48);

    v52 = objc_msgSend_desc(v28, v49, v50, v51);
    objc_msgSend_setPixelFormat_(v52, v53, 115, v54);

    objc_msgSend_setLabel_(v28, v55, 0, v56);
    v60 = objc_msgSend_allocator(self->_metal, v57, v58, v59);
    v140 = v28;
    v63 = objc_msgSend_newTextureWithDescriptor_(v60, v61, v28, v62);
    v146 = v63;

    if (v63)
    {
      v142 = v19;
      v67 = objc_msgSend_renderPassDescriptor(MEMORY[0x29EDBB5F8], v64, v65, v66);
      if (v67)
      {
        v71 = v67;
        v72 = objc_msgSend_colorAttachments(v67, v68, v69, v70);
        v75 = objc_msgSend_objectAtIndexedSubscript_(v72, v73, 0, v74);
        objc_msgSend_setTexture_(v75, v76, v63, v77);

        v81 = objc_msgSend_width(v17, v78, v79, v80);
        v85 = objc_msgSend_height(v17, v82, v83, v84);
        v88 = objc_msgSend_renderCommandEncoderWithDescriptor_(v141, v86, v71, v87);
        if (v88)
        {
          v92 = v88;
          v93 = 1.3 / (1024.0 / sqrtf((v85 * v81)));
          v94 = objc_msgSend_fullRangeVertexBuf(self->_metal, v89, v90, v91);
          objc_msgSend_setVertexBuffer_offset_atIndex_(v92, v95, v94, 0, 0);

          objc_msgSend_setFragmentTexture_atIndex_(v92, v96, v16, 0);
          objc_msgSend_setFragmentTexture_atIndex_(v92, v97, v17, 1);
          objc_msgSend_setFragmentTexture_atIndex_(v92, v98, v18, 2);
          objc_msgSend_setFragmentTexture_atIndex_(v92, v99, v142, 3);
          objc_msgSend_setFragmentBuffer_offset_atIndex_(v92, v100, v20, 0, 0);
          v145 = v93;
          objc_msgSend_setFragmentBytes_length_atIndex_(v92, v101, &v145, 4, 1);
          objc_msgSend_setRenderPipelineState_(v92, v102, self->_shaders->_fusionXLumaPipelineState, v103);
          objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v92, v104, 4, 0, 4);
          objc_msgSend_endEncoding(v92, v105, v106, v107);
          v111 = objc_msgSend_colorAttachments(v71, v108, v109, v110);
          v114 = objc_msgSend_objectAtIndexedSubscript_(v111, v112, 0, v113);
          objc_msgSend_setTexture_(v114, v115, v143, v116);

          v119 = objc_msgSend_renderCommandEncoderWithDescriptor_(v141, v117, v71, v118);

          v123 = v141;
          if (v119)
          {
            v124 = objc_msgSend_fullRangeVertexBuf(self->_metal, v120, v121, v122);
            objc_msgSend_setVertexBuffer_offset_atIndex_(v119, v125, v124, 0, 0);

            objc_msgSend_setFragmentTexture_atIndex_(v119, v126, v16, 0);
            objc_msgSend_setFragmentTexture_atIndex_(v119, v127, v17, 1);
            objc_msgSend_setFragmentTexture_atIndex_(v119, v128, v18, 2);
            objc_msgSend_setFragmentTexture_atIndex_(v119, v129, v63, 3);
            objc_msgSend_setFragmentBuffer_offset_atIndex_(v119, v130, v20, 0, 0);
            v144 = v93;
            objc_msgSend_setFragmentBytes_length_atIndex_(v119, v131, &v144, 4, 1);
            objc_msgSend_setRenderPipelineState_(v119, v132, self->_shaders->_fusionYLumaPipelineState, v133);
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v119, v134, 4, 0, 4);
            objc_msgSend_endEncoding(v119, v135, v136, v137);
            FigMetalDecRef();

            v138 = 0;
          }

          else
          {
            sub_29589106C(v71, &v147);
            v138 = v147;
          }
        }

        else
        {
          sub_295891128();
          v138 = v147;
          v123 = v141;
        }
      }

      else
      {
        sub_2958911E4(&v147);
        v138 = v147;
        v123 = v141;
      }

      v19 = v142;
    }

    else
    {
      sub_295891290(&v147);
      v138 = v147;
      v123 = v141;
    }

    v28 = v140;
  }

  else
  {
    sub_29589133C(&v147);
    v138 = v147;
    v123 = v141;
  }

  return v138;
}

- (int)confidenceMapWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 shiftMap:(id)a5 confidenceOut:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17 = objc_msgSend_allocator(self->_metal, v14, v15, v16, 0);
  v21 = objc_msgSend_newTextureDescriptor(v17, v18, v19, v20);

  if (!v21)
  {
    sub_2958916C8(&v132);
LABEL_13:
    v130 = v132;
    goto LABEL_7;
  }

  v25 = objc_msgSend_colorAttachments(v11, v22, v23, v24);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0, v27);
  objc_msgSend_setTexture_(v28, v29, v13, v30);

  v33 = objc_msgSend_renderCommandEncoderWithDescriptor_(v10, v31, v11, v32);
  if (!v33)
  {
    sub_29589161C(&v132);
    goto LABEL_13;
  }

  v37 = v33;
  v38 = objc_msgSend_fullRangeVertexBuf(self->_metal, v34, v35, v36);
  objc_msgSend_setVertexBuffer_offset_atIndex_(v37, v39, v38, 0, 0);

  objc_msgSend_setFragmentTexture_atIndex_(v37, v40, v12, 0);
  objc_msgSend_setRenderPipelineState_(v37, v41, self->_shaders->_confidenceStageOne, v42);
  objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v37, v43, 4, 0, 4);
  objc_msgSend_endEncoding(v37, v44, v45, v46);
  v50 = objc_msgSend_width(v12, v47, v48, v49);
  v54 = objc_msgSend_desc(v21, v51, v52, v53);
  objc_msgSend_setWidth_(v54, v55, v50, v56);

  v60 = objc_msgSend_height(v12, v57, v58, v59);
  v64 = objc_msgSend_desc(v21, v61, v62, v63);
  objc_msgSend_setHeight_(v64, v65, v60, v66);

  v70 = objc_msgSend_desc(v21, v67, v68, v69);
  objc_msgSend_setPixelFormat_(v70, v71, 25, v72);

  objc_msgSend_setLabel_(v21, v73, 0, v74);
  v78 = objc_msgSend_allocator(self->_metal, v75, v76, v77);
  v81 = objc_msgSend_newTextureWithDescriptor_(v78, v79, v21, v80);

  if (!v81)
  {
    sub_295891560();
    goto LABEL_13;
  }

  v85 = objc_msgSend_colorAttachments(v11, v82, v83, v84);
  v88 = objc_msgSend_objectAtIndexedSubscript_(v85, v86, 0, v87);
  objc_msgSend_setTexture_(v88, v89, v81, v90);

  v93 = objc_msgSend_renderCommandEncoderWithDescriptor_(v10, v91, v11, v92);

  if (!v93)
  {
    sub_2958914A4();
    goto LABEL_13;
  }

  v97 = objc_msgSend_fullRangeVertexBuf(self->_metal, v94, v95, v96);
  objc_msgSend_setVertexBuffer_offset_atIndex_(v93, v98, v97, 0, 0);

  objc_msgSend_setFragmentTexture_atIndex_(v93, v99, v13, 0);
  objc_msgSend_setRenderPipelineState_(v93, v100, self->_shaders->_confidenceErode, v101);
  objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v93, v102, 4, 0, 4);
  objc_msgSend_endEncoding(v93, v103, v104, v105);
  v109 = objc_msgSend_colorAttachments(v11, v106, v107, v108);
  v112 = objc_msgSend_objectAtIndexedSubscript_(v109, v110, 0, v111);
  objc_msgSend_setTexture_(v112, v113, v13, v114);

  v117 = objc_msgSend_renderCommandEncoderWithDescriptor_(v10, v115, v11, v116);

  if (!v117)
  {
    sub_2958913E8();
    goto LABEL_13;
  }

  v121 = objc_msgSend_fullRangeVertexBuf(self->_metal, v118, v119, v120);
  objc_msgSend_setVertexBuffer_offset_atIndex_(v117, v122, v121, 0, 0);

  objc_msgSend_setFragmentTexture_atIndex_(v117, v123, v81, 0);
  objc_msgSend_setRenderPipelineState_(v117, v124, self->_shaders->_confidenceDilate, v125);
  objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v117, v126, 4, 0, 4);
  objc_msgSend_endEncoding(v117, v127, v128, v129);
  FigMetalDecRef();

  v130 = 0;
LABEL_7:

  return v130;
}

- (int)bilinearScaleWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 refTexIn:(id)a5 refTexOut:(id)a6 nonRefTexIn:(id)a7 nonRefTexOut:(id)a8 pyrLevel:(int)a9
{
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a6;
  v19 = a4;
  v20 = a3;
  v24 = objc_msgSend_colorAttachments(v19, v21, v22, v23);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0, v26);
  objc_msgSend_setTexture_(v27, v28, v18, v29);

  v33 = objc_msgSend_colorAttachments(v19, v30, v31, v32);
  v36 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, 1, v35);
  objc_msgSend_setTexture_(v36, v37, v17, v38);

  v41 = objc_msgSend_renderCommandEncoderWithDescriptor_(v20, v39, v19, v40);

  if (v41)
  {
    v45 = objc_msgSend_fullRangeVertexBuf(self->_metal, v42, v43, v44);
    objc_msgSend_setVertexBuffer_offset_atIndex_(v41, v46, v45, 0, 0);

    objc_msgSend_setFragmentTexture_atIndex_(v41, v47, v15, 0);
    objc_msgSend_setFragmentTexture_atIndex_(v41, v48, v16, 1);
    objc_msgSend_setFragmentBuffer_offset_atIndex_(v41, v49, self->_pyrScaleParams[a9], 0, 0);
    objc_msgSend_setRenderPipelineState_(v41, v50, self->_shaders->_bilinearScalePipelineState, v51);
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v41, v52, 4, 0, 4);
    objc_msgSend_endEncoding(v41, v53, v54, v55);
    v56 = 0;
  }

  else
  {
    sub_295891774(&v58);
    v56 = v58;
  }

  return v56;
}

- (int)initialDownScaleWithCommandBuffer:(id)a3 renderPassDesc:(id)a4 refTex:(id)a5 nonRefTex:(id)a6 refTexOut:(id)a7 nonRefTexOut:(id)a8 refCamType:(int)a9
{
  v64 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v23 = objc_msgSend_colorAttachments(v15, v20, v21, v22);
  v26 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, 0, v25);
  v29 = v26;
  if (a9 == 1)
  {
    v30 = v18;
  }

  else
  {
    v30 = v19;
  }

  if (a9 == 1)
  {
    v31 = v19;
  }

  else
  {
    v31 = v18;
  }

  objc_msgSend_setTexture_(v26, v27, v30, v28, v64);

  v35 = objc_msgSend_colorAttachments(v15, v32, v33, v34);
  v38 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, 1, v37);
  objc_msgSend_setTexture_(v38, v39, v31, v40);

  v46 = objc_msgSend_renderCommandEncoderWithDescriptor_(v65, v41, v15, v42);
  if (v46)
  {
    v47 = objc_msgSend_fullRangeVertexBuf(self->_metal, v43, v44, v45);
    objc_msgSend_setVertexBuffer_offset_atIndex_(v46, v48, v47, 0, 0);

    if (a9 == 1)
    {
      v50 = v16;
    }

    else
    {
      v50 = v17;
    }

    if (a9 == 1)
    {
      v51 = v17;
    }

    else
    {
      v51 = v16;
    }

    objc_msgSend_setFragmentTexture_atIndex_(v46, v49, v50, 0);
    objc_msgSend_setFragmentTexture_atIndex_(v46, v52, v51, 1);
    v53 = &self->super.isa + a9;
    objc_msgSend_setFragmentBuffer_offset_atIndex_(v46, v54, v53[68], 0, 0);
    objc_msgSend_setFragmentBuffer_offset_atIndex_(v46, v55, v53[66], 0, 1);
    objc_msgSend_setRenderPipelineState_(v46, v56, self->_shaders->_initialDownScalePipelineState, v57);
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v46, v58, 4, 0, 4);
    objc_msgSend_endEncoding(v46, v59, v60, v61);
    v62 = 0;
  }

  else
  {
    sub_295891820(&v66);
    v62 = v66;
  }

  return v62;
}

- (int)registerImagesWithReferenceImg:(id)a3 nonRefImage:(id)a4 refTexlvl1:(id)a5 nonRefTexlvl1:(id)a6 shiftMap:(id)a7 confidenceMap:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v282 = a7;
  v18 = a8;
  v323 = 0;
  v324 = 0;
  v279 = v15;
  v280 = v16;
  v278 = v17;
  v281 = v18;
  if (!v16)
  {
    sub_2958925B8(&v287);
LABEL_66:
    v284 = 0;
    v17 = 0;
    goto LABEL_47;
  }

  if (!v17)
  {
    sub_29589250C(&v287);
LABEL_69:
    v284 = 0;
    goto LABEL_47;
  }

  if (!v282)
  {
    sub_295892460(&v287);
    goto LABEL_66;
  }

  if (!v18)
  {
    sub_2958923B4(&v287);
    goto LABEL_66;
  }

  v20 = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_refPyr, v19, v14[2], v14[3], 0, self->_metal);
  if (v20)
  {
    sub_2958918CC(v20, &v287);
    goto LABEL_66;
  }

  v22 = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_nonRefPyr, v21, v15[2], v15[3], 0, self->_metal);
  if (v22)
  {
    sub_295891984(v22, &v287);
    goto LABEL_66;
  }

  objc_storeStrong(&self->_refPyr->textureY[1], a5);
  objc_storeStrong(&self->_nonRefPyr->textureY[1], a6);
  v26 = objc_msgSend_allocator(self->_metal, v23, v24, v25);
  v17 = objc_msgSend_newTextureDescriptor(v26, v27, v28, v29);

  if (!v17)
  {
    sub_295892308(&v287);
    goto LABEL_69;
  }

  v33 = objc_msgSend_allocator(self->_metal, v30, v31, v32);
  v36 = objc_msgSend_newTextureDescriptor_(v33, v34, 0, v35);

  v284 = v36;
  if (!v36)
  {
    sub_29589225C(&v287);
    goto LABEL_69;
  }

  v37 = self->_pyrScaleParams[0];
  self->_pyrScaleParams[0] = 0;

  v41 = 0;
  v42 = &self->_pyrHeights[2];
  v43 = &self->_pyrWidths[1];
  do
  {
    v44 = objc_msgSend_device(self->_metal, v38, v39, v40);
    v46 = objc_msgSend_newBufferWithLength_options_(v44, v45, 8, 0);
    v47 = *&v43[v41 + 57];
    *&v43[v41 + 57] = v46;

    v48 = *&v43[v41 + 57];
    if (!v48)
    {
      sub_2958921B0(&v287);
LABEL_47:
      v68 = 0;
LABEL_48:
      v69 = v287;
      goto LABEL_45;
    }

    *&v49 = *(v42 - 21) / *(v42 - 20);
    *(&v49 + 1) = *(v42 - 1) / *v42;
    v285 = v49;
    v50 = v48;
    *objc_msgSend_contents(v50, v51, v52, v53) = v285;
    ++v42;
    v41 += 2;
  }

  while (v41 != 18);
  v54 = objc_msgSend_width(v14[2], v38, v39, v40);
  v58 = objc_msgSend_height(v14[2], v55, v56, v57);
  v303 = 0u;
  v304 = 0u;
  v305 = 0u;
  v306 = 0u;
  v307 = 0u;
  v308 = 0u;
  v309 = 0u;
  v310 = 0u;
  v311 = 0u;
  v312 = 0u;
  v313 = 0u;
  v314 = 0u;
  v315 = 0u;
  v316 = 0u;
  v317 = 0u;
  v318 = 0u;
  v319 = 0u;
  v320 = 0u;
  v321 = 0u;
  v322 = 0u;
  v59 = *(MEMORY[0x29EDCA928] + 16);
  v288[0] = *MEMORY[0x29EDCA928];
  v288[1] = v59;
  v289 = *(MEMORY[0x29EDCA928] + 32);
  v293 = 0;
  v294 = (v54 - 1);
  v295 = (v58 - 1);
  v290 = 0;
  v291 = v294;
  v292 = v295;
  v296[0] = v288[0];
  v296[1] = v59;
  v296[2] = v289;
  v300 = 0;
  v301 = v294;
  v302 = v295;
  v297 = 0;
  v298 = v294;
  v299 = v295;
  self->_teleIsRefCalibData = v296;
  self->_wideIsRefCalibData = v288;
  objc_msgSend_scaleHomographyUsingCalib_to_(self, v60, v296, self->_pyrHomographyTeleIsRef);
  objc_msgSend_scaleHomographyUsingCalib_to_(self, v61, self->_wideIsRefCalibData, self->_pyrHomographyWideIsRef);
  if (objc_msgSend_setupPyramidScalersUsingCalib(self, v62, v63, v64))
  {
    v68 = 0;
    v69 = 0;
    goto LABEL_45;
  }

  v70 = objc_msgSend_renderPassDescriptor(MEMORY[0x29EDBB5F8], v65, v66, v67);
  if (!v70)
  {
    sub_295892104(&v287);
    goto LABEL_47;
  }

  v74 = v70;
  v75 = objc_msgSend_desc(v17, v71, v72, v73);
  objc_msgSend_setPixelFormat_(v75, v76, 25, v77);

  v81 = objc_msgSend_desc(v17, v78, v79, v80);
  objc_msgSend_setUsage_(v81, v82, 7, v83);

  v87 = &self->_pyrWidths[2];
  for (i = 2; i != 11; ++i)
  {
    v89 = *v87;
    v90 = objc_msgSend_desc(v17, v84, v85, v86);
    objc_msgSend_setWidth_(v90, v91, v89, v92);

    v93 = v87[20];
    v97 = objc_msgSend_desc(v17, v94, v95, v96);
    objc_msgSend_setHeight_(v97, v98, v93, v99);

    objc_msgSend_setLabel_(v17, v100, 0, v101);
    v105 = objc_msgSend_allocator(self->_metal, v102, v103, v104);
    v108 = objc_msgSend_newTextureWithDescriptor_(v105, v106, v17, v107);
    textureY = self->_refPyr->textureY;
    v110 = textureY[i];
    textureY[i] = v108;

    if (!self->_refPyr->textureY[i])
    {
      sub_295892058(&v287);
LABEL_52:
      v69 = v287;
      v68 = v74;
      goto LABEL_45;
    }

    objc_msgSend_setLabel_(v17, v111, 0, v112);
    v116 = objc_msgSend_allocator(self->_metal, v113, v114, v115);
    v119 = objc_msgSend_newTextureWithDescriptor_(v116, v117, v17, v118);
    v120 = self->_nonRefPyr->textureY;
    v121 = v120[i];
    v120[i] = v119;

    if (!self->_nonRefPyr->textureY[i])
    {
      sub_295891FAC(&v287);
      goto LABEL_52;
    }

    ++v87;
  }

  v122 = objc_msgSend_commandBuffer(self->_metal, v84, v85, v86);
  if (!v122)
  {
    sub_295891F00(&v287);
    goto LABEL_52;
  }

  v124 = v122;
  objc_msgSend_initialDownScaleWithCommandBuffer_renderPassDesc_refTex_nonRefTex_refTexOut_nonRefTexOut_refCamType_(self, v123, v122, v74, self->_refPyr->textureY[0], self->_nonRefPyr->textureY[0], self->_refPyr->textureY[1], self->_nonRefPyr->textureY[1], 1);
  v126 = 0;
  do
  {
    v127 = &self->_refPyr->textureY[v126];
    v128 = v127[1];
    v129 = v127[2];
    v130 = &self->_nonRefPyr->textureY[v126++];
    LODWORD(v273) = v126;
    objc_msgSend_bilinearScaleWithCommandBuffer_renderPassDesc_refTexIn_refTexOut_nonRefTexIn_nonRefTexOut_pyrLevel_(self, v125, v124, v74, v128, v129, v130[1], v130[2], v273);
  }

  while (v126 != 9);
  objc_msgSend_commit(self->_metal, v125, v131, v132);
  v68 = objc_msgSend_renderPassDescriptor(MEMORY[0x29EDBB5F8], v133, v134, v135);

  if (!v68)
  {
    sub_295891E44(v124, &v287);
    goto LABEL_48;
  }

  v139 = objc_msgSend_commandBuffer(self->_metal, v136, v137, v138);

  if (!v139)
  {
    sub_295891D98(&v287);
    goto LABEL_48;
  }

  v277 = v14;
  v143 = 0;
  v144 = &self->_pyrHomographyWideIsRef[10];
  v145 = &self->_pyrWidths[10];
  v146 = 80;
  v283 = &self->_pyrHomographyWideIsRef[10];
  while (1)
  {
    v286 = 0;
    v287 = 0;
    v147 = *v145;
    v148 = objc_msgSend_desc(v17, v140, v141, v142);
    objc_msgSend_setWidth_(v148, v149, v147, v150);

    v151 = v145[20];
    v155 = objc_msgSend_desc(v17, v152, v153, v154);
    objc_msgSend_setHeight_(v155, v156, v151, v157);

    v161 = objc_msgSend_desc(v17, v158, v159, v160);
    objc_msgSend_setPixelFormat_(v161, v162, 70, v163);

    v167 = objc_msgSend_desc(v17, v164, v165, v166);
    objc_msgSend_setUsage_(v167, v168, 7, v169);

    objc_msgSend_setLabel_(v17, v170, 0, v171);
    v175 = objc_msgSend_allocator(self->_metal, v172, v173, v174);
    v287 = objc_msgSend_newTextureWithDescriptor_(v175, v176, v17, v177);

    if (!v287)
    {
      sub_295891CEC(v325);
LABEL_56:
      v69 = v325[0];
      goto LABEL_59;
    }

    objc_msgSend_generateDerivativesWithCommandBuffer_renderPassDesc_inputTex_outputTex_(self, v178, v139, v68, self->_refPyr->textureY[v143 + 10]);
    objc_msgSend_setLabel_(v17, v179, 0, v180);
    v184 = objc_msgSend_allocator(self->_metal, v181, v182, v183);
    v286 = objc_msgSend_newTextureWithDescriptor_(v184, v185, v17, v186);

    if (!v286)
    {
      sub_295891C40(v325);
      goto LABEL_56;
    }

    objc_msgSend_generateDerivativesWithCommandBuffer_renderPassDesc_inputTex_outputTex_(self, v187, v139, v68, self->_nonRefPyr->textureY[v143 + 10]);
    v191 = objc_msgSend_desc(v17, v188, v189, v190);
    objc_msgSend_setPixelFormat_(v191, v192, 65, v193);

    objc_msgSend_setLabel_(v17, v194, 0, v195);
    v199 = objc_msgSend_allocator(self->_metal, v196, v197, v198);
    v202 = objc_msgSend_newTextureWithDescriptor_(v199, v200, v17, v201);
    v203 = v323;
    v323 = v202;

    if (!v323)
    {
      sub_295891B94(v325);
      goto LABEL_56;
    }

    if (v143)
    {
      v205 = v324;
    }

    else
    {
      v205 = 0;
    }

    LODWORD(v274) = v143 + 10;
    objc_msgSend_basicSearchWithCommandBuffer_renderPassDesc_refDerivTex_nonRefDerivTex_prevShiftMap_nextShiftMap_homography_pyrLevel_(self, v204, v139, v68, v287, v286, v205, v144[v143], v274);
    if (v143)
    {
      FigMetalDecRef();
    }

    objc_msgSend_setLabel_(v284, v206, 0, v207);
    v211 = objc_msgSend_desc(v284, v208, v209, v210);
    objc_msgSend_setPixelFormat_(v211, v212, 65, v213);

    v214 = *v145;
    v218 = objc_msgSend_desc(v284, v215, v216, v217);
    objc_msgSend_setWidth_(v218, v219, v214, v220);

    v221 = v145[20];
    v225 = objc_msgSend_desc(v284, v222, v223, v224);
    objc_msgSend_setHeight_(v225, v226, v221, v227);

    v231 = objc_msgSend_desc(v284, v228, v229, v230);
    objc_msgSend_setUsage_(v231, v232, 7, v233);

    v237 = objc_msgSend_allocator(self->_metal, v234, v235, v236);
    v239 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v237, v238, v284, 0);
    v240 = v324;
    v324 = v239;

    if (!v324)
    {
      break;
    }

    objc_msgSend_smoothShiftMapWithCommandBuffer_renderPassDesc_input_output_(self, v241, v139, v68, v323);
    FigMetalDecRef();
    objc_msgSend_setLabel_(v17, v242, 0, v243);
    v247 = objc_msgSend_allocator(self->_metal, v244, v245, v246);
    v250 = objc_msgSend_newTextureWithDescriptor_(v247, v248, v17, v249);
    v251 = v323;
    v323 = v250;

    if (!v323)
    {
      sub_295891A3C(v325);
      v69 = v325[0];
      goto LABEL_59;
    }

    v144 = &self->_pyrHomographyWideIsRef[10];
    LODWORD(v275) = v143 + 10;
    ShiftMap_nextShiftMap_homography_pyrLevel = objc_msgSend_selectionWithCommandBuffer_renderPassDesc_refDerivTex_nonRefDerivTex_prevShiftMap_nextShiftMap_homography_pyrLevel_(self, v252, v139, v68, v287, v286, v324, v283[v143], v275);
    if (ShiftMap_nextShiftMap_homography_pyrLevel)
    {
      goto LABEL_49;
    }

    FigMetalDecRef();
    objc_msgSend_setLabel_(v17, v254, 0, v255);
    if (v143 == -9)
    {
      v259 = v282;
      v260 = v324;
      v324 = v259;
    }

    else
    {
      v260 = objc_msgSend_allocator(self->_metal, v256, v257, v258);
      v263 = objc_msgSend_newTextureWithDescriptor_(v260, v261, v17, v262);
      v264 = v324;
      v324 = v263;
    }

    LODWORD(v276) = v143 + 10;
    ShiftMap_nextShiftMap_homography_pyrLevel = objc_msgSend_fusionWithCommandBuffer_refTex_refDerivTex_nonRefDerivTex_prevShiftMap_nextShiftMap_homography_pyrLevel_(self, v265, v139, self->_refPyr->textureY[v143 + 10], v287, v286, v323, v324, v283[v143], v276);
    if (ShiftMap_nextShiftMap_homography_pyrLevel)
    {
LABEL_49:
      v69 = ShiftMap_nextShiftMap_homography_pyrLevel;
      goto LABEL_59;
    }

    FigMetalDecRef();
    FigMetalDecRef();
    FigMetalDecRef();
    if (v143 != -9)
    {
      v266 = self->_refPyr + v146;
      FigMetalDecRef();
      v267 = self->_nonRefPyr + v146;
      FigMetalDecRef();
    }

    v268 = v143 + 10;
    --v143;
    v146 -= 8;
    --v145;
    if (v268 <= 1)
    {
      objc_msgSend_confidenceMapWithCommandBuffer_renderPassDesc_shiftMap_confidenceOut_(self, v140, v139, v68, v282, v281);
      objc_msgSend_commit(self->_metal, v269, v270, v271);

      v69 = 0;
      goto LABEL_44;
    }
  }

  sub_295891AE8(v325);
  v69 = v325[0];
LABEL_59:

LABEL_44:
  v14 = v277;
LABEL_45:

  return v69;
}

@end