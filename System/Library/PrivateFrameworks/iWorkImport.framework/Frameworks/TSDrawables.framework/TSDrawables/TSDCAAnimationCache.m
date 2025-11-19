@interface TSDCAAnimationCache
+ (id)supportedKeyPaths;
- (BOOL)doubleSidedCachedValueAtTime:(double)a3;
- (BOOL)doubleSidedCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (BOOL)hiddenCachedValueAtTime:(double)a3;
- (BOOL)hiddenCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (CATransform3D)transformCachedValueAtTime:(SEL)a3;
- (CATransform3D)transformCachedValueAtTime:(SEL)a3 layer:(double)a4 animation:(id)a5;
- (CATransform3D)transformInitialValue;
- (CGPoint)anchorPointCachedValueAtTime:(double)a3;
- (CGPoint)anchorPointCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (CGPoint)anchorPointInitialValue;
- (CGPoint)positionCachedValueAtTime:(double)a3;
- (CGPoint)positionCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (CGPoint)positionInitialValue;
- (CGPoint)transformTranslationCachedValueAtTime:(double)a3;
- (CGPoint)transformTranslationCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (CGPoint)transformTranslationInitialValue;
- (CGRect)boundsCachedValueAtTime:(double)a3;
- (CGRect)boundsCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (CGRect)boundsInitialValue;
- (TSDCAAnimationCache)initWithLayer:(id)a3 animation:(id)a4 overrideInitialValues:(id)a5 cacheAnimationValues:(BOOL)a6;
- (_TSDContentBlend)contentsCachedValueAtTime:(SEL)a3;
- (_TSDContentBlend)contentsCachedValueAtTime:(SEL)a3 layer:(double)a4 animation:(id)a5;
- (double)anchorPointZCachedValueAtTime:(double)a3;
- (double)anchorPointZCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)animationPercentByApplyingTimingFunctionForKeyPath:(id)a3 atTime:(double)a4;
- (double)borderWidthCachedValueAtTime:(double)a3;
- (double)borderWidthCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)opacityCachedValueAtTime:(double)a3;
- (double)opacityCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformRotationCachedValueAtTime:(double)a3;
- (double)transformRotationCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformRotationXCachedValueAtTime:(double)a3;
- (double)transformRotationXCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformRotationYCachedValueAtTime:(double)a3;
- (double)transformRotationYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformRotationZCachedValueAtTime:(double)a3;
- (double)transformRotationZCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformScaleXCachedValueAtTime:(double)a3;
- (double)transformScaleXCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformScaleXYCachedValueAtTime:(double)a3;
- (double)transformScaleXYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformScaleYCachedValueAtTime:(double)a3;
- (double)transformScaleYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformTranslationXCachedValueAtTime:(double)a3;
- (double)transformTranslationXCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformTranslationYCachedValueAtTime:(double)a3;
- (double)transformTranslationYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformTranslationZCachedValueAtTime:(double)a3;
- (double)transformTranslationZCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)zPositionCachedValueAtTime:(double)a3;
- (double)zPositionCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (id)getKeyPathsFromAnimation:(id)a3;
- (id)p_valueForKeyPath:(id)a3 atTime:(double)a4;
- (void)p_setupAndCacheAnimationValues:(BOOL)a3;
@end

@implementation TSDCAAnimationCache

+ (id)supportedKeyPaths
{
  if (qword_280A4C368 != -1)
  {
    sub_276808DA4();
  }

  v3 = qword_280A4C360;

  return v3;
}

- (double)animationPercentByApplyingTimingFunctionForKeyPath:(id)a3 atTime:(double)a4
{
  v5 = objc_msgSend_p_bestAnimationContextCachesForKeyPath_atTime_(self->_animationContextCache, a2, a3);
  v8 = objc_msgSend_firstObject(v5, v6, v7);

  objc_msgSend_percentAtTime_(v8, v9, v10, a4);
  v12 = v11;

  return v12;
}

- (id)getKeyPathsFromAnimation:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = objc_msgSend_animations(v4, v8, v9, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v21, v26, 16);
    if (v12)
    {
      v14 = v12;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = objc_msgSend_getKeyPathsFromAnimation_(self, v13, *(*(&v21 + 1) + 8 * i));
          objc_msgSend_addObjectsFromArray_(v7, v18, v17);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v21, v26, 16);
      }

      while (v14);
    }
  }

  else
  {
    v10 = objc_msgSend_keyPath(v4, v5, v6);
    v25 = v10;
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, &v25, 1);
  }

  return v7;
}

- (void)p_setupAndCacheAnimationValues:(BOOL)a3
{
  v363 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_animation(self, a2, a3);
  v6 = objc_msgSend_getKeyPathsFromAnimation_(self, v5, v4);

  v7 = objc_alloc(MEMORY[0x277CBEB40]);
  v349 = objc_msgSend_initWithArray_(v7, v8, v6);
  v9 = objc_opt_new();
  v358 = 0u;
  v359 = 0u;
  v360 = 0u;
  v361 = 0u;
  v12 = objc_msgSend_supportedKeyPaths(TSDCAAnimationCache, v10, v11);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v358, v362, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v359;
    do
    {
      v18 = 0;
      do
      {
        if (*v359 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v358 + 1) + 8 * v18);
        v21 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v15, v19, v349);
        if (v21)
        {
          goto LABEL_9;
        }

        if (v19 != @"contents")
        {
          v22 = objc_msgSend_layer(self, v15, v20);
          v21 = objc_msgSend_valueForKeyPath_(v22, v23, v19);

          if (!v21)
          {
            goto LABEL_10;
          }

LABEL_9:
          objc_msgSend_setObject_forKeyedSubscript_(v9, v15, v21, v19);

          goto LABEL_10;
        }

        v350 = 0uLL;
        *&v351 = 0;
        v21 = objc_msgSend_valueWithContentBlend_(MEMORY[0x277CCAE60], v15, &v350);
        if (v21)
        {
          goto LABEL_9;
        }

LABEL_10:
        ++v18;
      }

      while (v16 != v18);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v358, v362, 16);
      v16 = v24;
    }

    while (v24);
  }

  if (!self->_animationContextCache)
  {
    v27 = objc_msgSend_TSDCAAnimationContextCache(self->_animation, v25, v26);
    animationContextCache = self->_animationContextCache;
    self->_animationContextCache = v27;
  }

  objc_storeStrong(&self->_initialValues, v9);
  v32 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v29, @"anchorPoint");
  if (v32)
  {
    v33 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v30, @"anchorPoint");
    objc_msgSend_CGPointValue(v33, v34, v35);
    self->_anchorPointInitialValue.x = v36;
    self->_anchorPointInitialValue.y = v37;
  }

  else
  {
    v33 = objc_msgSend_layer(self, v30, v31);
    v39 = objc_msgSend_valueForKeyPath_(v33, v38, @"anchorPoint");
    objc_msgSend_CGPointValue(v39, v40, v41);
    self->_anchorPointInitialValue.x = v42;
    self->_anchorPointInitialValue.y = v43;
  }

  self->_anchorPointAnimationExists = objc_msgSend_containsObject_(v349, v44, @"anchorPoint");
  v48 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v45, @"anchorPointZ");
  if (v48)
  {
    v49 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v46, @"anchorPointZ");
    objc_msgSend_doubleValue(v49, v50, v51);
    self->_anchorPointZInitialValue = v52;
  }

  else
  {
    v49 = objc_msgSend_layer(self, v46, v47);
    v54 = objc_msgSend_valueForKeyPath_(v49, v53, @"anchorPointZ");
    objc_msgSend_doubleValue(v54, v55, v56);
    self->_anchorPointZInitialValue = v57;
  }

  self->_anchorPointZAnimationExists = objc_msgSend_containsObject_(v349, v58, @"anchorPointZ");
  v62 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v59, @"borderColor");
  if (v62)
  {
    v63 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v60, @"borderColor");
    self->_borderColorInitialValue = v63;
  }

  else
  {
    v63 = objc_msgSend_layer(self, v60, v61);
    v65 = objc_msgSend_valueForKeyPath_(v63, v64, @"borderColor");
    self->_borderColorInitialValue = v65;
  }

  self->_borderColorAnimationExists = objc_msgSend_containsObject_(v349, v66, @"borderColor");
  v70 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v67, @"borderWidth");
  if (v70)
  {
    v71 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v68, @"borderWidth");
    objc_msgSend_doubleValue(v71, v72, v73);
    self->_borderWidthInitialValue = v74;
  }

  else
  {
    v71 = objc_msgSend_layer(self, v68, v69);
    v76 = objc_msgSend_valueForKeyPath_(v71, v75, @"borderWidth");
    objc_msgSend_doubleValue(v76, v77, v78);
    self->_borderWidthInitialValue = v79;
  }

  self->_borderWidthAnimationExists = objc_msgSend_containsObject_(v349, v80, @"borderWidth");
  v84 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v81, @"bounds");
  if (v84)
  {
    v85 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v82, @"bounds");
    objc_msgSend_CGRectValue(v85, v86, v87);
    self->_boundsInitialValue.origin.x = v88;
    self->_boundsInitialValue.origin.y = v89;
    self->_boundsInitialValue.size.width = v90;
    self->_boundsInitialValue.size.height = v91;
  }

  else
  {
    v85 = objc_msgSend_layer(self, v82, v83);
    v93 = objc_msgSend_valueForKeyPath_(v85, v92, @"bounds");
    objc_msgSend_CGRectValue(v93, v94, v95);
    self->_boundsInitialValue.origin.x = v96;
    self->_boundsInitialValue.origin.y = v97;
    self->_boundsInitialValue.size.width = v98;
    self->_boundsInitialValue.size.height = v99;
  }

  self->_boundsAnimationExists = objc_msgSend_containsObject_(v349, v100, @"bounds");
  self->_contentsAnimationExists = objc_msgSend_containsObject_(v349, v101, @"contents");
  v105 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v102, @"doubleSided");
  if (v105)
  {
    v106 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v103, @"doubleSided");
    self->_doubleSidedInitialValue = objc_msgSend_BOOLValue(v106, v107, v108);
  }

  else
  {
    v106 = objc_msgSend_layer(self, v103, v104);
    v110 = objc_msgSend_valueForKeyPath_(v106, v109, @"doubleSided");
    self->_doubleSidedInitialValue = objc_msgSend_BOOLValue(v110, v111, v112);
  }

  self->_doubleSidedAnimationExists = objc_msgSend_containsObject_(v349, v113, @"doubleSided");
  v117 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v114, @"hidden");
  if (v117)
  {
    v118 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v115, @"hidden");
    self->_hiddenInitialValue = objc_msgSend_BOOLValue(v118, v119, v120);
  }

  else
  {
    v118 = objc_msgSend_layer(self, v115, v116);
    v122 = objc_msgSend_valueForKeyPath_(v118, v121, @"hidden");
    self->_hiddenInitialValue = objc_msgSend_BOOLValue(v122, v123, v124);
  }

  self->_hiddenAnimationExists = objc_msgSend_containsObject_(v349, v125, @"hidden");
  v129 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v126, @"opacity");
  if (v129)
  {
    v130 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v127, @"opacity");
    objc_msgSend_doubleValue(v130, v131, v132);
    self->_opacityInitialValue = v133;
  }

  else
  {
    v130 = objc_msgSend_layer(self, v127, v128);
    v135 = objc_msgSend_valueForKeyPath_(v130, v134, @"opacity");
    objc_msgSend_doubleValue(v135, v136, v137);
    self->_opacityInitialValue = v138;
  }

  self->_opacityAnimationExists = objc_msgSend_containsObject_(v349, v139, @"opacity");
  v143 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v140, @"position");
  if (v143)
  {
    v144 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v141, @"position");
    objc_msgSend_CGPointValue(v144, v145, v146);
    self->_positionInitialValue.x = v147;
    self->_positionInitialValue.y = v148;
  }

  else
  {
    v144 = objc_msgSend_layer(self, v141, v142);
    v150 = objc_msgSend_valueForKeyPath_(v144, v149, @"position");
    objc_msgSend_CGPointValue(v150, v151, v152);
    self->_positionInitialValue.x = v153;
    self->_positionInitialValue.y = v154;
  }

  self->_positionAnimationExists = objc_msgSend_containsObject_(v349, v155, @"position");
  p_transformInitialValue = &self->_transformInitialValue;
  v160 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v157, @"transform");
  if (v160)
  {
    v161 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v158, @"transform");
    v164 = v161;
    if (v161)
    {
      objc_msgSend_CATransform3DValue(v161, v162, v163);
    }

    else
    {
      v356 = 0u;
      v357 = 0u;
      v354 = 0u;
      v355 = 0u;
      v352 = 0u;
      v353 = 0u;
      v350 = 0u;
      v351 = 0u;
    }

    v170 = v355;
    *&self->_transformInitialValue.m31 = v354;
    *&self->_transformInitialValue.m33 = v170;
    v171 = v357;
    *&self->_transformInitialValue.m41 = v356;
    *&self->_transformInitialValue.m43 = v171;
    v172 = v351;
    *&p_transformInitialValue->m11 = v350;
    *&self->_transformInitialValue.m13 = v172;
    v173 = v353;
    *&self->_transformInitialValue.m21 = v352;
    *&self->_transformInitialValue.m23 = v173;
  }

  else
  {
    v164 = objc_msgSend_layer(self, v158, v159);
    v166 = objc_msgSend_valueForKeyPath_(v164, v165, @"transform");
    v169 = v166;
    if (v166)
    {
      objc_msgSend_CATransform3DValue(v166, v167, v168);
    }

    else
    {
      v356 = 0u;
      v357 = 0u;
      v354 = 0u;
      v355 = 0u;
      v352 = 0u;
      v353 = 0u;
      v350 = 0u;
      v351 = 0u;
    }

    v174 = v355;
    *&self->_transformInitialValue.m31 = v354;
    *&self->_transformInitialValue.m33 = v174;
    v175 = v357;
    *&self->_transformInitialValue.m41 = v356;
    *&self->_transformInitialValue.m43 = v175;
    v176 = v351;
    *&p_transformInitialValue->m11 = v350;
    *&self->_transformInitialValue.m13 = v176;
    v177 = v353;
    *&self->_transformInitialValue.m21 = v352;
    *&self->_transformInitialValue.m23 = v177;
  }

  self->_transformAnimationExists = objc_msgSend_containsObject_(v349, v178, @"transform");
  v182 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v179, @"transform.rotation");
  if (v182)
  {
    v183 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v180, @"transform.rotation");
    objc_msgSend_doubleValue(v183, v184, v185);
    self->_transformRotationInitialValue = v186;
  }

  else
  {
    v183 = objc_msgSend_layer(self, v180, v181);
    v188 = objc_msgSend_valueForKeyPath_(v183, v187, @"transform.rotation");
    objc_msgSend_doubleValue(v188, v189, v190);
    self->_transformRotationInitialValue = v191;
  }

  self->_transformRotationAnimationExists = objc_msgSend_containsObject_(v349, v192, @"transform.rotation");
  v196 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v193, @"transform.rotation.x");
  if (v196)
  {
    v197 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v194, @"transform.rotation.x");
    objc_msgSend_doubleValue(v197, v198, v199);
    self->_transformRotationXInitialValue = v200;
  }

  else
  {
    v197 = objc_msgSend_layer(self, v194, v195);
    v202 = objc_msgSend_valueForKeyPath_(v197, v201, @"transform.rotation.x");
    objc_msgSend_doubleValue(v202, v203, v204);
    self->_transformRotationXInitialValue = v205;
  }

  self->_transformRotationXAnimationExists = objc_msgSend_containsObject_(v349, v206, @"transform.rotation.x");
  v210 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v207, @"transform.rotation.y");
  if (v210)
  {
    v211 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v208, @"transform.rotation.y");
    objc_msgSend_doubleValue(v211, v212, v213);
    self->_transformRotationYInitialValue = v214;
  }

  else
  {
    v211 = objc_msgSend_layer(self, v208, v209);
    v216 = objc_msgSend_valueForKeyPath_(v211, v215, @"transform.rotation.y");
    objc_msgSend_doubleValue(v216, v217, v218);
    self->_transformRotationYInitialValue = v219;
  }

  self->_transformRotationYAnimationExists = objc_msgSend_containsObject_(v349, v220, @"transform.rotation.y");
  v224 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v221, @"transform.rotation.z");
  if (v224)
  {
    v225 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v222, @"transform.rotation.z");
    objc_msgSend_doubleValue(v225, v226, v227);
    self->_transformRotationZInitialValue = v228;
  }

  else
  {
    v225 = objc_msgSend_layer(self, v222, v223);
    v230 = objc_msgSend_valueForKeyPath_(v225, v229, @"transform.rotation.z");
    objc_msgSend_doubleValue(v230, v231, v232);
    self->_transformRotationZInitialValue = v233;
  }

  self->_transformRotationZAnimationExists = objc_msgSend_containsObject_(v349, v234, @"transform.rotation.z");
  v238 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v235, @"transform.scale.x");
  if (v238)
  {
    v239 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v236, @"transform.scale.x");
    objc_msgSend_doubleValue(v239, v240, v241);
    self->_transformScaleXInitialValue = v242;
  }

  else
  {
    v239 = objc_msgSend_layer(self, v236, v237);
    v244 = objc_msgSend_valueForKeyPath_(v239, v243, @"transform.scale.x");
    objc_msgSend_doubleValue(v244, v245, v246);
    self->_transformScaleXInitialValue = v247;
  }

  self->_transformScaleXAnimationExists = objc_msgSend_containsObject_(v349, v248, @"transform.scale.x");
  v252 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v249, @"transform.scale.y");
  if (v252)
  {
    v253 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v250, @"transform.scale.y");
    objc_msgSend_doubleValue(v253, v254, v255);
    self->_transformScaleYInitialValue = v256;
  }

  else
  {
    v253 = objc_msgSend_layer(self, v250, v251);
    v258 = objc_msgSend_valueForKeyPath_(v253, v257, @"transform.scale.y");
    objc_msgSend_doubleValue(v258, v259, v260);
    self->_transformScaleYInitialValue = v261;
  }

  self->_transformScaleYAnimationExists = objc_msgSend_containsObject_(v349, v262, @"transform.scale.y");
  v266 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v263, @"transform.scale.xy");
  if (v266)
  {
    v267 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v264, @"transform.scale.xy");
    objc_msgSend_doubleValue(v267, v268, v269);
    self->_transformScaleXYInitialValue = v270;
  }

  else
  {
    v267 = objc_msgSend_layer(self, v264, v265);
    v272 = objc_msgSend_valueForKeyPath_(v267, v271, @"transform.scale.xy");
    objc_msgSend_doubleValue(v272, v273, v274);
    self->_transformScaleXYInitialValue = v275;
  }

  self->_transformScaleXYAnimationExists = objc_msgSend_containsObject_(v349, v276, @"transform.scale.xy");
  v280 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v277, @"transform.translation");
  if (v280)
  {
    v281 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v278, @"transform.translation");
    objc_msgSend_CGPointValue(v281, v282, v283);
    self->_transformTranslationInitialValue.x = v284;
    self->_transformTranslationInitialValue.y = v285;
  }

  else
  {
    v281 = objc_msgSend_layer(self, v278, v279);
    v287 = objc_msgSend_valueForKeyPath_(v281, v286, @"transform.translation");
    objc_msgSend_CGPointValue(v287, v288, v289);
    self->_transformTranslationInitialValue.x = v290;
    self->_transformTranslationInitialValue.y = v291;
  }

  self->_transformTranslationAnimationExists = objc_msgSend_containsObject_(v349, v292, @"transform.translation");
  v296 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v293, @"transform.translation.x");
  if (v296)
  {
    v297 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v294, @"transform.translation.x");
    objc_msgSend_doubleValue(v297, v298, v299);
    self->_transformTranslationXInitialValue = v300;
  }

  else
  {
    v297 = objc_msgSend_layer(self, v294, v295);
    v302 = objc_msgSend_valueForKeyPath_(v297, v301, @"transform.translation.x");
    objc_msgSend_doubleValue(v302, v303, v304);
    self->_transformTranslationXInitialValue = v305;
  }

  self->_transformTranslationXAnimationExists = objc_msgSend_containsObject_(v349, v306, @"transform.translation.x");
  v310 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v307, @"transform.translation.y");
  if (v310)
  {
    v311 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v308, @"transform.translation.y");
    objc_msgSend_doubleValue(v311, v312, v313);
    self->_transformTranslationYInitialValue = v314;
  }

  else
  {
    v311 = objc_msgSend_layer(self, v308, v309);
    v316 = objc_msgSend_valueForKeyPath_(v311, v315, @"transform.translation.y");
    objc_msgSend_doubleValue(v316, v317, v318);
    self->_transformTranslationYInitialValue = v319;
  }

  self->_transformTranslationYAnimationExists = objc_msgSend_containsObject_(v349, v320, @"transform.translation.y");
  v324 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v321, @"transform.translation.z");
  if (v324)
  {
    v325 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v322, @"transform.translation.z");
    objc_msgSend_doubleValue(v325, v326, v327);
    self->_transformTranslationZInitialValue = v328;
  }

  else
  {
    v325 = objc_msgSend_layer(self, v322, v323);
    v330 = objc_msgSend_valueForKeyPath_(v325, v329, @"transform.translation.z");
    objc_msgSend_doubleValue(v330, v331, v332);
    self->_transformTranslationZInitialValue = v333;
  }

  self->_transformTranslationZAnimationExists = objc_msgSend_containsObject_(v349, v334, @"transform.translation.z");
  v338 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v335, @"zPosition");
  if (v338)
  {
    v339 = objc_msgSend_objectForKeyedSubscript_(self->_overrideInitialValuesDict, v336, @"zPosition");
    objc_msgSend_doubleValue(v339, v340, v341);
    self->_zPositionInitialValue = v342;
  }

  else
  {
    v339 = objc_msgSend_layer(self, v336, v337);
    v344 = objc_msgSend_valueForKeyPath_(v339, v343, @"zPosition");
    objc_msgSend_doubleValue(v344, v345, v346);
    self->_zPositionInitialValue = v347;
  }

  self->_zPositionAnimationExists = objc_msgSend_containsObject_(v349, v348, @"zPosition");
}

- (TSDCAAnimationCache)initWithLayer:(id)a3 animation:(id)a4 overrideInitialValues:(id)a5 cacheAnimationValues:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v25.receiver = self;
  v25.super_class = TSDCAAnimationCache;
  v14 = [(TSDCAAnimationCache *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_layer, a3);
    objc_storeStrong(&v15->_animation, a4);
    objc_msgSend_duration(v12, v16, v17);
    v15->_animationDuration = v18;
    v21 = objc_msgSend_copy(v13, v19, v20);
    overrideInitialValuesDict = v15->_overrideInitialValuesDict;
    v15->_overrideInitialValuesDict = v21;

    objc_msgSend_p_setupAndCacheAnimationValues_(v15, v23, v6);
  }

  return v15;
}

- (CGPoint)anchorPointCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"anchorPoint", a5, a3);
  objc_msgSend_CGPointValue(v5, v6, v7);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)anchorPointCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"anchorPoint", a3);
  objc_msgSend_CGPointValue(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (double)anchorPointZCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"anchorPointZ", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)anchorPointZCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"anchorPointZ", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)borderWidthCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"borderWidth", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)borderWidthCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"borderWidth", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (CGRect)boundsCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"bounds", a5, a3);
  objc_msgSend_CGRectValue(v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)boundsCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"bounds", a3);
  objc_msgSend_CGRectValue(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (_TSDContentBlend)contentsCachedValueAtTime:(SEL)a3 layer:(double)a4 animation:(id)a5
{
  v7 = objc_msgSend_p_valueForKeyPath_atTime_(self, a3, @"contents", a6, a4);
  if (v7)
  {
    v11 = v7;
    objc_msgSend_TSDContentBlendValue(v7, v8, v9);
    v7 = v11;
  }

  else
  {
    retstr->fromTR = 0;
    retstr->toTR = 0;
    retstr->blendPercent = 0.0;
  }

  return result;
}

- (_TSDContentBlend)contentsCachedValueAtTime:(SEL)a3
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a3, @"contents", a4);
  if (v5)
  {
    v9 = v5;
    objc_msgSend_TSDContentBlendValue(v5, v6, v7);
    v5 = v9;
  }

  else
  {
    retstr->fromTR = 0;
    retstr->toTR = 0;
    retstr->blendPercent = 0.0;
  }

  return result;
}

- (BOOL)doubleSidedCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"doubleSided", a5, a3);
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);

  return v8;
}

- (BOOL)doubleSidedCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"doubleSided", a3);
  v6 = objc_msgSend_BOOLValue(v3, v4, v5);

  return v6;
}

- (BOOL)hiddenCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"hidden", a5, a3);
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);

  return v8;
}

- (BOOL)hiddenCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"hidden", a3);
  v6 = objc_msgSend_BOOLValue(v3, v4, v5);

  return v6;
}

- (double)opacityCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"opacity", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)opacityCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"opacity", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (CGPoint)positionCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"position", a5, a3);
  objc_msgSend_CGPointValue(v5, v6, v7);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)positionCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"position", a3);
  objc_msgSend_CGPointValue(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CATransform3D)transformCachedValueAtTime:(SEL)a3 layer:(double)a4 animation:(id)a5
{
  v7 = objc_msgSend_p_valueForKeyPath_atTime_(self, a3, @"transform", a6, a4);
  if (v7)
  {
    v11 = v7;
    objc_msgSend_CATransform3DValue(v7, v8, v9);
    v7 = v11;
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  return result;
}

- (CATransform3D)transformCachedValueAtTime:(SEL)a3
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a3, @"transform", a4);
  if (v5)
  {
    v9 = v5;
    objc_msgSend_CATransform3DValue(v5, v6, v7);
    v5 = v9;
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  return result;
}

- (double)transformRotationCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.rotation", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)transformRotationCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.rotation", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)transformRotationXCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.rotation.x", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)transformRotationXCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.rotation.x", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)transformRotationYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.rotation.y", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)transformRotationYCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.rotation.y", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)transformRotationZCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.rotation.z", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)transformRotationZCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.rotation.z", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)transformScaleXCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.scale.x", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)transformScaleXCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.scale.x", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)transformScaleYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.scale.y", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)transformScaleYCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.scale.y", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)transformScaleXYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.scale.xy", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)transformScaleXYCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.scale.xy", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (CGPoint)transformTranslationCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.translation", a5, a3);
  objc_msgSend_CGPointValue(v5, v6, v7);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)transformTranslationCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.translation", a3);
  objc_msgSend_CGPointValue(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (double)transformTranslationXCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.translation.x", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)transformTranslationXCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.translation.x", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)transformTranslationYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.translation.y", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)transformTranslationYCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.translation.y", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)transformTranslationZCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.translation.z", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)transformTranslationZCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"transform.translation.z", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)zPositionCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  v5 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"zPosition", a5, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;

  return v9;
}

- (double)zPositionCachedValueAtTime:(double)a3
{
  v3 = objc_msgSend_p_valueForKeyPath_atTime_(self, a2, @"zPosition", a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (id)p_valueForKeyPath:(id)a3 atTime:(double)a4
{
  v6 = a3;
  v9 = objc_msgSend_animationContextCache(self, v7, v8);
  v11 = objc_msgSend_valueForKeyPath_atTime_animationCache_(v9, v10, v6, self, a4);

  return v11;
}

- (CGPoint)anchorPointInitialValue
{
  x = self->_anchorPointInitialValue.x;
  y = self->_anchorPointInitialValue.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)boundsInitialValue
{
  x = self->_boundsInitialValue.origin.x;
  y = self->_boundsInitialValue.origin.y;
  width = self->_boundsInitialValue.size.width;
  height = self->_boundsInitialValue.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)positionInitialValue
{
  x = self->_positionInitialValue.x;
  y = self->_positionInitialValue.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CATransform3D)transformInitialValue
{
  v3 = *&self[3].m12;
  *&retstr->m31 = *&self[2].m44;
  *&retstr->m33 = v3;
  v4 = *&self[3].m22;
  *&retstr->m41 = *&self[3].m14;
  *&retstr->m43 = v4;
  v5 = *&self[2].m32;
  *&retstr->m11 = *&self[2].m24;
  *&retstr->m13 = v5;
  v6 = *&self[2].m42;
  *&retstr->m21 = *&self[2].m34;
  *&retstr->m23 = v6;
  return self;
}

- (CGPoint)transformTranslationInitialValue
{
  x = self->_transformTranslationInitialValue.x;
  y = self->_transformTranslationInitialValue.y;
  result.y = y;
  result.x = x;
  return result;
}

@end