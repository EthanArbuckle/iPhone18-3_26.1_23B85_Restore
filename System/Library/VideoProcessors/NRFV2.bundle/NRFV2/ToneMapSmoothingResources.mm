@interface ToneMapSmoothingResources
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)computeSizeForLevel:(SEL)level xDivisor:(unint64_t)divisor yDivisor:(unint64_t)yDivisor;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)computeSizeForOddEvenLevel:(SEL)level xDivisor:(unint64_t)divisor yDivisor:(unint64_t)yDivisor;
- (ToneMapSmoothingResources)initWithMetalContext:(id)context width:(unint64_t)width height:(unint64_t)height mtlSubAllocatorID:(unsigned int)d srlVersion:(int)version;
- (int)allocateResourcesForWidth:(unint64_t)width height:(unint64_t)height useMaskPyramid:(BOOL)pyramid;
- (void)calcPyramidDimensions;
- (void)dealloc;
- (void)makeResourcesAliasable;
@end

@implementation ToneMapSmoothingResources

- (void)calcPyramidDimensions
{
  v3 = objc_msgSend_calcMaxNPyramidLevelsForWidth_height_(ToneMapSmoothingResources, a2, self->_width, self->_height);
  v4 = v3 - 1;
  if (v3 != 1)
  {
    v5 = *&self->_width;
    dimensions = self->_dimensions;
    p_var2 = &dimensions->var2;
    v8 = vdupq_n_s64(1uLL);
    do
    {
      v5 = vshrq_n_u64(vaddq_s64(v5, v8), 1uLL);
      if (dimensions)
      {
        *(p_var2 - 2) = v5.i64[0];
        *(p_var2 - 1) = (v5.i64[0] + 1) >> 1;
        *p_var2 = v5.u64[1];
      }

      p_var2 += 3;
      --v4;
    }

    while (v4);
  }
}

- (ToneMapSmoothingResources)initWithMetalContext:(id)context width:(unint64_t)width height:(unint64_t)height mtlSubAllocatorID:(unsigned int)d srlVersion:(int)version
{
  contextCopy = context;
  v120.receiver = self;
  v120.super_class = ToneMapSmoothingResources;
  v14 = [(ToneMapSmoothingResources *)&v120 init];
  v16 = v14;
  if (!v14)
  {
    goto LABEL_12;
  }

  v14->_mtlSubAllocatorID = d;
  v14->_width = width;
  v14->_height = height;
  v14->_maxNPyramidLevels = objc_msgSend_calcMaxNPyramidLevelsForWidth_height_(ToneMapSmoothingResources, v15, width, height);
  objc_storeStrong(&v16->_metalContext, context);
  v16->_srlVersion = version;
  v17 = objc_opt_new();
  v20 = v17;
  if (!v17)
  {
    sub_295896DC4();
    goto LABEL_13;
  }

  objc_msgSend_setStorageMode_(v17, v18, 0, v19);
  objc_msgSend_setHazardTrackingMode_(v20, v21, 2, v22);
  objc_msgSend_setSize_(v20, v23, 512000, v24);
  v28 = objc_msgSend_device(contextCopy, v25, v26, v27);
  v31 = objc_msgSend_newHeapWithDescriptor_(v28, v29, v20, v30);
  internalHeap = v16->_internalHeap;
  v16->_internalHeap = v31;

  if (!v16->_internalHeap)
  {
    sub_295896D3C(v20);
LABEL_23:
    v20 = 0;
    goto LABEL_13;
  }

  v16->_dimensions = malloc_type_calloc(v16->_maxNPyramidLevels, 0x18uLL, 0x1000040504FFAC1uLL);
  v33 = v16->_internalHeap;
  v37 = objc_msgSend_resourceOptions(v33, v34, v35, v36);
  v39 = objc_msgSend_newBufferWithLength_options_(v33, v38, 16916, v37);
  srlGlobalStatsBuffer = v16->_srlGlobalStatsBuffer;
  v16->_srlGlobalStatsBuffer = v39;

  if (!v16->_srlGlobalStatsBuffer)
  {
    sub_295896CB4(v20);
    goto LABEL_23;
  }

  v44 = v16->_internalHeap;
  v45 = objc_msgSend_resourceOptions(v44, v41, v42, v43);
  v47 = objc_msgSend_newBufferWithLength_options_(v44, v46, 217856, v45);
  srlFaceStatsBuffer = v16->_srlFaceStatsBuffer;
  v16->_srlFaceStatsBuffer = v47;

  if (!v16->_srlFaceStatsBuffer)
  {
    sub_295896C2C(v20);
    goto LABEL_23;
  }

  v52 = v16->_internalHeap;
  v53 = objc_msgSend_resourceOptions(v52, v49, v50, v51);
  v55 = objc_msgSend_newBufferWithLength_options_(v52, v54, 48, v53);
  srlCoeffsBuffer = v16->_srlCoeffsBuffer;
  v16->_srlCoeffsBuffer = v55;

  if (!v16->_srlCoeffsBuffer)
  {
    sub_295896BA4(v20);
    goto LABEL_23;
  }

  v60 = v16->_internalHeap;
  v61 = objc_msgSend_resourceOptions(v60, v57, v58, v59);
  v63 = objc_msgSend_newBufferWithLength_options_(v60, v62, 1536, v61);
  sffDescriptorsBuffer = v16->_sffDescriptorsBuffer;
  v16->_sffDescriptorsBuffer = v63;

  if (!v16->_sffDescriptorsBuffer)
  {
    sub_295896B1C(v20);
    goto LABEL_23;
  }

  v68 = v16->_internalHeap;
  v69 = objc_msgSend_resourceOptions(v68, v65, v66, v67);
  v71 = objc_msgSend_newBufferWithLength_options_(v68, v70, 384, v69);
  sffNThreadGroupsBuffer = v16->_sffNThreadGroupsBuffer;
  v16->_sffNThreadGroupsBuffer = v71;

  if (!v16->_sffNThreadGroupsBuffer)
  {
    sub_295896A94(v20);
    goto LABEL_23;
  }

  v76 = v16->_maxNPyramidLevels << 7;
  v77 = v16->_internalHeap;
  v78 = objc_msgSend_resourceOptions(v77, v73, v74, v75);
  v80 = objc_msgSend_newBufferWithLength_options_(v77, v79, v76, v78);
  mstmTuningParams = v16->_mstmTuningParams;
  v16->_mstmTuningParams = v80;

  if (!v16->_mstmTuningParams)
  {
    sub_295896A0C(v20);
    goto LABEL_23;
  }

  v85 = v16->_maxNPyramidLevels << 7;
  v86 = v16->_internalHeap;
  v87 = objc_msgSend_resourceOptions(v86, v82, v83, v84);
  v89 = objc_msgSend_newBufferWithLength_options_(v86, v88, v85, v87);
  srlOnMSTMTuningParams = v16->_srlOnMSTMTuningParams;
  v16->_srlOnMSTMTuningParams = v89;

  if (!v16->_srlOnMSTMTuningParams)
  {
    sub_295896984(v20);
    goto LABEL_23;
  }

  objc_msgSend_calcPyramidDimensions(v16, v91, v92, v93);
  v94 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v97 = objc_msgSend_initWithCapacity_(v94, v95, v16->_maxNPyramidLevels, v96);
  masksPyramid = v16->_masksPyramid;
  v16->_masksPyramid = v97;

  v99 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v102 = objc_msgSend_initWithCapacity_(v99, v100, v16->_maxNPyramidLevels, v101);
  referencePyramidOdd = v16->_referencePyramidOdd;
  v16->_referencePyramidOdd = v102;

  v104 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v107 = objc_msgSend_initWithCapacity_(v104, v105, v16->_maxNPyramidLevels, v106);
  referencePyramidEven = v16->_referencePyramidEven;
  v16->_referencePyramidEven = v107;

  v109 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v112 = objc_msgSend_initWithCapacity_(v109, v110, v16->_maxNPyramidLevels, v111);
  outputPyramidOdd = v16->_outputPyramidOdd;
  v16->_outputPyramidOdd = v112;

  v114 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v117 = objc_msgSend_initWithCapacity_(v114, v115, v16->_maxNPyramidLevels, v116);
  outputPyramidEven = v16->_outputPyramidEven;
  v16->_outputPyramidEven = v117;

LABEL_12:
  v20 = v16;
LABEL_13:

  return v20;
}

- (void)dealloc
{
  free(self->_dimensions);
  v3.receiver = self;
  v3.super_class = ToneMapSmoothingResources;
  [(ToneMapSmoothingResources *)&v3 dealloc];
}

- (int)allocateResourcesForWidth:(unint64_t)width height:(unint64_t)height useMaskPyramid:(BOOL)pyramid
{
  if (self->_width != width)
  {
    sub_295896E4C();
LABEL_25:
    v10 = 0;
    v112 = -12780;
    goto LABEL_16;
  }

  if (self->_height != height)
  {
    sub_295896EB4();
    goto LABEL_25;
  }

  pyramidCopy = pyramid;
  v7 = objc_msgSend_allocator(self->_metalContext, a2, width, height);
  v10 = objc_msgSend_newTextureDescriptor_(v7, v8, self->_mtlSubAllocatorID, v9);

  if (v10)
  {
    if (self->_maxNPyramidLevels != 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        if (pyramidCopy)
        {
          var0 = self->_dimensions[v14].var0;
          v18 = objc_msgSend_desc(v10, v11, v12, v13);
          objc_msgSend_setWidth_(v18, v19, var0, v20);

          var2 = self->_dimensions[v14].var2;
          v25 = objc_msgSend_desc(v10, v22, v23, v24);
          objc_msgSend_setHeight_(v25, v26, var2, v27);

          v31 = objc_msgSend_desc(v10, v28, v29, v30);
          objc_msgSend_setPixelFormat_(v31, v32, 30, v33);

          v37 = objc_msgSend_desc(v10, v34, v35, v36);
          objc_msgSend_setUsage_(v37, v38, 3, v39);

          objc_msgSend_setLabel_(v10, v40, 0, v41);
          v45 = objc_msgSend_allocator(self->_metalContext, v42, v43, v44);
          v47 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v45, v46, v10, self->_mtlSubAllocatorID);

          if (!v47)
          {
            sub_29589713C(&v114);
            goto LABEL_22;
          }

          objc_msgSend_addObject_(self->_masksPyramid, v48, v47, v49);
          v16 = v47;
        }

        var1 = self->_dimensions[v14].var1;
        v51 = objc_msgSend_desc(v10, v11, v12, v13);
        objc_msgSend_setWidth_(v51, v52, var1, v53);

        v54 = self->_dimensions[v14].var2;
        v58 = objc_msgSend_desc(v10, v55, v56, v57);
        objc_msgSend_setHeight_(v58, v59, v54, v60);

        v64 = objc_msgSend_desc(v10, v61, v62, v63);
        objc_msgSend_setPixelFormat_(v64, v65, 25, v66);

        v70 = objc_msgSend_desc(v10, v67, v68, v69);
        objc_msgSend_setUsage_(v70, v71, 3, v72);

        objc_msgSend_setLabel_(v10, v73, 0, v74);
        v78 = objc_msgSend_allocator(self->_metalContext, v75, v76, v77);
        v80 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v78, v79, v10, self->_mtlSubAllocatorID);

        if (!v80)
        {
          sub_2958970B4(&v114);
          goto LABEL_22;
        }

        objc_msgSend_addObject_(self->_referencePyramidOdd, v81, v80, v82);
        objc_msgSend_setLabel_(v10, v83, 0, v84);
        v88 = objc_msgSend_allocator(self->_metalContext, v85, v86, v87);
        v90 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v88, v89, v10, self->_mtlSubAllocatorID);

        if (!v90)
        {
          sub_29589702C(&v114);
          goto LABEL_22;
        }

        objc_msgSend_addObject_(self->_referencePyramidEven, v91, v90, v92);
        objc_msgSend_setLabel_(v10, v93, 0, v94);
        v98 = objc_msgSend_allocator(self->_metalContext, v95, v96, v97);
        v100 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v98, v99, v10, self->_mtlSubAllocatorID);

        if (!v100)
        {
          sub_295896FA4(&v114);
          goto LABEL_22;
        }

        objc_msgSend_addObject_(self->_outputPyramidOdd, v101, v100, v102);
        objc_msgSend_setLabel_(v10, v103, 0, v104);
        v108 = objc_msgSend_allocator(self->_metalContext, v105, v106, v107);
        v16 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v108, v109, v10, self->_mtlSubAllocatorID);

        if (!v16)
        {
          sub_295896F1C(&v114);
          goto LABEL_22;
        }

        objc_msgSend_addObject_(self->_outputPyramidEven, v110, v16, v111);
        ++v15;
        ++v14;
        if (v15 >= self->_maxNPyramidLevels - 1)
        {

          break;
        }
      }
    }

    v112 = 0;
  }

  else
  {
    sub_2958971C4(&v114);
LABEL_22:
    v112 = v114;
  }

LABEL_16:

  return v112;
}

- (void)makeResourcesAliasable
{
  v41 = 0;
  if (self->_maxNPyramidLevels != 1)
  {
    v5 = 0;
    do
    {
      v6 = objc_msgSend_objectAtIndexedSubscript_(self->_referencePyramidOdd, a2, v5, v3);
      v7 = v41;
      v42 = v6;

      FigMetalDecRef();
      v10 = objc_msgSend_objectAtIndexedSubscript_(self->_referencePyramidEven, v8, v5, v9);
      v11 = v42;
      v43 = v10;

      FigMetalDecRef();
      v14 = objc_msgSend_objectAtIndexedSubscript_(self->_outputPyramidOdd, v12, v5, v13);
      v15 = v43;
      v44 = v14;

      FigMetalDecRef();
      v18 = objc_msgSend_objectAtIndexedSubscript_(self->_outputPyramidEven, v16, v5, v17);
      v19 = v44;
      v41 = v18;

      FigMetalDecRef();
      ++v5;
    }

    while (v5 < self->_maxNPyramidLevels - 1);
  }

  objc_msgSend_removeAllObjects(self->_referencePyramidOdd, a2, v2, v3);
  objc_msgSend_removeAllObjects(self->_referencePyramidEven, v20, v21, v22);
  objc_msgSend_removeAllObjects(self->_outputPyramidOdd, v23, v24, v25);
  objc_msgSend_removeAllObjects(self->_outputPyramidEven, v26, v27, v28);
  if (objc_msgSend_count(self->_masksPyramid, v29, v30, v31))
  {
    v35 = 0;
    do
    {
      v36 = objc_msgSend_objectAtIndexedSubscript_(self->_masksPyramid, v32, v35, v34);
      v37 = v41;
      v41 = v36;

      FigMetalDecRef();
      ++v35;
    }

    while (v35 < objc_msgSend_count(self->_masksPyramid, v38, v39, v40));
  }

  objc_msgSend_removeAllObjects(self->_masksPyramid, v32, v33, v34);
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)computeSizeForLevel:(SEL)level xDivisor:(unint64_t)divisor yDivisor:(unint64_t)yDivisor
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (self[2].var1 > divisor)
  {
    v6 = (self[1].var0 + 24 * divisor);
    v7 = (yDivisor + *v6 - 1) / yDivisor;
    v8 = (a6 + v6[2] - 1) / a6;
    retstr->var0 = v7;
    retstr->var1 = v8;
    retstr->var2 = 1;
  }

  return self;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)computeSizeForOddEvenLevel:(SEL)level xDivisor:(unint64_t)divisor yDivisor:(unint64_t)yDivisor
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (self[2].var1 > divisor)
  {
    v6 = self[1].var0 + 24 * divisor;
    v7 = (yDivisor + *(v6 + 8) - 1) / yDivisor;
    v8 = (a6 + *(v6 + 16) - 1) / a6;
    retstr->var0 = v7;
    retstr->var1 = v8;
    retstr->var2 = 1;
  }

  return self;
}

@end