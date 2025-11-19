@interface VFXManipulator
- (BOOL)_applyWithEvent:(id *)a3;
- (BOOL)hidden;
- (BOOL)mouseDown:(id *)a3;
- (BOOL)mouseDragged:(id *)a3;
- (BOOL)mouseMoved:(id *)a3;
- (BOOL)mouseUp:(id *)a3;
- (VFXManipulator)init;
- (VFXNode)manipulatorNode;
- (VFXNode)target;
- (const)snapInfoAtIndex:(unint64_t)a3 axis:(unint64_t)a4;
- (float32x4_t)_snapPositionToAlign:(uint64_t)a3 original:(_BYTE *)a4 unit:(uint64_t *)a5 axisMove:(float32x4_t)a6 rayStart:(float32x4_t)a7 rayDir:(float)a8 didSnap:(__n128)a9 snapIndexes:(__n128)a10;
- (id)copy;
- (id)hitTest:(id *)a3;
- (id)setupClones;
- (id)snapGuideIndexesOnAxis:(unint64_t)a3;
- (id)world;
- (int64_t)effectiveEditingSpace;
- (unint64_t)_effectiveFeatures;
- (void)_deleteOriginalData;
- (void)_prepareSnapToAlignData:(VFXManipulator *)self minOffset:(SEL)a2 maxOffset:(unsigned __int16)a3;
- (void)_saveOriginalData;
- (void)_updateActionWithEvent:(id *)a3;
- (void)_updateRuntimeItems;
- (void)addClonesToWorld;
- (void)clearRuntimeItems;
- (void)clearSnapIndexes;
- (void)dealloc;
- (void)prepareSnapToAlignData;
- (void)prepareSnapToAlignDataIfNeeded;
- (void)removeClonesFromWorld;
- (void)setTarget:(id)a3;
- (void)setTargets:(id)a3;
- (void)setupNode;
- (void)updateItemsPosition;
- (void)updateItemsRotation:(VFXManipulator *)self;
- (void)updateItemsScale:(float)a3 axis:(unsigned __int16)a4;
- (void)updateManipulatorComponents;
- (void)updateManipulatorNode;
- (void)updateManipulatorPosition:(__CFXEngineContext *)a3;
- (void)updateTargetsTransforms;
- (void)validateClones;
@end

@implementation VFXManipulator

- (void)setTargets:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_authoringEnvironment(self, a2, a3, v3);
  objc_sync_enter(v6);
  v7 = self->_targets;
  self->_targets = 0;
  if (a3)
  {
    v11 = MEMORY[0x1E695DFA0];
    v12 = objc_msgSend_count(a3, v8, v9, v10);
    v15 = objc_msgSend_orderedSetWithCapacity_(v11, v13, v12, v14);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v16, &v37, v41, 16);
    if (v20)
    {
      v21 = *v38;
      do
      {
        v22 = 0;
        do
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(a3);
          }

          v23 = *(*(&v37 + 1) + 8 * v22);
          v24 = objc_msgSend_node(v23, v17, v18, v19);
          if ((objc_msgSend_editorLocked(v24, v25, v26, v27) & 1) == 0)
          {
            if (!objc_msgSend_component(v23, v17, v18, v19))
            {
              for (i = objc_msgSend_parentItem(v23, v28, v29, v30); ; i = objc_msgSend_parentItem(v32, v17, v18, v19))
              {
                v32 = i;
                if (!i)
                {
                  break;
                }

                if (objc_msgSend_containsObject_(a3, v28, i, v30))
                {
                  goto LABEL_10;
                }
              }
            }

            objc_msgSend_addObject_(v15, v28, v23, v30);
          }

LABEL_10:
          ++v22;
        }

        while (v22 != v20);
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v17, &v37, v41, 16);
        v20 = v33;
      }

      while (v33);
    }

    self->_targets = v15;
  }

  objc_sync_exit(v6);
  objc_msgSend_updateManipulatorNode(self, v34, v35, v36);
}

- (VFXNode)target
{
  v5 = objc_msgSend_authoringEnvironment(self, a2, v2, v3);
  objc_sync_enter(v5);
  if (objc_msgSend_count(self->_targets, v6, v7, v8))
  {
    Object = objc_msgSend_firstObject(self->_targets, v9, v10, v11);
  }

  else
  {
    Object = 0;
  }

  objc_sync_exit(v5);
  return Object;
}

- (void)setTarget:(id)a3
{
  if (a3)
  {
    a3 = objc_msgSend_orderedSetWithObject_(MEMORY[0x1E695DFB8], a2, a3, v3);
  }

  objc_msgSend_setTargets_(self, a2, a3, v3);
}

- (VFXManipulator)init
{
  v13.receiver = self;
  v13.super_class = VFXManipulator;
  v2 = [(VFXManipulator *)&v13 init];
  if (v2)
  {
    v2->_presentationItemsLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    *v2->_anon_20 = xmmword_1AFE20620;
    *&v2->_anon_20[16] = xmmword_1AFE20160;
    *&v2->_anon_20[32] = xmmword_1AFE20630;
    *&v2->_anon_20[48] = xmmword_1AFE201A0;
    *v2->_anon_60 = xmmword_1AFE20150;
    *&v2->_anon_60[16] = xmmword_1AFE208E0;
    *&v2->_anon_60[32] = xmmword_1AFE208F0;
    *&v2->_anon_60[48] = xmmword_1AFE201A0;
    *v2->_anon_a0 = xmmword_1AFE20900;
    *&v2->_anon_a0[16] = xmmword_1AFE20160;
    *&v2->_anon_a0[32] = xmmword_1AFE20910;
    *&v2->_anon_a0[48] = xmmword_1AFE201A0;
    *v2->_anon_e0 = xmmword_1AFE20150;
    *&v2->_anon_e0[16] = xmmword_1AFE20920;
    *&v2->_anon_e0[32] = xmmword_1AFE20930;
    *&v2->_anon_e0[48] = xmmword_1AFE201A0;
    v2->_xAlignment = 0;
    v2->_zAlignment = 0;
    v2->_yAlignment = 0;
    v2->_snapXIndexes = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v3, v4, v5);
    v2->_snapYIndexes = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v6, v7, v8);
    v2->_snapZIndexes = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v9, v10, v11);
    v2->_snapLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->_features = 3;
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend__deleteOriginalData(self, v3, v4, v5);

  free(self->_snapToAlignOnX);
  free(self->_snapToAlignOnY);
  free(self->_snapToAlignOnZ);
  objc_msgSend_removeFromParentNode(self->_node, v6, v7, v8);

  v9.receiver = self;
  v9.super_class = VFXManipulator;
  [(VFXManipulator *)&v9 dealloc];
}

- (id)copy
{
  v3 = objc_alloc_init(VFXManipulator);
  v7 = objc_msgSend_target(self, v4, v5, v6);
  objc_msgSend_setTarget_(v3, v8, v7, v9);
  return v3;
}

- (int64_t)effectiveEditingSpace
{
  v5 = objc_msgSend_authoringEnvironment(self, a2, v2, v3);
  if (objc_msgSend_editingSpace(v5, v6, v7, v8) <= 1 && objc_msgSend_count(self->_targets, v9, v10, v11) > 1)
  {
    return 2;
  }

  v13 = objc_msgSend_authoringEnvironment(self, v9, v10, v11);

  return objc_msgSend_editingSpace(v13, v14, v15, v16);
}

- (VFXNode)manipulatorNode
{
  result = self->_node;
  if (!result)
  {
    objc_msgSend_setupNode(self, a2, v2, v3);
    return self->_node;
  }

  return result;
}

- (BOOL)hidden
{
  node = self->_node;
  if (node)
  {
    return objc_msgSend_isHidden(node, a2, v2, v3);
  }

  else
  {
    return 1;
  }
}

- (void)setupNode
{
  v531 = objc_msgSend_immediateMode(VFXTransaction, a2, v2, v3);
  objc_msgSend_setImmediateMode_(VFXTransaction, v5, 1, v6);
  self->_node = objc_msgSend_node(VFXNode, v7, v8, v9);
  v12 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v10, &xmmword_1AFE20400, v11);
  v16 = sub_1AF10BB48(v12, v13, v14, v15);
  v19 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v17, &xmmword_1AFE20410, v18);
  v23 = sub_1AF10BB48(v19, v20, v21, v22);
  v26 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v24, &xmmword_1AFE20420, v25);
  v30 = sub_1AF10BB48(v26, v27, v28, v29);
  self->_zArrow = v30;
  objc_msgSend_setEulerAngles_(v16, v31, v32, v33);
  objc_msgSend_setEulerAngles_(v30, v34, v35, v36);
  objc_msgSend_setCategoryBitMask_(v16, v37, 273, v38);
  objc_msgSend_setCategoryBitMask_(v23, v39, 289, v40);
  objc_msgSend_setCategoryBitMask_(v30, v41, 305, v42);
  v45 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v43, &xmmword_1AFE20400, v44);
  v49 = sub_1AF10BD04(v45, v46, v47, v48);
  v52 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v50, &xmmword_1AFE20410, v51);
  v56 = sub_1AF10BD04(v52, v53, v54, v55);
  v59 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v57, &xmmword_1AFE20420, v58);
  v63 = sub_1AF10BD04(v59, v60, v61, v62);
  objc_msgSend_setEulerAngles_(v49, v64, v65, v66, 0.0);
  objc_msgSend_setEulerAngles_(v63, v67, v68, v69, COERCE_DOUBLE(1070141403));
  v73 = objc_msgSend_node(VFXNode, v70, v71, v72);
  self->_axis = v73;
  objc_msgSend_addChildNode_(v73, v74, v49, v75);
  objc_msgSend_addChildNode_(self->_axis, v76, v56, v77);
  objc_msgSend_addChildNode_(self->_axis, v78, v63, v79);
  objc_msgSend_setHidden_(self->_axis, v80, 1, v81);
  objc_msgSend_addChildNode_(self->_node, v82, self->_axis, v83);
  v87 = objc_msgSend_node(VFXNode, v84, v85, v86);
  objc_msgSend_addChildNode_(v87, v88, v16, v89);
  objc_msgSend_addChildNode_(v87, v90, v23, v91);
  objc_msgSend_addChildNode_(v87, v92, v30, v93);
  self->_translateHandles = v87;
  objc_msgSend_addChildNode_(self->_node, v94, v87, v95);
  v98 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v96, &xmmword_1AFE20420, v97);
  self->_planarTranslationHandleXY = sub_1AF10BE14(v98, v99, v100, v101, v102, v103);
  v106 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v104, &xmmword_1AFE20400, v105);
  self->_planarTranslationHandleYZ = sub_1AF10BE14(v106, v107, v108, v109, v110, v111);
  v114 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v112, &xmmword_1AFE20410, v113);
  self->_planarTranslationHandleXZ = sub_1AF10BE14(v114, v115, v116, v117, v118, v119);
  objc_msgSend_setEulerAngles_(self->_planarTranslationHandleYZ, v120, v121, v122, -0.195796371);
  objc_msgSend_setEulerAngles_(self->_planarTranslationHandleXZ, v123, v124, v125, COERCE_DOUBLE(1070141403));
  objc_msgSend_setCategoryBitMask_(self->_planarTranslationHandleXY, v126, 561, v127);
  objc_msgSend_setCategoryBitMask_(self->_planarTranslationHandleYZ, v128, 529, v129);
  objc_msgSend_setCategoryBitMask_(self->_planarTranslationHandleXZ, v130, 545, v131);
  v135 = objc_msgSend_node(VFXNode, v132, v133, v134);
  self->_planarTranslationHandles = v135;
  objc_msgSend_addChildNode_(v135, v136, self->_planarTranslationHandleXY, v137);
  objc_msgSend_addChildNode_(self->_planarTranslationHandles, v138, self->_planarTranslationHandleYZ, v139);
  objc_msgSend_addChildNode_(self->_planarTranslationHandles, v140, self->_planarTranslationHandleXZ, v141);
  objc_msgSend_addChildNode_(self->_node, v142, self->_planarTranslationHandles, v143);
  v146 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v144, &xmmword_1AFE20420, v145);
  self->_arcHandleXY = sub_1AF10BF20(v146, v147, v148, v149);
  v152 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v150, &xmmword_1AFE20400, v151);
  self->_arcHandleYZ = sub_1AF10BF20(v152, v153, v154, v155);
  v158 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v156, &xmmword_1AFE20410, v157);
  self->_arcHandleXZ = sub_1AF10BF20(v158, v159, v160, v161);
  objc_msgSend_setEulerAngles_(self->_arcHandleXY, v162, v163, v164, COERCE_DOUBLE(3217625051));
  objc_msgSend_setEulerAngles_(self->_arcHandleYZ, v165, v166, v167, COERCE_DOUBLE(1078530011));
  objc_msgSend_setEulerAngles_(self->_arcHandleXZ, v168, v169, v170, 50.1238708);
  v174 = objc_msgSend_childNodes(self->_arcHandleXY, v171, v172, v173);
  v177 = objc_msgSend_objectAtIndexedSubscript_(v174, v175, 0, v176);
  objc_msgSend_setCategoryBitMask_(v177, v178, 561, v179);
  v183 = objc_msgSend_childNodes(self->_arcHandleYZ, v180, v181, v182);
  v186 = objc_msgSend_objectAtIndexedSubscript_(v183, v184, 0, v185);
  objc_msgSend_setCategoryBitMask_(v186, v187, 529, v188);
  v192 = objc_msgSend_childNodes(self->_arcHandleXZ, v189, v190, v191);
  v195 = objc_msgSend_objectAtIndexedSubscript_(v192, v193, 0, v194);
  objc_msgSend_setCategoryBitMask_(v195, v196, 545, v197);
  v201 = objc_msgSend_childNodes(self->_arcHandleXY, v198, v199, v200);
  v204 = objc_msgSend_objectAtIndexedSubscript_(v201, v202, 1, v203);
  objc_msgSend_setCategoryBitMask_(v204, v205, 817, v206);
  v210 = objc_msgSend_childNodes(self->_arcHandleYZ, v207, v208, v209);
  v213 = objc_msgSend_objectAtIndexedSubscript_(v210, v211, 1, v212);
  objc_msgSend_setCategoryBitMask_(v213, v214, 785, v215);
  v219 = objc_msgSend_childNodes(self->_arcHandleXZ, v216, v217, v218);
  v222 = objc_msgSend_objectAtIndexedSubscript_(v219, v220, 1, v221);
  objc_msgSend_setCategoryBitMask_(v222, v223, 801, v224);
  v228 = objc_msgSend_node(VFXNode, v225, v226, v227);
  self->_arcHandles = v228;
  objc_msgSend_addChildNode_(v228, v229, self->_arcHandleXY, v230);
  objc_msgSend_addChildNode_(self->_arcHandles, v231, self->_arcHandleYZ, v232);
  objc_msgSend_addChildNode_(self->_arcHandles, v233, self->_arcHandleXZ, v234);
  objc_msgSend_addChildNode_(self->_node, v235, self->_arcHandles, v236);
  v240 = objc_msgSend_node(VFXNode, v237, v238, v239);
  v243 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v241, &xmmword_1AFE20400, v242);
  LODWORD(v244) = 1.0;
  v249 = sub_1AF10C05C(v243, v245, v246, v247, v244, v248);
  v252 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v250, &xmmword_1AFE20410, v251);
  LODWORD(v253) = 1.0;
  v258 = sub_1AF10C05C(v252, v254, v255, v256, v253, v257);
  v261 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v259, &xmmword_1AFE20420, v260);
  LODWORD(v262) = 1.0;
  v267 = sub_1AF10C05C(v261, v263, v264, v265, v262, v266);
  v270 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v268, &unk_1AFE204A0, v269);
  LODWORD(v271) = 1065520988;
  v276 = sub_1AF10C05C(v270, v272, v273, v274, v271, v275);
  objc_msgSend_setRenderingOrder_(v249, v277, 2, v278);
  objc_msgSend_setRenderingOrder_(v258, v279, 2, v280);
  objc_msgSend_setRenderingOrder_(v267, v281, 2, v282);
  objc_msgSend_setRenderingOrder_(v276, v283, 0, v284);
  objc_msgSend_setEulerAngles_(v249, v285, v286, v287, 0.0);
  objc_msgSend_setEulerAngles_(v267, v288, v289, v290, COERCE_DOUBLE(1070141403));
  objc_msgSend_setEulerAngles_(v276, v291, v292, v293, COERCE_DOUBLE(1070141403));
  objc_msgSend_setCategoryBitMask_(v249, v294, 785, v295);
  objc_msgSend_setCategoryBitMask_(v258, v296, 801, v297);
  objc_msgSend_setCategoryBitMask_(v267, v298, 817, v299);
  objc_msgSend_setCategoryBitMask_(v276, v300, 769, v301);
  v305 = objc_msgSend_node(VFXNode, v302, v303, v304);
  objc_msgSend_addChildNode_(v305, v306, v276, v307);
  v311 = objc_msgSend_billboardConstraint(VFXBillboardConstraint, v308, v309, v310);
  self->_billboard = v311;
  objc_msgSend_setPreserveScale_(v311, v312, 1, v313);
  self->_screenSpaceRotation = v305;
  v317 = objc_msgSend_node(VFXNode, v314, v315, v316);
  self->_rotationHandles = v317;
  objc_msgSend_addChildNode_(v317, v318, v249, v319);
  objc_msgSend_addChildNode_(self->_rotationHandles, v320, v258, v321);
  objc_msgSend_addChildNode_(self->_rotationHandles, v322, v267, v323);
  objc_msgSend_addChildNode_(v240, v324, self->_rotationHandles, v325);
  objc_msgSend_addChildNode_(v240, v326, v305, v327);
  objc_msgSend_addChildNode_(self->_node, v328, v240, v329);
  LODWORD(v330) = 1065185444;
  v334 = objc_msgSend_sphereWithRadius_(VFXParametricModel, v331, v332, v333, v330);
  objc_msgSend_setGeodesic_(v334, v335, 1, v336);
  objc_msgSend_setSegmentCount_(v334, v337, 24, v338);
  Material = objc_msgSend_firstMaterial(v334, v339, v340, v341);
  objc_msgSend_setShadingModel_(Material, v343, 2, v344);
  v348 = objc_msgSend_firstMaterial(v334, v345, v346, v347);
  objc_msgSend_setColorBufferWriteMask_(v348, v349, 0, v350);
  v353 = objc_msgSend_nodeWithModel_(VFXNode, v351, v334, v352);
  LODWORD(v354) = 1008981770;
  objc_msgSend_setOpacity_(v353, v355, v356, v357, v354);
  objc_msgSend_setRenderingOrder_(v353, v358, 1, v359);
  self->_occluder = v353;
  objc_msgSend_addChildNode_(self->_node, v360, v353, v361);
  LODWORD(v362) = 1050253722;
  LODWORD(v363) = 1050253722;
  LODWORD(v364) = 1050253722;
  v368 = objc_msgSend_cubeWithWidth_height_length_chamferRadius_(VFXParametricModel, v365, v366, v367, v362, v363, v364, 0.0);
  v371 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v369, &xmmword_1AFE20440, v370);
  v375 = objc_msgSend_firstMaterial(v368, v372, v373, v374);
  v379 = objc_msgSend_diffuse(v375, v376, v377, v378);
  objc_msgSend_setContents_(v379, v380, v371, v381);
  v385 = objc_msgSend_firstMaterial(v368, v382, v383, v384);
  objc_msgSend_setShadingModel_(v385, v386, 2, v387);
  v390 = objc_msgSend_nodeWithModel_(VFXNode, v388, v368, v389);
  self->_scaleNode = v390;
  objc_msgSend_setCategoryBitMask_(v390, v391, 1025, v392);
  v396 = objc_msgSend_copy(v368, v393, v394, v395);
  LODWORD(v397) = 1041865114;
  objc_msgSend_setLength_(v396, v398, v399, v400, v397);
  LODWORD(v401) = 1041865114;
  objc_msgSend_setHeight_(v396, v402, v403, v404, v401);
  LODWORD(v405) = 1041865114;
  objc_msgSend_setWidth_(v396, v406, v407, v408, v405);
  v412 = objc_msgSend_firstMaterial(v396, v409, v410, v411);
  v416 = objc_msgSend_copy(v412, v413, v414, v415);
  objc_msgSend_setFirstMaterial_(v396, v417, v416, v418);
  v421 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v419, &xmmword_1AFE20400, v420);
  v425 = objc_msgSend_firstMaterial(v396, v422, v423, v424);
  v429 = objc_msgSend_diffuse(v425, v426, v427, v428);
  objc_msgSend_setContents_(v429, v430, v421, v431);
  v434 = objc_msgSend_nodeWithModel_(VFXNode, v432, v396, v433);
  self->_scaleNodeX = v434;
  objc_msgSend_setPosition_(v434, v435, v436, v437, COERCE_DOUBLE(1066192077));
  objc_msgSend_setCategoryBitMask_(self->_scaleNodeX, v438, 1041, v439);
  v443 = objc_msgSend_copy(v396, v440, v441, v442);
  v447 = objc_msgSend_firstMaterial(v443, v444, v445, v446);
  v451 = objc_msgSend_copy(v447, v448, v449, v450);
  objc_msgSend_setFirstMaterial_(v443, v452, v451, v453);
  v456 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v454, &xmmword_1AFE20410, v455);
  v460 = objc_msgSend_firstMaterial(v443, v457, v458, v459);
  v464 = objc_msgSend_diffuse(v460, v461, v462, v463);
  objc_msgSend_setContents_(v464, v465, v456, v466);
  v469 = objc_msgSend_nodeWithModel_(VFXNode, v467, v443, v468);
  self->_scaleNodeY = v469;
  objc_msgSend_setPosition_(v469, v470, v471, v472, 0.0140625015);
  objc_msgSend_setCategoryBitMask_(self->_scaleNodeY, v473, 1057, v474);
  v478 = objc_msgSend_copy(v443, v475, v476, v477);
  v482 = objc_msgSend_firstMaterial(v478, v479, v480, v481);
  v486 = objc_msgSend_copy(v482, v483, v484, v485);
  objc_msgSend_setFirstMaterial_(v478, v487, v486, v488);
  v491 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v489, &xmmword_1AFE20420, v490);
  v495 = objc_msgSend_firstMaterial(v478, v492, v493, v494);
  v499 = objc_msgSend_diffuse(v495, v496, v497, v498);
  objc_msgSend_setContents_(v499, v500, v491, v501);
  v504 = objc_msgSend_nodeWithModel_(VFXNode, v502, v478, v503);
  self->_scaleNodeZ = v504;
  objc_msgSend_setPosition_(v504, v505, v506, v507, 0.0);
  objc_msgSend_setCategoryBitMask_(self->_scaleNodeZ, v508, 1073, v509);
  objc_msgSend_setHidden_(self->_scaleNode, v510, 1, v511);
  objc_msgSend_setHidden_(self->_scaleNodeX, v512, 1, v513);
  objc_msgSend_setHidden_(self->_scaleNodeY, v514, 1, v515);
  objc_msgSend_setHidden_(self->_scaleNodeZ, v516, 1, v517);
  objc_msgSend_addChildNode_(self->_node, v518, self->_scaleNode, v519);
  objc_msgSend_addChildNode_(self->_node, v520, self->_scaleNodeX, v521);
  objc_msgSend_addChildNode_(self->_node, v522, self->_scaleNodeY, v523);
  objc_msgSend_addChildNode_(self->_node, v524, self->_scaleNodeZ, v525);
  objc_msgSend_updateManipulatorComponents(self, v526, v527, v528);

  objc_msgSend_setImmediateMode_(VFXTransaction, v529, v531, v530);
}

- (void)updateManipulatorPosition:(__CFXEngineContext *)a3
{
  v6 = objc_msgSend_immediateMode(VFXTransaction, a2, a3, v3);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1, v8);
  sub_1AF10C564(self, v9, v10, v11);
  v13 = v12;
  *&self->_anon_1f0[4] = v12;
  *&self->_anon_1f0[20] = v14;
  *&self->_anon_1f0[36] = v15;
  *&self->_anon_1f0[52] = v16;
  v12.n128_u32[0] = 1128792064;
  sub_1AF27F708(a3, v12.n128_f64[0], v13, v14, v15, v16);
  *&v21 = v20;
  v22 = v20;
  node = self->_node;
  if (v22 <= 0.000001)
  {
    objc_msgSend_setOpacity_(node, v17, v18, v19, 0.0, 0.000001, v21);
  }

  else
  {
    planarTranslationLayout = self->_planarTranslationLayout;
    LODWORD(v22) = 1.0;
    v91 = *&v21;
    objc_msgSend_setOpacity_(node, v17, v18, v19, v22);
    objc_msgSend_setWorldTransform_(self->_node, v25, v26, v27, *vmulq_n_f32(*&self->_anon_1f0[4], v91).i64, *vmulq_n_f32(*&self->_anon_1f0[20], v91).i64, *vmulq_n_f32(*&self->_anon_1f0[36], v91).i64, *&self->_anon_1f0[52]);
    v31 = objc_msgSend_effectiveEditingSpace(self, v28, v29, v30);
    if (!self->_layoutLocked || v31 == 3)
    {
      if (v31 == 3)
      {
        __asm { FMOV            V0.4S, #1.0 }

        *self->_planarTranslationLayout = _Q0;
      }

      else
      {
        v35 = sub_1AF13050C(a3, 1);
        v39 = 0;
        v40 = *v35;
        v41 = v35[1];
        v42 = v35[2];
        v43 = v35[3];
        v44 = *&self->_anon_1f0[20];
        v45 = *&self->_anon_1f0[36];
        v46 = *&self->_anon_1f0[52];
        v94[0] = *&self->_anon_1f0[4];
        v94[1] = v44;
        v94[2] = v45;
        v94[3] = v46;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        do
        {
          *(&v95 + v39 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(v94[v39])), v41, *&v94[v39], 1), v42, v94[v39], 2), v43, v94[v39], 3);
          ++v39;
        }

        while (v39 != 4);
        v47 = v96;
        v48.i32[1] = 0;
        v48.i64[1] = 0;
        v49 = vmulq_f32(v97, 0);
        v50 = vaddq_f32(v96, v49);
        v53 = vaddq_f32(v95, vmlaq_f32(v49, 0, v96));
        v51 = vmlaq_f32(v50, 0, v95);
        v52 = vmlaq_f32(vmlaq_f32(v97, 0, v96), 0, v95);
        v53.i32[0] = 1.0;
        if (v53.f32[2] >= 0.0)
        {
          v48.f32[0] = 1.0;
        }

        else
        {
          v48.f32[0] = -1.0;
        }

        if (v51.f32[2] >= 0.0)
        {
          v47.f32[0] = 1.0;
        }

        else
        {
          v47.f32[0] = -1.0;
        }

        if (v52.f32[2] >= 0.0)
        {
          v52.f32[0] = 1.0;
        }

        else
        {
          v52.f32[0] = -1.0;
        }

        v89 = v48.f32[0];
        v92 = v52;
        v54 = v48;
        v54.i32[1] = v47.i32[0];
        v54.i32[2] = v52.i32[0];
        *self->_planarTranslationLayout = v54;
        v55 = vdupq_lane_s32(*&vceqq_f32(v47, v53), 0);
        objc_msgSend_setEulerAngles_(self->_arcHandleXY, v36, v37, v38, *vbslq_s8(vdupq_lane_s32(*&vceqq_f32(v48, v53), 0), vbslq_s8(v55, xmmword_1AFE20950, xmmword_1AFE20A00), vbslq_s8(v55, xmmword_1AFE209F0, xmmword_1AFE20590)).i64, vbslq_s8(v55, xmmword_1AFE20960, xmmword_1AFE20A20), vbslq_s8(v55, xmmword_1AFE20940, xmmword_1AFE20A10));
        v56.i32[0] = 1.0;
        objc_msgSend_setEulerAngles_(self->_arcHandleYZ, v57, v58, v59, *vbslq_s8(vdupq_lane_s32(*&vceqq_f32(v92, v56), 0), v87, v88).i64);
        arcHandleXZ = self->_arcHandleXZ;
        if (v89 == 1.0)
        {
          if (v92.f32[0] == 1.0)
          {
            objc_msgSend_setEulerAngles_(arcHandleXZ, v60, v61, v62, 50.1238708, *v92.i64);
          }

          else
          {
            objc_msgSend_setEulerAngles_(arcHandleXZ, v60, v61, v62, -0.195796371, *v92.i64);
          }
        }

        else if (v92.f32[0] == 1.0)
        {
          objc_msgSend_setEulerAngles_(arcHandleXZ, v60, v61, v62, 0.195796371, *v92.i64);
        }

        else
        {
          objc_msgSend_setEulerAngles_(arcHandleXZ, v60, v61, v62, 0.0, *v92.i64);
        }
      }
    }

    v93 = vdupq_n_s64(0x3FD3333333333333uLL);
    __asm { FMOV            V1.2D, #0.5 }

    v90 = _Q1;
    objc_msgSend_setPosition_(self->_planarTranslationHandleXY, v32, v33, v34, COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(*planarTranslationLayout), v93), _Q1))));
    LODWORD(v72) = 0;
    HIDWORD(v72) = vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(*&self->_planarTranslationLayout[4]), v93), v90)).u32[0];
    objc_msgSend_setPosition_(self->_planarTranslationHandleYZ, v73, v74, v75, v72);
    v76 = vmulq_f64(vmulq_f64(vcvtq_f64_f32(vzip1_s32(*planarTranslationLayout, *&vextq_s8(*planarTranslationLayout->f32, *planarTranslationLayout->f32, 8uLL))), v93), v90);
    *&v76.f64[0] = vcvt_f32_f64(v76);
    objc_msgSend_setPosition_(self->_planarTranslationHandleXZ, v77, v78, v79, COERCE_DOUBLE(vzip1q_s32(v76, v76).u32[0]));
    if (self->_screenSpaceRotation)
    {
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v81 = objc_msgSend___CFObject(self->_billboard, v64, v80, v65);
      v85 = objc_msgSend_nodeRef(self->_screenSpaceRotation, v82, v83, v84);
      if (sub_1AF150360(a3, v81, v85, &v95, 1.0))
      {
        objc_msgSend_setTransform_(self->_screenSpaceRotation, v64, v86, v65, *v95.i64, *v96.i64, *v97.i64, *&v98);
      }
    }
  }

  objc_msgSend_setImmediateMode_(VFXTransaction, v64, v6, v65);
}

- (void)updateManipulatorNode
{
  node = self->_node;
  if (!node)
  {
    objc_msgSend_setupNode(self, a2, v2, v3);
    node = self->_node;
  }

  if (!objc_msgSend_parentNode(node, a2, v2, v3))
  {
    v9 = objc_msgSend_authoringEnvironment(self, v6, v7, v8);
    v13 = objc_msgSend_authoringOverlayLayer(v9, v10, v11, v12);
    v18 = objc_msgSend_manipulatorNode(self, v14, v15, v16);

    objc_msgSend_addChildNode_(v13, v17, v18, v19);
  }
}

- (void)updateManipulatorComponents
{
  v5 = objc_msgSend__effectiveFeatures(self, a2, v2, v3);
  v11 = objc_msgSend_effectiveEditingSpace(self, v6, v7, v8);
  v12 = (v5 & 4) != 0 && !self->_readonly;
  v13 = !v12;
  objc_msgSend_setHidden_(self->_scaleNode, v9, !v12, v10);
  objc_msgSend_setHidden_(self->_scaleNodeX, v14, !v12, v15);
  objc_msgSend_setHidden_(self->_scaleNodeY, v16, !v12, v17);
  objc_msgSend_setHidden_(self->_scaleNodeZ, v18, !v12, v19);
  if ((v5 & 2) != 0)
  {
    v22 = !self->_readonly;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v22 = 0;
    if (v5)
    {
LABEL_6:
      v23 = !self->_readonly;
      goto LABEL_9;
    }
  }

  v23 = 0;
LABEL_9:
  v24 = v11 == 3;
  objc_msgSend_setHidden_(self->_rotationHandles, v20, v24 | !v22 | (v23 && v13), v21);
  objc_msgSend_setHidden_(self->_screenSpaceRotation, v25, !v22 || v23 && v13, v26);
  objc_msgSend_setHidden_(self->_translateHandles, v27, v13 && !v23, v28);
  objc_msgSend_setHidden_(self->_planarTranslationHandles, v29, v12 || !v23 || v22 || self->_readonly, v30);
  objc_msgSend_setHidden_(self->_arcHandles, v31, (v12 || self->_readonly) | (!v23 || !v22), v32);
  objc_msgSend_setHidden_(self->_axis, v33, !self->_readonly, v34);
  objc_msgSend_setHidden_(self->_zArrow, v35, v24, v36);
  objc_msgSend_setHidden_(self->_planarTranslationHandleXZ, v37, v24, v38);
  objc_msgSend_setHidden_(self->_planarTranslationHandleYZ, v39, v24, v40);
  objc_msgSend_setHidden_(self->_arcHandleXZ, v41, v24, v42);
  arcHandleYZ = self->_arcHandleYZ;

  objc_msgSend_setHidden_(arcHandleYZ, v43, v24, v44);
}

- (unint64_t)_effectiveFeatures
{
  features = self->_features;
  v3 = features | 4;
  if ((features & 4) != 0)
  {
    v3 = 7;
  }

  if (self->_alternateMode)
  {
    return v3;
  }

  else
  {
    return self->_features;
  }
}

- (id)hitTest:(id *)a3
{
  v58 = *MEMORY[0x1E69E9840];
  node = self->_node;
  if (!node)
  {
    return 0;
  }

  objc_msgSend_opacity(node, a2, a3, v3);
  if (v10 == 0.0)
  {
    return 0;
  }

  if (objc_msgSend_isHidden(self->_node, v7, v8, v9))
  {
    return 0;
  }

  v14 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v11, v12, v13);
  objc_msgSend_setObject_forKey_(v14, v15, self->_node, @"kHitTestRootNode");
  v16 = MEMORY[0x1E695E110];
  objc_msgSend_setObject_forKey_(v14, v17, MEMORY[0x1E695E110], @"kHitTestSkipHiddenNode");
  objc_msgSend_setObject_forKey_(v14, v18, &unk_1F25D4120, @"kHitTestSearchMode");
  objc_msgSend_setObject_forKey_(v14, v19, v16, @"kHitTestClipToZRange");
  v22 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v20, 4, v21);
  objc_msgSend_setObject_forKey_(v14, v23, v22, @"kHitTestLayerMask");
  v27 = objc_msgSend_authoringEnvironment(self, v24, v25, v26);
  v31 = objc_msgSend_worldRenderer(v27, v28, v29, v30);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v34 = objc_msgSend_hitTest_options_(v31, v32, v14, v33, a3->var2.x, a3->var2.y, 0);
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v53, v57, 16);
  if (!v36)
  {
    return 0;
  }

  v40 = v36;
  v41 = 0;
  v42 = *v54;
  do
  {
    for (i = 0; i != v40; ++i)
    {
      if (*v54 != v42)
      {
        objc_enumerationMutation(v34);
      }

      v44 = objc_msgSend_node(*(*(&v53 + 1) + 8 * i), v37, v38, v39);
      if (v44 == self->_occluder)
      {
        goto LABEL_20;
      }

      v45 = v44;
      while (objc_msgSend_categoryBitMask(v44, v37, v38, v39) == 0xFFFF)
      {
        v44 = objc_msgSend_parentNode(v45, v37, v38, v39);
        v45 = v44;
      }

      if ((v41 & 1) != 0 && objc_msgSend_parentNode(v45, v37, v38, v39) == self->_rotationHandles)
      {
LABEL_20:
        v41 = 1;
      }

      else
      {
        v46 = v45;
        if (!v45)
        {
          return v45;
        }

        do
        {
          isHidden = objc_msgSend_isHidden(v46, v37, v38, v39);
          v51 = objc_msgSend_parentNode(v46, v48, v49, v50);
          if (isHidden)
          {
            break;
          }

          v46 = v51;
        }

        while (v51);
        if ((isHidden & 1) == 0)
        {
          return v45;
        }
      }
    }

    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v53, v57, 16);
    v45 = 0;
  }

  while (v40);
  return v45;
}

- (void)_updateActionWithEvent:(id *)a3
{
  v5 = *&a3[1].var0;
  v18[2] = *&a3->var2.y;
  v18[3] = v5;
  v6 = *&a3[1].var2.y;
  v18[4] = *&a3[1].var1.y;
  v18[5] = v6;
  v7 = *&a3->var1.y;
  v18[0] = *&a3->var0;
  v18[1] = v7;
  v11 = objc_msgSend_hitTest_(self, a2, v18, v3);
  highlightNode = self->_highlightNode;
  if (highlightNode != v11)
  {
    objc_msgSend_unhighlightSelectedNode(self, v8, v9, v10);
  }

  if (v11)
  {
    self->_action = objc_msgSend_categoryBitMask(v11, v8, v9, v10) >> 8;
    self->_selectedAxis = objc_msgSend_categoryBitMask(v11, v13, v14, v15) >> 4;
    if (highlightNode != v11)
    {
      self->_highlightNode = v11;
      objc_msgSend_enumerateHierarchyUsingBlock_(v11, v16, &unk_1F24E69B0, v17);
    }
  }

  else
  {
    self->_action = 0;
  }
}

- (BOOL)mouseMoved:(id *)a3
{
  action = self->_action;
  self->_action = 0;
  if (objc_msgSend_count(self->_targets, a2, a3, v3) && !self->_readonly)
  {
    if (objc_msgSend_isHidden(self->_node, v7, v8, v9))
    {
      return 0;
    }

    v13 = *&a3[1].var0;
    v16[2] = *&a3->var2.y;
    v16[3] = v13;
    v14 = *&a3[1].var2.y;
    v16[4] = *&a3[1].var1.y;
    v16[5] = v14;
    v15 = *&a3->var1.y;
    v16[0] = *&a3->var0;
    v16[1] = v15;
    objc_msgSend__updateActionWithEvent_(self, v10, v16, v11);
  }

  return action != self->_action;
}

- (void)updateTargetsTransforms
{
  v30 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(self->_presentationItemsLock, a2, v2, v3);
  presentationNodeTransforms = self->_presentationNodeTransforms;
  if (presentationNodeTransforms)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(presentationNodeTransforms, v5, &v25, v29, 16);
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(presentationNodeTransforms);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = objc_msgSend_node(v13, v5, v6, v7);
          v18 = objc_msgSend_presentationNode(v14, v15, v16, v17);
          objc_msgSend_transform(v13, v19, v20, v21);
          objc_msgSend_setTransform_(v18, v22, v23, v24);
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(presentationNodeTransforms, v5, &v25, v29, 16);
      }

      while (v10);
    }
  }

  objc_msgSend_unlock(self->_presentationItemsLock, v5, v6, v7);
}

- (void)updateItemsPosition
{
  v52 = *MEMORY[0x1E69E9840];
  v41 = *&self->_anon_1f0[52];
  v5 = 16;
  if (self->_cloning)
  {
    v5 = 832;
  }

  v6 = *(&self->super.isa + v5);
  if (objc_msgSend_count(v6, a2, v2, v3, *&self->_anon_1b0[52]) > self->_originalDataCount)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFEE8(v6, &self->_originalDataCount, v8, v9);
    }
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v46, v51, 16);
  if (v10)
  {
    v14 = v10;
    v15 = 0;
    v40 = vsubq_f32(v41, v39);
    v16 = *v47;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(v6);
        }

        v18 = *(*(&v46 + 1) + 8 * i);
        v19 = objc_msgSend_parentItem(v18, v11, v12, v13, *&v40);
        objc_msgSend_worldTransform(v19, v20, v21, v22);
        __invert_f4(v53);
        objc_msgSend_transform(v18, v23, v24, v25);
        objc_msgSend_setTransform_(v18, v26, v27, v28);
        ++v15;
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v11, &v46, v51, 16);
    }

    while (v14);
  }

  if (self->_cloning)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    targets = self->_targets;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v11, &v42, v50, 16);
    if (v30)
    {
      v34 = v30;
      v35 = 0;
      v36 = *v43;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v43 != v36)
          {
            objc_enumerationMutation(targets);
          }

          v38 = (*&self->_anon_188[16] + (v35 << 6));
          objc_msgSend_setTransform_(*(*(&v42 + 1) + 8 * j), v31, v32, v33, *v38, v38[2], v38[4], v38[6]);
          ++v35;
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v31, &v42, v50, 16);
      }

      while (v34);
    }
  }
}

- (void)updateItemsRotation:(VFXManipulator *)self
{
  v102 = v2;
  v121 = *MEMORY[0x1E69E9840];
  v3 = 16;
  if (self->_cloning)
  {
    v3 = 832;
  }

  v4 = *(&self->super.isa + v3);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v4;
  v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, a2, &v107, v120, 16);
  if (v91)
  {
    v8 = 0;
    v9 = v102;
    v10 = vmulq_f32(v9, v9);
    v11 = vmulq_laneq_f32(v9, v9, 3);
    v12 = vmuls_lane_f32(v9.f32[0], *v9.f32, 1);
    v13 = vmuls_lane_f32(v102.f32[1], v102, 2);
    v9.f32[0] = vmuls_lane_f32(v9.f32[0], v9, 2);
    v14.i32[3] = 0;
    v14.f32[0] = (0.5 - v10.f32[1]) - v10.f32[2];
    v14.f32[1] = v12 + v11.f32[2];
    v14.f32[2] = v9.f32[0] - v11.f32[1];
    v10.f32[0] = 0.5 - v10.f32[0];
    v15.i32[3] = 0;
    v15.f32[0] = v12 - v11.f32[2];
    v15.f32[1] = v10.f32[0] - v10.f32[2];
    v15.f32[2] = v13 + v11.f32[0];
    v11.f32[0] = v13 - v11.f32[0];
    v16.i32[3] = 0;
    v16.f32[0] = v9.f32[0] + v11.f32[1];
    v16.i32[1] = v11.i32[0];
    v16.f32[2] = v10.f32[0] - v10.f32[1];
    v90 = *v108;
    v88 = vaddq_f32(v15, v15);
    v89 = vaddq_f32(v14, v14);
    v87 = vaddq_f32(v16, v16);
    do
    {
      for (i = 0; i != v91; ++i)
      {
        if (*v108 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v107 + 1) + 8 * i);
        v19 = objc_msgSend_parentItem(v18, v5, v6, v7);
        if (v19)
        {
          v20 = v19;
          v21 = (*&self->_anon_188[16] + (v8 << 6));
          v98 = v21[1];
          v99 = *v21;
          v97 = v21[2];
          v101 = v21[3];
          v22 = objc_msgSend_selectionTransformMode(self->_authoringEnvironment, v5, v6, v7);
          objc_msgSend_worldTransform(v20, v23, v24, v25);
          v30 = v101;
          if (v22 != 1)
          {
            v122 = __invert_f4(v29);
            v31 = 0;
            v32 = *&self->_anon_1b0[20];
            v33 = *&self->_anon_1b0[36];
            v34 = *&self->_anon_1b0[52];
            v111 = *&self->_anon_1b0[4];
            v112 = v32;
            v113 = v33;
            v114 = v34;
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            do
            {
              *(&v115 + v31) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122.columns[0], COERCE_FLOAT(*(&v111 + v31))), v122.columns[1], *(&v111 + v31), 1), v122.columns[2], *(&v111 + v31), 2), v122.columns[3], *(&v111 + v31), 3);
              v31 += 16;
            }

            while (v31 != 64);
            v30 = v118;
          }

          v95 = v30;
          v96 = vnegq_f32(v30);
          objc_msgSend_worldTransform(v20, v26, v27, v28);
          v36 = vmulq_f32(v35, v35);
          v36.f32[0] = v36.f32[2] + vaddv_f32(*v36.f32);
          v37 = vdupq_lane_s32(*v36.f32, 0);
          v37.i32[3] = 0;
          v38 = vrsqrteq_f32(v37);
          v39 = vmulq_f32(v38, vrsqrtsq_f32(v37, vmulq_f32(v38, v38)));
          v40 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v36.f32[0] != 0.0)), 0x1FuLL));
          v40.i32[3] = 0;
          v123.columns[0] = vbslq_s8(vcltzq_s32(v40), vmulq_f32(v35, vmulq_f32(v39, vrsqrtsq_f32(v37, vmulq_f32(v39, v39)))), v35);
          v42 = vmulq_f32(v41, v41);
          v44 = vmulq_f32(v43, v43);
          *v42.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v42, v42, 8uLL)), vadd_f32(vzip1_s32(*v44.i8, *v42.i8), vzip2_s32(*v44.i8, *v42.i8)));
          v45 = vdupq_lane_s32(*v42.i8, 1);
          v45.i32[3] = 0;
          v46 = vrsqrteq_f32(v45);
          v47 = vmulq_f32(v46, vrsqrtsq_f32(v45, vmulq_f32(v46, v46)));
          v48 = vmulq_f32(v41, vmulq_f32(v47, vrsqrtsq_f32(v45, vmulq_f32(v47, v47))));
          *v47.f32 = vmvn_s8(vceqz_f32(*v42.i8));
          v49 = vmovl_s16(vdup_lane_s16(*v47.f32, 2));
          v49.i32[3] = 0;
          v50 = vdupq_lane_s32(*v42.i8, 0);
          v123.columns[1] = vbslq_s8(vcltzq_s32(v49), v48, v41);
          v50.i32[3] = 0;
          v51 = vrsqrteq_f32(v50);
          v52 = vmulq_f32(v51, vrsqrtsq_f32(v50, vmulq_f32(v51, v51)));
          v53 = vmovl_s16(vdup_lane_s16(*v47.f32, 0));
          v53.i32[3] = 0;
          v123.columns[2] = vbslq_s8(vcltzq_s32(v53), vmulq_f32(v43, vmulq_f32(v52, vrsqrtsq_f32(v50, vmulq_f32(v52, v52)))), v43);
          v123.columns[0].i32[3] = 0;
          v123.columns[1].i32[3] = 0;
          v123.columns[2].i32[3] = 0;
          v93 = v123.columns[1];
          v94 = v123.columns[0];
          v92 = v123.columns[2];
          v123.columns[3] = xmmword_1AFE201A0;
          v124 = __invert_f4(v123);
          v57 = 0;
          v111 = v89;
          v112 = v88;
          v113 = v87;
          v114 = xmmword_1AFE201A0;
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          do
          {
            *(&v115 + v57) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v124.columns[0], COERCE_FLOAT(*(&v111 + v57))), v124.columns[1], *(&v111 + v57), 1), v124.columns[2], *(&v111 + v57), 2), v124.columns[3], *(&v111 + v57), 3);
            v57 += 16;
          }

          while (v57 != 64);
          v58 = 0;
          v59 = v95;
          v59.i32[3] = 1.0;
          v60 = v115;
          v61 = v116;
          v62 = v117;
          v63 = v118;
          v111 = v94;
          v112 = v93;
          v113 = v92;
          v114 = xmmword_1AFE201A0;
          v115 = 0uLL;
          v116 = 0uLL;
          v117 = 0uLL;
          v118 = 0uLL;
          do
          {
            *(&v115 + v58) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, COERCE_FLOAT(*(&v111 + v58))), v61, *(&v111 + v58), 1), v62, *(&v111 + v58), 2), v63, *(&v111 + v58), 3);
            v58 += 16;
          }

          while (v58 != 64);
          v64 = 0;
          v65 = v96;
          HIDWORD(v65) = 1.0;
          v111 = v115;
          v112 = v116;
          v113 = v117;
          v114 = v118;
          v115 = 0uLL;
          v116 = 0uLL;
          v117 = 0uLL;
          v118 = 0uLL;
          do
          {
            *(&v115 + v64) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v111 + v64))), xmmword_1AFE20160, *(&v111 + v64), 1), xmmword_1AFE20180, *(&v111 + v64), 2), v59, *(&v111 + v64), 3);
            v64 += 16;
          }

          while (v64 != 64);
          v66 = 0;
          v67 = v115;
          v68 = v116;
          v69 = v117;
          v70 = v118;
          v111 = xmmword_1AFE20150;
          v112 = xmmword_1AFE20160;
          v113 = xmmword_1AFE20180;
          v114 = v65;
          v115 = 0uLL;
          v116 = 0uLL;
          v117 = 0uLL;
          v118 = 0uLL;
          do
          {
            *(&v115 + v66) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, COERCE_FLOAT(*(&v111 + v66))), v68, *(&v111 + v66), 1), v69, *(&v111 + v66), 2), v70, *(&v111 + v66), 3);
            v66 += 16;
          }

          while (v66 != 64);
          v71 = 0;
          v72 = v115;
          v73 = v116;
          v74 = v117;
          v75 = v118;
          v111 = v99;
          v112 = v98;
          v113 = v97;
          v114 = v101;
          v115 = 0uLL;
          v116 = 0uLL;
          v117 = 0uLL;
          v118 = 0uLL;
          do
          {
            *(&v115 + v71) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*(&v111 + v71))), v73, *(&v111 + v71), 1), v74, *(&v111 + v71), 2), v75, *(&v111 + v71), 3);
            v71 += 16;
          }

          while (v71 != 64);
          objc_msgSend_setTransform_(v18, v54, v55, v56, *&v115, *&v116, *&v117, *&v118);
        }

        ++v8;
      }

      v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v107, v120, 16);
    }

    while (v91);
  }

  if (self->_cloning)
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    targets = self->_targets;
    v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v5, &v103, v119, 16);
    if (v77)
    {
      v81 = v77;
      v82 = 0;
      v83 = *v104;
      do
      {
        for (j = 0; j != v81; ++j)
        {
          if (*v104 != v83)
          {
            objc_enumerationMutation(targets);
          }

          v85 = (*&self->_anon_188[16] + (v82 << 6));
          objc_msgSend_setTransform_(*(*(&v103 + 1) + 8 * j), v78, v79, v80, *v85, v85[2], v85[4], v85[6]);
          ++v82;
        }

        v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v78, &v103, v119, 16);
      }

      while (v81);
    }
  }
}

- (void)updateItemsScale:(float)a3 axis:(unsigned __int16)a4
{
  v130 = *MEMORY[0x1E69E9840];
  v6 = 16;
  if (self->_cloning)
  {
    v6 = 832;
  }

  v7 = *(&self->super.isa + v6);
  selectedAxis = self->_selectedAxis;
  if (selectedAxis >= 2)
  {
    v4.f32[0] = 1.0;
  }

  else
  {
    v4.f32[0] = a3;
  }

  v112 = v4;
  if ((selectedAxis | 2) == 2)
  {
    v9 = a3;
  }

  else
  {
    v9 = 1.0;
  }

  v115 = v9;
  v10 = selectedAxis == 3 || selectedAxis == 0;
  v123 = 0u;
  v124 = 0u;
  if (!v10)
  {
    a3 = 1.0;
  }

  v121 = 0uLL;
  v122 = 0uLL;
  obj = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, a2, &v121, v129, 16, LODWORD(a3));
  if (v11)
  {
    v15 = v11;
    v16 = 0;
    v17 = v112;
    v17.f32[1] = v115;
    v17.i32[2] = v111;
    v113 = v17;
    v18 = *v122;
    v17.i32[0] = -1;
    v116 = v17;
    do
    {
      v19 = 0;
      do
      {
        if (*v122 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v121 + 1) + 8 * v19);
        v21 = objc_msgSend_parentItem(v20, v12, v13, v14);
        if (v21)
        {
          v22 = v21;
          if (objc_msgSend_selectionTransformMode(self->_authoringEnvironment, v12, v13, v14) == 1)
          {
            v23 = *&self->_anon_188[16];
            v24 = *(v23 + (v16 << 6) + 48);
          }

          else
          {
            objc_msgSend_worldTransform(v22, v12, v13, v14);
            v132 = __invert_f4(v131);
            v25 = 0;
            v26 = *&self->_anon_1b0[20];
            v27 = *&self->_anon_1b0[36];
            v28 = *&self->_anon_1b0[52];
            v125[0] = *&self->_anon_1b0[4];
            v125[1] = v26;
            v125[2] = v27;
            v125[3] = v28;
            memset(v126, 0, sizeof(v126));
            v127 = 0u;
            do
            {
              v126[v25] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v132.columns[0], COERCE_FLOAT(v125[v25])), v132.columns[1], *&v125[v25], 1), v132.columns[2], v125[v25], 2), v132.columns[3], v125[v25], 3);
              ++v25;
            }

            while (v25 != 4);
            v24 = v127;
            v23 = *&self->_anon_188[16];
          }

          v29 = (v23 + (v16 << 6));
          v31 = *v29;
          v30 = v29[1];
          v32 = v29[2];
          v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vnegq_f32(v30)), v32, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
          v34 = vmulq_f32(*v29, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
          v76 = (v34.f32[2] + vaddv_f32(*v34.f32)) < 0.0;
          v35 = vmulq_f32(v31, v31);
          v36 = vmulq_f32(v30, v30);
          v37 = vadd_f32(vzip1_s32(*v35.i8, *v36.i8), vzip2_s32(*v35.i8, *v36.i8));
          v39 = vextq_s8(v35, v35, 8uLL);
          *v39.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v39.f32, *&vextq_s8(v36, v36, 8uLL)), v37));
          v38 = vmulq_f32(v32, v32);
          v39.i32[2] = sqrtf(v38.f32[2] + vaddv_f32(*v38.f32));
          v40 = 1.0;
          if (v76)
          {
            v40 = -1.0;
          }

          v41 = vmulq_n_f32(v39, v40);
          v42 = vmvnq_s8(vorrq_s8(vcltzq_f32(v41), vcgezq_f32(v41)));
          v42.i32[3] = v42.i32[2];
          v42.i32[0] = vmaxvq_u32(v42);
          v43 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v42, v116), 0), v41, 0);
          v44 = vceqzq_f32(v43);
          v44.i32[3] = v44.i32[2];
          if ((vmaxvq_u32(v44) & 0x80000000) == 0)
          {
            v45 = vdivq_f32(v31, vdupq_lane_s32(*v43.f32, 0));
            v46 = vdivq_f32(v30, vdupq_lane_s32(*v43.f32, 1));
            v47 = vdivq_f32(v32, vdupq_laneq_s32(v43, 2));
            v48 = vmulq_f32(v45, v45);
            v49 = vmulq_f32(v46, v46);
            v50 = vmulq_f32(v47, v47);
            v51 = vzip2q_s32(v48, v50);
            v52 = vzip1q_s32(vzip1q_s32(v48, v50), v49);
            v53 = vtrn2q_s32(v48, v49);
            v53.i32[2] = v50.i32[1];
            v54 = vaddq_f32(vzip1q_s32(v51, vdupq_laneq_s32(v49, 2)), vaddq_f32(v52, v53));
            v53.i64[0] = 0x80000000800000;
            v53.i64[1] = 0x80000000800000;
            v55 = vcgeq_f32(v53, v54);
            v54.i32[3] = 0;
            v56 = vrsqrteq_f32(v54);
            v57 = vmulq_f32(v56, vrsqrtsq_f32(v54, vmulq_f32(v56, v56)));
            v58 = v55;
            v58.i32[3] = 0;
            v59 = vbslq_s8(vcltzq_s32(v58), v54, vmulq_f32(v57, vrsqrtsq_f32(v54, vmulq_f32(v57, v57))));
            v60 = vmulq_n_f32(v45, v59.f32[0]);
            v61 = vmulq_lane_f32(v46, *v59.f32, 1);
            v62 = vmulq_laneq_f32(v47, v59, 2);
            v63 = vuzp1q_s32(v62, v62);
            v64 = vuzp1q_s32(v61, v61);
            v65 = v60;
            if (v55.i32[0])
            {
              v66 = vmlaq_f32(vmulq_f32(vextq_s8(v63, v62, 0xCuLL), vnegq_f32(v61)), v62, vextq_s8(v64, v61, 0xCuLL));
              v65 = vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL);
            }

            v67 = vuzp1q_s32(v60, v60);
            v68 = v61;
            if (v55.i32[1])
            {
              v69 = vmlaq_f32(vmulq_f32(vextq_s8(v67, v60, 0xCuLL), vnegq_f32(v62)), v60, vextq_s8(v63, v62, 0xCuLL));
              v68 = vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL);
            }

            if (v55.i32[2])
            {
              v70 = vmlaq_f32(vmulq_f32(vextq_s8(v64, v61, 0xCuLL), vnegq_f32(v60)), v61, vextq_s8(v67, v60, 0xCuLL));
              v62 = vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL);
            }

            v71 = (*v65.i32 + *&v68.i32[1]) + v62.f32[2];
            if (v71 > 0.0)
            {
              v72 = sqrtf(v71 + 1.0);
              *v73.f32 = vsub_f32(*&vzip2q_s32(v68, vuzp1q_s32(v68, v62)), *&vtrn2q_s32(v62, vzip2q_s32(v62, v65)));
              v73.f32[2] = *&v65.i32[1] - *v68.i32;
              v73.f32[3] = v72 * v72;
              v74 = 0.5 / v72;
              goto LABEL_36;
            }

            v76 = *v65.i32 < *&v68.i32[1] || *v65.i32 < v62.f32[2];
            if (!v76)
            {
              v78 = sqrtf(((*v65.i32 + 1.0) - *&v68.i32[1]) - v62.f32[2]);
              v82.f32[0] = v78 * v78;
              v79 = *&v65.i32[1] + *v68.i32;
              v80 = vzip2q_s32(v65, v68).u64[0];
              LODWORD(v81) = vadd_f32(v80, *v62.f32).u32[0];
              HIDWORD(v81) = vsub_f32(v80, *&v62).i32[1];
              v82.f32[1] = v79;
              v82.i64[1] = v81;
              goto LABEL_44;
            }

            if (*&v68.i32[1] <= v62.f32[2])
            {
              v96 = vzip2q_s32(v65, v68).u64[0];
              v97 = __PAIR64__(v65.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v62.f32[2] + 1.0) - *v65.i32) - *&v68.i32[1])));
              v98 = vdup_lane_s32(*v68.i8, 0);
              *v73.f32 = vadd_f32(v96, *v62.f32);
              v99 = vsub_f32(*v65.i8, v98);
              v98.i32[0] = v97.i32[0];
              v98.i32[0] = vmul_f32(v97, v98).u32[0];
              v98.i32[1] = v99.i32[1];
              *&v73.u32[2] = v98;
              v74 = 0.5 / v97.f32[0];
LABEL_36:
              v75 = vmulq_n_f32(v73, v74);
            }

            else
            {
              v78 = sqrtf(((*&v68.i32[1] + 1.0) - *v65.i32) - v62.f32[2]);
              v82.f32[0] = *&v65.i32[1] + *v68.i32;
              v77 = vzip2q_s32(v65, v68).u64[0];
              v82.f32[1] = v78 * v78;
              *&v82.u32[2] = vext_s8(vadd_f32(*v62.f32, v77), vsub_f32(*v62.f32, v77), 4uLL);
LABEL_44:
              v75 = vmulq_n_f32(v82, 0.5 / v78);
            }

            if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(v75, v75))) & 0x80000000) == 0 && (v42.i32[0] & 0x80000000) == 0)
            {
              v83 = vmulq_f32(v113, v43);
              v84 = vabsq_f32(v83);
              v84.i32[3] = 0;
              v85.i64[0] = 0x8000000080000000;
              v85.i64[1] = 0x8000000080000000;
              v86 = vorrq_s8(vandq_s8(v83, v85), vabsq_f32(vmaxnmq_f32(v84, xmmword_1AFE20A30)));
              v87 = vmulq_f32(v75, v75);
              v88 = vmulq_laneq_f32(v75, v75, 3);
              v89 = vmuls_lane_f32(v75.f32[0], *v75.f32, 1);
              v90 = vmuls_lane_f32(v75.f32[1], v75, 2);
              v91 = vmuls_lane_f32(v75.f32[0], v75, 2);
              v92 = vaddq_f32(v86, v86);
              v93.i32[3] = 0;
              v93.f32[0] = (0.5 - v87.f32[1]) - v87.f32[2];
              v93.f32[1] = v89 + v88.f32[2];
              v93.f32[2] = v91 - v88.f32[1];
              v94.i32[3] = 0;
              v94.f32[0] = v89 - v88.f32[2];
              v94.f32[1] = (0.5 - v87.f32[0]) - v87.f32[2];
              v94.f32[2] = v90 + v88.f32[0];
              v88.f32[0] = v90 - v88.f32[0];
              v95.i32[3] = 0;
              v95.f32[0] = v91 + v88.f32[1];
              v95.i32[1] = v88.i32[0];
              v95.f32[2] = (0.5 - v87.f32[0]) - v87.f32[1];
              objc_msgSend_setTransform_(v20, v12, v13, v14, *vmulq_n_f32(v93, v92.f32[0]).i64, *vmulq_lane_f32(v94, *v92.f32, 1).i64, *vmulq_laneq_f32(v95, v92, 2).i64, *vmlaq_f32(v24, v113, vsubq_f32(v29[3], v24)).i64);
            }
          }
        }

        ++v16;
        ++v19;
      }

      while (v19 != v15);
      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v121, v129, 16);
      v15 = v100;
    }

    while (v100);
  }

  if (self->_cloning)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    targets = self->_targets;
    v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v12, &v117, v128, 16);
    if (v102)
    {
      v106 = v102;
      v107 = 0;
      v108 = *v118;
      do
      {
        for (i = 0; i != v106; ++i)
        {
          if (*v118 != v108)
          {
            objc_enumerationMutation(targets);
          }

          v110 = (*&self->_anon_188[16] + (v107 << 6));
          objc_msgSend_setTransform_(*(*(&v117 + 1) + 8 * i), v103, v104, v105, *v110, v110[2], v110[4], v110[6]);
          ++v107;
        }

        v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v103, &v117, v128, 16);
      }

      while (v106);
    }
  }
}

- (void)_saveOriginalData
{
  objc_msgSend__deleteOriginalData(self, a2, v2, v3);
  v8 = objc_msgSend_count(self->_targets, v5, v6, v7);
  self->_originalDataCount = v8;
  if (v8)
  {
    *&self->_anon_188[8] = malloc_type_malloc(16 * v8, 0x1000040451B5BE8uLL);
    *self->_anon_188 = malloc_type_malloc(16 * self->_originalDataCount, 0x1000040451B5BE8uLL);
    *&self->_anon_188[24] = malloc_type_malloc(16 * self->_originalDataCount, 0x1000040451B5BE8uLL);
    *&self->_anon_188[16] = malloc_type_malloc(self->_originalDataCount << 6, 0x1000040FA0F61DDuLL);
    targets = self->_targets;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF10E1B0;
    v12[3] = &unk_1E7A796D8;
    v12[4] = self;
    objc_msgSend_enumerateObjectsUsingBlock_(targets, v10, v12, v11);
  }
}

- (void)_deleteOriginalData
{
  anon_188 = self->_anon_188;
  free(*self->_anon_188);
  free(*&self->_anon_188[8]);
  free(*&self->_anon_188[24]);
  free(*&self->_anon_188[16]);
  self->_originalDataCount = 0;
  *anon_188 = 0u;
  *(anon_188 + 1) = 0u;
}

- (void)clearRuntimeItems
{
  objc_msgSend_lock(self->_presentationItemsLock, a2, v2, v3);

  self->_presentationNodeTransforms = 0;
  presentationItemsLock = self->_presentationItemsLock;

  objc_msgSend_unlock(presentationItemsLock, v5, v6, v7);
}

- (void)_updateRuntimeItems
{
  v72 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(self->_presentationItemsLock, a2, v2, v3);
  presentationNodeTransforms = self->_presentationNodeTransforms;
  if (!presentationNodeTransforms)
  {
    presentationNodeTransforms = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_presentationNodeTransforms = presentationNodeTransforms;
  }

  if (self->_cloning)
  {
    objc_msgSend_removeAllObjects(presentationNodeTransforms, v5, v6, v7);
  }

  else
  {
    v12 = objc_msgSend_count(presentationNodeTransforms, v5, v6, v7);
    if (v12 == objc_msgSend_count(self->_targets, v13, v14, v15))
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      targets = self->_targets;
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v16, &v62, v70, 16);
      if (v20)
      {
        v21 = v20;
        LODWORD(v22) = 0;
        v23 = *v63;
        do
        {
          v24 = 0;
          v22 = v22;
          do
          {
            if (*v63 != v23)
            {
              objc_enumerationMutation(targets);
            }

            v25 = *(*(&v62 + 1) + 8 * v24);
            v26 = objc_msgSend_objectAtIndex_(self->_presentationNodeTransforms, v9, v22, v11);
            v30 = objc_msgSend_node(v25, v27, v28, v29);
            objc_msgSend_setNode_(v26, v31, v30, v32);
            objc_msgSend_draggedTransform(v25, v33, v34, v35);
            objc_msgSend_setTransform_(v26, v36, v37, v38);
            ++v22;
            ++v24;
          }

          while (v21 != v24);
          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v9, &v62, v70, 16);
        }

        while (v21);
      }
    }

    else
    {
      objc_msgSend_removeAllObjects(self->_presentationNodeTransforms, v16, v17, v18);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v39 = self->_targets;
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v66, v71, 16);
      if (v41)
      {
        v42 = v41;
        v43 = *v67;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v67 != v43)
            {
              objc_enumerationMutation(v39);
            }

            v45 = *(*(&v66 + 1) + 8 * i);
            v46 = objc_alloc_init(VFXManipulatorNodeTransformPair);
            v50 = objc_msgSend_node(v45, v47, v48, v49);
            objc_msgSend_setNode_(v46, v51, v50, v52);
            objc_msgSend_draggedTransform(v45, v53, v54, v55);
            objc_msgSend_setTransform_(v46, v56, v57, v58);
            objc_msgSend_addObject_(self->_presentationNodeTransforms, v59, v46, v60);
          }

          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v61, &v66, v71, 16);
        }

        while (v42);
      }
    }
  }

  objc_msgSend_unlock(self->_presentationItemsLock, v9, v10, v11);
}

- (BOOL)_applyWithEvent:(id *)a3
{
  v187 = *MEMORY[0x1E69E9840];
  action = self->_action;
  if (action > 2)
  {
    if (action == 3)
    {
      v104 = a3->var1.y - self->_originalMouseLocation.y;
      v105 = (*self->_anon_130 * v104) * 0.01;
      selectedAxis = self->_selectedAxis;
      if (self->_selectedAxis)
      {
        v107 = 0.0;
        if (selectedAxis == 1)
        {
          v108 = 1.0;
        }

        else
        {
          v108 = 0.0;
        }

        if (selectedAxis == 2)
        {
          v109 = 1.0;
        }

        else
        {
          v109 = 0.0;
        }

        if (selectedAxis == 3)
        {
          v107 = 1.0;
        }

        v176 = *&self->_anon_1b0[36];
        v178 = *&self->_anon_1b0[20];
        v180 = *&self->_anon_1b0[4];
        v110 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v176, v107), v178, v109), v180, v108);
        v111 = vmulq_f32(v110, v110);
        *&v112 = v111.f32[2] + vaddv_f32(*v111.f32);
        *v111.f32 = vrsqrte_f32(v112);
        *v111.f32 = vmul_f32(*v111.f32, vrsqrts_f32(v112, vmul_f32(*v111.f32, *v111.f32)));
        v113 = vmulq_n_f32(v110, vmul_f32(*v111.f32, vrsqrts_f32(v112, vmul_f32(*v111.f32, *v111.f32))).f32[0]);
        v113.f32[3] = v105;
      }

      else
      {
        v181 = (*self->_anon_130 * v104) * 0.01;
        v114 = objc_msgSend_authoringEnvironment(self, a2, a3, v3);
        objc_msgSend_viewMatrix(v114, v115, v116, v117);
        v189 = __invert_f4(v188);
        v113 = vmlaq_f32(vmlaq_f32(vnegq_f32(v189.columns[2]), 0, v189.columns[1]), 0, v189.columns[0]);
        v113.f32[3] = v181;
        v178 = *&self->_anon_1b0[20];
        v180 = *&self->_anon_1b0[4];
        v176 = *&self->_anon_1b0[36];
      }

      v118 = vmulq_f32(v113, v113);
      v118.f32[0] = v118.f32[2] + vaddv_f32(*v118.f32);
      v119 = vdupq_lane_s32(*v118.f32, 0);
      v119.i32[3] = 0;
      v120 = vrsqrteq_f32(v119);
      v121 = vmulq_f32(v120, vrsqrtsq_f32(v119, vmulq_f32(v120, v120)));
      v122 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v118.f32[0] != 0.0)), 0x1FuLL));
      v122.i32[3] = 0;
      v174 = vbslq_s8(vcltzq_s32(v122), vmulq_f32(v113, vmulq_f32(v121, vrsqrtsq_f32(v119, vmulq_f32(v121, v121)))), v113);
      v126 = __sincosf_stret(vmuls_lane_f32(0.5, v113, 3));
      v127 = 0;
      v128 = vmulq_n_f32(v174, v126.__sinval);
      v129 = vmulq_f32(v128, v128);
      v130 = vmulq_n_f32(v128, v126.__cosval);
      v131 = vmuls_lane_f32(v128.f32[0], *v128.f32, 1);
      v132 = vmuls_lane_f32(v128.f32[1], v128, 2);
      v133 = vmuls_lane_f32(v128.f32[0], v128, 2);
      v128.i32[3] = LODWORD(v126.__cosval);
      v173 = v128;
      v128.f32[0] = (0.5 - v129.f32[1]) - v129.f32[2];
      v128.f32[1] = v131 + v130.f32[2];
      v128.f32[2] = v133 - v130.f32[1];
      v134 = vaddq_f32(v128, v128);
      v135.f32[0] = v131 - v130.f32[2];
      v129.f32[0] = 0.5 - v129.f32[0];
      v135.f32[1] = v129.f32[0] - v129.f32[2];
      v135.f32[2] = v132 + v130.f32[0];
      v136 = vaddq_f32(v135, v135);
      v135.f32[0] = v133 + v130.f32[1];
      v135.f32[1] = v132 - v130.f32[0];
      v135.f32[2] = v129.f32[0] - v129.f32[1];
      v137 = vaddq_f32(v135, v135);
      v183[0] = v180;
      v183[1] = v178;
      v183[2] = v176;
      v184 = 0u;
      v185 = 0u;
      v186 = 0u;
      do
      {
        *(&v184 + v127 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v134, COERCE_FLOAT(v183[v127])), v136, *&v183[v127], 1), v137, v183[v127], 2);
        ++v127;
      }

      while (v127 != 3);
      v138 = v184;
      v139 = v185;
      v140 = v186;
      HIDWORD(v138) = 0;
      HIDWORD(v139) = 0;
      HIDWORD(v140) = 0;
      *&self->_anon_1f0[4] = v138;
      *&self->_anon_1f0[20] = v139;
      *&self->_anon_1f0[36] = v140;
      *&self->_anon_1f0[52] = xmmword_1AFE201A0;
      objc_msgSend_begin(VFXTransaction, v123, *&v124, *&v125);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v141, v142, v143, 0.0);
      objc_msgSend_updateItemsRotation_(self, v144, v145, v146, *v173.i64);
    }

    else
    {
      if (action != 4)
      {
        goto LABEL_19;
      }

      v49 = a3->var1.y - self->_originalMouseLocation.y;
      v50 = v49 <= 0.0;
      v51 = v49;
      v52 = 1.0 / ((100.0 - v51) / 100.0);
      v53 = (v51 + 100.0) / 100.0;
      if (v50)
      {
        v53 = v52;
      }

      v54 = v53;
      objc_msgSend_begin(VFXTransaction, a2, a3, v3);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v55, v56, v57, 0.0);
      *&v58 = v54;
      objc_msgSend_updateItemsScale_axis_(self, v59, self->_selectedAxis, v60, v58);
    }

    objc_msgSend_commit(VFXTransaction, v61, v62, v63, *&v173);
LABEL_83:
    LOBYTE(v65) = 1;
    return v65;
  }

  v6 = *&a3[1].var0;
  v7 = vsubq_f32(*&a3[1].var1.y, v6);
  v179 = *&self->_anon_1f0[52];
  if (action == 1)
  {
    *v66.i64 = sub_1AF10F130(self, v6, v7);
    v177 = vaddq_f32(v66, *&self->_anon_130[32]);
    objc_msgSend_begin(VFXTransaction, v67, v68, v69);
    objc_msgSend_setAnimationDuration_(VFXTransaction, v70, v71, v72, 0.0);
    LOBYTE(v183[0]) = 0;
    v76 = objc_msgSend_authoringEnvironment(self, v73, v74, v75);
    objc_msgSend_gridUnit(v76, v77, v78, v79);
    v81 = v80;
    *(&v184 + 1) = -1;
    *&v185 = -1;
    *&v184 = -1;
    v85 = objc_msgSend_authoringEnvironment(self, v82, v83, v84);
    shouldSnapToAlign = objc_msgSend_shouldSnapToAlign(v85, v86, v87, v88);
    v94 = 0uLL;
    if (shouldSnapToAlign)
    {
      *&v93 = v81;
      objc_msgSend__snapPositionToAlign_original_unit_axisMove_rayStart_rayDir_didSnap_snapIndexes_(self, v90, 1, v183, &v184, *v177.i64, *v179.i64, v93, *self->_anon_130, *&self->_anon_130[16]);
    }

    v175 = v94;
    v95 = objc_msgSend_authoringEnvironment(self, v90, v91, v92);
    if (objc_msgSend_shouldSnapOnGrid(v95, v96, v97, v98))
    {
      if (v81 != 0.0)
      {
        v182 = 0;
        *v99.i64 = sub_1AF10F204(1, &v182, v177, v179, v81, *self->_anon_130, *&self->_anon_130[16]);
        if (v182 == 1)
        {
          if (LOBYTE(v183[0]) == 1)
          {
            v100 = vsubq_f32(v99, v177);
            v101 = vmulq_f32(v100, v100);
            v102 = vsubq_f32(v175, v177);
            v103 = vmulq_f32(v102, v102);
            *v101.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v101, v101, 8uLL), *&vextq_s8(v103, v103, 8uLL)), vadd_f32(vzip1_s32(*v101.i8, *v103.i8), vzip2_s32(*v101.i8, *v103.i8))));
            if ((vcgt_f32(vdup_lane_s32(*v101.i8, 1), *v101.i8).u32[0] & 1) == 0)
            {
              goto LABEL_65;
            }

            *(&v184 + 1) = -1;
            *&v185 = -1;
            *&v184 = -1;
          }

          else
          {
            LOBYTE(v183[0]) = 1;
          }

          v175 = v99;
        }
      }
    }

LABEL_65:
    if (LOBYTE(v183[0]) == 1)
    {
      objc_msgSend_lock(self->_snapLock, v41, v42, v43);
      v159 = v184;
      if (v184 != -1 && v184 < self->_snapToAlignCount)
      {
        var0 = self->_snapToAlignOnX[v184].var0;
        v161 = v184;
        do
        {
          if (vabds_f32(self->_snapToAlignOnX[v161].var0, var0) >= 0.00001)
          {
            break;
          }

          objc_msgSend_addIndex_(self->_snapXIndexes, v147, v159++, v149);
          ++v161;
        }

        while (v159 < self->_snapToAlignCount);
      }

      v162 = *(&v184 + 1);
      if (*(&v184 + 1) != -1 && *(&v184 + 1) < self->_snapToAlignCount)
      {
        v163 = self->_snapToAlignOnY[*(&v184 + 1)].var0;
        v164 = *(&v184 + 1);
        do
        {
          if (vabds_f32(self->_snapToAlignOnY[v164].var0, v163) >= 0.00001)
          {
            break;
          }

          objc_msgSend_addIndex_(self->_snapYIndexes, v147, v162++, v149);
          ++v164;
        }

        while (v162 < self->_snapToAlignCount);
      }

      v165 = v185;
      if (v185 != -1 && v185 < self->_snapToAlignCount)
      {
        v166 = self->_snapToAlignOnZ[v185].var0;
        v167 = v185;
        do
        {
          if (vabds_f32(self->_snapToAlignOnZ[v167].var0, v166) >= 0.00001)
          {
            break;
          }

          objc_msgSend_addIndex_(self->_snapZIndexes, v147, v165++, v149);
          ++v167;
        }

        while (v165 < self->_snapToAlignCount);
      }

      goto LABEL_81;
    }

LABEL_82:
    v168 = v177;
    v168.i32[3] = *&self->_anon_1f0[64];
    *&self->_anon_1f0[52] = v168;
    objc_msgSend_updateItemsPosition(self, v41, v42, v43);
    objc_msgSend_commit(VFXTransaction, v169, v170, v171);
    goto LABEL_83;
  }

  if (action == 2)
  {
    v8 = *&self->_anon_130[16];
    v9 = vmulq_f32(v7, v8);
    v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    if (v10 != 0.0)
    {
      v11 = vmulq_f32(v8, vsubq_f32(*&self->_anon_130[32], v6));
      v6 = vmlaq_n_f32(v6, v7, (v11.f32[2] + vaddv_f32(*v11.f32)) / v10);
    }

    v177 = vaddq_f32(v6, *&self->_anon_130[48]);
    objc_msgSend_begin(VFXTransaction, a2, a3, v3);
    objc_msgSend_setAnimationDuration_(VFXTransaction, v12, v13, v14, 0.0);
    LOBYTE(v183[0]) = 0;
    v18 = objc_msgSend_authoringEnvironment(self, v15, v16, v17);
    objc_msgSend_gridUnit(v18, v19, v20, v21);
    v23 = v22;
    *(&v184 + 1) = -1;
    *&v185 = -1;
    *&v184 = -1;
    v27 = objc_msgSend_authoringEnvironment(self, v24, v25, v26);
    v31 = objc_msgSend_shouldSnapToAlign(v27, v28, v29, v30);
    v36 = 0uLL;
    if (v31)
    {
      *&v35 = v23;
      objc_msgSend__snapPositionToAlign_original_unit_axisMove_rayStart_rayDir_didSnap_snapIndexes_(self, v32, 0, v183, &v184, *v177.i64, *v179.i64, v35, 0.0, 0.0);
    }

    v175 = v36;
    v37 = objc_msgSend_authoringEnvironment(self, v32, v33, v34);
    if (objc_msgSend_shouldSnapOnGrid(v37, v38, v39, v40))
    {
      if (v23 != 0.0)
      {
        v182 = 0;
        *v44.i64 = sub_1AF10F204(0, &v182, v177, v179, v23, *&self->_anon_130[32], *&self->_anon_130[16]);
        if (v182 == 1)
        {
          if (LOBYTE(v183[0]) == 1)
          {
            v45 = vsubq_f32(v44, v177);
            v46 = vmulq_f32(v45, v45);
            v47 = vsubq_f32(v175, v177);
            v48 = vmulq_f32(v47, v47);
            *v46.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v46, v46, 8uLL), *&vextq_s8(v48, v48, 8uLL)), vadd_f32(vzip1_s32(*v46.i8, *v48.i8), vzip2_s32(*v46.i8, *v48.i8))));
            if ((vcgt_f32(vdup_lane_s32(*v46.i8, 1), *v46.i8).u32[0] & 1) == 0)
            {
              goto LABEL_46;
            }

            *(&v184 + 1) = -1;
            *&v185 = -1;
            *&v184 = -1;
          }

          else
          {
            LOBYTE(v183[0]) = 1;
          }

          v175 = v44;
        }
      }
    }

LABEL_46:
    if (LOBYTE(v183[0]) == 1)
    {
      objc_msgSend_lock(self->_snapLock, v41, v42, v43);
      v150 = v184;
      if (v184 != -1 && v184 < self->_snapToAlignCount)
      {
        v151 = self->_snapToAlignOnX[v184].var0;
        v152 = v184;
        do
        {
          if (vabds_f32(self->_snapToAlignOnX[v152].var0, v151) >= 0.00001)
          {
            break;
          }

          objc_msgSend_addIndex_(self->_snapXIndexes, v147, v150++, v149);
          ++v152;
        }

        while (v150 < self->_snapToAlignCount);
      }

      v153 = *(&v184 + 1);
      if (*(&v184 + 1) != -1 && *(&v184 + 1) < self->_snapToAlignCount)
      {
        v154 = self->_snapToAlignOnY[*(&v184 + 1)].var0;
        v155 = *(&v184 + 1);
        do
        {
          if (vabds_f32(self->_snapToAlignOnY[v155].var0, v154) >= 0.00001)
          {
            break;
          }

          objc_msgSend_addIndex_(self->_snapYIndexes, v147, v153++, v149);
          ++v155;
        }

        while (v153 < self->_snapToAlignCount);
      }

      v156 = v185;
      if (v185 != -1 && v185 < self->_snapToAlignCount)
      {
        v157 = self->_snapToAlignOnZ[v185].var0;
        v158 = v185;
        do
        {
          if (vabds_f32(self->_snapToAlignOnZ[v158].var0, v157) >= 0.00001)
          {
            break;
          }

          objc_msgSend_addIndex_(self->_snapZIndexes, v147, v156++, v149);
          ++v158;
        }

        while (v156 < self->_snapToAlignCount);
      }

LABEL_81:
      objc_msgSend_unlock(self->_snapLock, v147, v148, v149);
      v177 = v175;
      goto LABEL_82;
    }

    goto LABEL_82;
  }

LABEL_19:
  v64 = sub_1AF0D5194();
  v65 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
  if (v65)
  {
    sub_1AFDCFF98(v64);
    LOBYTE(v65) = 0;
  }

  return v65;
}

- (void)clearSnapIndexes
{
  objc_msgSend_lock(self->_snapLock, a2, v2, v3);
  free(self->_snapToAlignOnX);
  free(self->_snapToAlignOnY);
  free(self->_snapToAlignOnZ);
  *&self->_snapToAlignCount = 0u;
  *&self->_snapToAlignOnY = 0u;
  objc_msgSend_removeAllIndexes(self->_snapXIndexes, v5, v6, v7);
  objc_msgSend_removeAllIndexes(self->_snapYIndexes, v8, v9, v10);
  objc_msgSend_removeAllIndexes(self->_snapZIndexes, v11, v12, v13);
  snapLock = self->_snapLock;

  objc_msgSend_unlock(snapLock, v14, v15, v16);
}

- (BOOL)mouseDragged:(id *)a3
{
  if (!self->_action)
  {
    return 0;
  }

  v6 = *&a3[1].var0;
  v21 = *&a3->var2.y;
  v22 = v6;
  v7 = *&a3[1].var2.y;
  v23 = *&a3[1].var1.y;
  v24 = v7;
  v8 = *&a3->var1.y;
  v19 = *&a3->var0;
  v20 = v8;
  objc_msgSend__updateCloneStateWithEvent_(self, a2, &v19, v3);
  v9 = *&a3[1].var0;
  v21 = *&a3->var2.y;
  v22 = v9;
  v10 = *&a3[1].var2.y;
  v23 = *&a3[1].var1.y;
  v24 = v10;
  v11 = *&a3->var1.y;
  v19 = *&a3->var0;
  v20 = v11;
  v14 = objc_msgSend__applyWithEvent_(self, v12, &v19, v13);
  objc_msgSend__updateRuntimeItems(self, v15, v16, v17);
  return v14;
}

- (BOOL)mouseDown:(id *)a3
{
  if (objc_msgSend_readonly(self, a2, a3, v3))
  {
    return 0;
  }

  v8 = *&a3[1].var0;
  v63[2] = *&a3->var2.y;
  v63[3] = v8;
  v9 = *&a3[1].var2.y;
  v63[4] = *&a3[1].var1.y;
  v63[5] = v9;
  v10 = *&a3->var1.y;
  v63[0] = *&a3->var0;
  v63[1] = v10;
  objc_msgSend__updateActionWithEvent_(self, v6, v63, v7);
  if (!self->_action)
  {
    return 0;
  }

  v14 = 1;
  self->_isMouseDown = 1;
  objc_msgSend__saveOriginalData(self, v11, v12, v13);
  sub_1AF10C564(self, v15, v16, v17);
  *&self->_anon_1f0[4] = v18;
  *&self->_anon_1f0[20] = v19;
  *&self->_anon_1f0[36] = v20;
  *&self->_anon_1f0[52] = v21;
  v22 = *&self->_anon_1f0[20];
  *&self->_anon_1b0[4] = *&self->_anon_1f0[4];
  *&self->_anon_1b0[20] = v22;
  v23 = *&self->_anon_1f0[52];
  *&self->_anon_1b0[36] = *&self->_anon_1f0[36];
  *&self->_anon_1b0[52] = v23;
  var1 = a3->var1;
  self->_originalMouseLocation = var1;
  action = self->_action;
  if (action > 2)
  {
    if (action != 3)
    {
      if (action == 4)
      {
        return v14;
      }

LABEL_19:
      v37 = sub_1AF0D5194();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDCFF98(v37);
      }

      return 0;
    }

    selectedAxis = self->_selectedAxis;
    v53 = 0.0;
    if (selectedAxis == 1)
    {
      v54 = 1.0;
    }

    else
    {
      v54 = 0.0;
    }

    if (selectedAxis == 2)
    {
      v55 = 1.0;
    }

    else
    {
      v55 = 0.0;
    }

    if (selectedAxis == 3)
    {
      v53 = 1.0;
    }

    v56 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v20, v53), v19, v55), v18, v54);
    v57 = vmulq_f32(v56, v56);
    *&v58 = v57.f32[2] + vaddv_f32(*v57.f32);
    *v57.f32 = vrsqrte_f32(v58);
    *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32)));
    v59 = vmulq_f32(vsubq_f32(*&a3[1].var1.y, *&a3[1].var0), vmulq_n_f32(v56, vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32))).f32[0]));
    v60 = vaddv_f32(*v59.f32);
    v61 = -1.0;
    if ((v59.f32[2] + v60) <= 0.0)
    {
      v61 = 1.0;
    }

    *self->_anon_130 = v61;
  }

  else
  {
    if (action != 1)
    {
      if (action == 2)
      {
        v26 = self->_selectedAxis;
        v27 = 1.0;
        if (v26 == 1)
        {
          v28 = 1.0;
        }

        else
        {
          v28 = 0.0;
        }

        if (v26 == 2)
        {
          v29 = 1.0;
        }

        else
        {
          v29 = 0.0;
        }

        if (v26 != 3)
        {
          v27 = 0.0;
        }

        v30 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v21, 0, v20), 0, v19), 0, v18);
        v31 = vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v21, v20, v27), v19, v29), v18, v28), v30);
        *&self->_anon_130[16] = v31;
        *&self->_anon_130[32] = v30;
        *self->_anon_130 = v30;
        v32 = *&a3[1].var0;
        v33 = vsubq_f32(*&a3[1].var1.y, v32);
        v34 = vmulq_f32(v33, v31);
        v35 = v34.f32[2] + vaddv_f32(*v34.f32);
        if (v35 != 0.0)
        {
          v36 = vmulq_f32(vsubq_f32(v30, v32), v31);
          v32 = vmlaq_n_f32(v32, v33, (v36.f32[2] + vaddv_f32(*v36.f32)) / v35);
        }

        *&self->_anon_130[48] = vsubq_f32(v30, v32);
        return v14;
      }

      goto LABEL_19;
    }

    v39 = self->_selectedAxis;
    __asm { FMOV            V5.2S, #1.0 }

    *var1.f32 = vand_s8(vceq_s32(vdup_n_s32(v39), 0x200000001), _D5);
    v45 = 0.0;
    if (v39 == 3)
    {
      v45 = 1.0;
    }

    var1.f32[2] = v45;
    v46 = vmulq_f32(var1, vdupq_n_s32(0x42C80000u));
    v47 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v21, 0, v20), 0, v19), 0, v18);
    v48 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v21, v20, v46, 2), v19, *v46.f32, 1), v18, v46.f32[0]), v47);
    v62 = v47;
    v49 = vmulq_f32(v48, v48);
    *&v50 = v49.f32[2] + vaddv_f32(*v49.f32);
    *v49.f32 = vrsqrte_f32(v50);
    *v49.f32 = vmul_f32(*v49.f32, vrsqrts_f32(v50, vmul_f32(*v49.f32, *v49.f32)));
    *self->_anon_130 = v47;
    *&self->_anon_130[16] = vmulq_n_f32(v48, vmul_f32(*v49.f32, vrsqrts_f32(v50, vmul_f32(*v49.f32, *v49.f32))).f32[0]);
    *v51.i64 = sub_1AF10F130(self, *&a3[1].var0, vsubq_f32(*&a3[1].var1.y, *&a3[1].var0));
    *&self->_anon_130[32] = vsubq_f32(v62, v51);
  }

  return v14;
}

- (BOOL)mouseUp:(id *)a3
{
  if (objc_msgSend_readonly(self, a2, a3, v3))
  {
    return 0;
  }

  objc_msgSend_clearSnapIndexes(self, v6, v7, v8);
  v9 = self->_action != 0;
  if (self->_action)
  {
    v12 = *&a3[1].var0;
    v42 = *&a3->var2.y;
    v43 = v12;
    v13 = *&a3[1].var2.y;
    v44 = *&a3[1].var1.y;
    v45 = v13;
    v14 = *&a3->var1.y;
    v40 = *&a3->var0;
    v41 = v14;
    objc_msgSend__updateCloneStateWithEvent_(self, v10, &v40, v11);
    v15 = *&a3[1].var0;
    v42 = *&a3->var2.y;
    v43 = v15;
    v16 = *&a3[1].var2.y;
    v44 = *&a3[1].var1.y;
    v45 = v16;
    v17 = *&a3->var1.y;
    v40 = *&a3->var0;
    v41 = v17;
    objc_msgSend__applyWithEvent_(self, v18, &v40, v19);
    if (self->_cloning)
    {
      objc_msgSend_validateClones(self, v20, v21, v22);
    }

    else
    {
      v23 = objc_msgSend_delegate(self->_authoringEnvironment, v20, v21, v22);
      if (v23)
      {
        v24 = v23;
        if (objc_opt_respondsToSelector())
        {
          authoringEnvironment = self->_authoringEnvironment;
          v29 = objc_msgSend_array(self->_targets, v25, v26, v27);
          objc_msgSend_authoringEnvironment_didMoveItems_fromTransform_(v24, v30, authoringEnvironment, v29, *&self->_anon_188[16]);
        }
      }
    }
  }

  self->_cloneSet = 0;
  self->_cloning = 0;
  self->_action = 0;
  *self->_anon_130 = 0u;
  *&self->_anon_130[16] = 0u;
  *&self->_anon_130[32] = 0u;
  *&self->_anon_130[48] = 0u;
  self->_isMouseDown = 0;
  objc_msgSend_clearRuntimeItems(self, v31, v32, v33);
  v34 = *&a3[1].var0;
  v42 = *&a3->var2.y;
  v43 = v34;
  v35 = *&a3[1].var2.y;
  v44 = *&a3[1].var1.y;
  v45 = v35;
  v36 = *&a3->var1.y;
  v40 = *&a3->var0;
  v41 = v36;
  objc_msgSend_mouseMoved_(self, v37, &v40, v38);
  return v9;
}

- (id)world
{
  v4 = objc_msgSend_authoringEnvironment(self, a2, v2, v3);
  v8 = objc_msgSend_worldRenderer(v4, v5, v6, v7);

  return objc_msgSend_world(v8, v9, v10, v11);
}

- (void)removeClonesFromWorld
{
  objc_msgSend_firstObject(self->_cloneSet, a2, v2, v3);
  v5 = objc_opt_class();
  v10 = objc_msgSend_array(self->_cloneSet, v6, v7, v8);

  objc_msgSend_removeItemsFromWorld_(v5, v9, v10, v11);
}

- (void)addClonesToWorld
{
  v5 = objc_msgSend_world(self, a2, v2, v3);
  objc_msgSend_firstObject(self->_cloneSet, v6, v7, v8);
  v9 = objc_opt_class();
  v14 = objc_msgSend_array(self->_cloneSet, v10, v11, v12);

  objc_msgSend_addItems_toWorld_(v9, v13, v14, v5);
}

- (void)validateClones
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_delegate(self->_authoringEnvironment, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      v10 = objc_msgSend_authoringEnvironment(self, v7, v8, v9);
      objc_sync_enter(v10);
      objc_msgSend_firstObject(self->_cloneSet, v11, v12, v13);
      v14 = objc_opt_class();
      v18 = objc_msgSend_array(self->_cloneSet, v15, v16, v17);
      objc_msgSend_removeItemsFromWorld_(v14, v19, v18, v20);
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      cloneSet = self->_cloneSet;
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(cloneSet, v22, &v35, v39, 16);
      if (v26)
      {
        v27 = *v36;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v36 != v27)
            {
              objc_enumerationMutation(cloneSet);
            }

            objc_msgSend_validateClone(*(*(&v35 + 1) + 8 * i), v23, v24, v25);
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(cloneSet, v23, &v35, v39, 16);
        }

        while (v26);
      }

      objc_sync_exit(v10);
      authoringEnvironment = self->_authoringEnvironment;
      v33 = objc_msgSend_array(self->_cloneSet, v30, v31, v32);
      objc_msgSend_authoringEnvironment_didCloneSelection_(v6, v34, authoringEnvironment, v33);
    }
  }
}

- (id)setupClones
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_orderedSet(MEMORY[0x1E695DFA0], a2, v2, v3);
  v9 = objc_msgSend_world(self, v6, v7, v8);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  targets = self->_targets;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v11, &v28, v33, 16);
  if (v12)
  {
    v16 = v12;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(targets);
        }

        v19 = objc_msgSend_cloneForManipulators(*(*(&v28 + 1) + 8 * v18), v13, v14, v15);
        if (v19)
        {
          v20 = v19;
          v21 = objc_opt_class();
          v32 = v20;
          v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v22, &v32, 1);
          objc_msgSend_addItems_toWorld_(v21, v24, v23, v9);
          objc_msgSend_addObject_(v5, v25, v20, v26);
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v13, &v28, v33, 16);
    }

    while (v16);
  }

  return v5;
}

- (id)snapGuideIndexesOnAxis:(unint64_t)a3
{
  v3 = 608;
  if (a3 == 2)
  {
    v3 = 600;
  }

  if (a3 == 1)
  {
    v3 = 592;
  }

  return *(&self->super.isa + v3);
}

- (const)snapInfoAtIndex:(unint64_t)a3 axis:(unint64_t)a4
{
  v4 = 584;
  if (a4 == 2)
  {
    v4 = 576;
  }

  if (a4 == 1)
  {
    v4 = 568;
  }

  return (*(&self->super.isa + v4) + 24 * a3);
}

- (void)_prepareSnapToAlignData:(VFXManipulator *)self minOffset:(SEL)a2 maxOffset:(unsigned __int16)a3
{
  v62 = v3;
  v63 = v4;
  if ((a3 - 1) >= 3)
  {
    NSLog(&cfstr_Preparesnaptoa.isa, a2);
  }

  else
  {
    v5 = a3;
    v7 = (&self->super.isa + ((a3 - 1) & 0x1FFF));
    free(v7[71]);
    v7[71] = 0;
    if (objc_msgSend_count(self->_targets, v8, v9, v10))
    {
      v14 = objc_msgSend_world(self, v11, v12, v13);
      v18 = objc_msgSend_rootNode(v14, v15, v16, v17);
      v21 = objc_msgSend_childNodesPassingTest_(v18, v19, &unk_1F24E69D0, v20);
      v25 = objc_msgSend_count(v21, v22, v23, v24);
      v26 = malloc_type_calloc(0x18uLL, 7 * v25 + 7, 0x192BFC6BuLL);
      v7[71] = v26;
      v29 = v25;
      if (v25)
      {
        v30 = 0;
        v31 = 0;
        v61 = xmmword_1AFE201A0;
        while (1)
        {
          v32 = objc_msgSend_objectAtIndex_(v21, v27, v30, v28, *&v61);
          if ((sub_1AF110568(self->_targets, v32) & 1) == 0)
          {
            break;
          }

LABEL_17:
          if (v29 == ++v30)
          {
            v26 = v7[71];
            goto LABEL_21;
          }
        }

        v34 = objc_msgSend_nodeRef(v32, v27, v33, v28);
        objc_msgSend_worldTransform(v32, v35, v36, v37);
        v66 = 0u;
        v64 = v38;
        v65 = 0u;
        if (sub_1AF1B7A3C(v34, &v65))
        {
          v39 = sub_1AF1B9B04(v34);
          v40 = *(v39 + 16);
          v41 = *(v39 + 32);
          v42 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v39 + 48), v41, v65, 2), v40, *v65.f32, 1), *v39, v65.f32[0]);
          v42.i32[3] = v65.i32[3];
          v43 = v66;
          v43.i32[1] = v66.i32[0];
          v43.i32[2] = v66.i32[0];
          v44 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v40), vuzp2q_s32(vdupq_lane_s32(*v66.i8, 1), v66)), v43, vabsq_f32(*v39)), vzip2q_s32(vtrn1q_s32(v66, v66), v66), vabsq_f32(v41));
        }

        else
        {
          v45 = v64;
          v45.i32[3] = 1.0;
          v46.i64[0] = 0x3F0000003F000000;
          v46.i64[1] = 0x3F0000003F000000;
          v42 = vmulq_f32(vaddq_f32(v45, v61), v46);
          v44 = vmulq_f32(vsubq_f32(v61, v45), v46);
        }

        v65 = v42;
        v66 = v44;
        v47 = 3 * v31;
        *(v7[71] + v47 + 1) = v34;
        v48 = v31 + 1;
        *(v7[71] + 3 * v31 + 4) = v34;
        v49 = v31 + 2;
        *(v7[71] + 3 * v31 + 7) = v34;
        v50 = v31 + 3;
        *(v7[71] + 3 * v31 + 10) = v34;
        v51 = v31 + 4;
        *(v7[71] + 3 * v31 + 13) = v34;
        v52 = v31 + 5;
        *(v7[71] + 3 * v31 + 16) = v34;
        *(v7[71] + 3 * v31 + 19) = v34;
        v53 = v7[71];
        v53[2 * v47 + 4] = 0;
        switch(v5)
        {
          case 3:
            v53[6 * v31] = v64.i32[2];
            *&v53[6 * v48] = *(&v62 + 2) + (v65.f32[2] + *&v66.i32[2]);
            *&v53[6 * v49] = *(&v63 + 2) + (v65.f32[2] + *&v66.i32[2]);
            *&v53[6 * v50] = *(&v62 + 2) + (v65.f32[2] - *&v66.i32[2]);
            *&v53[6 * v51] = *(&v63 + 2) + (v65.f32[2] - *&v66.i32[2]);
            *&v53[6 * v52] = *(&v62 + 2) + v65.f32[2];
            v54 = *(&v63 + 2) + v65.f32[2];
            v55 = DWORD2(v62);
            v56 = DWORD2(v63);
            break;
          case 2:
            v53[6 * v31] = v64.i32[1];
            *&v53[6 * v48] = *(&v62 + 1) + (v65.f32[1] + *&v66.i32[1]);
            *&v53[6 * v49] = *(&v63 + 1) + (v65.f32[1] + *&v66.i32[1]);
            *&v53[6 * v50] = *(&v62 + 1) + (v65.f32[1] - *&v66.i32[1]);
            *&v53[6 * v51] = *(&v63 + 1) + (v65.f32[1] - *&v66.i32[1]);
            *&v53[6 * v52] = *(&v62 + 1) + v65.f32[1];
            v54 = *(&v63 + 1) + v65.f32[1];
            v55 = DWORD1(v62);
            v56 = DWORD1(v63);
            break;
          case 1:
            v53[6 * v31] = v64.i32[0];
            *&v53[6 * v48] = (v65.f32[0] + *v66.i32) + *&v62;
            *&v53[6 * v49] = (v65.f32[0] + *v66.i32) + *&v63;
            *&v53[6 * v50] = (v65.f32[0] - *v66.i32) + *&v62;
            *&v53[6 * v51] = (v65.f32[0] - *v66.i32) + *&v63;
            *&v53[6 * v52] = v65.f32[0] + *&v62;
            v54 = v65.f32[0] + *&v63;
            v55 = v62;
            v56 = v63;
            break;
          default:
LABEL_16:
            v31 += 7;
            goto LABEL_17;
        }

        v57 = &v53[6 * v31 + 36];
        *v57 = v54;
        v53[6 * v48 + 4] = v55;
        v53[6 * v49 + 4] = v56;
        v53[6 * v50 + 4] = v55;
        v53[6 * v51 + 4] = v56;
        v53[6 * v52 + 4] = v55;
        *(v57 + 4) = v56;
        goto LABEL_16;
      }

      v31 = 0;
LABEL_21:
      v26[3 * v31 + 1] = 0;
      v58 = v7[71];
      v59 = &v58[24 * v31];
      *v59 = 0;
      *(v59 + 4) = 0;
      v60 = v31 + 1;
      self->_snapToAlignCount = v60;
      qsort(v58, v60, 0x18uLL, sub_1AF110070);
    }
  }
}

- (void)prepareSnapToAlignData
{
  v86 = *MEMORY[0x1E69E9840];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v69 = 0;
  v5 = objc_msgSend_targets(self, a2, v2, v3);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v81, v85, 16);
  *&v11 = 0.0;
  if (v7)
  {
    v12 = v7;
    v13 = 0;
    v14.i64[0] = 0x80000000800000;
    v14.i64[1] = 0x80000000800000;
    v15.i64[0] = 0x80000000800000;
    v15.i64[1] = 0x80000000800000;
    v73 = v15;
    v76 = vnegq_f32(v14);
    v16 = *v82;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v82 != v16)
        {
          objc_enumerationMutation(v5);
        }

        v18 = *(*(&v81 + 1) + 8 * i);
        if (objc_msgSend_node(v18, v8, v9, v10))
        {
          DWORD2(v80) = 0;
          *&v80 = 0;
          v79 = 0;
          v78 = 0.0;
          v19 = objc_msgSend_node(v18, v8, v9, v10);
          if (objc_msgSend_getBoundingBoxMin_max_(v19, v20, &v80, &v78))
          {
            v21 = objc_msgSend_node(v18, v8, v9, v10);
            objc_msgSend_convertPosition_toNode_(v21, v22, 0, v23, *&v80);
            v80 = v24;
            v28 = objc_msgSend_node(v18, v25, v26, v27);
            objc_msgSend_convertPosition_toNode_(v28, v29, 0, v30, v78);
            v33 = v76.f32[2];
            v34 = *(&v80 + 2);
            if (*(&v80 + 2) >= v32)
            {
              v35 = v32;
            }

            else
            {
              v35 = *(&v80 + 2);
            }

            if (*(&v80 + 2) < v32)
            {
              v34 = v32;
            }

            if (v76.f32[2] >= v35)
            {
              v33 = v35;
            }

            v36 = vcgt_f32(v31, *&v80);
            v37 = vbsl_s8(v36, *&v80, v31);
            *v38.f32 = vbsl_s8(vcgt_f32(v37, *v76.f32), *v76.f32, v37);
            v38.i64[1] = __PAIR64__(v76.u32[3], LODWORD(v33));
            v39 = vbsl_s8(v36, v31, *&v80);
            *v40.f32 = vbsl_s8(vcgt_f32(v39, *v73.f32), v39, *v73.f32);
            v41 = v73.f32[2];
            if (v73.f32[2] < v34)
            {
              v41 = v34;
            }

            v40.i64[1] = __PAIR64__(v73.u32[3], LODWORD(v41));
            v13 = 1;
            v73 = v40;
            v76 = v38;
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v81, v85, 16);
    }

    while (v12);
    *&v11 = 0.0;
    v69 = 0;
    if (v13)
    {
      objc_msgSend_transform(self, v8, v9, v10);
      v70 = v42;
      objc_msgSend_transform(self, v43, v44, v45);
      v71 = __PAIR64__(v46, v70);
      objc_msgSend_transform(self, v47, v48, v49);
      v51.i64[0] = v71;
      v51.i64[1] = vextq_s8(v50, v50, 8uLL).u64[0];
      v69 = vsubq_f32(v73, v51).u64[0];
      objc_msgSend_transform(self, v52, v53, v54);
      v74 = v55;
      objc_msgSend_transform(self, v56, v57, v58);
      v75 = __PAIR64__(v59, v74);
      objc_msgSend_transform(self, v60, v61, v62);
      v64.i64[0] = v75;
      v64.i64[1] = vextq_s8(v63, v63, 8uLL).u64[0];
      v11 = vsubq_f32(v76, v64).u64[0];
    }
  }

  v77 = *&v11;
  objc_msgSend__prepareSnapToAlignData_minOffset_maxOffset_(self, v8, 1, v10, v69);
  objc_msgSend__prepareSnapToAlignData_minOffset_maxOffset_(self, v65, 2, v66, v77, v72);
  objc_msgSend__prepareSnapToAlignData_minOffset_maxOffset_(self, v67, 3, v68, v77, v72);
}

- (void)prepareSnapToAlignDataIfNeeded
{
  if (!self->_snapToAlignCount)
  {
    v5 = objc_msgSend_world(self, a2, v2, v3);
    v9 = objc_msgSend_worldRef(v5, v6, v7, v8);
    if (v9)
    {
      v13 = v9;
      sub_1AF1CEA20(v9);
      objc_msgSend_prepareSnapToAlignData(self, v14, v15, v16);

      sub_1AF1CEA9C(v13);
    }

    else
    {

      objc_msgSend_prepareSnapToAlignData(self, v10, v11, v12);
    }
  }
}

- (float32x4_t)_snapPositionToAlign:(uint64_t)a3 original:(_BYTE *)a4 unit:(uint64_t *)a5 axisMove:(float32x4_t)a6 rayStart:(float32x4_t)a7 rayDir:(float)a8 didSnap:(__n128)a9 snapIndexes:(__n128)a10
{
  v12 = a3;
  v34 = a9;
  v33 = a10;
  objc_msgSend_prepareSnapToAlignDataIfNeeded(a1, a2, a3, a4);
  *a4 = 0;
  if (a1[70] && a1[71])
  {
    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    sub_1AF1DA1B4(&v31, &v34, &v33);
    v15 = a6;
    v16 = vsubq_f32(a6, a7);
    v25 = v16;
    if (fabsf(v16.f32[0]) <= 0.00001)
    {
      v19 = 0;
      v18 = a6;
    }

    else
    {
      v17 = sub_1AF110A2C(a1[71], a1[70], &v30, a6.f32[0], a8);
      *a5 = v17;
      if (v17 == -1)
      {
        v19 = 0;
        v15 = a6;
        v18 = a6;
      }

      else
      {
        v18.i32[0] = v30;
        v15 = a6;
        *(v18.i64 + 4) = *(a6.i64 + 4);
        v19 = 1;
      }

      v16 = v25;
    }

    if (fabsf(v16.f32[1]) <= 0.00001)
    {
      v21 = 0;
    }

    else
    {
      v27 = v18;
      v20 = sub_1AF110A2C(a1[72], a1[70], &v30, v15.n128_f32[1], a8);
      a5[1] = v20;
      if (v20 == -1)
      {
        v21 = 0;
        v18 = v27;
      }

      else
      {
        v18.i64[0] = __PAIR64__(v30, v27.u32[0]);
        v18.i64[1] = v27.i64[1];
        v21 = 1;
      }

      v15 = a6;
      v16.i32[2] = v25.i32[2];
    }

    if (fabsf(v16.f32[2]) <= 0.00001)
    {
      v23 = 0;
    }

    else
    {
      v28 = v18;
      v22 = sub_1AF110A2C(a1[73], a1[70], &v30, v15.n128_f32[2], a8);
      a5[2] = v22;
      if (v22 == -1)
      {
        v23 = 0;
        v18 = v28;
      }

      else
      {
        v18.i64[0] = v28.i64[0];
        v18.i64[1] = __PAIR64__(v28.u32[3], v30);
        v23 = 1;
      }

      v15 = a6;
    }

    *a4 = v19 | v21 | v23;
    if (v19 | v21 | v23 && v12)
    {
      sub_1AF110CD4(v19, v21, v23, a5, v18, v15, v31, v32);
    }

    return v18;
  }

  return a6;
}

@end