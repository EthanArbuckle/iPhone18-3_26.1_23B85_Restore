@interface VisionCoreSparseOpticalFlow
+ (BOOL)_point:(CGPoint)_point inQuad:(id)quad;
+ (BOOL)_updateSession:(id)session referenceFrame:(__CVBuffer *)frame error:(id *)error;
+ (BOOL)_validateBuffer:(__CVBuffer *)buffer;
+ (VisionCoreHomography)_estimateTransformSrcPts:(SEL)pts DstPts:(void *)dstPts ransacReprojErrorThreshold:(void *)threshold;
+ (id)computeHomographiesForQuadrilaterals:(id)quadrilaterals inFrame:(__CVBuffer *)frame session:(id)session options:(id)options error:(id *)error;
+ (id)destinationKptsForTransform:(VisionCoreHomography *)transform;
+ (id)quadsConformHomographySrcQuads:(id)quads destQuads:(id)destQuads reprojError:(float)error;
+ (id)sourceKptsForTransform:(VisionCoreHomography *)transform;
+ (id)sparseOpticalFlowResultsFromHomography:(VisionCoreHomography *)homography;
+ (id)updateSparseOpticalFlowResults:(id)results homography:(VisionCoreHomography *)homography;
+ (unint64_t)_mtlPixelFormatForBuffer:(__CVBuffer *)buffer;
+ (vector<VisionCoreHomography,)_runSparseOpticalFlowOnFrame:(id)frame shouldRunCorr:(SEL)corr forSession:(__CVBuffer *)session error:(BOOL)error groups:(id)groups options:(id *)options;
+ (vector<int,)getInlierCountsPerQuad:()vector<int inliers:(std:(SEL)inliers :(void *)a4 allocator<int>> *)result;
+ (void)_gatherKeyPtsFromQuadsForSession:(id)session minGridFrequency:(int)frequency;
+ (void)recursiveRansacSrcPts:(void *)pts DstPts:(void *)dstPts QuadsMatchingKptsCount:(void *)count resultingHomographies:(void *)homographies groups:(void *)groups inlierRatio:(float)ratio ransacReprojErrorThreshold:(float)threshold;
@end

@implementation VisionCoreSparseOpticalFlow

+ (id)sparseOpticalFlowResultsFromHomography:(VisionCoreHomography *)homography
{
  v4 = [VisionCoreSparseOpticalFlowResult alloc];
  [MEMORY[0x1E696AFB0] UUID];
  objc_claimAutoreleasedReturnValue();
  VisionCoreHomography::VisionCoreHomography(&v6, homography);
}

+ (id)updateSparseOpticalFlowResults:(id)results homography:(VisionCoreHomography *)homography
{
  resultsCopy = results;
  v6 = [VisionCoreSparseOpticalFlowResult alloc];
  [MEMORY[0x1E696AFB0] UUID];
  objc_claimAutoreleasedReturnValue();
  VisionCoreHomography::VisionCoreHomography(&v8, homography);
}

+ (id)destinationKptsForTransform:(VisionCoreHomography *)transform
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  VisionCoreHomography::CalculateReprojectionError(&v12, transform);
  v5 = v12;
  if (transform->var1.var2 < 1)
  {
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = [VisionCoreSparseOpticalFlowResultPoint alloc];
      if (transform->var3.var1 <= v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = (*(transform->var3.var0 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1;
      }

      LODWORD(v8) = v5[v6];
      v10 = [(VisionCoreSparseOpticalFlowResultPoint *)v7 initWithX:v9 Y:transform->var1.var0[v6] inlier:transform->var1.var1[v6] reprojError:v8];
      [v4 addObject:v10];

      ++v6;
    }

    while (v6 < transform->var1.var2);
  }

  operator delete(v5);
LABEL_10:

  return v4;
}

+ (id)sourceKptsForTransform:(VisionCoreHomography *)transform
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  VisionCoreHomography::CalculateReprojectionError(&v12, transform);
  v5 = v12;
  if (transform->var0.var2 < 1)
  {
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = [VisionCoreSparseOpticalFlowResultPoint alloc];
      if (transform->var3.var1 <= v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = (*(transform->var3.var0 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1;
      }

      LODWORD(v8) = v5[v6];
      v10 = [(VisionCoreSparseOpticalFlowResultPoint *)v7 initWithX:v9 Y:transform->var0.var0[v6] inlier:transform->var0.var1[v6] reprojError:v8];
      [v4 addObject:v10];

      ++v6;
    }

    while (v6 < transform->var0.var2);
  }

  operator delete(v5);
LABEL_10:

  return v4;
}

+ (id)computeHomographiesForQuadrilaterals:(id)quadrilaterals inFrame:(__CVBuffer *)frame session:(id)session options:(id)options error:(id *)error
{
  v92 = *MEMORY[0x1E69E9840];
  quadrilateralsCopy = quadrilaterals;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  if ([self _validateBuffer:frame])
  {
    v12 = [optionsCopy objectForKeyedSubscript:@"VisionCoreOption_MinKptsFreqForQuads"];
    v72 = v12;
    if (v12)
    {
      intValue = [v12 intValue];
    }

    else
    {
      intValue = 4;
    }

    v77 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(quadrilateralsCopy, "count")}];
    Width = CVPixelBufferGetWidth(frame);
    frameCopy = frame;
    Height = CVPixelBufferGetHeight(frame);
    v15 = objc_alloc(MEMORY[0x1E695DF70]);
    v16 = [quadrilateralsCopy count];
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v15 initWithCapacity:v17];
    v80 = intValue;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v19 = quadrilateralsCopy;
    v20 = [v19 countByEnumeratingWithState:&v87 objects:v91 count:16];
    if (v20)
    {
      v21 = *v88;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v88 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v87 + 1) + 8 * i);
          v24 = [VisionCoreSparseOpticalFlowQuad alloc];
          [v23 topLeft];
          v26 = v25;
          v28 = v27;
          [v23 topRight];
          v30 = v29;
          v32 = v31;
          [v23 bottomRight];
          v34 = v33;
          v36 = v35;
          [v23 bottomLeft];
          v38 = v37;
          v40 = v39;
          uUID = [v23 UUID];
          v42 = -[VisionCoreSparseOpticalFlowQuad initWithTopLeft:topRight:bottomRight:bottomLeft:indentifier:homographyGroupID:](v24, "initWithTopLeft:topRight:bottomRight:bottomLeft:indentifier:homographyGroupID:", uUID, [v23 homographyGroupID], v26, v28, v30, v32, v34, v36, v38, v40);

          [v18 addObject:v42];
        }

        v20 = [v19 countByEnumeratingWithState:&v87 objects:v91 count:16];
      }

      while (v20);
    }

    if (![v19 count])
    {
      v43 = [VisionCoreSparseOpticalFlowQuad alloc];
      uUID2 = [MEMORY[0x1E696AFB0] UUID];
      v45 = vcvts_n_f32_u64(Width, 2uLL);
      v46 = vcvts_n_f32_u64(Height, 2uLL);
      v47 = [(VisionCoreSparseOpticalFlowQuad *)v43 initWithTopLeft:uUID2 topRight:v45 bottomRight:(Height * 0.75) bottomLeft:(Width * 0.75) indentifier:(Height * 0.75), (Width * 0.75), v46, v45, v46];

      [v18 addObject:v47];
    }

    [sessionCopy setTrackedQuads:v18];
    v48 = _VisionCoreSignpostLog();
    if (os_signpost_enabled(v48))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DECDA000, v48, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VisionCoreSparseOpticalFlowKeypointsEvent", &unk_1DED1344A, buf, 2u);
    }

    [selfCopy _gatherKeyPtsFromQuadsForSession:sessionCopy minGridFrequency:v80];
    v49 = _VisionCoreSignpostLog();
    if (os_signpost_enabled(v49))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DECDA000, v49, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VisionCoreSparseOpticalFlowKeypointsEvent", &unk_1DED1344A, buf, 2u);
    }

    texture = [sessionCopy texture];
    v51 = texture == 0;

    if (v51 || (v52 = CVPixelBufferGetWidth([sessionCopy prevFrame]), v53 = CVPixelBufferGetHeight(objc_msgSend(sessionCopy, "prevFrame")), v54 = Width, Width == v52) && (v54 = Height, Height == v53))
    {
      quadPointCounts = [sessionCopy quadPointCounts];
      v56 = (quadPointCounts[1] - *quadPointCounts) >> 3;
      *buf = -1;
      std::vector<int>::vector[abi:ne200100](&__p, v56);
      for (j = 0; ; ++j)
      {
        trackedQuads = [sessionCopy trackedQuads];
        v59 = [trackedQuads count] > j;

        if (!v59)
        {
          break;
        }

        trackedQuads2 = [sessionCopy trackedQuads];
        v61 = [trackedQuads2 objectAtIndexedSubscript:j];

        homographyGroupID = [v61 homographyGroupID];
        *(__p + j) = homographyGroupID;
      }

      v63 = _VisionCoreSignpostLog();
      if (os_signpost_enabled(v63))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DECDA000, v63, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VisionCoreSparseOpticalFlowEvent", &unk_1DED1344A, buf, 2u);
      }

      allSrcPoints = [sessionCopy allSrcPoints];
      [selfCopy _runSparseOpticalFlowOnFrame:frameCopy shouldRunCorr:allSrcPoints[1] - *allSrcPoints > 8uLL forSession:sessionCopy error:error groups:&__p options:optionsCopy];
      v65 = _VisionCoreSignpostLog();
      if (os_signpost_enabled(v65))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DECDA000, v65, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VisionCoreSparseOpticalFlowEvent", &unk_1DED1344A, buf, 2u);
      }

      [sessionCopy setFrameCountSinceLastGrouping:{objc_msgSend(sessionCopy, "frameCountSinceLastGrouping") + 1}];
      v66 = _VisionCoreSignpostLog();
      if (os_signpost_enabled(v66))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DECDA000, v66, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VisionCoreSparseOpticalFlowPrepareResults", &unk_1DED1344A, buf, 2u);
      }

      v71 = *error;
      if (!*error)
      {
        if (v86 == __p)
        {
LABEL_42:
          v67 = 0;
        }

        else
        {
          v67 = 0;
          v68 = (v86 - __p) >> 2;
          if (v68 <= 1)
          {
            v68 = 1;
          }

          while (*(__p + v67))
          {
            if (v68 == ++v67)
            {
              goto LABEL_42;
            }
          }
        }

        VisionCoreHomography::VisionCoreHomography(&v83, (v84 + 136 * v67));
      }

      v69 = _VisionCoreSignpostLog();
      if (os_signpost_enabled(v69))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DECDA000, v69, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VisionCoreSparseOpticalFlowPrepareResults", &unk_1DED1344A, buf, 2u);
      }

      if ([selfCopy _updateSession:sessionCopy referenceFrame:frameCopy error:error])
      {
        if (v71)
        {
          [sessionCopy setSceneHomography:{*MEMORY[0x1E69E9B10], *(MEMORY[0x1E69E9B10] + 16), *(MEMORY[0x1E69E9B10] + 32)}];
          v14 = MEMORY[0x1E695E0F8];
        }

        else
        {
          v14 = v77;
        }
      }

      else
      {
        [sessionCopy setSceneHomography:{*MEMORY[0x1E69E9B10], *(MEMORY[0x1E69E9B10] + 16), *(MEMORY[0x1E69E9B10] + 32)}];
        v14 = 0;
      }

      *buf = &v84;
      std::vector<VisionCoreHomography>::__destroy_vector::operator()[abi:ne200100](buf);
      if (__p)
      {
        v86 = __p;
        operator delete(__p);
      }
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:{@"Frame buffer and reference frame dimensions do not match", v54}];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:{@"Invalid buffer - ensure IO surface backed, format is BGRA / RGBA / Luma, and even dimensions"}];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (unint64_t)_mtlPixelFormatForBuffer:(__CVBuffer *)buffer
{
  if (CVPixelBufferGetPixelFormatType(buffer) == 1278226488)
  {
    return 10;
  }

  else
  {
    return 70;
  }
}

+ (BOOL)_validateBuffer:(__CVBuffer *)buffer
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  IOSurface = CVPixelBufferGetIOSurface(buffer);
  if (PixelFormatType != 1111970369 && PixelFormatType != 1380401729 && PixelFormatType != 1278226488)
  {
    return 0;
  }

  return ((Width | Height) & 1) == 0 && IOSurface != 0;
}

+ (BOOL)_point:(CGPoint)_point inQuad:(id)quad
{
  y = _point.y;
  x = _point.x;
  [quad boundingBox];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

+ (vector<VisionCoreHomography,)_runSparseOpticalFlowOnFrame:(id)frame shouldRunCorr:(SEL)corr forSession:(__CVBuffer *)session error:(BOOL)error groups:(id)groups options:(id *)options
{
  v13 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  a9;
  [groupsCopy quadPointCounts];
  VisionCoreHomography::VisionCoreHomography(&buf);
}

+ (BOOL)_updateSession:(id)session referenceFrame:(__CVBuffer *)frame error:(id *)error
{
  sessionCopy = session;
  mtlContext = [sessionCopy mtlContext];
  v8 = [mtlContext bindPixelBufferToMTL2DTexture:frame pixelFormat:objc_msgSend(objc_opt_class() plane:"_mtlPixelFormatForBuffer:", frame), 0];
  [sessionCopy updateReferenceTexture:v8 frame:frame];

  return 1;
}

+ (vector<int,)getInlierCountsPerQuad:()vector<int inliers:(std:(SEL)inliers :(void *)a4 allocator<int>> *)result
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v5 = *a4;
  if (*(a4 + 1) != *a4)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v10;
      v12 = *(v5 + 8 * v9);
      v13 = v10 >= 0;
      v14 = v10 & 0x3F;
      v10 += v12;
      if (v13)
      {
        v15 = v11 >> 6;
      }

      else
      {
        v15 = -((63 - v11) >> 6);
      }

      v16 = (*a5 + 8 * v15);
      v17 = v10 >> 6;
      if (v10 < 0)
      {
        v17 = -((63 - v10) >> 6);
      }

      v18 = (v10 & 0x3F) - v14 + ((v17 - v15) << 6);
      v19 = v11 & 0x3F;
      if (v19)
      {
        v20 = (64 - v19);
        if (v20 >= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = *v16++;
        v23 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (v20 - v21)) & (-1 << v14) & v22));
        v23.i16[0] = vaddlv_u8(v23);
        v24 = v23.i32[0];
        v18 -= v21;
      }

      else
      {
        v24 = 0;
      }

      if (v18 >= 0x40)
      {
        do
        {
          v25 = *v16++;
          v26 = vcnt_s8(v25);
          v26.i16[0] = vaddlv_u8(v26);
          v24 += v26.i32[0];
          v18 -= 64;
        }

        while (v18 > 0x3F);
      }

      if (v18)
      {
        v27 = vcnt_s8((*v16 & (0xFFFFFFFFFFFFFFFFLL >> -v18)));
        v27.i16[0] = vaddlv_u8(v27);
        v24 += v27.i32[0];
      }

      v28 = v8;
      v29 = v8 >> 2;
      if (((v8 >> 2) + 1) >> 62)
      {
        retstr->var1 = v8;
        retstr->var2 = 0;
        retstr->var0 = 0;
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      if (v8 >> 2 != -1)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>((v8 >> 2) + 1);
      }

      *(4 * v29) = v24;
      v8 = 4 * v29 + 4;
      result = memcpy(0, 0, v28);
      ++v9;
      v5 = *a4;
    }

    while (v9 < (*(a4 + 1) - *a4) >> 3);
    retstr->var1 = v8;
    retstr->var2 = 0;
    retstr->var0 = 0;
  }

  return result;
}

+ (void)recursiveRansacSrcPts:(void *)pts DstPts:(void *)dstPts QuadsMatchingKptsCount:(void *)count resultingHomographies:(void *)homographies groups:(void *)groups inlierRatio:(float)ratio ransacReprojErrorThreshold:(float)threshold
{
  if (*(pts + 1) - *pts < 8uLL || *(groups + 1) == *groups || **groups >= 2)
  {
    if (*(count + 1) != *count)
    {
      VisionCoreHomography::VisionCoreHomography(&v35);
    }
  }

  else
  {
    *&v12 = threshold;
    [self _estimateTransformSrcPts:pts DstPts:dstPts ransacReprojErrorThreshold:{count, homographies, v12}];
    [self getInlierCountsPerQuad:count inliers:&v35.var3];
    v14 = *count;
    v13 = *(count + 1);
    memset(v32, 0, sizeof(v32));
    v15 = v13 - v14;
    if (v15)
    {
      std::vector<BOOL>::__vallocate[abi:ne200100](v32, v15 >> 3);
    }

    v16 = 0;
    v17 = v33;
    v18 = v34;
    v19 = *count;
    if (v33 != v34)
    {
      v20 = 0;
      v21 = *count;
      do
      {
        v22 = 1 << v20;
        if ((*v17 / *v21) >= ratio)
        {
          v23 = *v16 & ~v22;
        }

        else
        {
          v23 = *v16 | v22;
        }

        *v16 = v23;
        ++v17;
        v21 += 2;
        v16 += v20 == 63;
        if (v20 == 63)
        {
          v20 = 0;
        }

        else
        {
          ++v20;
        }
      }

      while (v17 != v18);
    }

    v24 = *(count + 1);
    v25 = 0;
    if (v24 == v19)
    {
      v30 = 0;
      v29 = (v24 - v19) >> 3;
      v24 = v19;
    }

    else
    {
      v26 = 0;
      do
      {
        if ((*(v32[0] + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = v25;
          v28 = v25 >> 2;
          if (((v25 >> 2) + 1) >> 62)
          {
            std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
          }

          if (v25 >> 2 != -1)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>((v25 >> 2) + 1);
          }

          *(4 * v28) = v26;
          v25 = 4 * v28 + 4;
          memcpy(0, 0, v27);
          v19 = *count;
          v24 = *(count + 1);
        }

        ++v26;
        v29 = (v24 - v19) >> 3;
      }

      while (v29 > v26);
      v30 = v25 >> 2;
    }

    if (v29 != v30)
    {
      VisionCoreHomography::VisionCoreHomography(&v31);
    }

    if (v24 != v19)
    {
      VisionCoreHomography::VisionCoreHomography(&v31);
    }

    if (v32[0])
    {
      operator delete(v32[0]);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    VisionCoreHomography::~VisionCoreHomography(&v35);
  }
}

+ (id)quadsConformHomographySrcQuads:(id)quads destQuads:(id)destQuads reprojError:(float)error
{
  quadsCopy = quads;
  destQuadsCopy = destQuads;
  std::vector<CGPoint>::vector[abi:ne200100](v17, 4 * [quadsCopy count]);
  std::vector<CGPoint>::vector[abi:ne200100](v16, 4 * [destQuadsCopy count]);
  std::vector<half>::vector[abi:ne200100](v15, 8 * [quadsCopy count]);
  std::vector<half>::vector[abi:ne200100](v14, 8 * [destQuadsCopy count]);
  v8 = [quadsCopy count];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (v8)
  {
    if (!(v8 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v8);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  [quadsCopy count];
  VisionCoreHomography::VisionCoreHomography(&v10);
}

+ (VisionCoreHomography)_estimateTransformSrcPts:(SEL)pts DstPts:(void *)dstPts ransacReprojErrorThreshold:(void *)threshold
{
  retstr->var0.var0 = 0;
  retstr->var0.var1 = 0;
  retstr->var0.var2 = 0;
  retstr->var1.var0 = 0;
  retstr->var1.var1 = 0;
  retstr->var2.var0 = 0;
  retstr->var1.var2 = 0;
  retstr->var2.var1 = 0;
  retstr->var2.var2 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>();
}

+ (void)_gatherKeyPtsFromQuadsForSession:(id)session minGridFrequency:(int)frequency
{
  v50 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  allSrcPoints = [sessionCopy allSrcPoints];
  quadPointCounts = [sessionCopy quadPointCounts];
  allSrcPoints[1] = *allSrcPoints;
  quadPointCounts[1] = *quadPointCounts;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  trackedQuads = [sessionCopy trackedQuads];
  v7 = [trackedQuads countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v7)
  {
    v8 = *v45;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(trackedQuads);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        [v11 boundingBox];
        v13 = v12;
        [v11 boundingBox];
        v9 = v9 + v13 * v14;
      }

      v7 = [trackedQuads countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  trackedQuads2 = [sessionCopy trackedQuads];
  v16 = [trackedQuads2 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v16)
  {
    v17 = *v41;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(trackedQuads2);
        }

        v19 = *(*(&v40 + 1) + 8 * j);
        [v19 boundingBox];
        v21 = v20;
        [v19 boundingBox];
        if (v19)
        {
          *&v22 = v21;
          v24 = v23;
          *&v22 = ((*&v22 * 256.0) * v24) / v9;
          [v19 generateGridKeypointsWithMaxKeypoints:frequency minGridFrequency:v22];
          v25 = *__p;
        }

        else
        {
          v25 = 0uLL;
          *__p = 0u;
        }

        std::__copy_impl::operator()[abi:ne200100]<half *,half *,std::back_insert_iterator<std::vector<half>>>(v25, *(&v25 + 1), allSrcPoints);
        v26 = ((__p[1] - __p[0]) >> 1) >> 1;
        v28 = quadPointCounts[1];
        v27 = quadPointCounts[2];
        if (v28 >= v27)
        {
          v30 = *quadPointCounts;
          v31 = v28 - *quadPointCounts;
          v32 = v31 >> 3;
          v33 = (v31 >> 3) + 1;
          if (v33 >> 61)
          {
            std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
          }

          v34 = v27 - v30;
          if (v34 >> 2 > v33)
          {
            v33 = v34 >> 2;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            v35 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v33;
          }

          if (v35)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v35);
          }

          *(8 * v32) = v26;
          v29 = 8 * v32 + 8;
          memcpy(0, v30, v31);
          v36 = *quadPointCounts;
          *quadPointCounts = 0;
          quadPointCounts[1] = v29;
          quadPointCounts[2] = 0;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else
        {
          *v28 = v26;
          v29 = (v28 + 1);
        }

        quadPointCounts[1] = v29;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      v16 = [trackedQuads2 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v16);
  }
}

@end