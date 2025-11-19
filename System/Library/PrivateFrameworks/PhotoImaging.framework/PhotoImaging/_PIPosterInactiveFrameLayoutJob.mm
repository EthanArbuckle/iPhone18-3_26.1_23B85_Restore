@interface _PIPosterInactiveFrameLayoutJob
- (BOOL)complete:(id *)a3;
- (BOOL)prepare:(id *)a3;
- (BOOL)render:(id *)a3;
- (BOOL)wantsCompleteStage;
- (BOOL)wantsRenderStage;
- (CGRect)adaptiveInactiveRect;
- (CGRect)inactiveRect;
- (_PIPosterInactiveFrameLayoutJob)initWithInactiveFrameLayoutRequest:(id)a3;
- (_PIPosterInactiveFrameLayoutJob)initWithRequest:(id)a3;
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

- (BOOL)complete:(id *)a3
{
  v137 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v121 = [v119 callStackSymbols];
        v122 = [v121 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v134 = v118;
        v135 = 2114;
        v136 = v122;
        _os_log_error_impl(&dword_1C7694000, v114, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v115)
    {
      v116 = [MEMORY[0x1E696AF00] callStackSymbols];
      v117 = [v116 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v134 = v117;
      _os_log_error_impl(&dword_1C7694000, v114, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = MEMORY[0x1E69C07A8];
  v5 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  [v5 visibleFrame];
  v125 = v6;
  v127 = v7;
  v129 = v9;
  v131 = v8;
  v10 = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
  v11 = [v10 segmentationItem];
  v12 = [v11 regions];
  [v12 acceptableCropRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(_PIPosterInactiveFrameLayoutJob *)self layoutConfiguration];
  [v21 unsafeRect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  [v30 imageSize];
  [v4 computeInactiveAvoidingRectForVisibleRect:1 acceptableFrame:0 unsafeRect:v125 imageSize:v131 considerHeadroom:v129 newVisibleRect:{v127, v14, v16, v18, v20, v23, v25, v27, v29, v31, v32}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  [(_PIPosterInactiveFrameLayoutJob *)self setInactiveRect:v34, v36, v38, v40];
  v41 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  LOBYTE(v11) = [v41 isUsingHeadroom];
  v42 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  v43 = v42;
  if (v11)
  {
    [v42 extendedImageSize];
  }

  else
  {
    [v42 imageSize];
  }

  v46 = v44;
  v47 = v45;

  if ([(PFPosterOrientedLayout *)self->_layout layoutVariant]== 2)
  {
    v48 = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
    v49 = [v48 segmentationItem];
    v50 = [v49 regions];
    [v50 acceptableCropRect];
    v123 = v47;
    v124 = v46;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [v59 imageSize];
    v61 = v60;
    v62 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [v62 imageSize];
    v63 = v52 * v61 + 0.0;
    v65 = v54 * v64 + 0.0;
    v130 = v65;
    v132 = v63;
    v126 = v58 * v64;
    v128 = v56 * v61;

    v66 = MEMORY[0x1E69C07A8];
    v67 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [v67 visibleFrame];
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = [(_PIPosterInactiveFrameLayoutJob *)self layoutConfiguration];
    v77 = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
    v78 = [v77 segmentationItem];
    [v66 adaptiveFrameForVisibleFrame:v76 essentialRect:objc_msgSend(v78 originalImageSize:"classification") layoutConfiguration:v69 classification:v71 maxClockStretchOverride:{v73, v75, v63, v65, v128, v126, v124, v123, 0x3FF0000000000000}];

    v79 = MEMORY[0x1E69C07A8];
    [(PFPosterOrientedLayout *)self->_layout visibleFrame];
    [v79 topFrameForVisibleRect:? adaptiveRect:?];
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = MEMORY[0x1E69C07A8];
    v89 = [(_PIPosterInactiveFrameLayoutJob *)self layoutConfiguration];
    [v89 unsafeRect];
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v98 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [v98 imageSize];
    [v88 computeInactiveAvoidingRectForVisibleRect:0 acceptableFrame:0 unsafeRect:v81 imageSize:v83 considerHeadroom:v85 newVisibleRect:{v87, v132, v130, v128, v126, v91, v93, v95, v97, v99, v100}];
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;

    [(_PIPosterInactiveFrameLayoutJob *)self setAdaptiveInactiveRect:v102, v104, v106, v108];
  }

  return 1;
}

- (BOOL)render:(id *)a3
{
  v155 = *MEMORY[0x1E69E9840];
  v4 = [(NURenderJob *)self renderer:a3];
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

    v116 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v118 = NUAssertLogger_24860();
    v119 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v119)
      {
        v132 = dispatch_get_specific(*v116);
        v133 = MEMORY[0x1E696AF00];
        v134 = v132;
        v116 = [v133 callStackSymbols];
        v135 = [v116 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v132;
        *&buf[12] = 2114;
        *&buf[14] = v135;
        _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v119)
    {
      v120 = [MEMORY[0x1E696AF00] callStackSymbols];
      v116 = [v120 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v116;
      _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v124 = _NUAssertFailHandler();
    goto LABEL_28;
  }

  v5 = v4;
  v6 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  if (!v6)
  {
    v121 = NUAssertLogger_24860();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
      v122 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing poster layout"];
      *buf = 138543362;
      *&buf[4] = v122;
      _os_log_error_impl(&dword_1C7694000, v121, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v116 = MEMORY[0x1E69B38E8];
    v123 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v118 = NUAssertLogger_24860();
    v124 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
    if (!v123)
    {
      if (v124)
      {
        v125 = [MEMORY[0x1E696AF00] callStackSymbols];
        v116 = [v125 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v116;
        _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_30:

      v129 = _NUAssertFailHandler();
      goto LABEL_31;
    }

LABEL_28:
    if (v124)
    {
      v136 = dispatch_get_specific(*v116);
      v137 = MEMORY[0x1E696AF00];
      v138 = v136;
      v116 = [v137 callStackSymbols];
      v139 = [v116 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v136;
      *&buf[12] = 2114;
      *&buf[14] = v139;
      _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v7 = v6;
  v8 = [(_PIPosterInactiveFrameLayoutJob *)self matteImage];
  if (!v8)
  {
    v126 = NUAssertLogger_24860();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      v127 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing matte image"];
      *buf = 138543362;
      *&buf[4] = v127;
      _os_log_error_impl(&dword_1C7694000, v126, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v116 = MEMORY[0x1E69B38E8];
    v128 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v118 = NUAssertLogger_24860();
    v129 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
    if (!v128)
    {
      if (v129)
      {
        v130 = [MEMORY[0x1E696AF00] callStackSymbols];
        v131 = [v130 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v131;
        _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_33;
    }

LABEL_31:
    if (v129)
    {
      v140 = dispatch_get_specific(*v116);
      v141 = MEMORY[0x1E696AF00];
      v142 = v140;
      v143 = [v141 callStackSymbols];
      v144 = [v143 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v140;
      *&buf[12] = 2114;
      *&buf[14] = v144;
      _os_log_error_impl(&dword_1C7694000, v118, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_33:

    _NUAssertFailHandler();
  }

  v9 = v8;
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
  v19 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  [v19 visibleFrame];
  v21 = v17 * v20;
  v23 = v17 * v22;
  v25 = v17 * v24;
  v27 = v17 * v26;

  v28 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  [v28 imageSize];
  v30 = v29;
  v32 = v31;

  v33 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  [v33 visibleFrame];
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
  v43 = [(_PIPosterInactiveFrameLayoutJob *)self layoutConfiguration];
  v44 = [v5 context];
  [PISegmentationHelper computeInactiveFrameWithVisibleFrame:0 imageSize:!v38 canUpdateVisibleRect:v9 considerHeadroom:v43 segmentationMatte:v44 layoutConfiguration:v21 context:v23, v25, v27, v40, v42];

  [(_PIPosterInactiveFrameLayoutJob *)self setInactiveRect:v18 * 0.0, v18 * 0.0, v18 * 0.0, v18 * 0.0];
  v45 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  LOBYTE(v43) = [v45 isUsingHeadroom];
  v46 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
  v47 = v46;
  if (v43)
  {
    [v46 extendedImageSize];
  }

  else
  {
    [v46 imageSize];
  }

  v50 = v48;
  v51 = v49;

  if ([(PFPosterOrientedLayout *)self->_layout layoutVariant]== 2)
  {
    v52 = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
    v53 = [v52 segmentationItem];
    v54 = [v53 regions];
    [v54 acceptableCropRect];
    v145 = v51;
    v146 = v50;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [v63 imageSize];
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
    v71 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [v71 visibleFrame];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = [(_PIPosterInactiveFrameLayoutJob *)self layoutConfiguration];
    v81 = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
    v82 = [v81 segmentationItem];
    [v70 adaptiveFrameForVisibleFrame:v80 essentialRect:objc_msgSend(v82 originalImageSize:"classification") layoutConfiguration:v73 classification:v75 maxClockStretchOverride:{v77, v79, v67, v69, v148, v147, v146, v145, 0x3FF0000000000000}];

    v13 = v151;
    v83 = MEMORY[0x1E69C07A8];
    [(PFPosterOrientedLayout *)self->_layout visibleFrame];
    [v83 topFrameForVisibleRect:? adaptiveRect:?];
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = MEMORY[0x1E69C07A8];
    v93 = [(_PIPosterInactiveFrameLayoutJob *)self layoutConfiguration];
    [v93 unsafeRect];
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v102 = [(_PIPosterInactiveFrameLayoutJob *)self layout];
    [v102 imageSize];
    [v92 computeInactiveAvoidingRectForVisibleRect:0 acceptableFrame:0 unsafeRect:v85 imageSize:v87 considerHeadroom:v89 newVisibleRect:{v91, v150, v149, v148, v147, v95, v97, v99, v101, v103, v104}];
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;

    [(_PIPosterInactiveFrameLayoutJob *)self setAdaptiveInactiveRect:v106, v108, v110, v112];
  }

  return 1;
}

- (BOOL)prepare:(id *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = _PIPosterInactiveFrameLayoutJob;
  v4 = [(NURenderJob *)&v44 prepare:a3];
  if (!v4)
  {
    return v4;
  }

  v5 = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
  v6 = [v5 segmentationItem];

  if (!v6)
  {
    v22 = NUAssertLogger_24860();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing segmentation item"];
      *buf = 138543362;
      v46 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_24860();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v35 = dispatch_get_specific(*v24);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v24 = [v36 callStackSymbols];
        v38 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v35;
        v47 = 2114;
        v48 = v38;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v24;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v32 = _NUAssertFailHandler();
    goto LABEL_29;
  }

  v7 = [(_PIPosterInactiveFrameLayoutJob *)self layoutInactiveFrameRequest];
  v8 = [v7 layout];
  if (!v8)
  {
    v10 = [v6 originalLayout];
    v9 = [v10 portraitLayout];

    if (v9)
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

    v24 = MEMORY[0x1E69B38E8];
    v31 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_24860();
    v32 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!v31)
    {
      if (v32)
      {
        v33 = [MEMORY[0x1E696AF00] callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v46 = v34;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_31;
    }

LABEL_29:
    if (v32)
    {
      v39 = dispatch_get_specific(*v24);
      v40 = MEMORY[0x1E696AF00];
      v41 = v39;
      v42 = [v40 callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v46 = v39;
      v47 = 2114;
      v48 = v43;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_31:

    _NUAssertFailHandler();
  }

  v9 = v8;

LABEL_6:
  v11 = [v6 layoutConfiguration];
  v12 = [v11 portraitConfiguration];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [MEMORY[0x1E69C0938] deviceConfiguration];
    v14 = [v15 portraitConfiguration];
  }

  v16 = [v6 segmentationMatte];

  if (v16)
  {
    v17 = MEMORY[0x1E695F658];
    v18 = [v6 segmentationMatte];
    v19 = [v17 imageWithNUImageBuffer:v18];

    if (([v6 classification] - 3) <= 1)
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

  [(_PIPosterInactiveFrameLayoutJob *)self setLayout:v9];
  [(_PIPosterInactiveFrameLayoutJob *)self setLayoutConfiguration:v14];

  return v4;
}

- (id)scalePolicy
{
  v2 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:3048192];

  return v2;
}

- (BOOL)wantsCompleteStage
{
  v2 = [(_PIPosterInactiveFrameLayoutJob *)self matteImage];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)wantsRenderStage
{
  v2 = [(_PIPosterInactiveFrameLayoutJob *)self matteImage];
  v3 = v2 != 0;

  return v3;
}

- (_PIPosterInactiveFrameLayoutJob)initWithInactiveFrameLayoutRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = _PIPosterInactiveFrameLayoutJob;
  return [(NURenderJob *)&v4 initWithRequest:a3];
}

- (_PIPosterInactiveFrameLayoutJob)initWithRequest:(id)a3
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_24874);
  }
}

@end