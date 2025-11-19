@interface TSDCAAnimationCache
- (BOOL)doubleSidedCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (BOOL)hiddenCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (BOOL)p_setupAndCacheAnimationValues:(BOOL)a3 verifyOnly:(BOOL)a4;
- (CATransform3D)transformCachedValueAtTime:(SEL)a3 layer:(double)a4 animation:(id)a5;
- (CATransform3D)transformInitialValue;
- (CGPoint)anchorPointCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (CGPoint)anchorPointInitialValue;
- (CGPoint)positionCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (CGPoint)positionInitialValue;
- (CGPoint)transformTranslationCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (CGPoint)transformTranslationInitialValue;
- (CGRect)boundsCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (CGRect)boundsInitialValue;
- (TSDCAAnimationCache)initWithLayer:(id)a3 animation:(id)a4 overrideInitialValues:(id)a5 cacheAnimationValues:(BOOL)a6;
- (double)anchorPointZCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)borderWidthCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)opacityCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformRotationCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformRotationXCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformRotationYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformRotationZCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformScaleXCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformScaleXYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformScaleYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformTranslationXCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformTranslationYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)transformTranslationZCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (double)zPositionCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5;
- (void)dealloc;
@end

@implementation TSDCAAnimationCache

- (BOOL)p_setupAndCacheAnimationValues:(BOOL)a3 verifyOnly:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v227[1] = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if ([(TSDCAAnimationCache *)self animation])
  {
    [(TSDCAAnimationCache *)self animation];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = [(TSDCAAnimationCache *)self animation];
    if (isKindOfClass)
    {
      v10 = [(CAAnimation *)v9 animations];
    }

    else
    {
      v227[0] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v227 count:1];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v221 objects:v226 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v222;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v222 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v7 addObject:{objc_msgSend(*(*(&v221 + 1) + 8 * i), "keyPath")}];
      }

      v13 = [v11 countByEnumeratingWithState:&v221 objects:v226 count:16];
    }

    while (v13);
  }

  v206 = v5;
  v207 = v7;
  v16 = objc_opt_new();
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v17 = [MEMORY[0x277CD9DF8] TSD_supportedKeyPaths];
  v18 = [v17 countByEnumeratingWithState:&v217 objects:v225 count:16];
  if (!v18)
  {
    v20 = 1;
    if (!v4)
    {
      goto LABEL_31;
    }

LABEL_29:

    v36 = v207;
    goto LABEL_254;
  }

  v19 = v18;
  v20 = 1;
  v21 = *v218;
  do
  {
    for (j = 0; j != v19; ++j)
    {
      if (*v218 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v217 + 1) + 8 * j);
      v24 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:v23];
      if (v24)
      {
        v25 = v24;
LABEL_22:
        [(NSDictionary *)v16 setObject:v25 forKeyedSubscript:v23];
        goto LABEL_23;
      }

      v25 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:v23];
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_23:
      if (v4)
      {
        v26 = [(NSDictionary *)[(TSDCAAnimationCache *)self initialValues] objectForKeyedSubscript:v23];
        if (([v25 isEqual:v26] & 1) == 0)
        {
          v208 = [MEMORY[0x277D6C290] currentHandler];
          v27 = v19;
          v28 = v21;
          v29 = v16;
          v30 = v4;
          v31 = v17;
          v32 = self;
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCAAnimationCache p_setupAndCacheAnimationValues:verifyOnly:]"];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CAAnimationAdditions.m"];
          v35 = v33;
          self = v32;
          v17 = v31;
          v4 = v30;
          v16 = v29;
          v21 = v28;
          v19 = v27;
          [v208 handleFailureInFunction:v35 file:v34 lineNumber:645 description:{@"Initial value not equal! Current:%@, Cached:%@", v25, v26}];
          v20 = 0;
        }
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v217 objects:v225 count:16];
  }

  while (v19);
  if (v4)
  {
    goto LABEL_29;
  }

LABEL_31:
  v36 = v207;
  if (v206)
  {
    [(CAAnimation *)self->_animation duration];
    self->_cacheValuesCount = (ceil(v37 * 600.0) + 1.0);
  }

  self->_initialValues = v16;
  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"anchorPoint"])
  {
    v38 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"anchorPoint"];
  }

  else
  {
    v38 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"anchorPoint"];
  }

  [v38 CGPointValue];
  self->_anchorPointInitialValue.x = v39;
  self->_anchorPointInitialValue.y = v40;
  v41 = [v207 containsObject:@"anchorPoint"];
  self->_anchorPointAnimationExists = v41;
  if (v206)
  {
    if (v41)
    {
      self->_anchorPointCache = malloc_type_calloc(0x10uLL, self->_cacheValuesCount, 0xBD087F8AuLL);
      cacheValuesCount = self->_cacheValuesCount;
      if (cacheValuesCount >= 1)
      {
        v43 = 0;
        for (k = 0; k < cacheValuesCount; ++k)
        {
          v45 = &self->_anchorPointCache[v43];
          v46 = k / (cacheValuesCount - 2);
          if (v46 > 1.0)
          {
            v46 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"anchorPoint" atTime:self animationCache:{v46 * self->_animationDuration), "CGPointValue"}];
          v45->x = v47;
          v45->y = v48;
          cacheValuesCount = self->_cacheValuesCount;
          ++v43;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"anchorPointZ"])
  {
    v49 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"anchorPointZ"];
  }

  else
  {
    v49 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"anchorPointZ"];
  }

  [v49 doubleValue];
  self->_anchorPointZInitialValue = v50;
  v51 = [v207 containsObject:@"anchorPointZ"];
  self->_anchorPointZAnimationExists = v51;
  if (v206)
  {
    if (v51)
    {
      self->_anchorPointZCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0x249E893BuLL);
      v52 = self->_cacheValuesCount;
      if (v52 >= 1)
      {
        for (m = 0; m < v52; ++m)
        {
          v54 = m / (v52 - 2);
          if (v54 > 1.0)
          {
            v54 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"anchorPointZ" atTime:self animationCache:{v54 * self->_animationDuration), "doubleValue"}];
          self->_anchorPointZCache[m] = v55;
          v52 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"borderColor"])
  {
    v56 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"borderColor"];
  }

  else
  {
    v56 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"borderColor"];
  }

  self->_borderColorInitialValue = v56;
  self->_borderColorAnimationExists = [v207 containsObject:@"borderColor"];
  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"borderWidth"])
  {
    v57 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"borderWidth"];
  }

  else
  {
    v57 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"borderWidth"];
  }

  [v57 doubleValue];
  self->_borderWidthInitialValue = v58;
  v59 = [v207 containsObject:@"borderWidth"];
  self->_borderWidthAnimationExists = v59;
  if (v206)
  {
    if (v59)
    {
      self->_borderWidthCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0x40407544uLL);
      v60 = self->_cacheValuesCount;
      if (v60 >= 1)
      {
        for (n = 0; n < v60; ++n)
        {
          v62 = n / (v60 - 2);
          if (v62 > 1.0)
          {
            v62 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"borderWidth" atTime:self animationCache:{v62 * self->_animationDuration), "doubleValue"}];
          self->_borderWidthCache[n] = v63;
          v60 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"bounds"])
  {
    v64 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"bounds"];
  }

  else
  {
    v64 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"bounds"];
  }

  [v64 CGRectValue];
  self->_boundsInitialValue.origin.x = v65;
  self->_boundsInitialValue.origin.y = v66;
  self->_boundsInitialValue.size.width = v67;
  self->_boundsInitialValue.size.height = v68;
  v69 = [v207 containsObject:@"bounds"];
  self->_boundsAnimationExists = v69;
  if (v206)
  {
    if (v69)
    {
      self->_boundsCache = malloc_type_calloc(0x20uLL, self->_cacheValuesCount, 0x64A1D635uLL);
      v70 = self->_cacheValuesCount;
      if (v70 >= 1)
      {
        v71 = 0;
        for (ii = 0; ii < v70; ++ii)
        {
          v73 = &self->_boundsCache[v71];
          v74 = ii / (v70 - 2);
          if (v74 > 1.0)
          {
            v74 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"bounds" atTime:self animationCache:{v74 * self->_animationDuration), "CGRectValue"}];
          v73->origin.x = v75;
          v73->origin.y = v76;
          v73->size.width = v77;
          v73->size.height = v78;
          v70 = self->_cacheValuesCount;
          ++v71;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"contents"])
  {
    v79 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"contents"];
  }

  else
  {
    v79 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"contents"];
  }

  self->_contentsInitialValue = v79;
  self->_contentsAnimationExists = [v207 containsObject:@"contents"];
  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"doubleSided"])
  {
    v80 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"doubleSided"];
  }

  else
  {
    v80 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"doubleSided"];
  }

  self->_doubleSidedInitialValue = [v80 BOOLValue];
  v81 = [v207 containsObject:@"doubleSided"];
  self->_doubleSidedAnimationExists = v81;
  if (v206)
  {
    if (v81)
    {
      self->_doubleSidedCache = malloc_type_calloc(1uLL, self->_cacheValuesCount, 0x444CB3DEuLL);
      v82 = self->_cacheValuesCount;
      if (v82 >= 1)
      {
        for (jj = 0; jj < v82; ++jj)
        {
          v84 = jj / (v82 - 2);
          if (v84 > 1.0)
          {
            v84 = 1.0;
          }

          self->_doubleSidedCache[jj] = [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"doubleSided" atTime:self animationCache:{v84 * self->_animationDuration), "BOOLValue"}];
          v82 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"hidden"])
  {
    v85 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"hidden"];
  }

  else
  {
    v85 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"hidden"];
  }

  self->_hiddenInitialValue = [v85 BOOLValue];
  v86 = [v207 containsObject:@"hidden"];
  self->_hiddenAnimationExists = v86;
  if (v206)
  {
    if (v86)
    {
      self->_hiddenCache = malloc_type_calloc(1uLL, self->_cacheValuesCount, 0x86B80724uLL);
      v87 = self->_cacheValuesCount;
      if (v87 >= 1)
      {
        for (kk = 0; kk < v87; ++kk)
        {
          v89 = kk / (v87 - 2);
          if (v89 > 1.0)
          {
            v89 = 1.0;
          }

          self->_hiddenCache[kk] = [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"hidden" atTime:self animationCache:{v89 * self->_animationDuration), "BOOLValue"}];
          v87 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"opacity"])
  {
    v90 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"opacity"];
  }

  else
  {
    v90 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"opacity"];
  }

  [v90 doubleValue];
  self->_opacityInitialValue = v91;
  v92 = [v207 containsObject:@"opacity"];
  self->_opacityAnimationExists = v92;
  if (v206)
  {
    if (v92)
    {
      self->_opacityCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0xAB2F51A2uLL);
      v93 = self->_cacheValuesCount;
      if (v93 >= 1)
      {
        for (mm = 0; mm < v93; ++mm)
        {
          v95 = mm / (v93 - 2);
          if (v95 > 1.0)
          {
            v95 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"opacity" atTime:self animationCache:{v95 * self->_animationDuration), "doubleValue"}];
          self->_opacityCache[mm] = v96;
          v93 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"position"])
  {
    v97 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"position"];
  }

  else
  {
    v97 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"position"];
  }

  [v97 CGPointValue];
  self->_positionInitialValue.x = v98;
  self->_positionInitialValue.y = v99;
  v100 = [v207 containsObject:@"position"];
  self->_positionAnimationExists = v100;
  if (v206)
  {
    if (v100)
    {
      self->_positionCache = malloc_type_calloc(0x10uLL, self->_cacheValuesCount, 0xFB2038FFuLL);
      v101 = self->_cacheValuesCount;
      if (v101 >= 1)
      {
        v102 = 0;
        for (nn = 0; nn < v101; ++nn)
        {
          v104 = &self->_positionCache[v102];
          v105 = nn / (v101 - 2);
          if (v105 > 1.0)
          {
            v105 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"position" atTime:self animationCache:{v105 * self->_animationDuration), "CGPointValue"}];
          v104->x = v106;
          v104->y = v107;
          v101 = self->_cacheValuesCount;
          ++v102;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform"])
  {
    v108 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform"];
    if (v108)
    {
      goto LABEL_121;
    }

LABEL_123:
    v215 = 0u;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
  }

  else
  {
    v108 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"transform"];
    if (!v108)
    {
      goto LABEL_123;
    }

LABEL_121:
    [v108 CATransform3DValue];
  }

  *&self->_transformInitialValue.m31 = v213;
  *&self->_transformInitialValue.m33 = v214;
  *&self->_transformInitialValue.m41 = v215;
  *&self->_transformInitialValue.m43 = v216;
  *&self->_transformInitialValue.m11 = v209;
  *&self->_transformInitialValue.m13 = v210;
  *&self->_transformInitialValue.m21 = v211;
  *&self->_transformInitialValue.m23 = v212;
  v109 = [v207 containsObject:@"transform"];
  self->_transformAnimationExists = v109;
  if (v206)
  {
    if (v109)
    {
      self->_transformCache = malloc_type_calloc(0x80uLL, self->_cacheValuesCount, 0xE5F8F105uLL);
      v110 = self->_cacheValuesCount;
      if (v110 >= 1)
      {
        v111 = 0;
        for (i1 = 0; i1 < v110; ++i1)
        {
          transformCache = self->_transformCache;
          v114 = i1 / (v110 - 2);
          if (v114 > 1.0)
          {
            v114 = 1.0;
          }

          v115 = [(CAAnimation *)self->_animation TSD_valueForKeyPath:@"transform" atTime:self animationCache:v114 * self->_animationDuration];
          if (v115)
          {
            [v115 CATransform3DValue];
          }

          else
          {
            v215 = 0u;
            v216 = 0u;
            v213 = 0u;
            v214 = 0u;
            v211 = 0u;
            v212 = 0u;
            v209 = 0u;
            v210 = 0u;
          }

          p_m11 = &transformCache[v111].m11;
          p_m11[2] = v211;
          p_m11[3] = v212;
          *p_m11 = v209;
          p_m11[1] = v210;
          p_m11[6] = v215;
          p_m11[7] = v216;
          p_m11[4] = v213;
          p_m11[5] = v214;
          v110 = self->_cacheValuesCount;
          ++v111;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.rotation"])
  {
    v117 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.rotation"];
  }

  else
  {
    v117 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"transform.rotation"];
  }

  [v117 doubleValue];
  self->_transformRotationInitialValue = v118;
  v119 = [v207 containsObject:@"transform.rotation"];
  self->_transformRotationAnimationExists = v119;
  if (v206)
  {
    if (v119)
    {
      self->_transformRotationCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0x7C7FE6ACuLL);
      v120 = self->_cacheValuesCount;
      if (v120 >= 1)
      {
        for (i2 = 0; i2 < v120; ++i2)
        {
          v122 = i2 / (v120 - 2);
          if (v122 > 1.0)
          {
            v122 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"transform.rotation" atTime:self animationCache:{v122 * self->_animationDuration), "doubleValue"}];
          self->_transformRotationCache[i2] = v123;
          v120 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.rotation.x"])
  {
    v124 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.rotation.x"];
  }

  else
  {
    v124 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"transform.rotation.x"];
  }

  [v124 doubleValue];
  self->_transformRotationXInitialValue = v125;
  v126 = [v207 containsObject:@"transform.rotation.x"];
  self->_transformRotationXAnimationExists = v126;
  if (v206)
  {
    if (v126)
    {
      self->_transformRotationXCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0x74A8CF6DuLL);
      v127 = self->_cacheValuesCount;
      if (v127 >= 1)
      {
        for (i3 = 0; i3 < v127; ++i3)
        {
          v129 = i3 / (v127 - 2);
          if (v129 > 1.0)
          {
            v129 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"transform.rotation.x" atTime:self animationCache:{v129 * self->_animationDuration), "doubleValue"}];
          self->_transformRotationXCache[i3] = v130;
          v127 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.rotation.y"])
  {
    v131 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.rotation.y"];
  }

  else
  {
    v131 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"transform.rotation.y"];
  }

  [v131 doubleValue];
  self->_transformRotationYInitialValue = v132;
  v133 = [v207 containsObject:@"transform.rotation.y"];
  self->_transformRotationYAnimationExists = v133;
  if (v206)
  {
    if (v133)
    {
      self->_transformRotationYCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0xE6453E7CuLL);
      v134 = self->_cacheValuesCount;
      if (v134 >= 1)
      {
        for (i4 = 0; i4 < v134; ++i4)
        {
          v136 = i4 / (v134 - 2);
          if (v136 > 1.0)
          {
            v136 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"transform.rotation.y" atTime:self animationCache:{v136 * self->_animationDuration), "doubleValue"}];
          self->_transformRotationYCache[i4] = v137;
          v134 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.rotation.z"])
  {
    v138 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.rotation.z"];
  }

  else
  {
    v138 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"transform.rotation.z"];
  }

  [v138 doubleValue];
  self->_transformRotationZInitialValue = v139;
  v140 = [v207 containsObject:@"transform.rotation.z"];
  self->_transformRotationZAnimationExists = v140;
  if (v206)
  {
    if (v140)
    {
      self->_transformRotationZCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0xA241DD7uLL);
      v141 = self->_cacheValuesCount;
      if (v141 >= 1)
      {
        for (i5 = 0; i5 < v141; ++i5)
        {
          v143 = i5 / (v141 - 2);
          if (v143 > 1.0)
          {
            v143 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"transform.rotation.z" atTime:self animationCache:{v143 * self->_animationDuration), "doubleValue"}];
          self->_transformRotationZCache[i5] = v144;
          v141 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.scale.x"])
  {
    v145 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.scale.x"];
  }

  else
  {
    v145 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"transform.scale.x"];
  }

  [v145 doubleValue];
  self->_transformScaleXInitialValue = v146;
  v147 = [v207 containsObject:@"transform.scale.x"];
  self->_transformScaleXAnimationExists = v147;
  if (v206)
  {
    if (v147)
    {
      self->_transformScaleXCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0xF0DB6857uLL);
      v148 = self->_cacheValuesCount;
      if (v148 >= 1)
      {
        for (i6 = 0; i6 < v148; ++i6)
        {
          v150 = i6 / (v148 - 2);
          if (v150 > 1.0)
          {
            v150 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"transform.scale.x" atTime:self animationCache:{v150 * self->_animationDuration), "doubleValue"}];
          self->_transformScaleXCache[i6] = v151;
          v148 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.scale.y"])
  {
    v152 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.scale.y"];
  }

  else
  {
    v152 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"transform.scale.y"];
  }

  [v152 doubleValue];
  self->_transformScaleYInitialValue = v153;
  v154 = [v207 containsObject:@"transform.scale.y"];
  self->_transformScaleYAnimationExists = v154;
  if (v206)
  {
    if (v154)
    {
      self->_transformScaleYCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0xCC9414C6uLL);
      v155 = self->_cacheValuesCount;
      if (v155 >= 1)
      {
        for (i7 = 0; i7 < v155; ++i7)
        {
          v157 = i7 / (v155 - 2);
          if (v157 > 1.0)
          {
            v157 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"transform.scale.y" atTime:self animationCache:{v157 * self->_animationDuration), "doubleValue"}];
          self->_transformScaleYCache[i7] = v158;
          v155 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.scale.xy"])
  {
    v159 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.scale.xy"];
  }

  else
  {
    v159 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"transform.scale.xy"];
  }

  [v159 doubleValue];
  self->_transformScaleXYInitialValue = v160;
  v161 = [v207 containsObject:@"transform.scale.xy"];
  self->_transformScaleXYAnimationExists = v161;
  if (v206)
  {
    if (v161)
    {
      self->_transformScaleXYCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0x538E0521uLL);
      v162 = self->_cacheValuesCount;
      if (v162 >= 1)
      {
        for (i8 = 0; i8 < v162; ++i8)
        {
          v164 = i8 / (v162 - 2);
          if (v164 > 1.0)
          {
            v164 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"transform.scale.xy" atTime:self animationCache:{v164 * self->_animationDuration), "doubleValue"}];
          self->_transformScaleXYCache[i8] = v165;
          v162 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.translation"])
  {
    v166 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.translation"];
  }

  else
  {
    v166 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"transform.translation"];
  }

  [v166 CGPointValue];
  self->_transformTranslationInitialValue.x = v167;
  self->_transformTranslationInitialValue.y = v168;
  v169 = [v207 containsObject:@"transform.translation"];
  self->_transformTranslationAnimationExists = v169;
  if (v206)
  {
    if (v169)
    {
      self->_transformTranslationCache = malloc_type_calloc(0x10uLL, self->_cacheValuesCount, 0x512A0FCDuLL);
      v170 = self->_cacheValuesCount;
      if (v170 >= 1)
      {
        v171 = 0;
        for (i9 = 0; i9 < v170; ++i9)
        {
          v173 = &self->_transformTranslationCache[v171];
          v174 = i9 / (v170 - 2);
          if (v174 > 1.0)
          {
            v174 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"transform.translation" atTime:self animationCache:{v174 * self->_animationDuration), "CGPointValue"}];
          v173->x = v175;
          v173->y = v176;
          v170 = self->_cacheValuesCount;
          ++v171;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.translation.x"])
  {
    v177 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.translation.x"];
  }

  else
  {
    v177 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"transform.translation.x"];
  }

  [v177 doubleValue];
  self->_transformTranslationXInitialValue = v178;
  v179 = [v207 containsObject:@"transform.translation.x"];
  self->_transformTranslationXAnimationExists = v179;
  if (v206)
  {
    if (v179)
    {
      self->_transformTranslationXCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0x2059FE19uLL);
      v180 = self->_cacheValuesCount;
      if (v180 >= 1)
      {
        for (i10 = 0; i10 < v180; ++i10)
        {
          v182 = i10 / (v180 - 2);
          if (v182 > 1.0)
          {
            v182 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"transform.translation.x" atTime:self animationCache:{v182 * self->_animationDuration), "doubleValue"}];
          self->_transformTranslationXCache[i10] = v183;
          v180 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.translation.y"])
  {
    v184 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.translation.y"];
  }

  else
  {
    v184 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"transform.translation.y"];
  }

  [v184 doubleValue];
  self->_transformTranslationYInitialValue = v185;
  v186 = [v207 containsObject:@"transform.translation.y"];
  self->_transformTranslationYAnimationExists = v186;
  if (v206)
  {
    if (v186)
    {
      self->_transformTranslationYCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0x6098A4C1uLL);
      v187 = self->_cacheValuesCount;
      if (v187 >= 1)
      {
        for (i11 = 0; i11 < v187; ++i11)
        {
          v189 = i11 / (v187 - 2);
          if (v189 > 1.0)
          {
            v189 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"transform.translation.y" atTime:self animationCache:{v189 * self->_animationDuration), "doubleValue"}];
          self->_transformTranslationYCache[i11] = v190;
          v187 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.translation.z"])
  {
    v191 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"transform.translation.z"];
  }

  else
  {
    v191 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"transform.translation.z"];
  }

  [v191 doubleValue];
  self->_transformTranslationZInitialValue = v192;
  v193 = [v207 containsObject:@"transform.translation.z"];
  self->_transformTranslationZAnimationExists = v193;
  if (v206)
  {
    if (v193)
    {
      self->_transformTranslationZCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0xD4910148uLL);
      v194 = self->_cacheValuesCount;
      if (v194 >= 1)
      {
        for (i12 = 0; i12 < v194; ++i12)
        {
          v196 = i12 / (v194 - 2);
          if (v196 > 1.0)
          {
            v196 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"transform.translation.z" atTime:self animationCache:{v196 * self->_animationDuration), "doubleValue"}];
          self->_transformTranslationZCache[i12] = v197;
          v194 = self->_cacheValuesCount;
        }
      }
    }
  }

  if ([(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"zPosition"])
  {
    v198 = [(NSDictionary *)self->_overrideInitialValuesDict objectForKeyedSubscript:@"zPosition"];
  }

  else
  {
    v198 = [(CALayer *)[(TSDCAAnimationCache *)self layer] valueForKeyPath:@"zPosition"];
  }

  [v198 doubleValue];
  self->_zPositionInitialValue = v199;
  v200 = [v207 containsObject:@"zPosition"];
  self->_zPositionAnimationExists = v200;
  if (v206)
  {
    if (v200)
    {
      self->_zPositionCache = malloc_type_calloc(8uLL, self->_cacheValuesCount, 0x3D9F26F2uLL);
      v201 = self->_cacheValuesCount;
      if (v201 >= 1)
      {
        for (i13 = 0; i13 < v201; ++i13)
        {
          v203 = i13 / (v201 - 2);
          if (v203 > 1.0)
          {
            v203 = 1.0;
          }

          [-[CAAnimation TSD_valueForKeyPath:atTime:animationCache:](self->_animation TSD_valueForKeyPath:@"zPosition" atTime:self animationCache:{v203 * self->_animationDuration), "doubleValue"}];
          self->_zPositionCache[i13] = v204;
          v201 = self->_cacheValuesCount;
        }
      }
    }
  }

LABEL_254:

  return v20 & 1;
}

- (TSDCAAnimationCache)initWithLayer:(id)a3 animation:(id)a4 overrideInitialValues:(id)a5 cacheAnimationValues:(BOOL)a6
{
  v6 = a6;
  v14.receiver = self;
  v14.super_class = TSDCAAnimationCache;
  v10 = [(TSDCAAnimationCache *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_layer = a3;
    v10->_animation = a4;
    [a4 duration];
    v11->_animationDuration = v12;
    v11->_overrideInitialValuesDict = [a5 copy];
    [(TSDCAAnimationCache *)v11 p_setupAndCacheAnimationValues:v6 verifyOnly:0];
  }

  return v11;
}

- (void)dealloc
{
  free(self->_anchorPointCache);
  free(self->_anchorPointZCache);
  free(self->_borderWidthCache);
  free(self->_boundsCache);
  free(self->_doubleSidedCache);
  free(self->_hiddenCache);
  free(self->_opacityCache);
  free(self->_positionCache);
  free(self->_transformCache);
  free(self->_transformRotationCache);
  free(self->_transformRotationXCache);
  free(self->_transformRotationYCache);
  free(self->_transformRotationZCache);
  free(self->_transformScaleXCache);
  free(self->_transformScaleYCache);
  free(self->_transformScaleXYCache);
  free(self->_transformTranslationCache);
  free(self->_transformTranslationXCache);
  free(self->_transformTranslationYCache);
  free(self->_transformTranslationZCache);
  free(self->_zPositionCache);
  v3.receiver = self;
  v3.super_class = TSDCAAnimationCache;
  [(TSDCAAnimationCache *)&v3 dealloc];
}

- (CGPoint)anchorPointCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = &self->_anchorPointCache[v6];
  x = v7->x;
  y = v7->y;
  result.y = y;
  result.x = x;
  return result;
}

- (double)anchorPointZCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_anchorPointZCache[v6];
}

- (double)borderWidthCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_borderWidthCache[v6];
}

- (CGRect)boundsCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = &self->_boundsCache[v6];
  x = v7->origin.x;
  y = v7->origin.y;
  width = v7->size.width;
  height = v7->size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)doubleSidedCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_doubleSidedCache[v6];
}

- (BOOL)hiddenCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_hiddenCache[v6];
}

- (double)opacityCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_opacityCache[v6];
}

- (CGPoint)positionCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = &self->_positionCache[v6];
  x = v7->x;
  y = v7->y;
  result.y = y;
  result.x = x;
  return result;
}

- (CATransform3D)transformCachedValueAtTime:(SEL)a3 layer:(double)a4 animation:(id)a5
{
  m14 = self->m14;
  v7 = a4 / self->m13 * *&m14;
  if (v7 > (*&m14 - 1))
  {
    v7 = (*&m14 - 1);
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = (*&self->m41 + (v7 << 7));
  v9 = v8[5];
  *&retstr->m31 = v8[4];
  *&retstr->m33 = v9;
  v10 = v8[7];
  *&retstr->m41 = v8[6];
  *&retstr->m43 = v10;
  v11 = v8[1];
  *&retstr->m11 = *v8;
  *&retstr->m13 = v11;
  v12 = v8[3];
  *&retstr->m21 = v8[2];
  *&retstr->m23 = v12;
  return self;
}

- (double)transformRotationCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_transformRotationCache[v6];
}

- (double)transformRotationXCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_transformRotationXCache[v6];
}

- (double)transformRotationYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_transformRotationYCache[v6];
}

- (double)transformRotationZCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_transformRotationZCache[v6];
}

- (double)transformScaleXCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_transformScaleXCache[v6];
}

- (double)transformScaleYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_transformScaleYCache[v6];
}

- (double)transformScaleXYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_transformScaleXYCache[v6];
}

- (CGPoint)transformTranslationCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = &self->_transformTranslationCache[v6];
  x = v7->x;
  y = v7->y;
  result.y = y;
  result.x = x;
  return result;
}

- (double)transformTranslationXCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_transformTranslationXCache[v6];
}

- (double)transformTranslationYCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_transformTranslationYCache[v6];
}

- (double)transformTranslationZCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_transformTranslationZCache[v6];
}

- (double)zPositionCachedValueAtTime:(double)a3 layer:(id)a4 animation:(id)a5
{
  cacheValuesCount = self->_cacheValuesCount;
  v6 = a3 / self->_animationDuration * cacheValuesCount;
  if (v6 > (cacheValuesCount - 1))
  {
    v6 = (cacheValuesCount - 1);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return self->_zPositionCache[v6];
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
  v3 = *&self[4].m21;
  *&retstr->m31 = *&self[4].m13;
  *&retstr->m33 = v3;
  v4 = *&self[4].m31;
  *&retstr->m41 = *&self[4].m23;
  *&retstr->m43 = v4;
  v5 = *&self[3].m41;
  *&retstr->m11 = *&self[3].m33;
  *&retstr->m13 = v5;
  v6 = *&self[4].m11;
  *&retstr->m21 = *&self[3].m43;
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