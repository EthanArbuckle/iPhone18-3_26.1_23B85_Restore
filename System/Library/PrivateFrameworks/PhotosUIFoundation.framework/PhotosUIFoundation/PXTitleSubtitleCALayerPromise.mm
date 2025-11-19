@interface PXTitleSubtitleCALayerPromise
+ (BOOL)_defaultSkipShapeLayer;
+ (BOOL)_drawTypographicalGuidelines;
+ (BOOL)_preventFontFallback;
+ (BOOL)_simulateSlowTextTypesetting;
- (CGRect)layerContentBounds;
- (PXTitleSubtitleCALayerPromise)init;
- (id)_attributedStringForLabelWithText:(id)a3 spec:(id)a4;
- (id)_linesToRenderWithContext:(CGContext *)a3;
- (id)_stringByReplacingNonbreakableWhitespaceToAllowLineWrapping:(id)a3 maxWidth:(double)a4;
- (id)createCustomLayer;
- (void)drawLayerContentInContext:(CGContext *)a3;
- (void)performChanges:(id)a3;
- (void)setSpec:(id)a3;
- (void)setSubtitleText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setTypesettingMode:(int64_t)a3;
@end

@implementation PXTitleSubtitleCALayerPromise

- (CGRect)layerContentBounds
{
  x = self->_layerContentBounds.origin.x;
  y = self->_layerContentBounds.origin.y;
  width = self->_layerContentBounds.size.width;
  height = self->_layerContentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setTypesettingMode:(int64_t)a3
{
  if (self->_typesettingMode != a3)
  {
    self->_typesettingMode = a3;
    [(PXCALayerPromise *)self invalidateLayer];
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXCALayerPromise *)self invalidateLayer];
    v5 = v6;
  }
}

- (void)setSubtitleText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_subtitleText != v4)
  {
    v8 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      subtitleText = self->_subtitleText;
      self->_subtitleText = v6;

      v4 = [(PXCALayerPromise *)self invalidateLayer];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_titleText != v4)
  {
    v8 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      titleText = self->_titleText;
      self->_titleText = v6;

      v4 = [(PXCALayerPromise *)self invalidateLayer];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXTitleSubtitleCALayerPromise;
  [(PXCALayerPromise *)&v3 performChanges:a3];
}

- (id)_stringByReplacingNonbreakableWhitespaceToAllowLineWrapping:(id)a3 maxWidth:(double)a4
{
  v5 = a3;
  v6 = [v5 mutableCopy];
  if (PXBreakableWhitespaceCharacterSet_onceToken != -1)
  {
    dispatch_once(&PXBreakableWhitespaceCharacterSet_onceToken, &__block_literal_global_4774);
  }

  v7 = PXBreakableWhitespaceCharacterSet_breakableWhitespaceCharacterSet;
  v8 = objc_alloc(MEMORY[0x1E696AE88]);
  v9 = [v5 string];
  v10 = [v8 initWithString:v9];

  [v10 setCharactersToBeSkipped:0];
  v11 = [v10 scanLocation];
  v23 = 0;
  v12 = [v10 scanUpToCharactersFromSet:v7 intoString:&v23];
  v13 = v23;
  v14 = v13;
  if (v12)
  {
    do
    {
      v15 = [v14 length];
      v16 = [v5 attributedSubstringFromRange:{v11, v15}];
      [v16 size];
      if (v17 > a4)
      {
        v18 = PXAttributedStringByReplacingOccurences(v16, @" ", @" ");

        [v6 replaceCharactersInRange:v11 withAttributedString:{v15, v18}];
        v16 = v18;
      }

      v19 = [v7 invertedSet];
      [v10 scanUpToCharactersFromSet:v19 intoString:0];

      v11 = [v10 scanLocation];
      v23 = v14;
      LOBYTE(v19) = [v10 scanUpToCharactersFromSet:v7 intoString:&v23];
      v20 = v23;

      v14 = v20;
    }

    while ((v19 & 1) != 0);
  }

  else
  {
    v20 = v13;
  }

  v21 = [v6 copy];

  return v21;
}

- (id)_attributedStringForLabelWithText:(id)a3 spec:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && (objc_msgSend(v7, "isHidden") & 1) == 0)
  {
    v9 = [v7 textAttributes];
    v10 = [v7 capitalization];
    if (!+[PXTitleSubtitleCALayerPromise _preventFontFallback])
    {
      v11 = [v7 fallbackTextAttributes];
      if (v11)
      {
        v12 = v11;
        v13 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
        CanEncodeString = PXFontCanEncodeString(v13, v6);

        if (!CanEncodeString)
        {
          v15 = [v7 fallbackTextAttributes];

          v10 = [v7 fallbackCapitalization];
          v9 = v15;
        }
      }
    }

    v16 = [v6 px_stringByApplyingCapitalization:v10];
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = v17;
    if (v9)
    {
      [v17 addEntriesFromDictionary:v9];
    }

    else
    {
      v19 = [v7 font];
      [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69DB648]];
    }

    v20 = [v7 textColor];
    [v18 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    v21 = *MEMORY[0x1E69DB688];
    v22 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
    v23 = [v22 mutableCopy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    }

    v26 = v25;

    [v26 setAlignment:{objc_msgSend(v7, "textAlignment")}];
    [v18 setObject:v26 forKeyedSubscript:v21];
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16 attributes:v18];
  }

  else
  {
    v8 = 0;
  }

  [v8 size];
  v28 = v27;
  [(PXCALayerPromise *)self bounds];
  if (v28 > v29)
  {
    [(PXCALayerPromise *)self bounds];
    v31 = [(PXTitleSubtitleCALayerPromise *)self _stringByReplacingNonbreakableWhitespaceToAllowLineWrapping:v8 maxWidth:v30];

    v8 = v31;
  }

  return v8;
}

- (id)_linesToRenderWithContext:(CGContext *)a3
{
  v248 = *MEMORY[0x1E69E9840];
  [(PXCALayerPromise *)self bounds];
  v6 = v5;
  v8 = v7;
  v175 = v9;
  v177 = v10;
  v11 = [(PXTitleSubtitleCALayerPromise *)self spec];
  v171 = self;
  v12 = [(PXTitleSubtitleCALayerPromise *)self typesettingMode];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = [[PXLabelTypesetter alloc] initWithContext:a3];
  v15.f64[0] = v175;
  v15.f64[1] = v177;
  if (v12 == 2)
  {
    v172 = vmulq_f64(v15, vdupq_n_s64(0x4059000000000000uLL));
  }

  else
  {
    v172 = v15;
    if (!v12)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:v171 file:@"PXTitleSubtitleCALayerPromise.m" lineNumber:165 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PXTitleSubtitleCALayerPromise__linesToRenderWithContext___block_invoke;
  aBlock[3] = &unk_1E7BB7BB0;
  aBlock[4] = v171;
  v17 = v14;
  v233 = v17;
  v235 = v6;
  v236 = v8;
  v237 = v172;
  v238 = v12;
  v18 = v13;
  v234 = v18;
  v19 = _Block_copy(aBlock);
  v20 = [(PXTitleSubtitleCALayerPromise *)v171 titleText];
  v21 = [v11 titleLabelSpec];
  v22 = v19[2](v19, v20, v21, 0.0);

  v23 = [(PXTitleSubtitleCALayerPromise *)v171 subtitleText];
  v24 = [v11 subtitleLabelSpec];
  [v11 distanceBetweenTitleBaselineAndSubtitleBaseline];
  v167 = v19;
  v169 = (v19[2])(v19, v23, v24);

  v249.origin.x = v6;
  v249.origin.y = v8;
  v249.size.width = v175;
  v249.size.height = v177;
  MidY = CGRectGetMidY(v249);
  v26 = *(MEMORY[0x1E695F050] + 8);
  v168 = *MEMORY[0x1E695F050];
  v28 = *(MEMORY[0x1E695F050] + 16);
  v27 = *(MEMORY[0x1E695F050] + 24);
  v29 = 1.0;
  if (![v18 count])
  {
    v30 = 0;
    v31 = v171;
    goto LABEL_9;
  }

  if ([(PXCALayerPromise *)v171 shouldCancel])
  {
    v30 = 0;
    v31 = v171;
LABEL_9:
    v32 = v167;
    v33 = v168;
    goto LABEL_100;
  }

  v163 = v18;
  v161 = v17;
  v162 = v26;
  if (v12 == 2)
  {
    v173 = v28;
    v231[0] = MEMORY[0x1E69E9820];
    v231[1] = 3221225472;
    v231[2] = __59__PXTitleSubtitleCALayerPromise__linesToRenderWithContext___block_invoke_3;
    v231[3] = &__block_descriptor_64_e17_v16__0__NSArray_8l;
    *&v231[4] = v6;
    *&v231[5] = v8;
    *&v231[6] = v175;
    *&v231[7] = v177;
    v34 = _Block_copy(v231);
    v34[2](v34, v22);
    v160 = v34;
    v34[2](v34, v169);
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v225[0] = MEMORY[0x1E69E9820];
    v225[1] = 3221225472;
    v225[2] = __59__PXTitleSubtitleCALayerPromise__linesToRenderWithContext___block_invoke_4;
    v225[3] = &unk_1E7BB7BF8;
    v38 = v35;
    v226 = v38;
    v39 = v36;
    v227 = v39;
    v40 = v37;
    v230 = a2;
    v228 = v40;
    v229 = v171;
    v41 = _Block_copy(v225);
    v42 = [v11 titleLabelSpec];
    v43 = v41[2](v41, [v42 textAlignment]);
    [v43 addObjectsFromArray:v22];

    v44 = [v11 subtitleLabelSpec];
    v45 = v41[2](v41, [v44 textAlignment]);
    [v45 addObjectsFromArray:v169];

    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v46 = v38;
    v47 = [v46 countByEnumeratingWithState:&v221 objects:v247 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v222;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v222 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v221 + 1) + 8 * i);
          if (v51)
          {
            [*(*(&v221 + 1) + 8 * i) transform];
            v52 = *&v218;
          }

          else
          {
            v219 = 0u;
            v220 = 0u;
            v52 = 0.0;
            v218 = 0u;
          }

          v53 = 1.0 - v52;
          v250.origin.x = v6;
          v250.origin.y = v8;
          v250.size.width = v175;
          v250.size.height = v177;
          [v51 translateHorizontallyBy:v53 * CGRectGetMinX(v250)];
        }

        v48 = [v46 countByEnumeratingWithState:&v221 objects:v247 count:16];
      }

      while (v48);
    }

    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v54 = v39;
    v55 = [v54 countByEnumeratingWithState:&v214 objects:v246 count:16];
    height = v27;
    width = v173;
    y = v26;
    x = v168;
    if (v55)
    {
      v60 = v55;
      v61 = *v215;
      height = v27;
      width = v173;
      y = v162;
      x = v168;
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v215 != v61)
          {
            objc_enumerationMutation(v54);
          }

          [*(*(&v214 + 1) + 8 * j) imageBounds];
          v264.origin.x = v63;
          v264.origin.y = v64;
          v264.size.width = v65;
          v264.size.height = v66;
          v251.origin.x = x;
          v251.origin.y = y;
          v251.size.width = width;
          v251.size.height = height;
          v252 = CGRectUnion(v251, v264);
          x = v252.origin.x;
          y = v252.origin.y;
          width = v252.size.width;
          height = v252.size.height;
        }

        v60 = [v54 countByEnumeratingWithState:&v214 objects:v246 count:16];
      }

      while (v60);
    }

    v253.origin.x = v6;
    v253.origin.y = v8;
    v253.size.width = v175;
    v253.size.height = v177;
    MidX = CGRectGetMidX(v253);
    v254.origin.x = x;
    v254.origin.y = y;
    v254.size.width = width;
    v254.size.height = height;
    v67 = CGRectGetMidX(v254);
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v68 = v54;
    v69 = [v68 countByEnumeratingWithState:&v210 objects:v245 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = MidX - v67;
      v72 = *v211;
      do
      {
        for (k = 0; k != v70; ++k)
        {
          if (*v211 != v72)
          {
            objc_enumerationMutation(v68);
          }

          [*(*(&v210 + 1) + 8 * k) translateHorizontallyBy:v71];
        }

        v70 = [v68 countByEnumeratingWithState:&v210 objects:v245 count:16];
      }

      while (v70);
    }

    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v74 = v40;
    v75 = [v74 countByEnumeratingWithState:&v206 objects:v244 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v207;
      v78 = v27;
      v79 = v173;
      v80 = v162;
      v81 = v168;
      do
      {
        for (m = 0; m != v76; ++m)
        {
          if (*v207 != v77)
          {
            objc_enumerationMutation(v74);
          }

          [*(*(&v206 + 1) + 8 * m) imageBounds];
          v265.origin.x = v83;
          v265.origin.y = v84;
          v265.size.width = v85;
          v265.size.height = v86;
          v255.origin.x = v81;
          v255.origin.y = v80;
          v255.size.width = v79;
          v255.size.height = v78;
          v256 = CGRectUnion(v255, v265);
          v81 = v256.origin.x;
          v80 = v256.origin.y;
          v79 = v256.size.width;
          v78 = v256.size.height;
        }

        v76 = [v74 countByEnumeratingWithState:&v206 objects:v244 count:16];
      }

      while (v76);
    }

    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v87 = v74;
    v88 = [v87 countByEnumeratingWithState:&v202 objects:v243 count:16];
    v28 = v173;
    if (v88)
    {
      v89 = v88;
      v90 = *v203;
      do
      {
        for (n = 0; n != v89; ++n)
        {
          if (*v203 != v90)
          {
            objc_enumerationMutation(v87);
          }

          v92 = *(*(&v202 + 1) + 8 * n);
          v257.origin.x = v6;
          v257.origin.y = v8;
          v257.size.width = v175;
          v257.size.height = v177;
          MaxX = CGRectGetMaxX(v257);
          [v92 imageBounds];
          [v92 translateHorizontallyBy:MaxX - CGRectGetMaxX(v258)];
        }

        v89 = [v87 countByEnumeratingWithState:&v202 objects:v243 count:16];
      }

      while (v89);
    }
  }

  v94 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v95 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v96 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v198[0] = MEMORY[0x1E69E9820];
  v198[1] = 3221225472;
  v198[2] = __59__PXTitleSubtitleCALayerPromise__linesToRenderWithContext___block_invoke_5;
  v198[3] = &unk_1E7BB7C20;
  v97 = v94;
  v199 = v97;
  v98 = v95;
  v200 = v98;
  v99 = v96;
  v201 = v99;
  v100 = _Block_copy(v198);
  v101 = [v11 titleLabelSpec];
  v102 = v100[2](v100, [v101 verticalAlignment]);
  [v102 addObjectsFromArray:v22];

  v103 = [v11 subtitleLabelSpec];
  v166 = v100;
  v104 = v100[2](v100, [v103 verticalAlignment]);
  [v104 addObjectsFromArray:v169];

  v105 = [v98 firstObject];
  [v105 ascentPosition];
  v107 = v106;

  v108 = [v98 lastObject];
  [v108 descentPosition];
  v110 = v109;

  v259.origin.x = v6;
  v259.origin.y = v8;
  v259.size.width = v175;
  v259.size.height = v177;
  v111 = CGRectGetMidY(v259);
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v112 = v98;
  v113 = [v112 countByEnumeratingWithState:&v194 objects:v242 count:16];
  v31 = v171;
  if (v113)
  {
    v114 = v113;
    v115 = v111 + (v107 + v110) * -0.5;
    v116 = *v195;
    do
    {
      for (ii = 0; ii != v114; ++ii)
      {
        if (*v195 != v116)
        {
          objc_enumerationMutation(v112);
        }

        [*(*(&v194 + 1) + 8 * ii) translateVerticallyBy:v115];
      }

      v114 = [v112 countByEnumeratingWithState:&v194 objects:v242 count:16];
    }

    while (v114);
  }

  v118 = [v97 firstObject];
  [v118 ascentPosition];
  v120 = v119;

  v260.origin.x = v6;
  v260.origin.y = v8;
  v260.size.width = v175;
  v260.size.height = v177;
  MaxY = CGRectGetMaxY(v260);
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v122 = v97;
  v123 = [v122 countByEnumeratingWithState:&v190 objects:v241 count:16];
  if (v123)
  {
    v124 = v123;
    v125 = MaxY - v120;
    v126 = *v191;
    do
    {
      for (jj = 0; jj != v124; ++jj)
      {
        if (*v191 != v126)
        {
          objc_enumerationMutation(v122);
        }

        [*(*(&v190 + 1) + 8 * jj) translateVerticallyBy:v125];
      }

      v124 = [v122 countByEnumeratingWithState:&v190 objects:v241 count:16];
    }

    while (v124);
  }

  v128 = [v99 lastObject];
  [v128 descentPosition];
  v130 = v129;

  v261.origin.x = v6;
  v261.origin.y = v8;
  v261.size.width = v175;
  v261.size.height = v177;
  MinY = CGRectGetMinY(v261);
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v132 = v99;
  v133 = [v132 countByEnumeratingWithState:&v186 objects:v240 count:16];
  v33 = v168;
  if (v133)
  {
    v134 = v133;
    v135 = MinY - v130;
    v136 = *v187;
    do
    {
      for (kk = 0; kk != v134; ++kk)
      {
        if (*v187 != v136)
        {
          objc_enumerationMutation(v132);
        }

        v138 = *(*(&v186 + 1) + 8 * kk);
        if (v138)
        {
          [*(*(&v186 + 1) + 8 * kk) transform];
          v139 = *&v183;
        }

        else
        {
          v184 = 0u;
          v185 = 0u;
          v139 = 0.0;
          v183 = 0u;
        }

        v140 = v135 * v139;
        if ([v22 containsObject:v138])
        {
          v141 = v139 < 1.0;
        }

        else
        {
          v141 = 0;
        }

        if (v141)
        {
          [v11 distanceBetweenTitleBaselineAndSubtitleBaseline];
          v140 = v140 + (1.0 - v139) * v142;
        }

        [v138 translateVerticallyBy:v140];
      }

      v134 = [v132 countByEnumeratingWithState:&v186 objects:v240 count:16];
    }

    while (v134);
  }

  v176 = [(PXTitleSubtitleCALayerPromise *)v171 diagnosticsEnabled];
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  obj = v163;
  v143 = [obj countByEnumeratingWithState:&v179 objects:v239 count:16];
  if (v143)
  {
    v144 = v143;
    v30 = 0;
    v174 = *v180;
    v145 = 0.0;
    v26 = v162;
LABEL_82:
    v146 = 0;
    while (1)
    {
      if (*v180 != v174)
      {
        objc_enumerationMutation(obj);
      }

      v147 = *(*(&v179 + 1) + 8 * v146);
      if (v147)
      {
        [*(*(&v179 + 1) + 8 * v146) transform];
        v148 = v178;
      }

      else
      {
        v148 = 0.0;
        v178 = 0.0;
      }

      [v147 scaleVerticallyBy:-1.0];
      [v147 translateVerticallyBy:v177];
      [v147 contentBounds];
      v266.origin.x = v149;
      v266.origin.y = v150;
      v266.size.width = v151;
      v266.size.height = v152;
      v262.origin.x = v33;
      v262.origin.y = v26;
      v262.size.width = v28;
      v262.size.height = v27;
      v263 = CGRectUnion(v262, v266);
      v33 = v263.origin.x;
      v26 = v263.origin.y;
      v28 = v263.size.width;
      v27 = v263.size.height;
      if (v176)
      {
        if (!v30)
        {
          v30 = [MEMORY[0x1E695DF70] array];
        }

        v153 = [v147 string];
        [(NSArray *)v30 addObject:v153];

        v31 = v171;
      }

      v145 = v145 + v148;
      [v147 baselinePosition];
      MidY = v154;
      if ([(PXCALayerPromise *)v31 shouldCancel])
      {
        break;
      }

      if (v144 == ++v146)
      {
        v144 = [obj countByEnumeratingWithState:&v179 objects:v239 count:16];
        if (v144)
        {
          goto LABEL_82;
        }

        break;
      }
    }
  }

  else
  {
    v30 = 0;
    v145 = 0.0;
    v26 = v162;
  }

  v155 = [obj count];
  if (+[PXTitleSubtitleCALayerPromise _simulateSlowTextTypesetting])
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:1.0];
  }

  v29 = v145 / v155;

  v18 = v163;
  v17 = v161;
  v32 = v167;
LABEL_100:
  diagnosticsRenderedLines = v31->_diagnosticsRenderedLines;
  v31->_diagnosticsRenderedLines = v30;
  v157 = v30;

  v31->_layerContentBounds.origin.x = v33;
  v31->_layerContentBounds.origin.y = v26;
  v31->_layerContentBounds.size.width = v28;
  v31->_layerContentBounds.size.height = v27;
  v31->_layerLastBaseline = MidY;
  v31->__textScaleFactor = v29;
  v158 = v18;

  return v18;
}

id __59__PXTitleSubtitleCALayerPromise__linesToRenderWithContext___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) shouldCancel])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 length];
    v9 = 0;
    if (v8 && v10)
    {
      v11 = [*(a1 + 32) _attributedStringForLabelWithText:v7 spec:v8];
      v12 = *(a1 + 40);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __59__PXTitleSubtitleCALayerPromise__linesToRenderWithContext___block_invoke_2;
      v37[3] = &unk_1E7BB7B88;
      v13 = v11;
      v38 = v13;
      v14 = *(a1 + 72);
      v40 = *(a1 + 56);
      v41 = v14;
      v42 = *(a1 + 88);
      v39 = v8;
      [v12 performChanges:v37];
      v9 = [*(a1 + 40) lines];
      if ([*(a1 + 48) count])
      {
        v15 = [*(a1 + 48) lastObject];
        v16 = [v9 firstObject];
        [v15 baselinePosition];
        v18 = v17;
        v32 = v16;
        [v16 baselinePosition];
        v20 = v19;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v21 = v9;
        v22 = [v21 countByEnumeratingWithState:&v33 objects:v44 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = v18 - a4 - v20;
          v25 = *v34;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v34 != v25)
              {
                objc_enumerationMutation(v21);
              }

              [*(*(&v33 + 1) + 8 * i) translateVerticallyBy:v24];
            }

            v23 = [v21 countByEnumeratingWithState:&v33 objects:v44 count:16];
          }

          while (v23);
        }

        v27 = [v13 attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];
        v28 = *(a1 + 40);
        v43 = v15;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
        v30 = [v29 arrayByAddingObjectsFromArray:v21];
        [v28 shiftLinesVerticallyToAvoidOverlap:v30 referenceFont:v27];
      }

      [*(a1 + 48) addObjectsFromArray:v9];
    }
  }

  return v9;
}

void __59__PXTitleSubtitleCALayerPromise__linesToRenderWithContext___block_invoke_3(CGRect *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v27 + 1) + 8 * v11) imageBounds];
        v37.origin.x = v12;
        v37.origin.y = v13;
        v37.size.width = v14;
        v37.size.height = v15;
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = height;
        v35 = CGRectUnion(v34, v37);
        x = v35.origin.x;
        y = v35.origin.y;
        width = v35.size.width;
        height = v35.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v16 = CGRectGetWidth(a1[1]) + -2.0;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v17 = v16 / CGRectGetWidth(v36);
  if (v17 < 1.0)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v3;
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v23 + 1) + 8 * v22++) scaleBy:{v17, v23}];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v20);
    }
  }
}

id __59__PXTitleSubtitleCALayerPromise__linesToRenderWithContext___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_9;
      }

      v3 = 40;
    }

    else
    {
      v3 = 32;
    }

    goto LABEL_8;
  }

  if (a2 == 2)
  {
    v3 = 48;
LABEL_8:
    v2 = *(a1 + v3);
    goto LABEL_9;
  }

  if ((a2 - 3) < 2)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 64) object:*(a1 + 56) file:@"PXTitleSubtitleCALayerPromise.m" lineNumber:266 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_9:

  return v2;
}

id __59__PXTitleSubtitleCALayerPromise__linesToRenderWithContext___block_invoke_5(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + qword_1B40752B0[a2]);
  }

  return v3;
}

void __59__PXTitleSubtitleCALayerPromise__linesToRenderWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAttributedString:v3];
  [v4 setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [v4 setTypesettingMode:*(a1 + 80)];
  [v4 setMaximumNumberOfLines:{objc_msgSend(*(a1 + 40), "numberOfLines")}];
  [v4 setAdjustsFontSizeToFitWidth:{objc_msgSend(*(a1 + 40), "adjustsFontSizeToFitWidth")}];
  [*(a1 + 40) minimumScaleFactor];
  [v4 setMinimumScaleFactor:?];
  [v4 setAllowTruncation:{objc_msgSend(*(a1 + 40), "allowTruncation")}];
  [*(a1 + 40) minimumTruncatedScaleFactor];
  [v4 setMinimumTruncatedScaleFactor:?];
}

- (void)drawLayerContentInContext:(CGContext *)a3
{
  v4 = self;
  v58 = *MEMORY[0x1E69E9840];
  v5 = [(PXTitleSubtitleCALayerPromise *)self _linesToRenderWithContext:?];
  v6 = +[PXTitleSubtitleCALayerPromise _drawTypographicalGuidelines];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v54;
    v45 = v50;
    v46 = v52;
    v47 = *v54;
    v44 = v4;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v54 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v53 + 1) + 8 * v10);
      if ([(PXCALayerPromise *)v4 shouldCancel:v44])
      {
        break;
      }

      [v11 draw];
      if (v6)
      {
        [v11 imageBounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [MEMORY[0x1E69DC888] redColor];
        v21 = v20 = v6;
        CGContextSetStrokeColorWithColor(a3, [v21 CGColor]);

        v59.origin.x = v13;
        v59.origin.y = v15;
        v59.size.width = v17;
        v59.size.height = v19;
        CGContextStrokeRect(a3, v59);
        v22 = [MEMORY[0x1E69DC888] redColor];
        CGContextSetFillColorWithColor(a3, [v22 CGColor]);

        [v11 textPosition];
        v60.origin.x = v23 + -1.5;
        v60.origin.y = v24 + -1.5;
        v60.size.width = 3.0;
        v60.size.height = 3.0;
        CGContextFillEllipseInRect(a3, v60);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        v52[0] = __59__PXTitleSubtitleCALayerPromise_drawLayerContentInContext___block_invoke;
        v52[1] = &__block_descriptor_72_e20_v24__0d8__UIColor_16l;
        v52[2] = a3;
        *&v52[3] = v13;
        *&v52[4] = v15;
        *&v52[5] = v17;
        *&v52[6] = v19;
        v25 = _Block_copy(aBlock);
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v50[0] = __59__PXTitleSubtitleCALayerPromise_drawLayerContentInContext___block_invoke_2;
        v50[1] = &unk_1E7BB7B60;
        v50[2] = v11;
        v50[3] = a3;
        v26 = _Block_copy(v49);
        [v11 baselinePosition];
        v28 = v27;
        v29 = [MEMORY[0x1E69DC888] redColor];
        v25[2](v25, v29, v28);

        [v11 ascentPosition];
        v31 = v30;
        v32 = [MEMORY[0x1E69DC888] greenColor];
        v25[2](v25, v32, v31);

        [v11 descentPosition];
        v34 = v33;
        v35 = [MEMORY[0x1E69DC888] yellowColor];
        v25[2](v25, v35, v34);

        [v11 textPosition];
        v37 = v36;
        v38 = [MEMORY[0x1E69DC888] blueColor];
        v26[2](v26, v38, v37);

        [v11 textPosition];
        v40 = v39;
        [v11 width];
        v42 = v40 + v41;
        v43 = [MEMORY[0x1E69DC888] cyanColor];
        v26[2](v26, v43, v42);
        v6 = v20;
        v9 = v47;

        v4 = v44;
      }

      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __59__PXTitleSubtitleCALayerPromise_drawLayerContentInContext___block_invoke(uint64_t a1, id a2, CGFloat a3)
{
  v6 = *(a1 + 32);
  v7 = a2;
  CGContextSetStrokeColorWithColor(v6, [a2 CGColor]);
  CGContextBeginPath(*(a1 + 32));
  v8 = *(a1 + 32);
  MinX = CGRectGetMinX(*(a1 + 40));
  CGContextMoveToPoint(v8, MinX, a3);
  v10 = *(a1 + 32);
  MaxX = CGRectGetMaxX(*(a1 + 40));
  CGContextAddLineToPoint(v10, MaxX, a3);
  v12 = *(a1 + 32);

  CGContextStrokePath(v12);
}

void __59__PXTitleSubtitleCALayerPromise_drawLayerContentInContext___block_invoke_2(uint64_t a1, id a2, CGFloat a3)
{
  v6 = *(a1 + 40);
  v7 = a2;
  CGContextSetStrokeColorWithColor(v6, [a2 CGColor]);
  CGContextBeginPath(*(a1 + 40));
  v8 = *(a1 + 40);
  [*(a1 + 32) ascentPosition];
  CGContextMoveToPoint(v8, a3, v9 + 10.0);
  v10 = *(a1 + 40);
  [*(a1 + 32) descentPosition];
  CGContextAddLineToPoint(v10, a3, v11 + -10.0);
  v12 = *(a1 + 40);

  CGContextStrokePath(v12);
}

- (id)createCustomLayer
{
  v32 = *MEMORY[0x1E69E9840];
  if (+[PXTitleSubtitleCALayerPromise _defaultSkipShapeLayer])
  {
    v3 = 0;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    [(PXTitleSubtitleCALayerPromise *)self _linesToRenderWithContext:0];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = v30 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        if ([(PXCALayerPromise *)self shouldCancel])
        {
          break;
        }

        v11 = [v10 createPath];
        CGPathAddPath(Mutable, 0, v11);
        CGPathRelease(v11);
        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v12 = [(PXTitleSubtitleCALayerPromise *)self spec];
    v13 = [v12 titleLabelSpec];

    v14 = [v13 textColor];
    v15 = [v13 textAttributes];
    v16 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69DB6A8]];

    if ([(PXCALayerPromise *)self shouldCancel])
    {
      v3 = 0;
    }

    else
    {
      [MEMORY[0x1E6979518] begin];
      if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      v3 = [MEMORY[0x1E69794A0] layer];
      [v3 setDelegate:self];
      [v3 setPath:Mutable];
      [v3 setFillColor:{objc_msgSend(v14, "CGColor")}];
      [(PXCALayerPromise *)self bounds];
      [v3 setBounds:?];
      if (v16)
      {
        [(PXTitleSubtitleCALayerPromise *)self _textScaleFactor];
        v18 = v17;
        [(PXCALayerPromise *)self contentsScale];
        v20 = v18 / v19;
        v21 = [v16 shadowColor];
        [v3 setShadowColor:{objc_msgSend(v21, "CGColor")}];

        LODWORD(v22) = 1.0;
        [v3 setShadowOpacity:v22];
        [v16 shadowOffset];
        [v3 setShadowOffset:{v23 * v20, v24 * v20}];
        [v16 shadowBlurRadius];
        [v3 setShadowRadius:v20 * v25];
        [v3 setShadowPath:Mutable];
      }

      [MEMORY[0x1E6979518] commit];
      [MEMORY[0x1E6979518] flush];
    }

    CGPathRelease(Mutable);
  }

  return v3;
}

- (PXTitleSubtitleCALayerPromise)init
{
  v4.receiver = self;
  v4.super_class = PXTitleSubtitleCALayerPromise;
  result = [(PXCALayerPromise *)&v4 init];
  if (result)
  {
    v3 = *(MEMORY[0x1E695F050] + 16);
    result->_layerContentBounds.origin = *MEMORY[0x1E695F050];
    result->_layerContentBounds.size = v3;
  }

  return result;
}

+ (BOOL)_preventFontFallback
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PXTitleSubtitleCALayerPromisePreventFontFallback"];

  return v3;
}

+ (BOOL)_drawTypographicalGuidelines
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PXTitleSubtitleCALayerPromiseDrawTypographicalGuidelines"];

  return v3;
}

+ (BOOL)_simulateSlowTextTypesetting
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PXTitleSubtitleCALayerPromiseSimulateSlowTypesetting"];

  return v3;
}

+ (BOOL)_defaultSkipShapeLayer
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PXTitleSubtitleCALayerPromiseSkipShapeLayer"];

  return v3;
}

@end