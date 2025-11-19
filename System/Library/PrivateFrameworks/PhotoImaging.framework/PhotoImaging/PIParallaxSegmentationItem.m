@interface PIParallaxSegmentationItem
+ (id)_backgroundImageLoadingBlock;
+ (id)_matteImageLoadingBlock;
+ (id)dataForImageBuffer:(id)a3 error:(id *)a4;
+ (id)imageBufferFromData:(id)a3 error:(id *)a4;
+ (void)loadSettlingEffectVideoDataFromURL:(id)a3 completion:(id)a4;
- (BOOL)_loadSegmentationDataFromURL:(id)a3 error:(id *)a4 matteImageLoadingBlock:(id)a5 backgroundImageLoadingBlock:(id)a6 settingEffectDataLoadingBlock:(id)a7;
- (BOOL)isComplete;
- (BOOL)loadContentsFromDictionary:(id)a3 hasMatte:(BOOL *)a4 hasBackground:(BOOL *)a5 error:(id *)a6;
- (BOOL)loadFromURL:(id)a3 error:(id *)a4;
- (BOOL)loadSegmentationDataFromURL:(id)a3 error:(id *)a4;
- (BOOL)saveAssetResourceToURL:(id)a3 error:(id *)a4;
- (BOOL)saveSegmentationDataToURL:(id)a3 error:(id *)a4;
- (BOOL)saveToURL:(id)a3 error:(id *)a4;
- (BOOL)settlingEffectFailedAnyGating;
- (BOOL)settlingEffectFailedUnexpectedly;
- (BOOL)settlingEffectHasInterestingMotion;
- (BOOL)spatialPhotoFailedAnyGating;
- (BOOL)spatialPhotoFailedUnexpectedly;
- (BOOL)supportsBackgroundlessStyles;
- (BOOL)supportsSegmentedStyles;
- (CGRect)settlingEffectNormalizedBounds;
- (CGRect)spatialPhotoNormalizedBounds;
- (NSArray)availableStyles;
- (NSArray)defaultStyles;
- (NSArray)settlingEffectGatingDiagnostics;
- (NSString)debugDescription;
- (PFParallaxLayerStyle)originalStyle;
- (PFWallpaperCompoundDeviceConfiguration)layoutConfiguration;
- (PIParallaxSegmentationItem)init;
- (id)adjustedStyleForHeadroom:(id)a3;
- (id)availableStyleOfKind:(id)a3;
- (id)contentsDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultStyleOfKind:(id)a3;
- (id)spatialPhotoGatingDiagnosticsOnlyFailures:(BOOL)a3;
- (id)suggestedStyleForCategory:(id)a3;
- (unint64_t)version;
- (void)_populateAvailableStyles;
- (void)_populateDefaultStyles;
- (void)resetSettlingEffectGatingFailure;
- (void)resetSpatialPhotoGatingFailure;
- (void)setSettlingEffectNormalizedBounds:(CGRect)a3;
- (void)setSettlingEffectVideoData:(id)a3;
- (void)setSpatialPhotoNormalizedBounds:(CGRect)a3;
- (void)updateScores:(id)a3;
@end

@implementation PIParallaxSegmentationItem

- (CGRect)spatialPhotoNormalizedBounds
{
  x = self->_spatialPhotoNormalizedBounds.origin.x;
  y = self->_spatialPhotoNormalizedBounds.origin.y;
  width = self->_spatialPhotoNormalizedBounds.size.width;
  height = self->_spatialPhotoNormalizedBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)settlingEffectNormalizedBounds
{
  x = self->_settlingEffectNormalizedBounds.origin.x;
  y = self->_settlingEffectNormalizedBounds.origin.y;
  width = self->_settlingEffectNormalizedBounds.size.width;
  height = self->_settlingEffectNormalizedBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)updateScores:(id)a3
{
  v4 = a3;
  v5 = [(PIParallaxSegmentationItem *)self scores];
  v6 = [v5 mutableCopy];

  [v6 addEntriesFromDictionary:v4];
  [(PIParallaxSegmentationItem *)self setScores:v6];
}

- (void)resetSpatialPhotoGatingFailure
{
  v3 = [(PIParallaxSegmentationItem *)self scores];
  v4 = [v3 mutableCopy];

  [v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E69C0D40]];
  [(PIParallaxSegmentationItem *)self setScores:v4];
}

- (void)resetSettlingEffectGatingFailure
{
  v3 = [(PIParallaxSegmentationItem *)self scores];
  v4 = [v3 mutableCopy];

  [v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E69C0D18]];
  [(PIParallaxSegmentationItem *)self setScores:v4];
}

- (BOOL)loadContentsFromDictionary:(id)a3 hasMatte:(BOOL *)a4 hasBackground:(BOOL *)a5 error:(id *)a6
{
  p_rect = &rect;
  v179 = *MEMORY[0x1E69E9840];
  v13 = a3;
  if (!v13)
  {
    v59 = NUAssertLogger_4463();
    self = "contents != nil";
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "contents != nil"];
      LODWORD(rect.origin.x) = 138543362;
      *(&rect.origin.x + 4) = v60;
      _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &rect, 0xCu);
    }

    v61 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_4463();
    v62 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v62)
      {
        specific = dispatch_get_specific(*v61);
        v75 = MEMORY[0x1E696AF00];
        a6 = specific;
        v61 = [v75 callStackSymbols];
        v6 = [v61 componentsJoinedByString:@"\n"];
        LODWORD(rect.origin.x) = 138543618;
        *(&rect.origin.x + 4) = specific;
        WORD2(rect.origin.y) = 2114;
        *(&rect.origin.y + 6) = v6;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &rect, 0x16u);
      }
    }

    else if (v62)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      v61 = [specific componentsJoinedByString:@"\n"];
      LODWORD(rect.origin.x) = 138543362;
      *(&rect.origin.x + 4) = v61;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &rect, 0xCu);
    }

    v65 = _NUAssertFailHandler();
    goto LABEL_130;
  }

  if (!a4)
  {
    v63 = NUAssertLogger_4463();
    self = "hasMatte != NULL";
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "hasMatte != NULL"];
      LODWORD(rect.origin.x) = 138543362;
      *(&rect.origin.x + 4) = v64;
      _os_log_error_impl(&dword_1C7694000, v63, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &rect, 0xCu);
    }

    v61 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_4463();
    v65 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v65)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v61 = [specific componentsJoinedByString:@"\n"];
        LODWORD(rect.origin.x) = 138543362;
        *(&rect.origin.x + 4) = v61;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &rect, 0xCu);
      }

LABEL_132:

      v68 = _NUAssertFailHandler();
      goto LABEL_133;
    }

LABEL_130:
    if (v65)
    {
      specific = dispatch_get_specific(*v61);
      v76 = MEMORY[0x1E696AF00];
      a6 = specific;
      v61 = [v76 callStackSymbols];
      v6 = [v61 componentsJoinedByString:@"\n"];
      LODWORD(rect.origin.x) = 138543618;
      *(&rect.origin.x + 4) = specific;
      WORD2(rect.origin.y) = 2114;
      *(&rect.origin.y + 6) = v6;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &rect, 0x16u);
    }

    goto LABEL_132;
  }

  if (!a5)
  {
    v66 = NUAssertLogger_4463();
    self = "hasBackground != NULL";
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "hasBackground != NULL"];
      LODWORD(rect.origin.x) = 138543362;
      *(&rect.origin.x + 4) = v67;
      _os_log_error_impl(&dword_1C7694000, v66, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &rect, 0xCu);
    }

    v61 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_4463();
    v68 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v68)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v61 = [specific componentsJoinedByString:@"\n"];
        LODWORD(rect.origin.x) = 138543362;
        *(&rect.origin.x + 4) = v61;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &rect, 0xCu);
      }

LABEL_135:

      v71 = _NUAssertFailHandler();
      goto LABEL_136;
    }

LABEL_133:
    if (v68)
    {
      specific = dispatch_get_specific(*v61);
      v77 = MEMORY[0x1E696AF00];
      a6 = specific;
      v61 = [v77 callStackSymbols];
      v6 = [v61 componentsJoinedByString:@"\n"];
      LODWORD(rect.origin.x) = 138543618;
      *(&rect.origin.x + 4) = specific;
      WORD2(rect.origin.y) = 2114;
      *(&rect.origin.y + 6) = v6;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &rect, 0x16u);
    }

    goto LABEL_135;
  }

  if (!a6)
  {
    v69 = NUAssertLogger_4463();
    self = "error != NULL";
    a6 = &qword_1C7845000;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(rect.origin.x) = 138543362;
      *(&rect.origin.x + 4) = v70;
      _os_log_error_impl(&dword_1C7694000, v69, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &rect, 0xCu);
    }

    v61 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_4463();
    v71 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v71)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v72 = [specific componentsJoinedByString:@"\n"];
        LODWORD(rect.origin.x) = 138543362;
        *(&rect.origin.x + 4) = v72;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &rect, 0xCu);
      }

LABEL_138:

      v120 = self;
      _NUAssertFailHandler();
      goto LABEL_139;
    }

LABEL_136:
    if (v71)
    {
      specific = dispatch_get_specific(*v61);
      v78 = MEMORY[0x1E696AF00];
      a6 = specific;
      v79 = [v78 callStackSymbols];
      v6 = [v79 componentsJoinedByString:@"\n"];
      LODWORD(rect.origin.x) = 138543618;
      *(&rect.origin.x + 4) = specific;
      WORD2(rect.origin.y) = 2114;
      *(&rect.origin.y + 6) = v6;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &rect, 0x16u);
    }

    goto LABEL_138;
  }

  v14 = v13;
  specific = [v13 objectForKeyedSubscript:@"version"];
  if (!specific)
  {
    v17 = [MEMORY[0x1E69B3A48] missingError:@"Missing version info" object:v14];
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid version info" object:specific];
    goto LABEL_11;
  }

  v16 = [specific unsignedIntegerValue];
  if (v16 >= 0x42)
  {
    v17 = [MEMORY[0x1E69B3A48] unsupportedError:@"Unsupported version" object:specific];
LABEL_11:
    v18 = 0;
    *a6 = v17;
    goto LABEL_12;
  }

  p_rect = v16;
  if (v16 < 3)
  {
    v156 = 0;
    v7 = 0;
LABEL_29:
    x = *MEMORY[0x1E69BDDA8];
    y = *(MEMORY[0x1E69BDDA8] + 8);
    width = *(MEMORY[0x1E69BDDA8] + 16);
    height = *(MEMORY[0x1E69BDDA8] + 24);
    goto LABEL_30;
  }

  v7 = objc_alloc_init(PISegmentationContextInfo);
  [(PISegmentationContextInfo *)v7 setVersion:p_rect];
  v6 = [v14 objectForKeyedSubscript:@"systemVersion"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 3)
  {
    *a6 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid system version info" object:v6];
LABEL_41:

LABEL_42:
    v18 = 0;
    goto LABEL_249;
  }

  v157 = v7;
  v20 = [v6 objectAtIndexedSubscript:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a6 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid system name" object:v20];

LABEL_82:
    v18 = 0;
    v7 = v157;
    goto LABEL_249;
  }

  v155 = v20;
  v21 = [v6 objectAtIndexedSubscript:1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a6 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid system version" object:v21];

LABEL_81:
    goto LABEL_82;
  }

  v152 = v21;
  v22 = [v6 objectAtIndexedSubscript:2];
  objc_opt_class();
  v150 = v22;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a6 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid system build version" object:v22];

    goto LABEL_81;
  }

  v7 = v157;
  [(PISegmentationContextInfo *)v157 setSystemName:v155];
  [(PISegmentationContextInfo *)v157 setSystemVersion:v152];
  [(PISegmentationContextInfo *)v157 setSystemBuildVersion:v150];
  v148 = [v14 objectForKeyedSubscript:@"sourceMode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a6 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid source mode" object:v148];

LABEL_118:
    goto LABEL_41;
  }

  -[PISegmentationContextInfo setSourceMode:](v157, "setSourceMode:", [v148 integerValue]);
  v146 = [v14 objectForKeyedSubscript:@"segmentationDisabled"];
  if (v146)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *a6 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid segmentation disabled flag" object:v146];

      goto LABEL_117;
    }

    -[PISegmentationContextInfo setSegmentationDisabled:](v157, "setSegmentationDisabled:", [v146 BOOLValue]);
  }

  v144 = [v14 objectForKeyedSubscript:@"infillAlgorithm"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a6 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid infill algorithm" object:v144];

LABEL_117:
    goto LABEL_118;
  }

  -[PISegmentationContextInfo setInfillAlgorithm:](v157, "setInfillAlgorithm:", [v144 integerValue]);
  v142 = [v14 objectForKeyedSubscript:@"layoutConfiguration"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
LABEL_139:
    *a6 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid layout configuration" object:{v142, v120}];
    goto LABEL_140;
  }

  v174 = 0;
  v137 = [MEMORY[0x1E69C0938] compoundDeviceConfigurationFromDictionary:v142 error:&v174];
  [(PISegmentationContextInfo *)v157 setLayoutConfiguration:v137];

  v23 = [v14 objectForKeyedSubscript:@"role"];
  if (v23)
  {
    v138 = v23;
    -[PISegmentationContextInfo setRole:](v157, "setRole:", [v23 integerValue]);
    v23 = v138;
  }

LABEL_140:
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_42;
  }

  if (p_rect >= 0x26)
  {
    v6 = [v14 objectForKeyedSubscript:@"settlingEffectStatus"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v156 = [v6 unsignedIntegerValue];

        goto LABEL_145;
      }

      v103 = MEMORY[0x1E69B3A48];
      v104 = @"Expected a number";
LABEL_214:
      v109 = [v103 mismatchError:v104 object:v6];
      goto LABEL_215;
    }

    v101 = MEMORY[0x1E69B3A48];
    v102 = @"Missing settling effect status";
LABEL_212:
    v109 = [v101 missingError:v102 object:v14];
LABEL_215:
    *a6 = v109;
    goto LABEL_82;
  }

  if (p_rect < 0x22)
  {
    v156 = 0;
    goto LABEL_29;
  }

  v6 = [v14 objectForKeyedSubscript:@"hasSettlingEffect"];
  if (!v6)
  {
    v101 = MEMORY[0x1E69B3A48];
    v102 = @"Missing settling effect info";
    goto LABEL_212;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v103 = MEMORY[0x1E69B3A48];
    v104 = @"Expected BOOLean";
    goto LABEL_214;
  }

  v91 = [v6 BOOLValue];
  v92 = 3;
  if (!v91)
  {
    v92 = 1;
  }

  v156 = v92;

  if (p_rect < 0x24)
  {
    v7 = v157;
    goto LABEL_29;
  }

LABEL_145:
  v6 = [v14 objectForKeyedSubscript:@"settlingEffectBounds"];
  if (!v6)
  {
    v101 = MEMORY[0x1E69B3A48];
    v102 = @"Missing settling effect bounds";
    goto LABEL_212;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v103 = MEMORY[0x1E69B3A48];
    v104 = @"Expected dictionary";
    goto LABEL_214;
  }

  memset(&rect, 0, sizeof(rect));
  v6 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_231;
  }

  v80 = CGRectMakeWithDictionaryRepresentation(v6, &rect);

  if (!v80)
  {
LABEL_231:
    v109 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid settling effect bounds value" object:v6];
    goto LABEL_215;
  }

  x = rect.origin.x;
  y = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;

  v7 = v157;
LABEL_30:
  v28 = [v14 objectForKeyedSubscript:@"spatialPhotoStatus"];
  v29 = v28;
  if (p_rect < 0x34)
  {
    v158 = v7;
    v149 = [v28 unsignedIntegerValue];
    v31 = *MEMORY[0x1E69BDDA8];
    v32 = *(MEMORY[0x1E69BDDA8] + 8);
    v34 = *(MEMORY[0x1E69BDDA8] + 16);
    v33 = *(MEMORY[0x1E69BDDA8] + 24);
    v147 = 0.0;
    if (p_rect < 0x27)
    {
      v154 = 0;
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  if (!v28)
  {
    v50 = [MEMORY[0x1E69B3A48] missingError:@"Missing spatial photo status" object:v14];
LABEL_66:
    v18 = 0;
    *a6 = v50;
    goto LABEL_248;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v50 = [MEMORY[0x1E69B3A48] mismatchError:@"Expected a number" object:v29];
    goto LABEL_66;
  }

  v158 = v7;
  v149 = [v29 unsignedIntegerValue];
  v30 = [v14 objectForKeyedSubscript:@"spatialPhotoBounds"];
  if (!v30)
  {
    v55 = MEMORY[0x1E69B3A48];
    v56 = @"Missing spatial photo bounds";
LABEL_75:
    v54 = [v55 missingError:v56 object:v14];
    goto LABEL_88;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v54 = [MEMORY[0x1E69B3A48] mismatchError:@"Expected dictionary" object:v30];
    goto LABEL_88;
  }

  memset(&rect, 0, sizeof(rect));
  v30 = v30;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_87;
  }

  v153 = CGRectMakeWithDictionaryRepresentation(v30, &rect);

  if (!v153)
  {
LABEL_87:
    v54 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid spatial photo bounds value" object:v30];
    goto LABEL_88;
  }

  v31 = rect.origin.x;
  v32 = rect.origin.y;
  v34 = rect.size.width;
  v33 = rect.size.height;

  v30 = [v14 objectForKeyedSubscript:@"focalLengthIn35mm"];
  if (!v30)
  {
    v55 = MEMORY[0x1E69B3A48];
    v56 = @"Missing focalLengthIn35mm";
    goto LABEL_75;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v52 = MEMORY[0x1E69B3A48];
    v53 = @"Expected number";
    goto LABEL_72;
  }

  [v30 doubleValue];
  v147 = v35;

LABEL_44:
  v36 = [v14 objectForKeyedSubscript:@"settlingEffectLayout"];
  v30 = v36;
  if (!v36)
  {
    goto LABEL_47;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v52 = MEMORY[0x1E69B3A48];
    v53 = @"Expected layout dictionary";
LABEL_72:
    v54 = [v52 mismatchError:v53 object:v30];
LABEL_88:
    *a6 = v54;

    v18 = 0;
    v7 = v158;
    goto LABEL_248;
  }

  v36 = [MEMORY[0x1E69C0800] layoutWithDictionaryRepresentation:v30];
  if (!v36)
  {
    v54 = [MEMORY[0x1E69B3A48] failureError:@"Failed to deserialize settling effect layout info" object:v30];
    goto LABEL_88;
  }

LABEL_47:
  v154 = v36;

  if (p_rect < 0x34)
  {
LABEL_53:
    v151 = 0;
    goto LABEL_54;
  }

  v37 = [v14 objectForKeyedSubscript:@"spatialPhotoLayout"];
  if (v37)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v151 = v37;
      v40 = [MEMORY[0x1E69B3A48] mismatchError:@"Expected layout dictionary" object:v37];
      goto LABEL_90;
    }

    v38 = [MEMORY[0x1E69C0800] layoutWithDictionaryRepresentation:v37];
    v39 = v37;
    v37 = v38;
    if (!v38)
    {
      v151 = v39;
      v40 = [MEMORY[0x1E69B3A48] failureError:@"Failed to deserialize settling effect layout info" object:?];
LABEL_90:
      v7 = v158;
      v18 = 0;
      *a6 = v40;
      goto LABEL_247;
    }
  }

  else
  {
    v39 = 0;
  }

  v151 = v37;
LABEL_54:
  v41 = [v14 objectForKeyedSubscript:@"classification"];
  if (!v41)
  {
    v51 = [MEMORY[0x1E69B3A48] missingError:@"Missing classification info" object:v14];
LABEL_70:
    v18 = 0;
    *a6 = v51;
    goto LABEL_246;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v51 = [MEMORY[0x1E69B3A48] mismatchError:@"Expected classification string" object:v41];
    goto LABEL_70;
  }

  v145 = v41;
  v141 = PFPosterClassificationNamed();
  v42 = [v14 objectForKeyedSubscript:@"hasMatte"];
  if (!v42)
  {
    v57 = [MEMORY[0x1E69B3A48] missingError:@"Missing matte image info" object:v14];
LABEL_79:
    v18 = 0;
    *a6 = v57;
    goto LABEL_245;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v57 = [MEMORY[0x1E69B3A48] mismatchError:@"Expected BOOLean" object:v42];
    goto LABEL_79;
  }

  v139 = v42;
  *a4 = [v42 BOOLValue];
  v43 = [v14 objectForKeyedSubscript:@"hasBackground"];
  if (!v43)
  {
    v58 = [MEMORY[0x1E69B3A48] missingError:@"Missing background image info" object:v14];
LABEL_94:
    v18 = 0;
    *a6 = v58;
    goto LABEL_244;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v58 = [MEMORY[0x1E69B3A48] mismatchError:@"Expected BOOLean" object:v43];
    goto LABEL_94;
  }

  *a5 = [v43 BOOLValue];
  v44 = [v14 objectForKeyedSubscript:@"regions"];
  if (v44)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E69B3A48] mismatchError:@"Expected regions dictionary" object:v44];
      *a6 = v18 = 0;
      goto LABEL_243;
    }

    v173 = 0;
    v134 = [PISegmentationLayoutRegions regionsFromDictionary:v44 error:&v173];
    if (!v134)
    {
      v45 = MEMORY[0x1E69B3A48];
      v46 = v173;
      [v45 errorWithCode:1 reason:@"Failed to deserialize regions info" object:v44 underlyingError:v46];
      v48 = v47 = v43;
      v49 = v48;

      v18 = 0;
      *a6 = v48;
      v43 = v47;
      goto LABEL_243;
    }
  }

  else
  {
    v134 = 0;
  }

  v73 = [v14 objectForKeyedSubscript:@"layout"];
  if (v73)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v74 = [MEMORY[0x1E69B3A48] mismatchError:@"Expected layout dictionary" object:v73];
      goto LABEL_169;
    }

    v129 = [MEMORY[0x1E69C0800] layoutWithDictionaryRepresentation:v73];
    if (!v129)
    {
      v74 = [MEMORY[0x1E69B3A48] failureError:@"Failed to deserialize layout info" object:v73];
LABEL_169:
      v18 = 0;
      *a6 = v74;
      v89 = v73;
      v42 = v139;
      v90 = v134;
      goto LABEL_242;
    }
  }

  else
  {
    v129 = 0;
  }

  v130 = [v14 objectForKeyedSubscript:@"scores"];
  v128 = v73;
  if (!v130)
  {
    goto LABEL_163;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E69B3A48] mismatchError:@"Expected score dictionary" object:v130];
    *a6 = v18 = 0;
    v42 = v139;
    goto LABEL_240;
  }

  v126 = v44;
  v127 = v43;
  v143 = v29;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  obj = v130;
  v81 = [obj countByEnumeratingWithState:&v169 objects:v177 count:16];
  if (!v81)
  {
    goto LABEL_162;
  }

  v82 = v81;
  v131 = *v170;
  do
  {
    for (i = 0; i != v82; ++i)
    {
      if (*v170 != v131)
      {
        objc_enumerationMutation(obj);
      }

      v84 = *(*(&v169 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        *a6 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid score key" object:v84];
LABEL_196:

        goto LABEL_239;
      }

      v85 = [obj objectForKeyedSubscript:v84];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        *a6 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid score value" object:v85];

        goto LABEL_196;
      }
    }

    v82 = [obj countByEnumeratingWithState:&v169 objects:v177 count:16];
  }

  while (v82);
LABEL_162:

  v29 = v143;
  v44 = v126;
  v43 = v127;
LABEL_163:
  v143 = v29;
  v126 = v44;
  v127 = v43;
  if (p_rect >= 7)
  {
    v86 = [v14 objectForKeyedSubscript:@"colorAnalysis"];
    if (!v86)
    {
      v88 = 0;
      goto LABEL_198;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v168 = 0;
      v87 = [PIParallaxColorAnalysis loadFromContentsDictionary:v86 error:&v168];
      if (v87)
      {
        v88 = v87;
LABEL_198:
        v94 = 0;
        goto LABEL_199;
      }

      v114 = MEMORY[0x1E69B3A48];
      v115 = v168;
      v107 = [v114 errorWithCode:1 reason:@"Failed to deserialize color analysis info" object:v86 underlyingError:v115];
      v116 = v107;
    }

    else
    {
      v107 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid color analysis info" object:v86];
      v108 = v107;
    }

    *a6 = v107;
LABEL_238:

LABEL_239:
    v18 = 0;
    v29 = v143;
    v42 = v139;
    v44 = v126;
    v43 = v127;
LABEL_240:
    v90 = v134;
    v106 = v129;
    goto LABEL_241;
  }

  v93 = [v14 objectForKeyedSubscript:@"styles"];
  if (!v93)
  {
    v94 = 0;
    v88 = 0;
    goto LABEL_204;
  }

  v86 = v93;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a6 = [MEMORY[0x1E69B3A48] mismatchError:@"Expected styles array" object:v86];
    goto LABEL_238;
  }

  obja = PFParallaxLayerStyleSupportedKinds();
  v94 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (p_rect <= 3)
  {
    v166 = 0uLL;
    v167 = 0uLL;
    v164 = 0uLL;
    v165 = 0uLL;
    v124 = v86;
    v95 = [v124 countByEnumeratingWithState:&v164 objects:v176 count:16];
    if (v95)
    {
      v96 = v95;
      v132 = *v165;
      while (2)
      {
        for (j = 0; j != v96; ++j)
        {
          if (*v165 != v132)
          {
            objc_enumerationMutation(v124);
          }

          v98 = *(*(&v164 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![obja containsObject:v98])
          {
            v117 = MEMORY[0x1E69B3A48];
            v118 = v98;
            goto LABEL_233;
          }

          v99 = objc_alloc(MEMORY[0x1E69C0788]);
          v100 = [v99 initWithKind:v98 parameters:MEMORY[0x1E695E0F8] colorSuggestions:MEMORY[0x1E695E0F0]];
          [v94 addObject:v100];
        }

        v96 = [v124 countByEnumeratingWithState:&v164 objects:v176 count:16];
        if (v96)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_226;
  }

  v162 = 0uLL;
  v163 = 0uLL;
  v160 = 0uLL;
  v161 = 0uLL;
  v121 = v86;
  v122 = [v121 countByEnumeratingWithState:&v160 objects:v175 count:16];
  if (!v122)
  {
    goto LABEL_226;
  }

  v123 = *v161;
  while (2)
  {
    v110 = 0;
    while (2)
    {
      if (*v161 != v123)
      {
        objc_enumerationMutation(v121);
      }

      v111 = *(*(&v160 + 1) + 8 * v110);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v117 = MEMORY[0x1E69B3A48];
        v118 = v111;
LABEL_233:
        *a6 = [v117 invalidError:@"Invalid style value" object:v118];
        goto LABEL_237;
      }

      v159 = 0;
      v112 = [MEMORY[0x1E69C0788] styleWithDictionary:v111 error:&v159];
      v133 = v159;
      if (!v112)
      {
        v119 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Invalid style dictionary" object:v111 underlyingError:v133];
LABEL_236:
        *a6 = v119;

LABEL_237:
        goto LABEL_238;
      }

      v113 = [v112 kind];
      v125 = [obja containsObject:v113];

      if ((v125 & 1) == 0)
      {
        v119 = [MEMORY[0x1E69B3A48] invalidError:@"Unsupported style kind" object:v112];
        goto LABEL_236;
      }

      [v94 addObject:v112];

      if (v122 != ++v110)
      {
        continue;
      }

      break;
    }

    v122 = [v121 countByEnumeratingWithState:&v160 objects:v175 count:16];
    if (v122)
    {
      continue;
    }

    break;
  }

LABEL_226:

  v88 = 0;
LABEL_199:

  if (p_rect < 0xE)
  {
LABEL_204:
    v105 = 0;
    goto LABEL_205;
  }

  v105 = [v14 objectForKeyedSubscript:@"localLightData"];
  if (v105)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E69B3A48] invalidError:@"Invalid local light data" object:v105];
      *a6 = v18 = 0;
      v90 = v134;
      v106 = v129;
      goto LABEL_206;
    }
  }

LABEL_205:
  [(PIParallaxSegmentationItem *)self setClassification:v141];
  v90 = v134;
  [(PIParallaxSegmentationItem *)self setRegions:v134];
  v106 = v129;
  [(PIParallaxSegmentationItem *)self setOriginalLayout:v129];
  [(PIParallaxSegmentationItem *)self setScores:v130];
  [(PIParallaxSegmentationItem *)self setColorAnalysis:v88];
  [(PIParallaxSegmentationItem *)self set_availableStyles:v94];
  [(PIParallaxSegmentationItem *)self setLocalLightData:v105];
  [(PIParallaxSegmentationItem *)self setContextInfo:v158];
  [(PIParallaxSegmentationItem *)self setSettlingEffectStatus:v156];
  [(PIParallaxSegmentationItem *)self setSettlingEffectNormalizedBounds:x, y, width, height];
  [(PIParallaxSegmentationItem *)self setSettlingEffectLayout:v154];
  [(PIParallaxSegmentationItem *)self setSpatialPhotoLayout:v151];
  [(PIParallaxSegmentationItem *)self setSpatialPhotoStatus:v149];
  [(PIParallaxSegmentationItem *)self setSpatialPhotoNormalizedBounds:v31, v32, v34, v33];
  [(PIParallaxSegmentationItem *)self setFocalLengthIn35mm:v147];
  v18 = 1;
LABEL_206:

  v29 = v143;
  v42 = v139;
  v44 = v126;
  v43 = v127;
LABEL_241:

  v89 = v128;
LABEL_242:

LABEL_243:
LABEL_244:

LABEL_245:
  v41 = v145;
LABEL_246:

  v7 = v158;
LABEL_247:

LABEL_248:
LABEL_249:

LABEL_12:
  return v18;
}

- (unint64_t)version
{
  v2 = [(PIParallaxSegmentationItem *)self contextInfo];
  v3 = [v2 version];

  return v3;
}

- (id)contentsDictionary
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PIParallaxSegmentationItem *)self contextInfo];
  if (!v4)
  {
    v43 = NUAssertLogger_4463();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing context info!"];
      *buf = 138543362;
      v58 = v44;
      _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v45 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v47 = NUAssertLogger_4463();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v48)
      {
        v51 = dispatch_get_specific(*v45);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        v54 = [v52 callStackSymbols];
        v55 = [v54 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v58 = v51;
        v59 = 2114;
        v60 = v55;
        _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v48)
    {
      v49 = [MEMORY[0x1E696AF00] callStackSymbols];
      v50 = [v49 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v58 = v50;
      _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "version")}];
  [v3 setObject:v6 forKeyedSubscript:@"version"];

  [(PIParallaxSegmentationItem *)self classification];
  v7 = PFPosterClassificationName();
  [v3 setObject:v7 forKeyedSubscript:@"classification"];

  v8 = MEMORY[0x1E696AD98];
  v9 = [(PIParallaxSegmentationItem *)self segmentationMatte];
  v10 = [v8 numberWithInt:v9 != 0];
  [v3 setObject:v10 forKeyedSubscript:@"hasMatte"];

  v11 = MEMORY[0x1E696AD98];
  v12 = [(PIParallaxSegmentationItem *)self segmentationBackground];
  v13 = [v11 numberWithInt:v12 != 0];
  [v3 setObject:v13 forKeyedSubscript:@"hasBackground"];

  v14 = [(PIParallaxSegmentationItem *)self regions];
  if (v14)
  {
    v15 = [(PIParallaxSegmentationItem *)self regions];
    v16 = [PISegmentationLayoutRegions dictionaryFromRegions:v15];
    [v3 setObject:v16 forKeyedSubscript:@"regions"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"regions"];
  }

  v17 = [(PIParallaxSegmentationItem *)self originalLayout];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"layout"];

  v19 = [(PIParallaxSegmentationItem *)self scores];
  [v3 setObject:v19 forKeyedSubscript:@"scores"];

  v20 = [(PIParallaxSegmentationItem *)self colorAnalysis];
  v21 = [v20 contentsDictionary];
  [v3 setObject:v21 forKeyedSubscript:@"colorAnalysis"];

  v22 = [(PIParallaxSegmentationItem *)self localLightData];
  [v3 setObject:v22 forKeyedSubscript:@"localLightData"];

  v23 = [v5 systemName];
  v56[0] = v23;
  v24 = [v5 systemVersion];
  v56[1] = v24;
  v25 = [v5 systemBuildVersion];
  v56[2] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
  [v3 setObject:v26 forKeyedSubscript:@"systemVersion"];

  v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "sourceMode")}];
  [v3 setObject:v27 forKeyedSubscript:@"sourceMode"];

  v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "infillAlgorithm")}];
  [v3 setObject:v28 forKeyedSubscript:@"infillAlgorithm"];

  v29 = [v5 layoutConfiguration];
  v30 = [v29 dictionaryRepresentation];
  [v3 setObject:v30 forKeyedSubscript:@"layoutConfiguration"];

  if ([v5 segmentationDisabled])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"segmentationDisabled"];
  }

  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PIParallaxSegmentationItem settlingEffectStatus](self, "settlingEffectStatus")}];
  [v3 setObject:v31 forKeyedSubscript:@"settlingEffectStatus"];

  [(PIParallaxSegmentationItem *)self settlingEffectNormalizedBounds];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v63);
  [v3 setObject:DictionaryRepresentation forKeyedSubscript:@"settlingEffectBounds"];

  v33 = [(PIParallaxSegmentationItem *)self settlingEffectLayout];
  v34 = [v33 dictionaryRepresentation];
  [v3 setObject:v34 forKeyedSubscript:@"settlingEffectLayout"];

  v35 = [(PIParallaxSegmentationItem *)self spatialPhotoLayout];
  v36 = [v35 dictionaryRepresentation];
  [v3 setObject:v36 forKeyedSubscript:@"spatialPhotoLayout"];

  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PIParallaxSegmentationItem spatialPhotoStatus](self, "spatialPhotoStatus")}];
  [v3 setObject:v37 forKeyedSubscript:@"spatialPhotoStatus"];

  [(PIParallaxSegmentationItem *)self spatialPhotoNormalizedBounds];
  v38 = CGRectCreateDictionaryRepresentation(v64);
  [v3 setObject:v38 forKeyedSubscript:@"spatialPhotoBounds"];

  v39 = MEMORY[0x1E696AD98];
  [(PIParallaxSegmentationItem *)self focalLengthIn35mm];
  v40 = [v39 numberWithDouble:?];
  [v3 setObject:v40 forKeyedSubscript:@"focalLengthIn35mm"];

  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "role")}];
  [v3 setObject:v41 forKeyedSubscript:@"role"];

  return v3;
}

- (BOOL)_loadSegmentationDataFromURL:(id)a3 error:(id *)a4 matteImageLoadingBlock:(id)a5 backgroundImageLoadingBlock:(id)a6 settingEffectDataLoadingBlock:(id)a7
{
  v95 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!v15)
  {
    v42 = NUAssertLogger_4463();
    v36 = "archiveURL != nil";
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "archiveURL != nil"];
      *buf = 138543362;
      v92 = v43;
      _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_4463();
    v45 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v45)
      {
        v67 = dispatch_get_specific(*v17);
        v68 = MEMORY[0x1E696AF00];
        a7 = v67;
        v17 = [v68 callStackSymbols];
        v7 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v92 = v67;
        v93 = 2114;
        v94 = v7;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      v46 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v46 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v92 = v17;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v50 = _NUAssertFailHandler();
    goto LABEL_67;
  }

  if (!a4)
  {
    v47 = NUAssertLogger_4463();
    v36 = "error != NULL";
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v92 = v48;
      _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    v49 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_4463();
    v50 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!v49)
    {
      if (v50)
      {
        v51 = [MEMORY[0x1E696AF00] callStackSymbols];
        v17 = [v51 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v92 = v17;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_69:

      v55 = _NUAssertFailHandler();
      goto LABEL_70;
    }

LABEL_67:
    if (v50)
    {
      v69 = dispatch_get_specific(*v17);
      v70 = MEMORY[0x1E696AF00];
      a7 = v69;
      v17 = [v70 callStackSymbols];
      v7 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v92 = v69;
      v93 = 2114;
      v94 = v7;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_69;
  }

  if (!v16)
  {
    v52 = NUAssertLogger_4463();
    v36 = "matteImageLoadingBlock != nil";
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "matteImageLoadingBlock != nil"];
      *buf = 138543362;
      v92 = v53;
      _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    v54 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_4463();
    v55 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!v54)
    {
      if (v55)
      {
        v56 = [MEMORY[0x1E696AF00] callStackSymbols];
        v17 = [v56 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v92 = v17;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_72:

      v60 = _NUAssertFailHandler();
      goto LABEL_73;
    }

LABEL_70:
    if (v55)
    {
      v71 = dispatch_get_specific(*v17);
      v72 = MEMORY[0x1E696AF00];
      a7 = v71;
      v17 = [v72 callStackSymbols];
      v7 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v92 = v71;
      v93 = 2114;
      v94 = v7;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_72;
  }

  if (!v17)
  {
    v57 = NUAssertLogger_4463();
    v36 = "backgroundImageLoadingBlock != nil";
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "backgroundImageLoadingBlock != nil"];
      *buf = 138543362;
      v92 = v58;
      _os_log_error_impl(&dword_1C7694000, v57, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    v59 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_4463();
    v60 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!v59)
    {
      if (v60)
      {
        v61 = [MEMORY[0x1E696AF00] callStackSymbols];
        v17 = [v61 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v92 = v17;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_75:

      v65 = _NUAssertFailHandler();
      goto LABEL_76;
    }

LABEL_73:
    if (v60)
    {
      v73 = dispatch_get_specific(*v17);
      v74 = MEMORY[0x1E696AF00];
      a7 = v73;
      v17 = [v74 callStackSymbols];
      v7 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v92 = v73;
      v93 = 2114;
      v94 = v7;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_75;
  }

  a7 = v18;
  if (!v18)
  {
    v62 = NUAssertLogger_4463();
    v36 = "settingEffectDataLoadingBlock != nil";
    a7 = &qword_1C7845000;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "settingEffectDataLoadingBlock != nil"];
      *buf = 138543362;
      v92 = v63;
      _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    v64 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_4463();
    v65 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!v64)
    {
      if (v65)
      {
        v66 = [MEMORY[0x1E696AF00] callStackSymbols];
        v17 = [v66 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v92 = v17;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_78:

      _NUAssertFailHandler();
      goto LABEL_79;
    }

LABEL_76:
    if (v65)
    {
      v75 = dispatch_get_specific(*v17);
      v76 = MEMORY[0x1E696AF00];
      a7 = v75;
      v17 = [v76 callStackSymbols];
      v7 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v92 = v75;
      v93 = 2114;
      v94 = v7;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_78;
  }

  v7 = [objc_alloc(MEMORY[0x1E69C0648]) initWithArchiveURL:v15];
  [v7 setCompression:-1];
  v90 = 0;
  v19 = [v7 openForReading:&v90];
  v20 = v90;
  v21 = v20;
  if (v19)
  {
    v81 = v16;
    v88 = 0;
    v89 = 0;
    v87 = v20;
    v22 = [v7 decodeData:&v89 filename:&v88 error:&v87];
    v82 = v89;
    v23 = v88;
    v24 = v87;

    if (v22)
    {
      v8 = v23;
      if ([v23 isEqualToString:@"contents.plist"])
      {
        v79 = v23;
        v86 = 0;
        v25 = [MEMORY[0x1E696AE40] propertyListWithData:v82 options:0 format:0 error:&v86];
        v26 = v86;

        v80 = v25;
        if (v25)
        {
          v9 = v82;
          v27 = v26;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v85 = 0;
            v84 = 0;
            v28 = [(PIParallaxSegmentationItem *)self loadContentsFromDictionary:v80 hasMatte:&v85 + 1 hasBackground:&v85 error:&v84];
            v29 = v84;

            v8 = v79;
            if (!v28)
            {
              [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load contents dictionary" object:v80 underlyingError:v29];
              *a4 = v37 = 0;
              v24 = v29;
              goto LABEL_36;
            }

            v78 = v29;
            if (HIBYTE(v85) == 1)
            {
              v30 = v80;
              v31 = v81[2](v81, v7);
              if (![v31 success])
              {
                v38 = MEMORY[0x1E69B3A48];
                v39 = [v31 error];
                v40 = @"Failed to load matte image";
                goto LABEL_34;
              }

              v32 = [v31 object];
              [(PIParallaxSegmentationItem *)self setSegmentationMatte:v32];

              v8 = v79;
            }

            if (v85 != 1)
            {
LABEL_18:
              if (![(PIParallaxSegmentationItem *)self isSettlingEffectAvailable])
              {
                goto LABEL_21;
              }

              v30 = v80;
              v31 = (*(a7 + 2))(a7, v7);
              if ([v31 success])
              {
                v34 = [v31 object];
                [(PIParallaxSegmentationItem *)self setSettlingEffectVideoData:v34];

                v8 = v79;
LABEL_21:
                [(PIParallaxSegmentationItem *)self setSegmentationDataURL:v15];
                v83 = v78;
                v35 = [v7 close:&v83];
                v77 = v83;

                if (v35)
                {
LABEL_24:
                  v37 = 1;
                  v24 = v77;
LABEL_36:

                  goto LABEL_37;
                }

                v36 = NULogger_4511();
                if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
LABEL_23:

                  goto LABEL_24;
                }

LABEL_79:
                *buf = 138477827;
                v92 = v77;
                _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Failed to close the stream due to %{private}@", buf, 0xCu);
                goto LABEL_23;
              }

              v38 = MEMORY[0x1E69B3A48];
              v39 = [v31 error];
              v40 = @"Failed to load settling effect data";
              goto LABEL_34;
            }

            v30 = v80;
            v31 = (v17[2])(v17, v7);
            if ([v31 success])
            {
              v33 = [v31 object];
              [(PIParallaxSegmentationItem *)self setSegmentationBackground:v33];

              v8 = v79;
              goto LABEL_18;
            }

            v38 = MEMORY[0x1E69B3A48];
            v39 = [v31 error];
            v40 = @"Failed to load background image";
LABEL_34:
            *a4 = [v38 errorWithCode:1 reason:v40 object:v30 underlyingError:v39];

            v9 = v82;
            v37 = 0;
            v24 = v78;
            goto LABEL_35;
          }

          [MEMORY[0x1E69B3A48] invalidError:@"Invalid contents plist" object:v80];
          *a4 = v37 = 0;
          v24 = v26;
        }

        else
        {
          [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to deserialize contents plist" object:v82 underlyingError:v26];
          *a4 = v37 = 0;
          v24 = v26;
          v9 = v82;
        }

LABEL_35:
        v8 = v79;
        goto LABEL_36;
      }

      [MEMORY[0x1E69B3A48] invalidError:@"Expected contents.plist data" object:v23];
      *a4 = v37 = 0;
      v9 = v82;
    }

    else
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to decode contents plist data" object:v7 underlyingError:v24];
      *a4 = v37 = 0;
      v9 = v82;
      v8 = v23;
    }

LABEL_37:

    v21 = v24;
    v16 = v81;
    goto LABEL_38;
  }

  [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to read segmentation archive" object:v15 underlyingError:v20];
  *a4 = v37 = 0;
LABEL_38:

  return v37;
}

- (BOOL)loadSegmentationDataFromURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() _matteImageLoadingBlock];
  v8 = [objc_opt_class() _backgroundImageLoadingBlock];
  v9 = [objc_opt_class() _settlingEffectDataLoadingBlock];
  LOBYTE(a4) = [(PIParallaxSegmentationItem *)self _loadSegmentationDataFromURL:v6 error:a4 matteImageLoadingBlock:v7 backgroundImageLoadingBlock:v8 settingEffectDataLoadingBlock:v9];

  return a4;
}

- (BOOL)saveSegmentationDataToURL:(id)a3 error:(id *)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v47 = NUAssertLogger_4463();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "archiveURL != nil"];
      *buf = 138543362;
      v79 = v48;
      _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v49 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v51 = NUAssertLogger_4463();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v52)
      {
        v60 = dispatch_get_specific(*v49);
        v61 = MEMORY[0x1E696AF00];
        v62 = v60;
        v49 = [v61 callStackSymbols];
        v63 = [v49 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v60;
        v80 = 2114;
        v81 = v63;
        _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v52)
    {
      v53 = [MEMORY[0x1E696AF00] callStackSymbols];
      v49 = [v53 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v49;
      _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = _NUAssertFailHandler();
    goto LABEL_53;
  }

  if (!a4)
  {
    v54 = NUAssertLogger_4463();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v79 = v55;
      _os_log_error_impl(&dword_1C7694000, v54, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v49 = MEMORY[0x1E69B38E8];
    v56 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v51 = NUAssertLogger_4463();
    v57 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
    if (!v56)
    {
      if (v57)
      {
        v58 = [MEMORY[0x1E696AF00] callStackSymbols];
        v59 = [v58 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v79 = v59;
        _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_55;
    }

LABEL_53:
    if (v57)
    {
      v64 = dispatch_get_specific(*v49);
      v65 = MEMORY[0x1E696AF00];
      v66 = v64;
      v67 = [v65 callStackSymbols];
      v68 = [v67 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v79 = v64;
      v80 = 2114;
      v81 = v68;
      _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_55:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [(PIParallaxSegmentationItem *)self segmentationDataURL];

  if (!v8 || (-[PIParallaxSegmentationItem segmentationDataURL](self, "segmentationDataURL"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v7 isEqual:v9], v9, (v10 & 1) == 0) && (objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v11 = objc_claimAutoreleasedReturnValue(), -[PIParallaxSegmentationItem segmentationDataURL](self, "segmentationDataURL"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "copyItemAtURL:toURL:error:", v12, v7, 0), v12, v11, (v13 & 1) == 0))
  {
    v15 = [objc_alloc(MEMORY[0x1E69C0648]) initWithArchiveURL:v7];
    [v15 setCompression:-1];
    v77 = 0;
    v16 = [v15 openForWriting:&v77];
    v17 = v77;
    if ((v16 & 1) == 0)
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to write segmentation archive" object:v7 underlyingError:v17];
      *a4 = v14 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v18 = [(PIParallaxSegmentationItem *)self contentsDictionary];
    v76 = 0;
    v19 = [MEMORY[0x1E696AE40] dataWithPropertyList:v18 format:200 options:0 error:&v76];
    v20 = v76;

    if (!v19)
    {
      v36 = MEMORY[0x1E69B3A48];
      v37 = @"Failed to serialize contents plist";
      v38 = v18;
      goto LABEL_25;
    }

    v75 = v20;
    v21 = [v15 encodeData:v19 filename:@"contents.plist" error:&v75];
    v22 = v75;

    if ((v21 & 1) == 0)
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to archive contents plist data" object:v19 underlyingError:v22];
      *a4 = v14 = 0;
      v20 = v22;
      goto LABEL_36;
    }

    v23 = [(PIParallaxSegmentationItem *)self segmentationMatte];

    if (v23)
    {
      v24 = objc_opt_class();
      v25 = [(PIParallaxSegmentationItem *)self segmentationMatte];
      v74 = 0;
      v26 = [v24 dataForImageBuffer:v25 error:&v74];
      v20 = v74;

      if (!v26)
      {
        v39 = MEMORY[0x1E69B3A48];
        v40 = [(PIParallaxSegmentationItem *)self segmentationMatte];
        v41 = @"Failed to write segmentation matte";
        goto LABEL_30;
      }

      v73 = v20;
      v27 = [v15 encodeData:v26 filename:@"matte.heic" error:&v73];
      v22 = v73;

      if ((v27 & 1) == 0)
      {
        v42 = MEMORY[0x1E69B3A48];
        v43 = @"Failed to archive segmentation matte data";
LABEL_33:
        *a4 = [v42 errorWithCode:1 reason:v43 object:v26 underlyingError:v22];
        v20 = v22;
        goto LABEL_34;
      }
    }

    v28 = [(PIParallaxSegmentationItem *)self segmentationBackground];

    if (!v28)
    {
LABEL_18:
      v32 = [(PIParallaxSegmentationItem *)self settlingEffectVideoData];

      if (!v32)
      {
LABEL_21:
        v69 = v22;
        v35 = [v15 close:&v69];
        v20 = v69;

        if (v35)
        {
          [(PIParallaxSegmentationItem *)self setSegmentationDataURL:v7];
          v14 = 1;
LABEL_36:

          v17 = v20;
          goto LABEL_37;
        }

        v36 = MEMORY[0x1E69B3A48];
        v37 = @"Failed to close archive file";
        v38 = v15;
LABEL_25:
        [v36 errorWithCode:1 reason:v37 object:v38 underlyingError:v20];
        *a4 = v14 = 0;
        goto LABEL_36;
      }

      v33 = [(PIParallaxSegmentationItem *)self settlingEffectVideoData];
      v70 = v22;
      v34 = [v15 encodeData:v33 filename:@"settlingEffect.mov" error:&v70];
      v20 = v70;

      if (v34)
      {
        v22 = v20;
        goto LABEL_21;
      }

      v45 = MEMORY[0x1E69B3A48];
      v46 = [(PIParallaxSegmentationItem *)self settlingEffectVideoData];
      *a4 = [v45 errorWithCode:1 reason:@"Failed to archive settling effect video data" object:v46 underlyingError:v20];

LABEL_35:
      v14 = 0;
      goto LABEL_36;
    }

    v29 = objc_opt_class();
    v30 = [(PIParallaxSegmentationItem *)self segmentationBackground];
    v72 = 0;
    v26 = [v29 dataForImageBuffer:v30 error:&v72];
    v20 = v72;

    if (v26)
    {
      v71 = v20;
      v31 = [v15 encodeData:v26 filename:@"background.heic" error:&v71];
      v22 = v71;

      if (v31)
      {

        goto LABEL_18;
      }

      v42 = MEMORY[0x1E69B3A48];
      v43 = @"Failed to archive segmentation background data";
      goto LABEL_33;
    }

    v39 = MEMORY[0x1E69B3A48];
    v40 = [(PIParallaxSegmentationItem *)self segmentationBackground];
    v41 = @"Failed to write segmentation background";
LABEL_30:
    *a4 = [v39 errorWithCode:1 reason:v41 object:v40 underlyingError:v20];

LABEL_34:
    goto LABEL_35;
  }

  v14 = 1;
LABEL_38:

  return v14;
}

- (BOOL)saveAssetResourceToURL:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v19 = NUAssertLogger_4463();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v51 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_4463();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v37 = dispatch_get_specific(*v21);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        v21 = [v38 callStackSymbols];
        v40 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v37;
        v52 = 2114;
        v53 = v40;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v21;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v29 = _NUAssertFailHandler();
    goto LABEL_29;
  }

  if (!a4)
  {
    v26 = NUAssertLogger_4463();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v51 = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    v28 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_4463();
    v29 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!v28)
    {
      if (v29)
      {
        v30 = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v51 = v21;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_31:

      v34 = _NUAssertFailHandler();
      goto LABEL_32;
    }

LABEL_29:
    if (v29)
    {
      v41 = dispatch_get_specific(*v21);
      v42 = MEMORY[0x1E696AF00];
      v43 = v41;
      v21 = [v42 callStackSymbols];
      v44 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v51 = v41;
      v52 = 2114;
      v53 = v44;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  v7 = v6;
  v8 = [(PIParallaxSegmentationItem *)self resource];

  if (!v8)
  {
    v31 = NUAssertLogger_4463();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing asset resource"];
      *buf = 138543362;
      v51 = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    v33 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_4463();
    v34 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!v33)
    {
      if (v34)
      {
        v35 = [MEMORY[0x1E696AF00] callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v51 = v36;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_34;
    }

LABEL_32:
    if (v34)
    {
      v45 = dispatch_get_specific(*v21);
      v46 = MEMORY[0x1E696AF00];
      v47 = v45;
      v48 = [v46 callStackSymbols];
      v49 = [v48 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v51 = v45;
      v52 = 2114;
      v53 = v49;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_34:

    _NUAssertFailHandler();
  }

  v9 = [(PIParallaxSegmentationItem *)self resource];
  v10 = [v9 archiveURL];

  v11 = [(PIParallaxSegmentationItem *)self resource];
  v12 = v11;
  if (!v10)
  {
    v15 = [v11 saveToArchiveURL:v7 error:a4];
LABEL_9:

    goto LABEL_10;
  }

  v13 = [v11 archiveURL];
  v14 = [v7 isEqual:v13];

  if ((v14 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [(PIParallaxSegmentationItem *)self resource];
    v17 = [v16 archiveURL];
    v15 = [v12 copyItemAtURL:v17 toURL:v7 error:a4];

    goto LABEL_9;
  }

  v15 = 1;
LABEL_10:

  return v15;
}

- (BOOL)loadFromURL:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v16 = NUAssertLogger_4463();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "archiveURL != nil"];
      *buf = 138543362;
      v41 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_4463();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v29 = dispatch_get_specific(*v18);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v18 = [v30 callStackSymbols];
        v32 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v29;
        v42 = 2114;
        v43 = v32;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v18;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v26 = _NUAssertFailHandler();
    goto LABEL_23;
  }

  if (!a4)
  {
    v23 = NUAssertLogger_4463();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v41 = v24;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    v25 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_4463();
    v26 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!v25)
    {
      if (v26)
      {
        v27 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v41 = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_25;
    }

LABEL_23:
    if (v26)
    {
      v33 = dispatch_get_specific(*v18);
      v34 = MEMORY[0x1E696AF00];
      v35 = v33;
      v36 = [v34 callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v41 = v33;
      v42 = 2114;
      v43 = v37;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_25:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = objc_alloc_init(MEMORY[0x1E69C0740]);
  v9 = [v7 URLByAppendingPathComponent:@"asset.resource"];
  v39 = 0;
  v10 = [v8 loadFromArchiveURL:v9 error:&v39];
  v11 = v39;
  if (v10)
  {
    [(PIParallaxSegmentationItem *)self setResource:v8];
    v12 = [v7 URLByAppendingPathComponent:@"segmentation.data.aar"];
    v38 = 0;
    v13 = [(PIParallaxSegmentationItem *)self loadSegmentationDataFromURL:v12 error:&v38];
    v14 = v38;

    if (v13)
    {
      [(PIParallaxSegmentationItem *)self setFileURL:v7];
    }

    else
    {
      *a4 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load segmentation data" object:v12 underlyingError:v14];
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load asset resource" object:v9 underlyingError:v11];
    *a4 = v13 = 0;
    v14 = v11;
  }

  return v13;
}

- (BOOL)saveToURL:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v17 = NUAssertLogger_4463();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "archiveURL != nil"];
      *buf = 138543362;
      v43 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_4463();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v30 = dispatch_get_specific(*v19);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        v19 = [v31 callStackSymbols];
        v33 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v30;
        v44 = 2114;
        v45 = v33;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v19;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v27 = _NUAssertFailHandler();
    goto LABEL_25;
  }

  if (!a4)
  {
    v24 = NUAssertLogger_4463();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v43 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    v26 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_4463();
    v27 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (!v26)
    {
      if (v27)
      {
        v28 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v43 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_27;
    }

LABEL_25:
    if (v27)
    {
      v34 = dispatch_get_specific(*v19);
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      v37 = [v35 callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v43 = v34;
      v44 = 2114;
      v45 = v38;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_27:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v41 = 0;
  v9 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:0 attributes:0 error:&v41];
  v10 = v41;

  if (v9)
  {
    v11 = [v7 URLByAppendingPathComponent:@"asset.resource"];
    v40 = 0;
    v12 = [(PIParallaxSegmentationItem *)self saveAssetResourceToURL:v11 error:&v40];
    v13 = v40;

    if (v12)
    {
      v14 = [v7 URLByAppendingPathComponent:@"segmentation.data.aar"];
      v39 = 0;
      v15 = [(PIParallaxSegmentationItem *)self saveSegmentationDataToURL:v14 error:&v39];
      v10 = v39;

      if (!v15)
      {
        *a4 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to archive segmentation data" object:self underlyingError:v10];
      }
    }

    else
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to archive asset resource" object:self underlyingError:v13];
      *a4 = v15 = 0;
      v10 = v13;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to create archive directory" object:v7 underlyingError:v10];
    *a4 = v15 = 0;
  }

  return v15;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(PIParallaxSegmentationItem *)self classification];
  v5 = PFPosterClassificationName();
  v6 = [(PIParallaxSegmentationItem *)self segmentationMatte];
  v7 = [(PIParallaxSegmentationItem *)self segmentationConfidenceMap];
  v8 = [(PIParallaxSegmentationItem *)self segmentationBackground];
  v9 = [(PIParallaxSegmentationItem *)self originalLayout];
  v10 = [(PIParallaxSegmentationItem *)self resource];
  v11 = [(PIParallaxSegmentationItem *)self composition];
  v12 = [v3 stringWithFormat:@"<%@:%p class=%@ matte=%@ conf=%@ infill=%@ layout=%@ resource=%@ composition=%@>", v4, self, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)suggestedStyleForCategory:(id)a3
{
  v55[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41 = v4;
  if (![v4 isEqualToString:*MEMORY[0x1E69C0BE0]])
  {
    if ([v4 isEqualToString:*MEMORY[0x1E69C0BE8]])
    {
      v8 = *MEMORY[0x1E69C0B30];
      v54[0] = *MEMORY[0x1E69C0B10];
      v54[1] = v8;
      v54[2] = *MEMORY[0x1E69C0B28];
      v5 = MEMORY[0x1E695DEC8];
      v6 = v54;
LABEL_5:
      v7 = 3;
      goto LABEL_11;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69C0BF0]])
    {
      v9 = *MEMORY[0x1E69C0AF0];
      v53[0] = *MEMORY[0x1E69C0B08];
      v53[1] = v9;
      v10 = *MEMORY[0x1E69C0B00];
      v53[2] = *MEMORY[0x1E69C0AF8];
      v53[3] = v10;
      v5 = MEMORY[0x1E695DEC8];
      v6 = v53;
    }

    else
    {
      if (![v4 isEqualToString:*MEMORY[0x1E69C0BD8]])
      {
        if (![v4 isEqualToString:*MEMORY[0x1E69C0BD0]])
        {
          v26 = NUAssertLogger_4463();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported style category: %@", v4];
            *buf = 138543362;
            v48 = v27;
            _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
          }

          v28 = MEMORY[0x1E69B38E8];
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v30 = NUAssertLogger_4463();
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
          if (specific)
          {
            if (v31)
            {
              v34 = dispatch_get_specific(*v28);
              v35 = MEMORY[0x1E696AF00];
              v36 = v34;
              v37 = [v35 callStackSymbols];
              v38 = [v37 componentsJoinedByString:@"\n"];
              *buf = 138543618;
              v48 = v34;
              v49 = 2114;
              v50 = v38;
              _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
            }
          }

          else if (v31)
          {
            v32 = [MEMORY[0x1E696AF00] callStackSymbols];
            v33 = [v32 componentsJoinedByString:@"\n"];
            *buf = 138543362;
            v48 = v33;
            _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
          }

          v39 = _NUAssertFailHandler();
          return __56__PIParallaxSegmentationItem_suggestedStyleForCategory___block_invoke(v39, v40);
        }

        v25 = *MEMORY[0x1E69C0AE0];
        v51[0] = *MEMORY[0x1E69C0B20];
        v51[1] = v25;
        v51[2] = *MEMORY[0x1E69C0AD8];
        v5 = MEMORY[0x1E695DEC8];
        v6 = v51;
        goto LABEL_5;
      }

      v11 = *MEMORY[0x1E69C0AF0];
      v52[0] = *MEMORY[0x1E69C0B18];
      v52[1] = v11;
      v12 = *MEMORY[0x1E69C0AF8];
      v52[2] = *MEMORY[0x1E69C0B00];
      v52[3] = v12;
      v5 = MEMORY[0x1E695DEC8];
      v6 = v52;
    }

    v7 = 4;
    goto LABEL_11;
  }

  v55[0] = *MEMORY[0x1E69C0B28];
  v5 = MEMORY[0x1E695DEC8];
  v6 = v55;
  v7 = 1;
LABEL_11:
  [v5 arrayWithObjects:v6 count:v7];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v13 = v43 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(PIParallaxSegmentationItem *)self availableStyles];
        v19 = PFFind();

        if (v19)
        {

          v20 = v41;
          goto LABEL_25;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_887);
  }

  v20 = v41;
  v21 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v48 = v41;
    _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Couldn't find a single candidate style for category %{public}@, falling back to Original", buf, 0xCu);
  }

  v19 = [(PIParallaxSegmentationItem *)self originalStyle];
LABEL_25:
  v22 = [PIParallaxStyle styleWithBakedStyle:v19];
  [v22 configureForCategory:v20];
  v23 = [v22 bakedStyle];

  return v23;
}

uint64_t __56__PIParallaxSegmentationItem_suggestedStyleForCategory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_populateDefaultStyles
{
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  v3 = [(PIParallaxSegmentationItem *)self originalStyle];
  [v17 addObject:v3];

  v4 = [(PIParallaxSegmentationItem *)self colorAnalysis];

  if (v4)
  {
    v5 = *MEMORY[0x1E69C0AD8];
    v6 = [(PIParallaxSegmentationItem *)self colorAnalysis];
    v7 = [PIParallaxStyle defaultStyleForKind:v5 colorAnalysis:v6];

    v8 = [v7 bakedStyle];
    [v17 addObject:v8];

    v9 = *MEMORY[0x1E69C0AF8];
    v10 = [(PIParallaxSegmentationItem *)self colorAnalysis];
    v11 = [PIParallaxStyle defaultStyleForKind:v9 colorAnalysis:v10];

    v12 = [v11 bakedStyle];
    [v17 addObject:v12];

    v13 = *MEMORY[0x1E69C0B00];
    v14 = [(PIParallaxSegmentationItem *)self colorAnalysis];
    v15 = [PIParallaxStyle defaultStyleForKind:v13 colorAnalysis:v14];

    v16 = [v15 bakedStyle];
    [v17 addObject:v16];
  }

  [(PIParallaxSegmentationItem *)self set_defaultStyles:v17];
}

- (NSArray)defaultStyles
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PIParallaxSegmentationItem *)v2 _defaultStyles];

  if (!v3)
  {
    [(PIParallaxSegmentationItem *)v2 _populateDefaultStyles];
  }

  objc_sync_exit(v2);

  return [(PIParallaxSegmentationItem *)v2 _defaultStyles];
}

- (id)defaultStyleOfKind:(id)a3
{
  v4 = a3;
  v5 = [(PIParallaxSegmentationItem *)self colorAnalysis];
  v6 = [PIParallaxStyle defaultStyleForKind:v4 colorAnalysis:v5];

  v7 = [v6 bakedStyle];

  return v7;
}

- (id)availableStyleOfKind:(id)a3
{
  v4 = a3;
  v5 = [(PIParallaxSegmentationItem *)self availableStyles];
  v9 = v4;
  v6 = v4;
  v7 = PFFind();

  return v7;
}

uint64_t __51__PIParallaxSegmentationItem_availableStyleOfKind___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (PFWallpaperCompoundDeviceConfiguration)layoutConfiguration
{
  v2 = [(PIParallaxSegmentationItem *)self contextInfo];
  v3 = [v2 layoutConfiguration];

  return v3;
}

- (id)adjustedStyleForHeadroom:(id)a3
{
  v4 = a3;
  v5 = [v4 kind];
  v6 = *MEMORY[0x1E69C0B28];

  if (v5 == v6)
  {
    v9 = [(PIParallaxSegmentationItem *)self originalStyle];
    goto LABEL_5;
  }

  v7 = [v4 kind];
  v8 = *MEMORY[0x1E69C0AD8];

  if (v7 != v8)
  {
    v9 = v4;
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v11 = [(PIParallaxSegmentationItem *)self colorAnalysis];
  v12 = [PIParallaxStyle defaultStyleForKind:v8 colorAnalysis:v11];
  v10 = [v12 bakedStyle];

LABEL_7:

  return v10;
}

- (PFParallaxLayerStyle)originalStyle
{
  v3 = *MEMORY[0x1E69C0B28];
  v4 = [(PIParallaxSegmentationItem *)self colorAnalysis];
  v5 = [PIParallaxStyle defaultStyleForKind:v3 colorAnalysis:v4];

  if ([(PIParallaxSegmentationItem *)self classification]!= 1)
  {
    v6 = [MEMORY[0x1E69C0750] whiteColor];
    [v5 setClockColor:v6];
  }

  v7 = [v5 bakedStyle];

  return v7;
}

- (BOOL)supportsBackgroundlessStyles
{
  v3 = +[PIGlobalSettings globalSettings];
  v4 = [v3 parallaxStyleEnableGreenScreen];

  if (!v4)
  {
    return 0;
  }

  return [(PIParallaxSegmentationItem *)self supportsSegmentedStyles];
}

- (BOOL)supportsSegmentedStyles
{
  v3 = [(PIParallaxSegmentationItem *)self scores];
  v4 = [PISegmentationGating gatingResultForSegmentationScores:v3];

  return ([(PIParallaxSegmentationItem *)self classification]== 1) & (v4 >> 2);
}

- (void)_populateAvailableStyles
{
  v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
  v3 = [(PIParallaxSegmentationItem *)self originalStyle];
  [v41 addObject:v3];

  v4 = [(PIParallaxSegmentationItem *)self colorAnalysis];

  if (v4)
  {
    if ([(PIParallaxSegmentationItem *)self supportsBackgroundlessStyles])
    {
      v5 = *MEMORY[0x1E69C0B10];
      v6 = [(PIParallaxSegmentationItem *)self colorAnalysis];
      v7 = [PIParallaxStyle defaultStyleForKind:v5 colorAnalysis:v6];

      v8 = [v7 bakedStyle];
      [v41 addObject:v8];

      v9 = *MEMORY[0x1E69C0B08];
      v10 = [(PIParallaxSegmentationItem *)self colorAnalysis];
      v11 = [PIParallaxStyle defaultStyleForKind:v9 colorAnalysis:v10];

      v12 = [v11 bakedStyle];
      [v41 addObject:v12];

      v13 = *MEMORY[0x1E69C0B20];
      v14 = [(PIParallaxSegmentationItem *)self colorAnalysis];
      v15 = [PIParallaxStyle defaultStyleForKind:v13 colorAnalysis:v14];

      v16 = [v15 bakedStyle];
      [v41 addObject:v16];

      v17 = *MEMORY[0x1E69C0B18];
      v18 = [(PIParallaxSegmentationItem *)self colorAnalysis];
      v19 = [PIParallaxStyle defaultStyleForKind:v17 colorAnalysis:v18];

      v20 = [v19 bakedStyle];
      [v41 addObject:v20];
    }

    else
    {
      v19 = 0;
    }

    if ([(PIParallaxSegmentationItem *)self supportsSegmentedStyles])
    {
      v21 = *MEMORY[0x1E69C0B30];
      v22 = [(PIParallaxSegmentationItem *)self colorAnalysis];
      v23 = [PIParallaxStyle defaultStyleForKind:v21 colorAnalysis:v22];

      v24 = [v23 bakedStyle];
      [v41 addObject:v24];

      v25 = *MEMORY[0x1E69C0AE0];
      v26 = [(PIParallaxSegmentationItem *)self colorAnalysis];
      v19 = [PIParallaxStyle defaultStyleForKind:v25 colorAnalysis:v26];

      v27 = [v19 bakedStyle];
      [v41 addObject:v27];

      v28 = MEMORY[0x1E69C0AF0];
    }

    else
    {
      v28 = MEMORY[0x1E69C0AD8];
    }

    v29 = *v28;
    v30 = [(PIParallaxSegmentationItem *)self colorAnalysis];
    v31 = [PIParallaxStyle defaultStyleForKind:v29 colorAnalysis:v30];

    v32 = [v31 bakedStyle];
    [v41 addObject:v32];

    v33 = *MEMORY[0x1E69C0AF8];
    v34 = [(PIParallaxSegmentationItem *)self colorAnalysis];
    v35 = [PIParallaxStyle defaultStyleForKind:v33 colorAnalysis:v34];

    v36 = [v35 bakedStyle];
    [v41 addObject:v36];

    v37 = *MEMORY[0x1E69C0B00];
    v38 = [(PIParallaxSegmentationItem *)self colorAnalysis];
    v39 = [PIParallaxStyle defaultStyleForKind:v37 colorAnalysis:v38];

    v40 = [v39 bakedStyle];
    [v41 addObject:v40];
  }

  [(PIParallaxSegmentationItem *)self set_availableStyles:v41];
}

- (NSArray)availableStyles
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PIParallaxSegmentationItem *)v2 _availableStyles];

  if (!v3)
  {
    [(PIParallaxSegmentationItem *)v2 _populateAvailableStyles];
  }

  objc_sync_exit(v2);

  return [(PIParallaxSegmentationItem *)v2 _availableStyles];
}

- (BOOL)isComplete
{
  v2 = [(PIParallaxSegmentationItem *)self originalLayout];
  v3 = v2 != 0;

  return v3;
}

- (id)spatialPhotoGatingDiagnosticsOnlyFailures:(BOOL)a3
{
  v16[5] = *MEMORY[0x1E69E9840];
  v4 = [(PIParallaxSegmentationItem *)self scores];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0D40]];

  if (v5)
  {
    v15[0] = &unk_1F471E958;
    v15[1] = &unk_1F471E988;
    v16[0] = @"Generation disabled";
    v16[1] = @"Unsupported device";
    v15[2] = &unk_1F471E9A0;
    v15[3] = &unk_1F471E9B8;
    v16[2] = @"Producer unavailable";
    v16[3] = @"Layout unavailable";
    v15[4] = &unk_1F471E9D0;
    v16[4] = @"Unsupported image size";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
    v7 = [v5 unsignedIntegerValue];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PIParallaxSegmentationItem_spatialPhotoGatingDiagnosticsOnlyFailures___block_invoke;
    v11[3] = &unk_1E82AA0A8;
    v13 = v7;
    v14 = a3;
    v9 = v8;
    v12 = v9;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

void __72__PIParallaxSegmentationItem_spatialPhotoGatingDiagnosticsOnlyFailures___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = *(a1 + 40) & v5;
  if (*(a1 + 48) == 1)
  {
    if (v6 == v5)
    {
      [*(a1 + 32) addObject:v9];
    }
  }

  else
  {
    if (v6 == v5)
    {
      v7 = @"Yes";
    }

    else
    {
      v7 = @"No";
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", v9, v7];
    [*(a1 + 32) addObject:v8];
  }
}

- (BOOL)spatialPhotoFailedUnexpectedly
{
  v2 = [(PIParallaxSegmentationItem *)self scores];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69C0D40]];
  v4 = [v3 unsignedIntegerValue];

  return (v4 & 0xFFFFFFFFFFFFFFDFLL) != 0;
}

- (BOOL)spatialPhotoFailedAnyGating
{
  v2 = [(PIParallaxSegmentationItem *)self scores];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69C0D40]];

  LOBYTE(v2) = [v3 unsignedIntegerValue] != 0;
  return v2;
}

- (void)setSpatialPhotoNormalizedBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PIParallaxSegmentationItem *)self _invalidateCachedData];
  self->_spatialPhotoNormalizedBounds.origin.x = x;
  self->_spatialPhotoNormalizedBounds.origin.y = y;
  self->_spatialPhotoNormalizedBounds.size.width = width;
  self->_spatialPhotoNormalizedBounds.size.height = height;
}

- (BOOL)settlingEffectHasInterestingMotion
{
  v2 = [(PIParallaxSegmentationItem *)self scores];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69C0D28]];

  if (v3)
  {
    [v3 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  v6 = +[PIGlobalSettings globalSettings];
  [v6 settlingEffectMinimumMotionScore];
  v8 = v7;

  return v5 >= v8;
}

- (NSArray)settlingEffectGatingDiagnostics
{
  v13[14] = *MEMORY[0x1E69E9840];
  v2 = [(PIParallaxSegmentationItem *)self scores];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69C0D18]];

  if (v3)
  {
    v12[0] = &unk_1F471E958;
    v12[1] = &unk_1F471E970;
    v13[0] = @"Missing required metadata";
    v13[1] = @"Failed L1 stabilization";
    v12[2] = &unk_1F471E988;
    v12[3] = &unk_1F471E9A0;
    v13[2] = @"Failed video quality gating";
    v13[3] = @"Failed metadata integrity check";
    v12[4] = &unk_1F471E9B8;
    v12[5] = &unk_1F471E9D0;
    v13[4] = @"Failed FRC gating";
    v13[5] = @"Failed still transition gating";
    v12[6] = &unk_1F471E9E8;
    v12[7] = &unk_1F471EA00;
    v13[6] = @"Unsupported Photos adjustments";
    v13[7] = @"Feature is disabled/unsupported";
    v12[8] = &unk_1F471EA18;
    v12[9] = &unk_1F471EA30;
    v13[8] = @"Asset resources are unavailable";
    v13[9] = @"Generic error";
    v12[10] = &unk_1F471EA48;
    v12[11] = &unk_1F471EA60;
    v13[10] = @"Failed to apply adjustments to FRC";
    v13[11] = @"Failed hardware support check";
    v12[12] = &unk_1F471EA78;
    v12[13] = &unk_1F471EA90;
    v13[12] = @"User-selected keyframe is out of the supported bounds";
    v13[13] = @"Failed to load AVAsset from URL";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:14];
    v5 = [v3 unsignedIntegerValue];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__PIParallaxSegmentationItem_settlingEffectGatingDiagnostics__block_invoke;
    v9[3] = &unk_1E82AA080;
    v11 = v5;
    v7 = v6;
    v10 = v7;
    [v4 enumerateKeysAndObjectsUsingBlock:v9];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

void __61__PIParallaxSegmentationItem_settlingEffectGatingDiagnostics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (([a2 unsignedIntegerValue] & ~*(a1 + 40)) != 0)
  {
    v6 = @"No";
  }

  else
  {
    v6 = @"Yes";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", v5, v6];

  [*(a1 + 32) addObject:v7];
}

- (BOOL)settlingEffectFailedUnexpectedly
{
  v2 = [(PIParallaxSegmentationItem *)self scores];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69C0D18]];
  v4 = [v3 unsignedIntegerValue];

  return (v4 & 0x680) != 0;
}

- (BOOL)settlingEffectFailedAnyGating
{
  v2 = [(PIParallaxSegmentationItem *)self scores];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69C0D18]];

  LOBYTE(v2) = [v3 unsignedIntegerValue] != 0;
  return v2;
}

- (void)setSettlingEffectVideoData:(id)a3
{
  v4 = a3;
  [(PIParallaxSegmentationItem *)self _invalidateCachedData];
  v5 = [v4 copy];

  settlingEffectVideoData = self->_settlingEffectVideoData;
  self->_settlingEffectVideoData = v5;
}

- (void)setSettlingEffectNormalizedBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PIParallaxSegmentationItem *)self _invalidateCachedData];
  self->_settlingEffectNormalizedBounds.origin.x = x;
  self->_settlingEffectNormalizedBounds.origin.y = y;
  self->_settlingEffectNormalizedBounds.size.width = width;
  self->_settlingEffectNormalizedBounds.size.height = height;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PIParallaxSegmentationItem allocWithZone:?]];
  v5 = [(PIParallaxSegmentationItem *)self resource];
  [(PIParallaxSegmentationItem *)v4 setResource:v5];

  v6 = [(PIParallaxSegmentationItem *)self composition];
  [(PIParallaxSegmentationItem *)v4 setComposition:v6];

  [(PIParallaxSegmentationItem *)v4 setClassification:[(PIParallaxSegmentationItem *)self classification]];
  v7 = [(PIParallaxSegmentationItem *)self segmentationMatte];
  [(PIParallaxSegmentationItem *)v4 setSegmentationMatte:v7];

  v8 = [(PIParallaxSegmentationItem *)self segmentationConfidenceMap];
  [(PIParallaxSegmentationItem *)v4 setSegmentationConfidenceMap:v8];

  v9 = [(PIParallaxSegmentationItem *)self segmentationBackground];
  [(PIParallaxSegmentationItem *)v4 setSegmentationBackground:v9];

  v10 = [(PIParallaxSegmentationItem *)self regions];
  [(PIParallaxSegmentationItem *)v4 setRegions:v10];

  v11 = [(PIParallaxSegmentationItem *)self originalLayout];
  [(PIParallaxSegmentationItem *)v4 setOriginalLayout:v11];

  v12 = [(PIParallaxSegmentationItem *)self defaultLayout];
  [(PIParallaxSegmentationItem *)v4 setDefaultLayout:v12];

  v13 = [(PIParallaxSegmentationItem *)self settlingEffectLayout];
  [(PIParallaxSegmentationItem *)v4 setSettlingEffectLayout:v13];

  v14 = [(PIParallaxSegmentationItem *)self spatialPhotoLayout];
  [(PIParallaxSegmentationItem *)v4 setSpatialPhotoLayout:v14];

  v15 = [(PIParallaxSegmentationItem *)self scores];
  [(PIParallaxSegmentationItem *)v4 setScores:v15];

  v16 = [(PIParallaxSegmentationItem *)self colorAnalysis];
  [(PIParallaxSegmentationItem *)v4 setColorAnalysis:v16];

  v17 = [(PIParallaxSegmentationItem *)self localLightData];
  [(PIParallaxSegmentationItem *)v4 setLocalLightData:v17];

  [(PIParallaxSegmentationItem *)self settlingEffectNormalizedBounds];
  [(PIParallaxSegmentationItem *)v4 setSettlingEffectNormalizedBounds:?];
  v18 = [(PIParallaxSegmentationItem *)self settlingEffectVideoData];
  [(PIParallaxSegmentationItem *)v4 setSettlingEffectVideoData:v18];

  [(PIParallaxSegmentationItem *)v4 setSettlingEffectStatus:[(PIParallaxSegmentationItem *)self settlingEffectStatus]];
  [(PIParallaxSegmentationItem *)self spatialPhotoNormalizedBounds];
  [(PIParallaxSegmentationItem *)v4 setSpatialPhotoNormalizedBounds:?];
  [(PIParallaxSegmentationItem *)v4 setSpatialPhotoStatus:[(PIParallaxSegmentationItem *)self spatialPhotoStatus]];
  [(PIParallaxSegmentationItem *)self focalLengthIn35mm];
  [(PIParallaxSegmentationItem *)v4 setFocalLengthIn35mm:?];
  v19 = [(PIParallaxSegmentationItem *)self contextInfo];
  [(PIParallaxSegmentationItem *)v4 setContextInfo:v19];

  return v4;
}

- (PIParallaxSegmentationItem)init
{
  v7.receiver = self;
  v7.super_class = PIParallaxSegmentationItem;
  v2 = [(PIParallaxSegmentationItem *)&v7 init];
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 16);
  v2->_settlingEffectNormalizedBounds.origin = *MEMORY[0x1E695F050];
  v2->_settlingEffectNormalizedBounds.size = v4;
  v2->_spatialPhotoNormalizedBounds.origin = v3;
  v2->_spatialPhotoNormalizedBounds.size = v4;
  scores = v2->_scores;
  v2->_scores = MEMORY[0x1E695E0F8];

  return v2;
}

+ (void)loadSettlingEffectVideoDataFromURL:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v14 = NUAssertLogger_4463();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v29 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_4463();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(*v16);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v22;
        v30 = 2114;
        v31 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = objc_alloc_init(PIParallaxSegmentationItem);
  v27 = 0;
  v9 = [objc_opt_class() _settlingEffectDataLoadingBlock];
  v10 = [(PIParallaxSegmentationItem *)v8 _loadSegmentationDataFromURL:v5 error:&v27 matteImageLoadingBlock:&__block_literal_global_512 backgroundImageLoadingBlock:&__block_literal_global_512 settingEffectDataLoadingBlock:v9];
  v11 = v27;

  if (v10 && ([(PIParallaxSegmentationItem *)v8 settlingEffectVideoData], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = [(PIParallaxSegmentationItem *)v8 settlingEffectVideoData];
    (v7)[2](v7, v13, 0);
  }

  else
  {
    v13 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load settling effect data" object:v5 underlyingError:v11];
    (v7)[2](v7, 0, v13);
  }
}

PISegmentationLoadingResult *__76__PIParallaxSegmentationItem_loadSettlingEffectVideoDataFromURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v3 = [v2 decodeData:&v12 filename:&v11 error:&v10];
  v4 = v12;
  v5 = v11;
  v6 = v10;

  if (v3)
  {
    v7 = [[PISegmentationLoadingResult alloc] initWithObject:0 success:1 error:0];
  }

  else
  {
    v8 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to decode image data" object:v2 underlyingError:v6];
    v7 = [[PISegmentationLoadingResult alloc] initWithObject:0 success:0 error:v8];
  }

  return v7;
}

+ (id)imageBufferFromData:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = NUAssertLogger_4463();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "imageData != nil"];
      *texture = 138543362;
      *&texture[4] = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", texture, 0xCu);
    }

    v14 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_4463();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v25 = dispatch_get_specific(*v14);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        v14 = [v26 callStackSymbols];
        v28 = [v14 componentsJoinedByString:@"\n"];
        *texture = 138543618;
        *&texture[4] = v25;
        v35 = 2114;
        v36 = v28;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", texture, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v18 componentsJoinedByString:@"\n"];
      *texture = 138543362;
      *&texture[4] = v14;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", texture, 0xCu);
    }

    v22 = _NUAssertFailHandler();
    goto LABEL_22;
  }

  if (!a4)
  {
    v19 = NUAssertLogger_4463();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *texture = 138543362;
      *&texture[4] = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", texture, 0xCu);
    }

    v14 = MEMORY[0x1E69B38E8];
    v21 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_4463();
    v22 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!v21)
    {
      if (v22)
      {
        v23 = [MEMORY[0x1E696AF00] callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *texture = 138543362;
        *&texture[4] = v24;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", texture, 0xCu);
      }

      goto LABEL_24;
    }

LABEL_22:
    if (v22)
    {
      v29 = dispatch_get_specific(*v14);
      v30 = MEMORY[0x1E696AF00];
      v31 = v29;
      v32 = [v30 callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *texture = 138543618;
      *&texture[4] = v29;
      v35 = 2114;
      v36 = v33;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", texture, 0x16u);
    }

LABEL_24:

    _NUAssertFailHandler();
  }

  v6 = v5;
  *texture = 0;
  CVPixelBufferFromImageData = PFFigCreateCVPixelBufferFromImageData();
  if (CVPixelBufferFromImageData)
  {
    v8 = MEMORY[0x1E69B3A48];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:CVPixelBufferFromImageData];
    *a4 = [v8 failureError:@"Failed to decode pixel buffer" object:v9];

    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:*texture];
    CVPixelBufferRelease(*texture);
  }

  return v10;
}

+ (id)dataForImageBuffer:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = NUAssertLogger_4463();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      *buf = 138543362;
      v37 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_4463();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v27 = dispatch_get_specific(*v16);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v16 = [v28 callStackSymbols];
        v30 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v27;
        v38 = 2114;
        v39 = v30;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v16;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v24 = _NUAssertFailHandler();
    goto LABEL_22;
  }

  if (!a4)
  {
    v21 = NUAssertLogger_4463();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v37 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    v23 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_4463();
    v24 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (!v23)
    {
      if (v24)
      {
        v25 = [MEMORY[0x1E696AF00] callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v37 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_24;
    }

LABEL_22:
    if (v24)
    {
      v31 = dispatch_get_specific(*v16);
      v32 = MEMORY[0x1E696AF00];
      v33 = v31;
      v34 = [v32 callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v37 = v31;
      v38 = 2114;
      v39 = v35;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_24:

    _NUAssertFailHandler();
  }

  v6 = v5;
  [v5 CVPixelBuffer];
  v7 = PFFigEncodeCVPixelBufferToData();
  v8 = 0;
  v9 = v8;
  if (v7)
  {
    v10 = MEMORY[0x1E69B3A48];
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    *a4 = [v10 failureError:@"Failed to encode pixel buffer" object:v11];

    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

PISegmentationLoadingResult *__61__PIParallaxSegmentationItem__settlingEffectDataLoadingBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v3 = [v2 decodeData:&v13 filename:&v12 error:&v11];
  v4 = v13;
  v5 = v12;
  v6 = v11;
  if (v3)
  {
    if ([v5 isEqualToString:@"settlingEffect.mov"])
    {
      v7 = [[PISegmentationLoadingResult alloc] initWithObject:v4 success:1 error:0];
      goto LABEL_7;
    }

    v8 = [MEMORY[0x1E69B3A48] invalidError:@"Expected settlingEffect.mov data" object:v5];
  }

  else
  {
    v8 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to decode settling effect video data" object:v2 underlyingError:v6];
  }

  v9 = v8;
  v7 = [[PISegmentationLoadingResult alloc] initWithObject:0 success:0 error:v8];

LABEL_7:

  return v7;
}

+ (id)_backgroundImageLoadingBlock
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__PIParallaxSegmentationItem__backgroundImageLoadingBlock__block_invoke;
  v4[3] = &__block_descriptor_40_e53___PISegmentationLoadingResult_16__0__PFAppleArchive_8l;
  v4[4] = a1;
  v2 = MEMORY[0x1CCA61740](v4, a2);

  return v2;
}

PISegmentationLoadingResult *__58__PIParallaxSegmentationItem__backgroundImageLoadingBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v3 = [v2 decodeData:&v16 filename:&v15 error:&v14];
  v4 = v16;
  v5 = v15;
  v6 = v14;
  if (v3)
  {
    if ([v5 isEqualToString:@"background.heic"])
    {
      v13 = 0;
      v7 = [objc_opt_class() imageBufferFromData:v4 error:&v13];
      v8 = v13;

      if (v7)
      {
        v9 = [[PISegmentationLoadingResult alloc] initWithObject:v7 success:1 error:0];
      }

      else
      {
        v11 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to read background image data" object:v4 underlyingError:v8];
        v9 = [[PISegmentationLoadingResult alloc] initWithObject:0 success:0 error:v11];
      }

      v6 = v8;
      goto LABEL_10;
    }

    v10 = [MEMORY[0x1E69B3A48] invalidError:@"Expected background.heic data" object:v5];
  }

  else
  {
    v10 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to decode background image data" object:v2 underlyingError:v6];
  }

  v7 = v10;
  v9 = [[PISegmentationLoadingResult alloc] initWithObject:0 success:0 error:v10];
LABEL_10:

  return v9;
}

+ (id)_matteImageLoadingBlock
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PIParallaxSegmentationItem__matteImageLoadingBlock__block_invoke;
  v4[3] = &__block_descriptor_40_e53___PISegmentationLoadingResult_16__0__PFAppleArchive_8l;
  v4[4] = a1;
  v2 = MEMORY[0x1CCA61740](v4, a2);

  return v2;
}

PISegmentationLoadingResult *__53__PIParallaxSegmentationItem__matteImageLoadingBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v3 = [v2 decodeData:&v16 filename:&v15 error:&v14];
  v4 = v16;
  v5 = v15;
  v6 = v14;
  if (v3)
  {
    if ([v5 isEqualToString:@"matte.heic"])
    {
      v13 = 0;
      v7 = [objc_opt_class() imageBufferFromData:v4 error:&v13];
      v8 = v13;

      if (v7)
      {
        v9 = [[PISegmentationLoadingResult alloc] initWithObject:v7 success:1 error:0];
      }

      else
      {
        v11 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to read matte image data" object:v4 underlyingError:v8];
        v9 = [[PISegmentationLoadingResult alloc] initWithObject:0 success:0 error:v11];
      }

      v6 = v8;
      goto LABEL_10;
    }

    v10 = [MEMORY[0x1E69B3A48] invalidError:@"Expected matte.heic data" object:v5];
  }

  else
  {
    v10 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to decode matte image data" object:v2 underlyingError:v6];
  }

  v7 = v10;
  v9 = [[PISegmentationLoadingResult alloc] initWithObject:0 success:0 error:v10];
LABEL_10:

  return v9;
}

@end