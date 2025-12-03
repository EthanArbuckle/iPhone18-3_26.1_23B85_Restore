@interface PICurvesLUTFilter
+ (id)curvePointsFromDictionaries:(id)dictionaries;
+ (id)tableImageFromRed:(const float *)red green:(const float *)green blue:(const float *)blue luminance:(const float *)luminance;
+ (vector<float,)calculateCurveTable:(id)table;
- (id)outputImage;
@end

@implementation PICurvesLUTFilter

- (id)outputImage
{
  inputPointsR = [(PICurvesLUTFilter *)self inputPointsR];
  v4 = [PICurvesLUTFilter curvePointsFromDictionaries:inputPointsR];

  inputPointsG = [(PICurvesLUTFilter *)self inputPointsG];
  v6 = [PICurvesLUTFilter curvePointsFromDictionaries:inputPointsG];

  inputPointsB = [(PICurvesLUTFilter *)self inputPointsB];
  v8 = [PICurvesLUTFilter curvePointsFromDictionaries:inputPointsB];

  inputPointsL = [(PICurvesLUTFilter *)self inputPointsL];
  v10 = [PICurvesLUTFilter curvePointsFromDictionaries:inputPointsL];

  [PICurvesLUTFilter calculateCurveTable:v4];
  [PICurvesLUTFilter calculateCurveTable:v6];
  [PICurvesLUTFilter calculateCurveTable:v8];
  [PICurvesLUTFilter calculateCurveTable:v10];
  v11 = [PICurvesLUTFilter tableImageFromRed:v16 green:v15 blue:v14 luminance:__p];
  if (__p)
  {
    operator delete(__p);
  }

  if (v14)
  {
    operator delete(v14);
  }

  if (v15)
  {
    operator delete(v15);
  }

  if (v16)
  {
    operator delete(v16);
  }

  return v11;
}

+ (id)tableImageFromRed:(const float *)red green:(const float *)green blue:(const float *)blue luminance:(const float *)luminance
{
  v62 = *MEMORY[0x1E69E9840];
  if (!red)
  {
    v18 = NUAssertLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tableR != nil"];
      LODWORD(srcA.data) = 138543362;
      *(&srcA.data + 4) = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &srcA, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v41 = dispatch_get_specific(*v20);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v43 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(srcA.data) = 138543618;
        *(&srcA.data + 4) = v41;
        WORD2(srcA.height) = 2114;
        *(&srcA.height + 6) = v43;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &srcA, 0x16u);
      }

      goto LABEL_39;
    }

    if (!v23)
    {
      goto LABEL_39;
    }

LABEL_27:
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v40 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    LODWORD(srcA.data) = 138543362;
    *(&srcA.data + 4) = v40;
    _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &srcA, 0xCu);

    goto LABEL_39;
  }

  if (!green)
  {
    v24 = NUAssertLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tableG != nil"];
      LODWORD(srcA.data) = 138543362;
      *(&srcA.data + 4) = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &srcA, 0xCu);
    }

    v26 = MEMORY[0x1E69B38E8];
    v27 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger();
    v28 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v28)
      {
        v44 = dispatch_get_specific(*v26);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v46 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        LODWORD(srcA.data) = 138543618;
        *(&srcA.data + 4) = v44;
        WORD2(srcA.height) = 2114;
        *(&srcA.height + 6) = v46;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &srcA, 0x16u);
      }

      goto LABEL_39;
    }

    if (!v28)
    {
      goto LABEL_39;
    }

    goto LABEL_27;
  }

  if (!blue)
  {
    v29 = NUAssertLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tableB != nil"];
      LODWORD(srcA.data) = 138543362;
      *(&srcA.data + 4) = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &srcA, 0xCu);
    }

    v31 = MEMORY[0x1E69B38E8];
    v32 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger();
    v33 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v33)
      {
        v47 = dispatch_get_specific(*v31);
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v49 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        LODWORD(srcA.data) = 138543618;
        *(&srcA.data + 4) = v47;
        WORD2(srcA.height) = 2114;
        *(&srcA.height + 6) = v49;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &srcA, 0x16u);
      }

      goto LABEL_39;
    }

    if (!v33)
    {
      goto LABEL_39;
    }

    goto LABEL_27;
  }

  if (!luminance)
  {
    v34 = NUAssertLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tableL != nil"];
      LODWORD(srcA.data) = 138543362;
      *(&srcA.data + 4) = v35;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &srcA, 0xCu);
    }

    v36 = MEMORY[0x1E69B38E8];
    v37 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger();
    v38 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!v37)
    {
      if (!v38)
      {
        goto LABEL_39;
      }

      goto LABEL_27;
    }

    if (v38)
    {
      v50 = dispatch_get_specific(*v36);
      callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      LODWORD(srcA.data) = 138543618;
      *(&srcA.data + 4) = v50;
      WORD2(srcA.height) = 2114;
      *(&srcA.height + 6) = v52;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &srcA, 0x16u);
    }

LABEL_39:

    _NUAssertFailHandler();
    __break(1u);
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:0x2000];
  *&srcA.height = xmmword_1C7845D90;
  srcA.data = red;
  srcA.rowBytes = 2048;
  *&srcR.height = xmmword_1C7845D90;
  srcG.rowBytes = 2048;
  srcR.data = green;
  srcR.rowBytes = 2048;
  srcB.rowBytes = 2048;
  srcG.data = blue;
  *&srcG.height = xmmword_1C7845D90;
  srcB.data = luminance;
  *&srcB.height = xmmword_1C7845D90;
  dest.data = [v10 mutableBytes];
  *&dest.height = xmmword_1C7845D90;
  dest.rowBytes = [v10 length];
  vImageConvert_PlanarFtoARGBFFFF(&srcA, &srcR, &srcG, &srcB, &dest, 0);
  v11 = *MEMORY[0x1E695F9B8];
  v59[0] = *MEMORY[0x1E695F9E8];
  v59[1] = v11;
  v60[0] = v10;
  v60[1] = MEMORY[0x1E695E110];
  v12 = *MEMORY[0x1E695F990];
  v59[2] = *MEMORY[0x1E695F9A0];
  v59[3] = v12;
  v60[2] = MEMORY[0x1E695E118];
  v60[3] = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:4];
  v14 = objc_alloc(MEMORY[0x1E695F658]);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __60__PICurvesLUTFilter_tableImageFromRed_green_blue_luminance___block_invoke;
  v53[3] = &unk_1E82AB818;
  v15 = v10;
  v54 = v15;
  v16 = [v14 initWithImageProvider:v53 width:512 height:1 format:*MEMORY[0x1E695F920] colorSpace:0 options:v13];

  return v16;
}

vImage_Error __60__PICurvesLUTFilter_tableImageFromRed_green_blue_luminance___block_invoke(uint64_t a1, void *a2, size_t a3)
{
  src.data = [*(a1 + 32) bytes];
  *&src.height = xmmword_1C7845DA0;
  src.rowBytes = [*(a1 + 32) length];
  dest.data = a2;
  *&dest.height = xmmword_1C7845DA0;
  dest.rowBytes = a3;
  return vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
}

+ (id)curvePointsFromDictionaries:(id)dictionaries
{
  v18 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dictionariesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [PICurveControlPoint alloc];
        v11 = [(PICurveControlPoint *)v10 initWithDictionary:v9, v13];
        [v4 addObject:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (vector<float,)calculateCurveTable:(id)table
{
  v5 = a4;
  v6 = [v5 count];
  if (v6 != 2)
  {
    if (!((v6 - 2) >> 61))
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;

  return result;
}

@end