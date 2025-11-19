@interface GuidedFilter
+ (int)prewarmShaders:(id)a3;
- (GuidedFilter)initWithMetalContext:(id)a3;
- (id)createIntermediateTextureWithFormat:(unint64_t)a3 width:(unint64_t)a4 height:(unint64_t)a5 usage:(unint64_t)a6 label:(id)a7;
- (int)encodeToCommandBuffer:(id)a3 inputTexture:(id)a4 guideTexture:(id)a5 outputTexture:(id)a6 kernelRadius:(unint64_t)a7 epsilon:(float)a8;
@end

@implementation GuidedFilter

- (GuidedFilter)initWithMetalContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_2958CB4B8(self);
LABEL_8:
    v7 = 0;
    goto LABEL_4;
  }

  v17.receiver = self;
  v17.super_class = GuidedFilter;
  v6 = [(GuidedFilter *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    sub_2958CB458();
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  v11 = objc_msgSend_sharedInstance(GuidedFilterShared, v8, v9, v10);
  v14 = objc_msgSend_getShaders_(v11, v12, v7->_metalContext, v13);
  shaders = v7->_shaders;
  v7->_shaders = v14;

  if (!v7->_shaders)
  {
    sub_2958CB3D0(v7);
    goto LABEL_8;
  }

LABEL_4:

  return v7;
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [GuidedFilterShaders alloc];
    v7 = objc_msgSend_initWithMetalContext_(v4, v5, v3, v6);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      sub_2958CB550();
      v7 = 0;
      v8 = -12786;
    }
  }

  else
  {
    sub_2958CB5B0(&v10);
    v7 = 0;
    v8 = v10;
  }

  return v8;
}

- (id)createIntermediateTextureWithFormat:(unint64_t)a3 width:(unint64_t)a4 height:(unint64_t)a5 usage:(unint64_t)a6 label:(id)a7
{
  v12 = objc_msgSend_allocator(self->_metalContext, a2, a3, a4, a5, a6, a7);
  v16 = objc_msgSend_newTextureDescriptor(v12, v13, v14, v15);

  if (v16)
  {
    objc_msgSend_setLabel_(v16, v17, 0, v18);
    v22 = objc_msgSend_desc(v16, v19, v20, v21);
    objc_msgSend_setTextureType_(v22, v23, 2, v24);

    v28 = objc_msgSend_desc(v16, v25, v26, v27);
    objc_msgSend_setPixelFormat_(v28, v29, a3, v30);

    v34 = objc_msgSend_desc(v16, v31, v32, v33);
    objc_msgSend_setWidth_(v34, v35, a4, v36);

    v40 = objc_msgSend_desc(v16, v37, v38, v39);
    objc_msgSend_setHeight_(v40, v41, a5, v42);

    v46 = objc_msgSend_desc(v16, v43, v44, v45);
    objc_msgSend_setDepth_(v46, v47, 1, v48);

    v52 = objc_msgSend_desc(v16, v49, v50, v51);
    objc_msgSend_setUsage_(v52, v53, a6, v54);

    v58 = objc_msgSend_allocator(self->_metalContext, v55, v56, v57);
    v61 = objc_msgSend_newTextureWithDescriptor_(v58, v59, v16, v60);

    if (!v61)
    {
      sub_2958CB638();
    }
  }

  else
  {
    sub_2958CB6C4();
    v61 = 0;
  }

  return v61;
}

- (int)encodeToCommandBuffer:(id)a3 inputTexture:(id)a4 guideTexture:(id)a5 outputTexture:(id)a6 kernelRadius:(unint64_t)a7 epsilon:(float)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v21 = v17;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  if (!v14)
  {
    sub_2958CBB08(&v128);
LABEL_15:
    v25 = 0;
LABEL_16:
    v123 = v128;
    goto LABEL_10;
  }

  if (!v15)
  {
    sub_2958CBA80(&v128);
    goto LABEL_15;
  }

  if (!v16)
  {
    sub_2958CB9F8(&v128);
    goto LABEL_15;
  }

  if (!v17)
  {
    sub_2958CB970(&v128);
    goto LABEL_15;
  }

  v131[0] = v9;
  *&v131[1] = a8;
  v25 = objc_msgSend_computeCommandEncoder(v14, v18, v19, v20);
  if (!v25)
  {
    sub_2958CB8E8(&v128);
    goto LABEL_16;
  }

  v26 = objc_msgSend_width(v15, v22, v23, v24);
  v30 = objc_msgSend_height(v15, v27, v28, v29);
  v32 = objc_msgSend_createIntermediateTextureWithFormat_width_height_usage_label_(self, v31, 65, v26, v30, 3, @"gf_small_tex");
  v134 = v32;
  if (!v32)
  {
    sub_2958CB860(&v128);
    goto LABEL_16;
  }

  v33 = v32;
  v34 = self->_shaders->_gfDownsampleGuide;
  objc_msgSend_setComputePipelineState_(v25, v35, v34, v36);
  objc_msgSend_setTexture_atIndex_(v25, v37, v15, 0);
  objc_msgSend_setTexture_atIndex_(v25, v38, v16, 1);
  objc_msgSend_setTexture_atIndex_(v25, v39, v33, 2);
  objc_msgSend_setImageblockWidth_height_(v25, v40, 32, 32);
  v44 = objc_msgSend_width(v33, v41, v42, v43);
  v48 = objc_msgSend_height(v33, v45, v46, v47);

  v128 = v44;
  v129 = v48;
  v130 = 1;
  v126 = vdupq_n_s64(0x20uLL);
  v127 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v25, v49, &v128, &v126);
  v53 = objc_msgSend_width(v134, v50, v51, v52);
  v57 = objc_msgSend_height(v134, v54, v55, v56);
  v59 = objc_msgSend_createIntermediateTextureWithFormat_width_height_usage_label_(self, v58, 65, v53, v57, 3, @"gf_coeff_tex");
  v60 = v133;
  v133 = v59;

  if (!v133)
  {
    sub_2958CB7D8(&v128);
LABEL_21:
    v123 = v128;
    goto LABEL_10;
  }

  v61 = self->_shaders->_gfCalculateCoefficients;
  objc_msgSend_setComputePipelineState_(v25, v62, v61, v63);
  objc_msgSend_setTexture_atIndex_(v25, v64, v134, 2);
  objc_msgSend_setTexture_atIndex_(v25, v65, v133, 3);
  objc_msgSend_setBytes_length_atIndex_(v25, v66, v131, 8, 0);
  objc_msgSend_setImageblockWidth_height_(v25, v67, 32, 32);
  v71 = objc_msgSend_width(v133, v68, v69, v70);
  v75 = objc_msgSend_height(v133, v72, v73, v74);

  v128 = v71;
  v129 = v75;
  v130 = 1;
  v126 = vdupq_n_s64(0x20uLL);
  v127 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v25, v76, &v128, &v126);
  FigMetalDecRef();
  v80 = objc_msgSend_width(v133, v77, v78, v79);
  v84 = objc_msgSend_height(v133, v81, v82, v83);
  v86 = objc_msgSend_createIntermediateTextureWithFormat_width_height_usage_label_(self, v85, 65, v80, v84, 3, @"gf_cmean_tex");
  v87 = v132;
  v132 = v86;

  if (!v132)
  {
    sub_2958CB750(&v128);
    goto LABEL_21;
  }

  v88 = self->_shaders->_gfFilterCoefficients;
  objc_msgSend_setComputePipelineState_(v25, v89, v88, v90);
  objc_msgSend_setTexture_atIndex_(v25, v91, v133, 3);
  objc_msgSend_setTexture_atIndex_(v25, v92, v132, 4);
  objc_msgSend_setBytes_length_atIndex_(v25, v93, v131, 8, 0);
  objc_msgSend_setImageblockWidth_height_(v25, v94, 32, 32);
  v98 = objc_msgSend_width(v133, v95, v96, v97);
  v102 = objc_msgSend_height(v133, v99, v100, v101);

  v128 = v98;
  v129 = v102;
  v130 = 1;
  v125 = vdupq_n_s64(0x20uLL);
  v126 = v125;
  v127 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v25, v103, &v128, &v126);
  FigMetalDecRef();
  v104 = self->_shaders->_gfApplyCoefficients;
  objc_msgSend_setComputePipelineState_(v25, v105, v104, v106);
  objc_msgSend_setTexture_atIndex_(v25, v107, v16, 1);
  objc_msgSend_setTexture_atIndex_(v25, v108, v132, 4);

  objc_msgSend_setTexture_atIndex_(v25, v109, v21, 5);
  objc_msgSend_setImageblockWidth_height_(v25, v110, 32, 32);
  v114 = objc_msgSend_width(v21, v111, v112, v113);
  v118 = objc_msgSend_height(v21, v115, v116, v117);
  v128 = v114;
  v129 = v118;
  v130 = 1;
  v126 = v125;
  v127 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v25, v119, &v128, &v126);
  FigMetalDecRef();
  v123 = 0;
LABEL_10:
  objc_msgSend_endEncoding(v25, v120, v121, v122);
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();

  return v123;
}

@end