@interface TSCH3DPhongLikeLightingModel
- (TSCH3DPhongLikeLightingModel)init;
- (TSCH3DPhongLikeLightingModel)initWithPhongMaterialPackageArchive:(const void *)a3 lightingModelArchive:(const void *)a4 unarchiver:(id)a5;
- (id)diffuseTextureTiling;
- (id)p_lightenDiffuseMaterial:(id)a3 percentage:(id)a4;
- (id)representativeMaterialLightenedByPercentage:(id)a3;
- (tvec4<float>)p_lightenedColorForColor:(void *)a3 percentage:(id)a4;
- (void)affect:(id)a3 states:(id)a4 scene:(id)a5 texturePool:(id)a6 percentage:(id)a7;
- (void)saveToPhongMaterialPackageArchive:(void *)a3 environmentPackageArchive:(void *)a4 archiver:(id)a5;
@end

@implementation TSCH3DPhongLikeLightingModel

- (TSCH3DPhongLikeLightingModel)init
{
  v47.receiver = self;
  v47.super_class = TSCH3DPhongLikeLightingModel;
  v2 = [(TSCH3DPhongLikeLightingModel *)&v47 init];
  v7 = v2;
  if (v2)
  {
    if (v2->super._materials)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCH3DPhongLikeLightingModel init]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongLikeLightingModel.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 47, 0, "expected nil value for '%{public}s'", "_materials");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    v23 = objc_alloc_init(TSCH3DPhongMaterialPackage);
    materials = v7->super._materials;
    v7->super._materials = &v23->super;

    if (v7->super._environment)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCH3DPhongLikeLightingModel init]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongLikeLightingModel.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 49, 0, "expected nil value for '%{public}s'", "_environment");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }

    v44 = objc_alloc_init(TSCH3DEnvironmentPackage);
    environment = v7->super._environment;
    v7->super._environment = v44;
  }

  return v7;
}

- (tvec4<float>)p_lightenedColorForColor:(void *)a3 percentage:(id)a4
{
  v6 = v4;
  v86 = a4;
  if (!v86)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DPhongLikeLightingModel p_lightenedColorForColor:percentage:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongLikeLightingModel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 60, 0, "invalid nil value for '%{public}s'", "percent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v27 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v7, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3));
  if (!v27)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v28, v29, v30, "[TSCH3DPhongLikeLightingModel p_lightenedColorForColor:percentage:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongLikeLightingModel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 65, 0, "invalid nil value for '%{public}s'", "tsuColor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  v46 = objc_msgSend_CGColor(v27, v26, v28, v29, v30);
  objc_msgSend_floatValue(v86, v47, v48, v49, v50);
  v55 = objc_msgSend_newLightenedColor_byPercent_(TSCHRenderUtilities, v52, v51, v53, v54, v46);
  v60 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], v56, v57, v58, v59, v55);

  CGColorRelease(v55);
  objc_msgSend_redComponent(v60, v61, v62, v63, v64);
  v66 = v65;
  objc_msgSend_greenComponent(v60, v67, v65, v68, v69);
  v71 = v70;
  objc_msgSend_blueComponent(v60, v72, v70, v73, v74);
  v76 = v75;
  objc_msgSend_alphaComponent(v60, v77, v75, v78, v79);
  v80 = v66;
  v81 = v71;
  *v6 = v80;
  *(v6 + 4) = v81;
  v82 = v76;
  *&v83 = v83;
  *(v6 + 8) = v82;
  *(v6 + 12) = LODWORD(v83);

  result.var2 = v85;
  result.var3 = *(&v85 + 4);
  result.var0 = v84;
  result.var1 = *(&v84 + 4);
  return result;
}

- (id)p_lightenDiffuseMaterial:(id)a3 percentage:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (v6)
  {
    v12 = v6;
    v17 = v12;
    if (!v8)
    {
      goto LABEL_14;
    }

    objc_msgSend_color(v12, v13, v14, v15, v16);
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DPhongLikeLightingModel p_lightenDiffuseMaterial:percentage:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongLikeLightingModel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 78, 0, "invalid nil value for '%{public}s'", "diffuseMaterial");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    if (!v8)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v46 = 0uLL;
  }

  objc_msgSend_p_lightenedColorForColor_percentage_(self, v18, v19, v20, v21, &v46, v8);
  if (v6)
  {
    objc_msgSend_color(v6, v37, v38, v39, v40);
    LODWORD(v41) = v46;
  }

  else
  {
    v46 = 0uLL;
    v41 = 0.0;
  }

  LODWORD(v39) = v47;
  if (*&v47 != *&v41 || (LODWORD(v41) = DWORD1(v47), LODWORD(v39) = DWORD1(v46), *(&v47 + 1) != *(&v46 + 1)) || (LODWORD(v41) = DWORD2(v47), LODWORD(v39) = DWORD2(v46), *(&v47 + 2) != *(&v46 + 2)) || (LODWORD(v41) = HIDWORD(v47), LODWORD(v39) = HIDWORD(v46), v17 = v6, *(&v47 + 3) != *(&v46 + 3)))
  {
    v17 = objc_msgSend_copy(v6, v37, v41, v39, v40);

    v46 = v47;
    objc_msgSend_setColor_(v17, v42, *&v47, v43, v44, &v46);
  }

LABEL_14:

  return v17;
}

- (void)affect:(id)a3 states:(id)a4 scene:(id)a5 texturePool:(id)a6 percentage:(id)a7
{
  v237[5] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v229 = a5;
  v14 = a6;
  v230 = a7;
  v19 = objc_msgSend_effect(TSCH3DVertexShaderEffect, v15, v16, v17, v18);
  objc_msgSend_addEffect_toSection_(v12, v20, v21, v22, v23, v19, 0);

  v28 = objc_msgSend_effect(TSCH3DNormalShaderEffect, v24, v25, v26, v27);
  objc_msgSend_addEffect_toSection_(v12, v29, v30, v31, v32, v28, 0);

  v33 = objc_opt_class();
  v38 = objc_msgSend_materialEffectClass(v33, v34, v35, v36, v37);
  v43 = objc_msgSend_phongMaterials(self, v39, v40, v41, v42);
  v48 = objc_msgSend_diffuse(v43, v44, v45, v46, v47);
  v222 = objc_msgSend_p_lightenDiffuseMaterial_percentage_(self, v49, v50, v51, v52, v48, v230);

  v223 = objc_msgSend_variablesWithTexture_intensity_factor_textureColor_color_modulation_texcoords_textureMatrix_(TSCH3DMaterialShaderVariables, v53, v54, v55, v56, qword_280A46580, qword_280A46570, qword_280A46568, qword_280A46588, qword_280A46560, qword_280A46578, qword_280A46590, qword_280A46598);
  v61 = objc_msgSend_emissive(v43, v57, v58, v59, v60);
  v220 = objc_msgSend_effectWithPool_material_variables_(v38, v62, v63, v64, v65, v14, v61, v223);

  v218 = objc_msgSend_variablesWithTexture_intensity_factor_textureColor_color_modulation_texcoords_textureMatrix_(TSCH3DMaterialShaderVariables, v66, v67, v68, v69, qword_280A465C8, qword_280A465B8, qword_280A465B0, qword_280A465D0, qword_280A465A8, qword_280A465C0, qword_280A465D8, qword_280A465E0);
  v221 = objc_msgSend_effectWithPool_material_variables_(v38, v70, v71, v72, v73, v14, v222);
  v225 = objc_msgSend_variablesWithTexture_intensity_factor_textureColor_color_modulation_texcoords_textureMatrix_(TSCH3DMaterialShaderVariables, v74, v75, v76, v77, qword_280A46610, qword_280A46600, qword_280A465F8, qword_280A46618, qword_280A465F0, qword_280A46608, qword_280A46620, qword_280A46628);
  v82 = objc_msgSend_modulate(v43, v78, v79, v80, v81);
  v224 = objc_msgSend_effectWithPool_material_variables_(v38, v83, v84, v85, v86, v14, v82, v225);

  v226 = objc_msgSend_variablesWithTexture_intensity_factor_textureColor_color_modulation_texcoords_textureMatrix_(TSCH3DMaterialShaderVariables, v87, v88, v89, v90, qword_280A46658, qword_280A46648, qword_280A46640, qword_280A46660, qword_280A46638, qword_280A46650, qword_280A46668, qword_280A46670);
  v95 = objc_msgSend_specular(v43, v91, v92, v93, v94);
  v227 = objc_msgSend_effectWithPool_material_variables_(v38, v96, v97, v98, v99, v14, v95, v226);

  v228 = objc_msgSend_variablesWithTexture_intensity_factor_textureColor_color_modulation_texcoords_textureMatrix_(TSCH3DMaterialShaderVariables, v100, v101, v102, v103, qword_280A466A0, qword_280A46690, qword_280A46688, qword_280A466A8, qword_280A46680, qword_280A46698, qword_280A466B0, qword_280A466B8);
  v108 = objc_msgSend_shininess(v43, v104, v105, v106, v107);
  v113 = objc_msgSend_effectWithPool_material_variables_(v38, v109, v110, v111, v112, v14, v108, v228);

  v237[0] = v220;
  v237[1] = v221;
  v237[2] = v224;
  v237[3] = v227;
  v219 = v113;
  v237[4] = v113;
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v114, v115, v116, v117, v237, 5);
  v234 = 0u;
  v235 = 0u;
  v232 = 0u;
  v118 = v233 = 0u;
  v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v119, v120, v121, v122, &v232, v236, 16);
  if (v124)
  {
    v128 = *v233;
    do
    {
      v129 = 0;
      do
      {
        if (*v233 != v128)
        {
          objc_enumerationMutation(v118);
        }

        objc_msgSend_affectStates_(*(*(&v232 + 1) + 8 * v129++), v123, v125, v126, v127, v13);
      }

      while (v124 != v129);
      v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v123, v125, v126, v127, &v232, v236, 16);
    }

    while (v124);
  }

  objc_msgSend_addEffectsFromArray_toSection_(v12, v130, v131, v132, v133, v118, 1);
  v138 = objc_msgSend_environment(self, v134, v135, v136, v137);
  objc_msgSend_affect_states_scene_texturePool_(v138, v139, v140, v141, v142, v12, v13, v229, v14);

  if (v230)
  {
    objc_msgSend_floatValue(v230, v143, v144, v145, v146);
    v231 = LODWORD(v147);
    v151 = objc_msgSend_effect(TSCH3DLightenShaderEffect, v148, v147, v149, v150);
    objc_msgSend_addEffect_toSection_(v12, v152, v153, v154, v155, v151, 1);

    v160 = objc_msgSend_stateSharingID(TSCH3DLightenShaderEffect, v156, v157, v158, v159);
    sub_276199A54(v13, v160, &v231);
  }

  v161 = objc_msgSend_lightings(self, v143, v144, v145, v146);
  v162 = v161 == 0;

  if (v162)
  {
    v167 = MEMORY[0x277D81150];
    v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v163, v164, v165, v166, "[TSCH3DPhongLikeLightingModel affect:states:scene:texturePool:percentage:]");
    v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v169, v170, v171, v172, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongLikeLightingModel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v167, v174, v175, v176, v177, v168, v173, 134, 0, "invalid nil value for '%{public}s'", "self.lightings");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v178, v179, v180, v181);
  }

  v182 = objc_msgSend_lightings(self, v163, v164, v165, v166);
  objc_msgSend_affect_states_scene_texturePool_(v182, v183, v184, v185, v186, v12, v13, v229, v14);

  v187 = objc_opt_class();
  v192 = objc_msgSend_effectClass(v187, v188, v189, v190, v191);
  v197 = objc_msgSend_effect(v192, v193, v194, v195, v196);
  objc_msgSend_addEffect_toSection_(v12, v198, v199, v200, v201, v197, 1);

  v206 = objc_msgSend_diffuseTextureTiling(self, v202, v203, v204, v205);
  if (v14)
  {
    v207 = v206 == 0;
  }

  else
  {
    v207 = 1;
  }

  v208 = !v207;

  if (v208)
  {
    v213 = objc_msgSend_effect(TSCH3DTexCoordTilingShaderEffect, v209, v210, v211, v212);
    objc_msgSend_prependEffect_toSection_(v12, v214, v215, v216, v217, v213, 1);
  }
}

- (id)diffuseTextureTiling
{
  v5 = objc_msgSend_phongMaterials(self, a2, v2, v3, v4);
  v10 = objc_msgSend_diffuse(v5, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    v16 = objc_msgSend_firstTiling(v10, v11, v12, v13, v14);

    if (v16)
    {
      v16 = objc_msgSend_firstTiling(v15, v17, v18, v19, v20);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)representativeMaterialLightenedByPercentage:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_phongMaterials(self, v5, v6, v7, v8);
  v14 = objc_msgSend_diffuse(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_p_lightenDiffuseMaterial_percentage_(self, v15, v16, v17, v18, v14, v4);

  return v19;
}

- (TSCH3DPhongLikeLightingModel)initWithPhongMaterialPackageArchive:(const void *)a3 lightingModelArchive:(const void *)a4 unarchiver:(id)a5
{
  v8 = a5;
  v64.receiver = self;
  v64.super_class = TSCH3DPhongLikeLightingModel;
  v9 = [(TSCH3DPhongLikeLightingModel *)&v64 init];
  v14 = v9;
  if (v9)
  {
    if (v9->super._materials)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DPhongLikeLightingModel(PersistenceAdditionsProtected) initWithPhongMaterialPackageArchive:lightingModelArchive:unarchiver:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongLikeLightingModel.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 177, 0, "expected nil value for '%{public}s'", "_materials");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    v30 = [TSCH3DPhongMaterialPackage alloc];
    v35 = objc_msgSend_initWithArchive_unarchiver_(v30, v31, v32, v33, v34, a3, v8);
    materials = v14->super._materials;
    v14->super._materials = v35;

    if (v14->super._environment)
    {
      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "[TSCH3DPhongLikeLightingModel(PersistenceAdditionsProtected) initWithPhongMaterialPackageArchive:lightingModelArchive:unarchiver:]");
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongLikeLightingModel.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 180, 0, "expected nil value for '%{public}s'", "_environment");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
    }

    if ((*(a4 + 16) & 4) != 0)
    {
      v57 = [TSCH3DEnvironmentPackage alloc];
      if (*(a4 + 5))
      {
        v56 = objc_msgSend_initWithArchive_unarchiver_(v57, v58, v59, v60, v61, *(a4 + 5), v8);
      }

      else
      {
        v56 = objc_msgSend_initWithArchive_unarchiver_(v57, v58, v59, v60, v61, &unk_2812F1140, v8);
      }
    }

    else
    {
      v56 = objc_alloc_init(TSCH3DEnvironmentPackage);
    }

    environment = v14->super._environment;
    v14->super._environment = v56;
  }

  return v14;
}

- (void)saveToPhongMaterialPackageArchive:(void *)a3 environmentPackageArchive:(void *)a4 archiver:(id)a5
{
  v16 = a5;
  objc_msgSend_saveToArchive_archiver_(self->super._materials, v8, v9, v10, v11, a3);
  objc_msgSend_saveToArchive_archiver_(self->super._environment, v12, v13, v14, v15, a4, v16);
}

@end