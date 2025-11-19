@interface _PIParallaxInactiveStyleLearnJob
- (BOOL)complete:(id *)a3;
- (BOOL)render:(id *)a3;
- (CGRect)learnFrame;
- (id)result;
@end

@implementation _PIParallaxInactiveStyleLearnJob

- (CGRect)learnFrame
{
  x = self->_learnFrame.origin.x;
  y = self->_learnFrame.origin.y;
  width = self->_learnFrame.size.width;
  height = self->_learnFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)result
{
  v3 = [_PIParallaxInactiveStyleLearnResult alloc];
  v4 = [(_PIParallaxInactiveStyleLearnJob *)self styleData];
  [(_PIParallaxInactiveStyleLearnJob *)self learnFrame];
  v5 = [(_PIParallaxInactiveStyleLearnResult *)v3 initWithStyleData:v4 frame:?];

  return v5;
}

- (BOOL)complete:(id *)a3
{
  dispatch_group_wait(self->_learnGroup, 0xFFFFFFFFFFFFFFFFLL);
  v5 = [(_PIParallaxInactiveStyleLearnJob *)self styleData];

  if (!v5)
  {
    v6 = MEMORY[0x1E69B3A48];
    v7 = [(_PIParallaxInactiveStyleLearnJob *)self learnError];
    *a3 = [v6 errorWithCode:2 reason:@"Error learning inactive style" object:0 underlyingError:v7];
  }

  return v5 != 0;
}

- (BOOL)render:(id *)a3
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v57 = NUAssertLogger_18502();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error"];
      *buf = 138543362;
      v78 = v58;
      _os_log_error_impl(&dword_1C7694000, v57, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v59 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v61 = NUAssertLogger_18502();
    v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v62)
      {
        v65 = dispatch_get_specific(*v59);
        v66 = MEMORY[0x1E696AF00];
        v67 = v65;
        v68 = [v66 callStackSymbols];
        v69 = [v68 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v65;
        v79 = 2114;
        v80 = v69;
        _os_log_error_impl(&dword_1C7694000, v61, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v62)
    {
      v63 = [MEMORY[0x1E696AF00] callStackSymbols];
      v64 = [v63 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v64;
      _os_log_error_impl(&dword_1C7694000, v61, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(_PIParallaxInactiveStyleLearnJob *)self inactiveStyleLearnRequest];
  v6 = [v5 fromBuffer];
  v7 = [v5 toBuffer];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(NURenderJob *)self renderer:a3];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        v11 = [v10 context];
        v12 = [v10 device];
        v13 = [v10 commandQueue];
        v14 = v13;
        v75 = v12;
        if (v12 && v13)
        {
          v74 = v11;
          [v5 sourceFrame];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          [v5 targetFrame];
          v84.origin.x = v23;
          v84.origin.y = v24;
          v84.size.width = v25;
          v84.size.height = v26;
          v82.origin.x = v16;
          v82.origin.y = v18;
          v82.size.width = v20;
          v82.size.height = v22;
          v83 = CGRectIntersection(v82, v84);
          x = v83.origin.x;
          y = v83.origin.y;
          width = v83.size.width;
          height = v83.size.height;
          [v6 size];
          [v6 size];
          [v8 size];
          [v8 size];
          NURectNormalize();
          NURectDenormalize();
          v72 = y;
          v73 = x;
          v70 = height;
          v71 = width;
          NURectNormalize();
          NURectDenormalize();
          NUPixelRectFromCGRect();
          NUPixelRectToCGRect();
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;
          NUPixelRectFromCGRect();
          NUPixelRectToCGRect();
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v47 = [PIParallaxInactiveStyleEngine alloc];
          v48 = v12;
          v49 = v14;
          v50 = [(PIParallaxInactiveStyleEngine *)v47 initWithMetalDevice:v48 commandQueue:v14];
          v51 = [(PIParallaxInactiveStyleEngine *)v50 prepareForLearningWithImageSize:a3 error:v36, v38];
          if (v51)
          {
            v52 = dispatch_group_create();
            learnGroup = self->_learnGroup;
            self->_learnGroup = v52;

            dispatch_group_enter(self->_learnGroup);
            v54 = [v6 CVPixelBuffer];
            v55 = [v8 CVPixelBuffer];
            v76[0] = MEMORY[0x1E69E9820];
            v76[1] = 3221225472;
            v76[2] = __43___PIParallaxInactiveStyleLearnJob_render___block_invoke;
            v76[3] = &unk_1E82AB7A0;
            v76[4] = self;
            [(PIParallaxInactiveStyleEngine *)v50 learnStyleFromPixelBuffer:v54 rect:v55 toPixelBuffer:v76 rect:v32 completion:v34, v36, v38, v40, v42, v44, v46];
            self->_learnFrame.origin.x = v73;
            self->_learnFrame.origin.y = v72;
            self->_learnFrame.size.width = v71;
            self->_learnFrame.size.height = v70;
          }

          v11 = v74;
        }

        else
        {
          v49 = v13;
          [MEMORY[0x1E69B3A48] invalidError:@"Missing required Metal resources" object:v11];
          *a3 = LOBYTE(v51) = 0;
        }
      }

      else
      {
        [MEMORY[0x1E69B3A48] invalidError:@"Unexpected renderer class" object:v9];
        *a3 = LOBYTE(v51) = 0;
      }
    }

    else
    {
      LOBYTE(v51) = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] missingError:@"Missing required pixel buffers" object:v5];
    *a3 = LOBYTE(v51) = 0;
  }

  return v51;
}

@end