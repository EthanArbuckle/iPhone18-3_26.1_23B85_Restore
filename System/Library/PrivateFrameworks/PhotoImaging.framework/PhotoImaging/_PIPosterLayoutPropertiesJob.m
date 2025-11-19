@interface _PIPosterLayoutPropertiesJob
- (BOOL)prepare:(id *)a3;
- (BOOL)render:(id *)a3;
- (CGRect)adaptiveTimeFrame;
- (CGRect)adaptiveVisibleFrame;
- (CGRect)visibleFrame;
- (_PIPosterLayoutPropertiesJob)initWithLayoutPropertiesRequest:(id)a3;
- (id)result;
@end

@implementation _PIPosterLayoutPropertiesJob

- (CGRect)visibleFrame
{
  x = self->_visibleFrame.origin.x;
  y = self->_visibleFrame.origin.y;
  width = self->_visibleFrame.size.width;
  height = self->_visibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adaptiveTimeFrame
{
  x = self->_adaptiveTimeFrame.origin.x;
  y = self->_adaptiveTimeFrame.origin.y;
  width = self->_adaptiveTimeFrame.size.width;
  height = self->_adaptiveTimeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adaptiveVisibleFrame
{
  x = self->_adaptiveVisibleFrame.origin.x;
  y = self->_adaptiveVisibleFrame.origin.y;
  width = self->_adaptiveVisibleFrame.size.width;
  height = self->_adaptiveVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)result
{
  v3 = objc_alloc_init(_PIPosterLayoutPropertiesResult);
  [(_PIPosterLayoutPropertiesResult *)v3 setLayoutVariant:[(_PIPosterLayoutPropertiesJob *)self layoutVariant]];
  [(_PIPosterLayoutPropertiesJob *)self maxClockShift];
  [(_PIPosterLayoutPropertiesResult *)v3 setMaxClockShift:?];
  [(_PIPosterLayoutPropertiesJob *)self adaptiveVisibleFrame];
  [(_PIPosterLayoutPropertiesResult *)v3 setAdaptiveVisibleFrame:?];
  [(_PIPosterLayoutPropertiesJob *)self adaptiveTimeFrame];
  [(_PIPosterLayoutPropertiesResult *)v3 setAdaptiveTimeFrame:?];
  [(_PIPosterLayoutPropertiesJob *)self visibleFrame];
  [(_PIPosterLayoutPropertiesResult *)v3 setVisibleFrame:?];

  return v3;
}

- (BOOL)render:(id *)a3
{
  p_isa = &self->super.super.isa;
  v325 = *MEMORY[0x1E69E9840];
  v316 = [(NURenderJob *)self renderer:a3];
  if (!v316)
  {
    v264 = NUAssertLogger();
    if (os_log_type_enabled(v264, OS_LOG_TYPE_ERROR))
    {
      v265 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing renderer"];
      *buf = 138543362;
      *&buf[4] = v265;
      _os_log_error_impl(&dword_1C7694000, v264, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    p_isa = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v198 = NUAssertLogger();
    v266 = os_log_type_enabled(v198, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v266)
      {
        specific = dispatch_get_specific(*p_isa);
        v276 = MEMORY[0x1E696AF00];
        v3 = specific;
        p_isa = [v276 callStackSymbols];
        v4 = [p_isa componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = specific;
        *&buf[12] = 2114;
        *&buf[14] = v4;
        _os_log_error_impl(&dword_1C7694000, v198, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v266)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      p_isa = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = p_isa;
      _os_log_error_impl(&dword_1C7694000, v198, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v269 = _NUAssertFailHandler();
    goto LABEL_81;
  }

  v14 = [p_isa segmentationItem];
  if (!v14)
  {
    v267 = NUAssertLogger();
    if (os_log_type_enabled(v267, OS_LOG_TYPE_ERROR))
    {
      v268 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing segmentation item"];
      *buf = 138543362;
      *&buf[4] = v268;
      _os_log_error_impl(&dword_1C7694000, v267, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    p_isa = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v198 = NUAssertLogger();
    v269 = os_log_type_enabled(v198, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v269)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        p_isa = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = p_isa;
        _os_log_error_impl(&dword_1C7694000, v198, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_83:

      v272 = _NUAssertFailHandler();
      goto LABEL_84;
    }

LABEL_81:
    if (v269)
    {
      specific = dispatch_get_specific(*p_isa);
      v277 = MEMORY[0x1E696AF00];
      v3 = specific;
      p_isa = [v277 callStackSymbols];
      v4 = [p_isa componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = specific;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_error_impl(&dword_1C7694000, v198, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_83;
  }

  specific = v14;
  v16 = [p_isa layoutConfiguration];
  if (!v16)
  {
    v270 = NUAssertLogger();
    if (os_log_type_enabled(v270, OS_LOG_TYPE_ERROR))
    {
      v271 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing layout configuration"];
      *buf = 138543362;
      *&buf[4] = v271;
      _os_log_error_impl(&dword_1C7694000, v270, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    p_isa = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v198 = NUAssertLogger();
    v272 = os_log_type_enabled(v198, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v272)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        p_isa = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = p_isa;
        _os_log_error_impl(&dword_1C7694000, v198, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_86:

      v275 = _NUAssertFailHandler();
      goto LABEL_87;
    }

LABEL_84:
    if (v272)
    {
      specific = dispatch_get_specific(*p_isa);
      v278 = MEMORY[0x1E696AF00];
      v3 = specific;
      p_isa = [v278 callStackSymbols];
      v4 = [p_isa componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = specific;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_error_impl(&dword_1C7694000, v198, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_86;
  }

  v3 = v16;
  v17 = [p_isa layout];
  if (!v17)
  {
    v273 = NUAssertLogger();
    v3 = &qword_1C7845000;
    if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
    {
      v274 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing poster layout"];
      *buf = 138543362;
      *&buf[4] = v274;
      _os_log_error_impl(&dword_1C7694000, v273, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    p_isa = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v198 = NUAssertLogger();
    v275 = os_log_type_enabled(v198, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v275)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        p_isa = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = p_isa;
        _os_log_error_impl(&dword_1C7694000, v198, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_89:

      _NUAssertFailHandler();
      goto LABEL_90;
    }

LABEL_87:
    if (v275)
    {
      specific = dispatch_get_specific(*p_isa);
      v279 = MEMORY[0x1E696AF00];
      v3 = specific;
      p_isa = [v279 callStackSymbols];
      v4 = [p_isa componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = specific;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_error_impl(&dword_1C7694000, v198, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_89;
  }

  v4 = v17;
  v5 = [p_isa matteImage];
  v18 = [specific classification];
  v19 = [specific regions];
  v20 = [v19 petRegions];
  v21 = [v20 count];

  v22 = [specific originalLayout];
  v23 = [specific regions];
  [v23 preferredCropRect];
  v304 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = [specific regions];
  [v31 acceptableCropRect];
  v313 = v33;
  recta = v32;
  v308 = v35;
  v311 = v34;

  v36 = MEMORY[0x1E69C07A8];
  v306 = v22;
  [v22 imageSize];
  v38 = v37;
  v40 = v39;
  [v3 screenSize];
  v42 = v41;
  v44 = v43;
  v45 = [specific regions];
  v46 = [v45 faceRegions];
  [v36 bestFaceRectWithImageSize:v46 deviceSize:v38 faceRegions:{v40, v42, v44}];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  if (([v4 hasTopEdgeContact] & 1) == 0)
  {
    [v5 extent];
    v301 = v50;
    v302 = v48;
    v56 = v55;
    v57 = v26;
    v59 = v58;
    v300 = v52;
    v60 = v28;
    v62 = v61;
    v63 = v30;
    v65 = *MEMORY[0x1E69C0C68] * v64;
    v66 = [MEMORY[0x1E695F658] blackImage];
    v67 = [v5 imageByCompositingOverImage:v66];
    v68 = v56;
    v69 = v59;
    v26 = v57;
    v50 = v301;
    v48 = v302;
    v70 = v62;
    v28 = v60;
    v52 = v300;
    v71 = v65;
    v30 = v63;
    v72 = [v67 imageByCroppingToRect:{v68, v69, v70, v71}];

    v5 = v72;
  }

  v73 = v21 != 0;
  v74 = MEMORY[0x1E69C07A8];
  v75 = [specific regions];
  [v75 gazeAreaRect];
  [v74 effectiveAcceptableRectForClassification:v18 havePetFaces:v73 sourcePreferredCropRectNormalized:v304 sourceAcceptableCropRectNormalized:v26 sourceFaceAreaRectNormalized:v28 sourceGazeAreaRectNormalized:{v30, recta, v313, v311, v308, v48, v50, v52, v54, v76, v77, v78, v79}];
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;

  [v4 imageSize];
  v89 = v81 * v88 + 0.0;
  v91 = v83 * v90 + 0.0;
  v92 = v85 * v88;
  v93 = v87 * v90;
  v94 = [p_isa segmentationItem];
  if ([v94 classification] == 1)
  {
  }

  else
  {
    v95 = [p_isa segmentationItem];
    v96 = [v95 classification];

    if (v96 != 2)
    {
      goto LABEL_11;
    }
  }

  [MEMORY[0x1E69C0798] inflatePersonFaceRect:{v89, v91, v92, v93}];
  v89 = v97;
  v91 = v98;
  v92 = v99;
  v93 = v100;
LABEL_11:
  v101 = MEMORY[0x1E695F058];
  v102 = [p_isa matteImage];

  v286.size.width = v92;
  v286.size.height = v93;
  if (v102)
  {
    v326.origin.x = v89;
    v326.origin.y = v91;
    v326.size.width = v92;
    v326.size.height = v93;
    MidX = CGRectGetMidX(v326);
    [v4 visibleFrame];
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v112 = [v316 context];
    [PISegmentationHelper computeCenterZoomAreaWithMidpoint:v5 visibleFrame:v3 segmentationMatte:v112 layoutConfiguration:MidX context:v105, v107, v109, v111];
    v297 = v114;
    v298 = v113;
    v295 = v116;
    v296 = v115;
  }

  else
  {
    v297 = v101[1];
    v298 = *v101;
    v295 = v101[3];
    v296 = v101[2];
  }

  v117 = [p_isa matteImage];

  v286.origin.x = v89;
  v286.origin.y = v91;
  if (v117)
  {
    [v4 visibleFrame];
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v125 = v124;
    [v4 extendedImageSize];
    v127 = v126;
    v129 = v128;
    v130 = [v316 context];
    [PISegmentationHelper computeStretchOverlapYOffsetWithVisibleFrame:v5 imageSize:0 segmentationMatte:v3 classicOverlap:v130 layoutConfiguration:v119 context:v121, v123, v125, v127, v129];
    v132 = v131;

    [v4 visibleFrame];
    v309 = v132;
    v310 = v132 / CGRectGetHeight(v327);
    v328.origin.x = v298;
    v328.origin.y = v297;
    v328.size.width = v296;
    v328.size.height = v295;
    v133 = CGRectGetMidX(v328);
    [v4 visibleFrame];
    v134 = vabdd_f64(v133, CGRectGetMidX(v329));
    [v4 visibleFrame];
    v135 = v134 / CGRectGetWidth(v330);
    v331.origin.x = v298;
    v331.origin.y = v297;
    v331.size.width = v296;
    v331.size.height = v295;
    Width = CGRectGetWidth(v331);
    [v4 visibleFrame];
    v303 = Width / CGRectGetWidth(v332);
    v8 = v135 < 0.05;
  }

  else
  {
    v8 = 1;
    v303 = 0.0;
    v309 = 0.0;
    v310 = 0.0;
  }

  [v4 visibleFrame];
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v144 = v143;
  [v4 adaptiveTimeFrame];
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v152 = v151;
  v153 = [p_isa layoutPropertiesRequest];
  v154 = [v153 calculateAdaptiveFrame];

  v155 = MEMORY[0x1E69B3D80];
  *&v299[16] = v150;
  *&v299[24] = v152;
  *v299 = v146;
  *&v299[8] = v148;
  v312 = v140;
  rect = v142;
  if (v154)
  {
    v285 = v138;
    v292 = v144;
    v156 = *(v101 + 1);
    *buf = *v101;
    *&buf[16] = v156;
    [v4 visibleFrame];
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v164 = v163;
    [v3 timeRect];
    v166 = v165;
    [v4 visibleFrame];
    v168 = v166 * v167;
    [v3 maxStrechAmountNormalized];
    v170 = v169;
    [v4 visibleFrame];
    v172 = v170 * v171;
    [v4 adaptiveTimeFrame];
    if ((v173 - v168) / v172 >= 0.01)
    {
      v174 = (v173 - v168) / v172;
    }

    else
    {
      v174 = 0.0;
    }

    v175 = MEMORY[0x1E69C07A8];
    v176 = [p_isa layoutConfiguration];
    v283 = v158;
    v284 = v164;
    v293 = v160;
    v280 = v162;
    [v175 adaptiveFrameForTopEdgeVisibleFrame:v176 layoutConfiguration:buf outVisibleFrame:v158 maxClockStretchOverride:{v160, v162, v164, v174}];
    v281 = v178;
    v282 = v177;
    v180 = v179;
    v182 = v181;

    if (v5)
    {
      [v4 visibleFrame];
      v184 = v183;
      v186 = v185;
      v188 = v187;
      v190 = v189;
      [v4 extendedImageSize];
      v192 = v191;
      v194 = v193;
      v195 = [v316 context];
      [PISegmentationHelper computeStretchOverlapYOffsetWithVisibleFrame:v5 imageSize:1 segmentationMatte:v3 classicOverlap:v195 layoutConfiguration:v184 context:v186, v188, v190, v192, v194];
      v197 = v196;
    }

    else
    {
      MaxY = CGRectGetMaxY(v286);
      v203 = [p_isa layoutConfiguration];
      [v203 timeOverlapCheckBottom];
      v205 = v204;
      v207 = v206;
      [v4 visibleFrame];
      v210 = v208 + v205 * v209;
      v211 = v207 * v209;

      v197 = fmax(v210 + v211 * 0.5 - MaxY, 0.0);
    }

    v6 = v155;
    v212 = [p_isa layoutConfiguration];
    [v212 timeRect];
    v214 = v293 + v213 * v284;

    v215 = [p_isa layoutConfiguration];
    [v215 timeRect];
    v217 = *&buf[8] + v216 * *&buf[24];

    *&log = v197;
    v218 = v214 - v197 - v217;
    v219 = v312;
    v7 = MEMORY[0x1E69B3D78];
    if (v218 <= 0.0)
    {
      v333.size.height = v292;
      v333.origin.x = v285;
      v333.origin.y = v312;
      v333.size.width = rect;
      v220 = fmax(v309 - (v333.size.height - v333.size.height), 0.0) / CGRectGetHeight(v333);
    }

    else
    {
      v182 = v182 - v218;
      v180 = v180 + v218;
      *&buf[8] = v218 + *&buf[8];
      v220 = v310;
    }

    v334.origin.x = v282;
    v334.origin.y = v180;
    v334.size.width = v281;
    v334.size.height = v182;
    v310 = v220;
    if (CGRectIsEmpty(v334) || (v335.origin.x = v282, v335.origin.y = v180, v335.size.width = v281, v335.size.height = v182, Height = CGRectGetHeight(v335), [v4 visibleFrame], v222 = Height / CGRectGetHeight(v336), objc_msgSend(MEMORY[0x1E69C07A8], "adaptiveLayoutVerticalPriorityThreshold"), v222 < v223 + 1.0))
    {
      v224 = v292;
      v287 = v292;
      v225 = rect;
      v226 = rect;
      v227 = v312;
      v228 = v285;
      v229 = v285;
    }

    else
    {
      v228 = v282;
      v229 = *buf;
      v227 = *&buf[8];
      v287 = *&buf[24];
      v226 = *&buf[16];
      *v299 = CGRectOffset(*v299, 0.0, 0.0);
      v224 = v182;
      v219 = v180;
      v225 = v281;
    }

    [v3 maxStrechAmountNormalized];
    v231 = v230;
    [v4 visibleFrame];
    LOBYTE(v198) = *&log > v231 * v232;
    v307 = v229;
    v233 = v229;
    v291 = v227;
    v234 = v227;
    v10 = v226;
    v235 = v226;
    v11 = v287;
    v12 = v228;
    v312 = v219;
    rect = v225;
    [MEMORY[0x1E69C07A8] topFrameForVisibleRect:v233 adaptiveRect:{v234, v235}];
    v9 = v224;
    if (vabdd_f64(v283, v239) <= 0.00000999999975 && vabdd_f64(v293, v236) <= 0.00000999999975 && vabdd_f64(v280, v237) <= 0.00000999999975 && vabdd_f64(v284, v238) <= 0.00000999999975)
    {
      goto LABEL_40;
    }

    if (*v7 == -1)
    {
LABEL_38:
      v240 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *v319 = 0;
        _os_log_error_impl(&dword_1C7694000, v240, OS_LOG_TYPE_ERROR, "Adaptive layout recalculation mismatch!", v319, 2u);
      }

LABEL_40:
      v201 = v12;
      v199 = v10;
      v200 = v291;
      if (!v8)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

LABEL_90:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_184);
    goto LABEL_38;
  }

  LOBYTE(v198) = 0;
  v11 = v144;
  v199 = v142;
  v200 = v140;
  v307 = v138;
  v9 = v144;
  v201 = v138;
  v6 = MEMORY[0x1E69B3D80];
  v7 = MEMORY[0x1E69B3D78];
  if (!v8)
  {
    goto LABEL_43;
  }

LABEL_41:
  [MEMORY[0x1E69C07A8] centerLayoutHorizontalLowerBound];
  if (v303 >= v241)
  {
    [MEMORY[0x1E69C07A8] centerLayoutHorizontalUpperBound];
    if (v303 <= v242)
    {
      v247 = 0;
      v249 = 4;
      v246 = v11;
      v245 = v307;
      v248 = v310;
      goto LABEL_49;
    }
  }

LABEL_43:
  v337.origin.x = v201;
  v337.origin.y = v312;
  v337.size.width = rect;
  v243 = v9;
  v337.size.height = v9;
  v244 = CGRectGetHeight(v337);
  v245 = v307;
  v338.origin.x = v307;
  v338.origin.y = v200;
  v338.size.width = v199;
  v246 = v11;
  v338.size.height = v11;
  if ((vabdd_f64(v244, CGRectGetHeight(v338)) <= 0.00000999999975) | v198 & 1)
  {
    v247 = 0;
    v248 = v310;
    if (v310 <= 0.0)
    {
      v249 = 1;
    }

    else
    {
      v249 = 3;
    }
  }

  else
  {
    v248 = 0.0;
    v247 = 1;
    v249 = 2;
  }

  v9 = v243;
LABEL_49:
  if (*v7 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_184);
  }

  v250 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v256 = MEMORY[0x1E696B098];
    loga = v250;
    [v4 visibleFrame];
    v318[0] = v257;
    v318[1] = v258;
    v318[2] = v259;
    v318[3] = v260;
    v305 = [v256 valueWithBytes:v318 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *v317 = v298;
    *&v317[1] = v297;
    *&v317[2] = v296;
    *&v317[3] = v295;
    v294 = [MEMORY[0x1E696B098] valueWithBytes:v317 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v261 = MEMORY[0x1E696AD98];
    [v4 visibleFrame];
    v288 = [v261 numberWithDouble:CGRectGetMidX(v339)];
    v340.origin.x = v298;
    v340.origin.y = v297;
    v340.size.width = v296;
    v340.size.height = v295;
    v245 = v307;
    v262 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMidX(v340)];
    v263 = [MEMORY[0x1E696AD98] numberWithDouble:v248];
    *buf = 138413314;
    *&buf[4] = v305;
    *&buf[12] = 2112;
    *&buf[14] = v294;
    *&buf[22] = 2112;
    *&buf[24] = v288;
    v321 = 2112;
    v322 = v262;
    v323 = 2112;
    v324 = v263;
    _os_log_debug_impl(&dword_1C7694000, loga, OS_LOG_TYPE_DEBUG, "visible: %@, centerStrip: %@, visibleMidX: %@, centerStripMidX: %@, normalized: %@", buf, 0x34u);
  }

  [p_isa setLayoutVariant:v249];
  [p_isa setMaxClockShift:v248];
  if (v247)
  {
    [p_isa setAdaptiveVisibleFrame:{v201, v312, rect, v9}];
    [p_isa setAdaptiveTimeFrame:{*v299, *&v299[8], *&v299[16], *&v299[24]}];
  }

  else
  {
    [v4 visibleFrame];
    v245 = v251;
    v200 = v252;
    v199 = v253;
    v246 = v254;
  }

  [p_isa setVisibleFrame:{v245, v200, v199, v246}];

  return 1;
}

- (BOOL)prepare:(id *)a3
{
  v4 = [(_PIPosterLayoutPropertiesJob *)self layoutPropertiesRequest];
  v5 = [v4 segmentationItem];
  v6 = [v4 layout];
  v7 = [v6 orientation];
  v8 = [v5 layoutConfiguration];
  v9 = v8;
  if (v7 == 2)
  {
    [v8 landscapeConfiguration];
  }

  else
  {
    [v8 portraitConfiguration];
  }
  v10 = ;

  if (!v10)
  {
    v10 = [MEMORY[0x1E69C0790] deviceConfigurationForOrientation:{objc_msgSend(v6, "orientation")}];
  }

  v11 = [v5 segmentationMatte];

  if (v11)
  {
    v12 = MEMORY[0x1E695F658];
    v13 = [v5 segmentationMatte];
    v14 = [v12 imageWithNUImageBuffer:v13];

    [v6 imageSize];
    v16 = v15;
    [v14 extent];
    CGAffineTransformMakeScale(&v20, v16 / v17, v16 / v17);
    v11 = [v14 imageByApplyingTransform:&v20];

    if ([v5 classification] == 3 || objc_msgSend(v5, "classification") == 4)
    {
      v18 = [PISegmentationHelper invertImage:v11];

      v11 = v18;
    }
  }

  [(_PIPosterLayoutPropertiesJob *)self setSegmentationItem:v5];
  [(_PIPosterLayoutPropertiesJob *)self setMatteImage:v11];
  [(_PIPosterLayoutPropertiesJob *)self setLayout:v6];
  [(_PIPosterLayoutPropertiesJob *)self setLayoutConfiguration:v10];
  [v6 visibleFrame];
  [(_PIPosterLayoutPropertiesJob *)self setVisibleFrame:?];
  -[_PIPosterLayoutPropertiesJob setLayoutVariant:](self, "setLayoutVariant:", [v6 layoutVariant]);
  [v6 adaptiveVisibleFrame];
  [(_PIPosterLayoutPropertiesJob *)self setAdaptiveVisibleFrame:?];
  [v6 adaptiveTimeFrame];
  [(_PIPosterLayoutPropertiesJob *)self setAdaptiveTimeFrame:?];
  [v6 maxClockShift];
  [(_PIPosterLayoutPropertiesJob *)self setMaxClockShift:?];

  return 1;
}

- (_PIPosterLayoutPropertiesJob)initWithLayoutPropertiesRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = _PIPosterLayoutPropertiesJob;
  return [(NURenderJob *)&v4 initWithRequest:a3];
}

@end