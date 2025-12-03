@interface _PIPosterInactiveFrameLayoutJob
- (BOOL)complete:(id *)complete;
- (BOOL)prepare:(id *)prepare;
- (BOOL)render:(id *)render;
- (BOOL)wantsCompleteStage;
- (BOOL)wantsRenderStage;
- (CGRect)adaptiveInactiveRect;
- (CGRect)inactiveRect;
- (_PIPosterInactiveFrameLayoutJob)initWithInactiveFrameLayoutRequest:(id)request;
- (_PIPosterInactiveFrameLayoutJob)initWithRequest:(id)request;
- (id)result;
- (id)scalePolicy;
@end

@implementation _PIPosterInactiveFrameLayoutJob

- (CGRect)adaptiveInactiveRect
{
  x = self->_adaptiveInactiveRect.origin.x;
  y = self->_adaptiveInactiveRect.origin.y;
  width = self->_adaptiveInactiveRect.size.width;
  height = self->_adaptiveInactiveRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inactiveRect
{
  x = self->_inactiveRect.origin.x;
  y = self->_inactiveRect.origin.y;
  width = self->_inactiveRect.size.width;
  height = self->_inactiveRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)result
{
  v3 = objc_alloc_init(_PIPosterInactiveFrameLayoutResult);
  [(_PIPosterInactiveFrameLayoutJob *)self inactiveRect];
  [(_PIPosterInactiveFrameLayoutResult *)v3 setInactiveRect:?];
  [(_PIPosterInactiveFrameLayoutJob *)self adaptiveInactiveRect];
  [(_PIPosterInactiveFrameLayoutResult *)v3 setAdaptiveInactiveRect:?];

  return v3;
}

- (BOOL)complete:(id *)complete
{
  v137 = *MEMORY[0x1E69E9840];
  if (!complete)
  {
    v110 = NUAssertLogger_24860();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      v111 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v134 = v111;
      _os_log_error_impl(&dword_1C7694000, v110, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v112 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v114 = NUAssertLogger_24860();
    v115 = os_log_type_enabled(v114, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v115)
      {
        v118 = dispatch_get_specific(*v112);
        v119 = MEMORY[0x1E696AF00];
        v120 = v118;
        callStackSymbols = [v119 callStackSymbols];
        v122 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v134 = v118;
        v135 = 2114;
        v136 = v122;
        _os_log_error_impl(&dword_1C7694000, v114, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v115)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v117 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v134 = v117;
      _os_log_error_impl(&dword_1C7694000, v114, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = MEMORY[0x1E69C07A8];
  layout = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  [layout visibleFrame];
  v125 = v6;
  v127 = v7;
  v129 = v9;
  v131 = v8;
  layoutInactiveFrameRequest = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
  segmentationItem = [layoutInactiveFrameRequest segmentationItem];
  regions = [segmentationItem regions];
  [regions acceptableCropRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  layoutConfiguration = [(_PIPosterInactiveFrameLayoutJob *)self layoutConfiguration];
  [layoutConfiguration unsafeRect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  layout2 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  [layout2 imageSize];
  [v4 computeInactiveAvoidingRectForVisibleRect:1 acceptableFrame:0 unsafeRect:v125 imageSize:v131 considerHeadroom:v129 newVisibleRect:{v127, v14, v16, v18, v20, v23, v25, v27, v29, v31, v32}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  [(_PIPosterInactiveFrameLayoutJob *)self setInactiveRect:v34, v36, v38, v40];
  layout3 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  LOBYTE(segmentationItem) = [layout3 isUsingHeadroom];
  layout4 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  v43 = layout4;
  if (segmentationItem)
  {
    [layout4 extendedImageSize];
  }

  else
  {
    [layout4 imageSize];
  }

  v46 = v44;
  v47 = v45;

  if ([(PFPosterOrientedLayout *)self->_layout layoutVariant]== 2)
  {
    layoutInactiveFrameRequest2 = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
    segmentationItem2 = [layoutInactiveFrameRequest2 segmentationItem];
    regions2 = [segmentationItem2 regions];
    [regions2 acceptableCropRect];
    v123 = v47;
    v124 = v46;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    layout5 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [layout5 imageSize];
    v61 = v60;
    layout6 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [layout6 imageSize];
    v63 = v52 * v61 + 0.0;
    v65 = v54 * v64 + 0.0;
    v130 = v65;
    v132 = v63;
    v126 = v58 * v64;
    v128 = v56 * v61;

    v66 = MEMORY[0x1E69C07A8];
    layout7 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [layout7 visibleFrame];
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    layoutConfiguration2 = [(_PIPosterInactiveFrameLayoutJob *)self layoutConfiguration];
    layoutInactiveFrameRequest3 = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
    segmentationItem3 = [layoutInactiveFrameRequest3 segmentationItem];
    [v66 adaptiveFrameForVisibleFrame:layoutConfiguration2 essentialRect:objc_msgSend(segmentationItem3 originalImageSize:"classification") layoutConfiguration:v69 classification:v71 maxClockStretchOverride:{v73, v75, v63, v65, v128, v126, v124, v123, 0x3FF0000000000000}];

    v79 = MEMORY[0x1E69C07A8];
    [(PFPosterOrientedLayout *)self->_layout visibleFrame];
    [v79 topFrameForVisibleRect:? adaptiveRect:?];
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = MEMORY[0x1E69C07A8];
    layoutConfiguration3 = [(_PIPosterInactiveFrameLayoutJob *)self layoutConfiguration];
    [layoutConfiguration3 unsafeRect];
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v97 = v96;
    layout8 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [layout8 imageSize];
    [v88 computeInactiveAvoidingRectForVisibleRect:0 acceptableFrame:0 unsafeRect:v81 imageSize:v83 considerHeadroom:v85 newVisibleRect:{v87, v132, v130, v128, v126, v91, v93, v95, v97, v99, v100}];
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;

    [(_PIPosterInactiveFrameLayoutJob *)self setAdaptiveInactiveRect:v102, v104, v106, v108];
  }

  return 1;
}

- (BOOL)render:(id *)render
{
  v155 = *MEMORY[0x1E69E9840];
  v4 = [(NURenderJob *)self renderer:render];
  if (!v4)
  {
    v114 = NUAssertLogger_24860();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      v115 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing renderer"];
      *buf = 138543362;
      *&buf[4] = v115;
      _os_log_error_impl(&dword_1C7694000, v114, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v118 = NUAssertLogger_24860();
    v119 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v119)
      {
        v132 = dispatch_get_specific(*callStackSymbols);
        v133 = MEMORY[0x1E696AF00];
        v134 = v132;
        callStackSymbols = [v133 callStackSymbols];
        v135 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v132;
        *&buf[12] = 2114;
        *&buf[14] = v135;
        _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v119)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v124 = _NUAssertFailHandler();
    goto LABEL_28;
  }

  v5 = v4;
  layout = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  if (!layout)
  {
    v121 = NUAssertLogger_24860();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
      v122 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing poster layout"];
      *buf = 138543362;
      *&buf[4] = v122;
      _os_log_error_impl(&dword_1C7694000, v121, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v123 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v118 = NUAssertLogger_24860();
    v124 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
    if (!v123)
    {
      if (v124)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_30:

      v129 = _NUAssertFailHandler();
      goto LABEL_31;
    }

LABEL_28:
    if (v124)
    {
      v136 = dispatch_get_specific(*callStackSymbols);
      v137 = MEMORY[0x1E696AF00];
      v138 = v136;
      callStackSymbols = [v137 callStackSymbols];
      v139 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v136;
      *&buf[12] = 2114;
      *&buf[14] = v139;
      _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v7 = layout;
  matteImage = [(_PIPosterInactiveFrameLayoutJob *)self matteImage];
  if (!matteImage)
  {
    v126 = NUAssertLogger_24860();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      v127 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing matte image"];
      *buf = 138543362;
      *&buf[4] = v127;
      _os_log_error_impl(&dword_1C7694000, v126, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v128 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v118 = NUAssertLogger_24860();
    v129 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
    if (!v128)
    {
      if (v129)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v131 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v131;
        _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_33;
    }

LABEL_31:
    if (v129)
    {
      v140 = dispatch_get_specific(*callStackSymbols);
      v141 = MEMORY[0x1E696AF00];
      v142 = v140;
      callStackSymbols5 = [v141 callStackSymbols];
      v144 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v140;
      *&buf[12] = 2114;
      *&buf[14] = v144;
      _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_33:

    _NUAssertFailHandler();
  }

  v9 = matteImage;
  v10 = objc_alloc(MEMORY[0x1E69B3A78]);
  [v9 extent];
  v11 = NUPixelSizeFromCGSize();
  v13 = [v10 initWithTargetPixelSize:{v11, v12}];
  [v7 imageSize];
  v14 = NUPixelSizeFromCGSize();
  [v13 scaleForImageSize:{v14, v15}];
  NUScaleToDouble();
  v17 = v16;
  v18 = 1.0 / v16;
  layout2 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  [layout2 visibleFrame];
  v21 = v17 * v20;
  v23 = v17 * v22;
  v25 = v17 * v24;
  v27 = v17 * v26;

  layout3 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  [layout3 imageSize];
  v30 = v29;
  v32 = v31;

  layout4 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  [layout4 visibleFrame];
  v157.origin.x = v34;
  v157.origin.y = v35;
  v157.size.width = v36;
  v157.size.height = v37;
  v156.origin.x = 0.0;
  v156.origin.y = 0.0;
  v156.size.width = v30;
  v156.size.height = v32;
  v38 = CGRectContainsRect(v156, v157);

  v153 = 0u;
  v154 = 0u;
  memset(buf, 0, sizeof(buf));
  [v9 extent];
  v40 = v39;
  v42 = v41;
  layoutConfiguration = [(_PIPosterInactiveFrameLayoutJob *)self layoutConfiguration];
  context = [v5 context];
  [PISegmentationHelper computeInactiveFrameWithVisibleFrame:0 imageSize:!v38 canUpdateVisibleRect:v9 considerHeadroom:layoutConfiguration segmentationMatte:context layoutConfiguration:v21 context:v23, v25, v27, v40, v42];

  [(_PIPosterInactiveFrameLayoutJob *)self setInactiveRect:v18 * 0.0, v18 * 0.0, v18 * 0.0, v18 * 0.0];
  layout5 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  LOBYTE(layoutConfiguration) = [layout5 isUsingHeadroom];
  layout6 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  v47 = layout6;
  if (layoutConfiguration)
  {
    [layout6 extendedImageSize];
  }

  else
  {
    [layout6 imageSize];
  }

  v50 = v48;
  v51 = v49;

  if ([(PFPosterOrientedLayout *)self->_layout layoutVariant]== 2)
  {
    layoutInactiveFrameRequest = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
    segmentationItem = [layoutInactiveFrameRequest segmentationItem];
    regions = [segmentationItem regions];
    [regions acceptableCropRect];
    v145 = v51;
    v146 = v50;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    layout7 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [layout7 imageSize];
    v65 = v64;
    [(_PIPosterInactiveFrameLayoutJob *)self layout];
    v66 = v151 = v13;
    [v66 imageSize];
    v67 = v56 * v65 + 0.0;
    v69 = v58 * v68 + 0.0;
    v149 = v69;
    v150 = v67;
    v147 = v62 * v68;
    v148 = v60 * v65;

    v70 = MEMORY[0x1E69C07A8];
    layout8 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [layout8 visibleFrame];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    layoutConfiguration2 = [(_PIPosterInactiveFrameLayoutJob *)self layoutConfiguration];
    layoutInactiveFrameRequest2 = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
    segmentationItem2 = [layoutInactiveFrameRequest2 segmentationItem];
    [v70 adaptiveFrameForVisibleFrame:layoutConfiguration2 essentialRect:objc_msgSend(segmentationItem2 originalImageSize:"classification") layoutConfiguration:v73 classification:v75 maxClockStretchOverride:{v77, v79, v67, v69, v148, v147, v146, v145, 0x3FF0000000000000}];

    v13 = v151;
    v83 = MEMORY[0x1E69C07A8];
    [(PFPosterOrientedLayout *)self->_layout visibleFrame];
    [v83 topFrameForVisibleRect:? adaptiveRect:?];
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = MEMORY[0x1E69C07A8];
    layoutConfiguration3 = [(_PIPosterInactiveFrameLayoutJob *)self layoutConfiguration];
    [layoutConfiguration3 unsafeRect];
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v101 = v100;
    layout9 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [layout9 imageSize];
    [v92 computeInactiveAvoidingRectForVisibleRect:0 acceptableFrame:0 unsafeRect:v85 imageSize:v87 considerHeadroom:v89 newVisibleRect:{v91, v150, v149, v148, v147, v95, v97, v99, v101, v103, v104}];
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;

    [(_PIPosterInactiveFrameLayoutJob *)self setAdaptiveInactiveRect:v106, v108, v110, v112];
  }

  return 1;
}

- (BOOL)prepare:(id *)prepare
{
  v49 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = _PIPosterInactiveFrameLayoutJob;
  v4 = [(NURenderJob *)&v44 prepare:prepare];
  if (!v4)
  {
    return v4;
  }

  layoutInactiveFrameRequest = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
  segmentationItem = [layoutInactiveFrameRequest segmentationItem];

  if (!segmentationItem)
  {
    v22 = NUAssertLogger_24860();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing segmentation item"];
      *buf = 138543362;
      v46 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_24860();
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
    goto LABEL_29;
  }

  layoutInactiveFrameRequest2 = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
  layout = [layoutInactiveFrameRequest2 layout];
  if (!layout)
  {
    originalLayout = [segmentationItem originalLayout];
    portraitLayout = [originalLayout portraitLayout];

    if (portraitLayout)
    {
      goto LABEL_6;
    }

    v29 = NUAssertLogger_24860();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing poster layout"];
      *buf = 138543362;
      v46 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v31 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_24860();
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

      goto LABEL_31;
    }

LABEL_29:
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

LABEL_31:

    _NUAssertFailHandler();
  }

  portraitLayout = layout;

LABEL_6:
  layoutConfiguration = [segmentationItem layoutConfiguration];
  portraitConfiguration = [layoutConfiguration portraitConfiguration];
  v13 = portraitConfiguration;
  if (portraitConfiguration)
  {
    portraitConfiguration2 = portraitConfiguration;
  }

  else
  {
    deviceConfiguration = [MEMORY[0x1E69C0938] deviceConfiguration];
    portraitConfiguration2 = [deviceConfiguration portraitConfiguration];
  }

  segmentationMatte = [segmentationItem segmentationMatte];

  if (segmentationMatte)
  {
    v17 = MEMORY[0x1E695F658];
    segmentationMatte2 = [segmentationItem segmentationMatte];
    v19 = [v17 imageWithNUImageBuffer:segmentationMatte2];

    if (([segmentationItem classification] - 3) <= 1)
    {
      v20 = [PISegmentationHelper invertImage:v19];

      v19 = v20;
    }

    [(_PIPosterInactiveFrameLayoutJob *)self setMatteImage:v19];
  }

  else
  {
    [(_PIPosterInactiveFrameLayoutJob *)self setInactiveRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  }

  [(_PIPosterInactiveFrameLayoutJob *)self setLayout:portraitLayout];
  [(_PIPosterInactiveFrameLayoutJob *)self setLayoutConfiguration:portraitConfiguration2];

  return v4;
}

- (id)scalePolicy
{
  v2 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:3048192];

  return v2;
}

- (BOOL)wantsCompleteStage
{
  matteImage = [(_PIPosterInactiveFrameLayoutJob *)self matteImage];
  v3 = matteImage == 0;

  return v3;
}

- (BOOL)wantsRenderStage
{
  matteImage = [(_PIPosterInactiveFrameLayoutJob *)self matteImage];
  v3 = matteImage != 0;

  return v3;
}

- (_PIPosterInactiveFrameLayoutJob)initWithInactiveFrameLayoutRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = _PIPosterInactiveFrameLayoutJob;
  return [(NURenderJob *)&v4 initWithRequest:request];
}

- (_PIPosterInactiveFrameLayoutJob)initWithRequest:(id)request
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_24874);
        }

LABEL_11:
        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v22 = MEMORY[0x1E696AF00];
          v23 = specific;
          v24 = v20;
          callStackSymbols = [v22 callStackSymbols];
          v26 = [callStackSymbols componentsJoinedByString:@"\n"];
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_24874);
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
      callStackSymbols2 = [v16 callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_24874);
  }
}

@end