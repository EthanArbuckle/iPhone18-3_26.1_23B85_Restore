@interface _PIPosterLayoutJob
- (BOOL)complete:(id *)a3;
- (BOOL)prepare:(id *)a3;
- (BOOL)render:(id *)a3;
- (_PIPosterLayoutJob)initWithPosterLayoutRequest:(id)a3;
- (_PIPosterLayoutJob)initWithRequest:(id)a3;
- (float)_headroomPenaltyForIntermediateLayout:(id)a3 originalFullExtent:(CGRect)a4 layoutConfiguration:(id)a5;
- (id)_layoutFromIntermediateLayouts:(id)a3 layoutConfiguration:(id)a4 fullExtent:(CGRect)a5;
- (id)generateOrientedLayoutsForFullExtent:(CGRect)a3 layoutConfiguration:(id)a4 layoutRegions:(id)a5 segmentationMatteImage:(id)a6 segmentationClassification:(unint64_t)a7 error:(id *)a8;
- (id)result;
@end

@implementation _PIPosterLayoutJob

- (id)result
{
  v57[21] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_PIPosterLayoutResult);
  v4 = [(_PIPosterLayoutJob *)self layout];
  v53 = v3;
  [(_PIPosterLayoutResult *)v3 setLayout:v4];

  v48 = objc_alloc(MEMORY[0x1E695DF90]);
  v56[0] = *MEMORY[0x1E69C0D60];
  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:65];
  v57[0] = v52;
  v56[1] = *MEMORY[0x1E69C0C98];
  v5 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self cropScore];
  v51 = [v5 numberWithFloat:?];
  v57[1] = v51;
  v56[2] = *MEMORY[0x1E69C0CD0];
  v6 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self layoutScore];
  v50 = [v6 numberWithFloat:?];
  v57[2] = v50;
  v56[3] = *MEMORY[0x1E69C0CF8];
  v7 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self nFaces];
  v49 = [v7 numberWithFloat:?];
  v57[3] = v49;
  v56[4] = *MEMORY[0x1E69C0D10];
  v8 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self segmentationScore];
  v47 = [v8 numberWithFloat:?];
  v57[4] = v47;
  v56[5] = *MEMORY[0x1E69C0CD8];
  v9 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self localConfidenceScore];
  v46 = [v9 numberWithFloat:?];
  v57[5] = v46;
  v56[6] = *MEMORY[0x1E69C0CB8];
  v10 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self groundedScore];
  v45 = [v10 numberWithFloat:?];
  v57[6] = v45;
  v56[7] = *MEMORY[0x1E69C0C80];
  v11 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self confidenceMapScore];
  v44 = [v11 numberWithFloat:?];
  v57[7] = v44;
  v56[8] = *MEMORY[0x1E69C0D00];
  v12 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self parallaxScore];
  v43 = [v12 numberWithFloat:?];
  v57[8] = v43;
  v56[9] = *MEMORY[0x1E69C0CE0];
  v13 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self mattePureBackground];
  v42 = [v13 numberWithFloat:?];
  v57[9] = v42;
  v56[10] = *MEMORY[0x1E69C0CE8];
  v14 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self mattePureForeground];
  v41 = [v14 numberWithFloat:?];
  v57[10] = v41;
  v56[11] = *MEMORY[0x1E69C0C88];
  v15 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self confidencePureBackground];
  v40 = [v15 numberWithFloat:?];
  v57[11] = v40;
  v56[12] = *MEMORY[0x1E69C0C90];
  v16 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self confidencePureForeground];
  v39 = [v16 numberWithFloat:?];
  v57[12] = v39;
  v56[13] = *MEMORY[0x1E69C0C78];
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PIPosterLayoutJob clockOverlapAcceptable](self, "clockOverlapAcceptable")}];
  v57[13] = v38;
  v56[14] = *MEMORY[0x1E69C0D08];
  v17 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self resolutionRatio];
  v37 = [v17 numberWithFloat:?];
  v57[14] = v37;
  v56[15] = *MEMORY[0x1E69C0CB0];
  v18 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self faceSize];
  v19 = [v18 numberWithFloat:?];
  v57[15] = v19;
  v56[16] = *MEMORY[0x1E69C0CA0];
  v20 = MEMORY[0x1E696AD98];
  [(_PIPosterLayoutJob *)self faceLocalConfidence];
  v21 = [v20 numberWithFloat:?];
  v57[16] = v21;
  v56[17] = *MEMORY[0x1E69C0CA8];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PIPosterLayoutJob facePositionAcceptable](self, "facePositionAcceptable")}];
  v57[17] = v22;
  v56[18] = *MEMORY[0x1E69C0C70];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_PIPosterLayoutJob segmentationClassification](self, "segmentationClassification")}];
  v57[18] = v23;
  v56[19] = *MEMORY[0x1E69C0CF0];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PIPosterLayoutJob metadataClockOverlapAcceptable](self, "metadataClockOverlapAcceptable")}];
  v57[19] = v24;
  v56[20] = *MEMORY[0x1E69C0D50];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PIPosterLayoutJob usingHeadroom](self, "usingHeadroom")}];
  v57[20] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:21];
  v27 = [v48 initWithDictionary:v26];

  v28 = [(_PIPosterLayoutJob *)self layout];
  v29 = [v28 landscapeLayout];

  if (v29)
  {
    v54[0] = *MEMORY[0x1E69C0CC0];
    v30 = MEMORY[0x1E696AD98];
    [(_PIPosterLayoutJob *)self landscapeCropScore];
    v31 = [v30 numberWithFloat:?];
    v55[0] = v31;
    v54[1] = *MEMORY[0x1E69C0CC8];
    v32 = MEMORY[0x1E696AD98];
    [(_PIPosterLayoutJob *)self landscapeLayoutScore];
    v33 = [v32 numberWithFloat:?];
    v55[1] = v33;
    v54[2] = *MEMORY[0x1E69C0D58];
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[_PIPosterLayoutJob usingLandscapeHeadroom](self, "usingLandscapeHeadroom")}];
    v55[2] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];
    [v27 addEntriesFromDictionary:v35];
  }

  [(_PIPosterLayoutResult *)v53 setScores:v27];

  return v53;
}

- (BOOL)complete:(id *)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = [(_PIPosterLayoutJob *)self layoutRegions];
  if (!v4)
  {
    v25 = NUAssertLogger_14911();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing layout regions"];
      v38 = 138543362;
      v39 = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v38, 0xCu);
    }

    v27 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_14911();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v33 = dispatch_get_specific(*v27);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        v38 = 138543618;
        v39 = v33;
        v40 = 2114;
        v41 = v37;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v38, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      v38 = 138543362;
      v39 = v32;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v38, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  if ([(_PIPosterLayoutJob *)self segmentationClassification]== 1)
  {
    v6 = [v5 faceRegions];
  }

  else
  {
    v7 = [(_PIPosterLayoutJob *)self segmentationClassification];
    v8 = 0.0;
    if (v7 != 2)
    {
      goto LABEL_8;
    }

    v6 = [v5 petRegions];
  }

  v9 = v6;
  v10 = [v6 count];

  v8 = 0.0;
  if (v10 == 1)
  {
    *&v8 = 0.5;
  }

LABEL_8:
  [(_PIPosterLayoutJob *)self setParallaxScore:v8];
  v11 = [(_PIPosterLayoutJob *)self layoutRegions];
  v12 = [v11 faceRegions];
  v13 = [v12 count] / 10.0;

  if (v13 <= 1.0)
  {
    *&v14 = v13;
  }

  else
  {
    *&v14 = 1.0;
  }

  [(_PIPosterLayoutJob *)self setNFaces:v14];
  v15 = [(_PIPosterLayoutJob *)self layout];
  v16 = [v15 portraitLayout];
  [v16 visibleFrame];
  v18 = v17;

  v19 = [(_PIPosterLayoutJob *)self layoutConfiguration];
  v20 = [v19 portraitConfiguration];
  [v20 screenSize];
  v22 = v21;

  *&v23 = fminf(v18 / v22, 1.0);
  [(_PIPosterLayoutJob *)self setResolutionRatio:v23];

  return 1;
}

- (BOOL)render:(id *)a3
{
  v6 = buf;
  v282 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v208 = NUAssertLogger_14911();
    if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
    {
      v209 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v277 = v209;
      _os_log_error_impl(&dword_1C7694000, v208, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_14911();
    v211 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v211)
      {
        v228 = dispatch_get_specific(*v11);
        v229 = MEMORY[0x1E696AF00];
        v3 = v228;
        v11 = [v229 callStackSymbols];
        v4 = [v11 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v277 = v228;
        v278 = 2114;
        v279 = *&v4;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v211)
    {
      v212 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v212 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v277 = v11;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v236 = "error != NULL";
    v216 = _NUAssertFailHandler();
    goto LABEL_103;
  }

  v5 = a3;
  v8 = [(_PIPosterLayoutJob *)self layoutConfiguration];
  if (!v8)
  {
    v213 = NUAssertLogger_14911();
    if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
    {
      v214 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing layout configuration"];
      *buf = 138543362;
      v277 = v214;
      _os_log_error_impl(&dword_1C7694000, v213, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    v215 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_14911();
    v216 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v215)
    {
      if (v216)
      {
        v217 = [MEMORY[0x1E696AF00] callStackSymbols];
        v11 = [v217 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v277 = v11;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_105:

      v221 = _NUAssertFailHandler();
      goto LABEL_106;
    }

LABEL_103:
    if (v216)
    {
      v230 = dispatch_get_specific(*v11);
      v231 = MEMORY[0x1E696AF00];
      v3 = v230;
      v11 = [v231 callStackSymbols];
      v4 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v277 = v230;
      v278 = 2114;
      v279 = *&v4;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_105;
  }

  v9 = v8;
  v270 = [(_PIPosterLayoutJob *)self layoutRegions];
  if (!v270)
  {
    v218 = NUAssertLogger_14911();
    if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
    {
      v219 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing layout regions"];
      *buf = 138543362;
      v277 = v219;
      _os_log_error_impl(&dword_1C7694000, v218, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    v220 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_14911();
    v221 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v220)
    {
      if (v221)
      {
        v222 = [MEMORY[0x1E696AF00] callStackSymbols];
        v11 = [v222 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v277 = v11;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_108:

      v226 = _NUAssertFailHandler();
      goto LABEL_109;
    }

LABEL_106:
    if (v221)
    {
      v232 = dispatch_get_specific(*v11);
      v233 = MEMORY[0x1E696AF00];
      v3 = v232;
      v11 = [v233 callStackSymbols];
      v4 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v277 = v232;
      v278 = 2114;
      v279 = *&v4;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_108;
  }

  v10 = [(NURenderJob *)self outputGeometry];
  if (!v10)
  {
    v223 = NUAssertLogger_14911();
    v3 = &qword_1C7845000;
    if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
    {
      v224 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing output geometry"];
      *buf = 138543362;
      v277 = v224;
      _os_log_error_impl(&dword_1C7694000, v223, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    v225 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_14911();
    v226 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v225)
    {
      if (v226)
      {
        v227 = [MEMORY[0x1E696AF00] callStackSymbols];
        v11 = [v227 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v277 = v11;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_111:

      _NUAssertFailHandler();
      goto LABEL_112;
    }

LABEL_109:
    if (v226)
    {
      v234 = dispatch_get_specific(*v11);
      v235 = MEMORY[0x1E696AF00];
      v3 = v234;
      v11 = [v235 callStackSymbols];
      v4 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v277 = v234;
      v278 = 2114;
      v279 = *&v4;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_111;
  }

  v11 = v10;
  [v10 extent];
  NUPixelRectToCGRect();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(_PIPosterLayoutJob *)self layoutRequest];
  v21 = [v20 layoutProvider];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = self;
  }

  v3 = v23;

  v24 = [v9 portraitConfiguration];
  v25 = [(_PIPosterLayoutJob *)self layoutRegions];
  v26 = [(_PIPosterLayoutJob *)self segmentationMatteImage];
  v4 = [v3 generateOrientedLayoutsForFullExtent:v24 layoutConfiguration:v25 layoutRegions:v26 segmentationMatteImage:-[_PIPosterLayoutJob segmentationClassification](self segmentationClassification:"segmentationClassification") error:{v5, v13, v15, v17, v19}];

  if (v4)
  {
    v27 = [v9 portraitConfiguration];
    v6 = [(_PIPosterLayoutJob *)self _layoutFromIntermediateLayouts:v4 layoutConfiguration:v27 fullExtent:v13, v15, v17, v19];

    [v6 visibleFrame];
    if (!CGRectIsEmpty(v283))
    {
      v30 = [v9 landscapeConfiguration];
      if (v30)
      {
        v31 = [MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration];

        if (v31)
        {
          v32 = [v9 landscapeConfiguration];
          v33 = [(_PIPosterLayoutJob *)self layoutRegions];
          [(_PIPosterLayoutJob *)self segmentationMatteImage];
          v268 = v11;
          v35 = v34 = v6;
          v30 = [v3 generateOrientedLayoutsForFullExtent:v32 layoutConfiguration:v33 layoutRegions:v35 segmentationMatteImage:-[_PIPosterLayoutJob segmentationClassification](self segmentationClassification:"segmentationClassification") error:{v5, v13, v15, v17, v19}];

          v36 = [v9 landscapeConfiguration];
          v37 = [(_PIPosterLayoutJob *)self _layoutFromIntermediateLayouts:v30 layoutConfiguration:v36 fullExtent:v13, v15, v17, v19];

          v6 = v34;
          v11 = v268;
        }

        else
        {
          v37 = 0;
          v30 = 0;
        }
      }

      else
      {
        v37 = 0;
      }

      v265 = v6;
      v266 = [objc_alloc(MEMORY[0x1E69C0800]) initWithPortraitLayout:v6 landscapeLayout:v37];
      [(_PIPosterLayoutJob *)self setLayout:?];
      v38 = [v4 lastObject];
      [v38 layoutScore];
      *&v39 = v39;
      [(_PIPosterLayoutJob *)self setLayoutScore:v39];
      v269 = v38;
      [v38 cropScore];
      *&v40 = v40;
      [(_PIPosterLayoutJob *)self setCropScore:v40];
      v264 = v30;
      v41 = [v30 lastObject];
      v42 = v41;
      if (v41)
      {
        [v41 layoutScore];
        *&v43 = v43;
        [(_PIPosterLayoutJob *)self setLandscapeLayoutScore:v43];
        [v42 cropScore];
        *&v44 = v44;
        [(_PIPosterLayoutJob *)self setLandscapeCropScore:v44];
      }

      v267 = v42;
      v45 = [(_PIPosterLayoutJob *)self layoutRequest];
      v46 = [v45 shouldConstrainLayoutToBounds];

      if ((v46 & 1) == 0)
      {
        v47 = MEMORY[0x1E69C07A8];
        v48 = [v9 portraitConfiguration];
        [v47 headroomPenaltyForIntermediateLayout:v269 originalFullExtent:v48 layoutConfiguration:{v13, v15, v17, v19}];
        [(_PIPosterLayoutJob *)self setUsingHeadroom:v49 > 0.0];

        if (v267)
        {
          v50 = MEMORY[0x1E69C07A8];
          v51 = [v9 landscapeConfiguration];
          [v50 headroomPenaltyForIntermediateLayout:v267 originalFullExtent:v51 layoutConfiguration:{v13, v15, v17, v19}];
          [(_PIPosterLayoutJob *)self setUsingLandscapeHeadroom:v52 > 0.0];
        }
      }

      v53 = [(_PIPosterLayoutJob *)self layoutRequest];
      v54 = [v53 shouldComputeAllScores];

      if (v54)
      {
        v55 = [v9 portraitConfiguration];
        -[_PIPosterLayoutJob setClockOverlapAcceptable:](self, "setClockOverlapAcceptable:", [v269 clockOverlapAcceptableForLayoutConfiguration:v55]);

        v56 = [(NURenderJob *)self renderer:v5];
        v57 = [(_PIPosterLayoutJob *)self segmentationMatteImage];

        if (v57)
        {
          v58 = v56 == 0;
        }

        else
        {
          v58 = 0;
        }

        v29 = !v58;
        v59 = v266;
        if (!v58)
        {
          v258 = v56;
          v256 = v29;
          v263 = objc_alloc_init(MEMORY[0x1E69B3AB8]);
          v60 = [v270 faceRegions];
          v257 = v19;
          if ([v60 count])
          {
            v61 = [v270 faceRegions];
            v62 = [v61 firstObject];
            [v62 rectValue];
            v64 = v63;
            v66 = v65;
            v68 = v67;
            v261 = v69;
          }

          else
          {
            v64 = *MEMORY[0x1E695F050];
            v66 = *(MEMORY[0x1E695F050] + 8);
            v68 = *(MEMORY[0x1E695F050] + 16);
            v261 = *(MEMORY[0x1E695F050] + 24);
          }

          [v266 imageSize];
          v73 = v72;
          [v266 imageSize];
          v75 = v74;
          v76 = [(_PIPosterLayoutJob *)self segmentationMatteImage];

          v238 = v17;
          v252 = v66;
          if (v76)
          {
            r2_16 = v68;
            r2_24 = v64;
            v77 = v64 * v73 + 0.0;
            v259 = 0.0;
            v254 = v68 * v73;
            v78 = [(_PIPosterLayoutJob *)self segmentationMatteImage];
            v79 = [v266 portraitLayout];
            [v79 visibleFrame];
            NURectNormalize();
            [v78 extent];
            NURectDenormalize();
            v81 = v80;
            v83 = v82;
            v85 = v84;
            v87 = v86;

            r2 = v81;
            v284.origin.x = v81;
            v284.origin.y = v83;
            v284.size.width = v85;
            v284.size.height = v87;
            v285 = CGRectIntegral(v284);
            v88 = v78;
            r2_8 = [v78 imageByCroppingToRect:{v285.origin.x, v285.origin.y, v285.size.width, v285.size.height}];
            [MEMORY[0x1E69C0798] inflatePersonFaceRect:{v77, v66 * v75 + 0.0, v254, v261 * v75}];
            if (v85 >= v87)
            {
              v93 = v87;
            }

            else
            {
              v93 = v85;
            }

            v286 = CGRectInset(*&v89, v93 * -0.05, v93 * -0.05);
            x = v286.origin.x;
            y = v286.origin.y;
            width = v286.size.width;
            height = v286.size.height;
            v98 = [v266 portraitLayout];
            [v98 visibleFrame];
            v103 = x - v102;
            v104 = 0.0;
            if (v100 != 0.0)
            {
              v103 = v103 / v100;
              v104 = width / v100;
            }

            v105 = y - v99;
            if (v101 != 0.0)
            {
              v105 = v105 / v101;
              v259 = height / v101;
            }

            [v88 extent];
            v108 = v106 + v103 * v107;
            v111 = v109 + v105 * v110;
            v112 = v104 * v107;
            v113 = v259 * v110;

            v287.origin.x = v108;
            v287.origin.y = v111;
            v287.size.width = v112;
            v287.size.height = v113;
            v294.origin.x = r2;
            v294.origin.y = v83;
            v294.size.width = v85;
            v294.size.height = v87;
            v288 = CGRectIntersection(v287, v294);
            v114 = v288.origin.x;
            v115 = v288.origin.y;
            v116 = v288.size.width;
            v117 = v288.size.height;
            v260 = [v263 computeHistogramFromMatte:r2_8];
            v118 = [PISegmentationHelper localConfidenceImage:r2_8];
            [v118 extent];
            v120 = v119;
            v122 = v121;
            v124 = v123;
            v126 = v125;
            v127 = [v258 context];
            [PISegmentationHelper localConfidenceScoreForLocalConfidenceImage:v118 extent:v127 context:v120, v122, v124, v126];
            v240 = v128;

            v129 = [v258 context];
            [PISegmentationHelper localConfidenceScoreForLocalConfidenceImage:v118 extent:v129 context:v114, v115, v116, v117];
            v131 = v130;

            v132 = [v258 context];
            [PISegmentationHelper groundedScoreForSegmentationMatte:r2_8 context:v132];
            v239 = v133;

            v68 = r2_16;
            v64 = r2_24;
            v59 = v266;
          }

          else
          {
            v260 = 0;
            v239 = 0;
            v240 = 0;
            v131 = 0;
          }

          v134 = [(_PIPosterLayoutJob *)self segmentationConfidenceMapImage];

          if (v134)
          {
            v135 = [(_PIPosterLayoutJob *)self segmentationConfidenceMapImage];
            [v59 imageSize];
            [v59 imageSize];
            v136 = [v59 portraitLayout];
            [v136 visibleFrame];
            NURectNormalize();
            [v135 extent];
            NURectDenormalize();
            v138 = v137;
            v140 = v139;
            v142 = v141;
            v144 = v143;

            v289.origin.x = v138;
            v289.origin.y = v140;
            v289.size.width = v142;
            v289.size.height = v144;
            v290 = CGRectIntegral(v289);
            v145 = [v135 imageByCroppingToRect:{v290.origin.x, v290.origin.y, v290.size.width, v290.size.height}];
            v146 = [v263 computeHistogramFromMatte:v145];
          }

          else
          {
            v146 = 0;
          }

          if (v68 >= v261)
          {
            v147 = v68;
          }

          else
          {
            v147 = v261;
          }

          v255 = v131;
          v241 = v147;
          if ([(_PIPosterLayoutJob *)self segmentationClassification]== 1)
          {
            v148 = v68;
            v149 = MEMORY[0x1E69C07A8];
            [v59 imageSize];
            v152 = v150;
            v153 = v151;
            if (v150 == 0.0 || v151 == 0.0 || v150 == *MEMORY[0x1E69BDDB0] && v151 == *(MEMORY[0x1E69BDDB0] + 8))
            {
              v154 = 1.0;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
              {
                *buf = 134218496;
                v277 = *&v152;
                v278 = 2048;
                v279 = v153;
                v280 = 2048;
                v281 = 0x3FF0000000000000;
                _os_log_fault_impl(&dword_1C7694000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
              }
            }

            else
            {
              v154 = fabs(v150 / v151);
            }

            v253 = [v149 facePositionAcceptable:v64 imageAspect:{v252, v148, v261, v154}];
          }

          else
          {
            v253 = 1;
          }

          [PISegmentationHelper bimodalScoreForHistogram:v260];
          v242 = v155;
          r2a = v156;
          r2_16a = v157;
          v262 = v146;
          [PISegmentationHelper bimodalScoreForHistogram:v146];
          v243 = v158;
          r2_8a = v159;
          r2_24a = v160;
          v162 = *MEMORY[0x1E695F050];
          v161 = *(MEMORY[0x1E695F050] + 8);
          v164 = *(MEMORY[0x1E695F050] + 16);
          v163 = *(MEMORY[0x1E695F050] + 24);
          v271 = 0u;
          v272 = 0u;
          v273 = 0u;
          v274 = 0u;
          v165 = [v270 faceRegions];
          v166 = [v165 countByEnumeratingWithState:&v271 objects:v275 count:16];
          if (v166)
          {
            v167 = v166;
            v168 = *v272;
            do
            {
              for (i = 0; i != v167; ++i)
              {
                if (*v272 != v168)
                {
                  objc_enumerationMutation(v165);
                }

                [*(*(&v271 + 1) + 8 * i) rectValue];
                v171 = v170;
                v173 = v172;
                v175 = v174;
                v177 = v176;
                v291.origin.x = v162;
                v291.origin.y = v161;
                v291.size.width = v164;
                v291.size.height = v163;
                if (CGRectIsNull(v291))
                {
                  v162 = v171;
                  v161 = v173;
                  v164 = v175;
                  v163 = v177;
                }

                else
                {
                  v292.origin.x = v162;
                  v292.origin.y = v161;
                  v292.size.width = v164;
                  v292.size.height = v163;
                  v295.origin.x = v171;
                  v295.origin.y = v173;
                  v295.size.width = v175;
                  v295.size.height = v177;
                  v293 = CGRectUnion(v292, v295);
                  v162 = v293.origin.x;
                  v161 = v293.origin.y;
                  v164 = v293.size.width;
                  v163 = v293.size.height;
                }
              }

              v167 = [v165 countByEnumeratingWithState:&v271 objects:v275 count:16];
            }

            while (v167);
          }

          buf[0] = 0;
          v179 = [(_PIPosterLayoutJob *)self layoutRequest];
          v180 = [v179 layoutProvider];

          v181 = 0;
          if (!v180)
          {
            v237 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24) - (v161 + v163);
            v182 = MEMORY[0x1E69C06A0];
            v183 = [(_PIPosterLayoutJob *)self segmentationClassification];
            v184 = [v9 portraitConfiguration];
            [v270 preferredCropRect];
            v186 = v185;
            v188 = v187;
            v190 = v189;
            v192 = v191;
            [v270 acceptableCropRect];
            [v182 bestCropRectV2ForPosterClassification:v183 layoutConfiguration:v184 sourcePixelWidth:v238 sourcePixelHeight:v257 sourcePreferredCropRectNormalized:0 sourceAcceptableCropRectNormalized:0 sourceFaceAreaRectNormalized:v186 outputCropScore:v188 outputLayoutScore:v190 outputClockOverlapAcceptable:{v192, v193, v194, v195, v196, *&v162, *&v237, *&v164, *&v163, buf}];

            v181 = buf[0];
          }

          [(_PIPosterLayoutJob *)self setMetadataClockOverlapAcceptable:v181 & 1];
          LODWORD(v197) = v242;
          [(_PIPosterLayoutJob *)self setSegmentationScore:v197];
          LODWORD(v198) = v240;
          [(_PIPosterLayoutJob *)self setLocalConfidenceScore:v198];
          LODWORD(v199) = v239;
          [(_PIPosterLayoutJob *)self setGroundedScore:v199];
          LODWORD(v200) = v243;
          [(_PIPosterLayoutJob *)self setConfidenceMapScore:v200];
          LODWORD(v201) = r2a;
          [(_PIPosterLayoutJob *)self setMattePureBackground:v201];
          LODWORD(v202) = r2_16a;
          [(_PIPosterLayoutJob *)self setMattePureForeground:v202];
          LODWORD(v203) = r2_8a;
          [(_PIPosterLayoutJob *)self setConfidencePureBackground:v203];
          LODWORD(v204) = r2_24a;
          [(_PIPosterLayoutJob *)self setConfidencePureForeground:v204];
          v178 = v241;
          *&v205 = v178;
          [(_PIPosterLayoutJob *)self setFaceSize:v205];
          LODWORD(v206) = v255;
          [(_PIPosterLayoutJob *)self setFaceLocalConfidence:v206];
          [(_PIPosterLayoutJob *)self setFacePositionAcceptable:v253];

          v59 = v266;
          v29 = v256;
          v56 = v258;
        }

        v70 = v37;

        v71 = v264;
      }

      else
      {
        v70 = v37;
        v29 = 1;
        v71 = v264;
        v59 = v266;
      }

      v6 = v265;
      goto LABEL_78;
    }

    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_11:
      v28 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C7694000, v28, OS_LOG_TYPE_FAULT, "Portrait layout has an empty visible frame", buf, 2u);
      }

      [MEMORY[0x1E69B3A48] invalidError:@"Invalid portrait layout" object:{v6, v236}];
      *v5 = v29 = 0;
LABEL_78:

      goto LABEL_79;
    }

LABEL_112:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_400);
    goto LABEL_11;
  }

  v29 = 0;
LABEL_79:

  return v29;
}

- (float)_headroomPenaltyForIntermediateLayout:(id)a3 originalFullExtent:(CGRect)a4 layoutConfiguration:(id)a5
{
  height = a4.size.height;
  v7 = a5;
  v8 = a3;
  [v8 visibleRect];
  v10 = v9;
  [v8 visibleRect];
  v12 = v11;

  v13 = v10 + v12 - height;
  [v7 screenSize];
  v15 = v14;
  [v7 screenScale];
  v17 = v16;
  [v7 screenScale];
  v19 = v18;

  result = 1.0;
  if (v13 <= 0.0)
  {
    return fmax(v15 / v17 * (v13 / v19), 0.0) / ((*MEMORY[0x1E69C0C68] + -1.0) * 1398784.0) * 5.0;
  }

  return result;
}

- (id)_layoutFromIntermediateLayouts:(id)a3 layoutConfiguration:(id)a4 fullExtent:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v149 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (![v10 count])
  {
    v97 = NUAssertLogger_14911();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "intermediateLayouts.count > 0"];
      *buf = 138543362;
      *&buf[4] = v98;
      _os_log_error_impl(&dword_1C7694000, v97, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v99 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v101 = NUAssertLogger_14911();
    v102 = os_log_type_enabled(v101, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v102)
      {
        v105 = dispatch_get_specific(*v99);
        v106 = MEMORY[0x1E696AF00];
        v107 = v105;
        v108 = [v106 callStackSymbols];
        v109 = [v108 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v105;
        *&buf[12] = 2114;
        *&buf[14] = v109;
        _os_log_error_impl(&dword_1C7694000, v101, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v102)
    {
      v103 = [MEMORY[0x1E696AF00] callStackSymbols];
      v104 = [v103 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v104;
      _os_log_error_impl(&dword_1C7694000, v101, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v12 = [v10 lastObject];
  [v12 visibleRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v12 adaptiveVisibleRect];
  v140 = v21;
  v139 = v22;
  v138 = v23;
  v142 = v24;
  [v11 parallaxPaddingPct];
  v135 = v26;
  v136 = v25;
  [v11 timeRect];
  v131 = v28;
  v133 = v27;
  v129 = v29;
  v31 = v30;
  v32 = *MEMORY[0x1E69C0BA0];
  v33 = [(_PIPosterLayoutJob *)self segmentationMatteImage];
  v141 = height;
  v143 = v14;
  v145 = v18;
  v146 = v16;
  if (v33 && [v12 layoutVariant] == 1)
  {
    v147 = 0;
    v34 = [(NURenderJob *)self renderer:&v147];
    v35 = v14 - x;
    v36 = 0.0;
    v37 = 0.0;
    if (width != 0.0)
    {
      v35 = v35 / width;
      v37 = v145 / width;
    }

    v38 = v146 - y;
    if (height != 0.0)
    {
      v38 = v38 / height;
      v36 = v20 / height;
    }

    v39 = v147;
    [v33 extent];
    v42 = v40 + v35 * v41;
    v45 = v43 + v38 * v44;
    v46 = v37 * v41;
    v47 = v36 * v44;
    memset(buf, 0, sizeof(buf));
    v48 = [v34 context];
    [PISegmentationHelper computeClockLayerOrderWithVisibleFrame:v33 segmentationMatte:v11 layoutConfiguration:v48 context:0 interactive:v42, v45, v46, v47];

    v49 = *buf;
    v50 = *&buf[8];

    v32 = v49;
    v14 = v143;
    v18 = v145;
    v16 = v146;
  }

  else
  {
    v50 = 2;
  }

  v51 = v20;
  v52 = v16 + v129 * v20;
  v53 = v20 * v31;
  [v12 inactiveRect];
  v128 = v55;
  v130 = v54;
  v126 = v57;
  v127 = v56;
  [v12 maxClockShift];
  v59 = v58;
  [v12 adaptiveInactiveTopRect];
  v123 = v61;
  v124 = v60;
  v121 = v63;
  v122 = v62;
  v125 = v52;
  v120 = v59;
  if ([v12 layoutVariant] == 3)
  {
    v64 = v51 * v59;
LABEL_12:
    v119 = v52 - v64;
    v65 = v53 + v64;
LABEL_15:
    v66 = *MEMORY[0x1E69C0B98];

    v50 = 1;
    v32 = v66;
    goto LABEL_16;
  }

  if ([v12 layoutVariant] == 2)
  {
    v119 = v52 - (v142 - v51) - v51 * v59;
    v65 = v142 - v51 + v53 + v51 * v59;
    goto LABEL_15;
  }

  if ([v12 layoutVariant] == 4)
  {
    v90 = [(_PIPosterLayoutJob *)self layoutRequest];
    v91 = [v90 allowedClockStretch];

    if (v91)
    {
      v92 = [(_PIPosterLayoutJob *)self layoutRequest];
      v93 = [v92 allowedClockStretch];
      [v93 floatValue];
      v95 = fmax(fmin(v94, 1.0), 0.0);
    }

    else
    {
      v95 = 1.0;
    }

    [v11 maxStrechAmountNormalized];
    v64 = v95 * (v51 * v96);
    goto LABEL_12;
  }

  v119 = v52;
  v65 = v53;
LABEL_16:
  v67 = v65 / v51;
  if (v51 == 0.0)
  {
    v67 = 0.0;
  }

  v117 = v18 * v131;
  v118 = v14 + v133 * v18;
  v137 = v18 * v136;
  [v11 timeRectForNormalizedHeight:v67];
  v115 = v18 * v69;
  v116 = v14 + v68 * v18;
  v70 = objc_alloc(MEMORY[0x1E69C0828]);
  [v11 screenSize];
  v132 = v72;
  v134 = v71;
  [v12 spatialVisibleRect];
  v113 = v74;
  v114 = v73;
  v112 = v75;
  v111 = v76;
  [v12 spatialAdaptiveVisibleRect];
  v110 = v77;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  [v12 salientContentRect];
  v88 = [v70 initWithImageSize:v32 deviceResolution:v50 parallaxPadding:objc_msgSend(v12 visibleFrame:"layoutVariant") adaptiveVisibleFrame:objc_msgSend(v12 inactiveFrame:"hasTopEdgeContact") adaptiveInactiveTopFrame:v10 spatialVisibleFrame:width spatialAdaptiveFrame:v141 timeFrame:v134 adaptiveTimeFrame:v132 salientContentFrame:v137 clockLayerOrder:v51 * v135 clockIntersection:*&v143 layoutVariant:*&v146 hasTopEdgeContact:*&v145 maxClockShift:*&v51 debugLayouts:{v140, v139, v138, *&v142, v130, v128, v127, v126, v124, v123, v122, v121, v114, v113, v112, v111, v110, v79, v81, v83, *&v118, *&v125, *&v117, *&v53, *&v116, *&v119, *&v115, *&v65, v84, v85, v86, v87, *&v120}];

  return v88;
}

- (id)generateOrientedLayoutsForFullExtent:(CGRect)a3 layoutConfiguration:(id)a4 layoutRegions:(id)a5 segmentationMatteImage:(id)a6 segmentationClassification:(unint64_t)a7 error:(id *)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v247 = *MEMORY[0x1E69E9840];
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v249.origin.x = x;
  v249.origin.y = y;
  v249.size.width = width;
  v249.size.height = height;
  if (CGRectIsEmpty(v249))
  {
    v186 = NUAssertLogger_14911();
    v8 = "CGRectIsEmpty(fullExtent) == false";
    if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
    {
      v187 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CGRectIsEmpty(fullExtent) == false"];
      LODWORD(v246.a) = 138543362;
      *(&v246.a + 4) = v187;
      _os_log_error_impl(&dword_1C7694000, v186, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v246, 0xCu);
    }

    v188 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v190 = NUAssertLogger_14911();
    v191 = os_log_type_enabled(v190, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v191)
      {
        v199 = dispatch_get_specific(*v188);
        v200 = MEMORY[0x1E696AF00];
        self = v199;
        v188 = [v200 callStackSymbols];
        v24 = [v188 componentsJoinedByString:@"\n"];
        LODWORD(v246.a) = 138543618;
        *(&v246.a + 4) = v199;
        WORD2(v246.b) = 2114;
        *(&v246.b + 6) = v24;
        _os_log_error_impl(&dword_1C7694000, v190, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v246, 0x16u);
      }
    }

    else if (v191)
    {
      v192 = [MEMORY[0x1E696AF00] callStackSymbols];
      v188 = [v192 componentsJoinedByString:@"\n"];
      LODWORD(v246.a) = 138543362;
      *(&v246.a + 4) = v188;
      _os_log_error_impl(&dword_1C7694000, v190, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v246, 0xCu);
    }

    v204 = "CGRectIsEmpty(fullExtent) == false";
    v196 = _NUAssertFailHandler();
    goto LABEL_100;
  }

  v25 = [(_PIPosterLayoutJob *)self layoutRequest];
  [v25 normalizedLayoutBounds];
  v9 = v26;
  v10 = v27;
  v245 = v28;
  v11 = v29;

  [v22 screenSize];
  if (v30 <= 0.0)
  {
    v193 = NUAssertLogger_14911();
    if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
    {
      v194 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid layout configuration"];
      LODWORD(v246.a) = 138543362;
      *(&v246.a + 4) = v194;
      _os_log_error_impl(&dword_1C7694000, v193, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v246, 0xCu);
    }

    v188 = MEMORY[0x1E69B38E8];
    v195 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v190 = NUAssertLogger_14911();
    v196 = os_log_type_enabled(v190, OS_LOG_TYPE_ERROR);
    if (!v195)
    {
      if (v196)
      {
        v197 = [MEMORY[0x1E696AF00] callStackSymbols];
        v198 = [v197 componentsJoinedByString:@"\n"];
        LODWORD(v246.a) = 138543362;
        *(&v246.a + 4) = v198;
        _os_log_error_impl(&dword_1C7694000, v190, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v246, 0xCu);
      }

LABEL_102:

      _NUAssertFailHandler();
LABEL_103:
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_14924);
LABEL_48:
      v107 = MEMORY[0x1E69B3D70];
      v108 = *MEMORY[0x1E69B3D70];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
      {
        v109 = MEMORY[0x1E696AEC0];
        v110 = v108;
        v111 = [v109 stringWithFormat:@"Invalid new initial rect"];
        LODWORD(v246.a) = 138543362;
        *(&v246.a + 4) = v111;
        _os_log_impl(&dword_1C7694000, v110, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", &v246, 0xCu);

        v112 = *v8;
        if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
        {
          if (v112 != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_14924);
          }

          goto LABEL_53;
        }

        if (v112 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_14924);
        }
      }

      else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
LABEL_53:
        v113 = *v107;
        if (os_log_type_enabled(*v107, OS_LOG_TYPE_ERROR))
        {
          v114 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v115 = MEMORY[0x1E696AF00];
          v116 = v114;
          v117 = v113;
          v118 = [v115 callStackSymbols];
          v119 = [v118 componentsJoinedByString:@"\n"];
          LODWORD(v246.a) = 138543618;
          *(&v246.a + 4) = v114;
          WORD2(v246.b) = 2114;
          *(&v246.b + 6) = v119;
          _os_log_error_impl(&dword_1C7694000, v117, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v246, 0x16u);
        }

LABEL_59:
        _NUAssertContinueHandler();
        v97 = v245;
        goto LABEL_60;
      }

      v120 = *v107;
      if (os_log_type_enabled(*v107, OS_LOG_TYPE_ERROR))
      {
        v182 = MEMORY[0x1E696AF00];
        v183 = v120;
        v184 = [v182 callStackSymbols];
        v185 = [v184 componentsJoinedByString:@"\n"];
        LODWORD(v246.a) = 138543362;
        *(&v246.a + 4) = v185;
        _os_log_error_impl(&dword_1C7694000, v183, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v246, 0xCu);
      }

      goto LABEL_59;
    }

LABEL_100:
    if (v196)
    {
      v201 = dispatch_get_specific(*v188);
      v202 = MEMORY[0x1E696AF00];
      self = v201;
      v203 = [v202 callStackSymbols];
      v24 = [v203 componentsJoinedByString:@"\n"];
      LODWORD(v246.a) = 138543618;
      *(&v246.a + 4) = v201;
      WORD2(v246.b) = 2114;
      *(&v246.b + 6) = v24;
      _os_log_error_impl(&dword_1C7694000, v190, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v246, 0x16u);
    }

    goto LABEL_102;
  }

  v31 = [(NURenderJob *)self renderer:a8];
  v32 = [(_PIPosterLayoutJob *)self segmentationMatteImage];

  if (v32 && !v31)
  {
    v33 = 0;
    goto LABEL_81;
  }

  v34 = [v23 petRegions];
  v35 = [v34 count];

  v229 = v9;
  v243 = v10;
  v244 = v11;
  v230 = v31;
  v214 = x;
  v215 = y;
  if (v24)
  {
    [v24 extent];
    v37 = width / v36;
    [v24 extent];
    CGAffineTransformMakeScale(&v246, v37, height / v38);
    v39 = [v24 imageByApplyingTransform:&v246];

    v24 = v39;
  }

  v40 = width;
  v41 = height;
  [v23 preferredCropRect];
  v223 = v43;
  v225 = v42;
  v220 = v45;
  v221 = v44;
  [v23 acceptableCropRect];
  v218 = v47;
  v219 = v46;
  v216 = v49;
  v217 = v48;
  [v23 gazeAreaRect];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = MEMORY[0x1E69C07A8];
  [v22 screenSize];
  v60 = v59;
  v62 = v61;
  v63 = [v23 faceRegions];
  v227 = width;
  v228 = height;
  [v58 bestFaceRectWithImageSize:v63 deviceSize:width faceRegions:{height, v60, v62}];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;

  v240 = v67 + v71;
  v242 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24);
  v72 = [v23 faceRegions];
  v73 = [v72 count];

  v212 = v69;
  v213 = v65;
  rect = v57;
  v211 = v71;
  if (v73 == 1)
  {
    v74 = [v23 faceRegions];
    v75 = [v74 firstObject];
    [v75 rectValue];
    v76 = v55;
    v77 = v67;
    v78 = v53;
    v79 = v51;
    v81 = v80;

    v82 = v81 <= 0.33;
    v51 = v79;
    v53 = v78;
    v67 = v77;
    v55 = v76;
    v57 = rect;
    if (!v82)
    {
      v65 = *MEMORY[0x1E695F050];
      v67 = *(MEMORY[0x1E695F050] + 8);
      v69 = *(MEMORY[0x1E695F050] + 16);
      v71 = *(MEMORY[0x1E695F050] + 24);
    }
  }

  v210 = v242 - v240;
  v206 = v55;
  v207 = v53;
  v208 = v51;
  [MEMORY[0x1E69C07A8] effectiveAcceptableRectForClassification:a7 havePetFaces:v35 != 0 sourcePreferredCropRectNormalized:v225 sourceAcceptableCropRectNormalized:v223 sourceFaceAreaRectNormalized:v221 sourceGazeAreaRectNormalized:{v220, v219, v218, v217, v216, v65, *&v67, v69, *&v71, *&v51, *&v53, *&v55, *&v57}];
  v238 = v84;
  v239 = v83;
  v236 = v86;
  v237 = v85;
  [MEMORY[0x1E69C07A8] effectivePreferredRectForClassification:a7 havePetFaces:v35 != 0 sourcePreferredCropRectNormalized:v225 sourceAcceptableCropRectNormalized:v223 sourceFaceAreaRectNormalized:{v221, v220, v219, v218, v217, v216, v65, *&v67, v69, *&v71}];
  v234 = v88;
  v235 = v87;
  v232 = v90;
  v233 = v89;
  [v22 screenSize];
  v92 = v91;
  [v22 screenSize];
  width = *MEMORY[0x1E695F058];
  v93 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v95 = v92 / v94;
  v96 = [(_PIPosterLayoutJob *)self segmentationClassification];
  if (v96 > 2)
  {
    v97 = v245;
    if ((v96 - 3) >= 3)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v97 = v245;
  if (!v96)
  {
LABEL_17:
    [MEMORY[0x1E69C06A0] bestCropRectV2ForAspectRatio:v40 withFocusRegion:v41 sourcePixelWidth:0 sourcePixelHeight:v95 sourcePreferredCropRectNormalized:*MEMORY[0x1E695F050] sourceAcceptableCropRectNormalized:*(MEMORY[0x1E695F050] + 8) sourceFaceAreaRectNormalized:*(MEMORY[0x1E695F050] + 16) outputCropScore:{*(MEMORY[0x1E695F050] + 24), v235, v234, v233, v232, *&v239, *&v238, *&v237, *&v236, v213, *&v210, v212, *&v211}];
LABEL_24:
    width = v98;
    v93 = v99;
    v10 = v100;
    v11 = v101;
    goto LABEL_25;
  }

  if (v96 != 1)
  {
    if (v96 != 2)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (![MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
LABEL_23:
    [MEMORY[0x1E69C06A0] bestCropRectV2ForAspectRatio:v40 sourcePixelWidth:v41 sourcePixelHeight:0 sourceEssentialAreaRect:v95 sourceSecondaryEssentialAreaRect:v239 outputCropScore:{v238, v237, v236, v235, v234, v233, v232}];
    goto LABEL_24;
  }

  v102 = +[PIGlobalSettings globalSettings];
  if ([v102 posterDisableCropVariant])
  {

    goto LABEL_23;
  }

  v250.origin.y = v207;
  v250.origin.x = v208;
  v250.size.width = v206;
  v250.size.height = rect;
  IsEmpty = CGRectIsEmpty(v250);

  if (IsEmpty)
  {
    goto LABEL_23;
  }

  [PIPNCropUtilitiesWrapper bestCropVariantFromSignalsWithAspectRatio:v40 sourcePixelWidth:v41 sourcePixelHeight:v95 acceptableCropRect:v219 preferredCropRect:v218 normalizedFaceAreaRect:v217 gazeAreaRect:v216, *&v225, *&v223, *&v221, *&v220, v213, *&v210, v212, *&v211, *&v208, *&v207, *&v206, *&rect];
  v93 = v251.origin.y;
  v10 = v251.size.width;
  v11 = v251.size.height;
  width = v251.origin.x;
  if (CGRectIsEmpty(v251))
  {
    goto LABEL_23;
  }

LABEL_25:
  v9 = v242 - (v11 + v93);
  v12 = v229;
  v252.origin.x = v229;
  v252.origin.y = v243;
  v252.size.width = v97;
  v252.size.height = v244;
  v241 = v23;
  if (CGRectIsNull(v252))
  {
    y = v11;
    height = v10;
    goto LABEL_67;
  }

  if (v10 + width <= v229 + v97)
  {
    v104 = width;
  }

  else
  {
    v104 = v229 + v97 - v10;
  }

  if (v104 >= v229)
  {
    width = v104;
  }

  else
  {
    width = v229;
  }

  if (v11 + v9 <= v243 + v244)
  {
    v105 = v9;
  }

  else
  {
    v105 = v243 + v244 - v11;
  }

  if (v105 >= v243)
  {
    v9 = v105;
  }

  else
  {
    v9 = v243;
  }

  v106 = fmin(v97 / v10, v244 / v11);
  if (v106 >= 1.0)
  {
    height = v10;
  }

  else
  {
    height = v10 * v106;
  }

  if (v106 >= 1.0)
  {
    y = v11;
  }

  else
  {
    y = v11 * v106;
  }

  if (height <= 0.0 || y <= 0.0)
  {
    v8 = MEMORY[0x1E69B3D78];
    if (*MEMORY[0x1E69B3D78] == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_103;
  }

LABEL_60:
  if (v97 / height >= v244 / y)
  {
    v122 = (v10 - height) * 0.5;
    if (v122 >= v97 - height)
    {
      v122 = v97 - height;
    }

    width = width + v122;
  }

  else
  {
    v121 = (v11 - y) * 0.5;
    if (v121 >= v244 - y)
    {
      v121 = v244 - y;
    }

    v9 = v9 + v121;
  }

LABEL_67:
  v124 = v227;
  v123 = v228;
  v125 = [(_PIPosterLayoutJob *)self layoutRequest];
  v126 = [v125 allowedLayoutStrategies];

  v127 = [(_PIPosterLayoutJob *)self layoutRequest];
  v128 = [v127 role];

  if (v128 == 2)
  {
    v129 = 3;
  }

  else
  {
    v130 = [(_PIPosterLayoutJob *)self layoutRequest];
    v131 = [v130 role];

    if (v131 != 1)
    {
      v180 = [(_PIPosterLayoutJob *)self layoutRequest];
      v181 = [v180 hasSettlingEffect];

      if (v181)
      {
        v129 = 2;
      }

      else
      {
        v129 = [MEMORY[0x1E69C07A8] layoutTypeFromLayoutConfiguration:v22];
      }

      goto LABEL_72;
    }

    v129 = 0;
  }

  v126 = 1;
LABEL_72:
  v132 = v214 + width * v227;
  v133 = v215 + v9 * v228;
  v134 = v227 * height;
  v135 = v228 * y;
  v136 = [(_PIPosterLayoutJob *)self layoutRequest];
  v137 = [v136 shouldConstrainLayoutToBounds];

  v138 = [(_PIPosterLayoutJob *)self layoutRequest];
  v139 = [v138 shouldConsiderHeadroom];

  v231 = v22;
  if (v24)
  {
    v140 = [MEMORY[0x1E695F620] context];
    v141 = [PISegmentationHelper topEdgeHasNoContactWithInspectionMatte:v24 context:v140];

    [(_PIPosterLayoutJob *)self setHeadroomIsFeasible:v139 & v141];
    v224 = v129;
    v226 = v126;
    v222 = v137;
    if ([(_PIPosterLayoutJob *)self headroomIsFeasible]&& v129 != 2)
    {
      [v24 extent];
      v143 = v142;
      v145 = v144;
      v147 = v146;
      v149 = *MEMORY[0x1E69C0C68] * v148;
      v150 = objc_alloc(MEMORY[0x1E695F658]);
      v151 = [MEMORY[0x1E695F610] blackColor];
      v152 = [v150 initWithColor:v151];

      v153 = [v24 imageByCompositingOverImage:v152];
      v154 = v143;
      v155 = v147;
      v156 = v149;
      v123 = v228;
      v12 = v229;
      v124 = v227;
      v157 = [v153 imageByCroppingToRect:{v154, v145, v155, v156}];

      v24 = v157;
    }

    v158 = [PIPosterLayoutHelper alloc];
    v159 = [v230 context];
    v160 = [(_PIPosterLayoutJob *)self segmentationClassification];
    v161 = [(_PIPosterLayoutJob *)self headroomIsFeasible];
    v162 = [(_PIPosterLayoutJob *)self layoutRequest];
    v163 = [v162 shouldComputeSpatialLayout];
    v164 = [(_PIPosterLayoutJob *)self layoutRequest];
    [v164 spatialPadding];
    LOBYTE(v205) = v163;
    v166 = [(PIPosterLayoutHelper *)v158 initWithCIContext:v159 matte:v24 posterClassification:v160 initialRect:v161 imageSize:!v141 effectiveAcceptableRect:v222 effectivePreferredRect:v132 validBoundsNormalized:v133 headroomFeasible:v134 hasTopEdgeContact:v135 shouldConstrainLayoutToBounds:v124 computeSpatial:v123 spatialPadding:*&v239 layoutType:*&v238 allowedLayoutStrategies:*&v237 layoutConfiguration:*&v236, v235, v234, v233, v232, *&v12, *&v243, *&v245, *&v244, v205, v165, v224, v226, v231];
  }

  else
  {
    v167 = objc_alloc(MEMORY[0x1E69C0798]);
    v168 = [(_PIPosterLayoutJob *)self segmentationClassification];
    [(_PIPosterLayoutJob *)self layoutRequest];
    v159 = v169 = v22;
    v170 = [v159 shouldComputeSpatialLayout];
    v162 = [(_PIPosterLayoutJob *)self layoutRequest];
    [v162 spatialPadding];
    v166 = [v167 initWithPosterClassification:v168 initialRect:0 imageSize:0 effectiveAcceptableRect:v170 effectivePreferredRect:v129 validBoundsNormalized:v126 headroomFeasible:v132 hasTopEdgeContact:v133 computeSpatial:v134 spatialPadding:v228 * y layoutType:v227 allowedLayoutStrategies:v228 layoutConfiguration:{*&v239, *&v238, *&v237, *&v236, v235, v234, v233, v232, *&v12, *&v243, *&v245, *&v244, v171, v169}];
    v24 = 0;
  }

  v172 = [(_PIPosterLayoutJob *)self layoutRequest];
  v173 = [v172 allowedClockStretch];

  if (v173)
  {
    v174 = [(_PIPosterLayoutJob *)self layoutRequest];
    v175 = [v174 allowedClockStretch];
    [v175 floatValue];
    [(PFParallaxLayoutHelper *)v166 setAllowedClockStretch:fmax(fmin(v176, 1.0), 0.0)];
  }

  v177 = [MEMORY[0x1E69C07A8] computeLayoutsWithHelper:v166];
  v178 = [(PFParallaxLayoutHelper *)v166 bestLayout:v177];
  v33 = [v177 arrayByAddingObject:v178];

  v31 = v230;
  v22 = v231;
  v23 = v241;
LABEL_81:

  return v33;
}

- (BOOL)prepare:(id *)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = _PIPosterLayoutJob;
  if ([(NURenderJob *)&v37 prepare:?])
  {
    v5 = [(_PIPosterLayoutJob *)self layoutRequest];
    if ([v5 shouldConstrainLayoutToBounds])
    {
      [v5 normalizedLayoutBounds];
      if (CGRectIsNull(v43))
      {
        v24 = NUAssertLogger_14911();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot constrain layout to a null rect"];
          *buf = 138543362;
          v39 = v25;
          _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v26 = MEMORY[0x1E69B38E8];
        specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v28 = NUAssertLogger_14911();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (specific)
        {
          if (v29)
          {
            v32 = dispatch_get_specific(*v26);
            v33 = MEMORY[0x1E696AF00];
            v34 = v32;
            v35 = [v33 callStackSymbols];
            v36 = [v35 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v39 = v32;
            v40 = 2114;
            v41 = v36;
            _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v29)
        {
          v30 = [MEMORY[0x1E696AF00] callStackSymbols];
          v31 = [v30 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v39 = v31;
          _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler();
      }
    }

    v6 = [v5 layoutConfiguration];
    [(_PIPosterLayoutJob *)self setLayoutConfiguration:v6];

    v7 = [(_PIPosterLayoutJob *)self layoutConfiguration];

    if (v7)
    {
      v8 = [v5 layoutRegions];
      [(_PIPosterLayoutJob *)self setLayoutRegions:v8];

      v9 = [(_PIPosterLayoutJob *)self layoutRegions];

      if (v9)
      {
        -[_PIPosterLayoutJob setSegmentationClassification:](self, "setSegmentationClassification:", [v5 segmentationClassification]);
        v10 = [v5 segmentationMatte];
        if (v10)
        {
          v11 = [MEMORY[0x1E695F658] imageWithNUImageBuffer:v10];
          [v11 extent];
          v13 = @"Invalid segmentation matte size";
          if (v14 >= 1.0 && v12 >= 1.0)
          {
            if ([(_PIPosterLayoutJob *)self segmentationClassification])
            {
              if ([(_PIPosterLayoutJob *)self segmentationClassification]== 3 || [(_PIPosterLayoutJob *)self segmentationClassification]== 4)
              {
                v15 = [PISegmentationHelper invertImage:v11];

                v11 = v15;
              }

              [(_PIPosterLayoutJob *)self setSegmentationMatteImage:v11];

              goto LABEL_14;
            }

            v13 = @"Invalid segmentation classification";
          }

          [MEMORY[0x1E69B3A48] invalidError:v13 object:v5];
          *a3 = v20 = 0;
LABEL_26:

          goto LABEL_27;
        }

LABEL_14:
        v11 = [v5 segmentationConfidenceMap];
        if (v11)
        {
          v16 = [MEMORY[0x1E695F658] imageWithNUImageBuffer:v11];
          [v16 extent];
          v19 = fmin(v17, v18);
          v20 = v19 >= 1.0;
          if (v19 < 1.0)
          {
            *a3 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid segmentation confidence map size" object:v5];
          }

          else
          {
            [(_PIPosterLayoutJob *)self setSegmentationConfidenceMapImage:v16];
          }
        }

        else
        {
          v20 = 1;
        }

        goto LABEL_26;
      }

      v21 = MEMORY[0x1E69B3A48];
      v22 = @"Missing layout regions";
    }

    else
    {
      v21 = MEMORY[0x1E69B3A48];
      v22 = @"Missing layout configuration";
    }

    [v21 missingError:v22 object:v5];
    *a3 = v20 = 0;
LABEL_27:

    return v20;
  }

  return 0;
}

- (_PIPosterLayoutJob)initWithPosterLayoutRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = _PIPosterLayoutJob;
  return [(NURenderJob *)&v4 initWithRequest:a3];
}

- (_PIPosterLayoutJob)initWithRequest:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69B3D70];
    v7 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = [v8 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v11, v12];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v14 = *v5;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v14 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_14924);
        }

LABEL_11:
        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v22 = MEMORY[0x1E696AF00];
          v23 = specific;
          v24 = v20;
          v25 = [v22 callStackSymbols];
          v26 = [v25 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = specific;
          v30 = 2114;
          v31 = v26;
          _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_14924);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      v18 = [v16 callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_14924);
  }
}

@end