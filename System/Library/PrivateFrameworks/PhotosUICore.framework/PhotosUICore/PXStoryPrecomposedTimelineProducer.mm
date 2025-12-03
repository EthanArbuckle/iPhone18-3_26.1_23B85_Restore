@interface PXStoryPrecomposedTimelineProducer
- (PXStoryPrecomposedTimelineProducer)initWithTimelineKind:(unint64_t)kind;
- (id)_segmentsForTimelineKind:(unint64_t)kind spec:(id)spec;
- (id)createTimelineWithConfiguration:(id)configuration;
- (id)requestTimelineWithConfiguration:(id)configuration options:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryPrecomposedTimelineProducer

- (id)_segmentsForTimelineKind:(unint64_t)kind spec:(id)spec
{
  v155[3] = *MEMORY[0x1E69E9840];
  specCopy = spec;
  v8 = specCopy;
  v9 = 0;
  if (kind > 1)
  {
    if (kind == 2)
    {
      v59 = [_PXStoryPrecomposedTimelineSegment alloc];
      v151 = v8;
      v60 = +[PXStoryClipCompositionFactory oneUpComposition];
      v149 = [(_PXStoryPrecomposedTimelineSegment *)v59 initWithClipComposition:v60 transitionKind:4];
      v154[0] = v149;
      v61 = [_PXStoryPrecomposedTimelineSegment alloc];
      v62 = +[PXStoryClipCompositionFactory oneUpComposition];
      v63 = [(_PXStoryPrecomposedTimelineSegment *)v61 initWithClipComposition:v62 transitionKind:5];
      v154[1] = v63;
      v64 = [_PXStoryPrecomposedTimelineSegment alloc];
      v65 = +[PXStoryClipCompositionFactory oneUpComposition];
      v66 = [(_PXStoryPrecomposedTimelineSegment *)v64 initWithClipComposition:v65 transitionKind:6];
      v154[2] = v66;
      v67 = [_PXStoryPrecomposedTimelineSegment alloc];
      v68 = +[PXStoryClipCompositionFactory oneUpComposition];
      v69 = [(_PXStoryPrecomposedTimelineSegment *)v67 initWithClipComposition:v68 transitionKind:7];
      v154[3] = v69;
      v70 = [_PXStoryPrecomposedTimelineSegment alloc];
      v71 = +[PXStoryClipCompositionFactory oneUpComposition];
      v72 = [(_PXStoryPrecomposedTimelineSegment *)v70 initWithClipComposition:v71 transitionKind:9];
      v154[4] = v72;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:5];

      v8 = v151;
      v45 = v60;
    }

    else
    {
      if (kind != 3)
      {
        goto LABEL_14;
      }

      [specCopy viewportSize];
      v11 = v10;
      v150 = v8;
      [v8 viewportSize];
      v13 = v12;
      v14 = [_PXStoryPrecomposedTimelineSegment alloc];
      v148 = +[PXStoryClipCompositionFactory oneUpComposition];
      if (v11 <= v13)
      {
        v147 = [(_PXStoryPrecomposedTimelineSegment *)v14 initWithClipComposition:v148 transitionKind:1];
        v152[0] = v147;
        v74 = [_PXStoryPrecomposedTimelineSegment alloc];
        v146 = +[PXStoryClipCompositionFactory oneUpComposition];
        v145 = [(_PXStoryPrecomposedTimelineSegment *)v74 initWithClipComposition:v146 transitionKind:8];
        v152[1] = v145;
        v75 = [_PXStoryPrecomposedTimelineSegment alloc];
        v144 = +[PXStoryClipCompositionFactory twoUpTwoThirdsTopOneThirdBottomComposition];
        v143 = [(_PXStoryPrecomposedTimelineSegment *)v75 initWithClipComposition:v144 transitionKind:8];
        v152[2] = v143;
        v76 = [_PXStoryPrecomposedTimelineSegment alloc];
        v142 = +[PXStoryClipCompositionFactory twoUpHalfTopHalfBottomComposition];
        v141 = [(_PXStoryPrecomposedTimelineSegment *)v76 initWithClipComposition:v142 transitionKind:8];
        v152[3] = v141;
        v77 = [_PXStoryPrecomposedTimelineSegment alloc];
        v140 = +[PXStoryClipCompositionFactory oneUpComposition];
        v139 = [(_PXStoryPrecomposedTimelineSegment *)v77 initWithClipComposition:v140 transitionKind:8];
        v152[4] = v139;
        v78 = [_PXStoryPrecomposedTimelineSegment alloc];
        v138 = +[PXStoryClipCompositionFactory oneUpComposition];
        v137 = [(_PXStoryPrecomposedTimelineSegment *)v78 initWithClipComposition:v138 transitionKind:8];
        v152[5] = v137;
        v79 = [_PXStoryPrecomposedTimelineSegment alloc];
        v136 = +[PXStoryClipCompositionFactory threeUpHorizontalThirdsComposition];
        v135 = [(_PXStoryPrecomposedTimelineSegment *)v79 initWithClipComposition:v136 transitionKind:1];
        v152[6] = v135;
        v80 = [_PXStoryPrecomposedTimelineSegment alloc];
        v134 = +[PXStoryClipCompositionFactory oneUpComposition];
        v133 = [(_PXStoryPrecomposedTimelineSegment *)v80 initWithClipComposition:v134 transitionKind:8];
        v152[7] = v133;
        v81 = [_PXStoryPrecomposedTimelineSegment alloc];
        v132 = +[PXStoryClipCompositionFactory twoUpOneThirdTopTwoThirdsBottomComposition];
        v131 = [(_PXStoryPrecomposedTimelineSegment *)v81 initWithClipComposition:v132 transitionKind:1];
        v152[8] = v131;
        v82 = [_PXStoryPrecomposedTimelineSegment alloc];
        v130 = +[PXStoryClipCompositionFactory oneUpComposition];
        v129 = [(_PXStoryPrecomposedTimelineSegment *)v82 initWithClipComposition:v130 transitionKind:8];
        v152[9] = v129;
        v83 = [_PXStoryPrecomposedTimelineSegment alloc];
        v128 = +[PXStoryClipCompositionFactory twoUpTwoThirdsTopOneThirdBottomComposition];
        v127 = [(_PXStoryPrecomposedTimelineSegment *)v83 initWithClipComposition:v128 transitionKind:1];
        v152[10] = v127;
        v84 = [_PXStoryPrecomposedTimelineSegment alloc];
        v126 = +[PXStoryClipCompositionFactory oneUpComposition];
        v125 = [(_PXStoryPrecomposedTimelineSegment *)v84 initWithClipComposition:v126 transitionKind:8];
        v152[11] = v125;
        v85 = [_PXStoryPrecomposedTimelineSegment alloc];
        v124 = +[PXStoryClipCompositionFactory twoUpHalfTopHalfBottomComposition];
        v123 = [(_PXStoryPrecomposedTimelineSegment *)v85 initWithClipComposition:v124 transitionKind:1];
        v152[12] = v123;
        v86 = [_PXStoryPrecomposedTimelineSegment alloc];
        v122 = +[PXStoryClipCompositionFactory twoUpTwoThirdsTopOneThirdBottomComposition];
        v121 = [(_PXStoryPrecomposedTimelineSegment *)v86 initWithClipComposition:v122 transitionKind:8];
        v152[13] = v121;
        v87 = [_PXStoryPrecomposedTimelineSegment alloc];
        v120 = +[PXStoryClipCompositionFactory oneUpComposition];
        v119 = [(_PXStoryPrecomposedTimelineSegment *)v87 initWithClipComposition:v120 transitionKind:1];
        v152[14] = v119;
        v88 = [_PXStoryPrecomposedTimelineSegment alloc];
        v118 = +[PXStoryClipCompositionFactory twoUpOneThirdTopTwoThirdsBottomComposition];
        v117 = [(_PXStoryPrecomposedTimelineSegment *)v88 initWithClipComposition:v118 transitionKind:8];
        v152[15] = v117;
        v89 = [_PXStoryPrecomposedTimelineSegment alloc];
        v116 = +[PXStoryClipCompositionFactory oneUpComposition];
        v115 = [(_PXStoryPrecomposedTimelineSegment *)v89 initWithClipComposition:v116 transitionKind:1];
        v152[16] = v115;
        v90 = [_PXStoryPrecomposedTimelineSegment alloc];
        v114 = +[PXStoryClipCompositionFactory twoUpHalfTopHalfBottomComposition];
        v113 = [(_PXStoryPrecomposedTimelineSegment *)v90 initWithClipComposition:v114 transitionKind:8];
        v152[17] = v113;
        v91 = [_PXStoryPrecomposedTimelineSegment alloc];
        v112 = +[PXStoryClipCompositionFactory oneUpComposition];
        v111 = [(_PXStoryPrecomposedTimelineSegment *)v91 initWithClipComposition:v112 transitionKind:1];
        v152[18] = v111;
        v92 = [_PXStoryPrecomposedTimelineSegment alloc];
        v110 = +[PXStoryClipCompositionFactory twoUpTwoThirdsTopOneThirdBottomComposition];
        v109 = [(_PXStoryPrecomposedTimelineSegment *)v92 initWithClipComposition:v110 transitionKind:8];
        v152[19] = v109;
        v93 = [_PXStoryPrecomposedTimelineSegment alloc];
        v108 = +[PXStoryClipCompositionFactory twoUpOneThirdTopTwoThirdsBottomComposition];
        v107 = [(_PXStoryPrecomposedTimelineSegment *)v93 initWithClipComposition:v108 transitionKind:1];
        v152[20] = v107;
        v94 = [_PXStoryPrecomposedTimelineSegment alloc];
        v106 = +[PXStoryClipCompositionFactory twoUpHalfTopHalfBottomComposition];
        v95 = [(_PXStoryPrecomposedTimelineSegment *)v94 initWithClipComposition:v106 transitionKind:8];
        v152[21] = v95;
        v96 = [_PXStoryPrecomposedTimelineSegment alloc];
        v97 = +[PXStoryClipCompositionFactory twoUpHalfTopHalfBottomComposition];
        v98 = [(_PXStoryPrecomposedTimelineSegment *)v96 initWithClipComposition:v97 transitionKind:1];
        v152[22] = v98;
        v99 = [_PXStoryPrecomposedTimelineSegment alloc];
        v100 = +[PXStoryClipCompositionFactory oneUpComposition];
        v101 = [(_PXStoryPrecomposedTimelineSegment *)v99 initWithClipComposition:v100 transitionKind:1];
        v152[23] = v101;
        v102 = [_PXStoryPrecomposedTimelineSegment alloc];
        v103 = +[PXStoryClipCompositionFactory oneUpComposition];
        v104 = [(_PXStoryPrecomposedTimelineSegment *)v102 initWithClipComposition:v103 transitionKind:1];
        v152[24] = v104;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:25];

        v45 = v148;
      }

      else
      {
        v147 = [(_PXStoryPrecomposedTimelineSegment *)v14 initWithClipComposition:v148 transitionKind:8];
        v153[0] = v147;
        v15 = [_PXStoryPrecomposedTimelineSegment alloc];
        v146 = +[PXStoryClipCompositionFactory threeUpVerticalThirdsComposition];
        v145 = [(_PXStoryPrecomposedTimelineSegment *)v15 initWithClipComposition:v146 transitionKind:1];
        v153[1] = v145;
        v16 = [_PXStoryPrecomposedTimelineSegment alloc];
        v144 = +[PXStoryClipCompositionFactory twoUpTwoThirdsLeadingOneThirdTrailingComposition];
        v143 = [(_PXStoryPrecomposedTimelineSegment *)v16 initWithClipComposition:v144 transitionKind:8];
        v153[2] = v143;
        v17 = [_PXStoryPrecomposedTimelineSegment alloc];
        v142 = +[PXStoryClipCompositionFactory oneUpComposition];
        v141 = [(_PXStoryPrecomposedTimelineSegment *)v17 initWithClipComposition:v142 transitionKind:1];
        v153[3] = v141;
        v18 = [_PXStoryPrecomposedTimelineSegment alloc];
        v140 = +[PXStoryClipCompositionFactory twoUpTwoThirdsLeadingOneThirdTrailingComposition];
        v139 = [(_PXStoryPrecomposedTimelineSegment *)v18 initWithClipComposition:v140 transitionKind:8];
        v153[4] = v139;
        v19 = [_PXStoryPrecomposedTimelineSegment alloc];
        v138 = +[PXStoryClipCompositionFactory oneUpComposition];
        v137 = [(_PXStoryPrecomposedTimelineSegment *)v19 initWithClipComposition:v138 transitionKind:1];
        v153[5] = v137;
        v20 = [_PXStoryPrecomposedTimelineSegment alloc];
        v136 = +[PXStoryClipCompositionFactory twoUpHalfLeadingHalfTrailingComposition];
        v135 = [(_PXStoryPrecomposedTimelineSegment *)v20 initWithClipComposition:v136 transitionKind:8];
        v153[6] = v135;
        v21 = [_PXStoryPrecomposedTimelineSegment alloc];
        v134 = +[PXStoryClipCompositionFactory oneUpComposition];
        v133 = [(_PXStoryPrecomposedTimelineSegment *)v21 initWithClipComposition:v134 transitionKind:1];
        v153[7] = v133;
        v22 = [_PXStoryPrecomposedTimelineSegment alloc];
        v132 = +[PXStoryClipCompositionFactory oneUpComposition];
        v131 = [(_PXStoryPrecomposedTimelineSegment *)v22 initWithClipComposition:v132 transitionKind:8];
        v153[8] = v131;
        v23 = [_PXStoryPrecomposedTimelineSegment alloc];
        v130 = +[PXStoryClipCompositionFactory twoUpHalfLeadingHalfTrailingComposition];
        v129 = [(_PXStoryPrecomposedTimelineSegment *)v23 initWithClipComposition:v130 transitionKind:1];
        v153[9] = v129;
        v24 = [_PXStoryPrecomposedTimelineSegment alloc];
        v128 = +[PXStoryClipCompositionFactory oneUpComposition];
        v127 = [(_PXStoryPrecomposedTimelineSegment *)v24 initWithClipComposition:v128 transitionKind:8];
        v153[10] = v127;
        v25 = [_PXStoryPrecomposedTimelineSegment alloc];
        v126 = +[PXStoryClipCompositionFactory twoUpOneThirdLeadingTwoThirdsTrailingComposition];
        v125 = [(_PXStoryPrecomposedTimelineSegment *)v25 initWithClipComposition:v126 transitionKind:1];
        v153[11] = v125;
        v26 = [_PXStoryPrecomposedTimelineSegment alloc];
        v124 = +[PXStoryClipCompositionFactory oneUpComposition];
        v123 = [(_PXStoryPrecomposedTimelineSegment *)v26 initWithClipComposition:v124 transitionKind:8];
        v153[12] = v123;
        v27 = [_PXStoryPrecomposedTimelineSegment alloc];
        v122 = +[PXStoryClipCompositionFactory twoUpTwoThirdsLeadingOneThirdTrailingComposition];
        v121 = [(_PXStoryPrecomposedTimelineSegment *)v27 initWithClipComposition:v122 transitionKind:1];
        v153[13] = v121;
        v28 = [_PXStoryPrecomposedTimelineSegment alloc];
        v120 = +[PXStoryClipCompositionFactory twoUpTwoThirdsLeadingOneThirdTrailingComposition];
        v119 = [(_PXStoryPrecomposedTimelineSegment *)v28 initWithClipComposition:v120 transitionKind:8];
        v153[14] = v119;
        v29 = [_PXStoryPrecomposedTimelineSegment alloc];
        v118 = +[PXStoryClipCompositionFactory oneUpComposition];
        v117 = [(_PXStoryPrecomposedTimelineSegment *)v29 initWithClipComposition:v118 transitionKind:1];
        v153[15] = v117;
        v30 = [_PXStoryPrecomposedTimelineSegment alloc];
        v116 = +[PXStoryClipCompositionFactory twoUpTwoThirdsLeadingOneThirdTrailingComposition];
        v115 = [(_PXStoryPrecomposedTimelineSegment *)v30 initWithClipComposition:v116 transitionKind:8];
        v153[16] = v115;
        v31 = [_PXStoryPrecomposedTimelineSegment alloc];
        v114 = +[PXStoryClipCompositionFactory twoUpOneThirdLeadingTwoThirdsTrailingComposition];
        v32 = [(_PXStoryPrecomposedTimelineSegment *)v31 initWithClipComposition:v114 transitionKind:1];
        v153[17] = v32;
        v33 = [_PXStoryPrecomposedTimelineSegment alloc];
        v34 = +[PXStoryClipCompositionFactory twoUpHalfLeadingHalfTrailingComposition];
        v35 = [(_PXStoryPrecomposedTimelineSegment *)v33 initWithClipComposition:v34 transitionKind:8];
        v153[18] = v35;
        v36 = [_PXStoryPrecomposedTimelineSegment alloc];
        v37 = +[PXStoryClipCompositionFactory twoUpHalfLeadingHalfTrailingComposition];
        v38 = [(_PXStoryPrecomposedTimelineSegment *)v36 initWithClipComposition:v37 transitionKind:1];
        v153[19] = v38;
        v39 = [_PXStoryPrecomposedTimelineSegment alloc];
        v40 = +[PXStoryClipCompositionFactory oneUpComposition];
        v41 = [(_PXStoryPrecomposedTimelineSegment *)v39 initWithClipComposition:v40 transitionKind:1];
        v153[20] = v41;
        v42 = [_PXStoryPrecomposedTimelineSegment alloc];
        v43 = +[PXStoryClipCompositionFactory oneUpComposition];
        v44 = [(_PXStoryPrecomposedTimelineSegment *)v42 initWithClipComposition:v43 transitionKind:1];
        v153[21] = v44;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:22];

        v45 = v148;
      }

      v8 = v150;
    }

    goto LABEL_13;
  }

  if (kind == 1)
  {
    v46 = objc_alloc(MEMORY[0x1E695DF70]);
    v47 = [_PXStoryPrecomposedTimelineSegment alloc];
    v48 = +[PXStoryClipCompositionFactory oneUpComposition];
    v49 = [(_PXStoryPrecomposedTimelineSegment *)v47 initWithClipComposition:v48 transitionKind:1];
    v155[0] = v49;
    v50 = [_PXStoryPrecomposedTimelineSegment alloc];
    v51 = +[PXStoryClipCompositionFactory oneUpComposition];
    v52 = [(_PXStoryPrecomposedTimelineSegment *)v50 initWithClipComposition:v51 transitionKind:2];
    v155[1] = v52;
    v53 = [_PXStoryPrecomposedTimelineSegment alloc];
    v54 = +[PXStoryClipCompositionFactory oneUpComposition];
    v55 = [(_PXStoryPrecomposedTimelineSegment *)v53 initWithClipComposition:v54 transitionKind:3];
    v155[2] = v55;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:3];
    v45 = [v46 initWithArray:v56];

    v57 = [(PXStoryPrecomposedTimelineProducer *)self _segmentsForTimelineKind:2 spec:v8];
    [v45 addObjectsFromArray:v57];

    v58 = [(PXStoryPrecomposedTimelineProducer *)self _segmentsForTimelineKind:3 spec:v8];
    [v45 addObjectsFromArray:v58];

    v9 = [v45 copy];
LABEL_13:

    goto LABEL_14;
  }

  if (!kind)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPrecomposedTimelineProducer.m" lineNumber:121 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_14:

  return v9;
}

- (id)createTimelineWithConfiguration:(id)configuration
{
  v63 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  spec = [configurationCopy spec];
  v6 = [PXStoryMutableConcreteTimeline alloc];
  [spec viewportSize];
  v8 = v7;
  v10 = v9;
  resourcesDataSource = [configurationCopy resourcesDataSource];
  v30 = [(PXStoryConcreteTimeline *)v6 initWithSize:resourcesDataSource resourcesDataSource:v8, v10];

  v31 = spec;
  [(PXStoryPrecomposedTimelineProducer *)self _segmentsForTimelineKind:[(PXStoryPrecomposedTimelineProducer *)self timelineKind] spec:spec];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v61 = 0u;
  v29 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v29)
  {
    v28 = *v59;
    v12 = -1;
    while (2)
    {
      v13 = 0;
      v14 = v12;
      do
      {
        if (*v59 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v58 + 1) + 8 * v13);
        clipComposition = [v15 clipComposition];
        transitionKind = [v15 transitionKind];
        numberOfClips = [clipComposition numberOfClips];
        resourcesDataSource2 = [configurationCopy resourcesDataSource];
        numberOfDisplayAssetResources = [resourcesDataSource2 numberOfDisplayAssetResources];
        v12 = numberOfClips + v14;

        if (numberOfDisplayAssetResources < numberOfClips + v14)
        {

          goto LABEL_11;
        }

        v21 = objc_alloc_init(_PXStoryPrecomposedDisplayAssetsFetchResult);
        resourcesDataSource3 = [configurationCopy resourcesDataSource];
        [(_PXStoryPrecomposedDisplayAssetsFetchResult *)v21 configureWithRange:v14 resourcesDataSource:numberOfClips, resourcesDataSource3];

        CMTimeMakeWithSeconds((&v54 + 8), 4.0, 600);
        *&v54 = 0;
        v53 = PXStoryTimeZero;
        memset(v57, 0, 40);
        v56 = PXStoryTimeMaximum;
        PXStorySegmentClipCompositionInfoFromComposition(clipComposition, v52);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __70__PXStoryPrecomposedTimelineProducer_createTimelineWithConfiguration___block_invoke;
        v35[3] = &unk_1E77483B8;
        v36 = clipComposition;
        selfCopy = self;
        v41 = numberOfClips;
        v38 = v31;
        v39 = v21;
        v23 = configurationCopy;
        v46 = v56;
        v47 = v57[0];
        v48 = v57[1];
        v43 = v53;
        v44 = v54;
        v45 = v55;
        v32[4] = v57[0];
        v32[5] = v57[1];
        v32[0] = v53;
        v32[1] = v54;
        v40 = v23;
        v42 = v14;
        v51 = transitionKind;
        v49 = *&v57[2];
        v50 = 0;
        v32[2] = v55;
        v32[3] = v56;
        v33 = *&v57[2];
        v34 = 0;
        v24 = v21;
        v25 = clipComposition;
        [(PXStoryMutableConcreteTimeline *)v30 appendSegmentWithDurationInfo:v32 clipCount:numberOfClips compositionInfo:v52 configuration:v35];

        ++v13;
        v14 += numberOfClips;
      }

      while (v29 != v13);
      v29 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v30;
}

void __70__PXStoryPrecomposedTimelineProducer_createTimelineWithConfiguration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a5;
  v6 = a2;
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) getClipFrames:a4 forContext:*(a1 + 40) + 8];
  [*(a1 + 48) safeAreaInsets];
  [*(a1 + 48) viewportSize];
  PXRectWithOriginAndSize();
}

- (id)requestTimelineWithConfiguration:(id)configuration options:(unint64_t)options resultHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  spec = [configurationCopy spec];
  [spec viewportSize];
  v11 = v10;
  v13 = v12;
  spec2 = [configurationCopy spec];
  [spec2 nUpDividerWidth];
  self->_clipCompositionContext.viewportSize.width = v11;
  self->_clipCompositionContext.viewportSize.height = v13;
  self->_clipCompositionContext.dividerWidth = v15;
  self->_clipCompositionContext.singleAssetAspectRatio = 0.0;

  v16 = [(PXStoryPrecomposedTimelineProducer *)self createTimelineWithConfiguration:configurationCopy];

  v17 = [[PXStoryProducerResult alloc] initWithObject:v16];
  handlerCopy[2](handlerCopy, v17);

  return 0;
}

- (PXStoryPrecomposedTimelineProducer)initWithTimelineKind:(unint64_t)kind
{
  v4 = [(PXStoryPrecomposedTimelineProducer *)self init];
  [(PXStoryPrecomposedTimelineProducer *)v4 setTimelineKind:kind];
  return v4;
}

@end