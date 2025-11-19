@interface DeepFusionLaplacianPyramid
- (DeepFusionLaplacianPyramid)initWithMetalContext:(id)a3;
- (int)_performLaplacianPyramid:(id)a3 inputTextures:(id)a4 destinationTextures:(id)a5 upsamplingFilter:(int)a6;
- (int)_validateInputs:(id)a3 gaussianPyramid:(id)a4;
- (int)upsampleUsing:(id)a3 inputTex:(id)a4 outputTexUpsampled:(id)a5 upsamplingFilter:(int)a6;
@end

@implementation DeepFusionLaplacianPyramid

- (DeepFusionLaplacianPyramid)initWithMetalContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = DeepFusionLaplacianPyramid;
  return [(DeepFusionPyramidBaseClass *)&v4 initWithMetalContext:a3];
}

- (int)upsampleUsing:(id)a3 inputTex:(id)a4 outputTexUpsampled:(id)a5 upsamplingFilter:(int)a6
{
  v10 = a3;
  v11 = a4;
  v15 = a5;
  v120 = 0;
  if (a6 != 1)
  {
    sub_2958C93F4();
    goto LABEL_7;
  }

  v16 = objc_msgSend_width(v11, v12, v13, v14);
  if (objc_msgSend_width(v15, v17, v18, v19) != 2 * v16 || (v23 = objc_msgSend_height(v11, v20, v21, v22), objc_msgSend_height(v15, v24, v25, v26) != 2 * v23))
  {
    sub_2958C9454(&v117);
LABEL_13:
    v113 = v117;
    goto LABEL_8;
  }

  v30 = objc_msgSend_allocator(self->super._metal, v27, v28, v29);
  v34 = objc_msgSend_newTextureDescriptor(v30, v31, v32, v33);

  if (!v34)
  {
    sub_2958C95B4(&v117);
    goto LABEL_13;
  }

  v38 = objc_msgSend_pixelFormat(v11, v35, v36, v37);
  v42 = objc_msgSend_desc(v34, v39, v40, v41);
  objc_msgSend_setPixelFormat_(v42, v43, v38, v44);

  v48 = objc_msgSend_width(v15, v45, v46, v47);
  v52 = objc_msgSend_desc(v34, v49, v50, v51);
  objc_msgSend_setWidth_(v52, v53, v48, v54);

  v58 = objc_msgSend_height(v11, v55, v56, v57);
  v62 = objc_msgSend_desc(v34, v59, v60, v61);
  objc_msgSend_setHeight_(v62, v63, v58, v64);

  v68 = objc_msgSend_desc(v34, v65, v66, v67);
  objc_msgSend_setUsage_(v68, v69, 3, v70);

  objc_msgSend_setLabel_(v34, v71, 0, v72);
  v76 = objc_msgSend_allocator(self->super._metal, v73, v74, v75);
  v79 = objc_msgSend_newTextureWithDescriptor_(v76, v77, v34, v78);
  v120 = v79;

  v83 = objc_msgSend_computeCommandEncoder(v10, v80, v81, v82);
  if (!v83)
  {
    sub_2958C94F0(v79, v34, &v117);
    goto LABEL_13;
  }

  v85 = v83;
  objc_msgSend_setImageblockWidth_height_(v83, v84, 32, 32);
  objc_msgSend_setComputePipelineState_(v85, v86, self->super._shaders->_krnLaplacianGaussianH, v87);
  objc_msgSend_setTexture_atIndex_(v85, v88, v11, 0);
  objc_msgSend_setTexture_atIndex_(v85, v89, v79, 1);
  v117 = objc_msgSend_width(v11, v90, v91, v92);
  v118 = objc_msgSend_height(v11, v93, v94, v95);
  v119 = 1;
  v115 = xmmword_2959D5EB0;
  v116 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v85, v96, &v117, &v115);
  objc_msgSend_setComputePipelineState_(v85, v97, self->super._shaders->_krnLaplacianGaussianV, v98);
  objc_msgSend_setTexture_atIndex_(v85, v99, v79, 0);
  objc_msgSend_setTexture_atIndex_(v85, v100, v15, 1);
  v104 = objc_msgSend_width(v15, v101, v102, v103);
  v108 = objc_msgSend_height(v11, v105, v106, v107);
  v117 = v104;
  v118 = v108;
  v119 = 1;
  v115 = xmmword_2959D63F0;
  v116 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v85, v109, &v117, &v115);
  objc_msgSend_endEncoding(v85, v110, v111, v112);
  FigMetalDecRef();

LABEL_7:
  v113 = 0;
LABEL_8:

  return v113;
}

- (int)_performLaplacianPyramid:(id)a3 inputTextures:(id)a4 destinationTextures:(id)a5 upsamplingFilter:(int)a6
{
  v10 = a3;
  v11 = a4;
  v162 = a5;
  shaders = self->super._shaders;
  if (a6 == 1)
  {
    v160 = v10;
    v161 = shaders->_krnLaplacianGaussianH;
    v159 = self->super._shaders->_krnLaplacianGaussianVLap;
    v15 = 0;
    v158 = 0;
    while (1)
    {
      if (v15 >= self->super._numLevels)
      {
LABEL_21:

        v10 = v160;
        goto LABEL_22;
      }

      v16 = objc_msgSend_objectAtIndexedSubscript_(v11, v13, v15, v14);
      v19 = objc_msgSend_objectAtIndexedSubscript_(v11, v17, v15 + 1, v18);
      v22 = objc_msgSend_objectAtIndexedSubscript_(v162, v20, v15, v21);
      v168 = 0;
      v26 = objc_msgSend_allocator(self->super._metal, v23, v24, v25);
      v30 = objc_msgSend_newTextureDescriptor(v26, v27, v28, v29);

      if (!v30)
      {
        break;
      }

      v34 = objc_msgSend_pixelFormat(v19, v31, v32, v33);
      v38 = objc_msgSend_desc(v30, v35, v36, v37);
      objc_msgSend_setPixelFormat_(v38, v39, v34, v40);

      v44 = objc_msgSend_width(v22, v41, v42, v43);
      v48 = objc_msgSend_desc(v30, v45, v46, v47);
      objc_msgSend_setWidth_(v48, v49, v44, v50);

      v54 = objc_msgSend_height(v19, v51, v52, v53);
      v58 = objc_msgSend_desc(v30, v55, v56, v57);
      objc_msgSend_setHeight_(v58, v59, v54, v60);

      v64 = objc_msgSend_desc(v30, v61, v62, v63);
      objc_msgSend_setUsage_(v64, v65, 3, v66);

      objc_msgSend_setLabel_(v30, v67, 0, v68);
      v72 = objc_msgSend_allocator(self->super._metal, v69, v70, v71);
      v75 = objc_msgSend_newTextureWithDescriptor_(v72, v73, v30, v74);
      v76 = v168;
      v168 = v75;

      v80 = objc_msgSend_computeCommandEncoder(v160, v77, v78, v79);
      if (!v80)
      {
        sub_2958C9788(&v165);
        goto LABEL_13;
      }

      v82 = v80;
      objc_msgSend_setImageblockWidth_height_(v80, v81, 32, 32);
      objc_msgSend_setComputePipelineState_(v82, v83, v161, v84);
      objc_msgSend_setTexture_atIndex_(v82, v85, v19, 0);
      objc_msgSend_setTexture_atIndex_(v82, v86, v168, 1);
      v90 = objc_msgSend_width(v19, v87, v88, v89);
      v94 = objc_msgSend_height(v19, v91, v92, v93);
      v165 = v90;
      v166 = v94;
      v167 = 1;
      v163 = xmmword_2959D5EB0;
      v164 = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v82, v95, &v165, &v163);
      objc_msgSend_endEncoding(v82, v96, v97, v98);
      v102 = objc_msgSend_computeCommandEncoder(v160, v99, v100, v101);

      if (!v102)
      {
        sub_2958C96EC(&v165);
        goto LABEL_13;
      }

      objc_msgSend_setImageblockWidth_height_(v102, v103, 32, 32);
      objc_msgSend_setComputePipelineState_(v102, v104, v159, v105);
      objc_msgSend_setTexture_atIndex_(v102, v106, v16, 0);
      v107 = 1;
      objc_msgSend_setTexture_atIndex_(v102, v108, v168, 1);
      objc_msgSend_setTexture_atIndex_(v102, v109, v22, 2);
      v113 = objc_msgSend_width(v22, v110, v111, v112);
      v117 = objc_msgSend_height(v168, v114, v115, v116);
      v165 = v113;
      v166 = v117;
      v167 = 1;
      v163 = xmmword_2959D63F0;
      v164 = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v102, v118, &v165, &v163);
      objc_msgSend_endEncoding(v102, v119, v120, v121);
      FigMetalDecRef();

LABEL_8:
      ++v15;
      if ((v107 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    sub_2958C9824(&v165);
LABEL_13:
    v107 = 0;
    v158 = v165;
    goto LABEL_8;
  }

  v161 = shaders->_krnLaplacianPyramidSubtractionPass;
  v124 = 0;
  v158 = 0;
  do
  {
    if (v124 >= self->super._numLevels)
    {
      break;
    }

    v125 = objc_msgSend_objectAtIndexedSubscript_(v11, v122, v124, v123);
    v128 = objc_msgSend_objectAtIndexedSubscript_(v11, v126, v124 + 1, v127);
    v131 = objc_msgSend_objectAtIndexedSubscript_(v162, v129, v124, v130);
    v135 = objc_msgSend_computeCommandEncoder(v10, v132, v133, v134);
    v139 = v135;
    if (v135)
    {
      objc_msgSend_insertCompressedTextureReinterpretationFlush(v135, v136, v137, v138);
      objc_msgSend_setComputePipelineState_(v139, v140, v161, v141);
      objc_msgSend_setTexture_atIndex_(v139, v142, v125, 0);
      objc_msgSend_setTexture_atIndex_(v139, v143, v128, 1);
      objc_msgSend_setTexture_atIndex_(v139, v144, v131, 2);
      v148 = objc_msgSend_width(v125, v145, v146, v147);
      v152 = objc_msgSend_height(v125, v149, v150, v151);
      v165 = v148;
      v166 = v152;
      v167 = 1;
      v163 = xmmword_2959D5ED0;
      v164 = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v139, v153, &v165, &v163);
      objc_msgSend_endEncoding(v139, v154, v155, v156);
    }

    else
    {
      sub_2958C9650(&v165);
      v158 = v165;
    }

    ++v124;
  }

  while (v139);
LABEL_22:

  return v158;
}

- (int)_validateInputs:(id)a3 gaussianPyramid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = v7;
  if (!v6)
  {
    sub_2958C9DA0(&v67);
LABEL_21:
    v65 = v67;
    goto LABEL_11;
  }

  if (!v7)
  {
    sub_2958C9D04(&v67);
    goto LABEL_21;
  }

  outputTextures = self->super._outputTextures;
  if (!outputTextures)
  {
    sub_2958C9C68(&v67);
    goto LABEL_21;
  }

  if (objc_msgSend_count(outputTextures, v8, v9, v10) != self->super._numLevels)
  {
    sub_2958C98C0(&v67);
    goto LABEL_21;
  }

  v16 = objc_msgSend_outputTextureArray(v11, v13, v14, v15);

  if (!v16)
  {
    sub_2958C9BCC(&v67);
    goto LABEL_21;
  }

  v20 = objc_msgSend_count(self->super._outputTextures, v17, v18, v19) + 1;
  v24 = objc_msgSend_outputTextureArray(v11, v21, v22, v23);
  v28 = objc_msgSend_count(v24, v25, v26, v27);

  if (v20 != v28)
  {
    sub_2958C995C(&v67);
    goto LABEL_21;
  }

  v31 = objc_msgSend_objectAtIndexedSubscript_(self->super._outputTextures, v29, 0, v30);
  v35 = objc_msgSend_width(v31, v32, v33, v34);
  v39 = objc_msgSend_outputTextureArray(v11, v36, v37, v38);
  v42 = objc_msgSend_objectAtIndexedSubscript_(v39, v40, 0, v41);
  v46 = objc_msgSend_width(v42, v43, v44, v45);

  if (v35 != v46)
  {
    sub_2958C99F8(&v67);
    goto LABEL_21;
  }

  v49 = objc_msgSend_objectAtIndexedSubscript_(self->super._outputTextures, v47, 0, v48);
  v53 = objc_msgSend_height(v49, v50, v51, v52);
  v57 = objc_msgSend_outputTextureArray(v11, v54, v55, v56);
  v60 = objc_msgSend_objectAtIndexedSubscript_(v57, v58, 0, v59);
  v64 = objc_msgSend_height(v60, v61, v62, v63);

  if (v53 != v64)
  {
    sub_2958C9A94(&v67);
    goto LABEL_21;
  }

  if (!self->super._shaders)
  {
    sub_2958C9B30(&v67);
    goto LABEL_21;
  }

  v65 = 0;
LABEL_11:

  return v65;
}

@end