@interface PUCompositeVideoGenerator
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_overlapDurationBetweenAsset:(SEL)a3 andAsset:(id)a4;
+ ($3EB3F8852E00619D46CABBEC9C374A75)conformRange:(SEL)a3 inRange:(id *)a4;
+ (BOOL)canMergeAsset:(id)a3 withConsecutiveAsset:(id)a4;
- (AVAssetExportSession)exportSession;
- (NSError)error;
- (PUCompositeVideoGenerator)init;
- (PUCompositeVideoGenerator)initWithAssets:(id)a3 outputType:(int64_t)a4 onlyAllowOverlappingAssets:(BOOL)a5 dataCache:(id)a6;
- (PUMergedLivePhotosVideo)playbackVideo;
- (int64_t)state;
- (void)_workQueue_finishWithError:(id)a3;
- (void)_workQueue_finishWithExportSession:(id)a3 error:(id)a4;
- (void)_workQueue_finishWithPlaybackVideo:(id)a3 error:(id)a4;
- (void)_workQueue_generateVideoWithAVAssets:(id)a3;
- (void)_workQueue_generateVideoWithSingleAssetExportSession:(id)a3;
- (void)_workQueue_generateVideoWithSingleAssetPlayerItem:(id)a3;
- (void)_workQueue_start;
- (void)setError:(id)a3;
- (void)setExportSession:(id)a3;
- (void)setPlaybackVideo:(id)a3;
- (void)setState:(int64_t)a3;
- (void)start;
@end

@implementation PUCompositeVideoGenerator

- (void)_workQueue_finishWithError:(id)a3
{
  v4 = a3;
  v3 = v4;
  px_dispatch_on_main_queue();
}

uint64_t __56__PUCompositeVideoGenerator__workQueue_finishWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPlaybackVideo:0];
  [*(a1 + 32) setExportSession:0];
  [*(a1 + 32) setError:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setState:2];
}

- (void)_workQueue_finishWithExportSession:(id)a3 error:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  px_dispatch_on_main_queue();
}

uint64_t __70__PUCompositeVideoGenerator__workQueue_finishWithExportSession_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPlaybackVideo:0];
  [*(a1 + 32) setExportSession:*(a1 + 40)];
  [*(a1 + 32) setError:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 setState:2];
}

- (void)_workQueue_finishWithPlaybackVideo:(id)a3 error:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  px_dispatch_on_main_queue();
}

uint64_t __70__PUCompositeVideoGenerator__workQueue_finishWithPlaybackVideo_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPlaybackVideo:*(a1 + 40)];
  [*(a1 + 32) setExportSession:0];
  [*(a1 + 32) setError:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 setState:2];
}

- (void)_workQueue_generateVideoWithAVAssets:(id)a3
{
  v205 = *MEMORY[0x1E69E9840];
  v162 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v144 = [MEMORY[0x1E696AAA8] currentHandler];
    [v144 handleFailureInMethod:a2 object:self file:@"PUCompositeVideoGenerator.m" lineNumber:366 description:{@"%s must NOT be called on the main thread", "-[PUCompositeVideoGenerator _workQueue_generateVideoWithAVAssets:]"}];
  }

  v5 = PLLivePhotoPlaybackGetLog();
  v6 = [(PUCompositeVideoGenerator *)self assets];
  v7 = os_signpost_id_make_with_pointer(v5, v6);

  v8 = v5;
  v9 = v8;
  v147 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(buf.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CompositeVideoGeneration", "", &buf, 2u);
  }

  spid = v7;
  v146 = v9;

  v10 = [(PUCompositeVideoGenerator *)self assets];
  v11 = [v10 count];

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
  v168 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v11];
  v161 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v11];
  v167 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v11];
  v164 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v11];
  v165 = objc_alloc_init(MEMORY[0x1E6988048]);
  v160 = *MEMORY[0x1E6987608];
  v159 = [v165 addMutableTrackWithMediaType:? preferredTrackID:?];
  v156 = *MEMORY[0x1E69875A0];
  v148 = [v165 addMutableTrackWithMediaType:? preferredTrackID:?];
  v14 = *MEMORY[0x1E695F060];
  v13 = *(MEMORY[0x1E695F060] + 8);
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v155 = self;
  obj = [(PUCompositeVideoGenerator *)self assets];
  v163 = v12;
  v157 = [obj countByEnumeratingWithState:&v189 objects:v204 count:16];
  v15 = 0;
  if (!v157)
  {
    v153 = 0;
    goto LABEL_91;
  }

  v153 = 0;
  v158 = *v190;
  v149 = *(MEMORY[0x1E6960C70] + 12);
  v150 = *(MEMORY[0x1E6960C70] + 16);
  v16 = 0x1E69C0000uLL;
  do
  {
    v17 = 0;
    v18 = v15;
    v19 = v13;
    v20 = v14;
    do
    {
      if (*v190 != v158)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v189 + 1) + 8 * v17);
      v22 = [v162 objectForKeyedSubscript:v21];
      if (!v22)
      {
        goto LABEL_90;
      }

      v23 = v22;
      v24 = [*(v16 + 1800) tracksWithMediaType:v160 forAsset:v22];
      v25 = [v24 firstObject];

      if (!v25)
      {
        v25 = PLLivePhotoPlaybackGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.a) = 138412290;
          *(&buf.a + 4) = v23;
          _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_ERROR, "Encountered an asset with no video track: %@", &buf, 0xCu);
        }

        goto LABEL_89;
      }

      v26 = [*(v16 + 1800) tracksWithMediaType:v156 forAsset:v23];
      v172 = [v26 firstObject];

      v187 = 0uLL;
      v188 = 0.0;
      [v23 duration];
      v185 = 0uLL;
      v186 = 0.0;
      v27 = [v12 lastObject];
      [PUCompositeVideoGenerator _overlapDurationBetweenAsset:v27 andAsset:v21];

      memset(&v184, 0, sizeof(v184));
      v28 = v165;
      if (v165)
      {
        [v165 duration];
      }

      else
      {
        memset(&lhs, 0, 24);
      }

      *&rhs.a = v185;
      rhs.c = v186;
      CMTimeSubtract(&buf, &lhs.start, &rhs);
      v169 = v18;
      if (v21)
      {
        [v21 photoIrisStillDisplayTime];
      }

      else
      {
        memset(&lhs, 0, 24);
      }

      CMTimeAdd(&v184, &buf, &lhs.start);
      [v25 px_transformedNaturalSize];
      v30 = v29;
      v32 = v31;
      memset(&buf, 0, sizeof(buf));
      v166 = *MEMORY[0x1E6960CC0];
      *&lhs.start.value = *MEMORY[0x1E6960CC0];
      v33 = *(MEMORY[0x1E6960CC0] + 16);
      *&lhs.start.epoch = v33;
      *&rhs.a = v187;
      rhs.c = v188;
      CMTimeRangeMake(&buf, &lhs.start, &rhs);
      v13 = v32;
      v14 = v30;
      if ([v12 count])
      {
        *&lhs.start.value = v185;
        *&lhs.start.epoch = v186;
        *&rhs.a = v166;
        rhs.c = v33;
        if (CMTimeCompare(&lhs.start, &rhs) < 1)
        {
          if (-[PUCompositeVideoGenerator onlyAllowOverlappingAssets](v155, "onlyAllowOverlappingAssets") && [v12 count])
          {
            goto LABEL_81;
          }

          v13 = v19;
          v14 = v20;
          goto LABEL_46;
        }

        v151 = v33;
        memset(&rhs, 0, 24);
        if (v169)
        {
          [v169 duration];
        }

        t1.a = *MEMORY[0x1E6960C70];
        LODWORD(t1.b) = *(MEMORY[0x1E6960C70] + 8);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v34 = objc_alloc(MEMORY[0x1E69C45E8]);
          *&lhs.start.value = *&rhs.a;
          lhs.start.epoch = *&rhs.c;
          v35 = CMTimeCopyDescription(0, &lhs.start);
          v202[0] = v35;
          v36 = [v169 URL];
          v202[1] = v36;
          v37 = [v23 URL];
          v202[2] = v37;
          v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v202 count:3];
          v39 = [v34 initWithObjects:v38];

          v154 = v39;
          v40 = [(NSCache *)v155->_dataCache objectForKey:v39];
          v41 = v40;
          v42 = v150;
          flags = v149;
          if (v40)
          {
            [v40 CMTimeValue];
            *&t1.a = lhs.start.value;
            flags = lhs.start.flags;
            LODWORD(t1.b) = lhs.start.timescale;
            v42 = *&lhs.start.epoch;
          }

          v12 = v163;
          v28 = v165;
          if (flags)
          {
            goto LABEL_32;
          }

LABEL_30:
          *&start.a = *&rhs.a;
          start.c = rhs.c;
          [MEMORY[0x1E69C0918] convertTime:&start fromAsset:v169 toAsset:v23];
          *&t1.a = lhs.start.value;
          flags = lhs.start.flags;
          LODWORD(t1.b) = lhs.start.timescale;
          v42 = *&lhs.start.epoch;
          if (v154)
          {
            dataCache = v155->_dataCache;
            lhs.start.value = *&t1.a;
            lhs.start.timescale = LODWORD(t1.b);
            v45 = [MEMORY[0x1E696B098] valueWithCMTime:&lhs];
            v46 = dataCache;
            v28 = v165;
            [(NSCache *)v46 setObject:v45 forKey:v154];

            v12 = v163;
          }
        }

        else
        {
          v154 = 0;
          v42 = v150;
          flags = v149;
          if ((v149 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

LABEL_32:
        if (flags)
        {
          start.a = t1.a;
          *&start.b = __PAIR64__(flags, LODWORD(t1.b));
          start.c = v42;
        }

        else
        {
          *&start.a = v185;
          start.c = v186;
        }

        *&end.start.value = v187;
        *&end.start.epoch = v188;
        CMTimeRangeFromTimeToTime(&lhs, &start, &end.start);
        *&v200 = lhs.start.value;
        DWORD2(v200) = lhs.start.timescale;
        if ((lhs.start.flags & 1) == 0 || (lhs.duration.flags & 1) == 0 || lhs.duration.epoch || lhs.duration.value < 0)
        {
          if ([(PUCompositeVideoGenerator *)v155 onlyAllowOverlappingAssets:*&lhs.start.epoch])
          {
            v59 = PLLivePhotoPlaybackGetLog();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(lhs.start.value) = 0;
              _os_log_impl(&dword_1B36F3000, v59, OS_LOG_TYPE_DEBUG, "Adjusted time range is invalid. Overlapping LP generation will stop.", &lhs, 2u);
            }

LABEL_81:
            v18 = v169;
            goto LABEL_89;
          }
        }

        else
        {
          *&buf.a = v200;
          LODWORD(buf.b) = DWORD2(v200);
          HIDWORD(buf.b) = lhs.start.flags;
          *&buf.c = *&lhs.start.epoch;
          buf.tx = *&lhs.duration.timescale;
          buf.ty = 0.0;
        }

        v13 = v19;
        v14 = v20;
        v33 = v151;
      }

LABEL_46:
      v200 = 0uLL;
      v201 = 0.0;
      if (v28)
      {
        [v28 duration];
      }

      memset(&lhs, 0, sizeof(lhs));
      [v25 timeRange];
      start = buf;
      PXConformCMTimeRangeWithinRange();
      if ((lhs.start.flags & 1) == 0 || (lhs.duration.flags & 1) == 0 || lhs.duration.epoch || lhs.duration.value < 0 || (*&rhs.a = *&lhs.duration.value, *&rhs.c = lhs.duration.epoch, *&start.a = v166, start.c = v33, CMTimeCompare(&rhs, &start) < 1))
      {
        v47 = PLLivePhotoPlaybackGetLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(rhs.a) = 138412290;
          *(&rhs.a + 4) = v25;
          _os_log_impl(&dword_1B36F3000, v47, OS_LOG_TYPE_DEFAULT, "Skipping insertion of video track %@ into merged composition. Nothing to insert.", &rhs, 0xCu);
        }
      }

      else
      {
        v182 = v153;
        rhs = lhs;
        *&start.a = *MEMORY[0x1E6960C70];
        start.c = v150;
        v50 = [v159 insertTimeRange:&rhs ofTrack:v25 atTime:&start error:&v182];
        v51 = v182;

        if ((v50 & 1) == 0)
        {
          v61 = PLLivePhotoPlaybackGetLog();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            rhs = lhs;
            v62 = PXCMTimeRangeDescription();
            LODWORD(rhs.a) = 138412802;
            *(&rhs.a + 4) = v62;
            WORD2(rhs.b) = 2112;
            *(&rhs.b + 6) = v25;
            HIWORD(rhs.c) = 2112;
            *&rhs.d = v51;
            _os_log_impl(&dword_1B36F3000, v61, OS_LOG_TYPE_ERROR, "Unable to insert time range %@ of video track %@ into merged composition. Error: %@", &rhs, 0x20u);

            v12 = v163;
          }

          v18 = v169;
LABEL_88:

          v153 = v51;
          v19 = v13;
          v20 = v14;
LABEL_89:

LABEL_90:
          v15 = v18;
          v13 = v19;
          v14 = v20;
          goto LABEL_91;
        }

        v153 = v51;
      }

      v16 = 0x1E69C0000;
      if (v172)
      {
        memset(&rhs, 0, sizeof(rhs));
        [v172 timeRange];
        end = buf;
        PXConformCMTimeRangeWithinRange();
        [v25 timeRange];
        t1 = rhs;
        PXConformCMTimeRangeWithinRange();
        rhs = start;
        if ((BYTE4(start.b) & 1) == 0 || (BYTE4(rhs.tx) & 1) == 0 || *&rhs.ty || (*&rhs.d & 0x8000000000000000) != 0 || (*&start.a = *&rhs.d, start.c = rhs.ty, *&end.start.value = v166, *&end.start.epoch = v33, CMTimeCompare(&start, &end.start) < 1))
        {
          v48 = PLLivePhotoPlaybackGetLog();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(start.a) = 138412290;
            *(&start.a + 4) = v172;
            _os_log_impl(&dword_1B36F3000, v48, OS_LOG_TYPE_DEFAULT, "Skipping insertion of audio track %@ into merged composition. Nothing to insert.", &start, 0xCu);
          }
        }

        else
        {
          v180 = v153;
          start = rhs;
          *&end.start.value = *MEMORY[0x1E6960C70];
          *&end.start.epoch = v150;
          v57 = [v148 insertTimeRange:&start ofTrack:v172 atTime:&end error:&v180];
          v51 = v180;

          if ((v57 & 1) == 0)
          {
            v63 = PLLivePhotoPlaybackGetLog();
            v18 = v169;
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              start = rhs;
              v64 = PXCMTimeRangeDescription();
              LODWORD(start.a) = 138412802;
              *(&start.a + 4) = v64;
              WORD2(start.b) = 2112;
              *(&start.b + 6) = v172;
              HIWORD(start.c) = 2112;
              *&start.d = v51;
              _os_log_impl(&dword_1B36F3000, v63, OS_LOG_TYPE_ERROR, "Unable to insert time range %@ of audio track %@ into merged composition. Error: %@", &start, 0x20u);

              v12 = v163;
            }

            goto LABEL_88;
          }

          v153 = v51;
        }

        v49 = v169;
        v16 = 0x1E69C0000;
      }

      else
      {
        v49 = v169;
      }

      [v12 addObject:v21];
      v15 = v23;

      *&rhs.a = v200;
      rhs.c = v201;
      v52 = [MEMORY[0x1E696B098] valueWithCMTime:&rhs];
      [v168 setObject:v52 forKeyedSubscript:v21];

      *&rhs.a = *&v184.value;
      *&rhs.c = v184.epoch;
      v53 = [MEMORY[0x1E696B098] valueWithCMTime:&rhs];
      [v161 setObject:v53 forKeyedSubscript:v21];

      v54 = [MEMORY[0x1E696B098] valueWithCGSize:{v30, v32}];
      [v164 setObject:v54 forKeyedSubscript:v21];

      memset(&rhs, 0, sizeof(rhs));
      [v25 px_preferredTransformBasedOnNaturalSize];
      v55 = fmax(v14 / v30, v13 / v32);
      CGAffineTransformMakeScale(&end, v55, v55);
      t1 = rhs;
      CGAffineTransformConcat(&start, &t1, &end);
      rhs = start;
      v56 = [MEMORY[0x1E696B098] valueWithCGAffineTransform:&start];
      [v167 setObject:v56 forKeyedSubscript:v21];

      ++v17;
      v18 = v15;
      v19 = v13;
      v20 = v14;
    }

    while (v157 != v17);
    v58 = [obj countByEnumeratingWithState:&v189 objects:v204 count:16];
    v157 = v58;
  }

  while (v58);
LABEL_91:

  if (![v12 count] || v153)
  {
    v68 = PLLivePhotoPlaybackGetLog();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.a) = 138412290;
      *(&buf.a + 4) = v153;
      _os_log_impl(&dword_1B36F3000, v68, OS_LOG_TYPE_ERROR, "Unable to generate merged live photo video with error: %@", &buf, 0xCu);
    }

    if ([(PUCompositeVideoGenerator *)v155 outputType])
    {
      goto LABEL_179;
    }

    v69 = [(PUCompositeVideoGenerator *)v155 assets];
    v70 = [v69 firstObject];

    v71 = [v162 objectForKeyedSubscript:v70];
    v72 = [v161 objectForKeyedSubscript:v70];
    v73 = [(PUCompositeVideoGenerator *)v155 assets];
    v74 = [v73 firstObject];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    v77 = v163;

    if (v75 && v71 && v72)
    {
      v173 = v72;
      v78 = PLLivePhotoPlaybackGetLog();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v79 = [(PUCompositeVideoGenerator *)v155 assets];
        v80 = [v79 firstObject];
        LODWORD(buf.a) = 138412290;
        *(&buf.a + 4) = v80;
        _os_log_impl(&dword_1B36F3000, v78, OS_LOG_TYPE_ERROR, "Attempting fallback to first asset: %@", &buf, 0xCu);

        v77 = v163;
      }

      v81 = fabs([v70 pixelWidth] / objc_msgSend(v70, "pixelHeight"));
      v82 = [v77 firstObject];
      v83 = [v162 objectForKeyedSubscript:v82];
      v84 = v83;
      if (v83)
      {
        v170 = [v83 pu_supportsVitality] ^ 1;
      }

      else
      {
        v170 = 0;
      }

      v136 = [PUMergedLivePhotosVideo alloc];
      v195 = v75;
      v137 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v195 count:1];
      *&buf.a = *MEMORY[0x1E6960CC0];
      buf.c = *(MEMORY[0x1E6960CC0] + 16);
      [MEMORY[0x1E696B098] valueWithCMTime:&buf];
      v139 = v138 = v75;
      v194 = v139;
      v140 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v194 count:1];
      v72 = v173;
      v193 = v173;
      v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v193 count:1];
      v85 = [(PUMergedLivePhotosVideo *)v136 initWithAssets:v137 startTimes:v140 keyTimes:v141 videoAsset:v71 videoComposition:0 videoAspectRatio:v170 options:v81];

      v75 = v138;
      [(PUCompositeVideoGenerator *)v155 _workQueue_finishWithPlaybackVideo:v85 error:0];
LABEL_176:

      goto LABEL_177;
    }

    if (v75)
    {
      v85 = &stru_1F2AC6818;
      if (v71)
      {
LABEL_114:
        if (!v72)
        {
          v87 = [(__CFString *)v85 stringByAppendingString:@" (key time is nil) "];

          v85 = v87;
        }

        if (![(__CFString *)v85 length])
        {

          v85 = @"UNKNOWN";
        }

        v88 = PLLivePhotoPlaybackGetLog();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          v89 = [(PUCompositeVideoGenerator *)v155 assets];
          v90 = [v89 firstObject];
          LODWORD(buf.a) = 138412546;
          *(&buf.a + 4) = v90;
          WORD2(buf.b) = 2112;
          *(&buf.b + 6) = v85;
          _os_log_impl(&dword_1B36F3000, v88, OS_LOG_TYPE_ERROR, "Unable to fallback to first asset: %@. Reason: %@", &buf, 0x16u);
        }

        [(PUCompositeVideoGenerator *)v155 _workQueue_finishWithError:v153];
        goto LABEL_176;
      }
    }

    else
    {
      v85 = [&stru_1F2AC6818 stringByAppendingString:@" (PHAsset is nil) "];
      if (v71)
      {
        goto LABEL_114;
      }
    }

    v86 = [(__CFString *)v85 stringByAppendingString:@" (AVAsset is nil) "];

    v85 = v86;
    goto LABEL_114;
  }

  if ([v12 count] < 2)
  {
    v76 = 1;
  }

  else
  {
    v65 = [v12 lastObject];
    memset(&buf, 0, sizeof(buf));
    v66 = [v167 objectForKeyedSubscript:v65];
    v67 = v66;
    if (v66)
    {
      [v66 CGAffineTransformValue];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    v91 = [v164 objectForKeyedSubscript:v65];
    [v91 CGSizeValue];
    v93 = v92;
    v95 = v94;

    if ([v12 count] == 1)
    {
LABEL_133:
      v76 = 1;
    }

    else
    {
      v96 = 0;
      while (1)
      {
        v97 = [v12 objectAtIndexedSubscript:v96];
        memset(&lhs, 0, sizeof(lhs));
        v98 = [v167 objectForKeyedSubscript:v97];
        v99 = v98;
        if (v98)
        {
          [v98 CGAffineTransformValue];
        }

        else
        {
          memset(&lhs, 0, sizeof(lhs));
        }

        v100 = [v164 objectForKeyedSubscript:v97];
        [v100 CGSizeValue];
        v102 = v101;
        v104 = v103;

        rhs = lhs;
        start = buf;
        if (!CGAffineTransformEqualToTransform(&rhs, &start))
        {
          break;
        }

        v76 = v104 == v95 && v102 == v93;

        if (!v76)
        {
          goto LABEL_135;
        }

        ++v96;
        v12 = v163;
        if (v96 >= [v163 count] - 1)
        {
          goto LABEL_133;
        }
      }

      v76 = 0;
    }

LABEL_135:
  }

  v105 = PLLivePhotoPlaybackGetLog();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
  {
    v106 = @"false";
    if (v76)
    {
      v106 = @"true";
    }

    LODWORD(buf.a) = 138412290;
    *(&buf.a + 4) = v106;
    _os_log_impl(&dword_1B36F3000, v105, OS_LOG_TYPE_DEBUG, "Assets have same size and transform: %@", &buf, 0xCu);
  }

  if (v76)
  {
    v12 = v163;
    v107 = [v163 firstObject];
    v108 = [v167 objectForKeyedSubscript:v107];
    v109 = v108;
    if (v108)
    {
      [v108 CGAffineTransformValue];
    }

    else
    {
      memset(&v179, 0, sizeof(v179));
    }

    buf = v179;
    [v159 setPreferredTransform:&buf];
    v70 = 0;
  }

  else
  {
    v12 = v163;
    v107 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v163, "count")}];
    if ([v163 count])
    {
      v110 = 1;
      v174 = *MEMORY[0x1E6960CC0];
      v171 = *(MEMORY[0x1E6960CC0] + 16);
      v111 = v107;
      do
      {
        v112 = [v12 objectAtIndexedSubscript:v110 - 1];
        if (v110 >= [v12 count])
        {
          v113 = 0;
        }

        else
        {
          v113 = [v12 objectAtIndexedSubscript:v110];
        }

        v114 = [MEMORY[0x1E6988070] videoCompositionLayerInstructionWithAssetTrack:v159];
        memset(&buf, 0, sizeof(buf));
        v115 = [v167 objectForKeyedSubscript:v112];
        v116 = v115;
        if (v115)
        {
          [v115 CGAffineTransformValue];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        lhs = buf;
        *&rhs.a = v174;
        rhs.c = v171;
        [v114 setTransform:&lhs atTime:&rhs];
        memset(&rhs, 0, 24);
        v117 = [v168 objectForKeyedSubscript:v112];
        v118 = v117;
        if (v117)
        {
          [v117 CMTimeValue];
        }

        else
        {
          memset(&rhs, 0, 24);
        }

        memset(&start, 0, 24);
        if (v113)
        {
          v119 = [v168 objectForKeyedSubscript:v113];
          v120 = v119;
          if (v119)
          {
            [v119 CMTimeValue];
          }

          else
          {
            memset(&start, 0, 24);
          }
        }

        else
        {
          *&start.a = *MEMORY[0x1E6960C88];
          start.c = *(MEMORY[0x1E6960C88] + 16);
        }

        *&end.start.value = *&rhs.a;
        end.start.epoch = *&rhs.c;
        CMTimeConvertScale(&lhs.start, &end.start, 600, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        *&rhs.a = *&lhs.start.value;
        *&rhs.c = lhs.start.epoch;
        *&end.start.value = *&start.a;
        end.start.epoch = *&start.c;
        CMTimeConvertScale(&lhs.start, &end.start, 600, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        *&start.a = *&lhs.start.value;
        *&start.c = lhs.start.epoch;
        v121 = [MEMORY[0x1E6988068] videoCompositionInstruction];
        v196 = v114;
        v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v196 count:1];
        [v121 setLayerInstructions:v122];

        *&lhs.start.value = *&rhs.a;
        lhs.start.epoch = *&rhs.c;
        *&end.start.value = *&start.a;
        end.start.epoch = *&start.c;
        CMTimeRangeFromTimeToTime(&v178, &lhs.start, &end.start);
        lhs = v178;
        [v121 setTimeRange:&lhs];
        v107 = v111;
        [v111 addObject:v121];

        v12 = v163;
      }

      while (v110++ < [v163 count]);
    }

    v70 = [MEMORY[0x1E6988060] videoComposition];
    [v70 setRenderSize:{v14, v13}];
    CMTimeMake(&v177, 1, 30);
    *&buf.a = v177;
    [v70 setFrameDuration:&buf];
    v109 = [v107 copy];
    [v70 setInstructions:v109];
  }

  v124 = [(PUCompositeVideoGenerator *)v155 outputType];
  if (v124 == 1)
  {
    v132 = objc_alloc(MEMORY[0x1E6987E60]);
    v133 = [v165 copy];
    v71 = [v132 initWithAsset:v133 presetName:*MEMORY[0x1E69872D8]];

    v134 = [v70 copy];
    [v71 setVideoComposition:v134];

    [(PUCompositeVideoGenerator *)v155 _workQueue_finishWithExportSession:v71 error:0];
    goto LABEL_177;
  }

  if (!v124)
  {
    v176 = v168;
    v125 = PXMap();
    v175 = v161;
    v126 = PXMap();
    v127 = fabs(v14 / v13);
    v128 = [v163 firstObject];
    v129 = [v162 objectForKeyedSubscript:v128];
    v130 = v129;
    if (v129)
    {
      v131 = [v129 pu_supportsVitality] ^ 1;
    }

    else
    {
      v131 = 0;
    }

    v135 = [[PUMergedLivePhotosVideo alloc] initWithAssets:v163 startTimes:v125 keyTimes:v126 videoAsset:v165 videoComposition:v70 videoAspectRatio:v131 options:v127];
    [(PUCompositeVideoGenerator *)v155 _workQueue_finishWithPlaybackVideo:v135 error:0];

    v71 = v176;
LABEL_177:

    v12 = v163;
  }

LABEL_179:
  v142 = v146;
  v143 = v142;
  if (v147 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v142))
  {
    LOWORD(buf.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v143, OS_SIGNPOST_INTERVAL_END, spid, "CompositeVideoGeneration", "", &buf, 2u);
  }
}

- (void)_workQueue_generateVideoWithSingleAssetExportSession:(id)a3
{
  v5 = MEMORY[0x1E696AF00];
  v6 = a3;
  if ([v5 isMainThread])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUCompositeVideoGenerator.m" lineNumber:347 description:{@"%s must NOT be called on the main thread", "-[PUCompositeVideoGenerator _workQueue_generateVideoWithSingleAssetExportSession:]"}];
  }

  v7 = PLLivePhotoPlaybackGetLog();
  v8 = [(PUCompositeVideoGenerator *)self assets];
  v9 = os_signpost_id_make_with_pointer(v7, v8);

  v10 = v7;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CompositeVideoGeneration", "", buf, 2u);
  }

  v12 = [v6 asset];
  v13 = [v12 metadata];
  v14 = PXFilter();
  [v6 setMetadata:v14];

  [(PUCompositeVideoGenerator *)self _workQueue_finishWithExportSession:v6 error:0];
  v15 = v11;
  v16 = v15;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v16, OS_SIGNPOST_INTERVAL_END, v9, "CompositeVideoGeneration", "", v18, 2u);
  }
}

uint64_t __82__PUCompositeVideoGenerator__workQueue_generateVideoWithSingleAssetExportSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 keySpace];
  if ([v3 isEqualToString:*MEMORY[0x1E6987850]])
  {
    v4 = [v2 key];
    v5 = [v4 isEqual:*MEMORY[0x1E6987890]] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_workQueue_generateVideoWithSingleAssetPlayerItem:(id)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PUCompositeVideoGenerator.m" lineNumber:330 description:{@"%s must NOT be called on the main thread", "-[PUCompositeVideoGenerator _workQueue_generateVideoWithSingleAssetPlayerItem:]"}];
  }

  v6 = PLLivePhotoPlaybackGetLog();
  v7 = [(PUCompositeVideoGenerator *)self assets];
  v8 = os_signpost_id_make_with_pointer(v6, v7);

  v9 = v6;
  v10 = v9;
  v30 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CompositeVideoGeneration", "", buf, 2u);
  }

  spid = v8;

  v31 = self;
  v11 = [(PUCompositeVideoGenerator *)self assets];
  v12 = [v11 objectAtIndexedSubscript:0];

  *buf = *MEMORY[0x1E6960CC0];
  v33 = *(MEMORY[0x1E6960CC0] + 16);
  v13 = [MEMORY[0x1E696B098] valueWithCMTime:buf];
  v36[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];

  v15 = MEMORY[0x1E696B098];
  if (v12)
  {
    [v12 photoIrisStillDisplayTime];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
    v33 = 0;
  }

  v16 = [v15 valueWithCMTime:buf];
  v35 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];

  v18 = [v5 asset];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 pu_supportsVitality] ^ 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = [PUMergedLivePhotosVideo alloc];
  v34 = v12;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v23 = [v5 asset];
  v24 = [v5 videoComposition];
  [v12 aspectRatio];
  v25 = [(PUMergedLivePhotosVideo *)v21 initWithAssets:v22 startTimes:v14 keyTimes:v17 videoAsset:v23 videoComposition:v24 videoAspectRatio:v20 options:?];

  [(PUCompositeVideoGenerator *)v31 _workQueue_finishWithPlaybackVideo:v25 error:0];
  v26 = v10;
  v27 = v26;
  if (v30 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v27, OS_SIGNPOST_INTERVAL_END, spid, "CompositeVideoGeneration", "", buf, 2u);
  }
}

- (void)_workQueue_start
{
  v69 = *MEMORY[0x1E69E9840];
  if (![(PUCompositeVideoGenerator *)self state])
  {
    [(PUCompositeVideoGenerator *)self setState:1];
    v40 = self;
    objc_initWeak(&location, self);
    group = self->_videoAssetsByAssetGroup;
    ptr = [(PUCompositeVideoGenerator *)self assets];
    v3 = PLLivePhotoPlaybackGetLog();
    v4 = os_signpost_id_make_with_pointer(v3, ptr);
    v5 = v3;
    v6 = v5;
    spid = v4;
    v37 = v5;
    if ((v4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {

      v7 = v37;
      v9 = v37;
    }

    else
    {
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CompositeVideoGenerationProcessing", "", buf, 2u);
      }

      v7 = v37;
      v8 = v37;
      if (os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CompositeVideoFetches", "", buf, 2u);
      }
    }

    v41 = objc_alloc_init(MEMORY[0x1E6978B18]);
    [v41 setVideoComplementAllowed:1];
    [v41 setStreamingAllowed:0];
    [v41 setNetworkAccessAllowed:1];
    if ([ptr count] == 1)
    {
      v10 = [(PUCompositeVideoGenerator *)v40 outputType];
      if (v10)
      {
        if (v10 == 1)
        {
          v11 = [MEMORY[0x1E6978860] defaultManager];
          v12 = [ptr objectAtIndexedSubscript:0];
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __45__PUCompositeVideoGenerator__workQueue_start__block_invoke_214;
          v58[3] = &unk_1E7B7EA70;
          v58[4] = v40;
          v59 = v37;
          v60[1] = v4;
          objc_copyWeak(v60, &location);
          [v11 requestExportSessionForVideo:v12 options:v41 exportPreset:*MEMORY[0x1E6987338] resultHandler:v58];

          objc_destroyWeak(v60);
        }
      }

      else
      {
        [v41 setDownloadIntent:3];
        [v41 setDownloadPriority:0];
        v30 = [ptr objectAtIndexedSubscript:0];
        v31 = [MEMORY[0x1E6978860] defaultManager];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __45__PUCompositeVideoGenerator__workQueue_start__block_invoke;
        v61[3] = &unk_1E7B7EA48;
        v32 = v30;
        v62 = v32;
        v63 = v40;
        v64 = v37;
        v65[1] = v4;
        objc_copyWeak(v65, &location);
        [v31 requestPlayerItemForVideo:v32 options:v41 resultHandler:v61];

        objc_destroyWeak(v65);
      }
    }

    else if ([ptr count] < 2)
    {
      v27 = v37;
      v28 = v27;
      if ((v4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {

        v33 = v28;
      }

      else
      {
        if (os_signpost_enabled(v27))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B36F3000, v28, OS_SIGNPOST_INTERVAL_END, v4, "CompositeVideoFetches", "", buf, 2u);
        }

        v29 = v28;
        if (os_signpost_enabled(v29))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B36F3000, v29, OS_SIGNPOST_INTERVAL_END, v4, "CompositeVideoGenerationProcessing", "", buf, 2u);
        }
      }

      v34 = [MEMORY[0x1E696ABC0] px_errorWithDomain:*MEMORY[0x1E69C48A8] code:-1 debugDescription:@"Unable to generate merged live photo video because self.assets.count == 0"];
      v35 = objc_loadWeakRetained(&location);
      [v35 _workQueue_finishWithError:v34];
    }

    else
    {
      if ([(PUCompositeVideoGenerator *)v40 outputType]== 1)
      {
        [v41 setDeliveryMode:1];
      }

      v13 = objc_alloc(MEMORY[0x1E695DF90]);
      v14 = [(PUCompositeVideoGenerator *)v40 assets];
      v15 = [v13 initWithCapacity:{objc_msgSend(v14, "count")}];

      v16 = objc_alloc(MEMORY[0x1E695DF90]);
      v17 = [(PUCompositeVideoGenerator *)v40 assets];
      v18 = [v16 initWithCapacity:{objc_msgSend(v17, "count")}];

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      obj = ptr;
      v19 = [obj countByEnumeratingWithState:&v54 objects:v68 count:16];
      if (v19)
      {
        v20 = *v55;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v55 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v54 + 1) + 8 * i);
            dispatch_group_enter(group);
            v23 = [MEMORY[0x1E6978860] defaultManager];
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = __45__PUCompositeVideoGenerator__workQueue_start__block_invoke_218;
            v50[3] = &unk_1E7B7EAC0;
            v50[4] = v40;
            v50[5] = v22;
            v51 = v15;
            v52 = v18;
            v53 = group;
            [v23 requestAVAssetForVideo:v22 options:v41 resultHandler:v50];
          }

          v19 = [obj countByEnumeratingWithState:&v54 objects:v68 count:16];
        }

        while (v19);
      }

      workQueue = v40->_workQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__PUCompositeVideoGenerator__workQueue_start__block_invoke_3;
      block[3] = &unk_1E7B7EAE8;
      v44 = v37;
      v45 = v40;
      v49[1] = spid;
      v46 = v15;
      v47 = obj;
      v25 = v15;
      objc_copyWeak(v49, &location);
      v48 = v18;
      v26 = v18;
      dispatch_group_notify(group, workQueue, block);

      objc_destroyWeak(v49);
    }

    objc_destroyWeak(&location);
  }
}

void __45__PUCompositeVideoGenerator__workQueue_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E6978AB0];
  v21 = a3;
  v22 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v9 = [v5 protectImageManagerResult:v8 outVideoItem:&v22 infoDictionary:v7 outInfoDictionary:&v21 forVideoRequestFromAsset:v6 requestAnalysisIfUnprocessed:0];
  v10 = v22;

  v11 = v21;
  v12 = *(*(a1 + 40) + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PUCompositeVideoGenerator__workQueue_start__block_invoke_2;
  block[3] = &unk_1E7B7EA20;
  v13 = *(a1 + 48);
  v20[1] = *(a1 + 64);
  v17 = v13;
  v18 = v10;
  v14 = v10;
  objc_copyWeak(v20, (a1 + 56));
  v19 = v11;
  v15 = v11;
  dispatch_async(v12, block);

  objc_destroyWeak(v20);
}

void __45__PUCompositeVideoGenerator__workQueue_start__block_invoke_214(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PUCompositeVideoGenerator__workQueue_start__block_invoke_2_215;
  block[3] = &unk_1E7B7EA20;
  v8 = *(a1 + 40);
  v15[1] = *(a1 + 56);
  v12 = v8;
  v13 = v5;
  v9 = v5;
  objc_copyWeak(v15, (a1 + 48));
  v14 = v6;
  v10 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(v15);
}

void __45__PUCompositeVideoGenerator__workQueue_start__block_invoke_218(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (![*(a1 + 32) outputType])
  {
    v22 = v7;
    v23 = v6;
    v8 = [MEMORY[0x1E6978AB0] protectImageManagerResult:v6 outVideoItem:&v23 infoDictionary:v7 outInfoDictionary:&v22 forVideoRequestFromAsset:*(a1 + 40) requestAnalysisIfUnprocessed:0];
    v9 = v23;

    v10 = v22;
    v6 = v9;
    v7 = v10;
  }

  v11 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PUCompositeVideoGenerator__workQueue_start__block_invoke_2_219;
  block[3] = &unk_1E7B7EA98;
  v17 = v6;
  v12 = *(a1 + 48);
  v13 = *(a1 + 40);
  v18 = v12;
  v19 = v13;
  v20 = *(a1 + 56);
  v21 = v7;
  v14 = v7;
  v15 = v6;
  dispatch_async(v11, block);
  dispatch_group_leave(*(a1 + 64));
}

void __45__PUCompositeVideoGenerator__workQueue_start__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 80);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CompositeVideoFetches", "", buf, 2u);
  }

  if ([*(a1 + 40) outputType] == 1 && (v5 = objc_msgSend(*(a1 + 48), "count"), v5 == objc_msgSend(*(a1 + 56), "count")) || !objc_msgSend(*(a1 + 40), "outputType") && objc_msgSend(*(a1 + 48), "count") && (v12 = *(a1 + 48), objc_msgSend(*(a1 + 56), "objectAtIndexedSubscript:", 0), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKeyedSubscript:", v13), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v11 = [*(a1 + 48) copy];
    [WeakRetained _workQueue_generateVideoWithAVAssets:v11];
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E69C48A8];
    v8 = [*(a1 + 64) allValues];
    v9 = [v8 firstObject];
    WeakRetained = [v6 px_errorWithDomain:v7 code:-1 underlyingError:v9 debugDescription:@"Unable to generate merged live photo video because some or all of the assets can't be loaded."];

    v11 = objc_loadWeakRetained((a1 + 72));
    [v11 _workQueue_finishWithError:WeakRetained];
  }

  v15 = *(a1 + 32);
  v16 = v15;
  v17 = *(a1 + 80);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v16, OS_SIGNPOST_INTERVAL_END, v17, "CompositeVideoGenerationProcessing", "", v18, 2u);
  }
}

void __45__PUCompositeVideoGenerator__workQueue_start__block_invoke_2_219(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    [v2 setObject:? forKeyedSubscript:?];
  }

  else
  {
    v3 = [*(a1 + 64) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    [*(a1 + 56) setObject:v3 forKeyedSubscript:*(a1 + 48)];
  }
}

void __45__PUCompositeVideoGenerator__workQueue_start__block_invoke_2_215(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CompositeVideoFetches", "", buf, 2u);
  }

  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (v5)
  {
    [WeakRetained _workQueue_generateVideoWithSingleAssetExportSession:*(a1 + 40)];
  }

  else
  {
    v8 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    [v7 _workQueue_finishWithError:v8];
  }

  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 64);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CompositeVideoGenerationProcessing", "", v12, 2u);
  }
}

void __45__PUCompositeVideoGenerator__workQueue_start__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CompositeVideoFetches", "", buf, 2u);
  }

  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (v5)
  {
    [WeakRetained _workQueue_generateVideoWithSingleAssetPlayerItem:*(a1 + 40)];
  }

  else
  {
    v8 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    [v7 _workQueue_finishWithError:v8];
  }

  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 64);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CompositeVideoGenerationProcessing", "", v12, 2u);
  }
}

- (void)setError:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__PUCompositeVideoGenerator_setError___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (void)setExportSession:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PUCompositeVideoGenerator_setExportSession___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (void)setPlaybackVideo:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PUCompositeVideoGenerator_setPlaybackVideo___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (void)setState:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__PUCompositeVideoGenerator_setState___block_invoke;
  v3[3] = &unk_1E7B7E9F8;
  v3[4] = self;
  v3[5] = a3;
  [(PUCompositeVideoGenerator *)self performChanges:v3];
}

void __38__PUCompositeVideoGenerator_setState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PUCompositeVideoGenerator_setState___block_invoke_2;
  block[3] = &unk_1E7B7E9D0;
  v6 = *(a1 + 40);
  block[5] = &v8;
  block[6] = v6;
  block[4] = v4;
  dispatch_sync(v5, block);
  if (*(v9 + 24) == 1)
  {
    [*(a1 + 32) signalChange:1];
  }

  _Block_object_dispose(&v8, 8);
}

void *__38__PUCompositeVideoGenerator_setState___block_invoke_2(void *result)
{
  v1 = result[6];
  *(*(result[5] + 8) + 24) = v1 != *(result[4] + 112);
  *(result[4] + 112) = v1;
  return result;
}

- (void)start
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__PUCompositeVideoGenerator_start__block_invoke;
  v4[3] = &unk_1E7B80638;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __34__PUCompositeVideoGenerator_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _workQueue_start];
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__86915;
  v10 = __Block_byref_object_dispose__86916;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PUCompositeVideoGenerator_error__block_invoke;
  v5[3] = &unk_1E7B800C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (AVAssetExportSession)exportSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__86915;
  v10 = __Block_byref_object_dispose__86916;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PUCompositeVideoGenerator_exportSession__block_invoke;
  v5[3] = &unk_1E7B800C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (PUMergedLivePhotosVideo)playbackVideo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__86915;
  v10 = __Block_byref_object_dispose__86916;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PUCompositeVideoGenerator_playbackVideo__block_invoke;
  v5[3] = &unk_1E7B800C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PUCompositeVideoGenerator_state__block_invoke;
  v5[3] = &unk_1E7B800C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (PUCompositeVideoGenerator)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUCompositeVideoGenerator.m" lineNumber:75 description:{@"%s is not available as initializer", "-[PUCompositeVideoGenerator init]"}];

  abort();
}

- (PUCompositeVideoGenerator)initWithAssets:(id)a3 outputType:(int64_t)a4 onlyAllowOverlappingAssets:(BOOL)a5 dataCache:(id)a6
{
  v10 = a3;
  v11 = a6;
  v25.receiver = self;
  v25.super_class = PUCompositeVideoGenerator;
  v12 = [(PUCompositeVideoGenerator *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataCache, a6);
    v13->_outputType = a4;
    v13->_onlyAllowOverlappingAssets = a5;
    v14 = [v10 copy];
    assets = v13->_assets;
    v13->_assets = v14;

    v16 = dispatch_group_create();
    videoAssetsByAssetGroup = v13->_videoAssetsByAssetGroup;
    v13->_videoAssetsByAssetGroup = v16;

    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v19 = dispatch_queue_create("com.apple.photos.composite-video-generator.state", v18);
    stateQueue = v13->_stateQueue;
    v13->_stateQueue = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(v18, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("com.apple.photos.composite-video-generator.work", v21);
    workQueue = v13->_workQueue;
    v13->_workQueue = v22;
  }

  return v13;
}

+ ($3EB3F8852E00619D46CABBEC9C374A75)conformRange:(SEL)a3 inRange:(id *)a4
{
  if (a5->var0.var1 <= a5->var1.var1)
  {
    var1 = a5->var1.var1;
  }

  else
  {
    var1 = a5->var0.var1;
  }

  memset(&v19, 0, sizeof(v19));
  *&time.start.value = *&a4->var0.var0;
  time.start.epoch = a4->var0.var3;
  CMTimeConvertScale(&v19, &time.start, var1, kCMTimeRoundingMethod_RoundAwayFromZero);
  memset(&v18, 0, sizeof(v18));
  *&time.start.value = *&a4->var1.var0;
  time.start.epoch = a4->var1.var3;
  CMTimeConvertScale(&v18, &time.start, var1, kCMTimeRoundingMethod_RoundTowardZero);
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  time.start = v19;
  duration.start = v18;
  CMTimeRangeMake(retstr, &time.start, &duration.start);
  v9 = *&a5->var0.var3;
  *&time.start.value = *&a5->var0.var0;
  *&time.start.epoch = v9;
  *&time.duration.timescale = *&a5->var1.var1;
  v10 = *&retstr->var0.var3;
  *&duration.start.value = *&retstr->var0.var0;
  *&duration.start.epoch = v10;
  *&duration.duration.timescale = *&retstr->var1.var1;
  result = CMTimeRangeContainsTimeRange(&time, &duration);
  if (!result)
  {
    v12 = *&a5->var0.var3;
    *&duration.start.value = *&a5->var0.var0;
    *&duration.start.epoch = v12;
    *&duration.duration.timescale = *&a5->var1.var1;
    v13 = *&retstr->var0.var3;
    *&v15.start.value = *&retstr->var0.var0;
    *&v15.start.epoch = v13;
    *&v15.duration.timescale = *&retstr->var1.var1;
    result = CMTimeRangeGetIntersection(&time, &duration, &v15);
    v14 = *&time.start.epoch;
    *&retstr->var0.var0 = *&time.start.value;
    *&retstr->var0.var3 = v14;
    *&retstr->var1.var1 = *&time.duration.timescale;
  }

  return result;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_overlapDurationBetweenAsset:(SEL)a3 andAsset:(id)a4
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v7 creationDate];
    v11 = [v9 creationDate];
    if ([v7 playbackStyle] == 3)
    {
      v12 = [v9 playbackStyle];
      v13 = [v10 compare:v11];
      if (v12 == 3 && v13 == -1)
      {
        memset(&v34, 0, sizeof(v34));
        [v11 timeIntervalSinceDate:v10];
        CMTimeMakeWithSeconds(&v34, v14, 600);
        v32 = 0uLL;
        v33 = 0;
        [v7 photoIrisStillDisplayTime];
        v30 = 0uLL;
        v31 = 0;
        [v7 photoIrisVideoDuration];
        v28 = 0uLL;
        v29 = 0;
        [v9 photoIrisStillDisplayTime];
        v26 = 0uLL;
        v27 = 0;
        [v9 photoIrisVideoDuration];
        memset(&v25, 0, sizeof(v25));
        v20 = *MEMORY[0x1E6960CC0];
        *&start.start.value = *MEMORY[0x1E6960CC0];
        v15 = *(MEMORY[0x1E6960CC0] + 16);
        start.start.epoch = v15;
        *&duration.start.value = v30;
        duration.start.epoch = v31;
        CMTimeRangeMake(&v25, &start.start, &duration.start);
        memset(&start, 0, sizeof(start));
        *&duration.start.value = v32;
        duration.start.epoch = v33;
        rhs.start = v34;
        CMTimeAdd(&lhs.start, &duration.start, &rhs.start);
        *&rhs.start.value = v28;
        rhs.start.epoch = v29;
        CMTimeSubtract(&duration.start, &lhs.start, &rhs.start);
        *&lhs.start.value = v26;
        lhs.start.epoch = v27;
        CMTimeRangeMake(&start, &duration.start, &lhs.start);
        lhs = v25;
        memset(&duration, 0, sizeof(duration));
        rhs = start;
        CMTimeRangeGetIntersection(&duration, &lhs, &rhs);
        if ((duration.start.flags & 1) == 0 || (duration.duration.flags & 1) == 0 || duration.duration.epoch || duration.duration.value < 0)
        {
          *&retstr->var0 = v20;
          retstr->var3 = v15;
LABEL_12:

          goto LABEL_13;
        }

        *&retstr->var0 = *&duration.duration.value;
        epoch = duration.duration.epoch;
LABEL_11:
        retstr->var3 = epoch;
        goto LABEL_12;
      }
    }

    else
    {
      [v10 compare:v11];
    }

    v17 = MEMORY[0x1E6960CC0];
    *&retstr->var0 = *MEMORY[0x1E6960CC0];
    epoch = *(v17 + 16);
    goto LABEL_11;
  }

  v16 = MEMORY[0x1E6960CC0];
  *&retstr->var0 = *MEMORY[0x1E6960CC0];
  retstr->var3 = *(v16 + 16);
LABEL_13:

  return result;
}

+ (BOOL)canMergeAsset:(id)a3 withConsecutiveAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    [a1 _overlapDurationBetweenAsset:v7 andAsset:v8];
    time2 = **&MEMORY[0x1E6960CC0];
    v11 = CMTimeCompare(&time1, &time2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v7;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = [MEMORY[0x1E696AAA8] currentHandler];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = [v12 px_descriptionForAssertionMessage];
        [v29 handleFailureInMethod:a2 object:a1 file:@"PUCompositeVideoGenerator.m" lineNumber:128 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"fromAsset", v31, v32}];
      }

      v13 = [v12 hasAdjustments] ^ 1;
    }

    else
    {
      v13 = 1;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v15 = (isKindOfClass ^ 1) & v13;
    if (((isKindOfClass ^ 1) & 1) == 0 && v13)
    {
      v16 = v9;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = [v16 px_descriptionForAssertionMessage];
        [v33 handleFailureInMethod:a2 object:a1 file:@"PUCompositeVideoGenerator.m" lineNumber:132 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"toAsset", v35, v36}];
      }

      v15 = [v16 hasAdjustments] ^ 1;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v9;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v7;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    if (v18 | v20)
    {
      [v18 fetchPropertySetsIfNeeded];
      [v20 fetchPropertySetsIfNeeded];
      if (v15)
      {
        v21 = [v18 photosInfoPanelExtendedProperties];
        v22 = [v21 semanticStylePreset];
        v23 = [v20 photosInfoPanelExtendedProperties];
        v24 = [v23 semanticStylePreset];
        if (v22 == v24)
        {
          v15 = 1;
        }

        else
        {
          v15 = [v22 isEqual:v24];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    v25 = [v7 canPlayPhotoIris];
    if (v25)
    {
      LOBYTE(v25) = [v9 canPlayPhotoIris];
    }

    if (v11 <= 0)
    {
      v26 = PLLivePhotoPlaybackGetLog();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      LOWORD(time1.value) = 0;
      v27 = "\tAssets do not overlap.";
    }

    else
    {
      if (v15)
      {
        if (v25)
        {
          v10 = 1;
LABEL_40:

          goto LABEL_41;
        }

        v26 = PLLivePhotoPlaybackGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(time1.value) = 0;
          v27 = "\tAssets are not both Live Photos.";
          goto LABEL_38;
        }

LABEL_39:

        v10 = 0;
        goto LABEL_40;
      }

      v26 = PLLivePhotoPlaybackGetLog();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      LOWORD(time1.value) = 0;
      v27 = "\tAssets have adjustments.";
    }

LABEL_38:
    _os_log_impl(&dword_1B36F3000, v26, OS_LOG_TYPE_DEFAULT, v27, &time1, 2u);
    goto LABEL_39;
  }

LABEL_41:

  return v10;
}

@end