@interface UniImage
+ (UniImage)imageWithCIImage:(id)image;
+ (UniImage)imageWithMTLTexture:(id)texture;
+ (UniImage)imageWithObject:(id)object;
+ (id)_cleanupParameterDescription:(id)description;
+ (id)_objectsForNames:(id)names forKernel:(id)kernel;
+ (id)_orderedInputNamesForKernel:(id)kernel inputImageSet:(id)set outputImageSet:(id)imageSet showNonImageParams:(BOOL)params;
+ (id)_stringForObject:(id)object objectToStringMap:(id)map;
+ (id)_textureDescriptionForDot:(id)dot;
+ (void)metalRenderImageArray:(id)array queue:(id)queue waitUntilScheduled:(BOOL)scheduled waitUntilCompleted:(BOOL)completed;
- (CGRect)extent;
- (UniImage)initWithCIImage:(id)image;
- (UniImage)initWithKernel:(id)kernel;
- (UniImage)initWithMTLTexture:(id)texture;
- (UniImage)initWithObject:(id)object;
- (id)coreImageRender:(id)render;
- (id)coreImageRender:(id)render subRect:(CGRect)rect outputTexture:(id)texture;
- (id)debugQuickLookObject;
- (id)description;
- (void)metalRender;
- (void)metalRender:(id)render waitUntilScheduled:(BOOL)scheduled waitUntilCompleted:(BOOL)completed;
@end

@implementation UniImage

- (UniImage)initWithKernel:(id)kernel
{
  kernelCopy = kernel;
  v12.receiver = self;
  v12.super_class = UniImage;
  v6 = [(UniImage *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->kernel, kernel);
    image = v7->image;
    v7->image = 0;

    texture = v7->texture;
    v7->texture = 0;

    buffer = v7->buffer;
    v7->buffer = 0;
  }

  return v7;
}

- (UniImage)initWithCIImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    v13.receiver = self;
    v13.super_class = UniImage;
    v6 = [(UniImage *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->image, image);
      texture = v7->texture;
      v7->texture = 0;

      kernel = v7->kernel;
      v7->kernel = 0;

      buffer = v7->buffer;
      v7->buffer = 0;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (UniImage)imageWithCIImage:(id)image
{
  if (image)
  {
    imageCopy = image;
    v4 = objc_alloc(objc_opt_class());
    v6 = objc_msgSend_initWithCIImage_(v4, v5, imageCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UniImage)initWithMTLTexture:(id)texture
{
  textureCopy = texture;
  v14.receiver = self;
  v14.super_class = UniImage;
  v6 = [(UniImage *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->texture, texture);
    v9 = objc_msgSend_imageWithMTLTexture_options_(MEMORY[0x29EDB9178], v8, v7->texture, MEMORY[0x29EDB8EA0]);
    image = v7->image;
    v7->image = v9;

    kernel = v7->kernel;
    v7->kernel = 0;

    buffer = v7->buffer;
    v7->buffer = 0;
  }

  return v7;
}

+ (UniImage)imageWithMTLTexture:(id)texture
{
  textureCopy = texture;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithMTLTexture_(v4, v5, textureCopy);

  return v6;
}

- (UniImage)initWithObject:(id)object
{
  objectCopy = object;
  v6 = objectCopy;
  if (!objectCopy)
  {
    goto LABEL_10;
  }

  if (!objc_msgSend_conformsToProtocol_(objectCopy, v5, &unk_2A1CA0A70))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_msgSend_initWithCIImage_(self, v9, v6);
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
      goto LABEL_7;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v8 = objc_msgSend_initWithMTLTexture_(self, v7, v6);
LABEL_6:
  v10 = v8;
  self = v10;
LABEL_7:
  v11 = v10;
LABEL_11:

  return v11;
}

+ (UniImage)imageWithObject:(id)object
{
  objectCopy = object;
  v4 = [UniImage alloc];
  v6 = objc_msgSend_initWithObject_(v4, v5, objectCopy);

  return v6;
}

- (CGRect)extent
{
  v4 = objc_msgSend_image(self, a2, v2);

  if (v4)
  {
    objc_msgSend_extent(self->image, v5, v6);
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v15 = objc_msgSend_texture(self, v5, v6);

    if (v15)
    {
      v18 = objc_msgSend_texture(self, v16, v17);
      v20 = objc_msgSend__mtlTextureForImage_(UniKernel, v19, v18);

      if (v20 && objc_msgSend_conformsToProtocol_(v20, v21, &unk_2A1CA0A70))
      {
        v12 = objc_msgSend_width(v20, v22, v23);
        v14 = objc_msgSend_height(v20, v24, v25);
        v8 = 0.0;
        v10 = 0.0;
      }

      else
      {
        v8 = *MEMORY[0x29EDB90E0];
        v10 = *(MEMORY[0x29EDB90E0] + 8);
        v12 = *(MEMORY[0x29EDB90E0] + 16);
        v14 = *(MEMORY[0x29EDB90E0] + 24);
      }
    }

    else
    {
      v8 = *MEMORY[0x29EDB90E0];
      v10 = *(MEMORY[0x29EDB90E0] + 8);
      v12 = *(MEMORY[0x29EDB90E0] + 16);
      v14 = *(MEMORY[0x29EDB90E0] + 24);
    }
  }

  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p", v4, self);
  v9 = objc_msgSend_texture(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_texture(self, v10, v11);
    v14 = objc_msgSend_conformsToProtocol_(v12, v13, &unk_2A1CA0A70);

    v17 = objc_msgSend_texture(self, v15, v16);
    v20 = v17;
    if (v14)
    {
      shortTextureDescription(v17);
    }

    else
    {
      objc_msgSend_description(v17, v18, v19);
    }
    v21 = ;
    objc_msgSend_appendString_(v6, v22, v21);
  }

  v23 = objc_msgSend_image(self, v10, v11);

  if (v23)
  {
    v26 = MEMORY[0x29EDBA0F8];
    v27 = objc_msgSend_image(self, v24, v25);
    v29 = objc_msgSend_stringWithFormat_(v26, v28, @" image = %@", v27);
    objc_msgSend_appendString_(v6, v30, v29);
  }

  v31 = objc_msgSend_buffer(self, v24, v25);

  if (v31)
  {
    v34 = MEMORY[0x29EDBA0F8];
    v35 = objc_msgSend_buffer(self, v32, v33);
    v37 = objc_msgSend_stringWithFormat_(v34, v36, @" buffer = %@", v35);
    objc_msgSend_appendString_(v6, v38, v37);
  }

  v39 = objc_msgSend_kernel(self, v32, v33);

  if (v39)
  {
    v42 = MEMORY[0x29EDBA0F8];
    v43 = objc_msgSend_kernel(self, v40, v41);
    v45 = objc_msgSend_stringWithFormat_(v42, v44, @" kernel = %@", v43);
    objc_msgSend_appendString_(v6, v46, v45);
  }

  objc_msgSend_appendString_(v6, v40, @">");

  return v6;
}

- (id)debugQuickLookObject
{
  v4 = objc_msgSend_image(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_image(self, v5, v6);
    if (!v7)
    {
LABEL_12:
      v16 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = objc_msgSend_texture(self, v5, v6);

    if (!v8)
    {
      goto LABEL_12;
    }

    v11 = MEMORY[0x29EDB9178];
    v12 = objc_msgSend_texture(self, v9, v10);
    v7 = objc_msgSend_imageWithMTLTexture_options_(v11, v13, v12, 0);

    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v14 = NSSelectorFromString(&cfstr_Initwithciimag.isa);
  v15 = NSClassFromString(&cfstr_Nsbitmapimager.isa);
  if (!v15)
  {
    v15 = NSClassFromString(&cfstr_Uiimage.isa);
  }

  v16 = 0;
  if (v15 && v14)
  {
    v17 = [v15 alloc];
    v16 = objc_msgSend_performSelector_withObject_(v17, v18, v14, v7);
  }

LABEL_13:

  return v16;
}

+ (void)metalRenderImageArray:(id)array queue:(id)queue waitUntilScheduled:(BOOL)scheduled waitUntilCompleted:(BOOL)completed
{
  completedCopy = completed;
  scheduledCopy = scheduled;
  arrayCopy = array;
  queueCopy = queue;
  v569 = objc_msgSend_set(MEMORY[0x29EDB8E20], v9, v10);
  v565 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v11, v12);
  v15 = objc_msgSend_set(MEMORY[0x29EDB8E20], v13, v14);
  v18 = objc_msgSend_weakObjectsPointerArray(MEMORY[0x29EDBA0A0], v16, v17);
  v21 = objc_msgSend_lastObject(arrayCopy, v19, v20);
  v24 = objc_msgSend_kernel(v21, v22, v23);

  v563 = v24;
  v27 = objc_msgSend_getRenderOrder(v24, v25, v26);
  v581 = 0u;
  v582 = 0u;
  v583 = 0u;
  v584 = 0u;
  v28 = arrayCopy;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v581, v580, 16);
  if (v30)
  {
    v31 = v30;
    v32 = *v582;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v582 != v32)
        {
          objc_enumerationMutation(v28);
        }

        sub_2956B918C(*(*(&v581 + 1) + 8 * i), v15, v18);
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v34, &v581, v580, 16);
    }

    while (v31);
  }

  v35 = v27;
  if (v35 && objc_msgSend_pointerAtIndex_(v35, v36, 0))
  {
    v38 = objc_msgSend_pointerAtIndex_(v35, v37, 0);
    v41 = objc_msgSend_device(v38, v39, v40);
    v44 = v41;
    if (!queueCopy)
    {
      queueCopy = objc_msgSend_newCommandQueue(v41, v42, v43);
    }

    v560 = v44;
    objc_opt_class();
    objc_opt_class();
    v45 = MEMORY[0x29EDB8E20];
    v48 = objc_msgSend_count(v35, v46, v47);
    v566 = objc_msgSend_setWithCapacity_(v45, v49, v48);
    v574 = 0u;
    v575 = 0u;
    v576 = 0u;
    v577 = 0u;
    v561 = v35;
    obj = v35;
    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v574, v573, 16);
    if (v51)
    {
      v52 = v51;
      v53 = 0;
      v570 = *v575;
      v564 = queueCopy;
      do
      {
        v54 = 0;
        do
        {
          if (*v575 != v570)
          {
            objc_enumerationMutation(obj);
          }

          v55 = *(*(&v574 + 1) + 8 * v54);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            sub_2956CE0C0();
          }

          v56 = v55;
          if (!v56)
          {
            goto LABEL_103;
          }

          v57 = objc_opt_class();
          if (v57 == objc_opt_class())
          {
            v73 = objc_msgSend_mk(v56, v58, v59);

            if (v73)
            {
              v76 = objc_msgSend_mk(v56, v74, v75);
              v64 = objc_msgSend_label(v76, v77, v78);

              v81 = objc_msgSend_length(@"run kernel: modify_blurmap_apply", v79, v80);
              v83 = objc_msgSend_substringWithRange_(@"run kernel: modify_blurmap_apply", v82, 12, v81 - 12);
              isEqualToString = objc_msgSend_isEqualToString_(v64, v84, v83);

              v88 = "run kernel: modify_blurmap_apply";
              if ((isEqualToString & 1) != 0
                || (v89 = objc_msgSend_length(@"run kernel: modify_blurmap_glasses_apply", v86, v87), objc_msgSend_substringWithRange_(@"run kernel: modify_blurmap_glasses_apply", v90, 12, v89 - 12), v91 = objc_claimAutoreleasedReturnValue(), v93 = objc_msgSend_isEqualToString_(v64, v92, v91), v91, v88 = "run kernel: modify_blurmap_glasses_apply", (v93 & 1) != 0)
                || (v96 = objc_msgSend_length(@"run kernel: threshold_hard_apply", v94, v95), objc_msgSend_substringWithRange_(@"run kernel: threshold_hard_apply", v97, 12, v96 - 12), v98 = objc_claimAutoreleasedReturnValue(), v100 = objc_msgSend_isEqualToString_(v64, v99, v98), v98, v88 = "run kernel: threshold_hard_apply", (v100 & 1) != 0)
                || (v103 = objc_msgSend_length(@"run kernel: map_linear_apply", v101, v102), objc_msgSend_substringWithRange_(@"run kernel: map_linear_apply", v104, 12, v103 - 12), v105 = objc_claimAutoreleasedReturnValue(), v107 = objc_msgSend_isEqualToString_(v64, v106, v105), v105, v88 = "run kernel: map_linear_apply", (v107 & 1) != 0)
                || (v110 = objc_msgSend_length(@"run kernel: map_linear_no_secondary_tex_apply", v108, v109), objc_msgSend_substringWithRange_(@"run kernel: map_linear_no_secondary_tex_apply", v111, 12, v110 - 12), v112 = objc_claimAutoreleasedReturnValue(), v114 = objc_msgSend_isEqualToString_(v64, v113, v112), v112, v88 = "run kernel: map_linear_no_secondary_tex_apply", (v114 & 1) != 0)
                || (v117 = objc_msgSend_length(@"run kernel: disparity_refinement_bicubic_upscale", v115, v116), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_bicubic_upscale", v118, 12, v117 - 12), v119 = objc_claimAutoreleasedReturnValue(), v121 = objc_msgSend_isEqualToString_(v64, v120, v119), v119, v88 = "run kernel: disparity_refinement_bicubic_upscale", (v121 & 1) != 0)
                || (v124 = objc_msgSend_length(@"run kernel: disparity_refinement_slm_passthrough", v122, v123), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_slm_passthrough", v125, 12, v124 - 12), v126 = objc_claimAutoreleasedReturnValue(), v128 = objc_msgSend_isEqualToString_(v64, v127, v126), v126, v88 = "run kernel: disparity_refinement_slm_passthrough", (v128 & 1) != 0)
                || (v131 = objc_msgSend_length(@"run kernel: disparity_refinement_calcweightsX", v129, v130), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_calcweightsX", v132, 12, v131 - 12), v133 = objc_claimAutoreleasedReturnValue(), v135 = objc_msgSend_isEqualToString_(v64, v134, v133), v133, v88 = "run kernel: disparity_refinement_calcweightsX", (v135 & 1) != 0)
                || (v138 = objc_msgSend_length(@"run kernel: disparity_refinement_calcweightsY", v136, v137), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_calcweightsY", v139, 12, v138 - 12), v140 = objc_claimAutoreleasedReturnValue(), v142 = objc_msgSend_isEqualToString_(v64, v141, v140), v140, v88 = "run kernel: disparity_refinement_calcweightsY", (v142 & 1) != 0)
                || (v145 = objc_msgSend_length(@"run kernel: disparity_refinement_preproc", v143, v144), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_preproc", v146, 12, v145 - 12), v147 = objc_claimAutoreleasedReturnValue(), v149 = objc_msgSend_isEqualToString_(v64, v148, v147), v147, v88 = "run kernel: disparity_refinement_preproc", (v149 & 1) != 0)
                || (v152 = objc_msgSend_length(@"run kernel: disparity_refinement_sample", v150, v151), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_sample", v153, 12, v152 - 12), v154 = objc_claimAutoreleasedReturnValue(), v156 = objc_msgSend_isEqualToString_(v64, v155, v154), v154, v88 = "run kernel: disparity_refinement_sample", (v156 & 1) != 0)
                || (v159 = objc_msgSend_length(@"run kernel: disparity_refinement_antialias", v157, v158), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_antialias", v160, 12, v159 - 12), v161 = objc_claimAutoreleasedReturnValue(), v163 = objc_msgSend_isEqualToString_(v64, v162, v161), v161, v88 = "run kernel: disparity_refinement_antialias", (v163 & 1) != 0)
                || (v166 = objc_msgSend_length(@"run kernel: facemask_calc", v164, v165), objc_msgSend_substringWithRange_(@"run kernel: facemask_calc", v167, 12, v166 - 12), v168 = objc_claimAutoreleasedReturnValue(), v170 = objc_msgSend_isEqualToString_(v64, v169, v168), v168, v88 = "run kernel: facemask_calc", (v170 & 1) != 0)
                || (v173 = objc_msgSend_length(@"run kernel: facemask_apply", v171, v172), objc_msgSend_substringWithRange_(@"run kernel: facemask_apply", v174, 12, v173 - 12), v175 = objc_claimAutoreleasedReturnValue(), v177 = objc_msgSend_isEqualToString_(v64, v176, v175), v175, v88 = "run kernel: facemask_apply", (v177 & 1) != 0)
                || (v180 = objc_msgSend_length(@"run kernel: fpDisparityRefinementPreprocessing", v178, v179), objc_msgSend_substringWithRange_(@"run kernel: fpDisparityRefinementPreprocessing", v181, 12, v180 - 12), v182 = objc_claimAutoreleasedReturnValue(), v184 = objc_msgSend_isEqualToString_(v64, v183, v182), v182, v88 = "run kernel: fpDisparityRefinementPreprocessing", (v184 & 1) != 0)
                || (v187 = objc_msgSend_length(@"run kernel: fp_slm_calc", v185, v186), objc_msgSend_substringWithRange_(@"run kernel: fp_slm_calc", v188, 12, v187 - 12), v189 = objc_claimAutoreleasedReturnValue(), v191 = objc_msgSend_isEqualToString_(v64, v190, v189), v189, v88 = "run kernel: fp_slm_calc", (v191 & 1) != 0)
                || (v194 = objc_msgSend_length(@"run kernel: fp_slm_calc_eyes", v192, v193), objc_msgSend_substringWithRange_(@"run kernel: fp_slm_calc_eyes", v195, 12, v194 - 12), v196 = objc_claimAutoreleasedReturnValue(), v198 = objc_msgSend_isEqualToString_(v64, v197, v196), v196, v88 = "run kernel: fp_slm_calc_eyes", (v198 & 1) != 0)
                || (v201 = objc_msgSend_length(@"run kernel: segmentation_fusion_apply", v199, v200), objc_msgSend_substringWithRange_(@"run kernel: segmentation_fusion_apply", v202, 12, v201 - 12), v203 = objc_claimAutoreleasedReturnValue(), v205 = objc_msgSend_isEqualToString_(v64, v204, v203), v203, v88 = "run kernel: segmentation_fusion_apply", (v205 & 1) != 0)
                || (v208 = objc_msgSend_length(@"run kernel: slm_shiftmap_calcminmax", v206, v207), objc_msgSend_substringWithRange_(@"run kernel: slm_shiftmap_calcminmax", v209, 12, v208 - 12), v210 = objc_claimAutoreleasedReturnValue(), v212 = objc_msgSend_isEqualToString_(v64, v211, v210), v210, v88 = "run kernel: slm_shiftmap_calcminmax", (v212 & 1) != 0)
                || (v215 = objc_msgSend_length(@"run kernel: slm_calc", v213, v214), objc_msgSend_substringWithRange_(@"run kernel: slm_calc", v216, 12, v215 - 12), v217 = objc_claimAutoreleasedReturnValue(), v219 = objc_msgSend_isEqualToString_(v64, v218, v217), v217, v88 = "run kernel: slm_calc", (v219 & 1) != 0)
                || (v222 = objc_msgSend_length(@"run kernel: slm_calc_eyes", v220, v221), objc_msgSend_substringWithRange_(@"run kernel: slm_calc_eyes", v223, 12, v222 - 12), v224 = objc_claimAutoreleasedReturnValue(), v226 = objc_msgSend_isEqualToString_(v64, v225, v224), v224, v88 = "run kernel: slm_calc_eyes", (v226 & 1) != 0)
                || (v229 = objc_msgSend_length(@"run kernel: eye_protection_face_calc", v227, v228), objc_msgSend_substringWithRange_(@"run kernel: eye_protection_face_calc", v230, 12, v229 - 12), v231 = objc_claimAutoreleasedReturnValue(), v233 = objc_msgSend_isEqualToString_(v64, v232, v231), v231, v88 = "run kernel: eye_protection_face_calc", (v233 & 1) != 0)
                || (v236 = objc_msgSend_length(@"run kernel: eye_protection_glasses_face_calc", v234, v235), objc_msgSend_substringWithRange_(@"run kernel: eye_protection_glasses_face_calc", v237, 12, v236 - 12), v238 = objc_claimAutoreleasedReturnValue(), v240 = objc_msgSend_isEqualToString_(v64, v239, v238), v238, v88 = "run kernel: eye_protection_glasses_face_calc", (v240 & 1) != 0)
                || (v243 = objc_msgSend_length(@"run kernel: crispHair_BlurX", v241, v242), objc_msgSend_substringWithRange_(@"run kernel: crispHair_BlurX", v244, 12, v243 - 12), v245 = objc_claimAutoreleasedReturnValue(), v247 = objc_msgSend_isEqualToString_(v64, v246, v245), v245, v88 = "run kernel: crispHair_BlurX", (v247 & 1) != 0)
                || (v250 = objc_msgSend_length(@"run kernel: crispHair_BlurY", v248, v249), objc_msgSend_substringWithRange_(@"run kernel: crispHair_BlurY", v251, 12, v250 - 12), v252 = objc_claimAutoreleasedReturnValue(), v254 = objc_msgSend_isEqualToString_(v64, v253, v252), v252, v88 = "run kernel: crispHair_BlurY", (v254 & 1) != 0)
                || (v257 = objc_msgSend_length(@"run kernel: crispHair_expandedDispX", v255, v256), objc_msgSend_substringWithRange_(@"run kernel: crispHair_expandedDispX", v258, 12, v257 - 12), v259 = objc_claimAutoreleasedReturnValue(), v261 = objc_msgSend_isEqualToString_(v64, v260, v259), v259, v88 = "run kernel: crispHair_expandedDispX", (v261 & 1) != 0)
                || (v264 = objc_msgSend_length(@"run kernel: crispHair_expandedDispY", v262, v263), objc_msgSend_substringWithRange_(@"run kernel: crispHair_expandedDispY", v265, 12, v264 - 12), v266 = objc_claimAutoreleasedReturnValue(), v268 = objc_msgSend_isEqualToString_(v64, v267, v266), v266, v88 = "run kernel: crispHair_expandedDispY", (v268 & 1) != 0)
                || (v271 = objc_msgSend_length(@"run kernel: crispHairDownsamplingSingle", v269, v270), objc_msgSend_substringWithRange_(@"run kernel: crispHairDownsamplingSingle", v272, 12, v271 - 12), v273 = objc_claimAutoreleasedReturnValue(), v275 = objc_msgSend_isEqualToString_(v64, v274, v273), v273, v88 = "run kernel: crispHairDownsamplingSingle", (v275 & 1) != 0)
                || (v278 = objc_msgSend_length(@"run kernel: blurmap_x_smoothing", v276, v277), objc_msgSend_substringWithRange_(@"run kernel: blurmap_x_smoothing", v279, 12, v278 - 12), v280 = objc_claimAutoreleasedReturnValue(), v282 = objc_msgSend_isEqualToString_(v64, v281, v280), v280, v88 = "run kernel: blurmap_x_smoothing", (v282 & 1) != 0)
                || (v285 = objc_msgSend_length(@"run kernel: blurmap_y_smoothing", v283, v284), objc_msgSend_substringWithRange_(@"run kernel: blurmap_y_smoothing", v286, 12, v285 - 12), v287 = objc_claimAutoreleasedReturnValue(), v289 = objc_msgSend_isEqualToString_(v64, v288, v287), v287, v88 = "run kernel: blurmap_y_smoothing", (v289 & 1) != 0)
                || (v292 = objc_msgSend_length(@"run kernel: blurmap_x_smoothing_scaled", v290, v291), objc_msgSend_substringWithRange_(@"run kernel: blurmap_x_smoothing_scaled", v293, 12, v292 - 12), v294 = objc_claimAutoreleasedReturnValue(), v296 = objc_msgSend_isEqualToString_(v64, v295, v294), v294, v88 = "run kernel: blurmap_x_smoothing_scaled", (v296 & 1) != 0)
                || (v299 = objc_msgSend_length(@"run kernel: blurmap_y_smoothing_scaled", v297, v298), objc_msgSend_substringWithRange_(@"run kernel: blurmap_y_smoothing_scaled", v300, 12, v299 - 12), v301 = objc_claimAutoreleasedReturnValue(), v303 = objc_msgSend_isEqualToString_(v64, v302, v301), v301, v88 = "run kernel: blurmap_y_smoothing_scaled", (v303 & 1) != 0)
                || (v306 = objc_msgSend_length(@"run kernel: blurmap_x_smoothing_unbiased", v304, v305), objc_msgSend_substringWithRange_(@"run kernel: blurmap_x_smoothing_unbiased", v307, 12, v306 - 12), v308 = objc_claimAutoreleasedReturnValue(), v310 = objc_msgSend_isEqualToString_(v64, v309, v308), v308, v88 = "run kernel: blurmap_x_smoothing_unbiased", (v310 & 1) != 0)
                || (v313 = objc_msgSend_length(@"run kernel: blurmap_y_smoothing_unbiased", v311, v312), objc_msgSend_substringWithRange_(@"run kernel: blurmap_y_smoothing_unbiased", v314, 12, v313 - 12), v315 = objc_claimAutoreleasedReturnValue(), v317 = objc_msgSend_isEqualToString_(v64, v316, v315), v315, v88 = "run kernel: blurmap_y_smoothing_unbiased", (v317 & 1) != 0)
                || (v320 = objc_msgSend_length(@"run kernel: blurmap_x_smoothing_scaled_unbiased", v318, v319), objc_msgSend_substringWithRange_(@"run kernel: blurmap_x_smoothing_scaled_unbiased", v321, 12, v320 - 12), v322 = objc_claimAutoreleasedReturnValue(), v324 = objc_msgSend_isEqualToString_(v64, v323, v322), v322, v88 = "run kernel: blurmap_x_smoothing_scaled_unbiased", (v324 & 1) != 0)
                || (v327 = objc_msgSend_length(@"run kernel: blurmap_y_smoothing_scaled_unbiased", v325, v326), objc_msgSend_substringWithRange_(@"run kernel: blurmap_y_smoothing_scaled_unbiased", v328, 12, v327 - 12), v329 = objc_claimAutoreleasedReturnValue(), v331 = objc_msgSend_isEqualToString_(v64, v330, v329), v329, v88 = "run kernel: blurmap_y_smoothing_scaled_unbiased", (v331 & 1) != 0)
                || (v334 = objc_msgSend_length(@"run kernel: sparserendering_preprocess", v332, v333), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_preprocess", v335, 12, v334 - 12), v336 = objc_claimAutoreleasedReturnValue(), v338 = objc_msgSend_isEqualToString_(v64, v337, v336), v336, v88 = "run kernel: sparserendering_preprocess", (v338 & 1) != 0)
                || (v341 = objc_msgSend_length(@"run kernel: sparserendering_preprocess_scaled", v339, v340), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_preprocess_scaled", v342, 12, v341 - 12), v343 = objc_claimAutoreleasedReturnValue(), v345 = objc_msgSend_isEqualToString_(v64, v344, v343), v343, v88 = "run kernel: sparserendering_preprocess_scaled", (v345 & 1) != 0)
                || (v348 = objc_msgSend_length(@"run kernel: sparserendering_prefilter_x", v346, v347), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_prefilter_x", v349, 12, v348 - 12), v350 = objc_claimAutoreleasedReturnValue(), v352 = objc_msgSend_isEqualToString_(v64, v351, v350), v350, v88 = "run kernel: sparserendering_prefilter_x", (v352 & 1) != 0)
                || (v355 = objc_msgSend_length(@"run kernel: sparserendering_prefilter_y", v353, v354), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_prefilter_y", v356, 12, v355 - 12), v357 = objc_claimAutoreleasedReturnValue(), v359 = objc_msgSend_isEqualToString_(v64, v358, v357), v357, v88 = "run kernel: sparserendering_prefilter_y", (v359 & 1) != 0)
                || (v362 = objc_msgSend_length(@"run kernel: sparserendering_sample_withAlpha", v360, v361), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_sample_withAlpha", v363, 12, v362 - 12), v364 = objc_claimAutoreleasedReturnValue(), v366 = objc_msgSend_isEqualToString_(v64, v365, v364), v364, v88 = "run kernel: sparserendering_sample_withAlpha", (v366 & 1) != 0)
                || (v369 = objc_msgSend_length(@"run kernel: sparserendering_sample_noAlpha", v367, v368), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_sample_noAlpha", v370, 12, v369 - 12), v371 = objc_claimAutoreleasedReturnValue(), v373 = objc_msgSend_isEqualToString_(v64, v372, v371), v371, v88 = "run kernel: sparserendering_sample_noAlpha", (v373 & 1) != 0)
                || (v376 = objc_msgSend_length(@"run kernel: sparserendering_antialias_x", v374, v375), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_antialias_x", v377, 12, v376 - 12), v378 = objc_claimAutoreleasedReturnValue(), v380 = objc_msgSend_isEqualToString_(v64, v379, v378), v378, v88 = "run kernel: sparserendering_antialias_x", (v380 & 1) != 0)
                || (v383 = objc_msgSend_length(@"run kernel: sparserendering_antialias_y", v381, v382), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_antialias_y", v384, 12, v383 - 12), v385 = objc_claimAutoreleasedReturnValue(), v387 = objc_msgSend_isEqualToString_(v64, v386, v385), v385, v88 = "run kernel: sparserendering_antialias_y", (v387 & 1) != 0)
                || (v390 = objc_msgSend_length(@"run kernel: sparserendering_yuv_out_1", v388, v389), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_yuv_out_1", v391, 12, v390 - 12), v392 = objc_claimAutoreleasedReturnValue(), v394 = objc_msgSend_isEqualToString_(v64, v393, v392), v392, v88 = "run kernel: sparserendering_yuv_out_1", (v394 & 1) != 0)
                || (v397 = objc_msgSend_length(@"run kernel: sparserendering_yuv_out_2", v395, v396), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_yuv_out_2", v398, 12, v397 - 12), v399 = objc_claimAutoreleasedReturnValue(), v401 = objc_msgSend_isEqualToString_(v64, v400, v399), v399, v88 = "run kernel: sparserendering_yuv_out_2", (v401 & 1) != 0)
                || (v404 = objc_msgSend_length(@"run kernel: sparserendering_extractY", v402, v403), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_extractY", v405, 12, v404 - 12), v406 = objc_claimAutoreleasedReturnValue(), v408 = objc_msgSend_isEqualToString_(v64, v407, v406), v406, v88 = "run kernel: sparserendering_extractY", (v408 & 1) != 0)
                || (v411 = objc_msgSend_length(@"run kernel: sparserendering_sample_noAlpha_ray", v409, v410), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_sample_noAlpha_ray", v412, 12, v411 - 12), v413 = objc_claimAutoreleasedReturnValue(), v415 = objc_msgSend_isEqualToString_(v64, v414, v413), v413, v88 = "run kernel: sparserendering_sample_noAlpha_ray", (v415 & 1) != 0)
                || (v418 = objc_msgSend_length(@"run kernel: sparserendering_add_noise", v416, v417), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_add_noise", v419, 12, v418 - 12), v420 = objc_claimAutoreleasedReturnValue(), v422 = objc_msgSend_isEqualToString_(v64, v421, v420), v420, v88 = "run kernel: sparserendering_add_noise", (v422 & 1) != 0)
                || (v425 = objc_msgSend_length(@"run kernel: sparserendering_blend_raytraced", v423, v424), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_blend_raytraced", v426, 12, v425 - 12), v427 = objc_claimAutoreleasedReturnValue(), v429 = objc_msgSend_isEqualToString_(v64, v428, v427), v427, v88 = "run kernel: sparserendering_blend_raytraced", (v429 & 1) != 0)
                || (v432 = objc_msgSend_length(@"run kernel: disparity_refinement_extract_positive_blur_values", v430, v431), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_extract_positive_blur_values", v433, 12, v432 - 12), v434 = objc_claimAutoreleasedReturnValue(), v436 = objc_msgSend_isEqualToString_(v64, v435, v434), v434, v88 = "run kernel: disparity_refinement_extract_positive_blur_values", (v436 & 1) != 0)
                || (v439 = objc_msgSend_length(@"run kernel: disparity_refinement_extract_negative_blur_values", v437, v438), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_extract_negative_blur_values", v440, 12, v439 - 12), v441 = objc_claimAutoreleasedReturnValue(), v443 = objc_msgSend_isEqualToString_(v64, v442, v441), v441, v88 = "run kernel: disparity_refinement_extract_negative_blur_values", (v443 & 1) != 0)
                || (v446 = objc_msgSend_length(@"run kernel: sparserendering_antialias_x_4chan", v444, v445), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_antialias_x_4chan", v447, 12, v446 - 12), v448 = objc_claimAutoreleasedReturnValue(), v450 = objc_msgSend_isEqualToString_(v64, v449, v448), v448, v88 = "run kernel: sparserendering_antialias_x_4chan", (v450 & 1) != 0)
                || (v453 = objc_msgSend_length(@"run kernel: sparserendering_antialias_y_4chan", v451, v452), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_antialias_y_4chan", v454, 12, v453 - 12), v455 = objc_claimAutoreleasedReturnValue(), v457 = objc_msgSend_isEqualToString_(v64, v456, v455), v455, v88 = "run kernel: sparserendering_antialias_y_4chan", (v457 & 1) != 0)
                || (v460 = objc_msgSend_length(@"run kernel: sparserendering_add_noise_only", v458, v459), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_add_noise_only", v461, 12, v460 - 12), v462 = objc_claimAutoreleasedReturnValue(), v464 = objc_msgSend_isEqualToString_(v64, v463, v462), v462, v88 = "run kernel: sparserendering_add_noise_only", (v464 & 1) != 0)
                || (v467 = objc_msgSend_length(@"run kernel: median3x3_oneChannel", v465, v466), objc_msgSend_substringWithRange_(@"run kernel: median3x3_oneChannel", v468, 12, v467 - 12), v469 = objc_claimAutoreleasedReturnValue(), v471 = objc_msgSend_isEqualToString_(v64, v470, v469), v469, v88 = "run kernel: median3x3_oneChannel", (v471 & 1) != 0)
                || (v474 = objc_msgSend_length(@"run kernel: median3x3_twoChannel", v472, v473), objc_msgSend_substringWithRange_(@"run kernel: median3x3_twoChannel", v475, 12, v474 - 12), v476 = objc_claimAutoreleasedReturnValue(), v478 = objc_msgSend_isEqualToString_(v64, v477, v476), v476, v88 = "run kernel: median3x3_twoChannel", (v478 & 1) != 0)
                || (v481 = objc_msgSend_length(@"run kernel: sobel_oneChannel", v479, v480), objc_msgSend_substringWithRange_(@"run kernel: sobel_oneChannel", v482, 12, v481 - 12), v483 = objc_claimAutoreleasedReturnValue(), v485 = objc_msgSend_isEqualToString_(v64, v484, v483), v483, v88 = "run kernel: sobel_oneChannel", (v485 & 1) != 0)
                || (v488 = objc_msgSend_length(@"run kernel: sobel_yChannel_Thresholded", v486, v487), objc_msgSend_substringWithRange_(@"run kernel: sobel_yChannel_Thresholded", v489, 12, v488 - 12), v490 = objc_claimAutoreleasedReturnValue(), v492 = objc_msgSend_isEqualToString_(v64, v491, v490), v490, v88 = "run kernel: sobel_yChannel_Thresholded", (v492 & 1) != 0)
                || (v495 = objc_msgSend_length(@"run kernel: blendBackgroundBlur", v493, v494), objc_msgSend_substringWithRange_(@"run kernel: blendBackgroundBlur", v496, 12, v495 - 12), v497 = objc_claimAutoreleasedReturnValue(), v499 = objc_msgSend_isEqualToString_(v64, v498, v497), v497, v88 = "run kernel: blendBackgroundBlur", v499))
              {
                v500 = uni_activity();
                v501 = _os_activity_create(&dword_295691000, v88, v500, OS_ACTIVITY_FLAG_DEFAULT);

                v502 = v56;
                queueCopy = v564;
                goto LABEL_104;
              }

              queueCopy = v564;
LABEL_102:

              goto LABEL_103;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v62 = objc_msgSend_inputs(v56, v60, v61);
            v64 = objc_msgSend_objectForKeyedSubscript_(v62, v63, @"desiredFormat");

            if (v64)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v67 = objc_msgSend_unsignedIntegerValue(v64, v65, v66);
                v68 = uni_activity();
                v69 = "texture view of misc type";
                if (v67 == 70)
                {
                  v69 = "linear to sRGB texture view";
                }

                if (v67 == 71)
                {
                  v70 = "sRGB to linear texture view";
                }

                else
                {
                  v70 = v69;
                }

                v71 = _os_activity_create(&dword_295691000, v70, v68, OS_ACTIVITY_FLAG_DEFAULT);

                queueCopy = v564;
                goto LABEL_100;
              }
            }

            goto LABEL_102;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v71 = uni_activity();
            v72 = "run kernel: Gaussian Blur";
LABEL_99:
            v64 = _os_activity_create(&dword_295691000, v72, v71, OS_ACTIVITY_FLAG_DEFAULT);
LABEL_100:

            v502 = v56;
            goto LABEL_104;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v71 = uni_activity();
            v72 = "run kernel: Guided Filter";
            goto LABEL_99;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v71 = uni_activity();
            v72 = "run kernel: Highlight Recovery";
            goto LABEL_99;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v71 = uni_activity();
            v72 = "run kernel: Morphology";
            goto LABEL_99;
          }

LABEL_103:

          v64 = uni_activity();
          v502 = _os_activity_create(&dword_295691000, "kernel run", v64, OS_ACTIVITY_FLAG_DEFAULT);
LABEL_104:

          v503 = uni_logger_render();
          if (os_log_type_enabled(v503, OS_LOG_TYPE_DEBUG))
          {
            sub_2956CE0EC(v578, v53, &v579, v503);
          }

          v505 = objc_msgSend_run_(v56, v504, queueCopy);
          v507 = objc_msgSend_objectAtIndexedSubscript_(v505, v506, 0);
          if (!v507)
          {
            sub_2956CE1B0();
          }

          v508 = v507;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ((objc_msgSend_conformsToProtocol_(v508, v509, &unk_2A1CA1FD8) & 1) == 0)
            {
              sub_2956CE184();
            }

            objc_msgSend_writeDebugTextures_filesWritten_(v56, v510, v508, v566);
            objc_msgSend_commit(v508, v511, v512);
            if (scheduledCopy)
            {
              objc_msgSend_waitUntilScheduled(v508, v513, v514);
            }

            if (objc_msgSend_shouldWriteDebugTextures(UniKernel, v513, v514))
            {
              objc_msgSend_waitUntilCompleted(v508, v515, v516);
            }

            v517 = uni_logger_render();
            if (os_log_type_enabled(v517, OS_LOG_TYPE_INFO))
            {
              v519 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v518, @"%@", v56);
              v520 = v519;
              v523 = objc_msgSend_UTF8String(v520, v521, v522);
              *buf = 136315138;
              v572 = v523;
              _os_log_impl(&dword_295691000, v517, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
            }

            if ((objc_msgSend_containsObject_(v569, v524, v508) & 1) == 0)
            {
              objc_msgSend_addObject_(v565, v525, v508);
              objc_msgSend_addObject_(v569, v526, v508);
            }

            ++v53;
          }

          ++v54;
        }

        while (v52 != v54);
        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v527, &v574, v573, 16);
      }

      while (v52);
    }

    if (completedCopy)
    {
      v530 = objc_msgSend_lastObject(v565, v528, v529);
      objc_msgSend_waitUntilCompleted(v530, v531, v532);
    }

    v533 = objc_msgSend_processInfo(MEMORY[0x29EDBA0B0], v528, v529);
    v536 = objc_msgSend_processName(v533, v534, v535);

    v537 = MEMORY[0x29EDBA0F8];
    v538 = getpid();
    v540 = objc_msgSend_stringWithFormat_(v537, v539, @"_pid%d", v538);
    v542 = v540;
    if (v536)
    {
      v543 = objc_msgSend_stringByAppendingString_(v536, v541, v540);
    }

    else
    {
      v543 = v540;
    }

    v546 = objc_opt_new();
    v549 = objc_msgSend_temporaryDirectory(v546, v547, v548);
    v550 = v549;
    v553 = objc_msgSend_fileSystemRepresentation(v550, v551, v552);

    v554 = MEMORY[0x29EDBA0F8];
    v555 = atomic_load(dword_2A1388980);
    v557 = objc_msgSend_stringWithFormat_(v554, v556, @"/%s/%@_%d.dot", v553, v543, v555);
    atomic_fetch_add_explicit(dword_2A1388980, 1u, memory_order_relaxed);
    v558 = objc_opt_class();
    objc_msgSend__spewDot_filename_(v558, v559, obj, v557);

    v545 = v563;
    v544 = v560;
    v35 = v561;
  }

  else
  {
    v544 = uni_logger_api();
    if (os_log_type_enabled(v544, OS_LOG_TYPE_INFO))
    {
      *v578 = 136446210;
      v579 = "+[UniImage metalRenderImageArray:queue:waitUntilScheduled:waitUntilCompleted:]";
      _os_log_impl(&dword_295691000, v544, OS_LOG_TYPE_INFO, "%{public}s Nothing to do ... ", v578, 0xCu);
    }

    v545 = v563;
  }
}

- (void)metalRender:(id)render waitUntilScheduled:(BOOL)scheduled waitUntilCompleted:(BOOL)completed
{
  completedCopy = completed;
  scheduledCopy = scheduled;
  renderCopy = render;
  v9 = objc_opt_class();
  selfCopy = self;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v10, &selfCopy, 1);
  objc_msgSend_metalRenderImageArray_queue_waitUntilScheduled_waitUntilCompleted_(v9, v12, v11, renderCopy, scheduledCopy, completedCopy);
}

- (void)metalRender
{
  v3 = objc_opt_class();
  selfCopy = self;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v4, &selfCopy, 1);
  objc_msgSend_metalRenderImageArray_queue_waitUntilScheduled_waitUntilCompleted_(v3, v6, v5, 0, 1, 1);
}

+ (id)_textureDescriptionForDot:(id)dot
{
  dotCopy = dot;
  if (!dotCopy)
  {
    sub_2956CE208();
  }

  v4 = dotCopy;
  objc_opt_class();
  v7 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_texture(v4, v5, v6);
  }

  v8 = objc_msgSend_pixelFormat(v7, v5, v6);
  v11 = objc_msgSend_device(v7, v9, v10);
  v12 = pixelFormatName(v8, v11);

  if (!v12)
  {
    sub_2956CE1DC();
  }

  v15 = MEMORY[0x29EDBA0F8];
  v16 = objc_msgSend_width(v7, v13, v14);
  v19 = objc_msgSend_height(v7, v17, v18);
  v21 = objc_msgSend_stringWithFormat_(v15, v20, @"%ldx%ld\\n%s", v16, v19, v12);

  return v21;
}

+ (id)_cleanupParameterDescription:(id)description
{
  v3 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(description, a2, @"", &stru_2A1C8D648);
  v5 = objc_msgSend_substringToIndex_(v3, v4, 1);
  isEqualToString = objc_msgSend_isEqualToString_(v5, v6, @"{");

  if (isEqualToString)
  {
    v10 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v3, v8, 0, 1, &stru_2A1C8D648);

    v3 = v10;
  }

  v11 = objc_msgSend_length(v3, v8, v9);
  v13 = objc_msgSend_substringFromIndex_(v3, v12, v11 - 1);
  v15 = objc_msgSend_isEqualToString_(v13, v14, @"}");

  if (v15)
  {
    v18 = objc_msgSend_length(v3, v16, v17);
    v20 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v3, v19, v18 - 1, 1, &stru_2A1C8D648);

    v3 = v20;
  }

  v21 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v3, v16, @"", &stru_2A1C8D648);;

  v24 = objc_msgSend_string(MEMORY[0x29EDBA050], v22, v23);
  v26 = objc_msgSend_componentsSeparatedByString_(v21, v25, @"\n");
  v29 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x29EDB9F50], v27, v28);
  v32 = objc_msgSend_invertedSet(v29, v30, v31);

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = v26;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v47, v46, 16);
  if (v35)
  {
    v37 = v35;
    v38 = *v48;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(v33);
        }

        v40 = *(*(&v47 + 1) + 8 * i);
        v41 = objc_msgSend_rangeOfCharacterFromSet_(v40, v36, v32);
        if (v41 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v42 = objc_msgSend_substringFromIndex_(v40, v36, v41);
          objc_msgSend_appendString_(v24, v43, v42);

          objc_msgSend_appendString_(v24, v44, @"\\l");
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v47, v46, 16);
    }

    while (v37);
  }

  return v24;
}

+ (id)_objectsForNames:(id)names forKernel:(id)kernel
{
  namesCopy = names;
  kernelCopy = kernel;
  v7 = MEMORY[0x29EDB8DE8];
  v10 = objc_msgSend_count(namesCopy, v8, v9);
  v12 = objc_msgSend_arrayWithCapacity_(v7, v11, v10);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = namesCopy;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v31, v30, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v22 = objc_msgSend_inputs(kernelCopy, v16, v17);
        v24 = objc_msgSend_objectForKey_(v22, v23, v21);

        if (v24)
        {
          objc_msgSend_conformsToProtocol_(v24, v25, &unk_2A1CA0A70);
          objc_msgSend_addObject_(v12, v26, v24);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v31, v30, 16);
    }

    while (v18);
  }

  v28 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v27, v12);

  return v28;
}

+ (id)_orderedInputNamesForKernel:(id)kernel inputImageSet:(id)set outputImageSet:(id)imageSet showNonImageParams:(BOOL)params
{
  paramsCopy = params;
  kernelCopy = kernel;
  setCopy = set;
  imageSetCopy = imageSet;
  v11 = MEMORY[0x29EDB8DE8];
  v14 = objc_msgSend_inputs(kernelCopy, v12, v13);
  v17 = objc_msgSend_count(v14, v15, v16);
  v19 = objc_msgSend_arrayWithCapacity_(v11, v18, v17);

  v60 = setCopy;
  v61 = imageSetCopy;
  v81[0] = setCopy;
  v81[1] = imageSetCopy;
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v20, v81, 2);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v80 = 0u;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v77, v76, 16);
  if (v64)
  {
    v63 = *v78;
    do
    {
      v24 = 0;
      do
      {
        if (*v78 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v65 = v24;
        v25 = *(*(&v77 + 1) + 8 * v24);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v26 = objc_msgSend_inputs(kernelCopy, v22, v23);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v72, v71, 16);
        if (v28)
        {
          v31 = v28;
          v32 = *v73;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v73 != v32)
              {
                objc_enumerationMutation(v26);
              }

              v34 = *(*(&v72 + 1) + 8 * i);
              v35 = objc_msgSend_inputs(kernelCopy, v29, v30);
              v37 = objc_msgSend_objectForKeyedSubscript_(v35, v36, v34);

              if (v37 && objc_msgSend_containsObject_(v25, v38, v37))
              {
                objc_msgSend_addObject_(v19, v39, v34);
              }
            }

            v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v72, v71, 16);
          }

          while (v31);
        }

        v24 = v65 + 1;
      }

      while (v65 + 1 != v64);
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v77, v76, 16);
    }

    while (v64);
  }

  if (paramsCopy)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v42 = objc_msgSend_inputs(kernelCopy, v40, v41);
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v67, v66, 16);
    if (v44)
    {
      v47 = v44;
      v48 = *v68;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v68 != v48)
          {
            objc_enumerationMutation(v42);
          }

          v50 = *(*(&v67 + 1) + 8 * j);
          v51 = objc_msgSend_inputs(kernelCopy, v45, v46);
          v53 = objc_msgSend_objectForKeyedSubscript_(v51, v52, v50);

          if (v53 && (objc_msgSend_containsObject_(v60, v54, v50) & 1) == 0 && (objc_msgSend_containsObject_(v61, v55, v50) & 1) == 0)
          {
            objc_msgSend_addObject_(v19, v56, v50);
          }
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v67, v66, 16);
      }

      while (v47);
    }
  }

  v57 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v40, v19);

  return v57;
}

+ (id)_stringForObject:(id)object objectToStringMap:(id)map
{
  objectCopy = object;
  mapCopy = map;
  if (!mapCopy)
  {
    sub_2956CE234();
  }

  v8 = mapCopy;
  v11 = objc_msgSend_objectForKey_(mapCopy, v7, objectCopy);
  if (!v11)
  {
    v12 = objc_msgSend_count(v8, v9, v10);
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v13, @"%ld", v12);
    objc_msgSend_setObject_forKey_(v8, v14, v11, objectCopy);
  }

  v15 = v11;

  return v15;
}

- (id)coreImageRender:(id)render
{
  renderCopy = render;
  v7 = objc_msgSend_image(self, v5, v6);
  v10 = objc_msgSend_texture(self, v8, v9);
  v13 = objc_msgSend_kernel(self, v11, v12);
  if (!v13)
  {
    sub_2956CE28C();
  }

  v15 = objc_msgSend__mtlTextureForImage_(UniKernel, v14, v10);

  v17 = 0;
  if (renderCopy && v15 && v7)
  {
    v18 = objc_msgSend__outputTextureForTexture_force_(UniKernel, v16, v15, 0);
    if (!v18)
    {
      sub_2956CE260();
    }

    v19 = v18;
    v20 = objc_alloc(MEMORY[0x29EDB9188]);
    v22 = objc_msgSend_initWithMTLTexture_commandBuffer_(v20, v21, v19, 0);
    v24 = v22;
    if (v22)
    {
      objc_msgSend_setColorSpace_(v22, v23, 0);
      objc_msgSend_setClamped_(v24, v25, 0);
      v33 = 0;
      v27 = objc_msgSend_startTaskToRender_toDestination_error_(renderCopy, v26, v7, v24, &v33);
      v28 = v33;
      v32 = v28;
      v17 = objc_msgSend_waitUntilCompletedAndReturnError_(v27, v29, &v32);
      v30 = v32;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)coreImageRender:(id)render subRect:(CGRect)rect outputTexture:(id)texture
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  renderCopy = render;
  textureCopy = texture;
  v15 = objc_msgSend_image(self, v13, v14);
  v18 = objc_msgSend_imageByCroppingToRect_(v15, v16, v17, x, y, width, height);

  v21 = objc_msgSend_kernel(self, v19, v20);
  if (!v21)
  {
    sub_2956CE2E4();
  }

  v23 = 0;
  if (renderCopy && textureCopy && v18)
  {
    v24 = objc_msgSend__outputTextureForTexture_force_(UniKernel, v22, textureCopy, 0);
    if (!v24)
    {
      sub_2956CE2B8();
    }

    v25 = v24;
    v26 = objc_alloc(MEMORY[0x29EDB9188]);
    v28 = objc_msgSend_initWithMTLTexture_commandBuffer_(v26, v27, v25, 0);
    v30 = v28;
    if (v28)
    {
      objc_msgSend_setColorSpace_(v28, v29, 0);
      objc_msgSend_setClamped_(v30, v31, 0);
      objc_msgSend_extent(v18, v32, v33);
      v35 = -v34;
      objc_msgSend_extent(v18, v36, v37);
      CGAffineTransformMakeTranslation(&v49, v35, -v38);
      v40 = objc_msgSend_imageByApplyingTransform_(v18, v39, &v49);

      v48 = 0;
      v42 = objc_msgSend_startTaskToRender_toDestination_error_(renderCopy, v41, v40, v30, &v48);
      v43 = v48;
      v47 = v43;
      v23 = objc_msgSend_waitUntilCompletedAndReturnError_(v42, v44, &v47);
      v45 = v47;

      v18 = v40;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

@end