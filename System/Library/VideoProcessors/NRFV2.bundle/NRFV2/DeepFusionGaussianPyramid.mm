@interface DeepFusionGaussianPyramid
- (DeepFusionGaussianPyramid)initWithMetalContext:(id)context withFilter:(int)filter;
- (int)_performGaussianPyramid:(id)pyramid inputTex:(id)tex textureArray:(id)array;
- (int)_validateInputs:(id)inputs inTex:(id)tex;
- (int)computeUsing:(id)using inTex:(id)tex;
@end

@implementation DeepFusionGaussianPyramid

- (DeepFusionGaussianPyramid)initWithMetalContext:(id)context withFilter:(int)filter
{
  v6.receiver = self;
  v6.super_class = DeepFusionGaussianPyramid;
  result = [(DeepFusionPyramidBaseClass *)&v6 initWithMetalContext:context];
  if (result)
  {
    result->_filter = filter;
  }

  return result;
}

- (int)_performGaussianPyramid:(id)pyramid inputTex:(id)tex textureArray:(id)array
{
  pyramidCopy = pyramid;
  texCopy = tex;
  arrayCopy = array;
  v13 = objc_msgSend_allocator(self->super._metal, v10, v11, v12);
  v17 = objc_msgSend_newTextureDescriptor(v13, v14, v15, v16);

  if (!v17)
  {
    sub_2958C8DDC(&v180);
LABEL_39:
    v174 = v180;
    goto LABEL_34;
  }

  pixelFormat = self->super._pixelFormat;
  v22 = objc_msgSend_desc(v17, v18, v19, v20);
  objc_msgSend_setPixelFormat_(v22, v23, pixelFormat, v24);

  v28 = objc_msgSend_desc(v17, v25, v26, v27);
  objc_msgSend_setUsage_(v28, v29, 7, v30);

  v33 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v31, 0, v32);

  if (v33 == texCopy)
  {
    goto LABEL_5;
  }

  v37 = objc_msgSend_blitCommandEncoder(pyramidCopy, v34, v35, v36);
  if (!v37)
  {
    sub_2958C8B4C(&v180);
    goto LABEL_39;
  }

  v41 = v37;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  *&v178 = objc_msgSend_width(texCopy, v38, v39, v40);
  *(&v178 + 1) = objc_msgSend_height(texCopy, v42, v43, v44);
  v179 = 1;
  v47 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v45, 0, v46);
  memset(v177, 0, sizeof(v177));
  objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v41, v48, texCopy, 0, 0, &v180, &v178, v47, 0, 0, v177);

  objc_msgSend_endEncoding(v41, v49, v50, v51);
LABEL_5:
  v175 = v17;
  filter = self->_filter;
  if (filter)
  {
    if (filter == 1)
    {
      if (self->super._numLevels >= 2)
      {
        v174 = 0;
        v53 = 1;
        while (1)
        {
          v54 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v34, v53 - 1, v36);
          v57 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v55, v53, v56);
          v61 = objc_msgSend_width(v57, v58, v59, v60);
          v65 = objc_msgSend_desc(v17, v62, v63, v64);
          objc_msgSend_setWidth_(v65, v66, v61, v67);

          v71 = objc_msgSend_height(v54, v68, v69, v70);
          v75 = objc_msgSend_desc(v17, v72, v73, v74);
          objc_msgSend_setHeight_(v75, v76, v71, v77);

          objc_msgSend_setLabel_(v17, v78, 0, v79);
          v83 = objc_msgSend_allocator(self->super._metal, v80, v81, v82);
          v177[0] = objc_msgSend_newTextureWithDescriptor_(v83, v84, v17, v85);

          v89 = objc_msgSend_desc(v17, v86, v87, v88);
          v93 = objc_msgSend_compressionFootprint(v89, v90, v91, v92);

          if (!v93)
          {
            goto LABEL_12;
          }

          v97 = objc_msgSend_blitCommandEncoder(pyramidCopy, v94, v95, v96);
          if (v97)
          {
            break;
          }

          sub_2958C8BE8(&v180);
          v109 = 0;
          v174 = v180;
LABEL_15:

          if (!v109)
          {
            goto LABEL_33;
          }

          ++v53;
          v17 = v175;
          if (v53 >= self->super._numLevels)
          {
            goto LABEL_34;
          }
        }

        v100 = v97;
        objc_msgSend_invalidateCompressedTexture_(v97, v98, v177[0], v99);
        objc_msgSend_endEncoding(v100, v101, v102, v103);

LABEL_12:
        v104 = objc_msgSend_computeCommandEncoder(pyramidCopy, v94, v95, v96);
        v108 = v104;
        v109 = v104 != 0;
        if (v104)
        {
          objc_msgSend_insertCompressedTextureReinterpretationFlush(v104, v105, v106, v107);
          objc_msgSend_setComputePipelineState_(v108, v110, self->super._shaders->_krnGaussianPyramid5SeparableH, v111);
          objc_msgSend_setTexture_atIndex_(v108, v112, v54, 0);
          objc_msgSend_setTexture_atIndex_(v108, v113, v177[0], 1);
          v117 = objc_msgSend_width(v177[0], v114, v115, v116);
          v121 = objc_msgSend_height(v177[0], v118, v119, v120);
          v180 = v117;
          v181 = v121;
          v182 = 1;
          v178 = xmmword_2959D5ED0;
          v179 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v108, v122, &v180, &v178);
          objc_msgSend_setComputePipelineState_(v108, v123, self->super._shaders->_krnGaussianPyramid5SeparableV, v124);
          objc_msgSend_setTexture_atIndex_(v108, v125, v177[0], 0);
          objc_msgSend_setTexture_atIndex_(v108, v126, v57, 1);
          v130 = objc_msgSend_width(v54, v127, v128, v129);
          v134 = objc_msgSend_height(v54, v131, v132, v133);
          v180 = v130;
          v181 = v134;
          v182 = 1;
          v178 = xmmword_2959D5ED0;
          v179 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v108, v135, &v180, &v178);
          objc_msgSend_endEncoding(v108, v136, v137, v138);
          FigMetalDecRef();
        }

        else
        {
          sub_2958C8C84(&v180);
          v174 = v180;
        }

        goto LABEL_15;
      }

      v174 = 0;
      goto LABEL_33;
    }

    v139 = 16;
  }

  else
  {
    v139 = 8;
  }

  v142 = *(&self->super._shaders->super.isa + v139);
  v143 = 0.5;
  if (!self->_filter)
  {
    v143 = 1.0;
  }

  *v177 = v143;
  *(v177 + 1) = v143;
  if (self->super._numLevels < 2)
  {
    v174 = 0;
  }

  else
  {
    v144 = 1;
    while (1)
    {
      v145 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v140, v144 - 1, v141);
      v148 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v146, v144, v147);
      v152 = objc_msgSend_computeCommandEncoder(pyramidCopy, v149, v150, v151);
      if (!v152)
      {
        break;
      }

      v156 = v152;
      objc_msgSend_insertCompressedTextureReinterpretationFlush(v152, v153, v154, v155);
      objc_msgSend_setComputePipelineState_(v156, v157, v142, v158);
      objc_msgSend_setTexture_atIndex_(v156, v159, v145, 0);
      objc_msgSend_setTexture_atIndex_(v156, v160, v148, 1);
      if (!self->_filter)
      {
        objc_msgSend_setBytes_length_atIndex_(v156, v161, v177, 8, 0);
      }

      v164 = objc_msgSend_width(v148, v161, v162, v163);
      v168 = objc_msgSend_height(v148, v165, v166, v167);
      v180 = v164;
      v181 = v168;
      v182 = 1;
      v178 = xmmword_2959D5ED0;
      v179 = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v156, v169, &v180, &v178);
      objc_msgSend_endEncoding(v156, v170, v171, v172);

      if (++v144 >= self->super._numLevels)
      {
        v174 = 0;
        goto LABEL_32;
      }
    }

    sub_2958C8D20(v148, v145, &v180);
    v174 = v180;
  }

LABEL_32:

LABEL_33:
  v17 = v175;
LABEL_34:

  return v174;
}

- (int)_validateInputs:(id)inputs inTex:(id)tex
{
  inputsCopy = inputs;
  texCopy = tex;
  if (!texCopy)
  {
    sub_2958C9220(&v36);
LABEL_17:
    v34 = v36;
    goto LABEL_9;
  }

  if (!inputsCopy)
  {
    sub_2958C9184(&v36);
    goto LABEL_17;
  }

  outputTextures = self->super._outputTextures;
  if (!outputTextures)
  {
    sub_2958C90E8(&v36);
    goto LABEL_17;
  }

  v11 = objc_msgSend_objectAtIndexedSubscript_(outputTextures, v7, 0, v8);
  v15 = objc_msgSend_width(v11, v12, v13, v14);
  v19 = objc_msgSend_width(texCopy, v16, v17, v18);

  if (v15 != v19)
  {
    sub_2958C8E78(&v36);
    goto LABEL_17;
  }

  v22 = objc_msgSend_objectAtIndexedSubscript_(self->super._outputTextures, v20, 0, v21);
  v26 = objc_msgSend_height(v22, v23, v24, v25);
  v30 = objc_msgSend_height(texCopy, v27, v28, v29);

  if (v26 != v30)
  {
    sub_2958C8F14(&v36);
    goto LABEL_17;
  }

  if (objc_msgSend_count(self->super._outputTextures, v31, v32, v33) != self->super._numLevels)
  {
    sub_2958C8FB0(&v36);
    goto LABEL_17;
  }

  if (!self->super._shaders)
  {
    sub_2958C904C(&v36);
    goto LABEL_17;
  }

  v34 = 0;
LABEL_9:

  return v34;
}

- (int)computeUsing:(id)using inTex:(id)tex
{
  usingCopy = using;
  texCopy = tex;
  if (objc_msgSend__validateInputs_inTex_(self, v8, usingCopy, texCopy))
  {
    sub_2958C92BC(&v12);
    v10 = v12;
  }

  else if (objc_msgSend__performGaussianPyramid_inputTex_textureArray_(self, v9, usingCopy, texCopy, self->super._outputTextures))
  {
    sub_2958C9358(&v13);
    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end