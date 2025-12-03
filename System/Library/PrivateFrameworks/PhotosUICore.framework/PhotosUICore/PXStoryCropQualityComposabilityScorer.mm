@interface PXStoryCropQualityComposabilityScorer
- (_PXStoryAutoEditCropScoreInfo)_computeCropScoreForDisplayAsset:(id)asset diptychAspectRatio:(double)ratio triptychAspectRatio:(double)aspectRatio;
- (id).cxx_construct;
- (id)computeComposabilityScoresForDisplayAssets:(id)assets error:(id *)error;
- (id)diagnosticDescription;
@end

@implementation PXStoryCropQualityComposabilityScorer

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (_PXStoryAutoEditCropScoreInfo)_computeCropScoreForDisplayAsset:(id)asset diptychAspectRatio:(double)ratio triptychAspectRatio:(double)aspectRatio
{
  v110 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  [assetCopy acceptableCropRect];
  v92 = v7;
  v93 = v6;
  v9 = v8;
  v11 = v10;
  [assetCopy preferredCropRect];
  v88 = v13;
  v89 = v12;
  v90 = v15;
  v91 = v14;
  v80 = v11;
  v81 = v9;
  [assetCopy faceAreaRect];
  x = v112.origin.x;
  y = v112.origin.y;
  width = v112.size.width;
  height = v112.size.height;
  v20 = MEMORY[0x1E695F050];
  v21 = *MEMORY[0x1E695F050];
  v22 = *(MEMORY[0x1E695F050] + 8);
  v23 = *(MEMORY[0x1E695F050] + 16);
  v24 = *(MEMORY[0x1E695F050] + 24);
  IsNull = CGRectIsNull(v112);
  v26 = 1.0 - (y + height);
  if (IsNull)
  {
    v27 = v21;
  }

  else
  {
    v27 = x;
  }

  if (IsNull)
  {
    v26 = v22;
  }

  v84 = v26;
  v85 = v27;
  if (IsNull)
  {
    v28 = v23;
  }

  else
  {
    v28 = width;
  }

  if (IsNull)
  {
    v29 = v24;
  }

  else
  {
    v29 = height;
  }

  v86 = v29;
  v87 = v28;
  v97 = 0.0;
  [MEMORY[0x1E69C06A0] bestCropRectV2ForAspectRatio:objc_msgSend(assetCopy withFocusRegion:"pixelWidth") sourcePixelWidth:objc_msgSend(assetCopy sourcePixelHeight:"pixelHeight") sourcePreferredCropRectNormalized:&v97 sourceAcceptableCropRectNormalized:ratio sourceFaceAreaRectNormalized:*v20 outputCropScore:{v20[1], v20[2], v20[3], v89, v88, v91, v90, v93, v92, v81, v80, *&v85, *&v84, *&v28, *&v29}];
  v78 = v31;
  v79 = v30;
  v33 = v32;
  v35 = v34;
  v96 = 0.0;
  [MEMORY[0x1E69C06A0] bestCropRectV2ForAspectRatio:objc_msgSend(assetCopy withFocusRegion:"pixelWidth") sourcePixelWidth:objc_msgSend(assetCopy sourcePixelHeight:"pixelHeight") sourcePreferredCropRectNormalized:&v96 sourceAcceptableCropRectNormalized:1.0 / ratio sourceFaceAreaRectNormalized:*v20 outputCropScore:{v20[1], v20[2], v20[3], v89, v88, v91, v90, v93, v92, v81, v80, *&v85, *&v84, *&v87, *&v86}];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = PLStoryGetLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    uuid = [assetCopy uuid];
    v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v33, v79, v78, v35];
    v47 = v97;
    v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v37, v39, v41, v43];
    *buf = 138544642;
    v99 = uuid;
    v100 = 2048;
    aspectRatioCopy = ratio;
    v102 = 2114;
    v103 = v46;
    v104 = 2048;
    v105 = v47;
    v106 = 2114;
    v107 = v48;
    v108 = 2048;
    v109 = v96;
    _os_log_impl(&dword_1A3C1C000, v44, OS_LOG_TYPE_DEBUG, "best crop rect for asset %{public}@ with aspect ratio: %0.3f horizontal crop=%{public}@ score=%0.3f, vertical crop=%{public}@ score=%0.3f", buf, 0x3Eu);
  }

  v95 = 0.0;
  [MEMORY[0x1E69C06A0] bestCropRectV2ForAspectRatio:objc_msgSend(assetCopy withFocusRegion:"pixelWidth") sourcePixelWidth:objc_msgSend(assetCopy sourcePixelHeight:"pixelHeight") sourcePreferredCropRectNormalized:&v95 sourceAcceptableCropRectNormalized:aspectRatio sourceFaceAreaRectNormalized:*v20 outputCropScore:{v20[1], v20[2], v20[3], v89, v88, v91, v90, v93, v92, v81, v80, *&v85, *&v84, *&v87, *&v86}];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v94 = 0.0;
  [MEMORY[0x1E69C06A0] bestCropRectV2ForAspectRatio:objc_msgSend(assetCopy withFocusRegion:"pixelWidth") sourcePixelWidth:objc_msgSend(assetCopy sourcePixelHeight:"pixelHeight") sourcePreferredCropRectNormalized:&v94 sourceAcceptableCropRectNormalized:1.0 / aspectRatio sourceFaceAreaRectNormalized:*v20 outputCropScore:{v20[1], v20[2], v20[3], v89, v88, v91, v90, v93, v92, v81, v80, *&v85, *&v84, *&v87, *&v86}];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = PLStoryGetLog();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    uuid2 = [assetCopy uuid];
    v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v50, v52, v54, v56];
    v68 = v95;
    v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v58, v60, v62, v64];
    *buf = 138544642;
    v99 = uuid2;
    v100 = 2048;
    aspectRatioCopy = aspectRatio;
    v102 = 2114;
    v103 = v67;
    v104 = 2048;
    v105 = v68;
    v106 = 2114;
    v107 = v69;
    v108 = 2048;
    v109 = v94;
    _os_log_impl(&dword_1A3C1C000, v65, OS_LOG_TYPE_DEBUG, "best crop rect for asset %{public}@ with aspect ratio: %0.3f horizontal crop=%{public}@ score=%0.3f, vertical crop=%{public}@ score=%0.3f", buf, 0x3Eu);
  }

  v71 = v95;
  v70 = v96;
  v72 = v97;
  v73 = v94;

  v74 = v70;
  v75 = v72;
  v76 = v73;
  v77 = v71;
  result.var1.var1 = v77;
  result.var1.var0 = v76;
  result.var0.var1 = v75;
  result.var0.var0 = v74;
  return result;
}

- (id)computeComposabilityScoresForDisplayAssets:(id)assets error:(id *)error
{
  assetsCopy = assets;
  v6 = -[PXStoryComposabilityScoresArray initWithCapacity:]([PXStoryComposabilityScoresMutableArray alloc], "initWithCapacity:", [assetsCopy count]);
  v7 = +[PXStorySettings sharedInstance];
  [v7 autoEditDiptychCropAspectMax];
  v9 = v8;
  [v7 autoEditTriptychCropAspectMax];
  v11 = v10;
  p_scores = &self->_scores;
  self->_scores.__end_ = self->_scores.__begin_;
  v13 = [assetsCopy count];
  begin = self->_scores.__begin_;
  if (v13 > self->_scores.__cap_ - begin)
  {
    if (v13 >> 60)
    {
      std::vector<PXStoryAutoEditComposabilityScores>::__throw_length_error[abi:ne200100]();
    }

    v15 = self->_scores.__begin_;
    v16 = (self->_scores.__end_ - v15);
    v17 = (v61 - v16);
    memcpy((v61 - v16), v15, v16);
    v18 = self->_scores.__begin_;
    self->_scores.__begin_ = v17;
    cap = self->_scores.__cap_;
    *&self->_scores.__end_ = v62;
    *&v62 = v18;
    *(&v62 + 1) = cap;
    v60 = v18;
    v61 = v18;
    if (v18)
    {
      operator delete(v18);
    }
  }

  for (i = 0; i < [assetsCopy count]; ++i)
  {
    v21 = [assetsCopy objectAtIndexedSubscript:i];
    [(PXStoryCropQualityComposabilityScorer *)self _computeCropScoreForDisplayAsset:v21 diptychAspectRatio:v9 triptychAspectRatio:v11];
    v26 = v22;
    v27 = v23;
    v28 = v24;
    v29 = v25;
    end = self->_scores.__end_;
    v31 = self->_scores.__cap_;
    if (end >= v31)
    {
      v33 = end - p_scores->__begin_;
      v34 = v33 + 1;
      if ((v33 + 1) >> 60)
      {
        std::vector<PXStoryAutoEditComposabilityScores>::__throw_length_error[abi:ne200100]();
      }

      v35 = v31 - p_scores->__begin_;
      if (v35 >> 3 > v34)
      {
        v34 = v35 >> 3;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF0)
      {
        v36 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v34;
      }

      v37 = v62;
      *v62 = v26;
      v37[1] = v27;
      v37[2] = v28;
      v37[3] = v29;
      *&v62 = v37 + 4;
      v38 = self->_scores.__begin_;
      v39 = (self->_scores.__end_ - v38);
      v40 = (v61 - v39);
      memcpy((v61 - v39), v38, v39);
      v41 = self->_scores.__begin_;
      self->_scores.__begin_ = v40;
      v42 = self->_scores.__cap_;
      v43 = v62;
      *&self->_scores.__end_ = v62;
      *&v62 = v41;
      *(&v62 + 1) = v42;
      v60 = v41;
      v61 = v41;
      if (v41)
      {
        v59 = v43;
        operator delete(v41);
        *&v43 = v59;
      }

      v32 = v43;
    }

    else
    {
      end->var0.var0 = v22;
      end->var0.var1 = v23;
      v32 = end + 1;
      end->var1.var0 = v24;
      end->var1.var1 = v25;
    }

    self->_scores.__end_ = v32;
  }

  v44 = 0;
  v45 = 0;
  v46 = 0.0;
  v47 = 0.0;
  v48 = 0.0;
  for (j = 0.0; ; j = v50)
  {
    v50 = v47;
    v51 = v46;
    if (v45 >= [assetsCopy count])
    {
      break;
    }

    p_var0 = &p_scores->__begin_[v44].var0;
    if (p_var0[1] >= *p_var0)
    {
      v53 = *p_var0;
    }

    else
    {
      v53 = p_var0[1];
    }

    v54 = p_var0[3];
    if (v54 >= p_var0[2])
    {
      v54 = p_var0[2];
    }

    v46 = fminf(fmaxf((v54 + -0.5) * 4.0, 0.0), 1.0);
    if (v45 >= 2)
    {
      LODWORD(v55) = cbrtf((v51 * v48) * v46);
      LODWORD(v56) = sqrtf(v50 * j);
      [(PXStoryComposabilityScoresMutableArray *)v6 addComposabilityScores:v56, v55];
    }

    v47 = fminf(fmaxf((v53 + -0.5) * 4.0, 0.0), 1.0);
    ++v45;
    ++v44;
    v48 = v51;
  }

  if ([assetsCopy count] >= 2)
  {
    *&v57 = sqrtf(v50 * j);
    [(PXStoryComposabilityScoresMutableArray *)v6 addComposabilityScores:v57, 0.0];
  }

  return v6;
}

- (id)diagnosticDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"-- Diptych Crop Score Details --\n"];
  [v3 appendString:@"Idx\tVert.\tHoriz.\tScore\n"];
  begin = self->_scores.__begin_;
  end = self->_scores.__end_;
  if (begin != end)
  {
    v6 = 0;
    do
    {
      var1 = begin->var0.var1;
      if (var1 >= begin->var0.var0)
      {
        var0 = begin->var0.var0;
      }

      else
      {
        var0 = begin->var0.var1;
      }

      [v3 appendFormat:@"%lu\t%0.3f\t%0.3f\t%0.3f\n", v6++, begin->var0.var0, var1, fminf(fmaxf((var0 + -0.5) * 4.0, 0.0), 1.0)];
      ++begin;
    }

    while (begin != end);
  }

  [v3 appendString:@"\n"];
  [v3 appendString:@"-- Triptych Crop Score Details --\n"];
  [v3 appendString:@"Idx\tVert.\tHoriz.\tScore\n"];
  v9 = self->_scores.__begin_;
  v10 = self->_scores.__end_;
  if (v9 != v10)
  {
    v11 = 0;
    do
    {
      v12 = v9->var1.var0;
      v13 = v9->var1.var1;
      if (v13 >= v12)
      {
        v14 = v9->var1.var0;
      }

      else
      {
        v14 = v9->var1.var1;
      }

      [v3 appendFormat:@"%lu\t%0.3f\t%0.3f\t%0.3f\n", v11++, v12, v13, fminf(fmaxf((v14 + -0.5) * 4.0, 0.0), 1.0)];
      ++v9;
    }

    while (v9 != v10);
  }

  [v3 appendString:@"\n"];

  return v3;
}

@end