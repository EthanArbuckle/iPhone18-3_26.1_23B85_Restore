@interface PICompositionSidecarData
+ (id)_loadContentsDictionaryFromData:(id)data error:(id *)error;
+ (id)dataForImageBuffer:(__CVBuffer *)buffer error:(id *)error;
+ (id)imageBufferFromData:(id)data error:(id *)error;
+ (id)loadFromDictionary:(id)dictionary error:(id *)error;
+ (id)loadFromURL:(id)l error:(id *)error;
- (BOOL)isEmpty;
- (BOOL)saveToURL:(id)l error:(id *)error;
- (PICompositionSidecarData)initWithComposition:(id)composition;
- (PICompositionSidecarData)initWithSourceIdentifier:(id)identifier maskSources:(id)sources;
- (id)contentsDictionary;
- (id)serialize:(id *)serialize;
@end

@implementation PICompositionSidecarData

- (BOOL)saveToURL:(id)l error:(id *)error
{
  v6 = buf;
  v120 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v49 = NUAssertLogger_10729();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "archiveURL != nil"];
      *buf = 138543362;
      v117 = v50;
      _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v46 = NUAssertLogger_10729();
    v52 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    if (specific)
    {
LABEL_56:
      if (v52)
      {
        v64 = dispatch_get_specific(*callStackSymbols);
        v65 = MEMORY[0x1E696AF00];
        v66 = v64;
        callStackSymbols = [v65 callStackSymbols];
        v67 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *(v6 + 4) = v64;
        v118 = 2114;
        *(v6 + 14) = v67;
        _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v52)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v117 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = _NUAssertFailHandler();
    goto LABEL_59;
  }

  if (!error)
  {
    v54 = NUAssertLogger_10729();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v117 = v55;
      _os_log_error_impl(&dword_1C7694000, v54, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v56 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v46 = NUAssertLogger_10729();
    v57 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    if (!v56)
    {
      if (v57)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v59 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v117 = v59;
        _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_61;
    }

LABEL_59:
    if (v57)
    {
      v68 = dispatch_get_specific(*callStackSymbols);
      v69 = MEMORY[0x1E696AF00];
      v70 = v68;
      callStackSymbols4 = [v69 callStackSymbols];
      v72 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *(v6 + 4) = v68;
      v118 = 2114;
      *(v6 + 14) = v72;
      _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_61:

    _NUAssertFailHandler();
    goto LABEL_62;
  }

  v8 = lCopy;
  v9 = [(PICompositionSidecarData *)self serialize:error];
  if (!v9)
  {
    v36 = 0;
    goto LABEL_37;
  }

  uRLByDeletingLastPathComponent = [v8 URLByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v114 = 0;
  v12 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v114];
  v13 = v114;

  if ((v12 & 1) == 0)
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to create archive parent directory" object:v8 underlyingError:v13];
    *error = v36 = 0;
    goto LABEL_36;
  }

  v14 = [objc_alloc(MEMORY[0x1E69C0648]) initWithArchiveURL:v8];
  [v14 setCompression:-1];
  v113 = v13;
  v15 = [v14 openForWriting:&v113];
  v16 = v113;

  if ((v15 & 1) == 0)
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to open sidecar data archive for writing" object:v8 underlyingError:v16];
    *error = v36 = 0;
    goto LABEL_35;
  }

  selfCopy = self;
  v17 = [v9 objectForKeyedSubscript:@"contents.plist"];
  if (!v17)
  {
LABEL_62:
    v73 = NUAssertLogger_10729();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing contents manifest"];
      *buf = 138543362;
      *(v6 + 4) = v74;
      _os_log_error_impl(&dword_1C7694000, v73, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v75 = MEMORY[0x1E69B38E8];
    v76 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v77 = NUAssertLogger_10729();
    v78 = os_log_type_enabled(v77, OS_LOG_TYPE_ERROR);
    if (v76)
    {
      if (v78)
      {
        v81 = dispatch_get_specific(*v75);
        v82 = MEMORY[0x1E696AF00];
        v83 = v81;
        callStackSymbols5 = [v82 callStackSymbols];
        v85 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v117 = v81;
        v118 = 2114;
        v119 = v85;
        _os_log_error_impl(&dword_1C7694000, v77, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v78)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v80 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v117 = v80;
      _os_log_error_impl(&dword_1C7694000, v77, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    goto LABEL_70;
  }

  v18 = v17;
  v112 = v16;
  v19 = [v14 encodeData:v17 filename:@"contents.plist" error:&v112];
  v20 = v112;

  if ((v19 & 1) == 0)
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to archive contents plist data" object:v18 underlyingError:v20];
    *error = v36 = 0;
    goto LABEL_34;
  }

  v99 = v18;
  v100 = uRLByDeletingLastPathComponent;
  v104 = v14;
  errorCopy = error;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = [(PICompositionSidecarData *)selfCopy maskSources];
  v21 = [obj countByEnumeratingWithState:&v108 objects:v115 count:16];
  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = v21;
  v23 = *v109;
  do
  {
    v6 = 0;
    v24 = v20;
    do
    {
      if (*v109 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = MEMORY[0x1E696AEC0];
      maskIdentifier = [*(*(&v108 + 1) + 8 * v6) maskIdentifier];
      v27 = [v25 stringWithFormat:@"masks/%@", maskIdentifier];

      v28 = [v9 objectForKeyedSubscript:v27];
      if (!v28)
      {
        v42 = NUAssertLogger_10729();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing mask %@", v27];
          *buf = 138543362;
          v117 = v43;
          _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        callStackSymbols = MEMORY[0x1E69B38E8];
        v45 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v46 = NUAssertLogger_10729();
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
        if (v45)
        {
          if (v47)
          {
            v60 = dispatch_get_specific(*callStackSymbols);
            v61 = MEMORY[0x1E696AF00];
            v62 = v60;
            callStackSymbols = [v61 callStackSymbols];
            v63 = [callStackSymbols componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v117 = v60;
            v118 = 2114;
            v119 = v63;
            _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v47)
        {
          callStackSymbols7 = [MEMORY[0x1E696AF00] callStackSymbols];
          callStackSymbols = [callStackSymbols7 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v117 = callStackSymbols;
          _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        v52 = _NUAssertFailHandler();
        goto LABEL_56;
      }

      v29 = v28;
      v107 = v24;
      v30 = [v104 encodeData:v28 filename:v27 error:&v107];
      v20 = v107;

      if (!v30)
      {
        *errorCopy = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to archive mask data" object:v29 underlyingError:v20];

        v36 = 0;
        uRLByDeletingLastPathComponent = v100;
        goto LABEL_33;
      }

      ++v6;
      v24 = v20;
    }

    while (v22 != v6);
    v22 = [obj countByEnumeratingWithState:&v108 objects:v115 count:16];
  }

  while (v22);
LABEL_17:

  v31 = [v9 objectForKeyedSubscript:@"BrushStrokeHistory.plist"];
  brushStrokeHistory = [(PICompositionSidecarData *)selfCopy brushStrokeHistory];

  if (brushStrokeHistory)
  {
    v33 = errorCopy;
    if (v31)
    {
      v106 = v20;
      v34 = [v104 encodeData:v31 filename:@"BrushStrokeHistory.plist" error:&v106];
      v35 = v106;

      uRLByDeletingLastPathComponent = v100;
      if (v34)
      {
        v20 = v35;
        goto LABEL_27;
      }

      v38 = MEMORY[0x1E69B3A48];
      v39 = @"Failed to archive brush stroke history data";
      v40 = v31;
LABEL_31:
      [v38 errorWithCode:1 reason:v39 object:v40 underlyingError:v35];
      *v33 = v36 = 0;
      goto LABEL_32;
    }

LABEL_70:
    v86 = NUAssertLogger_10729();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing brush stroke history data"];
      *buf = 138543362;
      v117 = v87;
      _os_log_error_impl(&dword_1C7694000, v86, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v88 = MEMORY[0x1E69B38E8];
    v89 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v90 = NUAssertLogger_10729();
    v91 = os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
    if (v89)
    {
      if (v91)
      {
        v94 = dispatch_get_specific(*v88);
        v95 = MEMORY[0x1E696AF00];
        v96 = v94;
        callStackSymbols8 = [v95 callStackSymbols];
        v98 = [callStackSymbols8 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v117 = v94;
        v118 = 2114;
        v119 = v98;
        _os_log_error_impl(&dword_1C7694000, v90, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v91)
    {
      callStackSymbols9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v93 = [callStackSymbols9 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v117 = v93;
      _os_log_error_impl(&dword_1C7694000, v90, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  uRLByDeletingLastPathComponent = v100;
  v33 = errorCopy;
LABEL_27:
  v105 = v20;
  v37 = [v104 close:&v105];
  v35 = v105;

  if ((v37 & 1) == 0)
  {
    v38 = MEMORY[0x1E69B3A48];
    v39 = @"Failed to close sidecar archive file";
    v40 = v104;
    goto LABEL_31;
  }

  v36 = 1;
LABEL_32:

  v20 = v35;
LABEL_33:
  v14 = v104;
  v18 = v99;
LABEL_34:

  v16 = v20;
LABEL_35:

  v13 = v16;
LABEL_36:

LABEL_37:
  return v36;
}

- (id)serialize:(id *)serialize
{
  v3 = buf;
  v79 = *MEMORY[0x1E69E9840];
  if (!serialize)
  {
    goto LABEL_37;
  }

  contentsDictionary = [(PICompositionSidecarData *)self contentsDictionary];
  v73 = 0;
  v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:contentsDictionary format:200 options:0 error:&v73];
  v8 = v73;
  if (!v7)
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to serialize contents plist" object:contentsDictionary underlyingError:v8];
    *serialize = v32 = 0;
    goto LABEL_26;
  }

  serializeCopy = serialize;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 setObject:v7 forKeyedSubscript:@"contents.plist"];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  selfCopy = self;
  obj = [(PICompositionSidecarData *)self maskSources];
  v10 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = *v70;
  v61 = v7;
  v62 = contentsDictionary;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v70 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v69 + 1) + 8 * i);
      v68 = 0;
      v15 = [v14 sourceImage:&v68];
      v16 = v68;

      if (!v15)
      {
        *serializeCopy = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to create new mask image from source" object:v14 underlyingError:v16];
        goto LABEL_21;
      }

      pixelBuffer = [v15 pixelBuffer];
      if (!pixelBuffer)
      {
        definition = [v14 definition];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = MEMORY[0x1E695DEF0];
          v23 = definition;
          v24 = [v22 alloc];
          v25 = [v23 url];

          v20 = [v24 initWithContentsOfURL:v25];
          v8 = v16;
          goto LABEL_14;
        }

        v36 = NUAssertLogger_10729();
        v3 = &qword_1C7845000;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mask sources must be backed either by a buffer or a file"];
          *buf = 138543362;
          v76 = v37;
          _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v38 = MEMORY[0x1E69B38E8];
        specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v40 = NUAssertLogger_10729();
        v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
        if (specific)
        {
          if (v41)
          {
            v44 = dispatch_get_specific(*v38);
            v45 = MEMORY[0x1E696AF00];
            v3 = v44;
            callStackSymbols = [v45 callStackSymbols];
            v47 = [callStackSymbols componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v76 = v44;
            v77 = 2114;
            v78 = v47;
            _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v41)
        {
          callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
          v43 = [callStackSymbols2 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v76 = v43;
          _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler();
LABEL_37:
        v48 = NUAssertLogger_10729();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
          *buf = 138543362;
          *(v3 + 4) = v49;
          _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v50 = MEMORY[0x1E69B38E8];
        v51 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v52 = NUAssertLogger_10729();
        v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
        if (v51)
        {
          if (v53)
          {
            v56 = dispatch_get_specific(*v50);
            v57 = MEMORY[0x1E696AF00];
            v58 = v56;
            callStackSymbols3 = [v57 callStackSymbols];
            v60 = [callStackSymbols3 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v76 = v56;
            v77 = 2114;
            v78 = v60;
            _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v53)
        {
          callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
          v55 = [callStackSymbols4 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          *(v3 + 4) = v55;
          _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler();
      }

      v18 = pixelBuffer;
      v19 = objc_opt_class();
      v67 = 0;
      v20 = [v19 dataForImageBuffer:v18 error:&v67];
      v8 = v67;

      if (!v20)
      {
        *serializeCopy = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to encode mask" object:v15 underlyingError:v8];

        v16 = v8;
LABEL_21:

        v32 = 0;
        v7 = v61;
        contentsDictionary = v62;
        goto LABEL_25;
      }

LABEL_14:
      v26 = MEMORY[0x1E696AEC0];
      maskIdentifier = [v14 maskIdentifier];
      v28 = [v26 stringWithFormat:@"masks/%@", maskIdentifier];

      [v9 setObject:v20 forKeyedSubscript:v28];
    }

    v11 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    v7 = v61;
    contentsDictionary = v62;
  }

  while (v11);
LABEL_16:

  brushStrokeHistory = [(PICompositionSidecarData *)selfCopy brushStrokeHistory];

  if (brushStrokeHistory)
  {
    brushStrokeHistory2 = [(PICompositionSidecarData *)selfCopy brushStrokeHistory];
    v66 = 0;
    v31 = [brushStrokeHistory2 exportDataWithError:&v66];
    v16 = v66;

    if (v31)
    {
      [v9 setObject:v31 forKeyedSubscript:@"BrushStrokeHistory.plist"];

      goto LABEL_23;
    }

    v33 = MEMORY[0x1E69B3A48];
    brushStrokeHistory3 = [(PICompositionSidecarData *)selfCopy brushStrokeHistory];
    *serializeCopy = [v33 errorWithCode:1 reason:@"Failed to export brush stroke history data" object:brushStrokeHistory3 underlyingError:v16];

    v32 = 0;
  }

  else
  {
    v16 = v8;
LABEL_23:
    v32 = v9;
  }

LABEL_25:

  v8 = v16;
LABEL_26:

  return v32;
}

- (id)contentsDictionary
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PICompositionSidecarData version](self, "version")}];
  v23 = v3;
  [v3 setObject:v4 forKeyedSubscript:@"version"];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  obj = [(PICompositionSidecarData *)self maskSources];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v29[0] = @"identifier";
        maskIdentifier = [v11 maskIdentifier];
        v30[0] = maskIdentifier;
        v29[1] = @"extent";
        if (v11)
        {
          [v11 extent];
        }

        v13 = NSArrayFromNUPixelRect();
        v30[1] = v13;
        v29[2] = @"scale";
        [v11 scale];
        v14 = NUScaleToString();
        v30[2] = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];

        maskIdentifier2 = [v11 maskIdentifier];
        [v6 setObject:v15 forKeyedSubscript:maskIdentifier2];

        maskIdentifier3 = [v11 maskIdentifier];
        [v5 addObject:maskIdentifier3];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v8);
  }

  [v23 setObject:v6 forKeyedSubscript:@"maskSources"];
  [v23 setObject:v5 forKeyedSubscript:@"maskIdentifiers"];
  v18 = MEMORY[0x1E696AD98];
  brushStrokeHistory = [(PICompositionSidecarData *)selfCopy brushStrokeHistory];
  v20 = [v18 numberWithInt:brushStrokeHistory != 0];
  [v23 setObject:v20 forKeyedSubscript:@"hasBrushStrokeHistory"];

  return v23;
}

- (BOOL)isEmpty
{
  maskSources = [(PICompositionSidecarData *)self maskSources];
  v4 = [maskSources count];

  if (v4)
  {
    return 0;
  }

  brushStrokeHistory = [(PICompositionSidecarData *)self brushStrokeHistory];
  v5 = [brushStrokeHistory entryCount] == 0;

  return v5;
}

- (PICompositionSidecarData)initWithComposition:(id)composition
{
  v38 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!compositionCopy)
  {
    v12 = NUAssertLogger_10729();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v35 = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_10729();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v25 = dispatch_get_specific(*callStackSymbols);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v25;
        v36 = 2114;
        v37 = v28;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v22 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  v5 = compositionCopy;
  v6 = [compositionCopy objectForKeyedSubscript:@"source"];
  if (!v6)
  {
    v19 = NUAssertLogger_10729();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A source is required to serialize inpaint mask files"];
      *buf = 138543362;
      v35 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v21 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_10729();
    v22 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!v21)
    {
      if (v22)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v24 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v35 = v24;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v22)
    {
      v29 = dispatch_get_specific(*callStackSymbols);
      v30 = MEMORY[0x1E696AF00];
      v31 = v29;
      callStackSymbols4 = [v30 callStackSymbols];
      v33 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v35 = v29;
      v36 = 2114;
      v37 = v33;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [v5 objectForKeyedSubscript:@"inpaintMasks"];
  assetIdentifier = [v7 assetIdentifier];
  v10 = [(PICompositionSidecarData *)self initWithSourceIdentifier:assetIdentifier maskSources:v8];

  return v10;
}

- (PICompositionSidecarData)initWithSourceIdentifier:(id)identifier maskSources:(id)sources
{
  v13.receiver = self;
  v13.super_class = PICompositionSidecarData;
  sourcesCopy = sources;
  identifierCopy = identifier;
  v7 = [(PICompositionSidecarData *)&v13 init];
  v8 = [identifierCopy copy];

  sourceIdentifier = v7->_sourceIdentifier;
  v7->_sourceIdentifier = v8;

  v7->_version = 2;
  v10 = [sourcesCopy copy];

  maskSources = v7->_maskSources;
  v7->_maskSources = v10;

  return v7;
}

+ (id)imageBufferFromData:(id)data error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    v12 = NUAssertLogger_10729();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "imageData != nil"];
      *texture = 138543362;
      *&texture[4] = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", texture, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_10729();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v25 = dispatch_get_specific(*callStackSymbols);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *texture = 138543618;
        *&texture[4] = v25;
        v35 = 2114;
        v36 = v28;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", texture, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *texture = 138543362;
      *&texture[4] = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", texture, 0xCu);
    }

    v22 = _NUAssertFailHandler();
    goto LABEL_22;
  }

  if (!error)
  {
    v19 = NUAssertLogger_10729();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *texture = 138543362;
      *&texture[4] = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", texture, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v21 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_10729();
    v22 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!v21)
    {
      if (v22)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v24 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *texture = 138543362;
        *&texture[4] = v24;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", texture, 0xCu);
      }

      goto LABEL_24;
    }

LABEL_22:
    if (v22)
    {
      v29 = dispatch_get_specific(*callStackSymbols);
      v30 = MEMORY[0x1E696AF00];
      v31 = v29;
      callStackSymbols4 = [v30 callStackSymbols];
      v33 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *texture = 138543618;
      *&texture[4] = v29;
      v35 = 2114;
      v36 = v33;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", texture, 0x16u);
    }

LABEL_24:

    _NUAssertFailHandler();
  }

  v6 = dataCopy;
  *texture = 0;
  CVPixelBufferFromImageData = PFFigCreateCVPixelBufferFromImageData();
  if (CVPixelBufferFromImageData)
  {
    v8 = MEMORY[0x1E69B3A48];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:CVPixelBufferFromImageData];
    *error = [v8 failureError:@"Failed to decode pixel buffer" object:v9];

    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:*texture];
    CVPixelBufferRelease(*texture);
  }

  return v10;
}

+ (id)dataForImageBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  if (!buffer)
  {
    v12 = NUAssertLogger_10729();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      *buf = 138543362;
      v35 = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_10729();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v25 = dispatch_get_specific(*callStackSymbols);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v25;
        v36 = 2114;
        v37 = v28;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v22 = _NUAssertFailHandler();
    goto LABEL_22;
  }

  if (!error)
  {
    v19 = NUAssertLogger_10729();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v35 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v21 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_10729();
    v22 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!v21)
    {
      if (v22)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v24 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v35 = v24;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_24;
    }

LABEL_22:
    if (v22)
    {
      v29 = dispatch_get_specific(*callStackSymbols);
      v30 = MEMORY[0x1E696AF00];
      v31 = v29;
      callStackSymbols4 = [v30 callStackSymbols];
      v33 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v35 = v29;
      v36 = 2114;
      v37 = v33;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_24:

    _NUAssertFailHandler();
  }

  v5 = PFFigEncodeCVPixelBufferToData();
  v6 = 0;
  v7 = v6;
  if (v5)
  {
    v8 = MEMORY[0x1E69B3A48];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:v5];
    *error = [v8 failureError:@"Failed to encode pixel buffer" object:v9];

    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

+ (id)loadFromDictionary:(id)dictionary error:(id *)error
{
  v105 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v57 = NUAssertLogger_10729();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dataDictionary != nil"];
      *buf = 138543362;
      *&buf[4] = v58;
      _os_log_error_impl(&dword_1C7694000, v57, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v61 = NUAssertLogger_10729();
    v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v62)
      {
        v70 = dispatch_get_specific(*callStackSymbols);
        v71 = MEMORY[0x1E696AF00];
        v72 = v70;
        callStackSymbols = [v71 callStackSymbols];
        v73 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v70;
        *&buf[12] = 2114;
        *&buf[14] = v73;
        _os_log_error_impl(&dword_1C7694000, v61, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v62)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v61, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v67 = _NUAssertFailHandler();
    goto LABEL_86;
  }

  if (!error)
  {
    v64 = NUAssertLogger_10729();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v65;
      _os_log_error_impl(&dword_1C7694000, v64, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v66 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v61 = NUAssertLogger_10729();
    v67 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
    if (!v66)
    {
      if (v67)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v69 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v69;
        _os_log_error_impl(&dword_1C7694000, v61, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_88;
    }

LABEL_86:
    if (v67)
    {
      v74 = dispatch_get_specific(*callStackSymbols);
      v75 = MEMORY[0x1E696AF00];
      v76 = v74;
      callStackSymbols4 = [v75 callStackSymbols];
      v78 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v74;
      *&buf[12] = 2114;
      *&buf[14] = v78;
      _os_log_error_impl(&dword_1C7694000, v61, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_88:

    _NUAssertFailHandler();
  }

  v7 = dictionaryCopy;
  v8 = objc_alloc_init(PICompositionSidecarData);
  v9 = [v7 objectForKeyedSubscript:@"contents.plist"];
  if (!v9)
  {
    [MEMORY[0x1E69B3A48] missingError:@"Missing contents manifest data" object:v7];
    *error = v42 = 0;
    goto LABEL_62;
  }

  v95 = [self _loadContentsDictionaryFromData:v9 error:error];
  if (!v95)
  {
    v42 = 0;
    goto LABEL_61;
  }

  errorCopy = error;
  v86 = [v95 objectForKeyedSubscript:@"version"];
  unsignedIntegerValue = [v86 unsignedIntegerValue];
  [(PICompositionSidecarData *)v8 setVersion:?];
  v10 = [v95 objectForKeyedSubscript:@"maskIdentifiers"];
  v11 = [v95 objectForKeyedSubscript:@"maskSources"];
  v94 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v12 = v10;
  v87 = [v12 countByEnumeratingWithState:&v99 objects:v104 count:16];
  if (!v87)
  {
    goto LABEL_28;
  }

  v13 = 0x1E696A000uLL;
  v89 = *v100;
  v79 = v9;
  v80 = v8;
  v84 = v11;
  v85 = v12;
  selfCopy = self;
  while (2)
  {
    v14 = 0;
    do
    {
      if (*v100 != v89)
      {
        objc_enumerationMutation(v12);
      }

      v15 = *(*(&v99 + 1) + 8 * v14);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x1E69B3A48] invalidError:@"Invalid mask identifier" object:v15];
        *errorCopy = v42 = 0;
LABEL_59:
        v38 = v12;
        v9 = v79;
        v8 = v80;
        goto LABEL_60;
      }

      v16 = [v11 objectForKeyedSubscript:v15];
      if (!v16)
      {
        v17 = [*(v13 + 3776) stringWithFormat:@"Missing mask source metadata for '%@'", v15];
        v44 = MEMORY[0x1E69B3A48];
        v45 = v17;
        v46 = v11;
        goto LABEL_46;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        *errorCopy = [MEMORY[0x1E69B3A48] invalidError:@"Invalid mask source metadata" object:v16];
LABEL_58:

        v42 = 0;
        goto LABEL_59;
      }

      v17 = [v16 objectForKeyedSubscript:@"identifier"];
      if (!v17)
      {
        v44 = MEMORY[0x1E69B3A48];
        v45 = @"Missing mask source identifier";
        v46 = v16;
LABEL_46:
        v47 = [v44 missingError:v45 object:v46];
        goto LABEL_49;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v47 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid mask source identifier" object:v17];
LABEL_49:
        *errorCopy = v47;
LABEL_57:

        goto LABEL_58;
      }

      if (([(__CFString *)v17 isEqualToString:v15]& 1) == 0)
      {
        v47 = [MEMORY[0x1E69B3A48] mismatchError:@"Encoded mask identifier does not match expected value" object:v17];
        goto LABEL_49;
      }

      v92 = v14;
      v18 = [v16 objectForKeyedSubscript:@"extent"];
      if (!v18)
      {
        v48 = [MEMORY[0x1E69B3A48] missingError:@"Missing mask source extent" object:v16];
LABEL_53:
        *errorCopy = v48;

        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v48 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid mask source extent" object:v18];
        goto LABEL_53;
      }

      memset(buf, 0, 32);
      v93 = v18;
      NUPixelRectFromArray();
      v19 = [v16 objectForKeyedSubscript:@"scale"];
      if (!v19)
      {
        v50 = [MEMORY[0x1E69B3A48] missingError:@"Missing mask source scale" object:0];
LABEL_56:
        *errorCopy = v50;

        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid mask source scale" object:v19];
        goto LABEL_56;
      }

      v91 = v17;
      v20 = NUScaleFromString();
      v21 = v13;
      v22 = v20;
      v24 = v23;
      v25 = [*(v21 + 3776) stringWithFormat:@"masks/%@", v15];
      v26 = [v7 objectForKeyedSubscript:v25];
      if (!v26)
      {
        v52 = [MEMORY[0x1E69B3A48] missingError:@"Missing mask" object:v25];
LABEL_67:
        *errorCopy = v52;

        v42 = 0;
        v12 = v85;
        goto LABEL_59;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v52 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid mask data" object:v26];
        goto LABEL_67;
      }

      v90 = v25;
      v98 = 0;
      v27 = [self imageBufferFromData:v26 error:&v98];
      if (v27)
      {
        v28 = v7;
        v29 = MEMORY[0x1E69B3B58];
        v82 = v98;
        v30 = v29;
        v7 = v28;
        v31 = [v30 alloc];
        v97[0] = *buf;
        v97[1] = *&buf[16];
        v32 = [v31 initWithImageBuffer:v27 identifier:v15 extent:v97 scale:{v22, v24}];

        [v94 addObject:v32];
      }

      else
      {
        v33 = MEMORY[0x1E69B3A48];
        v34 = v98;
        v35 = [v33 errorWithCode:1 reason:@"Failed to read mask image data" object:v26 underlyingError:v34];
        v36 = v35;

        *errorCopy = v35;
      }

      v13 = 0x1E696A000;

      if (!v27)
      {
        v42 = 0;
        v11 = v84;
        v12 = v85;
        goto LABEL_59;
      }

      v14 = v92 + 1;
      v11 = v84;
      v12 = v85;
      self = selfCopy;
    }

    while (v87 != v92 + 1);
    v9 = v79;
    v8 = v80;
    v87 = [v85 countByEnumeratingWithState:&v99 objects:v104 count:16];
    if (v87)
    {
      continue;
    }

    break;
  }

LABEL_28:

  [(PICompositionSidecarData *)v8 setMaskSources:v94];
  v37 = [v95 objectForKeyedSubscript:@"hasBrushStrokeHistory"];
  v38 = v37;
  if (unsignedIntegerValue < 2)
  {
LABEL_31:
    if (![v38 BOOLValue])
    {
LABEL_36:
      v42 = v8;
      goto LABEL_60;
    }

    v39 = [v7 objectForKeyedSubscript:@"BrushStrokeHistory.plist"];
    if (v39)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v96 = 0;
        v40 = [[PIBrushStrokeHistory alloc] initWithData:v39 error:&v96];
        if (v40)
        {
          v41 = v40;
          [(PICompositionSidecarData *)v8 setBrushStrokeHistory:v40];

          goto LABEL_36;
        }

        v53 = MEMORY[0x1E69B3A48];
        v54 = v96;
        v55 = [v53 errorWithCode:1 reason:@"Failed to initialize brush stroke history from data" object:v39 underlyingError:v54];
        v56 = v55;

        *errorCopy = v55;
LABEL_71:

        v42 = 0;
        goto LABEL_60;
      }

      v49 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid brush stroke history data" object:v39];
    }

    else
    {
      v49 = [MEMORY[0x1E69B3A48] missingError:@"Missing brush stroke history data" object:v95];
    }

    *errorCopy = v49;
    goto LABEL_71;
  }

  if (v37)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_31;
    }

    v43 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid brush stroke history value" object:v38];
  }

  else
  {
    v43 = [MEMORY[0x1E69B3A48] missingError:@"Missing brush stroke history value" object:v95];
  }

  v42 = 0;
  *errorCopy = v43;
LABEL_60:

LABEL_61:
LABEL_62:

  return v42;
}

+ (id)_loadContentsDictionaryFromData:(id)data error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    v22 = NUAssertLogger_10729();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v46 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_10729();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v35 = dispatch_get_specific(*callStackSymbols);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols = [v36 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v35;
        v47 = 2114;
        v48 = v38;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v32 = _NUAssertFailHandler();
    goto LABEL_52;
  }

  if (!error)
  {
    v29 = NUAssertLogger_10729();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v46 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v31 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_10729();
    v32 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!v31)
    {
      if (v32)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v34 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v46 = v34;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_54;
    }

LABEL_52:
    if (v32)
    {
      v39 = dispatch_get_specific(*callStackSymbols);
      v40 = MEMORY[0x1E696AF00];
      v41 = v39;
      callStackSymbols4 = [v40 callStackSymbols];
      v43 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v46 = v39;
      v47 = 2114;
      v48 = v43;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_54:

    _NUAssertFailHandler();
  }

  v6 = dataCopy;
  v44 = 0;
  v7 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:&v44];
  v8 = v44;
  if (!v7)
  {
    v12 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to deserialize contents plist" object:v6 underlyingError:v8];
LABEL_11:
    v13 = 0;
    *error = v12;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid contents plist" object:v7];
    goto LABEL_11;
  }

  v9 = [v7 objectForKeyedSubscript:@"version"];
  if (!v9)
  {
    v11 = [MEMORY[0x1E69B3A48] missingError:@"Missing version info" object:v7];
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid version info" object:v9];
    goto LABEL_14;
  }

  unsignedIntegerValue = [v9 unsignedIntegerValue];
  if (unsignedIntegerValue < 3)
  {
    v15 = unsignedIntegerValue;
    v16 = [v7 objectForKeyedSubscript:@"maskIdentifiers"];
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v7 objectForKeyedSubscript:@"maskSources"];
        if (v17)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v15 == 2)
            {
              v18 = [v7 objectForKeyedSubscript:@"hasBrushStrokeHistory"];
              if (v18)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {

                  goto LABEL_27;
                }

                v21 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid brush stroke history value" object:v18];
              }

              else
              {
                v21 = [MEMORY[0x1E69B3A48] missingError:@"Missing brush stroke history value" object:v7];
              }

              *error = v21;

              v13 = 0;
              goto LABEL_34;
            }

LABEL_27:
            v13 = v7;
LABEL_34:

            goto LABEL_35;
          }

          v20 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid mask source metadata" object:v17];
        }

        else
        {
          v20 = [MEMORY[0x1E69B3A48] missingError:@"Missing mask source metadata" object:v7];
        }

        v13 = 0;
        *error = v20;
        goto LABEL_34;
      }

      v19 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid mask source identifiers" object:v16];
    }

    else
    {
      v19 = [MEMORY[0x1E69B3A48] missingError:@"Missing mask source identifiers" object:v7];
    }

    v13 = 0;
    *error = v19;
LABEL_35:

    goto LABEL_15;
  }

  v11 = [MEMORY[0x1E69B3A48] unsupportedError:@"Unsupported version" object:v9];
LABEL_14:
  v13 = 0;
  *error = v11;
LABEL_15:

LABEL_16:

  return v13;
}

+ (id)loadFromURL:(id)l error:(id *)error
{
  v91 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v39 = NUAssertLogger_10729();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "archiveURL != nil"];
      *buf = 138543362;
      v88 = v40;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v43 = NUAssertLogger_10729();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v44)
      {
        v52 = dispatch_get_specific(*callStackSymbols);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols = [v53 callStackSymbols];
        v55 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v88 = v52;
        v89 = 2114;
        v90 = v55;
        _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v88 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v49 = _NUAssertFailHandler();
    goto LABEL_52;
  }

  if (!error)
  {
    v46 = NUAssertLogger_10729();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v88 = v47;
      _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v48 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v43 = NUAssertLogger_10729();
    v49 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (!v48)
    {
      if (v49)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v51 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v88 = v51;
        _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_54;
    }

LABEL_52:
    if (v49)
    {
      v56 = dispatch_get_specific(*callStackSymbols);
      v57 = MEMORY[0x1E696AF00];
      v58 = v56;
      callStackSymbols4 = [v57 callStackSymbols];
      v60 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v88 = v56;
      v89 = 2114;
      v90 = v60;
      _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_54:

    _NUAssertFailHandler();
  }

  v7 = lCopy;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [objc_alloc(MEMORY[0x1E69C0648]) initWithArchiveURL:v7];
  [v9 setCompression:-1];
  v85 = 0;
  v10 = [v9 openForReading:&v85];
  v11 = v85;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to open sidecar data archive for reading" object:v7 underlyingError:v11];
    *error = v33 = 0;
    goto LABEL_36;
  }

  v83 = 0;
  v84 = 0;
  v82 = v11;
  v13 = [v9 decodeData:&v84 filename:&v83 error:&v82];
  v14 = v84;
  v15 = v83;
  v16 = v82;

  if ((v13 & 1) == 0)
  {
    v34 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to decode contents plist data" object:v9 underlyingError:v16];
LABEL_24:
    v33 = 0;
    *error = v34;
    goto LABEL_35;
  }

  if (([v15 isEqualToString:@"contents.plist"] & 1) == 0)
  {
    v34 = [MEMORY[0x1E69B3A48] invalidError:@"Expected contents.plist data" object:v15];
    goto LABEL_24;
  }

  v81 = 0;
  selfCopy = self;
  v17 = [self _loadContentsDictionaryFromData:v14 error:&v81];
  v18 = v81;

  if (!v17)
  {
    v33 = 0;
    goto LABEL_34;
  }

  [v8 setObject:v14 forKeyedSubscript:@"contents.plist"];
  [v17 objectForKeyedSubscript:@"maskIdentifiers"];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v80 = 0u;
  v70 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
  v67 = v17;
  if (!v70)
  {
    goto LABEL_16;
  }

  v69 = *v78;
  errorCopy = error;
  v63 = v14;
  v65 = v15;
  while (2)
  {
    v19 = 0;
    v20 = v18;
    do
    {
      v21 = v8;
      if (*v78 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v77 + 1) + 8 * v19);
      v75 = 0;
      v76 = 0;
      v74 = v20;
      v23 = [v9 decodeData:&v76 filename:&v75 error:&v74];
      v24 = v76;
      v25 = v75;
      v18 = v74;

      if ((v23 & 1) == 0)
      {
        *errorCopy = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to decode mask image data" object:v9 underlyingError:v18];
LABEL_28:
        v8 = v21;
        v14 = v63;

        v33 = 0;
        v36 = obj;
        v27 = obj;
        v15 = v65;
        goto LABEL_33;
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"masks/%@", v22];
      if (([v25 isEqualToString:v26] & 1) == 0)
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected %@ data", v26];
        *errorCopy = [MEMORY[0x1E69B3A48] invalidError:v35 object:v25];

        goto LABEL_28;
      }

      v8 = v21;
      [v21 setObject:v24 forKeyedSubscript:v26];

      ++v19;
      v20 = v18;
    }

    while (v70 != v19);
    error = errorCopy;
    v14 = v63;
    v15 = v65;
    v17 = v67;
    v70 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
    if (v70)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v27 = [v17 objectForKeyedSubscript:@"hasBrushStrokeHistory"];
  if ([v27 BOOLValue])
  {
    v64 = v14;
    v66 = v15;
    v28 = v8;
    v72 = 0;
    v73 = 0;
    v71 = v18;
    v29 = [v9 decodeData:&v73 filename:&v72 error:&v71];
    v30 = v73;
    v31 = v72;
    v32 = v71;

    if (v29)
    {
      if ([v31 isEqualToString:@"BrushStrokeHistory.plist"])
      {
        [v28 setObject:v30 forKeyedSubscript:@"BrushStrokeHistory.plist"];

        v8 = v28;
        v18 = v32;
        v14 = v64;
        v15 = v66;
        goto LABEL_20;
      }

      v37 = [MEMORY[0x1E69B3A48] mismatchError:@"Unexpected brush stroke history file name" object:v31];
    }

    else
    {
      v37 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to decode brush history data" object:v9 underlyingError:v32];
    }

    v14 = v64;
    *error = v37;

    v33 = 0;
    v18 = v32;
    v8 = v28;
    v15 = v66;
  }

  else
  {
LABEL_20:
    v33 = [selfCopy loadFromDictionary:v8 error:error];
  }

  v36 = obj;
LABEL_33:

  v17 = v67;
LABEL_34:

  v16 = v18;
LABEL_35:

  v12 = v16;
LABEL_36:

  return v33;
}

@end