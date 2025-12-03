@interface PIObjectRemoval
+ ($721907E0E1CDE8B6CD3FA271A8B25860)_tightImageSpaceBoundsForOperation:(SEL)operation composition:(id)composition error:(id)error;
+ (BOOL)_loadAndRegisterModelForKey:(id)key error:(id *)error;
+ (BOOL)_operationIsBrushStroke:(id)stroke;
+ (BOOL)brushStrokeExceedsSizeLimit:(id)limit imageSize:(CGSize)size closeAndFillStroke:(BOOL)stroke;
+ (BOOL)loadAndRegisterModelForKey:(id)key error:(id *)error;
+ (BOOL)mask:(id)mask containsPoint:(CGPoint)point;
+ (BOOL)mask:(id)mask intersectsDiskWithOrigin:(CGPoint)origin radius:(double)radius;
+ (BOOL)maskIsMostlyWithinFace:(id)face imageSize:(id)size imageOrientation:(int64_t)orientation intAreaOverMaskAreaThreshold:(double)threshold intAreaOverFaceAreaThreshold:(double)areaThreshold detectedFaces:(id)faces;
+ (BOOL)objectMasksExceedSizeLimit:(id)limit imageSize:(CGSize)size;
+ (BOOL)strokeIsEntirelyWithinFace:(id)face imageSize:(id)size imageOrientation:(int64_t)orientation detectedFaces:(id)faces;
+ (CGRect)inflatedFaceRect:(CGRect)result imageOrientation:(int64_t)orientation;
+ (id)_instancesForOperation:(id)operation;
+ (id)_instancesFromMaskIdentifier:(id)identifier;
+ (id)_maskSourceWithIdentifier:(id)identifier composition:(id)composition;
+ (id)_newMaskForInstance:(unint64_t)instance context:(id)context maskIdentifier:(id)identifier error:(id *)error;
+ (id)_newMaskForInstances:(id)instances context:(id)context maskIdentifier:(id)identifier error:(id *)error;
+ (id)_newMaskImageForOperation:(id)operation composition:(id)composition error:(id *)error;
+ (id)_nonInstancedOperationsFromComposition:(id)composition;
+ (id)createMaskForInstance:(unint64_t)instance context:(id)context maskIdentifierPrefix:(id)prefix error:(id *)error;
+ (id)maskIdentifierForSegmentIndex:(unint64_t)index;
+ (id)maskIdentifierForSegmentIndices:(id)indices;
+ (id)removeGatedInstances:(id)instances context:(id)context;
+ (id)removeInstancesOccludedByOperations:(id)operations fromInstances:(id)instances composition:(id)composition maskContext:(id)context;
+ (id)removeOperationsFromInstances:(id)instances composition:(id)composition context:(id)context;
+ (void)_warmUpOperation:(id)operation context:(id)context;
+ (void)createAvailableObjectsMaskForContext:(id)context composition:(id)composition completion:(id)completion;
+ (void)createDeclutterMaskForContext:(id)context composition:(id)composition completion:(id)completion;
+ (void)createMaskContextForComposition:(id)composition requestID:(id)d completionQueue:(id)queue completion:(id)completion;
+ (void)createSubjectMaskForContext:(id)context composition:(id)composition completion:(id)completion;
+ (void)initialize;
+ (void)updateMaskContext:(id)context forComposition:(id)composition requestID:(id)d completionQueue:(id)queue completion:(id)completion;
+ (void)warmUpResources;
@end

@implementation PIObjectRemoval

+ (BOOL)brushStrokeExceedsSizeLimit:(id)limit imageSize:(CGSize)size closeAndFillStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  height = size.height;
  width = size.width;
  v59 = *MEMORY[0x1E69E9840];
  limitCopy = limit;
  if (width == 0.0 || height == 0.0 || (width == *MEMORY[0x1E69BDDB0] ? (v13 = height == *(MEMORY[0x1E69BDDB0] + 8)) : (v13 = 0), v13))
  {
    v40 = NUAssertLogger_13001();
    v28 = "PFSizeIsEmpty(imageSize) == NO";
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "PFSizeIsEmpty(imageSize) == NO"];
      *v58 = 138543362;
      *&v58[4] = v41;
      _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v58, 0xCu);
    }

    v42 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_13001();
    v44 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v44)
      {
        v47 = dispatch_get_specific(*v42);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        callStackSymbols = [v48 callStackSymbols];
        v5 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v58 = 138543618;
        *&v58[4] = v47;
        *&v58[12] = 2114;
        *&v58[14] = v5;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v58, 0x16u);
      }
    }

    else if (v44)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v58 = 138543362;
      *&v58[4] = v46;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v58, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_35:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
    goto LABEL_15;
  }

  v14 = limitCopy;
  v15 = +[PIGlobalSettings globalSettings];
  [v15 inpaintMaxAreaPercentage];
  v17 = v16;

  memset(v58, 0, sizeof(v58));
  if (v14)
  {
    [v14 extent];
    v18 = (*&v58[24] * *&v58[16]);
  }

  else
  {
    v18 = 0.0;
  }

  if (v18 / (width * height) <= v17)
  {
    goto LABEL_25;
  }

  v19 = [v14 ciImageTiled:0 closed:1 pressureMode:2 filled:strokeCopy];
  v20 = MEMORY[0x1E695F658];
  blackColor = [MEMORY[0x1E695F610] blackColor];
  v22 = [v20 imageWithColor:blackColor];

  v52 = v22;
  v53 = v19;
  v23 = [v19 imageByCompositingOverImage:v22];
  v24 = [v23 imageByCroppingToRect:{0.0, 0.0, width, height}];

  v25 = MEMORY[0x1E69B3D40];
  v26 = NUPixelSizeFromCGSize();
  v5 = [v25 newPixelBufferOfSize:v26 format:{v27, 1278226488}];
  v28 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{objc_msgSend(v5, "CVPixelBuffer")}];
  v6 = objc_alloc_init(MEMORY[0x1E695F620]);
  v55 = 0;
  v7 = [v6 startTaskToRender:v24 toDestination:v28 error:&v55];
  v29 = v55;
  v8 = v29;
  v51 = v24;
  if (v7)
  {
    v54 = v29;
    v30 = [v7 waitUntilCompletedAndReturnError:&v54];
    v31 = v54;

    v32 = v30 != 0;
    if (v30)
    {
      v33 = [MEMORY[0x1E69B3B68] propertiesForMask:v5 context:v6];
      [v33 density];
      v35 = v34 <= v17;
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
      }

      v38 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v57 = v31;
        _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "Cleanup: Failed to render stroke mask, error: %{public}@", buf, 0xCu);
      }

      v35 = 0;
    }

    v37 = v53;

    goto LABEL_24;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_35;
  }

LABEL_15:
  v36 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v57 = v8;
    _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Cleanup: Failed to start rendering stroke mask, error: %{public}@", buf, 0xCu);
  }

  v35 = 0;
  v32 = 0;
  v31 = v8;
  v37 = v53;
LABEL_24:

  if (v35)
  {
LABEL_25:
    v32 = 0;
  }

  return v32;
}

+ (BOOL)objectMasksExceedSizeLimit:(id)limit imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v66 = *MEMORY[0x1E69E9840];
  limitCopy = limit;
  if (width == 0.0 || height == 0.0 || (width == *MEMORY[0x1E69BDDB0] ? (v7 = height == *(MEMORY[0x1E69BDDB0] + 8)) : (v7 = 0), v7))
  {
    v34 = NUAssertLogger_13001();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "PFSizeIsEmpty(imageSize) == NO"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v38 = NUAssertLogger_13001();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v39)
      {
        v42 = dispatch_get_specific(*v36);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        callStackSymbols = [v43 callStackSymbols];
        v46 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v42;
        *&buf[12] = 2114;
        *&buf[14] = v46;
        _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v8 = limitCopy;
  v9 = +[PIGlobalSettings globalSettings];
  [v9 inpaintMaxAreaPercentage];
  v11 = v10;

  v12 = *MEMORY[0x1E69B3908];
  v13 = *(MEMORY[0x1E69B3908] + 16);
  v14 = *(MEMORY[0x1E69B3908] + 24);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = v12;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v59;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v59 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v58 + 1) + 8 * i);
        memset(buf, 0, 32);
        if (v20)
        {
          [v20 extent];
        }

        else
        {
          v56 = 0uLL;
          v57 = 0uLL;
        }

        [v20 scale];
        NUPixelRectScaleRational();
        v54 = v13;
        v55 = v14;
        v51 = *buf;
        v52 = *&buf[16];
        v53 = v62;
        NUPixelRectUnion();
        v62 = v56;
        v14 = *(&v57 + 1);
        v13 = v57;
      }

      v17 = [v15 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v17);
  }

  if ((v13 * v14) / (width * height) <= v11)
  {
    goto LABEL_28;
  }

  context = [MEMORY[0x1E695F620] context];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v22 = v15;
  v23 = [v22 countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v48;
    v26 = 0.0;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v28 = MEMORY[0x1E69B3B68];
        buffer = [*(*(&v47 + 1) + 8 * j) buffer];
        v30 = [v28 propertiesForMask:buffer context:context];

        [v30 density];
        v26 = v26 + v31;
      }

      v24 = [v22 countByEnumeratingWithState:&v47 objects:v63 count:16];
    }

    while (v24);
  }

  else
  {
    v26 = 0.0;
  }

  if (v26 > v11)
  {
    v32 = 1;
  }

  else
  {
LABEL_28:
    v32 = 0;
  }

  return v32;
}

+ (CGRect)inflatedFaceRect:(CGRect)result imageOrientation:(int64_t)orientation
{
  if (orientation <= 8)
  {
    if (((1 << orientation) & 0x18) != 0)
    {
      result.origin.y = result.origin.y - (result.size.height * 1.33 - result.size.height);
      result.size.height = result.size.height * 1.33;
      return result;
    }

    if (((1 << orientation) & 0x60) != 0)
    {
      result.origin.x = result.origin.x - (result.size.width * 1.33 - result.size.width);
      result.size.width = result.size.width * 1.33;
      return result;
    }

    if (((1 << orientation) & 0x180) != 0)
    {
      result.size.width = result.size.width * 1.33;
      return result;
    }
  }

  if ((orientation - 1) < 2)
  {
    result.size.height = result.size.height * 1.33;
  }

  return result;
}

+ (BOOL)strokeIsEntirelyWithinFace:(id)face imageSize:(id)size imageOrientation:(int64_t)orientation detectedFaces:(id)faces
{
  v33 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  facesCopy = faces;
  if (faceCopy)
  {
    [faceCopy extent];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  NUPixelRectToCGRect();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = facesCopy;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v26 + 1) + 8 * i) boundingBox];
        [self inflatedFaceRect:orientation imageOrientation:?];
        NURectDenormalize();
        v35.origin.x = v12;
        v35.origin.y = v14;
        v35.size.width = v16;
        v35.size.height = v18;
        if (CGRectContainsRect(v34, v35))
        {
          v24 = 1;
          goto LABEL_14;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_14:

  return v24;
}

+ (BOOL)maskIsMostlyWithinFace:(id)face imageSize:(id)size imageOrientation:(int64_t)orientation intAreaOverMaskAreaThreshold:(double)threshold intAreaOverFaceAreaThreshold:(double)areaThreshold detectedFaces:(id)faces
{
  var1 = size.var1;
  var0 = size.var0;
  v139 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  facesCopy = faces;
  if (NUPixelSizeIsEmpty())
  {
    v77 = NUAssertLogger_13001();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUPixelSizeIsEmpty(imageSize) == NO"];
      *buf = 138543362;
      *&buf[4] = v78;
      _os_log_error_impl(&dword_1C7694000, v77, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v79 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v81 = NUAssertLogger_13001();
    v82 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v82)
      {
        v90 = dispatch_get_specific(*v79);
        v91 = MEMORY[0x1E696AF00];
        v92 = v90;
        callStackSymbols = [v91 callStackSymbols];
        v94 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v90;
        *&buf[12] = 2114;
        *&buf[14] = v94;
        _os_log_error_impl(&dword_1C7694000, v81, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v82)
    {
LABEL_69:
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v89 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v89;
      _os_log_error_impl(&dword_1C7694000, v81, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_75:

    _NUAssertFailHandler();
    __break(1u);
  }

  [faceCopy extent];
  if (CGRectIsEmpty(v142))
  {
    v83 = NUAssertLogger_13001();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CGRectIsEmpty(strokeMask.extent) == NO"];
      *buf = 138543362;
      *&buf[4] = v84;
      _os_log_error_impl(&dword_1C7694000, v83, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v85 = MEMORY[0x1E69B38E8];
    v86 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v81 = NUAssertLogger_13001();
    v87 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
    if (!v86)
    {
      if (!v87)
      {
        goto LABEL_75;
      }

      goto LABEL_69;
    }

    if (v87)
    {
      v95 = dispatch_get_specific(*v85);
      v96 = MEMORY[0x1E696AF00];
      v97 = v95;
      callStackSymbols3 = [v96 callStackSymbols];
      v99 = [callStackSymbols3 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v95;
      *&buf[12] = 2114;
      *&buf[14] = v99;
      _os_log_error_impl(&dword_1C7694000, v81, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_75;
  }

  [faceCopy extent];
  if (v17 == 0.0 || v18 == 0.0 || (v18 == *(MEMORY[0x1E69BDDB0] + 8) ? (v19 = v17 == *MEMORY[0x1E69BDDB0]) : (v19 = 0), v19))
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v17 * v18;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v136 = __Block_byref_object_copy__13039;
  v137 = __Block_byref_object_dispose__13040;
  v138 = 0;
  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = __141__PIObjectRemoval_maskIsMostlyWithinFace_imageSize_imageOrientation_intAreaOverMaskAreaThreshold_intAreaOverFaceAreaThreshold_detectedFaces___block_invoke;
  v123[3] = &unk_1E82AB030;
  selfCopy = self;
  orientationCopy = orientation;
  v128 = v20;
  thresholdCopy = threshold;
  v105 = faceCopy;
  v124 = v105;
  v125 = buf;
  areaThresholdCopy = areaThreshold;
  v21 = MEMORY[0x1CCA61740](v123);
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = facesCopy;
  v22 = [obj countByEnumeratingWithState:&v119 objects:v134 count:16];
  if (v22)
  {
    v114 = 0;
    v111 = var1;
    v112 = var0;
    v107 = v22;
    v108 = *v120;
    while (2)
    {
      for (i = 0; i != v107; ++i)
      {
        if (*v120 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v119 + 1) + 8 * i);
        [v23 boundingBox];
        NURectDenormalize();
        if (v21[2](v21, v114, 1))
        {
          v75 = 1;
          goto LABEL_59;
        }

        landmarks = [v23 landmarks];
        v25 = +[PIGlobalSettings globalSettings];
        inpaintApplySafetyFilterOnFaceLandmarks = [v25 inpaintApplySafetyFilterOnFaceLandmarks];
        v109 = landmarks;
        if (landmarks)
        {
          v27 = inpaintApplySafetyFilterOnFaceLandmarks;
        }

        else
        {
          v27 = 0;
        }

        if (v27)
        {
          v132[0] = @"leftEye";
          leftEye = [v109 leftEye];
          v132[1] = @"rightEye";
          v133[0] = leftEye;
          rightEye = [v109 rightEye];
          v133[1] = rightEye;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:v132 count:2];

          v31 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v30, "count")}];
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v32 = v30;
          v33 = [v32 countByEnumeratingWithState:&v115 objects:v131 count:16];
          v113 = v31;
          if (v33)
          {
            v34 = *v116;
            while (2)
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v116 != v34)
                {
                  objc_enumerationMutation(v32);
                }

                v36 = *(*(&v115 + 1) + 8 * j);
                v37 = [v32 objectForKeyedSubscript:v36];
                v38 = v37;
                if (v37)
                {
                  v39 = v37;
                  v40 = 0;
                  v41 = ([v38 pointsInImageOfSize:{v112, v111}] + 8);
                  v42 = 1.79769313e308;
                  v43 = 2.22507386e-308;
                  v44 = 2.22507386e-308;
                  v45 = 1.79769313e308;
                  while (v40 < [v38 pointCount])
                  {
                    v46 = *(v41 - 1);
                    v47 = *v41;
                    if (v45 >= v46)
                    {
                      v45 = *(v41 - 1);
                    }

                    if (v44 < v46)
                    {
                      v44 = *(v41 - 1);
                    }

                    if (v42 >= v47)
                    {
                      v42 = *v41;
                    }

                    if (v43 < v47)
                    {
                      v43 = *v41;
                    }

                    ++v40;
                    v41 += 2;
                  }

                  v48 = v44 - v45;
                  v49 = v43 - v42;
                  v50 = [MEMORY[0x1E696B098] nu_valueWithCGRect:{v45, v42, v48, v49}];
                  [v113 setObject:v50 forKeyedSubscript:v36];

                  if ((v21[2])(v21, v114, 0, v45, v42, v48, v49) & 1) != 0 || (v48 >= v49 ? (v51 = v48) : (v51 = v49), v143.origin.x = v45, v143.origin.y = v42, v143.size.width = v48, v143.size.height = v49, MidX = CGRectGetMidX(v143), v144.origin.x = v45, v144.origin.y = v42, v144.size.width = v48, v144.size.height = v49, MidY = CGRectGetMidY(v144), ((v21[2])(v21, v114, 0, MidX - v51 * 0.5, MidY - v51 * 0.5, v51, v51)))
                  {

                    v54 = 1;
                    goto LABEL_47;
                  }
                }
              }

              v33 = [v32 countByEnumeratingWithState:&v115 objects:v131 count:16];
              if (v33)
              {
                continue;
              }

              break;
            }
          }

          v54 = 0;
LABEL_47:

          v55 = [v113 objectForKeyedSubscript:@"leftEye"];
          v56 = [v113 objectForKeyedSubscript:@"rightEye"];
          v57 = v56;
          if (v55 && v56 && ([v55 nu_CGRect], v103 = v59, v104 = v58, v101 = v61, v102 = v60, objc_msgSend(v57, "nu_CGRect"), r2 = v62, v64 = v63, v66 = v65, v68 = v67, v145.origin.x = v104, v145.origin.y = v103, v145.size.width = v102, v145.size.height = v101, v69 = CGRectGetMidX(v145), v146.origin.x = v104, v146.origin.y = v103, v146.size.width = v102, v146.size.height = v101, v70 = CGRectGetMidY(v146), v147.origin.x = v64, v147.origin.y = v66, v147.size.width = r2, v147.size.height = v68, v71 = CGRectGetMidX(v147), v148.origin.x = v64, v148.origin.y = v66, v148.size.width = r2, v148.size.height = v68, v72 = CGRectGetMidY(v148), objc_msgSend(v105, "extent"), v140.x = v69, v140.y = v70, v73 = CGRectContainsPoint(v149, v140), objc_msgSend(v105, "extent"), v141.x = v71, v141.y = v72, (v73 & CGRectContainsPoint(v150, v141)) == 1) && (v151.origin.y = v103, v151.origin.x = v104, v151.size.height = v101, v151.size.width = v102, v153.origin.x = v64, v153.origin.y = v66, v153.size.width = r2, v153.size.height = v68, v152 = CGRectUnion(v151, v153), ((v21[2])(v21, v114, 0, v152.origin, *&v152.origin.y, v152.size, *&v152.size.height) & 1) != 0))
          {
            v74 = 1;
            v54 = 1;
          }

          else
          {
            v74 = 0;
          }

          if ((v74 | v54) == 1)
          {

            v75 = v54 | v74 ^ 1;
            goto LABEL_59;
          }
        }

        ++v114;
      }

      v107 = [obj countByEnumeratingWithState:&v119 objects:v134 count:16];
      if (v107)
      {
        continue;
      }

      break;
    }
  }

  v75 = 0;
LABEL_59:

  _Block_object_dispose(buf, 8);
  return v75;
}

BOOL __141__PIObjectRemoval_maskIsMostlyWithinFace_imageSize_imageOrientation_intAreaOverMaskAreaThreshold_intAreaOverFaceAreaThreshold_detectedFaces___block_invoke(uint64_t a1, uint64_t a2, int a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v52 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [*(a1 + 48) inflatedFaceRect:*(a1 + 56) imageOrientation:{a4, a5, a6, a7}];
    v11 = v13;
    v10 = v14;
    v9 = v15;
    v8 = v16;
  }

  [*(a1 + 32) extent];
  v55.origin.x = v17;
  v55.origin.y = v18;
  v55.size.width = v19;
  v55.size.height = v20;
  v53.origin.x = v11;
  v53.origin.y = v10;
  v53.size.width = v9;
  v53.size.height = v8;
  v54 = CGRectIntersection(v53, v55);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  if (v54.size.width == 0.0 || v54.size.height == 0.0 || (v54.size.height == *(MEMORY[0x1E69BDDB0] + 8) ? (v25 = v54.size.width == *MEMORY[0x1E69BDDB0]) : (v25 = 0), v25))
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v54.size.width * v54.size.height;
  }

  if (v9 == 0.0 || v8 == 0.0 || (v8 == *(MEMORY[0x1E69BDDB0] + 8) ? (v27 = v9 == *MEMORY[0x1E69BDDB0]) : (v27 = 0), v27))
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v9 * v8;
  }

  v29 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
  }

  v30 = MEMORY[0x1E69B3D80];
  v31 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    v44 = *(a1 + 64);
    v46 = 134218240;
    v47 = a2;
    v48 = 2048;
    v49 = v44;
    _os_log_debug_impl(&dword_1C7694000, v31, OS_LOG_TYPE_DEBUG, "Pixellation[%lu] maskBBoxArea        : %.2f", &v46, 0x16u);
    if (*v29 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
    }
  }

  v32 = *v30;
  if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
  {
    v46 = 134218240;
    v47 = a2;
    v48 = 2048;
    v49 = v26;
    _os_log_debug_impl(&dword_1C7694000, v32, OS_LOG_TYPE_DEBUG, "Pixellation[%lu] intersectionBBoxArea: %.2f", &v46, 0x16u);
    if (*v29 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
    }
  }

  v33 = *v30;
  if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
  {
    v46 = 134218240;
    v47 = a2;
    v48 = 2048;
    v49 = v28;
    _os_log_debug_impl(&dword_1C7694000, v33, OS_LOG_TYPE_DEBUG, "Pixellation[%lu] roiBBoxArea        : %.2f", &v46, 0x16u);
  }

  v34 = v26 / *(a1 + 64);
  if (v34 < *(a1 + 72))
  {
    return 0;
  }

  if (*v29 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
  }

  v36 = *v30;
  if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
  {
    v45 = *(a1 + 72);
    v46 = 134218496;
    v47 = a2;
    v48 = 2048;
    v49 = v34;
    v50 = 2048;
    v51 = v45;
    _os_log_debug_impl(&dword_1C7694000, v36, OS_LOG_TYPE_DEBUG, "Pixellation[%lu] intersectionBBoxArea / maskBBoxArea of %.2f exceeds threshold of %.2f", &v46, 0x20u);
  }

  v37 = v26 / v28;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v38 = [MEMORY[0x1E695F620] context];
    v39 = *(*(a1 + 40) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v38;
  }

  v41 = [*(a1 + 32) imageByCroppingToRect:{x, y, width, height}];
  [MEMORY[0x1E69B3B68] densityForMask:v41 context:*(*(*(a1 + 40) + 8) + 40)];
  v35 = v37 * v42 >= *(a1 + 80);

  return v35;
}

+ (BOOL)mask:(id)mask intersectsDiskWithOrigin:(CGPoint)origin radius:(double)radius
{
  y = origin.y;
  x = origin.x;
  v65 = *MEMORY[0x1E69E9840];
  maskCopy = mask;
  v10 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
  }

  v11 = MEMORY[0x1E69B3D80];
  v12 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if (maskCopy)
    {
      [maskCopy extent];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    NSStringFromNUPixelRect();
    v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 134218754;
    *&buf[4] = x;
    *&buf[12] = 2048;
    *&buf[14] = y;
    *&buf[22] = 2048;
    *&buf[24] = radius;
    v63 = 2112;
    v64 = v13;
    _os_log_impl(&dword_1C7694000, v12, OS_LOG_TYPE_INFO, "Cleanup: exclusion mask disk sampling with origin (%.1f, %.1f) and radius %.1f in mask extent: %@", buf, 0x2Au);
  }

  if (radius <= 0.5)
  {
    if (*v10 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
    }

    v14 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v15 = "Cleanup: exclusion mask disk sampling with radius <= 0.5, so falling back to point-in-mask test";
      goto LABEL_25;
    }

LABEL_26:
    v22 = [self mask:maskCopy containsPoint:{x, y}];
    goto LABEL_32;
  }

  NUPixelRectFromCGRect();
  if (maskCopy)
  {
    [maskCopy extent];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  if ((NUPixelRectIntersectsRect() & 1) == 0)
  {
    if (*v10 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
    }

    v23 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      memset(buf, 0, sizeof(buf));
      v24 = v23;
      v25 = NSStringFromNUPixelRect();
      *buf = 138412290;
      *&buf[4] = v25;
      _os_log_impl(&dword_1C7694000, v24, OS_LOG_TYPE_INFO, "Cleanup: exclusion mask disk sampling rect rejection with diskRect: %@ ", buf, 0xCu);
    }

    goto LABEL_31;
  }

  buffer = [maskCopy buffer];
  cVPixelBuffer = [buffer CVPixelBuffer];

  PixelFormatType = CVPixelBufferGetPixelFormatType(cVPixelBuffer);
  v19 = PixelFormatType;
  if (PixelFormatType != 1278226488 && PixelFormatType != 1278226534)
  {
    v42 = NUAssertLogger_13001();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = MEMORY[0x1E696AEC0];
      v44 = [MEMORY[0x1E69C0708] stringFromFourCharCode:v19];
      v45 = [v43 stringWithFormat:@"Cleanup: checking exclusion masks, and mask pixel buffers are not of the type we expect (got %@)", v44];
      *buf = 138543362;
      *&buf[4] = v45;
      _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v46 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v48 = NUAssertLogger_13001();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v49)
      {
        v52 = dispatch_get_specific(*v46);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols = [v53 callStackSymbols];
        v56 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v52;
        *&buf[12] = 2114;
        *&buf[14] = v56;
        _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v51;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    [MEMORY[0x1E69C0708] stringFromFourCharCode:v19];
    objc_claimAutoreleasedReturnValue();
    v57 = _NUAssertFailHandler();
    return [(PIObjectRemoval *)v57 mask:v58 containsPoint:v59, v66];
  }

  CVPixelBufferLockBaseAddress(cVPixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(cVPixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(cVPixelBuffer);
  if (radius < 0.0)
  {
    CVPixelBufferUnlockBaseAddress(cVPixelBuffer, 1uLL);
    goto LABEL_21;
  }

  v27 = BytesPerRow;
  selfCopy = self;
  v61 = y;
  v28 = 0;
  v29 = -radius;
  while (1)
  {
    v30 = 0.0;
    v31 = 1.0;
    if (radius >= 5.0)
    {
      v30 = 1.0;
      if ((vcvtmd_s64_f64(v29) & 1) == 0)
      {
        v30 = 0.0;
      }

      v31 = 2.0;
    }

    v32 = v30 - radius;
    if (v30 - radius <= radius)
    {
      break;
    }

LABEL_55:
    v29 = v29 + 1.0;
    if (v29 > radius)
    {
      CVPixelBufferUnlockBaseAddress(cVPixelBuffer, 1uLL);
      y = v61;
      self = selfCopy;
      v11 = MEMORY[0x1E69B3D80];
      v10 = MEMORY[0x1E69B3D78];
      if (v28)
      {
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
        }

        v40 = *v11;
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C7694000, v40, OS_LOG_TYPE_INFO, "Cleanup: exclusion mask disk sampling found no intersection", buf, 2u);
        }

LABEL_31:
        v22 = 0;
        goto LABEL_32;
      }

LABEL_21:
      if (*v10 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
      }

      v14 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v15 = "Cleanup: exclusion mask disk sampling tested no points, so falling back to point-in-mask test";
LABEL_25:
        _os_log_impl(&dword_1C7694000, v14, OS_LOG_TYPE_INFO, v15, buf, 2u);
      }

      goto LABEL_26;
    }
  }

  v33 = vcvtmd_s64_f64(v61 + v29);
  while (1)
  {
    v34 = v29 * v29 + v32 * v32;
    if (radius > 2.0 && v34 > radius * radius)
    {
      goto LABEL_54;
    }

    if (maskCopy)
    {
      [maskCopy extent];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v36 = vcvtmd_s64_f64(x + v32);
    if (!NUPixelPointInRect())
    {
      goto LABEL_54;
    }

    v37 = BaseAddress + (CVPixelBufferGetHeight(cVPixelBuffer) + ~v33) * v27;
    if (v19 == 1278226488)
    {
      break;
    }

    if (v19 == 1278226534)
    {
      v39 = *(v37 + 4 * v36);
      goto LABEL_52;
    }

LABEL_53:
    v28 = 1;
LABEL_54:
    v32 = v31 + v32;
    if (v32 > radius)
    {
      goto LABEL_55;
    }
  }

  LOBYTE(v38) = *(v37 + v36);
  v39 = v38 / 255.0;
LABEL_52:
  if (v39 < 0.5)
  {
    goto LABEL_53;
  }

  CVPixelBufferUnlockBaseAddress(cVPixelBuffer, 1uLL);
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
  }

  v41 = *MEMORY[0x1E69B3D80];
  v22 = 1;
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
  {
    *buf = 134218752;
    *&buf[4] = vcvtmd_s64_f64(v32);
    *&buf[12] = 2048;
    *&buf[14] = vcvtmd_s64_f64(v29);
    *&buf[22] = 2048;
    *&buf[24] = v36;
    v63 = 2048;
    v64 = v33;
    _os_log_impl(&dword_1C7694000, v41, OS_LOG_TYPE_INFO, "Cleanup: exclusion mask disk sampling found intersection at [%ld, %ld]: (%.1f, %.1f)", buf, 0x2Au);
  }

LABEL_32:

  return v22;
}

+ (BOOL)mask:(id)mask containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v37 = *MEMORY[0x1E69E9840];
  maskCopy = mask;
  NUPixelPointFromCGPoint();
  if (maskCopy)
  {
    [maskCopy extent];
  }

  else
  {
    memset(buf, 0, 32);
  }

  if (!NUPixelPointInRect())
  {
    v15 = 0;
LABEL_15:

    return v15;
  }

  buffer = [maskCopy buffer];
  cVPixelBuffer = [buffer CVPixelBuffer];

  PixelFormatType = CVPixelBufferGetPixelFormatType(cVPixelBuffer);
  CVPixelBufferLockBaseAddress(cVPixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(cVPixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(cVPixelBuffer);
  v12 = BaseAddress + (CVPixelBufferGetHeight(cVPixelBuffer) + ~vcvtmd_u64_f64(y)) * BytesPerRow;
  if (PixelFormatType == 1278226488)
  {
    LOBYTE(v13) = *(v12 + vcvtmd_s64_f64(x));
    v14 = v13 / 255.0;
    goto LABEL_10;
  }

  if (PixelFormatType == 1278226534)
  {
    v14 = *(v12 + 4 * vcvtmd_s64_f64(x));
LABEL_10:
    CVPixelBufferUnlockBaseAddress(cVPixelBuffer, 1uLL);
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
    }

    v16 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      *&buf[4] = x;
      *&buf[12] = 2048;
      *&buf[14] = y;
      *&buf[22] = 2048;
      *&buf[24] = v14;
      _os_log_impl(&dword_1C7694000, v16, OS_LOG_TYPE_INFO, "Cleanup: exclusion mask sampling at (%.1f, %.1f) - mask value: %f", buf, 0x20u);
    }

    v15 = v14 >= 0.5;
    goto LABEL_15;
  }

  v18 = NUAssertLogger_13001();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E69C0708] stringFromFourCharCode:PixelFormatType];
    v21 = [v19 stringWithFormat:@"Cleanup: checking exclusion masks, and mask pixel buffers are not of the type we expect (got %@)", v20];
    *buf = 138543362;
    *&buf[4] = v21;
    _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v22 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v24 = NUAssertLogger_13001();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v25)
    {
      v28 = dispatch_get_specific(*v22);
      v29 = MEMORY[0x1E696AF00];
      v30 = v28;
      callStackSymbols = [v29 callStackSymbols];
      v32 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v32;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v25)
  {
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    *&buf[4] = v27;
    _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E69C0708] stringFromFourCharCode:PixelFormatType];
  objc_claimAutoreleasedReturnValue();
  v33 = _NUAssertFailHandler();
  return [(PIObjectRemoval *)v33 _instancesFromMaskIdentifier:v34, v35];
}

+ (id)_instancesFromMaskIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  indexSet = [MEMORY[0x1E696AC90] indexSet];
  v5 = [identifierCopy rangeOfString:@"instances:"];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [identifierCopy substringFromIndex:v5 + v6];
    v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"[]"];
    v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
    v20 = v7;
    v10 = [v7 stringByTrimmingCharactersInSet:v8];
    v11 = [v10 componentsSeparatedByCharactersInSet:v9];
    v12 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v12 addIndex:{objc_msgSend(*(*(&v21 + 1) + 8 * i), "integerValue")}];
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    v18 = [v12 copy];
    indexSet = v18;
  }

  return indexSet;
}

+ (id)maskIdentifierForSegmentIndex:(unint64_t)index
{
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:index];
  v5 = [self maskIdentifierForSegmentIndices:v4];

  return v5;
}

+ (id)maskIdentifierForSegmentIndices:(id)indices
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = PIStringFromIndexSet(indices);
  v5 = [v3 stringWithFormat:@"groupSelect-instances:%@", v4];

  return v5;
}

+ (void)createSubjectMaskForContext:(id)context composition:(id)composition completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  subjectMask = [contextCopy subjectMask];

  if (subjectMask)
  {
    subjectMask2 = [contextCopy subjectMask];
    completionCopy[2](completionCopy, subjectMask2, 0);
  }

  else
  {
    subjectMask2 = [MEMORY[0x1E69B3A48] missingError:@"No subject buffer" object:0];
    (completionCopy)[2](completionCopy, 0, subjectMask2);
  }
}

+ (void)createDeclutterMaskForContext:(id)context composition:(id)composition completion:(id)completion
{
  contextCopy = context;
  compositionCopy = composition;
  completionCopy = completion;
  v11 = s_log_13100;
  v12 = v11;
  v13 = &unk_1EC25E000;
  v14 = s_signpost_13101;
  if ((s_signpost_13101 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PIObjectRemoval.declutterMask", "", buf, 2u);
  }

  segmentationResult = [contextCopy segmentationResult];
  backgroundInstances = [segmentationResult backgroundInstances];

  v17 = [self removeOperationsFromInstances:backgroundInstances composition:compositionCopy context:contextCopy];

  v18 = [self removeGatedInstances:v17 context:contextCopy];

  v19 = [self _nonInstancedOperationsFromComposition:compositionCopy];
  v20 = [self removeInstancesOccludedByOperations:v19 fromInstances:v18 composition:compositionCopy maskContext:contextCopy];

  if ([v20 count])
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = PIStringFromIndexSet(v20);
    v23 = [v21 stringWithFormat:@"declutter-instances:%@", v22];

    v30 = 0;
    v24 = [self _newMaskForInstances:v20 context:contextCopy maskIdentifier:v23 error:&v30];
    v25 = v30;

    v13 = &unk_1EC25E000;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = s_log_13100;
  v27 = v26;
  v28 = v13[115];
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *v29 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v27, OS_SIGNPOST_INTERVAL_END, v28, "PIObjectRemoval.declutterMask", "", v29, 2u);
  }

  completionCopy[2](completionCopy, v24, v25);
}

+ (void)createAvailableObjectsMaskForContext:(id)context composition:(id)composition completion:(id)completion
{
  contextCopy = context;
  compositionCopy = composition;
  completionCopy = completion;
  v11 = s_log_13100;
  v12 = v11;
  v13 = s_signpost_13101;
  if ((s_signpost_13101 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PIObjectRemoval.instancesMask", "", buf, 2u);
  }

  segmentationResult = [contextCopy segmentationResult];
  instances = [segmentationResult instances];

  v16 = [self removeOperationsFromInstances:instances composition:compositionCopy context:contextCopy];

  v17 = [self removeGatedInstances:v16 context:contextCopy];

  if ([v17 count])
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = PIStringFromIndexSet(v17);
    v20 = [v18 stringWithFormat:@"available-instances:%@", v19];

    v27 = 0;
    v21 = [self _newMaskForInstances:v17 context:contextCopy maskIdentifier:v20 error:&v27];
    v22 = v27;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = s_log_13100;
  v24 = v23;
  v25 = s_signpost_13101;
  if ((s_signpost_13101 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *v26 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PIObjectRemoval.instancesMask", "", v26, 2u);
  }

  completionCopy[2](completionCopy, v21, v22);
}

+ (id)createMaskForInstance:(unint64_t)instance context:(id)context maskIdentifierPrefix:(id)prefix error:(id *)error
{
  v10 = MEMORY[0x1E696AEC0];
  contextCopy = context;
  instance = [v10 stringWithFormat:@"%@-instance:%ld", prefix, instance];
  v13 = [MEMORY[0x1E696AC90] indexSetWithIndex:instance];
  v14 = [self _newMaskForInstances:v13 context:contextCopy maskIdentifier:instance error:error];

  return v14;
}

+ (void)warmUpResources
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695F620]);
  v4 = [PIInpaintOperation alloc];
  v8 = @"mode";
  v5 = kRepairModeObjectRemoval;
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = [(PIInpaintOperation *)v4 initWithDictionary:v6];

  [self _warmUpOperation:v7 context:v3];
}

+ (void)_warmUpOperation:(id)operation context:(id)context
{
  v5 = MEMORY[0x1E695F658];
  contextCopy = context;
  operationCopy = operation;
  blackImage = [v5 blackImage];
  v9 = *MEMORY[0x1E69BDDA8];
  v10 = *(MEMORY[0x1E69BDDA8] + 8);
  v11 = *(MEMORY[0x1E69BDDA8] + 16);
  v12 = *(MEMORY[0x1E69BDDA8] + 24);
  v17 = [blackImage imageByCroppingToRect:{*MEMORY[0x1E69BDDA8], v10, v11, v12}];

  whiteImage = [MEMORY[0x1E695F658] whiteImage];
  v14 = [whiteImage imageByCroppingToRect:{v9, v10, v11, v12}];

  v15 = [PIInpaintRendering inpaintedImageWithInputImage:v17 maskImage:v14 exclusionMaskImage:0 headroom:operationCopy operation:0.0];

  v16 = [contextCopy createCGImage:v15 fromRect:{v9, v10, v11, v12}];
  CGImageRelease(v16);
}

+ (BOOL)loadAndRegisterModelForKey:(id)key error:(id *)error
{
  keyCopy = key;
  if (loadAndRegisterModelForKey_error__once != -1)
  {
    dispatch_once(&loadAndRegisterModelForKey_error__once, &__block_literal_global_196);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13039;
  v20 = __Block_byref_object_dispose__13040;
  v21 = 0;
  v7 = loadAndRegisterModelForKey_error__queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PIObjectRemoval_loadAndRegisterModelForKey_error___block_invoke_2;
  v11[3] = &unk_1E82AB008;
  v12 = keyCopy;
  v13 = &v22;
  v14 = &v16;
  selfCopy = self;
  v8 = keyCopy;
  dispatch_sync(v7, v11);
  *error = v17[5];
  v9 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v9;
}

void __52__PIObjectRemoval_loadAndRegisterModelForKey_error___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v4 = *(a1[6] + 8);
  obj = 0;
  v5 = [v3 _loadAndRegisterModelForKey:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

void __52__PIObjectRemoval_loadAndRegisterModelForKey_error___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("PIObjectRemoval.modelLoading", v2);
  v1 = loadAndRegisterModelForKey_error__queue;
  loadAndRegisterModelForKey_error__queue = v0;
}

+ (BOOL)_loadAndRegisterModelForKey:(id)key error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  mEMORY[0x1E69B3A58] = [MEMORY[0x1E69B3A58] sharedFactory];
  modelRegistry = [mEMORY[0x1E69B3A58] modelRegistry];

  v8 = [modelRegistry modelForKey:keyCopy];

  if (!v8)
  {
    v10 = [keyCopy isEqualToString:PIModelKeyInpaint];
    v11 = [keyCopy isEqualToString:PIModelKeyRefinement];
    if ((v10 & 1) == 0 && (v11 & 1) == 0)
    {
      v20 = NUAssertLogger_13001();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown model"];
        v33 = 138543362;
        v34 = v21;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v33, 0xCu);
      }

      v22 = MEMORY[0x1E69B38E8];
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v24 = NUAssertLogger_13001();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v25)
        {
          v28 = dispatch_get_specific(*v22);
          v29 = MEMORY[0x1E696AF00];
          v30 = v28;
          callStackSymbols = [v29 callStackSymbols];
          v32 = [callStackSymbols componentsJoinedByString:@"\n"];
          v33 = 138543618;
          v34 = v28;
          v35 = 2114;
          v36 = v32;
          _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v33, 0x16u);
        }
      }

      else if (v25)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        v33 = 138543362;
        v34 = v27;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v33, 0xCu);
      }

      _NUAssertFailHandler();
    }

    v12 = +[PIModelCatalog shared];
    v13 = v12;
    if (v10)
    {
      v14 = [v12 inpaintModelURL:error];
      if (v14)
      {
        v15 = v14;
        v16 = @"inpaintModelLoadOptions";
        v17 = 6;
LABEL_10:
        v18 = [modelRegistry loadModelAtURL:v15 options:PIModelLoadingOptions(v14 error:{v16, v17), error}];
        v9 = v18 != 0;
        if (v18)
        {
          [modelRegistry registerModel:v18 forKey:keyCopy];
        }

        else
        {
          *error = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Can't load model" object:v15 underlyingError:*error];
        }

        goto LABEL_15;
      }
    }

    else
    {
      v14 = [v12 refinementModelURL:error];
      if (v14)
      {
        v15 = v14;
        v16 = @"refinementModelLoadOptions";
        v17 = 8;
        goto LABEL_10;
      }
    }

    [MEMORY[0x1E69B3A48] errorWithCode:3 reason:@"Can't find model" object:0 underlyingError:*error];
    *error = v9 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v9 = 1;
LABEL_16:

  return v9;
}

+ (id)removeInstancesOccludedByOperations:(id)operations fromInstances:(id)instances composition:(id)composition maskContext:(id)context
{
  v41 = *MEMORY[0x1E69E9840];
  operationsCopy = operations;
  instancesCopy = instances;
  compositionCopy = composition;
  contextCopy = context;
  v26 = instancesCopy;
  v25 = [instancesCopy mutableCopy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = operationsCopy;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v36;
    *&v15 = 138543362;
    v23 = v15;
    do
    {
      v18 = 0;
      do
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v35 + 1) + 8 * v18);
        v33 = 0u;
        v34 = 0u;
        v32 = 0;
        [self _tightImageSpaceBoundsForOperation:v19 composition:compositionCopy error:{&v32, v23}];
        v20 = v32;
        buf[0] = v33;
        buf[1] = v34;
        if (NUPixelRectIsEmpty())
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
          }

          v21 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf[0]) = v23;
            *(buf + 4) = v20;
            _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Error computing tight bounds for operation: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __93__PIObjectRemoval_removeInstancesOccludedByOperations_fromInstances_composition_maskContext___block_invoke;
          v27[3] = &unk_1E82AAFE0;
          v28 = contextCopy;
          v30 = v33;
          v31 = v34;
          v29 = v25;
          [v26 enumerateIndexesUsingBlock:v27];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v16);
  }

  return v25;
}

void __93__PIObjectRemoval_removeInstancesOccludedByOperations_fromInstances_composition_maskContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:a2];
  v5 = [*(a1 + 32) segmentationResult];
  v6 = v5;
  if (v5)
  {
    [v5 tightBoundsForInstances:v4];
  }

  v7 = [*(a1 + 32) segmentationResult];
  v8 = v7;
  if (v7)
  {
    [v7 fullExtentForInstances:v4];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    [v9 fullImageExtent];
  }

  NUScaleMake();
  NUPixelRectScaleRational();
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  NUPixelRectIntersection();
  if ((NUPixelRectIsEmpty() & 1) == 0 && 0 / (*(a1 + 72) * *(a1 + 64)) > 0.75)
  {
    [*(a1 + 40) removeIndex:{a2, v10, v11, 0, 0, 0, 0}];
  }
}

+ (id)removeOperationsFromInstances:(id)instances composition:(id)composition context:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  v8 = [instances mutableCopy];
  [v8 removeIndex:0];
  v9 = [compositionCopy objectForKeyedSubscript:@"inpaint"];
  v10 = [v9 objectForKeyedSubscript:@"operations"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [self _instancesForOperation:*(*(&v17 + 1) + 8 * i)];
        [v8 removeIndexes:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v8;
}

+ (id)removeGatedInstances:(id)instances context:(id)context
{
  contextCopy = context;
  v6 = [instances mutableCopy];
  segmentationResult = [contextCopy segmentationResult];

  gatedInstances = [segmentationResult gatedInstances];
  [v6 removeIndexes:gatedInstances];

  return v6;
}

+ (id)_instancesForOperation:(id)operation
{
  v18 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v6 = [operationCopy objectForKeyedSubscript:@"maskIdentifiers"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _instancesFromMaskIdentifier:*(*(&v13 + 1) + 8 * i)];
        [indexSet addIndexes:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return indexSet;
}

+ (void)updateMaskContext:(id)context forComposition:(id)composition requestID:(id)d completionQueue:(id)queue completion:(id)completion
{
  contextCopy = context;
  compositionCopy = composition;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  v16 = [[PICompositionController alloc] initWithComposition:compositionCopy];
  livePhotoKeyFrameAdjustmentController = [(PICompositionController *)v16 livePhotoKeyFrameAdjustmentController];
  v18 = livePhotoKeyFrameAdjustmentController;
  v24 = **&MEMORY[0x1E6960C70];
  if (livePhotoKeyFrameAdjustmentController)
  {
    [livePhotoKeyFrameAdjustmentController keyFrameTime];
  }

  if (contextCopy)
  {
    [contextCopy livePhotoKeyFrameTime];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  v22 = v24;
  if (CMTimeCompare(&v22, &time2))
  {
    [contextCopy _resetForComposition:compositionCopy requestID:dCopy completionQueue:queueCopy completion:completionCopy];
  }

  else
  {
    subjectMask = [contextCopy subjectMask];
    buffer = [subjectMask buffer];
    v21 = [contextCopy subjectMaskDigestForComposition:compositionCopy subjectMaskBuffer:buffer];

    [contextCopy updateSubjectMaskBufferIfNeededForComposition:compositionCopy digest:v21 completionQueue:queueCopy completion:completionCopy];
  }
}

+ (void)createMaskContextForComposition:(id)composition requestID:(id)d completionQueue:(id)queue completion:(id)completion
{
  compositionCopy = composition;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  v13 = [PIPerfPowerService alloc];
  v14 = +[PIPerfPowerServiceIdentifier genEditIdentifier];
  v15 = [(PIPerfPowerService *)v13 initWithIdentifier:v14 operation:5];

  [(PIPerfPowerService *)v15 beginMeasuring];
  v16 = s_log_13100;
  v17 = v16;
  v18 = s_signpost_13101;
  if ((s_signpost_13101 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PIObjectRemoval.createMaskContext", "", buf, 2u);
  }

  [MEMORY[0x1E69B3C60] begin];
  v19 = +[PIPhotoEditHelper pipelineFiltersForPreInpaintSegmentation];
  *buf = 0;
  v66 = buf;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__13039;
  v69 = __Block_byref_object_dispose__13040;
  v70 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = __Block_byref_object_copy__13039;
  v63[4] = __Block_byref_object_dispose__13040;
  v64 = 0;
  v34 = [objc_alloc(MEMORY[0x1E69B3D50]) initWithComposition:compositionCopy];
  [v34 setPipelineFilters:v19];
  [v34 setResponseQueue:queueCopy];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __88__PIObjectRemoval_createMaskContextForComposition_requestID_completionQueue_completion___block_invoke;
  v62[3] = &unk_1E82AAF18;
  v62[4] = buf;
  v62[5] = v63;
  [v34 submit:v62];
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = __Block_byref_object_copy__13039;
  v60[4] = __Block_byref_object_dispose__13040;
  v61 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = __Block_byref_object_copy__13039;
  v58[4] = __Block_byref_object_dispose__13040;
  v59 = 0;
  v20 = [PIFaceObservationCache faceRequestWithRequest:v34];
  [v20 setPipelineFilters:v19];
  [v20 setResponseQueue:queueCopy];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __88__PIObjectRemoval_createMaskContextForComposition_requestID_completionQueue_completion___block_invoke_168;
  v57[3] = &unk_1E82AAF18;
  v57[4] = v60;
  v57[5] = v58;
  [v20 submit:v57];
  v32 = v20;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__13039;
  v55[4] = __Block_byref_object_dispose__13040;
  v56 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__13039;
  v53[4] = __Block_byref_object_dispose__13040;
  v54 = 0;
  v21 = [objc_alloc(MEMORY[0x1E69B3AA8]) initWithComposition:compositionCopy];
  [v21 setPipelineFilters:v19];
  [v21 setResponseQueue:queueCopy];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __88__PIObjectRemoval_createMaskContextForComposition_requestID_completionQueue_completion___block_invoke_2;
  v52[3] = &unk_1E82AAF18;
  v52[4] = v55;
  v52[5] = v53;
  [v21 submit:v52];
  v33 = v19;
  v22 = queueCopy;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__13039;
  v50[4] = __Block_byref_object_dispose__13040;
  v51 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = __Block_byref_object_copy__13039;
  v48[4] = __Block_byref_object_dispose__13040;
  v49 = 0;
  v23 = [(NURenderRequest *)[PISensitiveContentAnalysisRequest alloc] initWithComposition:compositionCopy];
  [(NURenderRequest *)v23 setPipelineFilters:v33];
  [(NURenderRequest *)v23 setResponseQueue:queueCopy];
  [(PISensitiveContentAnalysisRequest *)v23 setPerformRegionSpecificChecks:1];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __88__PIObjectRemoval_createMaskContextForComposition_requestID_completionQueue_completion___block_invoke_3;
  v47[3] = &unk_1E82AAF18;
  v47[4] = v50;
  v47[5] = v48;
  [(PISensitiveContentAnalysisRequest *)v23 submit:v47];
  v24 = [compositionCopy objectForKeyedSubscript:@"source"];
  assetIdentifier = [v24 assetIdentifier];
  v26 = MEMORY[0x1E69B3C60];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __88__PIObjectRemoval_createMaskContextForComposition_requestID_completionQueue_completion___block_invoke_4;
  v35[3] = &unk_1E82AAFB8;
  v27 = v15;
  v36 = v27;
  v41 = buf;
  v42 = v55;
  v43 = v63;
  v44 = v60;
  v45 = v50;
  v28 = compositionCopy;
  v37 = v28;
  v29 = assetIdentifier;
  v38 = v29;
  v30 = dCopy;
  v39 = v30;
  v31 = completionCopy;
  v40 = v31;
  v46 = v53;
  [v26 commitAndNotifyOnQueue:v22 withBlock:v35];

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v55, 8);

  _Block_object_dispose(v58, 8);
  _Block_object_dispose(v60, 8);

  _Block_object_dispose(v63, 8);
  _Block_object_dispose(buf, 8);
}

void __88__PIObjectRemoval_createMaskContextForComposition_requestID_completionQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"PI_FORCE_SEGMENTATION_FAIL"];

  if (v5)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
    }

    v6 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "PIObjectRemoval: user default set, overriding segmentationResult to nil", buf, 2u);
    }

    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v9 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Forced Segmentation Failure" object:0];
    v10 = 40;
  }

  else
  {
    v11 = *(*(a1 + 40) + 8);
    obj = *(v11 + 40);
    v9 = [v3 result:&obj];
    objc_storeStrong((v11 + 40), obj);
    v10 = 32;
  }

  v12 = *(*(a1 + v10) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
}

void __88__PIObjectRemoval_createMaskContextForComposition_requestID_completionQueue_completion___block_invoke_168(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __88__PIObjectRemoval_createMaskContextForComposition_requestID_completionQueue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __88__PIObjectRemoval_createMaskContextForComposition_requestID_completionQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __88__PIObjectRemoval_createMaskContextForComposition_requestID_completionQueue_completion___block_invoke_4(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = s_log_13100;
  v3 = v2;
  v4 = s_signpost_13101;
  if ((s_signpost_13101 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PIObjectRemoval.createMaskContext", "", buf, 2u);
  }

  [*(a1 + 32) endMeasuring];
  v5 = *(*(*(a1 + 72) + 8) + 40);
  if (v5 && *(*(*(a1 + 80) + 8) + 40))
  {
    v6 = [v5 foregroundInstances];
    v7 = [v6 count];

    if (v7)
    {
      v8 = *(*(*(a1 + 72) + 8) + 40);
      v9 = [v8 foregroundInstances];
      v10 = *(*(a1 + 88) + 8);
      obj = 0;
      v11 = [v8 newMaskForInstances:v9 error:&obj];
      objc_storeStrong((v10 + 40), obj);
    }

    else
    {
      v11 = 0;
    }

    v46 = 0u;
    v47 = 0u;
    v13 = [*(*(*(a1 + 80) + 8) + 40) geometry];
    v14 = v13;
    if (v13)
    {
      [v13 extent];
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    v15 = [*(*(*(a1 + 96) + 8) + 40) faces];
    v16 = MEMORY[0x1E69B3D78];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
    }

    v17 = MEMORY[0x1E69B3D80];
    v18 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v15 count];
      *buf = 136315394;
      *&buf[4] = "+[PIObjectRemoval createMaskContextForComposition:requestID:completionQueue:completion:]_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = v20;
      _os_log_impl(&dword_1C7694000, v19, OS_LOG_TYPE_DEFAULT, "%s: PIXELLATION: detectedFaces.count: %lu", buf, 0x16u);
    }

    if ([v15 count])
    {
      v21 = [v15 objectAtIndexedSubscript:0];
      [v21 boundingBox];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      if (*v16 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
      }

      v30 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        *&buf[4] = v23;
        *&buf[12] = 2048;
        *&buf[14] = v25;
        *&buf[22] = 2048;
        *&buf[24] = v27;
        v50 = 2048;
        v51 = v29;
        _os_log_impl(&dword_1C7694000, v30, OS_LOG_TYPE_DEFAULT, "PIXELLATION: detectedFaces[0]: [%.2f, %.2f, %.2f, %.2f]", buf, 0x2Au);
      }
    }

    [*(*(*(a1 + 104) + 8) + 40) sensitivityScore];
    v32 = v31;
    v33 = [[PICompositionController alloc] initWithComposition:*(a1 + 40)];
    v34 = [(PICompositionController *)v33 livePhotoKeyFrameAdjustmentController];
    v35 = v34;
    v44 = *MEMORY[0x1E6960C70];
    v45 = *(MEMORY[0x1E6960C70] + 16);
    if (v34)
    {
      [v34 keyFrameTime];
    }

    v36 = [PIInpaintMaskContext alloc];
    v37 = *(*(*(a1 + 72) + 8) + 40);
    v38 = *(a1 + 40);
    v39 = *(a1 + 48);
    v40 = *(a1 + 56);
    *buf = v46;
    *&buf[16] = v47;
    v42 = v44;
    v43 = v45;
    v41 = [(PIInpaintMaskContext *)v36 initWithSegmentationResult:v37 composition:v38 subjectMaskBuffer:v11 detectedFaces:v15 fullImageExtent:buf assetIdentifier:v39 requestID:v32 initialSensitivityScore:v40 livePhotoKeyFrameTime:&v42];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v12 = *(*(*(a1 + 88) + 8) + 40);
    if (!v12)
    {
      v12 = *(*(*(a1 + 112) + 8) + 40);
    }

    (*(*(a1 + 64) + 16))(*(a1 + 64), 0, v12);
  }
}

+ ($721907E0E1CDE8B6CD3FA271A8B25860)_tightImageSpaceBoundsForOperation:(SEL)operation composition:(id)composition error:(id)error
{
  v37 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  errorCopy = error;
  v24 = *(MEMORY[0x1E69B3900] + 16);
  v25 = *MEMORY[0x1E69B3900];
  v34 = *MEMORY[0x1E69B3900];
  v35 = v24;
  if ([a2 _operationIsBrushStroke:compositionCopy])
  {
    v12 = [PIRepairUtilities brushStrokeFromRetouchStrokeDictionary:compositionCopy];
    v13 = v12;
    if (v12)
    {
      [v12 extent];
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    v34 = v32;
    v35 = v33;
  }

  else
  {
    v23 = a6;
    [compositionCopy objectForKeyedSubscript:@"maskIdentifiers"];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = v31 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = [a2 _maskSourceWithIdentifier:v18 composition:errorCopy];
          if (!v19)
          {
            *v23 = [MEMORY[0x1E69B3A48] missingError:@"Can't find source for mask" object:v18];
            retstr->var0 = v25;
            retstr->var1 = v24;

            goto LABEL_17;
          }

          v20 = v19;
          v32 = 0;
          v33 = 0;
          [v19 extent];
          [v20 scale];
          NUPixelRectScaleRational();
          v32 = v26;
          v33 = v27;
          v26 = v34;
          v27 = v35;
          NUPixelRectUnion();
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }
  }

  v21 = v35;
  retstr->var0 = v34;
  retstr->var1 = v21;
LABEL_17:

  return result;
}

+ (id)_newMaskImageForOperation:(id)operation composition:(id)composition error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  compositionCopy = composition;
  if ([self _operationIsBrushStroke:operationCopy])
  {
    v10 = [PIRepairUtilities brushStrokeFromRetouchStrokeDictionary:operationCopy];
    v11 = [v10 ciImageTiled:0 closed:1 pressureMode:1];

    goto LABEL_15;
  }

  [operationCopy objectForKeyedSubscript:@"maskIdentifiers"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v12)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v13 = v12;
  v11 = 0;
  v14 = *v27;
  v24 = operationCopy;
  while (2)
  {
    v15 = 0;
    v16 = v11;
    do
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v26 + 1) + 8 * v15);
      v18 = [self _maskSourceWithIdentifier:v17 composition:{compositionCopy, v24}];
      if (!v18)
      {
        *error = [MEMORY[0x1E69B3A48] missingError:@"Can't find source for mask" object:v17];
LABEL_18:

        v22 = 0;
        operationCopy = v24;
        goto LABEL_19;
      }

      v19 = v18;
      v20 = [v18 sourceImage:error];
      if (!v20)
      {

        goto LABEL_18;
      }

      v21 = v20;
      v11 = [PIInpaintRendering maskByAddingMask:v20 toMask:v16];

      ++v15;
      v16 = v11;
    }

    while (v13 != v15);
    v13 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    operationCopy = v24;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_14:

LABEL_15:
  v16 = v11;
  v22 = v16;
LABEL_19:

  return v22;
}

+ (id)_newMaskForInstance:(unint64_t)instance context:(id)context maskIdentifier:(id)identifier error:(id *)error
{
  contextCopy = context;
  identifierCopy = identifier;
  segmentationResult = [contextCopy segmentationResult];
  v12 = [segmentationResult newMaskForInstance:instance error:error];

  if (v12)
  {
    v22 = 0u;
    v23 = 0u;
    segmentationResult2 = [contextCopy segmentationResult];
    v14 = segmentationResult2;
    if (segmentationResult2)
    {
      [segmentationResult2 tightBoundsForInstance:instance];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    if (contextCopy)
    {
      [contextCopy fullImageExtent];
    }

    else
    {
      memset(&v21[2], 0, 32);
    }

    [v12 size];
    v16 = NUScaleMake();
    v18 = v17;
    v19 = [PIInpaintMask alloc];
    v21[0] = v22;
    v21[1] = v23;
    v15 = [(PIInpaintMask *)v19 initWithBuffer:v12 identifier:identifierCopy extent:v21 scale:v16, v18];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_newMaskForInstances:(id)instances context:(id)context maskIdentifier:(id)identifier error:(id *)error
{
  instancesCopy = instances;
  contextCopy = context;
  identifierCopy = identifier;
  segmentationResult = [contextCopy segmentationResult];
  v13 = [segmentationResult newMaskForInstances:instancesCopy error:error];

  if (v13)
  {
    v23 = 0u;
    v24 = 0u;
    segmentationResult2 = [contextCopy segmentationResult];
    v15 = segmentationResult2;
    if (segmentationResult2)
    {
      [segmentationResult2 tightBoundsForInstances:instancesCopy];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    if (contextCopy)
    {
      [contextCopy fullImageExtent];
    }

    else
    {
      memset(&v22[2], 0, 32);
    }

    [v13 size];
    v17 = NUScaleMake();
    v19 = v18;
    v20 = [PIInpaintMask alloc];
    v22[0] = v23;
    v22[1] = v24;
    v16 = [(PIInpaintMask *)v20 initWithBuffer:v13 identifier:identifierCopy extent:v22 scale:v17, v19];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_nonInstancedOperationsFromComposition:(id)composition
{
  v3 = [composition objectForKeyedSubscript:@"inpaint"];
  v4 = [v3 objectForKeyedSubscript:@"operations"];
  v5 = PFFilter();

  return v5;
}

uint64_t __58__PIObjectRemoval__nonInstancedOperationsFromComposition___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PIInpaintOperation alloc] initWithDictionary:v2];

  v4 = [(PIInpaintOperation *)v3 mode]== 2 || [(PIInpaintOperation *)v3 isTargetPoints]|| [(PIInpaintOperation *)v3 isFilledBrushStroke];
  return v4;
}

+ (id)_maskSourceWithIdentifier:(id)identifier composition:(id)composition
{
  identifierCopy = identifier;
  v6 = [composition objectForKeyedSubscript:@"inpaintMasks"];
  v10 = identifierCopy;
  v7 = identifierCopy;
  v8 = PFFind();

  return v8;
}

uint64_t __57__PIObjectRemoval__maskSourceWithIdentifier_composition___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assetIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (BOOL)_operationIsBrushStroke:(id)stroke
{
  v3 = [stroke objectForKeyedSubscript:@"mode"];
  v4 = PIRetouchModeFromString(v3);

  return v4 == 2;
}

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__PIObjectRemoval_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken_13285 != -1)
  {
    dispatch_once(&initialize_onceToken_13285, block);
  }
}

os_signpost_id_t __29__PIObjectRemoval_initialize__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.photos.PhotoImaging", "ObjectRemoval");
  v3 = s_log_13100;
  s_log_13100 = v2;

  result = os_signpost_id_make_with_pointer(s_log_13100, *(a1 + 32));
  s_signpost_13101 = result;
  return result;
}

@end