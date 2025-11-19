@interface VFXAuthoringEnvironment2
+ (id)authoringEnvironmentForWorld:(id)a3 createIfNeeded:(BOOL)a4;
- (BOOL)_isPartOfSelection:(__CFXNode *)a3;
- (BOOL)_proximityHidden:(uint64_t)a3;
- (VFXAuthoringEnvironment2)initWithWorld:(id)a3;
- (id)authoringCamera:(int64_t)a3;
- (id)cameraFocusPlaneModel;
- (id)cameraFrustumModel;
- (id)cameraModel;
- (id)cameraNearPlaneModel;
- (id)cameraOrthographicFrustumModel;
- (id)effectModel;
- (id)fieldModel;
- (id)modelForLightType:(unsigned __int8)a3;
- (unsigned)debugOptions;
- (void)_resetLightAuthoringWithContainerNode:(id)a3 source:(__CFXNode *)a4 light:(__CFXLight *)a5;
- (void)addCameraNode:(__CFXNode *)a3;
- (void)addEffectNode:(__CFXNode *)a3;
- (void)addEyeSightFrameNode:(__CFXNode *)a3;
- (void)addForceFieldNode:(__CFXNode *)a3;
- (void)addLightNode:(__CFXNode *)a3;
- (void)addedNode:(__CFXNode *)a3;
- (void)cancelSelection;
- (void)dealloc;
- (void)didSetPointOfView:(id)a3;
- (void)prepareWorld:(id)a3;
- (void)removeCameraNode:(__CFXNode *)a3;
- (void)removeEffectNode:(__CFXNode *)a3;
- (void)removeEyesightFrameNode:(__CFXNode *)a3;
- (void)removeForceFieldNode:(__CFXNode *)a3;
- (void)removeLightNode:(__CFXNode *)a3;
- (void)removedNode:(__CFXNode *)a3;
- (void)selectNodes:(id)a3;
- (void)setAuthoringCamera:(int64_t)a3 forView:(id)a4;
- (void)updateCameraNode:(id)a3 withSourceNode:(__CFXNode *)a4;
- (void)updateEffectNode:(id)a3 withSourceNode:(__CFXNode *)a4;
- (void)updateFieldNode:(id)a3 withSourceNode:(__CFXNode *)a4;
- (void)updateLightNode:(id)a3 withSourceNode:(__CFXNode *)a4;
- (void)updateLightTypeForNode:(id)a3 source:(__CFXNode *)a4 light:(__CFXLight *)a5 screenspaceScalingFactor:(float)a6;
- (void)updateWithRenderer:(id)a3;
@end

@implementation VFXAuthoringEnvironment2

+ (id)authoringEnvironmentForWorld:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v9 = objc_msgSend_authoringEnvironment2(a3, a2, a3, a4);
  if (!v9 && v4)
  {
    v10 = objc_msgSend_worldRef(a3, v6, v7, v8);
    if (v10)
    {
      v11 = v10;
      sub_1AF1CEA20(v10);
      v9 = sub_1AF1D1084(v11, 1, v12, v13);
      sub_1AF1CEA9C(v11);
      objc_msgSend_setAuthoringEnvironment2_(a3, v14, v9, v15);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

- (VFXAuthoringEnvironment2)initWithWorld:(id)a3
{
  v9.receiver = self;
  v9.super_class = VFXAuthoringEnvironment2;
  v4 = [(VFXAuthoringEnvironment2 *)&v9 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_prepareWorld_(v4, v5, a3, v6);
  }

  return v7;
}

- (void)dealloc
{
  lightsDictionary = self->_lightsDictionary;
  if (lightsDictionary)
  {
    CFRelease(lightsDictionary);
    self->_lightsDictionary = 0;
  }

  camerasDictionary = self->_camerasDictionary;
  if (camerasDictionary)
  {
    CFRelease(camerasDictionary);
    self->_camerasDictionary = 0;
  }

  effectsDictionary = self->_effectsDictionary;
  if (effectsDictionary)
  {
    CFRelease(effectsDictionary);
    self->_effectsDictionary = 0;
  }

  forceFieldsDictionary = self->_forceFieldsDictionary;
  if (forceFieldsDictionary)
  {
    CFRelease(forceFieldsDictionary);
    self->_forceFieldsDictionary = 0;
  }

  eyeSightDictionary = self->_eyeSightDictionary;
  if (eyeSightDictionary)
  {
    CFRelease(eyeSightDictionary);
    self->_eyeSightDictionary = 0;
  }

  v8.receiver = self;
  v8.super_class = VFXAuthoringEnvironment2;
  [(VFXAuthoringEnvironment2 *)&v8 dealloc];
}

- (void)prepareWorld:(id)a3
{
  v354[1] = *MEMORY[0x1E69E9840];
  self->_world = objc_msgSend_worldRef(a3, a2, a3, v3);
  self->_manipulator = objc_alloc_init(VFXManipulator);
  self->_selection = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];
  self->_lightsDictionary = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  self->_camerasDictionary = CFDictionaryCreateMutable(0, 0, v5, v6);
  self->_effectsDictionary = CFDictionaryCreateMutable(0, 0, v5, v6);
  self->_forceFieldsDictionary = CFDictionaryCreateMutable(0, 0, v5, v6);
  self->_layerRoot = objc_msgSend_node(VFXNode, v7, v8, v9);
  self->_overlayLayerRoot = objc_msgSend_node(VFXNode, v10, v11, v12);
  self->_lightRoot = objc_msgSend_node(VFXNode, v13, v14, v15);
  self->_cameraRoot = objc_msgSend_node(VFXNode, v16, v17, v18);
  self->_effectRoot = objc_msgSend_node(VFXNode, v19, v20, v21);
  v350 = 0u;
  v351 = 0u;
  v348 = 0u;
  v349 = 0u;
  v347 = 0u;
  sub_1AF109498(&v347, 3u);
  v23 = sub_1AF10873C(&v347, v22);
  v26 = objc_msgSend_nodeWithModel_(VFXNode, v24, v23, v25);
  self->_cameraTarget = v26;
  objc_msgSend_setHidden_(v26, v27, 1, v28);
  if (v350)
  {
    *(&v350 + 1) = v350;
    operator delete(v350);
  }

  if (*(&v348 + 1))
  {
    *&v349 = *(&v348 + 1);
    operator delete(*(&v348 + 1));
  }

  if (v347)
  {
    *(&v347 + 1) = v347;
    operator delete(v347);
  }

  self->_forceFieldsRoot = objc_msgSend_node(VFXNode, v29, v30, v31);
  self->_pointsOfViewRoot = objc_msgSend_node(VFXNode, v32, v33, v34);
  v38 = objc_msgSend_node(VFXNode, v35, v36, v37);
  self->_grid = v38;
  objc_msgSend_setHidden_(v38, v39, 1, v40);
  objc_msgSend_setEulerAngles_(self->_grid, v41, v42, v43);
  objc_msgSend_setRenderingOrder_(self->_grid, v44, 0x7FFFFFFFLL, v45);
  LODWORD(v46) = 1148846080;
  LODWORD(v47) = 1148846080;
  v51 = objc_msgSend_planeWithWidth_height_(VFXParametricModel, v48, v49, v50, v46, v47);
  Material = objc_msgSend_firstMaterial(v51, v52, v53, v54);
  objc_msgSend_setShadingModel_(Material, v56, 2, v57);
  v61 = objc_msgSend_firstMaterial(v51, v58, v59, v60);
  objc_msgSend_setBlendMode_(v61, v62, 1, v63);
  v67 = objc_msgSend_firstMaterial(v51, v64, v65, v66);
  objc_msgSend_setDoubleSided_(v67, v68, 1, v69);
  v73 = objc_msgSend_firstMaterial(v51, v70, v71, v72);
  objc_msgSend_setWritesToDepthBuffer_(v73, v74, 0, v75);
  v76 = sub_1AF28A7E4(@"CFX-Grid.metal");
  v353 = @"VFXShaderModifierEntryPointFragment";
  v354[0] = v76;
  v78 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v77, v354, &v353, 1);
  v82 = objc_msgSend_firstMaterial(v51, v79, v80, v81);
  objc_msgSend_setShaderModifiers_(v82, v83, v78, v84);
  v88 = objc_msgSend_firstMaterial(v51, v85, v86, v87);
  v92 = objc_msgSend_valueWithVFXFloat4_(MEMORY[0x1E696B098], v89, v90, v91, 0.000000495536934);
  objc_msgSend_setValue_forKey_(v88, v93, v92, @"colorU");
  v97 = objc_msgSend_firstMaterial(v51, v94, v95, v96);
  v101 = objc_msgSend_valueWithVFXFloat4_(MEMORY[0x1E696B098], v98, v99, v100, COERCE_DOUBLE(1065353216));
  objc_msgSend_setValue_forKey_(v97, v102, v101, @"colorV");
  objc_msgSend_setModel_(self->_grid, v103, v51, v104);
  objc_msgSend_setName_(self->_layerRoot, v105, @"_layerRoot", v106);
  objc_msgSend_setName_(self->_overlayLayerRoot, v107, @"_overlayLayerRoot", v108);
  objc_msgSend_setName_(self->_lightRoot, v109, @"_lightRoot", v110);
  objc_msgSend_setName_(self->_cameraRoot, v111, @"_cameraRoot", v112);
  objc_msgSend_setName_(self->_effectRoot, v113, @"_effectRoot", v114);
  objc_msgSend_setName_(self->_forceFieldsRoot, v115, @"_forceFieldRoot", v116);
  objc_msgSend_setName_(self->_pointsOfViewRoot, v117, @"_pointsOfViewRoot", v118);
  self->_paleGreen = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v119, &unk_1AFE203E0, v120);
  self->_paleBlue = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v121, &unk_1AFE203F0, v122);
  self->_red = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v123, &xmmword_1AFE20400, v124);
  self->_green = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v125, &xmmword_1AFE20410, v126);
  self->_blue = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v127, &xmmword_1AFE20420, v128);
  self->_cyan = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v129, &unk_1AFE20430, v130);
  self->_yellow = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v131, &xmmword_1AFE20440, v132);
  self->_orange = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v133, &unk_1AFE20450, v134);
  self->_pink = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v135, &unk_1AFE20470, v136);
  self->_grayLight = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v137, &unk_1AFE20480, v138);
  self->_grayMedium = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v139, &unk_1AFE20490, v140);
  self->_grayDark = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v141, &unk_1AFE204A0, v142);
  self->_white = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v143, &unk_1AFE204B0, v144);
  objc_msgSend_setIsAuthoring_(self->_layerRoot, v145, 1, v146);
  objc_msgSend_setIsAuthoring_(self->_overlayLayerRoot, v147, 1, v148);
  objc_msgSend_setIsAuthoring_(self->_lightRoot, v149, 1, v150);
  objc_msgSend_setIsAuthoring_(self->_cameraRoot, v151, 1, v152);
  objc_msgSend_setIsAuthoring_(self->_effectRoot, v153, 1, v154);
  objc_msgSend_setIsAuthoring_(self->_forceFieldsRoot, v155, 1, v156);
  objc_msgSend_setIsAuthoring_(self->_cameraTarget, v157, 1, v158);
  objc_msgSend_setIsAuthoring_(self->_pointsOfViewRoot, v159, 1, v160);
  objc_msgSend_setIsAuthoring_(self->_grid, v161, 1, v162);
  objc_msgSend_setHidden_(self->_lightRoot, v163, 0, v164);
  objc_msgSend_setHidden_(self->_cameraRoot, v165, 0, v166);
  objc_msgSend_setHidden_(self->_effectRoot, v167, 0, v168);
  objc_msgSend_setHidden_(self->_forceFieldsRoot, v169, 0, v170);
  objc_msgSend_setRootNode_forLayer_(a3, v171, self->_layerRoot, 1);
  objc_msgSend_setRootNode_forLayer_(a3, v172, self->_overlayLayerRoot, 2);
  objc_msgSend_addChildNode_(self->_layerRoot, v173, self->_lightRoot, v174);
  objc_msgSend_addChildNode_(self->_layerRoot, v175, self->_cameraRoot, v176);
  objc_msgSend_addChildNode_(self->_layerRoot, v177, self->_effectRoot, v178);
  objc_msgSend_addChildNode_(self->_layerRoot, v179, self->_forceFieldsRoot, v180);
  objc_msgSend_addChildNode_(self->_layerRoot, v181, self->_cameraTarget, v182);
  objc_msgSend_addChildNode_(self->_layerRoot, v183, self->_pointsOfViewRoot, v184);
  objc_msgSend_addChildNode_(self->_layerRoot, v185, self->_grid, v186);
  v335 = objc_msgSend_rootNode(a3, v187, v188, v189);
  objc_msgSend_begin(VFXTransaction, v190, v191, v192);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v193, v194, v195, 0.0);
  v199 = objc_msgSend_worldRef(a3, v196, v197, v198);
  v346[0] = MEMORY[0x1E69E9820];
  v346[1] = 3221225472;
  v346[2] = sub_1AF104BF4;
  v346[3] = &unk_1E7A79700;
  v346[4] = self;
  v346[5] = v199;
  objc_msgSend_enumerateChildNodesUsingBlock_(v335, v200, v346, v201);
  objc_msgSend_commit(VFXTransaction, v202, v203, v204);
  v352 = objc_msgSend_rootNode(a3, v205, v206, v207);
  v209 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v208, &v352, 1);
  VFXNodeGetBoundingSphere(v209, 0x10000, v210, v211);
  v344 = v212;
  objc_msgSend_localUp(VFXNode, v213, v214, v215);
  v342 = v216;
  objc_msgSend_localRight(VFXNode, v217, v218, v219);
  v341 = v220;
  objc_msgSend_localFront(VFXNode, v221, v222, v223);
  v228 = 0;
  if (v344.f32[3] <= 0.0)
  {
    v229 = 1.0;
  }

  else
  {
    v229 = v344.f32[3] * 1.33;
  }

  v230 = vdupq_n_s32(0x447A0000u);
  *&v340 = vmlaq_f32(v344, v230, v227).u64[0];
  v231 = vdupq_n_s32(0xC47A0000);
  *&v339 = vmlaq_f32(v344, v231, v227).u64[0];
  *&v338 = vmlaq_f32(v344, v230, v341).u64[0];
  *&v337 = vmlaq_f32(v344, v231, v341).u64[0];
  *&v336 = vmlaq_f32(v344, v231, v342).u64[0];
  *&v345 = vmlaq_f32(v344, v230, v342).u64[0];
  do
  {
    v232 = objc_msgSend_camera(VFXCamera, v224, v225, v226);
    v233 = off_1E7A79720[v228];
    v236 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v234, @"_authoringCamera%s", v235, v233);
    objc_msgSend_setName_(v232, v237, v236, v238);
    objc_msgSend_setUsesOrthographicProjection_(v232, v239, v228 != 0, v240);
    objc_msgSend_setAutomaticallyAdjustsZRange_(v232, v241, 1, v242);
    *&v243 = v229;
    objc_msgSend_setOrthographicScale_(v232, v244, v245, v246, v243);
    v250 = objc_msgSend_node(VFXNode, v247, v248, v249);
    objc_msgSend_setCamera_(v250, v251, v232, v252);
    v255 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v253, v233, v254);
    objc_msgSend_setName_(v250, v256, v255, v257);
    objc_msgSend_setIsAuthoring_(v250, v258, 1, v259);
    objc_msgSend_setAuthoringCameraType_(v250, v260, v228, v261);
    if (v228 <= 2)
    {
      if (v228)
      {
        if (v228 == 1)
        {
          objc_msgSend_setEulerAngles_(v250, v262, v263, v264, COERCE_DOUBLE(3217625051));
          objc_msgSend_setWorldPosition_(v250, v271, v272, v273, v345);
        }

        else
        {
          objc_msgSend_setEulerAngles_(v250, v262, v263, v264, COERCE_DOUBLE(1070141403));
          objc_msgSend_setWorldPosition_(v250, v293, v294, v295, v336);
        }
      }

      else
      {
        v277 = objc_msgSend_camera(v250, v262, v263, v264);
        LODWORD(v278) = 1036831949;
        objc_msgSend_setZNear_(v277, v279, v280, v281, v278);
        world = self->_world;
        if (world && (sub_1AF1CEA20(world), v283 = sub_1AF27E5F0(self->_world, 1), sub_1AF1CEA9C(self->_world), v283))
        {
          v286 = objc_msgSend_nodeWithNodeRef_(VFXNode, v284, v283, v285);
          objc_msgSend_transform(v286, v287, v288, v289);
          objc_msgSend_setTransform_(v250, v290, v291, v292);
          CFRelease(v283);
        }

        else
        {
          v302 = objc_opt_class();
          v304 = objc_msgSend_childNodesWithAttribute_recursively_(v335, v303, v302, 1);
          Object = objc_msgSend_firstObject(v304, v305, v306, v307);
          if (Object)
          {
            objc_msgSend_transform(Object, v309, v310, v311);
            objc_msgSend_setTransform_(v250, v312, v313, v314);
          }

          else
          {
            objc_msgSend_setEulerAngles_(v250, v309, v310, v311, 0.000707015742);
            objc_msgSend_setPosition_(v250, v315, v316, v317, 0.11150004);
          }
        }
      }
    }

    else if (v228 > 4)
    {
      if (v228 == 5)
      {
        objc_msgSend_setEulerAngles_(v250, v262, v263, v264, 0.0);
        objc_msgSend_setWorldPosition_(v250, v274, v275, v276, v339);
      }

      else
      {
        objc_msgSend_setEulerAngles_(v250, v262, v263, v264, -50.1238708);
        objc_msgSend_setWorldPosition_(v250, v299, v300, v301, v340);
      }
    }

    else if (v228 == 3)
    {
      objc_msgSend_setEulerAngles_(v250, v262, v263, v264, -0.195796371);
      objc_msgSend_setWorldPosition_(v250, v265, v266, v267, v337);
    }

    else
    {
      objc_msgSend_setEulerAngles_(v250, v262, v263, v264, 0.195796371);
      objc_msgSend_setWorldPosition_(v250, v296, v297, v298, v338);
    }

    v318 = MEMORY[0x1E696B098];
    objc_msgSend_worldPosition(v250, v268, v269, v270);
    v322 = objc_msgSend_valueWithVFXFloat3_(v318, v319, v320, v321);
    objc_msgSend_setValue_forKey_(v250, v323, v322, @"defaultPosition");
    v324 = MEMORY[0x1E696B098];
    objc_msgSend_eulerAngles(v250, v325, v326, v327);
    v331 = objc_msgSend_valueWithVFXFloat3_(v324, v328, v329, v330);
    objc_msgSend_setValue_forKey_(v250, v332, v331, @"defaultEulerAngles");
    objc_msgSend_addChildNode_(self->_pointsOfViewRoot, v333, v250, v334);
    ++v228;
  }

  while (v228 != 7);
}

- (unsigned)debugOptions
{
  v4 = objc_msgSend__engineContext(self->_renderer, a2, v2, v3);
  if (v4)
  {

    LODWORD(v4) = sub_1AF12EE68(v4);
  }

  return v4;
}

- (id)modelForLightType:(unsigned __int8)a3
{
  if (a3 == 4)
  {
    return 0;
  }

  lightModel = self->_lightModel;
  if (!lightModel)
  {
    *__p = 0u;
    v23 = 0u;
    *v20 = 0u;
    v21 = 0u;
    *v19 = 0u;
    sub_1AF109498(v19, 3u);
    self->_lightModel = sub_1AF10873C(v19, v7);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v20[1])
    {
      *&v21 = v20[1];
      operator delete(v20[1]);
    }

    if (v19[0])
    {
      v19[1] = v19[0];
      operator delete(v19[0]);
    }

    lightModel = self->_lightModel;
  }

  v8 = objc_msgSend_copy(lightModel, a2, a3, v3);
  Material = objc_msgSend_firstMaterial(self->_lightModel, v9, v10, v11);
  v16 = objc_msgSend_copy(Material, v13, v14, v15);
  objc_msgSend_setFirstMaterial_(v8, v17, v16, v18);
  return v8;
}

- (void)addLightNode:(__CFXNode *)a3
{
  if (CFDictionaryContainsKey(self->_lightsDictionary, a3))
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCFCB0();
    }
  }

  else
  {
    v6 = sub_1AF1B75E8(a3);
    v7 = sub_1AF19CBB4(v6);
    v10 = objc_msgSend_modelForLightType_(self, v8, v7, v9);
    v13 = objc_msgSend_nodeWithModel_(VFXNode, v11, v10, v12);
    objc_msgSend_setName_(v13, v14, @"lightAuth", v15);
    sub_1AF104E8C(v13, a3, v16, v17);
    objc_msgSend_addChildNode_(self->_lightRoot, v18, v13, v19);
    lightsDictionary = self->_lightsDictionary;

    CFDictionaryAddValue(lightsDictionary, a3, v13);
  }
}

- (id)effectModel
{
  effectModel = self->_effectModel;
  if (!effectModel)
  {
    *__p = 0u;
    v29 = 0u;
    *v26 = 0u;
    v27 = 0u;
    *v25 = 0u;
    v20 = 0u;
    sub_1AF108E38(v25, &v20, &xmmword_1AFE204B0, MEMORY[0x1E69E9B18], 0.1, 0.6);
    v20 = xmmword_1AFE20600;
    v21 = xmmword_1AFE20610;
    v22 = xmmword_1AFE20180;
    v19 = xmmword_1AFE201A0;
    v23 = xmmword_1AFE201A0;
    v24 = 0u;
    sub_1AF108E38(v25, &v24, &xmmword_1AFE204B0, &v20, 0.1, 0.6);
    v20 = xmmword_1AFE20620;
    v21 = xmmword_1AFE20160;
    v22 = xmmword_1AFE20630;
    v23 = xmmword_1AFE201A0;
    v24 = 0u;
    sub_1AF108E38(v25, &v24, &xmmword_1AFE204B0, &v20, 0.1, 0.6);
    self->_effectModel = sub_1AF10873C(v25, v6);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v26[1])
    {
      *&v27 = v26[1];
      operator delete(v26[1]);
    }

    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    effectModel = self->_effectModel;
  }

  v7 = objc_msgSend_copy(effectModel, a2, v2, v3, v19);
  Material = objc_msgSend_firstMaterial(self->_effectModel, v8, v9, v10);
  v15 = objc_msgSend_copy(Material, v12, v13, v14);
  objc_msgSend_setFirstMaterial_(v7, v16, v15, v17);
  return v7;
}

- (void)addEffectNode:(__CFXNode *)a3
{
  if (CFDictionaryContainsKey(self->_effectsDictionary, a3))
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCFCE4();
    }
  }

  else
  {
    v9 = objc_msgSend_node(VFXNode, v5, v6, v7);
    v13 = objc_msgSend_effectModel(self, v10, v11, v12);
    v16 = objc_msgSend_nodeWithModel_(VFXNode, v14, v13, v15);
    objc_msgSend_setName_(v16, v17, @"particlesAuth", v18);
    sub_1AF104E8C(v16, a3, v19, v20);
    objc_msgSend_setIsAuthoring_(v9, v21, 1, v22);
    objc_msgSend_addChildNode_(v9, v23, v16, v24);
    objc_msgSend_addChildNode_(self->_effectRoot, v25, v9, v26);
    effectsDictionary = self->_effectsDictionary;

    CFDictionaryAddValue(effectsDictionary, a3, v9);
  }
}

- (id)cameraModel
{
  result = self->_cameraModel;
  if (!result)
  {
    result = sub_1AF108AA0();
    self->_cameraModel = result;
  }

  return result;
}

- (id)cameraFrustumModel
{
  result = self->_cameraFrustumModel;
  if (!result)
  {
    result = sub_1AF109044();
    self->_cameraFrustumModel = result;
  }

  return result;
}

- (id)cameraOrthographicFrustumModel
{
  result = self->_cameraOrthographicFrustumModel;
  if (!result)
  {
    result = sub_1AF1091A4();
    self->_cameraOrthographicFrustumModel = result;
  }

  return result;
}

- (id)cameraNearPlaneModel
{
  result = self->_cameraNearPlaneModel;
  if (!result)
  {
    result = sub_1AF109250();
    self->_cameraNearPlaneModel = result;
  }

  return result;
}

- (id)cameraFocusPlaneModel
{
  result = self->_cameraFocusPlaneModel;
  if (!result)
  {
    result = sub_1AF10931C();
    self->_cameraFocusPlaneModel = result;
  }

  return result;
}

- (id)fieldModel
{
  result = self->_fieldModel;
  if (!result)
  {
    result = sub_1AF1093E8();
    self->_fieldModel = result;
  }

  return result;
}

- (void)addCameraNode:(__CFXNode *)a3
{
  if (!CFDictionaryContainsKey(self->_camerasDictionary, a3) && !sub_1AF1BC2B8(a3))
  {
    v5 = sub_1AF1B955C(a3);
    if ((!v5 || objc_msgSend_compare_(v5, v6, @"kVFXFreeViewCameraName", v7)) && (sub_1AF1BC2E4(a3) & 1) == 0)
    {
      v11 = objc_msgSend_cameraModel(self, v8, v9, v10);
      v14 = objc_msgSend_nodeWithModel_(VFXNode, v12, v11, v13);
      objc_msgSend_setName_(v14, v15, @"cameraAuth", v16);
      sub_1AF104E8C(v14, a3, v17, v18);
      v19 = sub_1AF1BB260(a3);
      if (sub_1AF15D5F0(v19))
      {
        v23 = objc_msgSend_cameraOrthographicFrustumModel(self, v20, v21, v22);
      }

      else
      {
        v23 = objc_msgSend_cameraFrustumModel(self, v20, v21, v22);
      }

      v26 = objc_msgSend_nodeWithModel_(VFXNode, v24, v23, v25);
      objc_msgSend_setName_(v26, v27, @"cameraFrustumAuth", v28);
      objc_msgSend_setIsAuthoring_(v26, v29, 1, v30);
      objc_msgSend_setHittable_(v26, v31, 0, v32);
      v36 = objc_msgSend_cameraNearPlaneModel(self, v33, v34, v35);
      v39 = objc_msgSend_nodeWithModel_(VFXNode, v37, v36, v38);
      objc_msgSend_setName_(v39, v40, @"cameraNearPlaneAuth", v41);
      objc_msgSend_setIsAuthoring_(v39, v42, 1, v43);
      objc_msgSend_setHittable_(v39, v44, 0, v45);
      v49 = objc_msgSend_cameraFocusPlaneModel(self, v46, v47, v48);
      v52 = objc_msgSend_nodeWithModel_(VFXNode, v50, v49, v51);
      objc_msgSend_setName_(v52, v53, @"cameraFocusPlaneAuth", v54);
      objc_msgSend_setIsAuthoring_(v52, v55, 1, v56);
      objc_msgSend_setHittable_(v52, v57, 0, v58);
      objc_msgSend_addChildNode_(self->_cameraRoot, v59, v14, v60);
      objc_msgSend_addChildNode_(v14, v61, v26, v62);
      objc_msgSend_addChildNode_(v26, v63, v39, v64);
      objc_msgSend_addChildNode_(v26, v65, v52, v66);
      camerasDictionary = self->_camerasDictionary;

      CFDictionaryAddValue(camerasDictionary, a3, v14);
    }
  }
}

- (void)removeCameraNode:(__CFXNode *)a3
{
  Value = CFDictionaryGetValue(self->_camerasDictionary, a3);
  objc_msgSend_removeFromParentNode(Value, v6, v7, v8);
  camerasDictionary = self->_camerasDictionary;

  CFDictionaryRemoveValue(camerasDictionary, a3);
}

- (void)addForceFieldNode:(__CFXNode *)a3
{
  if (CFDictionaryContainsKey(self->_forceFieldsDictionary, a3))
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCFD18();
    }
  }

  else
  {
    v9 = objc_msgSend_fieldModel(self, v5, v6, v7);
    v12 = objc_msgSend_nodeWithModel_(VFXNode, v10, v9, v11);
    objc_msgSend_setName_(v12, v13, @"fieldAuth", v14);
    sub_1AF104E8C(v12, a3, v15, v16);
    objc_msgSend_addChildNode_(self->_forceFieldsRoot, v17, v12, v18);
    forceFieldsDictionary = self->_forceFieldsDictionary;

    CFDictionaryAddValue(forceFieldsDictionary, a3, v12);
  }
}

- (void)addEyeSightFrameNode:(__CFXNode *)a3
{
  eyeSightDictionary = self->_eyeSightDictionary;
  if (!eyeSightDictionary)
  {
    eyeSightDictionary = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    self->_eyeSightDictionary = eyeSightDictionary;
  }

  if (CFDictionaryContainsKey(eyeSightDictionary, a3))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCFD4C();
    }
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    *v78 = 0u;
    sub_1AF108C08(&v83, v78, &xmmword_1AFE204B0, xmmword_1AFE20640);
    *v81 = 0u;
    v82 = 0u;
    *v79 = 0u;
    v80 = 0u;
    *v78 = 0u;
    sub_1AF109998(v78, &xmmword_1AFE20420, 0.0);
    v8 = sub_1AF10873C(v78, v7);
    v11 = objc_msgSend_nodeWithModel_(VFXNode, v9, v8, v10);
    objc_msgSend_setIsAuthoring_(v11, v12, 1, v13);
    objc_msgSend_setHittable_(v11, v14, 0, v15);
    *v76 = 0u;
    v77 = 0u;
    *v74 = 0u;
    v75 = 0u;
    *v73 = 0u;
    sub_1AF109998(v73, &xmmword_1AFE20440, -1.0);
    v17 = sub_1AF10873C(v73, v16);
    v20 = objc_msgSend_nodeWithModel_(VFXNode, v18, v17, v19);
    objc_msgSend_setIsAuthoring_(v20, v21, 1, v22);
    objc_msgSend_setHittable_(v20, v23, 0, v24);
    *__p = 0u;
    v72 = 0u;
    *v69 = 0u;
    v70 = 0u;
    v67 = xmmword_1AFE20440;
    *v68 = 0u;
    HIDWORD(v67) = 1050253722;
    sub_1AF109998(v68, &v67, 1.0);
    v26 = sub_1AF10873C(v68, v25);
    v29 = objc_msgSend_nodeWithModel_(VFXNode, v27, v26, v28);
    objc_msgSend_setIsAuthoring_(v29, v30, 1, v31);
    objc_msgSend_setHittable_(v29, v32, 0, v33);
    v37 = objc_msgSend_node(VFXNode, v34, v35, v36);
    v41 = objc_msgSend_node(VFXNode, v38, v39, v40);
    objc_msgSend_setName_(v37, v42, @"eyeSightFrame", v43);
    objc_msgSend_setIsAuthoring_(v41, v44, 1, v45);
    objc_msgSend_setHittable_(v41, v46, 0, v47);
    objc_msgSend_setScale_(v41, v48, v49, v50, *vdupq_n_s32(0x3DCCCCCDu).i64);
    objc_msgSend_setIsAuthoring_(v37, v51, 1, v52);
    objc_msgSend_setHittable_(v37, v53, 0, v54);
    objc_msgSend_addChildNode_(v41, v55, v11, v56);
    objc_msgSend_addChildNode_(v41, v57, v20, v58);
    objc_msgSend_addChildNode_(v41, v59, v29, v60);
    objc_msgSend_addChildNode_(v37, v61, v41, v62);
    sub_1AF104E8C(v37, a3, v63, v64);
    objc_msgSend_addChildNode_(self->_layerRoot, v65, v37, v66);
    CFDictionaryAddValue(self->_eyeSightDictionary, a3, v37);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v69[1])
    {
      *&v70 = v69[1];
      operator delete(v69[1]);
    }

    if (v68[0])
    {
      v68[1] = v68[0];
      operator delete(v68[0]);
    }

    if (v76[0])
    {
      v76[1] = v76[0];
      operator delete(v76[0]);
    }

    if (v74[1])
    {
      *&v75 = v74[1];
      operator delete(v74[1]);
    }

    if (v73[0])
    {
      v73[1] = v73[0];
      operator delete(v73[0]);
    }

    if (v81[0])
    {
      v81[1] = v81[0];
      operator delete(v81[0]);
    }

    if (v79[1])
    {
      *&v80 = v79[1];
      operator delete(v79[1]);
    }

    if (v78[0])
    {
      v78[1] = v78[0];
      operator delete(v78[0]);
    }

    if (v86)
    {
      *(&v86 + 1) = v86;
      operator delete(v86);
    }

    if (*(&v84 + 1))
    {
      *&v85 = *(&v84 + 1);
      operator delete(*(&v84 + 1));
    }

    if (v83)
    {
      *(&v83 + 1) = v83;
      operator delete(v83);
    }
  }
}

- (void)removeForceFieldNode:(__CFXNode *)a3
{
  Value = CFDictionaryGetValue(self->_forceFieldsDictionary, a3);
  objc_msgSend_removeFromParentNode(Value, v6, v7, v8);
  forceFieldsDictionary = self->_forceFieldsDictionary;

  CFDictionaryRemoveValue(forceFieldsDictionary, a3);
}

- (void)removeLightNode:(__CFXNode *)a3
{
  Value = CFDictionaryGetValue(self->_lightsDictionary, a3);
  objc_msgSend_removeFromParentNode(Value, v6, v7, v8);
  lightsDictionary = self->_lightsDictionary;

  CFDictionaryRemoveValue(lightsDictionary, a3);
}

- (void)removeEffectNode:(__CFXNode *)a3
{
  Value = CFDictionaryGetValue(self->_effectsDictionary, a3);
  objc_msgSend_removeFromParentNode(Value, v6, v7, v8);
  effectsDictionary = self->_effectsDictionary;

  CFDictionaryRemoveValue(effectsDictionary, a3);
}

- (void)removeEyesightFrameNode:(__CFXNode *)a3
{
  eyeSightDictionary = self->_eyeSightDictionary;
  if (eyeSightDictionary)
  {
    Value = CFDictionaryGetValue(eyeSightDictionary, a3);
    objc_msgSend_removeFromParentNode(Value, v7, v8, v9);
    v10 = self->_eyeSightDictionary;

    CFDictionaryRemoveValue(v10, a3);
  }
}

- (void)addedNode:(__CFXNode *)a3
{
  if (sub_1AF1BB0BC(a3))
  {
    objc_msgSend_addLightNode_(self, v5, a3, v6);
  }

  if (sub_1AF1B83E8(a3) || sub_1AF1BC05C(a3))
  {
    objc_msgSend_addEffectNode_(self, v7, a3, v8);
  }

  if (sub_1AF1BB2C8(a3))
  {
    objc_msgSend_addCameraNode_(self, v9, a3, v10);
  }

  if (sub_1AF1BBE9C(a3))
  {
    objc_msgSend_addForceFieldNode_(self, v11, a3, v12);
  }

  if (sub_1AF1BB028(a3))
  {

    MEMORY[0x1EEE66B58](self, sel_addEyeSightFrameNode_, a3, v13);
  }
}

- (void)removedNode:(__CFXNode *)a3
{
  if (sub_1AF1BC2E4(a3))
  {
    if (sub_1AF1BB0BC(a3))
    {
      objc_msgSend_removeLightNode_(self, v5, a3, v6);
    }

    if (sub_1AF1B83E8(a3) || sub_1AF1BC05C(a3))
    {
      objc_msgSend_removeEffectNode_(self, v7, a3, v8);
    }

    if (sub_1AF1BB2C8(a3))
    {
      objc_msgSend_removeCameraNode_(self, v9, a3, v10);
    }

    if (sub_1AF1BBE9C(a3))
    {
      objc_msgSend_removeForceFieldNode_(self, v11, a3, v12);
    }

    if (sub_1AF1BB028(a3))
    {
      objc_msgSend_removeEyesightFrameNode_(self, v13, a3, v14);
    }

    sub_1AF1BC2C4(a3, 0);
  }
}

- (void)selectNodes:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  objc_msgSend_removeAllObjects(self->_selection, v5, v6, v7);
  if (a3)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v8, &v20, v24, 16);
    if (v12)
    {
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(a3);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if ((objc_msgSend_isAuthoring(v15, v9, v10, v11) & 1) == 0)
          {
            selection = self->_selection;
            v17 = objc_msgSend_nodeRef(v15, v9, v10, v11);
            objc_msgSend_addObject_(selection, v18, v17, v19);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v9, &v20, v24, 16);
      }

      while (v12);
    }
  }

  objc_sync_exit(self);
}

- (void)cancelSelection
{
  objc_sync_enter(self);
  objc_msgSend_removeAllObjects(self->_selection, v3, v4, v5);

  objc_sync_exit(self);
}

- (void)_resetLightAuthoringWithContainerNode:(id)a3 source:(__CFXNode *)a4 light:(__CFXLight *)a5
{
  objc_msgSend_removeAllChilds(a3, a2, a3, a4);
  v9 = MEMORY[0x1E696AD98];
  v10 = sub_1AF19CBB4(a5);
  v13 = objc_msgSend_numberWithUnsignedChar_(v9, v11, v10, v12);
  objc_msgSend_setValue_forKey_(a3, v14, v13, @"VFXDebugLightTypeKey");
  objc_msgSend_setValue_forKey_(a3, v15, 0, @"VFXDebugLightSubTypeKey");
  v16 = sub_1AF19CBB4(a5);
  if (!v16)
  {
    return;
  }

  if (v16 == 1)
  {
    *__p = 0u;
    v248 = 0u;
    *v245 = 0u;
    v246 = 0u;
    *v244 = 0u;
    sub_1AF109498(v244, 3u);
    v21 = sub_1AF10873C(v244, v20);
    v24 = objc_msgSend_nodeWithModel_(VFXNode, v22, v21, v23);
    objc_msgSend_setName_(v24, v25, @"lightInnerAuth", v26);
    objc_msgSend_setIsAuthoring_(v24, v27, 1, v28);
    objc_msgSend_setHittable_(v24, v29, 0, v30);
    objc_msgSend_addChildNode_(a3, v31, v24, v32);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v245[1])
    {
      *&v246 = v245[1];
      operator delete(v245[1]);
    }

    if (v244[0])
    {
      v244[1] = v244[0];
      operator delete(v244[0]);
    }

    *__p = 0u;
    v248 = 0u;
    *v245 = 0u;
    v246 = 0u;
    *v244 = 0u;
    sub_1AF109498(v244, 3u);
    v34 = sub_1AF10873C(v244, v33);
    v37 = objc_msgSend_nodeWithModel_(VFXNode, v35, v34, v36);
    objc_msgSend_setName_(v37, v38, @"lightOuterAuth", v39);
    objc_msgSend_setIsAuthoring_(v37, v40, 1, v41);
    objc_msgSend_setHittable_(v37, v42, 0, v43);
    objc_msgSend_addChildNode_(a3, v44, v37, v45);
LABEL_18:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v245[1])
    {
      *&v246 = v245[1];
      operator delete(v245[1]);
    }

    if (v244[0])
    {
      v244[1] = v244[0];
      operator delete(v244[0]);
    }

    return;
  }

  if ((v16 & 0xFFFFFFFB) == 2)
  {
    *__p = 0u;
    v248 = 0u;
    *v245 = 0u;
    v246 = 0u;
    *v244 = 0u;
    sub_1AF109F44(v244, &xmmword_1AFE20450);
    v47 = sub_1AF1088E8(v244, v46);
    v50 = objc_msgSend_nodeWithModel_(VFXNode, v48, v47, v49);
    objc_msgSend_setName_(v50, v51, @"lightArrowAuth", v52);
    objc_msgSend_setIsAuthoring_(v50, v53, 1, v54);
    objc_msgSend_setEulerAngles_(v50, v55, v56, v57, COERCE_DOUBLE(1078530011));
    __asm { FMOV            V0.4S, #10.0 }

    objc_msgSend_setScale_(v50, v63, v64, v65, *&_Q0);
    objc_msgSend_setHittable_(v50, v66, 0, v67);
    objc_msgSend_addChildNode_(a3, v68, v50, v69);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v245[1])
    {
      *&v246 = v245[1];
      operator delete(v245[1]);
    }

    if (v244[0])
    {
      v244[1] = v244[0];
      operator delete(v244[0]);
    }

    *__p = 0u;
    v248 = 0u;
    *v245 = 0u;
    v246 = 0u;
    *v244 = 0u;
    v241[0] = 0u;
    sub_1AF108C08(v244, v241, &xmmword_1AFE20450, xmmword_1AFE206B0);
    v71 = sub_1AF10873C(v244, v70);
    v74 = objc_msgSend_nodeWithModel_(VFXNode, v72, v71, v73);
    objc_msgSend_setPivot_(v74, v75, v76, v77, COERCE_DOUBLE(1065353216), unk_1AFE20730, 0.0, unk_1AFE20750);
    objc_msgSend_setName_(v74, v78, @"lightShadowAuth", v79);
    objc_msgSend_setIsAuthoring_(v74, v80, 1, v81);
    objc_msgSend_setHittable_(v74, v82, 0, v83);
    objc_msgSend_addChildNode_(a3, v84, v74, v85);
    goto LABEL_18;
  }

  switch(v16)
  {
    case 5:
      v242 = 0u;
      memset(v241, 0, sizeof(v241));
      *&v152 = sub_1AF19D5A0(a5, v241).n128_u64[0];
      v155 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v153, v241[0].u8[0], v154, v152);
      objc_msgSend_setValue_forKey_(a3, v156, v155, @"VFXDebugLightSubTypeKey");
      v159 = 0;
      if (v241[0].u8[0] <= 1u)
      {
        if (v241[0].i8[0])
        {
          if (v241[0].u8[0] != 1)
          {
            goto LABEL_72;
          }

          *__p = 0u;
          v248 = 0u;
          *v245 = 0u;
          v246 = 0u;
          *v244 = 0u;
          v239 = xmmword_1AFE20670;
          v240 = xmmword_1AFE20660;
          v237 = xmmword_1AFE20690;
          v238 = xmmword_1AFE20680;
          sub_1AF109C30(v244, &v240, &v239, &v238, &v237, &xmmword_1AFE20450);
          v166 = sub_1AF10873C(v244, v167);
        }

        else
        {
          *__p = 0u;
          v248 = 0u;
          *v245 = 0u;
          v246 = 0u;
          *v244 = 0u;
          v239 = xmmword_1AFE20150;
          v240 = xmmword_1AFE20650;
          sub_1AF109B84(v244, &v240, &v239, &xmmword_1AFE20450, &xmmword_1AFE20450);
          v166 = sub_1AF10873C(v244, v226);
        }
      }

      else
      {
        switch(v241[0].u8[0])
        {
          case 2u:
            *__p = 0u;
            v248 = 0u;
            *v245 = 0u;
            v246 = 0u;
            *v244 = 0u;
            sub_1AF109608(v244, &xmmword_1AFE20450, COERCE_UNSIGNED_INT(1.0));
            v166 = sub_1AF10873C(v244, v224);
            break;
          case 3u:
            *__p = 0u;
            v248 = 0u;
            *v245 = 0u;
            v246 = 0u;
            *v244 = 0u;
            sub_1AF109498(v244, 3u);
            v166 = sub_1AF10873C(v244, v225);
            break;
          case 4u:
            *__p = 0u;
            v248 = 0u;
            *v245 = 0u;
            v246 = 0u;
            *v244 = 0u;
            v160 = v242;
            if (v242)
            {
              v161 = 0;
              v162 = v242 - 1;
              do
              {
                if (v162 == v161)
                {
                  v163 = 0;
                }

                else
                {
                  v163 = v161 + 1;
                }

                *&v164 = -COERCE_FLOAT(*(*(&v242 + 1) + 8 * v161));
                HIDWORD(v164) = HIDWORD(*(*(&v242 + 1) + 8 * v161));
                HIDWORD(v165) = 0;
                *&v165 = -COERCE_FLOAT(*(*(&v242 + 1) + 8 * v163));
                *(&v165 + 4) = HIDWORD(*(*(&v242 + 1) + 8 * v163));
                v239 = v165;
                v240 = v164;
                sub_1AF109B84(v244, &v240, &v239, &xmmword_1AFE20450, &xmmword_1AFE20450);
                ++v161;
              }

              while (v160 != v161);
            }

            v166 = sub_1AF10873C(v244, v157);
            break;
          default:
LABEL_72:
            v227 = objc_msgSend_nodeWithModel_(VFXNode, v157, v159, v158);
            objc_msgSend_setName_(v227, v228, @"lightAreaAuth", v229);
            objc_msgSend_setIsAuthoring_(v227, v230, 1, v231);
            v232 = sub_1AF16CDEC(a4);
            objc_msgSend_setAuthoringTargetNode_(v227, v233, v232, v234);
            objc_msgSend_addChildNode_(a3, v235, v227, v236);
            return;
        }
      }

      v159 = v166;
      sub_1AF104BA0(v244);
      goto LABEL_72;
    case 4:
      LODWORD(v95) = dword_1AFE206D0[sub_1AF19D968(a5) == 1];
      v99 = objc_msgSend_sphereWithRadius_(VFXParametricModel, v96, v97, v98, v95);
      objc_msgSend_setName_(v99, v100, @"probeGeometry", v101);
      *__p = 0u;
      v248 = 0u;
      *v245 = 0u;
      v246 = 0u;
      *v244 = 0u;
      v241[0] = 0u;
      __asm { FMOV            V0.4S, #1.0 }

      sub_1AF108C08(v244, v241, &xmmword_1AFE204B0, _Q0);
      v104 = sub_1AF10873C(v244, v103);
      v107 = objc_msgSend_nodeWithModel_(VFXNode, v105, v104, v106);
      objc_msgSend_setName_(v107, v108, @"lightInnerAuth", v109);
      objc_msgSend_setIsAuthoring_(v107, v110, 1, v111);
      objc_msgSend_setHittable_(v107, v112, 0, v113);
      objc_msgSend_addChildNode_(a3, v114, v107, v115);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v245[1])
      {
        *&v246 = v245[1];
        operator delete(v245[1]);
      }

      if (v244[0])
      {
        v244[1] = v244[0];
        operator delete(v244[0]);
      }

      *__p = 0u;
      v248 = 0u;
      *v245 = 0u;
      v246 = 0u;
      *v244 = 0u;
      v241[0] = 0u;
      __asm { FMOV            V0.4S, #1.0 }

      sub_1AF108C08(v244, v241, &xmmword_1AFE204B0, _Q0);
      v118 = sub_1AF10873C(v244, v117);
      v121 = objc_msgSend_nodeWithModel_(VFXNode, v119, v118, v120);
      objc_msgSend_setName_(v121, v122, @"lightOuterAuth", v123);
      objc_msgSend_setIsAuthoring_(v121, v124, 1, v125);
      objc_msgSend_setHittable_(v121, v126, 0, v127);
      objc_msgSend_addChildNode_(a3, v128, v121, v129);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v245[1])
      {
        *&v246 = v245[1];
        operator delete(v245[1]);
      }

      if (v244[0])
      {
        v244[1] = v244[0];
        operator delete(v244[0]);
      }

      if (sub_1AF19D968(a5))
      {
        *__p = 0u;
        v248 = 0u;
        *v245 = 0u;
        v246 = 0u;
        *v244 = 0u;
        v241[0] = 0u;
        __asm { FMOV            V0.4S, #1.0 }

        sub_1AF108C08(v244, v241, &xmmword_1AFE20400, _Q0);
        v132 = sub_1AF10873C(v244, v131);
        v135 = objc_msgSend_nodeWithModel_(VFXNode, v133, v132, v134);
        objc_msgSend_setName_(v135, v136, @"lightProbeExtents", v137);
        objc_msgSend_setIsAuthoring_(v135, v138, 1, v139);
        objc_msgSend_setHittable_(v135, v140, 0, v141);
        objc_msgSend_addChildNode_(a3, v142, v135, v143);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v245[1])
        {
          *&v246 = v245[1];
          operator delete(v245[1]);
        }

        if (v244[0])
        {
          v244[1] = v244[0];
          operator delete(v244[0]);
        }

        Material = objc_msgSend_firstMaterial(v99, v144, v145, v146);
        objc_msgSend_setColorBufferWriteMask_(Material, v148, 0, v149);
      }

      else
      {
        v168 = sub_1AF19D8B8(a5);
        white = self->_white;
        v173 = objc_msgSend_material(v99, v170, v171, v172);
        v177 = objc_msgSend_diffuse(v173, v174, v175, v176);
        objc_msgSend_setColor_(v177, v178, white, v179);
        v183 = objc_msgSend_material(v99, v180, v181, v182);
        objc_msgSend_setShadingModel_(v183, v184, 2, v185);
        if (v168)
        {
          v187 = objc_msgSend_program(VFXProgram, v150, v186, v151);
          v191 = objc_msgSend__renderContextMetal(self->_renderer, v188, v189, v190);
          v195 = objc_msgSend_resourceManager(v191, v192, v193, v194);
          v196 = sub_1AFDE868C(v195);
          v200 = objc_msgSend_frameworkLibrary(v196, v197, v198, v199);
          objc_msgSend_setLibrary_(v187, v201, v200, v202);
          objc_msgSend_setVertexFunctionName_(v187, v203, @"vfx_probesphere_from_sh_vertex", v204);
          objc_msgSend_setFragmentFunctionName_(v187, v205, @"vfx_probesphere_from_sh_fragment", v206);
          v243[0] = MEMORY[0x1E69E9820];
          v243[1] = 3221225472;
          v243[2] = sub_1AF106860;
          v243[3] = &unk_1E7A79758;
          v243[4] = a5;
          objc_msgSend_handleBindingOfBufferNamed_frequency_usingBlock_(v187, v207, @"sh", 1, v243);
          v211 = objc_msgSend_material(v99, v208, v209, v210);
          objc_msgSend_setProgram_(v211, v212, v187, v213);
        }
      }

      v214 = objc_msgSend_nodeWithModel_(VFXNode, v150, v99, v151);
      objc_msgSend_setName_(v214, v215, @"probe", v216);
      sub_1AF104E8C(v214, a4, v217, v218);
      objc_msgSend_setHittable_(v214, v219, 1, v220);
      objc_msgSend_addChildNode_(a3, v221, v214, v222);
      *__p = 0u;
      v248 = 0u;
      *v245 = 0u;
      v246 = 0u;
      *v244 = 0u;
      sub_1AF109498(v244, 3u);
      sub_1AF10873C(v244, v223);
      goto LABEL_18;
    case 3:
      v86 = objc_msgSend_node(VFXNode, v17, v18, v19);
      objc_msgSend_setName_(v86, v87, @"lightSpotAuth", v88);
      objc_msgSend_setIsAuthoring_(v86, v89, 1, v90);
      objc_msgSend_setHittable_(v86, v91, 0, v92);

      objc_msgSend_addChildNode_(a3, v93, v86, v94);
      break;
  }
}

- (BOOL)_isPartOfSelection:(__CFXNode *)a3
{
  v4 = a3;
  if (objc_msgSend_count(self->_selection, a2, a3, v3))
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  do
  {
    v9 = objc_msgSend_containsObject_(self->_selection, v6, v4, v7);
    if (v9)
    {
      break;
    }

    v4 = sub_1AF1B9A6C(v4);
  }

  while (v4);
  return v9;
}

- (BOOL)_proximityHidden:(uint64_t)a3
{
  v8 = objc_msgSend_pointOfView(*(a1 + 136), a2, a3, a4);
  objc_msgSend_worldPosition(v8, v9, v10, v11);
  v13 = vsubq_f32(v12, a8);
  v14 = vmulq_f32(v13, v13);
  return (v14.f32[2] + vaddv_f32(*v14.f32)) < 0.0001;
}

- (void)updateLightTypeForNode:(id)a3 source:(__CFXNode *)a4 light:(__CFXLight *)a5 screenspaceScalingFactor:(float)a6
{
  v8 = a4;
  v11 = objc_msgSend_valueForKey_(a3, a2, @"VFXDebugLightTypeKey", a4);
  v15 = objc_msgSend_intValue(v11, v12, v13, v14);
  v18 = objc_msgSend_valueForKey_(a3, v16, @"VFXDebugLightSubTypeKey", v17);
  v21 = objc_msgSend_valueForKey_(a3, v19, @"disabled", v20);
  v25 = objc_msgSend_BOOLValue(v21, v22, v23, v24);
  isPartOfSelection = objc_msgSend__isPartOfSelection_(self, v26, v8, v27);
  v349 = isPartOfSelection ^ 1;
  v31 = sub_1AF1B7348(v8) & (isPartOfSelection ^ 1);
  v32 = v25 ^ v31;
  if (v32 == 1)
  {
    v33 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v28, v31, v30);
    objc_msgSend_setValue_forKey_(a3, v34, v33, @"disabled");
  }

  v35 = objc_msgSend_childNodes(a3, v28, v29, v30);
  if (objc_msgSend_count(v35, v36, v37, v38))
  {
    v39 = sub_1AF19CBB4(a5) == 4 ? v32 : 1;
    if ((v39 & 1) == 0)
    {
      v356 = v8;
      v40 = self;
      v353 = sub_1AF19D8B8(a5);
      v41 = sub_1AF19B558(a5, 0);
      v43 = objc_msgSend_childNodeWithName_recursively_(a3, v42, @"probe", 1);
      v47 = objc_msgSend_model(v43, v44, v45, v46);
      Material = objc_msgSend_firstMaterial(v47, v48, v49, v50);
      v55 = Material;
      if (Material)
      {
        v56 = objc_msgSend_program(Material, v52, v53, v54) != 0;
        v60 = objc_msgSend_reflective(v55, v57, v58, v59);
        LODWORD(v55) = objc_msgSend_contents(v60, v61, v62, v63) != 0;
      }

      else
      {
        v56 = 0;
      }

      if (sub_1AF19D968(a5))
      {
        v64 = v55 == (v41 != 0);
      }

      else if (a5)
      {
        v64 = v56 == (v353 != 0);
      }

      else
      {
        v64 = 1;
      }

      LOBYTE(v32) = !v64;
      self = v40;
      v8 = v356;
    }
  }

  if (sub_1AF19CBB4(a5) == 5)
  {
    *&v66 = sub_1AF19D5A0(a5, v362).n128_u64[0];
    v67 = LOBYTE(v362[0]);
    LOBYTE(v32) = (objc_msgSend_integerValue(v18, v68, v69, v70, v66) != v67) | v32;
  }

  *&v65 = fmaxf(a6, 0.001);
  v357 = v65;
  if (sub_1AF19CBB4(a5) != v15 || (v32 & 1) != 0)
  {
    objc_msgSend__resetLightAuthoringWithContainerNode_source_light_(self, v71, a3, v8, a5);
  }

  v72.i32[1] = HIDWORD(v357);
  *v72.i32 = 1.0 / *&v357;
  v354 = v72;
  if (sub_1AF19CBB4(a5) == 1)
  {
    v76 = objc_msgSend_childNodes(a3, v73, v74, v75);
    v79 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, 0, v78);
    objc_msgSend_setScale_(v79, v80, v81, v82, 0.0);
    objc_msgSend_setHidden_(v79, v83, 1, v84);
    v88 = objc_msgSend_childNodes(a3, v85, v86, v87);
    v91 = objc_msgSend_objectAtIndexedSubscript_(v88, v89, 1, v90);
    *v95.i32 = *v354.i32 * sub_1AF19C1FC(a5);
    if (*v95.i32 < 0.0)
    {
      *v95.i32 = 0.0;
    }

    v355 = *&v95;
    objc_msgSend_setScale_(v91, v92, v93, v94, *vdupq_lane_s32(v95, 0).i64);
    objc_msgSend_setHidden_(v91, v96, (*&v355 == 0.0) | (v349 & 1), v97, v355);
    if (sub_1AF1B7348(v8))
    {
      v101 = 288;
      if (isPartOfSelection)
      {
        v101 = 272;
      }

      v102 = *(&self->super.isa + v101);
      v103 = objc_msgSend_model(a3, v98, v99, v100);
      v107 = objc_msgSend_firstMaterial(v103, v104, v105, v106);
      v111 = objc_msgSend_diffuse(v107, v108, v109, v110);
      objc_msgSend_setColor_(v111, v112, v102, v113);
      v117 = objc_msgSend_model(v79, v114, v115, v116);
      v121 = objc_msgSend_firstMaterial(v117, v118, v119, v120);
      v125 = objc_msgSend_diffuse(v121, v122, v123, v124);
      objc_msgSend_setColor_(v125, v126, v102, v127);
    }

    else
    {
      v167 = 256;
      if (isPartOfSelection)
      {
        v167 = 272;
      }

      v168 = *(&self->super.isa + v167);
      if (isPartOfSelection)
      {
        v169 = 272;
      }

      else
      {
        v169 = 264;
      }

      v170 = objc_msgSend_model(a3, v98, v99, v100);
      v174 = objc_msgSend_firstMaterial(v170, v171, v172, v173);
      v178 = objc_msgSend_diffuse(v174, v175, v176, v177);
      objc_msgSend_setColor_(v178, v179, v168, v180);
      v181 = *(&self->super.isa + v169);
      v185 = objc_msgSend_model(v79, v182, v183, v184);
      v189 = objc_msgSend_firstMaterial(v185, v186, v187, v188);
      v193 = objc_msgSend_diffuse(v189, v190, v191, v192);
      objc_msgSend_setColor_(v193, v194, v181, v195);
      v102 = *(&self->super.isa + v169);
    }

    v196 = objc_msgSend_model(v91, v128, v129, v130);
LABEL_82:
    v259 = objc_msgSend_firstMaterial(v196, v197, v198, v199);
    v263 = objc_msgSend_diffuse(v259, v260, v261, v262);
    objc_msgSend_setColor_(v263, v264, v102, v265);
    goto LABEL_83;
  }

  if (sub_1AF19CBB4(a5) == 3)
  {
    v131 = v8;
    v132 = fmin(sub_1AF19BFD8(a5) / 180.0 * 3.14159265, 3.13159265);
    v133 = sub_1AF19C9F0(a5) / 180.0 * 3.14159265;
    if (v133 >= v132)
    {
      v134 = v132;
    }

    else
    {
      v134 = v133;
    }

    v135 = sub_1AF19C1FC(a5);
    v139 = objc_msgSend_childNodes(a3, v136, v137, v138);
    v144 = objc_msgSend_objectAtIndexedSubscript_(v139, v140, 0, v141);
    if (isPartOfSelection)
    {
      v145 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v142, @"oa:%f ia:%f e:%f scale:%f", v143, v132, v134, v135, 1.0);
    }

    else
    {
      v145 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v142, @"oa:%f ia:%f e:%f scale:%f", v143, v132, v134, v135, *&v357);
    }

    v148 = v145;
    v149 = objc_msgSend_valueForKey_(v144, v146, @"AuthEnvHash", v147);
    if (!v149 || objc_msgSend_compare_(v148, v150, v149, v151))
    {
      __p = 0u;
      v366 = 0u;
      *v363 = 0u;
      v364 = 0u;
      *v362 = 0u;
      v361 = 0uLL;
      v360 = xmmword_1AFE206C0;
      if ((isPartOfSelection & (v135 > 0.0)) == 0)
      {
        v135 = *&v357;
      }

      v155 = tanf(v132 * 0.5);
      sub_1AF109D00(v362, &v361, &v360, &xmmword_1AFE20490, v135, v135 * v155);
      if (v134 > 0.0)
      {
        v157 = tanf(v134 * 0.5);
        sub_1AF109D00(v362, &v361, &v360, &xmmword_1AFE20450, v135, v135 * v157);
      }

      v158 = sub_1AF10873C(v362, v156);
      objc_msgSend_setModel_(v144, v159, v158, v160);
      objc_msgSend_setValue_forKey_(v144, v161, v148, @"AuthEnvHash");
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (v363[1])
      {
        *&v364 = v363[1];
        operator delete(v363[1]);
      }

      if (v362[0])
      {
        v362[1] = v362[0];
        operator delete(v362[0]);
      }
    }

    objc_msgSend_setScale_(v144, v152, v153, v154, *vdupq_lane_s32(v354, 0).i64);
    if (sub_1AF1B7348(v131))
    {
      if (isPartOfSelection)
      {
        v165 = 272;
      }

      else
      {
        v165 = 288;
      }

      v166 = *(&self->super.isa + v165);
    }

    else
    {
      v227 = 256;
      if (isPartOfSelection)
      {
        v227 = 272;
      }

      v166 = *(&self->super.isa + v227);
      if (isPartOfSelection)
      {
        v165 = 272;
      }

      else
      {
        v165 = 304;
      }
    }

    v228 = objc_msgSend_model(a3, v162, v163, v164);
    v232 = objc_msgSend_firstMaterial(v228, v229, v230, v231);
    v236 = objc_msgSend_diffuse(v232, v233, v234, v235);
    objc_msgSend_setColor_(v236, v237, v166, v238);
    v102 = *(&self->super.isa + v165);
    v196 = objc_msgSend_model(v144, v239, v240, v241);
    goto LABEL_82;
  }

  if (sub_1AF19CBB4(a5) == 2 || sub_1AF19CBB4(a5) == 6)
  {
    v203 = v8;
    v204 = objc_msgSend_childNodes(a3, v200, v201, v202);
    v208 = objc_msgSend_count(v204, v205, v206, v207);
    v212 = objc_msgSend_childNodes(a3, v209, v210, v211);
    v215 = objc_msgSend_objectAtIndexedSubscript_(v212, v213, 0, v214);
    objc_msgSend_setHidden_(v215, v216, v31, v217);
    v221 = objc_msgSend_childNodes(a3, v218, v219, v220);
    v224 = objc_msgSend_objectAtIndexedSubscript_(v221, v222, v208 - 1, v223);
    if (sub_1AF19E90C(a5))
    {
      objc_msgSend_setHidden_(v224, v225, 1, v226);
    }

    else
    {
      v242 = sub_1AF19B994(a5) ^ 1;
      objc_msgSend_setHidden_(v224, v243, v242, v244);
    }

    if ((sub_1AF19E90C(a5) & 1) == 0)
    {
      sub_1AF19CC98(a5);
      objc_msgSend_setPosition_(v224, v247, v248, v249, 0.0);
      v350 = sub_1AF19C56C(a5);
      v351 = COERCE_DOUBLE(vmul_n_f32(__PAIR64__(COERCE_UNSIGNED_INT(sub_1AF19C56C(a5)), LODWORD(v350)), *v354.i32));
      sub_1AF19CBFC(a5);
      sub_1AF19CC98(a5);
      objc_msgSend_setScale_(v224, v250, v251, v252, v351);
    }

    v358[0] = MEMORY[0x1E69E9820];
    v358[1] = 3221225472;
    v358[2] = sub_1AF10737C;
    v358[3] = &unk_1E7A79780;
    v359 = isPartOfSelection;
    v358[4] = self;
    v358[5] = v203;
    objc_msgSend_enumerateChildNodesUsingBlock_(a3, v245, v358, v246);
    v253 = sub_1AF1B7348(v203);
    v257 = isPartOfSelection == 0;
    if (v253)
    {
      v258 = 288;
    }

    else
    {
      v258 = 256;
    }

LABEL_79:
    if (!v257)
    {
      v258 = 272;
    }

    v102 = *(&self->super.isa + v258);
    v196 = objc_msgSend_model(a3, v254, v255, v256);
    goto LABEL_82;
  }

  if (sub_1AF19CBB4(a5) == 4)
  {
    v281 = 304;
    if (isPartOfSelection)
    {
      v281 = 272;
    }

    v282 = *(&self->super.isa + v281);
    v283 = objc_msgSend_model(a3, v278, v279, v280);
    v287 = objc_msgSend_firstMaterial(v283, v284, v285, v286);
    v291 = objc_msgSend_diffuse(v287, v288, v289, v290);
    objc_msgSend_setColor_(v291, v292, v282, v293);
    hasDebugOption = objc_msgSend_hasDebugOption_(self, v294, 8, v295);
    objc_msgSend_setHidden_(a3, v297, hasDebugOption ^ 1u, v298);
    v300 = objc_msgSend_childNodeWithName_recursively_(a3, v299, @"lightInnerAuth", 0);
    objc_msgSend_setHidden_(v300, v301, v349, v302);
    *v303.i32 = fmaxf(sub_1AF19CC98(a5), 0.0);
    objc_msgSend_setScale_(v300, v304, v305, v306, *vdupq_lane_s32(v303, 0).i64);
    v308 = objc_msgSend_childNodeWithName_recursively_(a3, v307, @"lightOuterAuth", 0);
    objc_msgSend_setHidden_(v308, v309, v349, v310);
    *v311.i32 = fmaxf(sub_1AF19CBFC(a5), 0.0);
    objc_msgSend_setScale_(v308, v312, v313, v314, *vdupq_lane_s32(v311, 0).i64);
    v316 = objc_msgSend_childNodeWithName_recursively_(a3, v315, @"lightProbeExtents", 0);
    v317 = sub_1AF19DDEC(a5);
    v318.i64[0] = 0x3F0000003F000000;
    v318.i64[1] = 0x3F0000003F000000;
    objc_msgSend_setScale_(v316, v319, v320, v321, *vmulq_f32(v317, v318).i64);
    v323 = objc_msgSend_childNodeWithName_recursively_(a3, v322, @"probe", 0);
    *&v324 = sub_1AF19DEB0(a5).n128_u64[0];
    objc_msgSend_setPosition_(v323, v325, v326, v327, v324);
    objc_msgSend_setHidden_(v316, v328, v349, v329);
  }

  else if (sub_1AF19CBB4(a5) == 5)
  {
    *v363 = 0u;
    v364 = 0u;
    *v362 = 0u;
    *&v330 = sub_1AF19D5A0(a5, v362).n128_u64[0];
    v334 = objc_msgSend_childNodes(a3, v331, v332, v333, v330);
    v337 = objc_msgSend_objectAtIndexedSubscript_(v334, v335, 0, v336);
    objc_msgSend_setScale_(v337, v338, v339, v340, *vdupq_lane_s32(v354, 0).i64);
    objc_msgSend_scale(v337, v341, v342, v343);
    objc_msgSend_setScale_(v337, v345, v346, v347, *vmulq_f32(v344, *v363).i64);
    v348 = sub_1AF1B7348(v8);
    v258 = 256;
    if (v348)
    {
      v258 = 288;
    }

    v257 = isPartOfSelection == 0;
    goto LABEL_79;
  }

LABEL_83:
  if (a5)
  {
    if (sub_1AF19CBB4(a5) != 4)
    {
      objc_msgSend_scale(a3, v266, v267, v268);
      objc_msgSend_setScale_(a3, v270, v271, v272, *vmulq_n_f32(v269, *&v357).i64);
      v275 = objc_msgSend_hasDebugOption_(self, v273, 4, v274);
      objc_msgSend_setHidden_(a3, v276, v275 ^ 1u, v277);
    }
  }
}

- (void)updateLightNode:(id)a3 withSourceNode:(__CFXNode *)a4
{
  v7 = sub_1AF1B75E8(a4);
  if (v7)
  {
    v10 = v7;
    v11 = sub_1AF1BA900(a4);
    v15 = objc_msgSend_pointOfView(self->_renderer, v12, v13, v14);
    v19 = objc_msgSend_nodeRef(v15, v16, v17, v18);
    v22 = 1;
    if ((v11 & 1) != 0 || v19 == a4)
    {
LABEL_11:

      objc_msgSend_setHidden_(a3, v20, v22, v21);
      return;
    }

    v23 = sub_1AF1B9B04(a4);
    v38 = v23[1];
    v39 = *v23;
    v36 = v23[3];
    v37 = v23[2];
    if (objc_msgSend__proximityHidden_(self, v24, v25, v26))
    {
LABEL_5:
      v22 = 1;
      goto LABEL_11;
    }

    isPartOfSelection = objc_msgSend__isPartOfSelection_(self, v20, a4, v21);
    v28 = sub_1AF19CBB4(v10);
    if ((isPartOfSelection & 1) == 0)
    {
      if (v28 == 4)
      {
        if (!objc_msgSend_hasDebugOption_(self, v20, 8, v21))
        {
          goto LABEL_5;
        }
      }

      else if ((objc_msgSend_hasDebugOption_(self, v20, 4, v21) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    objc_msgSend_setWorldTransform_(a3, v20, v29, v21, v39.n128_f64[0], v38.n128_f64[0], v37.n128_f64[0], v36.n128_f64[0]);
    v33 = objc_msgSend__engineContext(self->_renderer, v30, v31, v32);
    LODWORD(v34) = 25.0;
    sub_1AF27F708(v33, v34, v39, v38, v37, v36);
    objc_msgSend_updateLightTypeForNode_source_light_screenspaceScalingFactor_(self, v35, a3, a4, v10);
    v22 = 0;
    goto LABEL_11;
  }

  objc_msgSend_removeLightNode_(self, v8, a4, v9);
}

- (void)updateEffectNode:(id)a3 withSourceNode:(__CFXNode *)a4
{
  if (sub_1AF1BC054(a4))
  {
    if (sub_1AF1B7348(a4) & 1) != 0 || (v11 = sub_1AF1B9B04(a4), v58 = v11[1], v59 = *v11, v56 = v11[3], v57 = v11[2], (objc_msgSend__proximityHidden_(self, v12, v13, v14)) || (isPartOfSelection = objc_msgSend__isPartOfSelection_(self, v9, a4, v10), !objc_msgSend_hasDebugOption_(self, v16, 2048, v17)))
    {
      v55 = 1;
    }

    else
    {
      objc_msgSend_setTransform_(a3, v9, v18, v10, v59.n128_f64[0], v58.n128_f64[0], v57.n128_f64[0], v56.n128_f64[0]);
      v22 = objc_msgSend__engineContext(self->_renderer, v19, v20, v21);
      LODWORD(v23) = 25.0;
      sub_1AF27F708(v22, v23, v59, v58, v57, v56);
      v60 = v24;
      v28 = objc_msgSend_childNodes(a3, v25, v26, v27);
      v31 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, 0, v30);
      isHidden = objc_msgSend_isHidden(v31, v32, v33, v34);
      v39 = 256;
      if (isHidden)
      {
        v39 = 288;
      }

      if (isPartOfSelection)
      {
        v39 = 272;
      }

      v40 = *(&self->super.isa + v39);
      v41 = objc_msgSend_model(v31, v36, v37, v38);
      Material = objc_msgSend_firstMaterial(v41, v42, v43, v44);
      v49 = objc_msgSend_diffuse(Material, v46, v47, v48);
      objc_msgSend_setColor_(v49, v50, v40, v51);
      objc_msgSend_setScale_(v31, v52, v53, v54, *vdupq_lane_s32(v60, 0).i64);
      v55 = 0;
    }

    objc_msgSend_setHidden_(a3, v9, v55, v10);
  }

  else
  {

    objc_msgSend_removeEffectNode_(self, v7, a4, v8);
  }
}

- (void)updateCameraNode:(id)a3 withSourceNode:(__CFXNode *)a4
{
  v7 = sub_1AF1BB260(a4);
  if (v7)
  {
    v10 = v7;
    v11 = sub_1AF1BA900(a4);
    v15 = objc_msgSend_pointOfView(self->_renderer, v12, v13, v14);
    v19 = objc_msgSend_nodeRef(v15, v16, v17, v18);
    v22 = 1;
    if ((v11 & 1) == 0 && v19 != a4)
    {
      isPartOfSelection = objc_msgSend__isPartOfSelection_(self, v20, a4, v21);
      if (isPartOfSelection & 1) == 0 && !objc_msgSend_hasDebugOption_(self, v23, 1024, v24) || (v28 = sub_1AF1B9B04(a4), v171 = v28[1], v173 = *v28, __x = v28[3], v169 = v28[2], v32 = objc_msgSend__proximityHidden_(self, v29, v30, v31), objc_msgSend_setTransform_(a3, v33, v34, v35, v173.n128_f64[0], v171.n128_f64[0], v169.n128_f64[0], __x.n128_f64[0]), (v32))
      {
        objc_msgSend_setHidden_(a3, v26, 1, v27);
        return;
      }

      v37 = objc_msgSend__engineContext(self->_renderer, v26, v36, v27);
      LODWORD(v38) = 25.0;
      sub_1AF27F708(v37, v38, v173, v171, v169, __x);
      v174.n128_u64[0] = v39;
      objc_msgSend_setScale_(a3, v40, v41, v42, *vdupq_lane_s32(v39, 0).i64);
      v43 = sub_1AF15D724(v10);
      v44 = sub_1AF15D6DC(v10);
      v45 = sub_1AF15D9E8(v10);
      v46 = sub_1AF15D5F0(v10);
      v50 = objc_msgSend_childNodes(a3, v47, v48, v49);
      v56 = objc_msgSend_objectAtIndexedSubscript_(v50, v51, 0, v52);
      if (v46)
      {
        v57 = objc_msgSend_cameraOrthographicFrustumModel(self, v53, v54, v55);
        objc_msgSend_setModel_(v56, v58, v57, v59);
        *&v60 = sub_1AF15D5A8(v10) / v174.n128_f32[0];
        HIDWORD(v60) = LODWORD(v60);
        objc_msgSend_setScale_(v56, v61, v62, v63, v60, __x.n128_u64[0]);
      }

      else
      {
        v68 = objc_msgSend_cameraFrustumModel(self, v53, v54, v55);
        objc_msgSend_setModel_(v56, v69, v68, v70);
        v176 = 0;
        v74 = objc_msgSend__engineContext(self->_renderer, v71, v72, v73);
        v75 = sub_1AF130548(v74);
        __asm { FMOV            V1.2S, #1.0 }

        v75.n128_u64[0] = vmaxnm_f32(*&vextq_s8(v75, v75, 8uLL), _D1);
        sub_1AF15DDD0(v10, &v176 + 1, &v176, vdiv_f32(v75.n128_u64[0], vdup_lane_s32(v75.n128_u64[0], 1)).f32[0]);
        v67.i32[1] = v174.n128_i32[1];
        if (v174.n128_f32[0] != 0.0)
        {
          __asm { FMOV            V1.2D, #0.5 }

          __xa = vmulq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_f32(__PAIR64__(v176, HIDWORD(v176))), _Q1), vdupq_n_s64(0x4066800000000000uLL)), vdupq_n_s64(0x400921FB54442D18uLL));
          v170 = tan(__xa.f64[1]);
          v81.f64[0] = tan(__xa.f64[0]);
          v81.f64[1] = v170;
          objc_msgSend_setScale_(v56, v82, v83, v84, COERCE_DOUBLE(vdiv_f32(vcvt_f32_f64(vmulq_n_f64(v81, v44)), vdup_lane_s32(v174.n128_u64[0], 0))), *&__xa.f64[0]);
        }
      }

      *v67.i32 = v43 / v44;
      v172 = v67;
      *v67.i32 = v45 / v44;
      v175 = v67;
      v85 = objc_msgSend_childNodes(v56, v64, v65, v66);
      v88 = objc_msgSend_objectAtIndexedSubscript_(v85, v86, 0, v87);
      objc_msgSend_setScale_(v88, v89, v90, v91, *vdupq_lane_s32(v172, 0).i64);
      v95 = objc_msgSend_childNodes(v56, v92, v93, v94);
      v98 = objc_msgSend_objectAtIndexedSubscript_(v95, v96, 1, v97);
      objc_msgSend_setScale_(v98, v99, v100, v101, *vdupq_lane_s32(v175, 0).i64);
      objc_msgSend_setHidden_(v56, v102, isPartOfSelection ^ 1u, v103);
      grayMedium = self->_grayMedium;
      v108 = objc_msgSend_model(a3, v105, v106, v107);
      Material = objc_msgSend_firstMaterial(v108, v109, v110, v111);
      v116 = objc_msgSend_diffuse(Material, v113, v114, v115);
      objc_msgSend_setColor_(v116, v117, grayMedium, v118);
      _ZF = isPartOfSelection == 0;
      if (isPartOfSelection)
      {
        v123 = 272;
      }

      else
      {
        v123 = 216;
      }

      v124 = *(&self->super.isa + v123);
      if (_ZF)
      {
        v125 = 216;
      }

      else
      {
        v125 = 248;
      }

      v126 = objc_msgSend_model(v56, v119, v120, v121);
      v130 = objc_msgSend_firstMaterial(v126, v127, v128, v129);
      v134 = objc_msgSend_diffuse(v130, v131, v132, v133);
      objc_msgSend_setColor_(v134, v135, v124, v136);
      v137 = *(&self->super.isa + v123);
      v141 = objc_msgSend_model(v88, v138, v139, v140);
      v145 = objc_msgSend_firstMaterial(v141, v142, v143, v144);
      v149 = objc_msgSend_diffuse(v145, v146, v147, v148);
      objc_msgSend_setColor_(v149, v150, v137, v151);
      v152 = *(&self->super.isa + v125);
      v156 = objc_msgSend_model(v98, v153, v154, v155);
      v160 = objc_msgSend_firstMaterial(v156, v157, v158, v159);
      v164 = objc_msgSend_diffuse(v160, v161, v162, v163);
      objc_msgSend_setColor_(v164, v165, v152, v166);
      v22 = 0;
    }

    objc_msgSend_setHidden_(a3, v20, v22, v21);
  }

  else
  {

    objc_msgSend_removeCameraNode_(self, v8, a4, v9);
  }
}

- (void)updateFieldNode:(id)a3 withSourceNode:(__CFXNode *)a4
{
  if (sub_1AF1BBE9C(a4))
  {
    if (sub_1AF1B7348(a4))
    {
      goto LABEL_4;
    }

    v11 = sub_1AF1B9B04(a4);
    v35 = v11[1];
    v36 = *v11;
    v33 = v11[3];
    v34 = v11[2];
    if (objc_msgSend__proximityHidden_(self, v12, v13, v14))
    {
      goto LABEL_4;
    }

    if (objc_msgSend__isPartOfSelection_(self, v9, a4, v10))
    {
      v17 = 272;
    }

    else
    {
      if (!objc_msgSend_hasDebugOption_(self, v9, 16, v10))
      {
LABEL_4:
        v15 = 1;
LABEL_5:

        objc_msgSend_setHidden_(a3, v9, v15, v10);
        return;
      }

      v17 = 216;
    }

    objc_msgSend_setTransform_(a3, v9, v16, v10, *&v36, *&v35, *&v34, *&v33);
    v18 = *(&self->super.isa + v17);
    v22 = objc_msgSend_model(a3, v19, v20, v21);
    Material = objc_msgSend_firstMaterial(v22, v23, v24, v25);
    v30 = objc_msgSend_diffuse(Material, v27, v28, v29);
    objc_msgSend_setColor_(v30, v31, v18, v32);
    v15 = 0;
    goto LABEL_5;
  }

  objc_msgSend_removeForceFieldNode_(self, v7, a4, v8);
}

- (void)updateWithRenderer:(id)a3
{
  objc_sync_enter(self);
  self->_renderer = a3;
  v8 = objc_msgSend__engineContext(a3, v5, v6, v7);
  v9 = sub_1AF12E2AC(v8);
  if (v9 && objc_msgSend_showsAuthoringEnvironment(v9, v10, v11, v12))
  {
    CFDictionaryApplyFunction(self->_lightsDictionary, sub_1AF107E7C, self);
    CFDictionaryApplyFunction(self->_camerasDictionary, sub_1AF107E8C, self);
    CFDictionaryApplyFunction(self->_effectsDictionary, sub_1AF107E9C, self);
    CFDictionaryApplyFunction(self->_forceFieldsDictionary, sub_1AF107EAC, self);
    eyeSightDictionary = self->_eyeSightDictionary;
    if (eyeSightDictionary)
    {
      CFDictionaryApplyFunction(eyeSightDictionary, sub_1AF107EBC, self);
    }

    v17 = objc_msgSend_privateRendererOwner(a3, v13, v14, v15);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = objc_msgSend_defaultCameraController(v17, v18, v19, v20);
      objc_msgSend_target(v21, v22, v23, v24);
      objc_msgSend_setPosition_(self->_cameraTarget, v25, v26, v27);
    }

    v28 = 1;
    objc_msgSend_setHidden_(self->_cameraTarget, v18, 1, v20);
  }

  else
  {
    v28 = 0;
  }

  hasDebugOption = objc_msgSend_hasDebugOption_(self, v10, 0x80000, v12);
  manipulator = self->_manipulator;
  if (hasDebugOption)
  {
    if (objc_msgSend_isDragging(manipulator, v29, v30, v31))
    {
      objc_msgSend_updateTargetsTransforms(self->_manipulator, v34, v35, v36);
    }

    objc_msgSend_updateManipulatorPosition_(self->_manipulator, v34, v8, v36);
    v40 = objc_msgSend_privateRendererOwner(a3, v37, v38, v39);
    v44 = v40;
    if (v40 && objc_msgSend_pointOfView(v40, v41, v42, v43))
    {
      v71 = 0;
      v72 = &v71;
      v73 = 0x2020000000;
      v46 = objc_msgSend_targets(self->_manipulator, v41, v45, v43);
      v74 = objc_msgSend_count(v46, v47, v48, v49) == 0;
      v53 = objc_msgSend_targets(self->_manipulator, v50, v51, v52);
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = sub_1AF107EFC;
      v70[3] = &unk_1E7A797A8;
      v70[4] = v44;
      v70[5] = &v71;
      objc_msgSend_enumerateObjectsUsingBlock_(v53, v54, v70, v55);
      v56 = *(v72 + 24);
      v60 = objc_msgSend_manipulatorNode(self->_manipulator, v57, v58, v59);
      objc_msgSend_setHidden_(v60, v61, v56, v62);
      _Block_object_dispose(&v71, 8);
    }

    else
    {
      objc_msgSend_setHidden_(self->_manipulator, v41, 1, v43);
    }
  }

  else
  {
    objc_msgSend_setHidden_(manipulator, v29, 1, v31);
  }

  if (v28 == objc_msgSend_isHidden(self->_layerRoot, v63, v64, v65))
  {
    objc_msgSend_setHidden_(self->_layerRoot, v66, v28 ^ 1u, v67);
    objc_msgSend_setHidden_(self->_overlayLayerRoot, v68, v28 ^ 1u, v69);
  }

  self->_renderer = 0;
  objc_sync_exit(self);
}

- (void)didSetPointOfView:(id)a3
{
  v6 = objc_msgSend_authoringCameraType(a3, a2, a3, v3);
  isAuthoring = objc_msgSend_isAuthoring(a3, v7, v8, v9);
  v14 = 3217625051;
  v15 = &xmmword_1AFE20400;
  v16 = &xmmword_1AFE20420;
  if (!isAuthoring || v6 < 3)
  {
LABEL_7:
    objc_msgSend_setEulerAngles_(self->_grid, v11, v12, v13, *&v14);
    goto LABEL_8;
  }

  if (v6 - 5 >= 2)
  {
    if (v6 - 3 > 1)
    {
      return;
    }

    v14 = 0xBFC90FDB00000000;
    v15 = &xmmword_1AFE20420;
    v16 = &xmmword_1AFE20410;
    goto LABEL_7;
  }

  v16 = &xmmword_1AFE20410;
  objc_msgSend_setEulerAngles_(self->_grid, v11, v12, v13, 0.0);
LABEL_8:
  v20 = objc_msgSend_model(self->_grid, v17, v18, v19);
  Material = objc_msgSend_firstMaterial(v20, v21, v22, v23);
  v28 = objc_msgSend_valueWithVFXFloat4_(MEMORY[0x1E696B098], v25, v26, v27, *v16);
  objc_msgSend_setValue_forKey_(Material, v29, v28, @"colorU");
  v33 = objc_msgSend_model(self->_grid, v30, v31, v32);
  v37 = objc_msgSend_firstMaterial(v33, v34, v35, v36);
  v42 = objc_msgSend_valueWithVFXFloat4_(MEMORY[0x1E696B098], v38, v39, v40, *v15);

  objc_msgSend_setValue_forKey_(v37, v41, v42, @"colorV");
}

- (void)setAuthoringCamera:(int64_t)a3 forView:(id)a4
{
  v84[1] = *MEMORY[0x1E69E9840];
  if (objc_msgSend_world(a4, a2, a3, a4))
  {
    v10 = objc_msgSend_defaultCameraController(a4, v7, v8, v9);
    objc_msgSend_simdTarget(v10, v11, v12, v13);
    v83 = v14;
    v18 = objc_msgSend_childNodes(self->_pointsOfViewRoot, v15, v16, v17);
    v21 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, a3, v20);
    v25 = objc_msgSend_world(a4, v22, v23, v24);
    v84[0] = objc_msgSend_rootNode(v25, v26, v27, v28);
    v30 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v29, v84, 1);
    VFXNodeGetBoundingSphere(v30, 0x10000, v31, v32);
    v81 = v33;
    v34 = v33.f32[3];
    v38 = objc_msgSend_camera(v21, v35, v36, v37);
    objc_msgSend_zNear(v38, v39, v40, v41);
    v42 = vsubq_f32(v83, v81);
    v43 = vmulq_f32(v42, v42);
    v45.f32[0] = v44 + (v34 + sqrtf(v43.f32[2] + vaddv_f32(*v43.f32)));
    v82 = v45;
    objc_msgSend_localUp(VFXNode, v46, v47, v48);
    v79 = v49;
    objc_msgSend_localRight(VFXNode, v50, v51, v52);
    v80 = v53;
    objc_msgSend_localFront(VFXNode, v54, v55, v56);
    if (a3 > 3)
    {
      switch(a3)
      {
        case 4:
          objc_msgSend_setEulerAngles_(v21, v57, v58, v59, 0.195796371);
          break;
        case 5:
          v80 = v60;
          objc_msgSend_setEulerAngles_(v21, v57, v58, v59, 0.0);
          goto LABEL_17;
        case 6:
          v80 = v60;
          objc_msgSend_setEulerAngles_(v21, v57, v58, v59, -50.1238708);
          break;
        default:
LABEL_19:
          objc_msgSend_setPointOfView_(a4, v57, v21, v59);
          v76 = objc_msgSend_defaultCameraController(a4, v73, v74, v75);
          objc_msgSend_setPointOfView_(v76, v77, v21, v78);
          return;
      }

      v68 = v82.f32[0];
      v67 = v83;
      v69 = v80;
    }

    else
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          objc_msgSend_setEulerAngles_(v21, v57, v58, v59, COERCE_DOUBLE(1070141403));
          v71 = v82;
          v70 = v83;
          v72 = v79;
LABEL_18:
          objc_msgSend_setWorldPosition_(v21, v61, v62, v63, *vmlsq_lane_f32(v70, v72, v71, 0).i64);
          goto LABEL_19;
        }

        if (a3 == 3)
        {
          objc_msgSend_setEulerAngles_(v21, v57, v58, v59, -0.195796371);
LABEL_17:
          v71 = v82;
          v70 = v83;
          v72 = v80;
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      objc_msgSend_setEulerAngles_(v21, v57, v58, v59, COERCE_DOUBLE(3217625051));
      v68 = v82.f32[0];
      v67 = v83;
      v69 = v79;
    }

    objc_msgSend_setWorldPosition_(v21, v64, v65, v66, *vmlaq_n_f32(v67, v69, v68).i64);
    goto LABEL_19;
  }
}

- (id)authoringCamera:(int64_t)a3
{
  v5 = objc_msgSend_childNodes(self->_pointsOfViewRoot, a2, a3, v3);

  return objc_msgSend_objectAtIndexedSubscript_(v5, v6, a3, v7);
}

@end