@interface TSCH3DChartShadowsSceneObject
+ (void)invalidateShadowsForScene:(id)scene;
+ (void)setShadowPlanePadding:(box<glm:(id)padding :detail::tvec3<float>> *)a3 forScene:;
- (box<glm::detail::tvec3<float>>)p_shadowPlanePaddingForScene:(SEL)scene;
- (float)p_chartOpacityForScene:(id)scene;
- (id)TSDShadowFromScene:(id)scene;
- (id)effects;
- (id)propertiesForScene:(id)scene;
- (tvec3<float>)calculateShadowCameraPosition:(float)position center:(tvec3<float>)center shadowQuality:(float)quality depthLimitAdjustment:(float)adjustment;
- (void)getBounds:(id)bounds;
- (void)prerender:(id)prerender;
- (void)prerenderShadows:(id)shadows blurslack:(float)blurslack angle:(float)angle quality:(float)quality targetFBO:(id)o;
- (void)render:(id)render;
- (void)renderShadowScene:(id)scene;
- (void)renderShadows:(id)shadows;
@end

@implementation TSCH3DChartShadowsSceneObject

- (id)propertiesForScene:(id)scene
{
  sceneCopy = scene;
  v5 = objc_opt_class();
  v11 = objc_msgSend_propertiesForType_(sceneCopy, v6, v7, v8, v9, v5);
  if (!v11)
  {
    v15 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, v10, v12, v13, v14);
    v20 = objc_msgSend_useHighQualityShadows(v15, v16, v17, v18, v19);

    if (v20)
    {
      v25 = objc_msgSend_createShadowsRenderer(self, v21, v22, v23, v24);
    }

    else
    {
      v26 = [TSCH3DSimpleBlurShadowsRenderer alloc];
      v27 = objc_opt_class();
      v32 = objc_msgSend_blurParametersArray(v27, v28, v29, v30, v31);
      v25 = objc_msgSend_initWithBlurParametersArray_(v26, v33, v34, v35, v36, v32);
    }

    v37 = [TSCH3DChartShadowsPropertiesInternal alloc];
    v42 = objc_msgSend_createCamera(self, v38, v39, v40, v41);
    v11 = objc_msgSend_initWithCamera_renderer_(v37, v43, v44, v45, v46, v42, v25);

    objc_msgSend_setEnabled_(v11, v47, v48, v49, v50, 1);
    v51 = objc_opt_class();
    objc_msgSend_setProperties_forType_(sceneCopy, v52, v53, v54, v55, v11, v51);
  }

  return v11;
}

+ (void)invalidateShadowsForScene:(id)scene
{
  sceneCopy = scene;
  v3 = objc_opt_class();
  v8 = objc_msgSend_propertiesForType_(sceneCopy, v4, v5, v6, v7, v3);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_invalidate(v8, v9, v10, v11, v12);
  }
}

+ (void)setShadowPlanePadding:(box<glm:(id)padding :detail::tvec3<float>> *)a3 forScene:
{
  paddingCopy = padding;
  v9 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v5, v6, v7, v8, a3, "{box<glm::detail::tvec3<float>>={tvec3<float>=(?=fff)(?=fff)(?=fff)}{tvec3<float>=(?=fff)(?=fff)(?=fff)}}");
  objc_msgSend_setProperties_forType_(paddingCopy, v10, v11, v12, v13, v9, @"TSCH3DChartShadowsSceneObjectShadowPlanePadding");
}

- (box<glm::detail::tvec3<float>>)p_shadowPlanePaddingForScene:(SEL)scene
{
  v8 = objc_msgSend_propertiesForType_(a4, scene, v4, v5, v6, @"TSCH3DChartShadowsSceneObjectShadowPlanePadding");
  *&retstr->_min.var2.var0 = 0;
  *&retstr->_max.var1.var0 = 0;
  *&retstr->_min.var0.var0 = 0;
  v14 = v8;
  if (v8)
  {
    objc_msgSend_getValue_(v8, v9, v10, v11, v12, retstr);
  }

  return result;
}

- (id)TSDShadowFromScene:(id)scene
{
  sceneCopy = scene;
  v8 = objc_msgSend_main(sceneCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_scenePropertiesKey(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_partForType_(sceneCopy, v14, v15, v16, v17, v13);

  v23 = objc_msgSend_enumerator(v18, v19, v20, v21, v22);
  v28 = objc_msgSend_info(v23, v24, v25, v26, v27);
  v33 = objc_msgSend_model(v28, v29, v30, v31, v32);
  v38 = objc_msgSend_seriesList(v33, v34, v35, v36, v37);
  v43 = objc_msgSend_firstObject(v38, v39, v40, v41, v42);

  v48 = objc_msgSend_objectValueForProperty_(v43, v44, v45, v46, v47, 1172);

  return v48;
}

- (id)effects
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_effect(TSCH3DNoLightingVertexShaderEffect, a2, v2, v3, v4);
  v17[0] = v5;
  v10 = objc_msgSend_effect(TSCH3DProjectiveTextureShaderEffect, v6, v7, v8, v9);
  v17[1] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v17, 2);

  return v15;
}

- (void)renderShadowScene:(id)scene
{
  sceneCopy = scene;
  v8 = objc_msgSend_viewport(TSCH3DSceneRenderSetup, v4, v5, v6, v7);
  objc_msgSend_setSetup_(sceneCopy, v9, v10, v11, v12, v8);

  v17 = objc_msgSend_processor(sceneCopy, v13, v14, v15, v16);
  v22 = objc_msgSend_scene(sceneCopy, v18, v19, v20, v21);
  v27 = objc_msgSend_camera(v22, v23, v24, v25, v26);
  v32 = v27;
  if (v27)
  {
    objc_msgSend_projection(v27, v28, v29, v30, v31);
  }

  else
  {
    v33 = 0.0;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
  }

  objc_msgSend_projection_(v17, v28, v33, v30, v31, &v78);

  v38 = objc_msgSend_processor(sceneCopy, v34, v35, v36, v37);
  v43 = objc_msgSend_scene(sceneCopy, v39, v40, v41, v42);
  v48 = objc_msgSend_camera(v43, v44, v45, v46, v47);
  v53 = v48;
  if (v48)
  {
    objc_msgSend_space(v48, v49, v50, v51, v52);
  }

  else
  {
    v54 = 0.0;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
  }

  objc_msgSend_replace_(v38, v49, v54, v51, v52, &v78);

  v59 = objc_msgSend_scene(sceneCopy, v55, v56, v57, v58);
  v64 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v60, v61, v62, v63, v59);

  v70 = objc_msgSend_processor(sceneCopy, v65, v66, v67, v68);
  if (v64)
  {
    objc_msgSend_stageScale(v64, v69, v71, v72, v73);
  }

  else
  {
    DWORD2(v78) = 0;
    *&v78 = 0;
  }

  objc_msgSend_scale_(v70, v69, v71, v72, v73, &v78);

  objc_msgSend_run(sceneCopy, v74, v75, v76, v77);
}

- (void)prerenderShadows:(id)shadows blurslack:(float)blurslack angle:(float)angle quality:(float)quality targetFBO:(id)o
{
  shadowsCopy = shadows;
  oCopy = o;
  v19 = objc_msgSend_scene(shadowsCopy, v15, v16, v17, v18);
  v24 = objc_msgSend_propertiesForScene_(self, v20, v21, v22, v23, v19);

  v29 = objc_msgSend_scene(shadowsCopy, v25, v26, v27, v28);
  v34 = objc_msgSend_clone(v29, v30, v31, v32, v33);

  v39 = objc_msgSend_camera(v24, v35, v36, v37, v38);
  objc_msgSend_setCamera_(v34, v40, v41, v42, v43, v39);

  objc_msgSend_resetObjects(v34, v44, v45, v46, v47);
  v52 = objc_msgSend_main(v34, v48, v49, v50, v51);
  objc_msgSend_addObject_(v34, v53, v54, v55, v56, v52);

  if ((objc_msgSend_shadowPlaneValid(v24, v57, v58, v59, v60) & 1) == 0)
  {
    v65 = objc_msgSend_camera(v24, v61, v62, v63, v64);
    *v130 = 1065353216;
    *&v130[4] = 0uLL;
    *&v130[20] = 1065353216;
    v131 = 0;
    v132 = 0;
    v135 = 0;
    v134 = 0;
    v133 = 1065353216;
    v136 = 1065353216;
    objc_msgSend_setTransform_(v65, v66, v67, v68, v69, v130);

    v74 = objc_msgSend_clone(v34, v70, v71, v72, v73);
    objc_msgSend_resetDelegates(v74, v75, v76, v77, v78);
    v83 = objc_msgSend_scene(shadowsCopy, v79, v80, v81, v82);
    objc_msgSend_p_shadowPlanePaddingForScene_(self, v84, v85, v86, v87, v83);

    v92 = objc_msgSend_quad(v24, v88, v89, v90, v91);
    v97 = objc_msgSend_texcoords(v24, v93, v94, v95, v96);
    v128 = *v130;
    v129 = *&v130[16];
    *&v98 = angle;
    *&v99 = quality;
    objc_msgSend_updateShadowPlane_texcoords_scene_blurslack_angle_quality_planePadding_(self, v100, COERCE_DOUBLE(__PAIR64__(*&v130[20], LODWORD(blurslack))), v98, v99, v92, v97, v74, &v128);
  }

  if (oCopy)
  {
    v101 = objc_msgSend_processor(TSCH3DChartShadowsRenderProcessor, v61, v62, v63, v64);
    v106 = objc_msgSend_baseRecloneWithRetargetProcessor_scene_(shadowsCopy, v102, v103, v104, v105, v101, v34);
    v107 = a2;
    objc_msgSend_setFramebuffer_(v106, v108, v109, v110, v111, oCopy);
    v116 = objc_msgSend_session(v106, v112, v113, v114, v115);
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = sub_27618DFA0;
    v123[3] = &unk_27A6B6660;
    v123[4] = self;
    v117 = v106;
    v124 = v117;
    v118 = v101;
    v125 = v118;
    v127 = v107;
    v126 = shadowsCopy;
    objc_msgSend_performBlockWithFBO_session_block_(TSCH3DProtectFBOSession, v119, v120, v121, v122, oCopy, v116, v123);
  }
}

- (void)prerender:(id)prerender
{
  prerenderCopy = prerender;
  v9 = objc_msgSend_scene(prerenderCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_TSDShadowFromScene_(self, v10, v11, v12, v13, v9);

  v19 = objc_msgSend_scene(prerenderCopy, v15, v16, v17, v18);
  v24 = objc_msgSend_propertiesForScene_(self, v20, v21, v22, v23, v19);

  if (objc_msgSend_enabled(v24, v25, v26, v27, v28) && (objc_msgSend_hasShadow_(TSCHStyleUtilities, v29, v30, v31, v32, v14) & 1) != 0)
  {
    objc_msgSend_angle(v14, v33, v34, v35, v36);
    v38 = v37;
    objc_msgSend_radius(v14, v39, v37, v40, v41);
    v43 = v42;
    v47 = objc_msgSend_renderer(v24, v44, v42, v45, v46);
    v48 = v43 / 100.0;
    *&v43 = v43 / 100.0;
    LODWORD(v48) = LODWORD(v43);
    objc_msgSend_blurSlackForQuality_(v47, v49, v48, v50, v51);
    v53 = v52;

    v58 = objc_msgSend_renderer(v24, v54, v55, v56, v57);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_27618E2AC;
    v63[3] = &unk_27A6B6688;
    v64 = v24;
    v65 = prerenderCopy;
    selfCopy = self;
    v67 = v53;
    *&v38 = v38;
    v68 = LODWORD(v38);
    v69 = LODWORD(v43);
    LODWORD(v59) = LODWORD(v43);
    objc_msgSend_protectShadowForQuality_pipeline_renderBlock_(v58, v60, v59, v61, v62, v65, v63);
  }
}

- (void)renderShadows:(id)shadows
{
  shadowsCopy = shadows;
  v9 = objc_msgSend_scene(shadowsCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_propertiesForScene_(self, v10, v11, v12, v13, v9);

  v19 = objc_msgSend_processor(shadowsCopy, v15, v16, v17, v18);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_27618E580;
  v26[3] = &unk_27A6B6558;
  v20 = shadowsCopy;
  v27 = v20;
  v21 = v14;
  v28 = v21;
  selfCopy = self;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v22, v23, v24, v25, v19, v26);
}

- (float)p_chartOpacityForScene:(id)scene
{
  sceneCopy = scene;
  v8 = objc_msgSend_main(sceneCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_scenePropertiesKey(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_partForType_(sceneCopy, v14, v15, v16, v17, v13);

  v23 = objc_msgSend_enumerator(v18, v19, v20, v21, v22);
  v28 = objc_msgSend_info(v23, v24, v25, v26, v27);
  LODWORD(v29) = 1.0;
  objc_msgSend_floatValueForProperty_defaultValue_(v28, v30, v29, v31, v32, 1069);
  v34 = v33;

  return v34;
}

- (void)render:(id)render
{
  v196 = *MEMORY[0x277D85DE8];
  renderCopy = render;
  v10 = objc_msgSend_scene(renderCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_TSDShadowFromScene_(self, v11, v12, v13, v14, v10);

  v20 = objc_msgSend_scene(renderCopy, v16, v17, v18, v19);
  v25 = objc_msgSend_propertiesForScene_(self, v21, v22, v23, v24, v20);

  if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v26, v27, v28, v29, v15) && (objc_msgSend_enabled(v25, v30, v31, v32, v33) & 1) != 0)
  {
    v39 = objc_msgSend_processor(renderCopy, v34, v35, v36, v37);
    if (byte_280A46430 == 1)
    {
      v43 = objc_opt_class();
      v44 = NSStringFromSelector(a2);
      NSLog(&cfstr_PShadowIsRende.isa, v43, self, v44, v39);
    }

    v181 = objc_msgSend_color(v15, v38, v40, v41, v42);
    objc_msgSend_redComponent(v181, v45, v46, v47, v48);
    v50 = v49;
    objc_msgSend_greenComponent(v181, v51, v49, v52, v53);
    v55 = v54;
    objc_msgSend_blueComponent(v181, v56, v54, v57, v58);
    v60 = v59;
    objc_msgSend_opacity(v15, v61, v59, v62, v63);
    v65 = v64;
    objc_msgSend_opacity(v15, v66, v64, v67, v68);
    v70 = v69;
    v74 = objc_msgSend_scene(renderCopy, v71, v69, v72, v73);
    objc_msgSend_p_chartOpacityForScene_(self, v75, v76, v77, v78, v74);
    v80 = v65 * v70 * v79;

    LODWORD(v84) = 1065353212;
    if (v80 >= 1.0)
    {
      v80 = 1.0;
    }

    *v187 = 1;
    v188[0] = 0;
    *(v188 + 5) = 0;
    *&v187[7] = 0;
    v182 = objc_msgSend_context(renderCopy, v81, v84, v82, v83);
    v89 = objc_msgSend_renderer(v25, v85, v86, v87, v88);
    v183 = objc_msgSend_shadowsFBOForContext_(v89, v90, v91, v92, v93, v182);

    v98 = objc_msgSend_session(renderCopy, v94, v95, v96, v97);
    v103 = objc_msgSend_validForSession_(v183, v99, v100, v101, v102, v98);

    if ((v103 & 1) == 0)
    {
      v108 = MEMORY[0x277D81150];
      v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, v105, v106, v107, "[TSCH3DChartShadowsSceneObject render:]");
      v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, v111, v112, v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartShadowsSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v108, v115, v116, v117, v118, v109, v114, 531, 0, "Framebuffer is not valid for this session");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v119, v120, v121, v122);
    }

    v123 = objc_msgSend_variableTexture(TSCH3DProjectiveTextureShaderEffect, v104, v105, v106, v107);
    v128 = objc_msgSend_texture_resource_attributes_(v39, v124, v125, v126, v127, v123, v183, v187);

    objc_msgSend_radius(v15, v129, v130, v131, v132);
    v133 = v50;
    v134 = v55;
    v135 = v60;
    *&v136 = v136 / 100.0;
    *v184 = v133;
    *&v184[1] = v134;
    *&v184[2] = v135;
    *&v184[3] = v80;
    v185 = v128;
    v137 = vmul_n_f32(0x3DCCCCCD3D4CCCCDLL, *&v136);
    v138 = vdup_n_s32(0x3A83126Fu);
    v139 = vcgt_f32(v138, v137);
    v186 = COERCE_DOUBLE(vbsl_s8(v139, v138, v137));
    v141 = objc_msgSend_effectsStates(v39, v140, v186, *&v138, *&v139);
    v146 = objc_msgSend_stateSharingID(TSCH3DProjectiveTextureShaderEffect, v142, v143, v144, v145);
    v147 = v141;
    v152 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v148, v149, v150, v151, v184, "{ProjectiveTextureShaderEffectState={tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}q{tvec2<float>=(?=fff)(?=fff)}}");
    objc_msgSend_setValueState_forKey_(v147, v153, v154, v155, v156, v152, v146);

    if (v39)
    {
      objc_msgSend_renderState(v39, v157, v158, v159, v160);
    }

    else
    {
      v189 = 0;
      v190 = 0;
      v192 = 257;
      v193 = 0;
      v194 = 0;
      v195 = 0;
    }

    v191 = 0;
    LOBYTE(v189) = 1;
    HIDWORD(v189) = 2;
    objc_msgSend_setRenderState_(v39, v157, v158, v159, v160, &v189);
    objc_msgSend_renderShadows_(self, v161, v162, v163, v164, renderCopy);
    v169 = objc_msgSend_renderer(v25, v165, v166, v167, v168);
    v174 = objc_msgSend_session(renderCopy, v170, v171, v172, v173);
    objc_msgSend_unprotectShadowInSession_(v169, v175, v176, v177, v178, v174);

    if (byte_280A46430 == 1)
    {
      v179 = objc_opt_class();
      v180 = NSStringFromSelector(a2);
      NSLog(&cfstr_PEndShadowRend.isa, v179, self, v180);
    }
  }
}

- (void)getBounds:(id)bounds
{
  boundsCopy = bounds;
  v8 = objc_msgSend_scene(boundsCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_propertiesForScene_(self, v9, v10, v11, v12, v8);

  v18 = objc_msgSend_scene(boundsCopy, v14, v15, v16, v17);
  v23 = objc_msgSend_TSDShadowFromScene_(self, v19, v20, v21, v22, v18);

  if (objc_msgSend_enabled(v13, v24, v25, v26, v27) && (objc_msgSend_hasShadow_(TSCHStyleUtilities, v28, v29, v30, v31, v23) & 1) != 0)
  {
    objc_msgSend_angle(v23, v32, v33, v34, v35);
    v37 = v36;
    objc_msgSend_radius(v23, v38, v36, v39, v40);
    v42 = v41;
    v46 = objc_msgSend_renderer(v13, v43, v41, v44, v45);
    v47 = v42 / 100.0;
    *&v42 = v42 / 100.0;
    LODWORD(v47) = LODWORD(v42);
    objc_msgSend_blurSlackForQuality_(v46, v48, v47, v49, v50);
    v52 = v51;

    LODWORD(v53) = v52;
    *&v37 = v37;
    LODWORD(v54) = LODWORD(v37);
    LODWORD(v55) = LODWORD(v42);
    objc_msgSend_prerenderShadows_blurslack_angle_quality_targetFBO_(self, v56, v53, v54, v55, boundsCopy, 0);
    objc_msgSend_renderShadows_(self, v57, v58, v59, v60, boundsCopy);
  }
}

- (tvec3<float>)calculateShadowCameraPosition:(float)position center:(tvec3<float>)center shadowQuality:(float)quality depthLimitAdjustment:(float)adjustment
{
  v8 = *&center.var0.var0;
  v10 = v6;
  v11 = cos((position * 0.5) * 0.0174532925);
  v12 = fabsf(v11);
  v13 = 1.0 - fabs(sin(position * 0.0174532925));
  v14 = *v8;
  v15 = v12;
  v16 = cos(v15 * 1.88495559 + 0.628318531);
  v17 = (v8[1] + 7.0) + (v13 * 7.0);
  v18 = v13 * 0.2;
  v19 = v14 + v16 * 19.2000008;
  *&v16 = v17 + v18 * 19.2000008;
  *&v14 = *&v16 + 10.0;
  v20 = v8[2];
  v23 = v20 + (adjustment * 19.2) * sin(v15 * 0.6 * 3.14159265 + 0.628318531);
  *v10 = v19;
  *(v10 + 4) = LODWORD(v14);
  *(v10 + 8) = v23;
  result.var0 = v21;
  result.var1 = *(&v21 + 4);
  result.var2 = v22;
  return result;
}

@end