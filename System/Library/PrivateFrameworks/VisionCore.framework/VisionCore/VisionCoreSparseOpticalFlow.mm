@interface VisionCoreSparseOpticalFlow
+ (BOOL)_point:(CGPoint)a3 inQuad:(id)a4;
+ (BOOL)_updateSession:(id)a3 referenceFrame:(__CVBuffer *)a4 error:(id *)a5;
+ (BOOL)_validateBuffer:(__CVBuffer *)a3;
+ (VisionCoreHomography)_estimateTransformSrcPts:(SEL)a3 DstPts:(void *)a4 ransacReprojErrorThreshold:(void *)a5;
+ (id)computeHomographiesForQuadrilaterals:(id)a3 inFrame:(__CVBuffer *)a4 session:(id)a5 options:(id)a6 error:(id *)a7;
+ (id)destinationKptsForTransform:(VisionCoreHomography *)a3;
+ (id)quadsConformHomographySrcQuads:(id)a3 destQuads:(id)a4 reprojError:(float)a5;
+ (id)sourceKptsForTransform:(VisionCoreHomography *)a3;
+ (id)sparseOpticalFlowResultsFromHomography:(VisionCoreHomography *)a3;
+ (id)updateSparseOpticalFlowResults:(id)a3 homography:(VisionCoreHomography *)a4;
+ (unint64_t)_mtlPixelFormatForBuffer:(__CVBuffer *)a3;
+ (vector<VisionCoreHomography,)_runSparseOpticalFlowOnFrame:(id)a2 shouldRunCorr:(SEL)a3 forSession:(__CVBuffer *)a4 error:(BOOL)a5 groups:(id)a6 options:(id *)a7;
+ (vector<int,)getInlierCountsPerQuad:()vector<int inliers:(std:(SEL)a3 :(void *)a4 allocator<int>> *)result;
+ (void)_gatherKeyPtsFromQuadsForSession:(id)a3 minGridFrequency:(int)a4;
+ (void)recursiveRansacSrcPts:(void *)a3 DstPts:(void *)a4 QuadsMatchingKptsCount:(void *)a5 resultingHomographies:(void *)a6 groups:(void *)a7 inlierRatio:(float)a8 ransacReprojErrorThreshold:(float)a9;
@end

@implementation VisionCoreSparseOpticalFlow

+ (id)sparseOpticalFlowResultsFromHomography:(VisionCoreHomography *)a3
{
  v4 = [VisionCoreSparseOpticalFlowResult alloc];
  [MEMORY[0x1E696AFB0] UUID];
  objc_claimAutoreleasedReturnValue();
  VisionCoreHomography::VisionCoreHomography(&v6, a3);
}

+ (id)updateSparseOpticalFlowResults:(id)a3 homography:(VisionCoreHomography *)a4
{
  v5 = a3;
  v6 = [VisionCoreSparseOpticalFlowResult alloc];
  [MEMORY[0x1E696AFB0] UUID];
  objc_claimAutoreleasedReturnValue();
  VisionCoreHomography::VisionCoreHomography(&v8, a4);
}

+ (id)destinationKptsForTransform:(VisionCoreHomography *)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  VisionCoreHomography::CalculateReprojectionError(&v12, a3);
  v5 = v12;
  if (a3->var1.var2 < 1)
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
      if (a3->var3.var1 <= v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = (*(a3->var3.var0 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1;
      }

      LODWORD(v8) = v5[v6];
      v10 = [(VisionCoreSparseOpticalFlowResultPoint *)v7 initWithX:v9 Y:a3->var1.var0[v6] inlier:a3->var1.var1[v6] reprojError:v8];
      [v4 addObject:v10];

      ++v6;
    }

    while (v6 < a3->var1.var2);
  }

  operator delete(v5);
LABEL_10:

  return v4;
}

+ (id)sourceKptsForTransform:(VisionCoreHomography *)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  VisionCoreHomography::CalculateReprojectionError(&v12, a3);
  v5 = v12;
  if (a3->var0.var2 < 1)
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
      if (a3->var3.var1 <= v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = (*(a3->var3.var0 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1;
      }

      LODWORD(v8) = v5[v6];
      v10 = [(VisionCoreSparseOpticalFlowResultPoint *)v7 initWithX:v9 Y:a3->var0.var0[v6] inlier:a3->var0.var1[v6] reprojError:v8];
      [v4 addObject:v10];

      ++v6;
    }

    while (v6 < a3->var0.var2);
  }

  operator delete(v5);
LABEL_10:

  return v4;
}

+ (id)computeHomographiesForQuadrilaterals:(id)a3 inFrame:(__CVBuffer *)a4 session:(id)a5 options:(id)a6 error:(id *)a7
{
  v92 = *MEMORY[0x1E69E9840];
  v76 = a3;
  v11 = a5;
  v74 = a6;
  v78 = a1;
  if ([a1 _validateBuffer:a4])
  {
    v12 = [v74 objectForKeyedSubscript:@"VisionCoreOption_MinKptsFreqForQuads"];
    v72 = v12;
    if (v12)
    {
      v13 = [v12 intValue];
    }

    else
    {
      v13 = 4;
    }

    v77 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v76, "count")}];
    Width = CVPixelBufferGetWidth(a4);
    v73 = a4;
    Height = CVPixelBufferGetHeight(a4);
    v15 = objc_alloc(MEMORY[0x1E695DF70]);
    v16 = [v76 count];
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v15 initWithCapacity:v17];
    v80 = v13;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v19 = v76;
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
          v41 = [v23 UUID];
          v42 = -[VisionCoreSparseOpticalFlowQuad initWithTopLeft:topRight:bottomRight:bottomLeft:indentifier:homographyGroupID:](v24, "initWithTopLeft:topRight:bottomRight:bottomLeft:indentifier:homographyGroupID:", v41, [v23 homographyGroupID], v26, v28, v30, v32, v34, v36, v38, v40);

          [v18 addObject:v42];
        }

        v20 = [v19 countByEnumeratingWithState:&v87 objects:v91 count:16];
      }

      while (v20);
    }

    if (![v19 count])
    {
      v43 = [VisionCoreSparseOpticalFlowQuad alloc];
      v44 = [MEMORY[0x1E696AFB0] UUID];
      v45 = vcvts_n_f32_u64(Width, 2uLL);
      v46 = vcvts_n_f32_u64(Height, 2uLL);
      v47 = [(VisionCoreSparseOpticalFlowQuad *)v43 initWithTopLeft:v44 topRight:v45 bottomRight:(Height * 0.75) bottomLeft:(Width * 0.75) indentifier:(Height * 0.75), (Width * 0.75), v46, v45, v46];

      [v18 addObject:v47];
    }

    [v11 setTrackedQuads:v18];
    v48 = _VisionCoreSignpostLog();
    if (os_signpost_enabled(v48))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DECDA000, v48, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VisionCoreSparseOpticalFlowKeypointsEvent", &unk_1DED1344A, buf, 2u);
    }

    [v78 _gatherKeyPtsFromQuadsForSession:v11 minGridFrequency:v80];
    v49 = _VisionCoreSignpostLog();
    if (os_signpost_enabled(v49))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DECDA000, v49, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VisionCoreSparseOpticalFlowKeypointsEvent", &unk_1DED1344A, buf, 2u);
    }

    v50 = [v11 texture];
    v51 = v50 == 0;

    if (v51 || (v52 = CVPixelBufferGetWidth([v11 prevFrame]), v53 = CVPixelBufferGetHeight(objc_msgSend(v11, "prevFrame")), v54 = Width, Width == v52) && (v54 = Height, Height == v53))
    {
      v55 = [v11 quadPointCounts];
      v56 = (v55[1] - *v55) >> 3;
      *buf = -1;
      std::vector<int>::vector[abi:ne200100](&__p, v56);
      for (j = 0; ; ++j)
      {
        v58 = [v11 trackedQuads];
        v59 = [v58 count] > j;

        if (!v59)
        {
          break;
        }

        v60 = [v11 trackedQuads];
        v61 = [v60 objectAtIndexedSubscript:j];

        v62 = [v61 homographyGroupID];
        *(__p + j) = v62;
      }

      v63 = _VisionCoreSignpostLog();
      if (os_signpost_enabled(v63))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DECDA000, v63, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VisionCoreSparseOpticalFlowEvent", &unk_1DED1344A, buf, 2u);
      }

      v64 = [v11 allSrcPoints];
      [v78 _runSparseOpticalFlowOnFrame:v73 shouldRunCorr:v64[1] - *v64 > 8uLL forSession:v11 error:a7 groups:&__p options:v74];
      v65 = _VisionCoreSignpostLog();
      if (os_signpost_enabled(v65))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DECDA000, v65, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VisionCoreSparseOpticalFlowEvent", &unk_1DED1344A, buf, 2u);
      }

      [v11 setFrameCountSinceLastGrouping:{objc_msgSend(v11, "frameCountSinceLastGrouping") + 1}];
      v66 = _VisionCoreSignpostLog();
      if (os_signpost_enabled(v66))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DECDA000, v66, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VisionCoreSparseOpticalFlowPrepareResults", &unk_1DED1344A, buf, 2u);
      }

      v71 = *a7;
      if (!*a7)
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

      if ([v78 _updateSession:v11 referenceFrame:v73 error:a7])
      {
        if (v71)
        {
          [v11 setSceneHomography:{*MEMORY[0x1E69E9B10], *(MEMORY[0x1E69E9B10] + 16), *(MEMORY[0x1E69E9B10] + 32)}];
          v14 = MEMORY[0x1E695E0F8];
        }

        else
        {
          v14 = v77;
        }
      }

      else
      {
        [v11 setSceneHomography:{*MEMORY[0x1E69E9B10], *(MEMORY[0x1E69E9B10] + 16), *(MEMORY[0x1E69E9B10] + 32)}];
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

    else if (a7)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:{@"Frame buffer and reference frame dimensions do not match", v54}];
      *a7 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else if (a7)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:{@"Invalid buffer - ensure IO surface backed, format is BGRA / RGBA / Luma, and even dimensions"}];
    *a7 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (unint64_t)_mtlPixelFormatForBuffer:(__CVBuffer *)a3
{
  if (CVPixelBufferGetPixelFormatType(a3) == 1278226488)
  {
    return 10;
  }

  else
  {
    return 70;
  }
}

+ (BOOL)_validateBuffer:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (PixelFormatType != 1111970369 && PixelFormatType != 1380401729 && PixelFormatType != 1278226488)
  {
    return 0;
  }

  return ((Width | Height) & 1) == 0 && IOSurface != 0;
}

+ (BOOL)_point:(CGPoint)a3 inQuad:(id)a4
{
  y = a3.y;
  x = a3.x;
  [a4 boundingBox];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

+ (vector<VisionCoreHomography,)_runSparseOpticalFlowOnFrame:(id)a2 shouldRunCorr:(SEL)a3 forSession:(__CVBuffer *)a4 error:(BOOL)a5 groups:(id)a6 options:(id *)a7
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = a6;
  a9;
  [v10 quadPointCounts];
  VisionCoreHomography::VisionCoreHomography(&buf);
}

+ (BOOL)_updateSession:(id)a3 referenceFrame:(__CVBuffer *)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [v6 mtlContext];
  v8 = [v7 bindPixelBufferToMTL2DTexture:a4 pixelFormat:objc_msgSend(objc_opt_class() plane:"_mtlPixelFormatForBuffer:", a4), 0];
  [v6 updateReferenceTexture:v8 frame:a4];

  return 1;
}

+ (vector<int,)getInlierCountsPerQuad:()vector<int inliers:(std:(SEL)a3 :(void *)a4 allocator<int>> *)result
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

+ (void)recursiveRansacSrcPts:(void *)a3 DstPts:(void *)a4 QuadsMatchingKptsCount:(void *)a5 resultingHomographies:(void *)a6 groups:(void *)a7 inlierRatio:(float)a8 ransacReprojErrorThreshold:(float)a9
{
  if (*(a3 + 1) - *a3 < 8uLL || *(a7 + 1) == *a7 || **a7 >= 2)
  {
    if (*(a5 + 1) != *a5)
    {
      VisionCoreHomography::VisionCoreHomography(&v35);
    }
  }

  else
  {
    *&v12 = a9;
    [a1 _estimateTransformSrcPts:a3 DstPts:a4 ransacReprojErrorThreshold:{a5, a6, v12}];
    [a1 getInlierCountsPerQuad:a5 inliers:&v35.var3];
    v14 = *a5;
    v13 = *(a5 + 1);
    memset(v32, 0, sizeof(v32));
    v15 = v13 - v14;
    if (v15)
    {
      std::vector<BOOL>::__vallocate[abi:ne200100](v32, v15 >> 3);
    }

    v16 = 0;
    v17 = v33;
    v18 = v34;
    v19 = *a5;
    if (v33 != v34)
    {
      v20 = 0;
      v21 = *a5;
      do
      {
        v22 = 1 << v20;
        if ((*v17 / *v21) >= a8)
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

    v24 = *(a5 + 1);
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
          v19 = *a5;
          v24 = *(a5 + 1);
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

+ (id)quadsConformHomographySrcQuads:(id)a3 destQuads:(id)a4 reprojError:(float)a5
{
  v6 = a3;
  v7 = a4;
  std::vector<CGPoint>::vector[abi:ne200100](v17, 4 * [v6 count]);
  std::vector<CGPoint>::vector[abi:ne200100](v16, 4 * [v7 count]);
  std::vector<half>::vector[abi:ne200100](v15, 8 * [v6 count]);
  std::vector<half>::vector[abi:ne200100](v14, 8 * [v7 count]);
  v8 = [v6 count];
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

  [v6 count];
  VisionCoreHomography::VisionCoreHomography(&v10);
}

+ (VisionCoreHomography)_estimateTransformSrcPts:(SEL)a3 DstPts:(void *)a4 ransacReprojErrorThreshold:(void *)a5
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

+ (void)_gatherKeyPtsFromQuadsForSession:(id)a3 minGridFrequency:(int)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v4 = [v37 allSrcPoints];
  v5 = [v37 quadPointCounts];
  v4[1] = *v4;
  v5[1] = *v5;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = [v37 trackedQuads];
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        [v11 boundingBox];
        v13 = v12;
        [v11 boundingBox];
        v9 = v9 + v13 * v14;
      }

      v7 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
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
  v15 = [v37 trackedQuads];
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v16)
  {
    v17 = *v41;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v15);
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
          [v19 generateGridKeypointsWithMaxKeypoints:a4 minGridFrequency:v22];
          v25 = *__p;
        }

        else
        {
          v25 = 0uLL;
          *__p = 0u;
        }

        std::__copy_impl::operator()[abi:ne200100]<half *,half *,std::back_insert_iterator<std::vector<half>>>(v25, *(&v25 + 1), v4);
        v26 = ((__p[1] - __p[0]) >> 1) >> 1;
        v28 = v5[1];
        v27 = v5[2];
        if (v28 >= v27)
        {
          v30 = *v5;
          v31 = v28 - *v5;
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
          v36 = *v5;
          *v5 = 0;
          v5[1] = v29;
          v5[2] = 0;
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

        v5[1] = v29;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v16);
  }
}

@end