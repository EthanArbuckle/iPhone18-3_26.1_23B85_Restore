@interface PXStoryConcreteSubtimelineScanner
- ($70EB31679AD570D2612C6654B67EF72A)scanState;
- (BOOL)_scanFastestSubtimelineWithNextDisplayAssetResultHandler:(id)handler;
- (BOOL)_scanMultipartPanoramaSubtimelineAfterTime:(id *)time axis:(int64_t)axis nextDisplayAssetsInfo:(id)info resultHandler:(id)handler;
- (BOOL)_scanMultipartPanoramaSubtimelineAfterTime:(id *)time nextDisplayAssetsInfo:(id)info resultHandler:(id)handler;
- (BOOL)_scanSubtimelineWithClipComposition:(id)composition displayAssets:(id)assets assetContentInfos:(id *)infos playbackStyles:(const int64_t *)styles separatorEffectParameters:(id *)parameters kenBurnsEffectParameters:(id *)effectParameters transitionInfo:(id *)info startTime:(id *)self0 durationInfo:(id *)self1 resultHandler:(id)self2;
- (BOOL)scanBestSubtimelineFollowingTimeline:(id)timeline loggingOptions:(unint64_t)options resultHandler:(id)handler;
- (BOOL)scanFastestSubtimelineWithDisplayAssetResourceCount:(int64_t)count resultHandler:(id)handler;
- (BOOL)scanFastestSubtimelineWithRemainingClipsResultHandler:(id)handler;
- (BOOL)scanSubtimelineWithClipComposition:(id)composition displayAssets:(id)assets assetContentInfos:(id *)infos playbackStyles:(const int64_t *)styles separatorEffectParameters:(id *)parameters kenBurnsEffectParameters:(id *)effectParameters transitionInfo:(id *)info startTime:(id *)self0 durationInfo:(id *)self1 resultHandler:(id)self2;
- (PXStoryConcreteSubtimelineScanner)init;
- (PXStoryConcreteSubtimelineScanner)initWithConfiguration:(id)configuration;
- (id)_newDisplayAssetsInfo;
- (id)_nextDisplayAssetsInfoWithMaximumCount:(int64_t)count;
- (void)_addTitles:(unint64_t)titles toTimeline:(id)timeline;
- (void)_initializeDefaultMultipartPanoramaParameters;
- (void)dealloc;
- (void)enumeratePossibleNextSubtimelinesAfterTime:(id *)time loggingOptions:(unint64_t)options usingBlock:(id)block;
- (void)setScanState:(id *)state;
@end

@implementation PXStoryConcreteSubtimelineScanner

- (id)_newDisplayAssetsInfo
{
  result = [(NSMutableArray *)self->_reusableDisplayAssetInfos px_popFirst];
  if (!result)
  {

    return objc_alloc_init(_PXStoryDisplayAssetsInfo);
  }

  return result;
}

- (id)_nextDisplayAssetsInfoWithMaximumCount:(int64_t)count
{
  _newDisplayAssetsInfo = [(PXStoryConcreteSubtimelineScanner *)self _newDisplayAssetsInfo];
  nextResourceIndex = self->_nextResourceIndex;
  numberOfRemainingResources = [(PXStoryConcreteSubtimelineScanner *)self numberOfRemainingResources];
  if (numberOfRemainingResources < count)
  {
    count = numberOfRemainingResources;
  }

  resourcesDataSource = [(PXStoryConcreteSubtimelineScanner *)self resourcesDataSource];
  timelineStyle = [(PXStoryConcreteSubtimelineScanner *)self timelineStyle];
  [_newDisplayAssetsInfo configureWithRange:nextResourceIndex resourcesDataSource:count timelineStyle:resourcesDataSource nUpPlaybackStyleMapping:{timelineStyle, self->_nUpPlaybackStyleMapping}];

  return _newDisplayAssetsInfo;
}

- (BOOL)scanFastestSubtimelineWithRemainingClipsResultHandler:(id)handler
{
  handlerCopy = handler;
  keyAssetResource = [(PXStoryResourcesDataSource *)self->_resourcesDataSource keyAssetResource];
  v6 = keyAssetResource;
  if (self->_nextResourceIndex)
  {
    v7 = 1;
  }

  else
  {
    v7 = keyAssetResource == 0;
  }

  if (!v7)
  {
    v8 = [(PXStoryResourcesDataSource *)self->_resourcesDataSource displayAssetResourceAtIndex:0];
    self->_nextResourceIndex = [v6 isEqual:v8];
  }

  v9 = [(PXStoryConcreteSubtimelineScanner *)self scanFastestSubtimelineWithDisplayAssetResourceCount:0x7FFFFFFFFFFFFFFFLL resultHandler:handlerCopy];

  return v9;
}

- (BOOL)scanFastestSubtimelineWithDisplayAssetResourceCount:(int64_t)count resultHandler:(id)handler
{
  handlerCopy = handler;
  isAtEnd = [(PXStoryConcreteSubtimelineScanner *)self isAtEnd];
  if (!isAtEnd)
  {
    [(PXStoryMutableConcreteTimeline *)self->_subtimelineWithRemainingClips removeAllClipsAndSegments];
    if (![(PXStoryConcreteSubtimelineScanner *)self isAtEnd]&& count >= 1)
    {
      v8 = MEMORY[0x1E69E9820];
      v9 = 1;
      do
      {
        v12[0] = v8;
        v12[1] = 3221225472;
        v12[2] = __103__PXStoryConcreteSubtimelineScanner_scanFastestSubtimelineWithDisplayAssetResourceCount_resultHandler___block_invoke;
        v12[3] = &unk_1E773D308;
        v12[4] = self;
        [(PXStoryConcreteSubtimelineScanner *)self _scanFastestSubtimelineWithNextDisplayAssetResultHandler:v12];
        if ([(PXStoryConcreteSubtimelineScanner *)self isAtEnd])
        {
          break;
        }
      }

      while (v9++ < count);
    }

    handlerCopy[2](handlerCopy, self->_subtimelineWithRemainingClips);
  }

  return !isAtEnd;
}

- (void)enumeratePossibleNextSubtimelinesAfterTime:(id *)time loggingOptions:(unint64_t)options usingBlock:(id)block
{
  timeCopy = time;
  v81 = a2;
  v164[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v82 = objc_autoreleasePoolPush();
  optionsCopy = options;
  if (options)
  {
    v65 = PLStoryGetLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *v155 = *&timeCopy->var0;
      *&v155[16] = timeCopy->var3;
      v66 = PXStoryTimeDescription(v155);
      *v155 = 138412290;
      *&v155[4] = v66;
      _os_log_impl(&dword_1A3C1C000, v65, OS_LOG_TYPE_DEFAULT, "enumerate possible next subtimelines after %@", v155, 0xCu);
    }

    if ([(PXStoryConcreteSubtimelineScanner *)self isAtEnd])
    {
      v67 = PLStoryGetLog();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *v155 = 0;
        _os_log_impl(&dword_1A3C1C000, v67, OS_LOG_TYPE_DEFAULT, "at end", v155, 2u);
      }

      goto LABEL_81;
    }
  }

  else if ([(PXStoryConcreteSubtimelineScanner *)self isAtEnd])
  {
    goto LABEL_81;
  }

  v146 = 0u;
  v147 = 0u;
  v145 = 0u;
  [(PXStoryConcreteSubtimelineScanner *)self scanState];
  timelineStyle = [(PXStoryConcreteSubtimelineScanner *)self timelineStyle];
  v7 = [(PXStoryConcreteSubtimelineScanner *)self _nextDisplayAssetsInfoWithMaximumCount:3];
  v8 = v7;
  if (self->_nextResourceIndex == -1)
  {
    if ((self->_productionOptions & 1) == 0)
    {
      v11 = [v7 displayAssetsWithCount:1];
      v9 = [v11 storyDisplayAssetAtIndex:0];

      v12 = v8;
      assetContentInfos = [v8 assetContentInfos];
      v14 = v8;
      v15 = [timelineStyle clipCompositionForKeyAsset:v9 contentInfo:assetContentInfos finalPlaybackStyle:{*objc_msgSend(v8, "oneUpPlaybackStyles")}];
      v163 = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v163 count:1];

      goto LABEL_9;
    }

    v9 = +[PXStoryClipCompositionFactory oneUpComposition];
    v164[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:1];
  }

  else
  {
    v9 = [v7 displayAssetsWithCount:{objc_msgSend(v7, "count")}];
    *v155 = *&timeCopy->var0;
    *&v155[16] = timeCopy->var3;
    v10 = [timelineStyle allowedClipCompositionsWithStartTime:v155 nextDisplayAssets:v9];
  }

  v16 = v10;
LABEL_9:

  if (self->_nextResourceIndex)
  {
    firstDisplayAssetIsSameAsKey = 0;
  }

  else
  {
    firstDisplayAssetIsSameAsKey = self->_firstDisplayAssetIsSameAsKey;
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v141 objects:v162 count:16];
  if (v18)
  {
    v19 = 0;
    v20 = *v142;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v142 != v20)
        {
          objc_enumerationMutation(v17);
        }

        numberOfClips = [*(*(&v141 + 1) + 8 * i) numberOfClips];
        if (v19 <= numberOfClips)
        {
          v19 = numberOfClips;
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v141 objects:v162 count:16];
    }

    while (v18);

    if (v19 < 4)
    {
      goto LABEL_25;
    }

    v23 = [(PXStoryConcreteSubtimelineScanner *)self _nextDisplayAssetsInfoWithMaximumCount:v19];
    v24 = v8;
    v8 = v23;
  }

  else
  {
    v24 = v17;
  }

LABEL_25:
  if (optionsCopy)
  {
    v68 = PLStoryGetLog();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *v155 = 67109120;
      *&v155[4] = firstDisplayAssetIsSameAsKey;
      _os_log_impl(&dword_1A3C1C000, v68, OS_LOG_TYPE_DEFAULT, "shouldSkipOneUp: %i", v155, 8u);
    }
  }

  if (!firstDisplayAssetIsSameAsKey)
  {
    v139[0] = MEMORY[0x1E69E9820];
    v139[1] = 3221225472;
    v139[2] = __106__PXStoryConcreteSubtimelineScanner_enumeratePossibleNextSubtimelinesAfterTime_loggingOptions_usingBlock___block_invoke;
    v139[3] = &unk_1E773C680;
    v140 = blockCopy;
    v139[4] = self;
    *v155 = *&timeCopy->var0;
    *&v155[16] = timeCopy->var3;
    v25 = [(PXStoryConcreteSubtimelineScanner *)self _scanMultipartPanoramaSubtimelineAfterTime:v155 nextDisplayAssetsInfo:v8 resultHandler:v139];
    *v155 = v145;
    *&v155[16] = v146;
    v156 = v147;
    [(PXStoryConcreteSubtimelineScanner *)self setScanState:v155];
    if (v25)
    {
      if (optionsCopy)
      {
        v70 = PLStoryGetLog();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *v155 = 0;
          _os_log_impl(&dword_1A3C1C000, v70, OS_LOG_TYPE_DEFAULT, "did scan multipart pano", v155, 2u);
        }
      }

      v17 = 0;
    }
  }

  if (optionsCopy)
  {
    v69 = PLStoryGetLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *v155 = 138412290;
      *&v155[4] = v17;
      _os_log_impl(&dword_1A3C1C000, v69, OS_LOG_TYPE_DEFAULT, "allowedClipCompositions: %@", v155, 0xCu);
    }
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v87 = v17;
  v92 = [v87 countByEnumeratingWithState:&v135 objects:v161 count:16];
  if (v92)
  {
    v74 = v96;
    v89 = *v136;
    v84 = blockCopy + 16;
    v85 = v128;
    *&v26 = 67109120;
    v72 = v26;
    *&v26 = 138412546;
    v73 = v26;
    *&v26 = 67109378;
    v71 = v26;
LABEL_34:
    v27 = 0;
    while (1)
    {
      if (*v136 != v89)
      {
        objc_enumerationMutation(v87);
      }

      v28 = *(*(&v135 + 1) + 8 * v27);
      v131 = 0;
      v132 = &v131;
      v133 = 0x2020000000;
      v134 = 0;
      numberOfClips2 = [v28 numberOfClips];
      v30 = numberOfClips2;
      if (firstDisplayAssetIsSameAsKey && numberOfClips2 == 1)
      {
        ++self->_nextResourceIndex;
        isAtEnd = [(PXStoryConcreteSubtimelineScanner *)self isAtEnd];
        if (optionsCopy)
        {
          v62 = PLStoryGetLog();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *v155 = v72;
            *&v155[4] = isAtEnd;
            _os_log_impl(&dword_1A3C1C000, v62, OS_LOG_TYPE_DEFAULT, "did skip one up, is at end %i", v155, 8u);
          }
        }

        if (isAtEnd)
        {
          emptySubtimeline = self->_emptySubtimeline;
          [(PXStoryConcreteSubtimelineScanner *)self scanState];
          (*(blockCopy + 2))(blockCopy, emptySubtimeline, v155, v132 + 3);
        }

        else
        {
          v127[0] = MEMORY[0x1E69E9820];
          v127[1] = 3221225472;
          v128[0] = __106__PXStoryConcreteSubtimelineScanner_enumeratePossibleNextSubtimelinesAfterTime_loggingOptions_usingBlock___block_invoke_53;
          v128[1] = &unk_1E773C6A8;
          v129 = blockCopy;
          v130 = &v131;
          *v155 = *&timeCopy->var0;
          *&v155[16] = timeCopy->var3;
          [(PXStoryConcreteSubtimelineScanner *)self enumeratePossibleNextSubtimelinesAfterTime:v155 loggingOptions:optionsCopy usingBlock:v127];
        }
      }

      else if (numberOfClips2 >= 1)
      {
        numberOfAssets = [v28 numberOfAssets];
        if (numberOfAssets <= [v8 count])
        {
          v34 = v30 - 1;
          if (v30 == 1)
          {
            v35 = 1;
          }

          else
          {
            v36 = v28;
            clipAssetIndexes = [v28 clipAssetIndexes];
            do
            {
              originalPlaybackStylesAllowedInNUp = self->_originalPlaybackStylesAllowedInNUp;
              v39 = v8;
              v40 = -[NSIndexSet containsIndex:](originalPlaybackStylesAllowedInNUp, "containsIndex:", *([v8 originalPlaybackStyles] + 8 * *clipAssetIndexes));
              v35 = v40;
              v42 = v34-- != 0;
              ++clipAssetIndexes;
            }

            while ((v40 & v42 & 1) != 0);
          }

          if (optionsCopy)
          {
            v63 = PLStoryGetLog();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              *v155 = v71;
              *&v155[4] = v35;
              *&v155[8] = 2112;
              *&v155[10] = v28;
              _os_log_impl(&dword_1A3C1C000, v63, OS_LOG_TYPE_DEFAULT, "is composition allowed %i %@", v155, 0x12u);
            }
          }

          if (v35)
          {
            v43 = [v8 displayAssetsWithCount:{objc_msgSend(v28, "numberOfAssets")}];
            v44 = v8;
            assetContentInfos2 = [v8 assetContentInfos];
            v45 = v8;
            if (v30 == 1)
            {
              oneUpPlaybackStyles = [v8 oneUpPlaybackStyles];
            }

            else
            {
              oneUpPlaybackStyles = [v8 nUpPlaybackStyles];
            }

            v47 = timelineStyle;
            v48 = oneUpPlaybackStyles;
            v126 = 0;
            v124 = 0u;
            v125 = 0u;
            if (timelineStyle)
            {
              oneUpPlaybackStyles = [timelineStyle transitionInfoForSegmentWithClipComposition:v28 displayAssets:v43];
            }

            v75 = &v71;
            MEMORY[0x1EEE9AC00](oneUpPlaybackStyles);
            v51 = &v71 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
            if (v30 != 1)
            {
              v52 = 2;
              if (v30 > 2)
              {
                v52 = v30;
              }

              v53 = v52 - 1;
              v54 = v51;
              do
              {
                *v54 = 0;
                v54[1] = 0;
                v54[2] = 0;
                v54 += 3;
                --v53;
              }

              while (v53);
            }

            MEMORY[0x1EEE9AC00](v49);
            v57 = &v71 - 2 * v56;
            v77 = v57;
            do
            {
              v57[2] = xmmword_1A53820D0;
              v57[3] = unk_1A53820E0;
              v57[4] = xmmword_1A53820F0;
              v57[5] = unk_1A5382100;
              *v57 = PXStoryClipKenBurnsEffectParametersNull;
              v57[1] = unk_1A53820C0;
              v57 += 6;
              --v30;
            }

            while (v30);
            v78 = v55;
            v79 = v48;
            v120 = 0;
            v121 = &v120;
            v122 = 0x2020000000;
            v123 = 0;
            v160 = 0u;
            v159 = 0u;
            v158 = 0u;
            v157 = 0u;
            v156 = 0u;
            memset(v155, 0, sizeof(v155));
            if (v47)
            {
              v148 = *&timeCopy->var0;
              *&v149 = timeCopy->var3;
              [v47 durationInfoForSegmentWithDisplayAssets:v43 startTime:&v148];
            }

            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 3221225472;
            v96[0] = __106__PXStoryConcreteSubtimelineScanner_enumeratePossibleNextSubtimelinesAfterTime_loggingOptions_usingBlock___block_invoke_54;
            v96[1] = &unk_1E773C720;
            v76 = v47;
            v97 = v76;
            v98 = v28;
            v58 = v43;
            v59 = timeCopy;
            v118 = *&timeCopy->var0;
            v109 = v157;
            v110 = v158;
            v111 = v159;
            v112 = v160;
            v106 = *v155;
            v60 = v79;
            v104 = assetContentInfos2;
            v105 = v79;
            var3 = timeCopy->var3;
            v107 = *&v155[16];
            v108 = v156;
            v113 = v77;
            v99 = v58;
            selfCopy = self;
            v116 = v126;
            v114 = v124;
            v115 = v125;
            v101 = blockCopy;
            v102 = &v131;
            v117 = v81;
            v103 = &v120;
            v93 = *&v59->var0;
            v94 = v59->var3;
            v152 = v158;
            v153 = v159;
            v154 = v160;
            v148 = *v155;
            v149 = *&v155[16];
            v150 = v156;
            v151 = v157;
            [v76 enumerateAllowedSeparatorEffectParametersForSegmentWithClipComposition:v28 displayAssets:v58 finalPlaybackStyles:v60 startTime:&v93 durationInfo:&v148 buffer:v78 usingBlock:v95];
            if ((v121[3] & 1) == 0)
            {
              PXAssertGetLog();
            }

            _Block_object_dispose(&v120, 8);
          }
        }
      }

      *v155 = v145;
      *&v155[16] = v146;
      v156 = v147;
      [(PXStoryConcreteSubtimelineScanner *)self setScanState:v155];
      v61 = *(v132 + 24);
      _Block_object_dispose(&v131, 8);
      if (v61)
      {
        break;
      }

      if (++v27 == v92)
      {
        v64 = [v87 countByEnumeratingWithState:&v135 objects:v161 count:16];
        v92 = v64;
        if (v64)
        {
          goto LABEL_34;
        }

        break;
      }
    }
  }

  [(PXStoryConcreteSubtimelineScanner *)self _recycleDisplayAssetsInfo:v8];
LABEL_81:
  objc_autoreleasePoolPop(v82);
}

void __106__PXStoryConcreteSubtimelineScanner_enumeratePossibleNextSubtimelinesAfterTime_loggingOptions_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4)
  {
    [v4 scanState];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  (*(v5 + 16))(v5, v3, v6, &v7);
}

uint64_t __106__PXStoryConcreteSubtimelineScanner_enumeratePossibleNextSubtimelinesAfterTime_loggingOptions_usingBlock___block_invoke_53(uint64_t a1, uint64_t a2, _OWORD *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v8 + 16);
  v11 = a3[1];
  v13[0] = *a3;
  v13[1] = v11;
  v13[2] = a3[2];
  result = v10(v8, a2, v13, v9 + 24, a5, a6);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

void __106__PXStoryConcreteSubtimelineScanner_enumeratePossibleNextSubtimelinesAfterTime_loggingOptions_usingBlock___block_invoke_54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 216);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __106__PXStoryConcreteSubtimelineScanner_enumeratePossibleNextSubtimelinesAfterTime_loggingOptions_usingBlock___block_invoke_2;
  v29[3] = &unk_1E773C6F8;
  v26 = *(a1 + 40);
  v25 = *(a1 + 56);
  v10 = v26.i64[1];
  v34 = *(a1 + 88);
  v11 = *(a1 + 240);
  v36 = *(a1 + 224);
  v37 = v11;
  v12 = *(a1 + 256);
  v35 = a2;
  v38 = v12;
  v13 = *(a1 + 272);
  v47 = *(a1 + 288);
  v14 = *(a1 + 120);
  v39 = *(a1 + 104);
  v40 = v14;
  v15 = *(a1 + 136);
  v16 = *(a1 + 152);
  v17 = *(a1 + 168);
  v45 = *(a1 + 200);
  v46 = v13;
  v18 = *(a1 + 184);
  v43 = v17;
  v44 = v18;
  v41 = v15;
  v42 = v16;
  v19 = *(a1 + 64);
  v20.i64[0] = v25;
  v20.i64[1] = v19;
  v21 = vzip2q_s64(v26, v20);
  v20.i64[1] = v26.i64[0];
  v31 = v21;
  v30 = v20;
  v32 = *(a1 + 72);
  v33 = &v48;
  v27 = *(a1 + 272);
  v28 = *(a1 + 288);
  v22 = *(a1 + 152);
  v23 = *(a1 + 184);
  v56 = *(a1 + 168);
  v57 = v23;
  v58 = *(a1 + 200);
  v24 = *(a1 + 120);
  *buf = *(a1 + 104);
  v53 = v24;
  v54 = *(a1 + 136);
  v55 = v22;
  [v6 enumerateAllowedKenBurnsEffectParametersForSegmentWithClipComposition:v26.i64[0] displayAssets:v10 assetContentInfos:v7 finalPlaybackStyles:v8 startTime:&v27 durationInfo:buf separatorEffectParameters:a2 separatorEffectContext:a3 buffer:v9 usingBlock:v29];
  if ((v49[3] & 1) == 0)
  {
    PXAssertGetLog();
  }

  *(*(*(a1 + 80) + 8) + 24) = 1;

  _Block_object_dispose(&v48, 8);
}

void __106__PXStoryConcreteSubtimelineScanner_enumeratePossibleNextSubtimelinesAfterTime_loggingOptions_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __106__PXStoryConcreteSubtimelineScanner_enumeratePossibleNextSubtimelinesAfterTime_loggingOptions_usingBlock___block_invoke_3;
  v21[3] = &unk_1E773C6D0;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v21[4] = *(a1 + 32);
  v22 = v10;
  v23 = *(a1 + 64);
  v11 = *(a1 + 120);
  v19[0] = *(a1 + 104);
  v19[1] = v11;
  v20 = *(a1 + 136);
  v12 = *(a1 + 256);
  v16[6] = *(a1 + 240);
  v17 = v12;
  v18 = *(a1 + 272);
  v13 = *(a1 + 224);
  v16[4] = *(a1 + 208);
  v16[5] = v13;
  v14 = *(a1 + 160);
  v16[0] = *(a1 + 144);
  v16[1] = v14;
  v15 = *(a1 + 192);
  v16[2] = *(a1 + 176);
  v16[3] = v15;
  [v4 scanSubtimelineWithClipComposition:v5 displayAssets:v9 assetContentInfos:v6 playbackStyles:v7 separatorEffectParameters:v8 kenBurnsEffectParameters:a2 transitionInfo:v19 startTime:&v17 durationInfo:v16 resultHandler:v21];
  *(*(*(a1 + 72) + 8) + 24) = 1;
}

void __106__PXStoryConcreteSubtimelineScanner_enumeratePossibleNextSubtimelinesAfterTime_loggingOptions_usingBlock___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  if (v4)
  {
    [v4 scanState];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  (*(v5 + 16))(v5, v3, v6, *(a1[6] + 8) + 24);
}

- (void)_addTitles:(unint64_t)titles toTimeline:(id)timeline
{
  timelineCopy = timeline;
  resourcesDataSource = [(PXStoryConcreteSubtimelineScanner *)self resourcesDataSource];
  v8 = resourcesDataSource;
  if (titles && [resourcesDataSource numberOfTextResources] && objc_msgSend(timelineCopy, "numberOfSegments"))
  {
    [timelineCopy size];
    PXRectWithOriginAndSize();
  }
}

void __59__PXStoryConcreteSubtimelineScanner__addTitles_toTimeline___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E9820];
    do
    {
      v8 = (a3 + 48 * v6);
      v9 = v8[1];
      v53 = *v8;
      v54 = v9;
      v55 = v8[2];
      v49 = 0;
      v50 = &v49;
      v51 = 0x2020000000;
      v52 = 0;
      v43[0] = v7;
      v43[1] = 3221225472;
      v43[2] = __59__PXStoryConcreteSubtimelineScanner__addTitles_toTimeline___block_invoke_2;
      v43[3] = &unk_1E773C630;
      v10 = *(a1 + 56);
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = *(a1 + 96);
      v14 = *(a1 + 104);
      v46 = &v49;
      v47 = v13;
      v48 = v14;
      *&v15 = v12;
      *(&v15 + 1) = *(a1 + 48);
      v28 = v15;
      *&v16 = *(a1 + 32);
      *(&v16 + 1) = v10;
      v44 = v28;
      v45 = v16;
      v29 = v53;
      v30 = v54;
      v31 = v55;
      [v11 enumerateConcreteClipsInTimeRange:&v29 rect:v43 usingBlock:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
      if (v50[3] >= 1)
      {
        v17 = 0;
        v18 = v26 + 200 * v6;
        v19 = *(v18 + 64);
        v40 = *(v18 + 48);
        v41 = v19;
        v42 = *(v18 + 80);
        do
        {
          v20 = *(*(*(a1 + 48) + 576) + 8 * v17);
          v21 = *(a1 + 32);
          v39[0] = v53;
          v39[1] = v54;
          v39[2] = v55;
          v22 = *(a1 + 64);
          v23 = *(a1 + 72);
          v24 = *(a1 + 80);
          v25 = *(a1 + 88);
          v37[0] = v40;
          v37[1] = v41;
          v38 = v42;
          v36 = 0;
          v33 = xmmword_1A5383A58;
          v34 = xmmword_1A5383A68;
          v35 = xmmword_1A5383A78;
          v29 = PXStoryKenBurnsAnimationInfoNone;
          v30 = unk_1A5383A28;
          v31 = xmmword_1A5383A38;
          v32 = xmmword_1A5383A48;
          [v21 insertClipInTimeRange:v39 resourceKind:3 options:0 resourceIndex:v20 frame:v37 transitionInfo:&v29 kenBurnsAnimationInfo:{v22, v23, v24, v25, v26}];
          ++v17;
        }

        while (v17 < v50[3]);
      }

      _Block_object_dispose(&v49, 8);
      ++v6;
    }

    while (v6 != a2);
  }
}

uint64_t __59__PXStoryConcreteSubtimelineScanner__addTitles_toTimeline___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  if (a2 >= 1)
  {
    v12 = result;
    v13 = 0;
    while (1)
    {
      if (a5[1] == 1)
      {
        v14 = *(a6 + 8 * v13);
        if (v14 != *(*(*(v12 + 56) + 8) + 24))
        {
          v15 = *(v12 + 32);
          v16 = *(v12 + 40);
          v18 = *(v12 + 64);
          v17 = *(v12 + 72);
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __59__PXStoryConcreteSubtimelineScanner__addTitles_toTimeline___block_invoke_3;
          v20[3] = &unk_1E773C5E8;
          v20[4] = v16;
          v20[5] = v18;
          v20[6] = *(v12 + 80);
          result = [v15 enumerateTextResourcesForTitles:v17 displayAssetResourceAtIndex:v14 usingBlock:v20];
          if (*(*(*(v12 + 64) + 8) + 24) > 0)
          {
            break;
          }
        }
      }

      ++v13;
      a5 += 96;
      if (a2 == v13)
      {
        return result;
      }
    }

    result = [*(v12 + 48) modifyOptionsForClipWithIdentifier:*a5 hintIndex:v13 + a7 usingBlock:&__block_literal_global_48_135690];
    *(*(*(v12 + 56) + 8) + 24) = v14;
    *a8 = 1;
  }

  return result;
}

uint64_t __59__PXStoryConcreteSubtimelineScanner__addTitles_toTimeline___block_invoke_3(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  v3 = *(*(*(result + 40) + 8) + 24);
  if (v3 >= *(v2 + 568))
  {
    PXAssertGetLog();
  }

  *(*(v2 + 576) + 8 * v3) = a2;
  ++*(*(*(result + 40) + 8) + 24);
  return result;
}

- (BOOL)scanBestSubtimelineFollowingTimeline:(id)timeline loggingOptions:(unint64_t)options resultHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  timelineCopy = timeline;
  handlerCopy = handler;
  [(PXStoryMutableConcreteTimeline *)self->_precedingSubtimeline removeAllClipsAndSegments];
  numberOfSegments = [timelineCopy numberOfSegments];
  if (options)
  {
    v25 = PLStoryGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *range = 134217984;
      *&range[4] = numberOfSegments;
      _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_DEFAULT, "scan best subtimeline following timeline with %ti segments", range, 0xCu);
    }
  }

  if (numberOfSegments >= 1)
  {
    v11 = 2;
    if (numberOfSegments > 2)
    {
      v11 = numberOfSegments;
    }

    v12 = [timelineCopy identifierForSegmentAtIndex:v11 - 2];
    memset(&v42, 0, sizeof(v42));
    if (timelineCopy)
    {
      [timelineCopy timeRangeForSegmentWithIdentifier:v12];
      [timelineCopy timeRange];
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    *range = rhs;
    CMTimeRangeGetEnd(&v38, range);
    *&rhs.start.value = *&v42.start.value;
    rhs.start.epoch = v42.start.epoch;
    *range = v38;
    CMTimeSubtract(&v35, range, &rhs.start);
    v42.duration = v35;
    precedingSubtimeline = self->_precedingSubtimeline;
    *range = *&v42.start.value;
    *&range[16] = v42.start.epoch;
    [(PXStoryMutableConcreteTimeline *)precedingSubtimeline setStartTime:range];
    v14 = self->_precedingSubtimeline;
    *range = v42;
    [(PXStoryMutableConcreteTimeline *)v14 appendTimeRange:range fromTimeline:timelineCopy];
  }

  if (options)
  {
    v26 = PLStoryGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      diagnosticDescription = [(PXStoryBaseTimeline *)self->_precedingSubtimeline diagnosticDescription];
      *range = 138412290;
      *&range[4] = diagnosticDescription;
      _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_DEFAULT, "preceding subtimeline: %@", range, 0xCu);
    }
  }

  [(PXStoryMutableConcreteTimeline *)self->_bestSubtimeline removeAllClipsAndSegments];
  timelineScorer = [(PXStoryConcreteSubtimelineScanner *)self timelineScorer];
  v35.value = 0;
  *&v35.timescale = &v35;
  v35.epoch = 0x2020000000;
  v36 = 0xFFEFFFFFFFFFFFFFLL;
  *range = 0;
  *&range[8] = range;
  *&range[16] = 0x5010000000;
  *&range[40] = 0u;
  v40 = 0u;
  v41 = 0;
  *&range[24] = &unk_1A561E057;
  *&range[32] = 0x7FFFFFFFFFFFFFFFLL;
  memset(&v38, 0, sizeof(v38));
  v16 = self->_precedingSubtimeline;
  if (v16)
  {
    [(PXStoryConcreteTimeline *)v16 timeRange];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  v42 = rhs;
  CMTimeRangeGetEnd(&v38, &v42);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __103__PXStoryConcreteSubtimelineScanner_scanBestSubtimelineFollowingTimeline_loggingOptions_resultHandler___block_invoke;
  v30[3] = &unk_1E773C5C0;
  optionsCopy = options;
  v30[4] = self;
  v17 = timelineScorer;
  v31 = v17;
  v32 = &v35;
  v33 = range;
  v42.start = v38;
  [(PXStoryConcreteSubtimelineScanner *)self enumeratePossibleNextSubtimelinesAfterTime:&v42 loggingOptions:options usingBlock:v30];
  if (*(*&range[8] + 32) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = *(*&range[8] + 48);
    v21 = *(*&range[8] + 64);
    *&v42.start.value = *(*&range[8] + 32);
    *&v42.start.epoch = v29;
    *&v42.duration.timescale = v21;
    [(PXStoryConcreteSubtimelineScanner *)self setScanState:&v42, v42.start.value, *&v42.start.timescale, v29, v21];
    goto LABEL_19;
  }

  timelineStyle = [(PXStoryConcreteSubtimelineScanner *)self timelineStyle];
  allowsIncompleteTimelines = [timelineStyle allowsIncompleteTimelines];

  if (allowsIncompleteTimelines)
  {
    v20 = PLStoryGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v42.start.value) = 0;
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "skipping trailing clips because the timeline style allows incomplete timelines", &v42, 2u);
    }

    self->_nextResourceIndex = self->_numberOfResources;
LABEL_19:
    spec = [(PXStoryConcreteSubtimelineScanner *)self spec];
    -[PXStoryConcreteSubtimelineScanner _addTitles:toTimeline:](self, "_addTitles:toTimeline:", [spec allowedInlineTitles], self->_bestSubtimeline);

    handlerCopy[2](handlerCopy, self->_bestSubtimeline);
    v23 = 1;
    if ((options & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v23 = 0;
  if ((options & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_29:
  v28 = PLStoryGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v42.start.value) = 67109120;
    HIDWORD(v42.start.value) = v23;
    _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_DEFAULT, "scanned: %i", &v42, 8u);
  }

LABEL_22:
  _Block_object_dispose(range, 8);
  _Block_object_dispose(&v35, 8);

  return v23;
}

void __103__PXStoryConcreteSubtimelineScanner_scanBestSubtimelineFollowingTimeline_loggingOptions_resultHandler___block_invoke(uint64_t a1, void *a2, __int128 *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (*(a1 + 64))
  {
    v15 = PLStoryGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [v5 diagnosticDescription];
      *(&range.start.value + 4) = LODWORD(range.start.value) = 138412290;
      v16 = *(&range.start.value + 4);
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "possible next subtimeline 1: %@", &range, 0xCu);
    }
  }

  [*(*(a1 + 32) + 96) setTimeline:v5];
  [*(*(a1 + 32) + 112) setTimeline:*(*(a1 + 32) + 104)];
  [*(*(a1 + 32) + 112) appendTimeline:v5];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0xFFEFFFFFFFFFFFFFLL;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  memset(&v29, 0, sizeof(v29));
  v6 = *(*(a1 + 32) + 112);
  if (v6)
  {
    [v6 timeRange];
  }

  else
  {
    memset(&v28, 0, sizeof(v28));
  }

  range = v28;
  CMTimeRangeGetEnd(&v29, &range);
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __103__PXStoryConcreteSubtimelineScanner_scanBestSubtimelineFollowingTimeline_loggingOptions_resultHandler___block_invoke_42;
  v23[3] = &unk_1E773C5C0;
  v27 = v8;
  v25 = &v30;
  v23[4] = v7;
  v24 = *(a1 + 40);
  v26 = &v34;
  range.start = v29;
  [v7 enumeratePossibleNextSubtimelinesAfterTime:&range loggingOptions:v8 usingBlock:v23];
  if ((v31[3] & 1) == 0)
  {
    [*(a1 + 40) scoreForTimeline:*(*(a1 + 32) + 112)];
    *(v35 + 3) = v9;
    if (*(a1 + 64))
    {
      v17 = PLStoryGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v35 + 3);
        v19 = [*(*(a1 + 32) + 112) diagnosticDescription];
        LODWORD(range.start.value) = 134218242;
        *(&range.start.value + 4) = v18;
        LOWORD(range.start.flags) = 2112;
        *(&range.start.flags + 2) = v19;
        v20 = v19;
        _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "score %f for %@", &range, 0x16u);
      }
    }
  }

  v10 = v35[3];
  v11 = *(*(a1 + 48) + 8);
  if (v10 > *(v11 + 24))
  {
    *(v11 + 24) = v10;
    [*(*(a1 + 32) + 88) setTimeline:*(*(a1 + 32) + 96)];
    v12 = *(*(a1 + 56) + 8);
    v13 = *a3;
    v14 = a3[2];
    v12[3] = a3[1];
    v12[4] = v14;
    v12[2] = v13;
    if (*(a1 + 64))
    {
      v21 = PLStoryGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(*(*(a1 + 48) + 8) + 24);
        LODWORD(range.start.value) = 134217984;
        *(&range.start.value + 4) = v22;
        _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEFAULT, "bestScore: %f", &range, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
}

void __103__PXStoryConcreteSubtimelineScanner_scanBestSubtimelineFollowingTimeline_loggingOptions_resultHandler___block_invoke_42(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 64))
  {
    v7 = PLStoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 diagnosticDescription];
      v11 = 138412290;
      v12 = *&v8;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "possible next subtimeline 2: %@", &v11, 0xCu);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(*(a1 + 32) + 120) setTimeline:*(*(a1 + 32) + 112)];
  [*(*(a1 + 32) + 120) appendTimeline:v3];
  [*(a1 + 40) scoreForTimeline:*(*(a1 + 32) + 120)];
  v5 = v4;
  if (*(a1 + 64))
  {
    v9 = PLStoryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(*(a1 + 32) + 120) diagnosticDescription];
      v11 = 134218242;
      v12 = v5;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "score %f for %@", &v11, 0x16u);
    }
  }

  v6 = *(*(a1 + 56) + 8);
  if (v5 > *(v6 + 24))
  {
    *(v6 + 24) = v5;
  }
}

- (BOOL)_scanMultipartPanoramaSubtimelineAfterTime:(id *)time axis:(int64_t)axis nextDisplayAssetsInfo:(id)info resultHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  handlerCopy = handler;
  [infoCopy assetContentInfos];
  PXSizeGetAspectRatioWithDefault();
}

void __121__PXStoryConcreteSubtimelineScanner__scanMultipartPanoramaSubtimelineAfterTime_axis_nextDisplayAssetsInfo_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  *a2 = 1;
  *a3 = *(*(a1 + 32) + 56);
  PXRectWithOriginAndSize();
}

- (BOOL)_scanMultipartPanoramaSubtimelineAfterTime:(id *)time nextDisplayAssetsInfo:(id)info resultHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  if (-[PXStoryConcreteSubtimelineScanner numberOfRemainingResources](self, "numberOfRemainingResources") >= 1 && [infoCopy count] >= 1 && *objc_msgSend(infoCopy, "oneUpPlaybackStyles") == 1)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __116__PXStoryConcreteSubtimelineScanner__scanMultipartPanoramaSubtimelineAfterTime_nextDisplayAssetsInfo_resultHandler___block_invoke;
    aBlock[3] = &unk_1E773C550;
    v16 = &v19;
    aBlock[4] = self;
    v17 = *&time->var0;
    var3 = time->var3;
    v14 = infoCopy;
    v15 = handlerCopy;
    v10 = _Block_copy(aBlock);
    v10[2](v10, 2);
    v10[2](v10, 1);
    v11 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t __116__PXStoryConcreteSubtimelineScanner__scanMultipartPanoramaSubtimelineAfterTime_nextDisplayAssetsInfo_resultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 56) + 8);
  if (*(v2 + 24))
  {
    result = 1;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v9 = *(a1 + 80);
    result = [v5 _scanMultipartPanoramaSubtimelineAfterTime:&v8 axis:a2 nextDisplayAssetsInfo:v6 resultHandler:v7];
    v2 = *(*(a1 + 56) + 8);
  }

  *(v2 + 24) = result;
  return result;
}

- (BOOL)_scanSubtimelineWithClipComposition:(id)composition displayAssets:(id)assets assetContentInfos:(id *)infos playbackStyles:(const int64_t *)styles separatorEffectParameters:(id *)parameters kenBurnsEffectParameters:(id *)effectParameters transitionInfo:(id *)info startTime:(id *)self0 durationInfo:(id *)self1 resultHandler:(id)self2
{
  compositionCopy = composition;
  assetsCopy = assets;
  handlerCopy = handler;
  numberOfAssets = [compositionCopy numberOfAssets];
  numberOfRemainingResources = [(PXStoryConcreteSubtimelineScanner *)self numberOfRemainingResources];
  if (numberOfAssets <= numberOfRemainingResources)
  {
    effectParametersCopy = effectParameters;
    v45 = numberOfRemainingResources;
    numberOfClips = [compositionCopy numberOfClips];
    time1 = durationInfo->var1;
    *time2 = PXStoryTimeZero;
    *&time2[16] = 0;
    v23 = CMTimeCompare(&time1, time2);
    v97 = 0;
    v95 = 0u;
    v96 = 0u;
    PXStorySegmentClipCompositionInfoFromComposition(compositionCopy, &v95);
    time1.value = 0;
    *&time1.timescale = &time1;
    time1.epoch = 0x9810000000;
    v86 = &unk_1A561E057;
    v94 = 0;
    v91 = xmmword_1A5383A58;
    v92 = xmmword_1A5383A68;
    v93 = xmmword_1A5383A78;
    v87 = PXStoryKenBurnsAnimationInfoNone;
    v88 = unk_1A5383A28;
    v89 = xmmword_1A5383A38;
    v90 = xmmword_1A5383A48;
    v84[0] = 0;
    v84[1] = v84;
    v84[2] = 0x2020000000;
    v84[3] = 0;
    [(PXStoryMutableConcreteTimeline *)self->_subtimelineWithClipComposition removeAllClipsAndSegments];
    v24 = +[PXStorySettings sharedInstance];
    v25 = v24;
    v49 = v24;
    v46 = numberOfAssets;
    v47 = handlerCopy;
    if (v23 >= 1 && [v24 smartGradientEnabled] && (!objc_msgSend(compositionCopy, "clipFramesExtendToBounds") || objc_msgSend(v25, "allowAspectModeToggle")))
    {
      v26 = numberOfClips;
      parametersCopy2 = parameters;
      v28 = [compositionCopy numberOfAssets] == 1;
    }

    else
    {
      v26 = numberOfClips;
      parametersCopy2 = parameters;
      v28 = 0;
    }

    subtimelineWithClipComposition = self->_subtimelineWithClipComposition;
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __223__PXStoryConcreteSubtimelineScanner__scanSubtimelineWithClipComposition_displayAssets_assetContentInfos_playbackStyles_separatorEffectParameters_kenBurnsEffectParameters_transitionInfo_startTime_durationInfo_resultHandler___block_invoke;
    v62[3] = &unk_1E773C528;
    v62[4] = self;
    v67 = v26;
    v63 = assetsCopy;
    v30 = compositionCopy;
    v31 = *&durationInfo->var1.var1;
    v72 = *&durationInfo->var2.var0;
    v32 = *&durationInfo->var2.var0;
    v73 = *&durationInfo->var2.var3;
    v33 = *&durationInfo->var2.var3;
    v74 = *&durationInfo->var3.var0.var1;
    v34 = *&durationInfo->var3.var0.var1;
    v75 = *&durationInfo->var3.var1;
    v35 = *&durationInfo->var0.var3;
    v69 = *&durationInfo->var0.var0;
    v36 = *&durationInfo->var0.var0;
    v37 = *&durationInfo->var0.var3;
    v70 = v35;
    v71 = *&durationInfo->var1.var1;
    v38 = *&info->var0;
    v81 = *&info->var2.var1;
    v80 = v38;
    v56 = v33;
    v57 = v34;
    v58 = *&durationInfo->var3.var1;
    *time2 = v36;
    *&time2[16] = v37;
    v76 = effectParametersCopy;
    v77 = a2;
    infosCopy = infos;
    stylesCopy = styles;
    v52 = v28;
    v83 = v28;
    v39 = v30;
    v64 = v30;
    p_time1 = &time1;
    v68 = parametersCopy2;
    v66 = v84;
    v82 = *&info->var3;
    v54 = v31;
    v55 = v32;
    v59 = v95;
    v60 = v96;
    *&v61 = v97;
    v40 = [(PXStoryMutableConcreteTimeline *)subtimelineWithClipComposition appendSegmentWithDurationInfo:time2 clipCount:v26 compositionInfo:&v59 configuration:v62];
    numberOfAssets = v46;
    handlerCopy = v47;
    if ([v39 numberOfClips] < 2)
    {
      allowsNUpBackground = 0;
    }

    else
    {
      allowsNUpBackground = [v49 allowsNUpBackground];
    }

    if ((allowsNUpBackground | v52))
    {
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      v42 = self->_subtimelineWithClipComposition;
      if (v42)
      {
        [(PXStoryConcreteTimeline *)v42 timeRangeForSegmentWithIdentifier:v40];
        v42 = self->_subtimelineWithClipComposition;
      }

      [(PXStoryConcreteTimeline *)v42 size];
      PXRectWithOriginAndSize();
    }

    self->_nextResourceIndex += v46;
    v47[2](v47, self->_subtimelineWithClipComposition);

    _Block_object_dispose(v84, 8);
    _Block_object_dispose(&time1, 8);
    numberOfRemainingResources = v45;
  }

  v43 = numberOfAssets <= numberOfRemainingResources;

  return v43;
}

void __223__PXStoryConcreteSubtimelineScanner__scanSubtimelineWithClipComposition_displayAssets_assetContentInfos_playbackStyles_separatorEffectParameters_kenBurnsEffectParameters_transitionInfo_startTime_durationInfo_resultHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a1 + 32) spec];
  if (*(a1 + 72) == 1 && (v7 = *(a1 + 40)) != 0)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    [v8 aspectRatio];
    *(*(a1 + 32) + 32) = v9;
  }

  else
  {
    *(*(a1 + 32) + 32) = 0;
  }

  [*(a1 + 48) getClipFrames:a4 forContext:*(a1 + 32) + 8];
  [v6 safeAreaInsets];
  [v6 viewportSize];
  PXRectWithOriginAndSize();
}

- (BOOL)_scanFastestSubtimelineWithNextDisplayAssetResultHandler:(id)handler
{
  v4 = _scanFastestSubtimelineWithNextDisplayAssetResultHandler__onceToken;
  handlerCopy = handler;
  if (v4 != -1)
  {
    dispatch_once(&_scanFastestSubtimelineWithNextDisplayAssetResultHandler__onceToken, &__block_literal_global_135725);
  }

  v15 = 1;
  v6 = _scanFastestSubtimelineWithNextDisplayAssetResultHandler__oneUpComposition;
  PXStoryTransitionInfoMakeDefault(1u, v14, 0.0);
  memset(v13, 0, sizeof(v13));
  v7 = *&self->_defaultDurationInfo.preferredCue.time.timescale;
  v12[4] = *&self->_defaultDurationInfo.maximumDuration.epoch;
  v12[5] = v7;
  v12[6] = *&self->_defaultDurationInfo.preferredCue.rank;
  v8 = *&self->_defaultDurationInfo.minimumDuration.epoch;
  v12[0] = *&self->_defaultDurationInfo.minimumDuration.value;
  v12[1] = v8;
  v9 = *&self->_defaultDurationInfo.maximumDuration.value;
  v12[2] = *&self->_defaultDurationInfo.preferredDuration.timescale;
  v12[3] = v9;
  v10 = [(PXStoryConcreteSubtimelineScanner *)self _scanSubtimelineWithClipComposition:v6 displayAssets:0 assetContentInfos:0 playbackStyles:&v15 separatorEffectParameters:0 kenBurnsEffectParameters:0 transitionInfo:v14 startTime:v13 durationInfo:v12 resultHandler:handlerCopy];

  return v10;
}

void __94__PXStoryConcreteSubtimelineScanner__scanFastestSubtimelineWithNextDisplayAssetResultHandler___block_invoke()
{
  v0 = +[PXStoryClipCompositionFactory oneUpComposition];
  v1 = _scanFastestSubtimelineWithNextDisplayAssetResultHandler__oneUpComposition;
  _scanFastestSubtimelineWithNextDisplayAssetResultHandler__oneUpComposition = v0;
}

- (BOOL)scanSubtimelineWithClipComposition:(id)composition displayAssets:(id)assets assetContentInfos:(id *)infos playbackStyles:(const int64_t *)styles separatorEffectParameters:(id *)parameters kenBurnsEffectParameters:(id *)effectParameters transitionInfo:(id *)info startTime:(id *)self0 durationInfo:(id *)self1 resultHandler:(id)self2
{
  v12 = *&info->var2.var1;
  v19[0] = *&info->var0;
  v19[1] = v12;
  v20 = *&info->var3;
  v18 = *time;
  v13 = *&durationInfo->var3.var0.var1;
  v17[4] = *&durationInfo->var2.var3;
  v17[5] = v13;
  v17[6] = *&durationInfo->var3.var1;
  v14 = *&durationInfo->var0.var3;
  v17[0] = *&durationInfo->var0.var0;
  v17[1] = v14;
  v15 = *&durationInfo->var2.var0;
  v17[2] = *&durationInfo->var1.var1;
  v17[3] = v15;
  return [(PXStoryConcreteSubtimelineScanner *)self _scanSubtimelineWithClipComposition:composition displayAssets:assets assetContentInfos:infos playbackStyles:styles separatorEffectParameters:parameters kenBurnsEffectParameters:effectParameters transitionInfo:v19 startTime:&v18 durationInfo:v17 resultHandler:handler];
}

- (void)setScanState:(id *)state
{
  self->_nextResourceIndex = state->var0;
  randomNumberGenerators = [(PXStoryConcreteSubtimelineScanner *)self randomNumberGenerators];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PXStoryConcreteSubtimelineScanner_setScanState___block_invoke;
  v6[3] = &__block_descriptor_80_e48_v32__0___PFSeededRandomNumberGenerator__8Q16_B24l;
  v5 = *&state->var1[1];
  v7 = *&state->var0;
  v8 = v5;
  v9 = *&state->var1[3];
  [randomNumberGenerators enumerateObjectsUsingBlock:v6];
}

- ($70EB31679AD570D2612C6654B67EF72A)scanState
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x5010000000;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  nextResourceIndex = self->_nextResourceIndex;
  v17 = &unk_1A561E057;
  v18 = nextResourceIndex;
  randomNumberGenerators = [(PXStoryConcreteSubtimelineScanner *)self randomNumberGenerators];
  if ([randomNumberGenerators count] >= 6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a3 object:self file:@"PXStoryConcreteSubtimelineScanner.m" lineNumber:227 description:@"too many random number generators"];
  }

  randomNumberGenerators2 = [(PXStoryConcreteSubtimelineScanner *)self randomNumberGenerators];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__PXStoryConcreteSubtimelineScanner_scanState__block_invoke;
  v13[3] = &unk_1E773C4E0;
  v13[4] = &v14;
  [randomNumberGenerators2 enumerateObjectsUsingBlock:v13];

  v9 = v15;
  v10 = *(v15 + 3);
  *&retstr->var0 = *(v15 + 2);
  *&retstr->var1[1] = v10;
  *&retstr->var1[3] = *(v9 + 4);

  _Block_object_dispose(&v14, 8);
  return result;
}

uint64_t __46__PXStoryConcreteSubtimelineScanner_scanState__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 seed];
  *(*(*(a1 + 32) + 8) + 8 * a3 + 40) = result;
  return result;
}

- (void)dealloc
{
  free(self->_nUpPlaybackStyleMapping);
  free(self->_titleTextResourceIndexes);
  v3.receiver = self;
  v3.super_class = PXStoryConcreteSubtimelineScanner;
  [(PXStoryConcreteSubtimelineScanner *)&v3 dealloc];
}

- (void)_initializeDefaultMultipartPanoramaParameters
{
  defaultHorizontalMultipartPanoramaParameters = [(PXStoryTimelineStyle *)self->_timelineStyle defaultHorizontalMultipartPanoramaParameters];
  defaultHorizontalMultipartPanoramaParameters = self->_defaultHorizontalMultipartPanoramaParameters;
  self->_defaultHorizontalMultipartPanoramaParameters = defaultHorizontalMultipartPanoramaParameters;

  v5 = self->_defaultHorizontalMultipartPanoramaParameters;
  if (v5)
  {
    [(PXStoryMultipartPanoramaParameters *)v5 normalizedKenBurnsEffectParameters];
    PXStoryRectIsNull();
  }

  defaultVerticalMultipartPanoramaParameters = [(PXStoryTimelineStyle *)self->_timelineStyle defaultVerticalMultipartPanoramaParameters];
  defaultVerticalMultipartPanoramaParameters = self->_defaultVerticalMultipartPanoramaParameters;
  self->_defaultVerticalMultipartPanoramaParameters = defaultVerticalMultipartPanoramaParameters;

  v8 = self->_defaultVerticalMultipartPanoramaParameters;
  if (v8)
  {
    [(PXStoryMultipartPanoramaParameters *)v8 normalizedKenBurnsEffectParameters];
    PXStoryRectIsNull();
  }

  self->_minimumAspectRatioForHorizontalMultipartPanorama = 1.79769313e308;
  self->_maximumAspectRatioForVerticalMultipartPanorama = -1.79769313e308;
}

- (PXStoryConcreteSubtimelineScanner)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v55.receiver = self;
  v55.super_class = PXStoryConcreteSubtimelineScanner;
  v5 = [(PXStoryConcreteSubtimelineScanner *)&v55 init];
  if (v5)
  {
    resourcesDataSource = [configurationCopy resourcesDataSource];
    resourcesDataSource = v5->_resourcesDataSource;
    v5->_resourcesDataSource = resourcesDataSource;

    spec = [configurationCopy spec];
    style = [configurationCopy style];
    createRandomNumberGenerators = [style createRandomNumberGenerators];
    randomNumberGenerators = v5->_randomNumberGenerators;
    v5->_randomNumberGenerators = createRandomNumberGenerators;

    objc_storeStrong(&v5->_spec, spec);
    v12 = v5->_resourcesDataSource;
    v13 = v5->_randomNumberGenerators;
    errorReporter = [configurationCopy errorReporter];
    v15 = [style timelineStyleWithSpec:spec resourcesDataSource:v12 randomNumberGenerators:v13 errorReporter:errorReporter];
    timelineStyle = v5->_timelineStyle;
    v5->_timelineStyle = v15;

    scorerFactory = [configurationCopy scorerFactory];
    if (scorerFactory)
    {
      scorerFactory2 = [configurationCopy scorerFactory];
      v19 = (scorerFactory2)[2](scorerFactory2, v5->_timelineStyle);
      timelineScorer = v5->_timelineScorer;
      v5->_timelineScorer = v19;
    }

    else
    {
      v21 = [[PXStoryConcreteTimelineScorer alloc] initWithTimelineStyle:v5->_timelineStyle];
      scorerFactory2 = v5->_timelineScorer;
      v5->_timelineScorer = v21;
    }

    v5->_productionOptions = [configurationCopy options];
    [spec viewportSize];
    v23 = v22;
    v25 = v24;
    [spec nUpDividerWidth];
    v5->_clipCompositionContext.viewportSize.width = v23;
    v5->_clipCompositionContext.viewportSize.height = v25;
    v5->_clipCompositionContext.dividerWidth = v26;
    v5->_clipCompositionContext.singleAssetAspectRatio = 0.0;
    keyAssetResource = [(PXStoryResourcesDataSource *)v5->_resourcesDataSource keyAssetResource];
    if (keyAssetResource)
    {
      v28 = -1;
    }

    else
    {
      v28 = 0;
    }

    v5->_initialResourceIndex = v28;
    v5->_nextResourceIndex = v28;
    numberOfDisplayAssetResources = [(PXStoryResourcesDataSource *)v5->_resourcesDataSource numberOfDisplayAssetResources];
    v5->_numberOfResources = numberOfDisplayAssetResources;
    if (numberOfDisplayAssetResources >= 1)
    {
      v30 = [(PXStoryResourcesDataSource *)v5->_resourcesDataSource displayAssetResourceAtIndex:0];
      v5->_firstDisplayAssetIsSameAsKey = [keyAssetResource isEqual:v30];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__PXStoryConcreteSubtimelineScanner_initWithConfiguration___block_invoke;
    aBlock[3] = &unk_1E773C4B8;
    aBlock[4] = spec;
    v31 = v5;
    aBlock[5] = v31;
    v32 = _Block_copy(aBlock);
    v33 = v32[2]();
    subtimelineWithClipComposition = v31->_subtimelineWithClipComposition;
    v31->_subtimelineWithClipComposition = v33;

    v35 = (v32[2])(v32);
    bestSubtimeline = v31->_bestSubtimeline;
    v31->_bestSubtimeline = v35;

    v37 = (v32[2])(v32);
    candidateSubtimeline = v31->_candidateSubtimeline;
    v31->_candidateSubtimeline = v37;

    v39 = (v32[2])(v32);
    precedingSubtimeline = v31->_precedingSubtimeline;
    v31->_precedingSubtimeline = v39;

    v41 = (v32[2])(v32);
    precedingSubtimelineWithCandidateSubtimeline = v31->_precedingSubtimelineWithCandidateSubtimeline;
    v31->_precedingSubtimelineWithCandidateSubtimeline = v41;

    v43 = (v32[2])(v32);
    precedingSubtimelineWithCandidateAndSubsequentSubtimelines = v31->_precedingSubtimelineWithCandidateAndSubsequentSubtimelines;
    v31->_precedingSubtimelineWithCandidateAndSubsequentSubtimelines = v43;

    v45 = (v32[2])(v32);
    subtimelineWithRemainingClips = v31->_subtimelineWithRemainingClips;
    v31->_subtimelineWithRemainingClips = v45;

    v47 = (v32[2])(v32);
    emptySubtimeline = v31->_emptySubtimeline;
    v31->_emptySubtimeline = v47;

    v49 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v50 = 1;
    while (1)
    {
      if ([(PXStoryTimelineStyle *)v5->_timelineStyle isOriginalPlaybackStyleAllowedInNUp:v50])
      {
        [v49 addIndex:v50];
      }

      if (++v50 == 6)
      {
        v51 = [v49 copy];
        originalPlaybackStylesAllowedInNUp = v31->_originalPlaybackStylesAllowedInNUp;
        v31->_originalPlaybackStylesAllowedInNUp = v51;

        _PXGArrayResize();
      }
    }
  }

  return 0;
}

PXStoryMutableConcreteTimeline *__59__PXStoryConcreteSubtimelineScanner_initWithConfiguration___block_invoke(uint64_t a1)
{
  v2 = [PXStoryMutableConcreteTimeline alloc];
  [*(a1 + 32) viewportSize];
  v3 = [(PXStoryConcreteTimeline *)v2 initWithSize:*(*(a1 + 40) + 616) resourcesDataSource:?];

  return v3;
}

- (PXStoryConcreteSubtimelineScanner)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteSubtimelineScanner.m" lineNumber:103 description:{@"%s is not available as initializer", "-[PXStoryConcreteSubtimelineScanner init]"}];

  abort();
}

@end