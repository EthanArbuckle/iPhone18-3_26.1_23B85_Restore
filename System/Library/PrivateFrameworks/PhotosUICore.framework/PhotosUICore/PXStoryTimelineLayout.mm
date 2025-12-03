@interface PXStoryTimelineLayout
- ($7A74DE1ADD4D9428579EDAA94466197A)clipsCornerRadius;
- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadius;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)displayedTimeRange;
- (CGRect)displayedTimelineRect;
- (PXStoryTimelineLayout)init;
- (PXStoryTimelineLayoutSnapshot)presentedSnapshot;
- (UIEdgeInsets)clippingInsets;
- (id)existingLayoutForClipWithIdentifier:(int64_t)identifier;
- (int64_t)_sublayoutIndexForClipWithIdentifier:(int64_t)identifier;
- (void)_invalidateContent;
- (void)_updateContent;
- (void)alphaDidChange;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)didUpdate;
- (void)didUpdateClipLayout:(id)layout frame:(CGRect)frame;
- (void)enumerateClipLayouts:(id)layouts;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setClipsCornerRadius:(id)radius;
- (void)setCornerRadius:(id)radius;
- (void)setDisplayedTimeRange:(id *)range;
- (void)setDisplayedTimeline:(id)timeline;
- (void)setDisplayedTimelineRect:(CGRect)rect;
- (void)setPresentedTimelineTransition:(id)transition;
- (void)setRelativeZPositionAboveLegibilityGradients:(double)gradients;
- (void)update;
- (void)willUpdate;
@end

@implementation PXStoryTimelineLayout

- (UIEdgeInsets)clippingInsets
{
  top = self->_clippingInsets.top;
  left = self->_clippingInsets.left;
  bottom = self->_clippingInsets.bottom;
  right = self->_clippingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- ($7A74DE1ADD4D9428579EDAA94466197A)clipsCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (CGRect)displayedTimelineRect
{
  x = self->_displayedTimelineRect.origin.x;
  y = self->_displayedTimelineRect.origin.y;
  width = self->_displayedTimelineRect.size.width;
  height = self->_displayedTimelineRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)displayedTimeRange
{
  v3 = *&self[25].var0.var0;
  *&retstr->var0.var0 = *&self[24].var1.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[25].var0.var3;
  return self;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (TimelineTransitionObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTimelineLayout.m" lineNumber:417 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 1) != 0 && !self->_isUpdatingTimelineContent)
  {
    v11 = observableCopy;
    [(PXStoryTimelineLayout *)self _invalidateContent];
    observableCopy = v11;
  }
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  displayedTimeline = [(PXStoryTimelineLayout *)self displayedTimeline];
  v5 = [displayedTimeline description];
  diagnosticDescription = [displayedTimeline diagnosticDescription];
  v7 = [v5 stringByAppendingFormat:@"\n\n%@", diagnosticDescription];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DisplayedTimeline-%p", self];
  [containerCopy addAttachmentWithText:v7 name:v8];
}

- (int64_t)_sublayoutIndexForClipWithIdentifier:(int64_t)identifier
{
  clipLayoutReuseIdentifiersByClipIdentifier = self->_clipLayoutReuseIdentifiersByClipIdentifier;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  v6 = [(NSMutableDictionary *)clipLayoutReuseIdentifiersByClipIdentifier objectForKeyedSubscript:v5];

  v7 = [(NSMutableOrderedSet *)self->_clipLayoutReuseIdentifiers indexOfObject:v6];
  return v7;
}

- (id)existingLayoutForClipWithIdentifier:(int64_t)identifier
{
  v4 = [(PXStoryTimelineLayout *)self _sublayoutIndexForClipWithIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(PXStoryTimelineLayout *)self sublayoutAtIndex:v4 loadIfNeeded:0];
  }

  return v5;
}

- (void)enumerateClipLayouts:(id)layouts
{
  layoutsCopy = layouts;
  clipIdentifiers = self->_clipIdentifiers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PXStoryTimelineLayout_enumerateClipLayouts___block_invoke;
  v7[3] = &unk_1E773CDD8;
  v7[4] = self;
  v8 = layoutsCopy;
  v6 = layoutsCopy;
  [(NSMutableIndexSet *)clipIdentifiers enumerateIndexesUsingBlock:v7];
}

void __46__PXStoryTimelineLayout_enumerateClipLayouts___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) existingLayoutForClipWithIdentifier:a2];
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 40) + 16))();
    v3 = v4;
  }
}

- (void)_updateContent
{
  [(PXStoryTimelineLayout *)self willUpdateTimelineContent];
  [(PXStoryTimelineLayout *)self referenceSize];
  v4 = v3;
  v6 = v5;
  if ([(PXStoryTimelineLayout *)self shouldSetContentSizeToReferenceSize])
  {
    [(PXGAbsoluteCompositeLayout *)self setContentSize:v4, v6];
    [(PXStoryTimelineLayout *)self displayedTimeline];
    objc_claimAutoreleasedReturnValue();
    [(PXStoryTimelineLayout *)self displayedTimeRange];
    [(PXStoryTimelineLayout *)self displayedTimelineRect];
    [(PXStoryTimelineLayout *)self cornerRadius];
    [(PXStoryTimelineLayout *)self clipsCornerRadius];
    [(PXStoryTimelineLayout *)self referenceDepth];
    [(PXStoryTimelineLayout *)self clippingInsets];
    PXEdgeInsetsEqualToEdgeInsets();
  }

  [(PXStoryTimelineLayout *)self referenceSize];
  PXRectWithOriginAndSize();
}

PXStoryClipLayoutReuseIdentifier *__39__PXStoryTimelineLayout__updateContent__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 1040);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [*(a1 + 40) clipWithIdentifier:a2];
    v6 = [[PXStoryClipLayoutReuseIdentifier alloc] initWithClip:v7];
    v8 = *(*(a1 + 32) + 1040);
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v8 setObject:v6 forKeyedSubscript:v9];
  }

  return v6;
}

void __39__PXStoryTimelineLayout__updateContent__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v15 = v5;
    v16 = v6;
    v7 = a2;
    v9 = (a5 + 8);
    do
    {
      v10 = *(a1 + 48);
      v11 = *(v10 + 16);
      v13 = *(v9 - 1);
      memcpy(v14, v9, sizeof(v14));
      if (v11(v10, &v13))
      {
        v12 = (*(*(a1 + 56) + 16))();
        if ([*(*(a1 + 32) + 1032) indexOfObject:v12] != 0x7FFFFFFFFFFFFFFFLL)
        {
          [*(a1 + 40) removeObject:v12];
        }
      }

      v9 += 96;
      --v7;
    }

    while (v7);
  }
}

void __39__PXStoryTimelineLayout__updateContent__block_invoke_4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v124 = v14;
    v125 = v13;
    v126 = v12;
    v127 = v11;
    v128 = v10;
    v129 = v9;
    v130 = v8;
    v131 = v7;
    v132 = v5;
    v133 = v6;
    v96 = *(off_1E7721FA8 + 1);
    v97 = *off_1E7721FA8;
    v94 = *(off_1E7721FA8 + 3);
    v95 = *(off_1E7721FA8 + 2);
    v17 = (a5 + 16);
    v18 = (a4 + 16);
    do
    {
      v111 = a2;
      v20 = *(v17 - 2);
      v19 = *(v17 - 1);
      memcpy(__dst, v17, sizeof(__dst));
      v21 = *(a1 + 80);
      v22 = *(v21 + 16);
      *&v121 = v20;
      *(&v121 + 1) = v19;
      memcpy(v122, v17, sizeof(v122));
      if (v22(v21, &v121))
      {
        v110 = [*(a1 + 32) clipWithIdentifier:v20];
        [*(*(a1 + 40) + 1024) addIndex:v20];
        v23 = (*(*(a1 + 88) + 16))();
        v24 = [*(*(a1 + 40) + 1032) indexOfObject:v23];
        v108 = v23;
        v105 = v20;
        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = *(a1 + 48);
          v119[0] = MEMORY[0x1E69E9820];
          v119[1] = 3221225472;
          v119[2] = __39__PXStoryTimelineLayout__updateContent__block_invoke_5;
          v119[3] = &unk_1E7739308;
          v26 = v23;
          v120 = v26;
          v27 = [v25 objectsPassingTest:v119];
          v28 = [v27 anyObject];

          if (v28)
          {
            v29 = [*(*(a1 + 40) + 1032) indexOfObject:v28];
            if (v29 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v93 = [MEMORY[0x1E696AAA8] currentHandler];
              [v93 handleFailureInMethod:*(a1 + 96) object:*(a1 + 40) file:@"PXStoryTimelineLayout.m" lineNumber:284 description:@"Should be able to find a sublayout for a near match identifier"];
            }

            v30 = [*(a1 + 40) sublayoutAtIndex:v29 loadIfNeeded:0];
            v104 = v29;
            [*(*(a1 + 40) + 1032) replaceObjectAtIndex:v29 withObject:v26];
            [*(a1 + 48) removeObject:v28];
            [*(a1 + 56) removeObject:v28];
          }

          else
          {
            v30 = objc_alloc_init(PXStoryClipLayout);
            [(PXStoryClipLayout *)v30 setTimelineLayout:*(a1 + 40)];
            [*(a1 + 40) configureClipLayout:v30];
            v36 = [*(*(a1 + 40) + 1032) count];
            [*(*(a1 + 40) + 1032) addObject:v26];
            v104 = v36;
            [*(a1 + 40) insertSublayout:v30 atIndex:v36];
          }

          v31 = v105;
          v35 = v108;
        }

        else
        {
          v31 = v20;
          v32 = v24;
          v30 = [*(a1 + 40) sublayoutAtIndex:v24 loadIfNeeded:0];
          v33 = [*(*(a1 + 40) + 1032) objectAtIndexedSubscript:v32];

          _ZF = v33 == v108;
          v35 = v108;
          if (!_ZF)
          {
            [*(*(a1 + 40) + 1032) replaceObjectAtIndex:v32 withObject:v108];
          }

          v104 = v32;
          [*(a1 + 48) removeObject:v108];
        }

        [(PXStoryClipLayout *)v30 setClip:v110];
        v37 = a3[1];
        v121 = *a3;
        v38 = a3[2];
        v122[0] = v37;
        v122[1] = v38;
        [(PXStoryClipLayout *)v30 setClipTimeRange:&v121];
        v40 = *(v18 - 2);
        v39 = *(v18 - 1);
        v42 = *v18;
        v41 = v18[1];
        [*(a1 + 40) alphaForClipLayout:v30];
        v44 = v43;
        if (v19 != 3)
        {
          PXGCornerRadiusForSubrectFromContainerCornerRadiusAndRect();
        }

        v45 = *(a1 + 184);
        v46 = *(a1 + 196);
        v106 = *(a1 + 192);
        v107 = *(a1 + 188);
        [*(a1 + 40) proposedZPositionForClipLayoutWithClipIdentifier:v31];
        v48 = v47 * *(a1 + 136);
        if (*(a1 + 216) == 1)
        {
          v49 = *(a1 + 64);
          v50 = v31;
          v51 = *(a1 + 144);
          v52 = *(a1 + 40);
          *&v121 = v50;
          *(&v121 + 1) = 3;
          memcpy(v122, __dst, sizeof(v122));
          [v49 frameForClipWithInfo:&v121 proposedFrame:v51 inViewMode:v52 layout:{v40, v39, v42, v41}];
          v40 = v53;
          v39 = v54;
          v42 = v55;
          v41 = v56;
          v57 = *(a1 + 64);
          v58 = *(a1 + 144);
          v59 = *(a1 + 40);
          *&v121 = v50;
          *(&v121 + 1) = 3;
          memcpy(v122, __dst, sizeof(v122));
          [v57 alphaForClipWithInfo:&v121 proposedAlpha:v58 inViewMode:v59 layout:v44];
          v44 = v60;
          v61 = *(a1 + 64);
          v62 = *(a1 + 144);
          v63 = *(a1 + 40);
          *&v121 = v50;
          *(&v121 + 1) = 3;
          memcpy(v122, __dst, sizeof(v122));
          [v61 zPositionForClipWithInfo:&v121 proposedZPosition:v62 inViewMode:v63 layout:v48];
          v48 = v64;
          v65 = *(a1 + 64);
          v66 = *(a1 + 144);
          v67 = *(a1 + 40);
          *&v121 = v50;
          *(&v121 + 1) = 3;
          memcpy(v122, __dst, sizeof(v122));
          LODWORD(v68) = v45;
          LODWORD(v70) = v106;
          LODWORD(v69) = v107;
          LODWORD(v71) = v46;
          [v65 cornerRadiusForClipWithInfo:&v121 proposedCornerRadius:v66 inViewMode:v67 layout:{v68, v69, v70, v71}];
          v45 = v72;
          v106 = v74;
          v107 = v73;
          v46 = v75;
          v76 = *(a1 + 64);
          if (v76)
          {
            v77 = *(a1 + 40);
            v78 = *(a1 + 144);
            *&v121 = v50;
            *(&v121 + 1) = 3;
            memcpy(v122, __dst, sizeof(v122));
            memset(v112, 0, sizeof(v112));
            __asm { FMOV            V0.2D, #1.0 }

            v113 = _Q0;
            [v76 contentsTransformOverrideForClipWithInfo:&v121 proposedOverride:v112 inViewMode:v78 layout:v77];
            v98 = v114;
            v99 = v115;
            v100 = v117;
            v101 = v116;
            v102 = v118;
          }

          else
          {
            v101 = 0.0;
            v102 = 0.0;
            v99 = 0.0;
            v100 = 0.0;
            v98 = 0.0;
          }

          v35 = v108;
          v31 = v105;
        }

        else
        {
          v101 = 0.0;
          v102 = 1.0;
          v99 = 0.0;
          v100 = 1.0;
          v98 = 0.0;
        }

        v103 = v46;
        v109 = v44;
        if (*(a1 + 217))
        {
          PXEdgeInsetsBetweenRects();
        }

        v83 = v41;
        v84 = v42;
        [(PXStoryClipLayout *)v30 setAlpha:v109];
        LODWORD(v86) = v103;
        LODWORD(v85) = v45;
        LODWORD(v88) = v106;
        LODWORD(v87) = v107;
        [(PXStoryClipLayout *)v30 setCornerRadius:v85, v87, v88, v86];
        [(PXStoryClipLayout *)v30 setClippingInsets:v97, v96, v95, v94];
        [(PXStoryClipLayout *)v30 setManualContentsRectAmount:v98];
        [(PXStoryClipLayout *)v30 setManualContentsRect:v99, v101, v100, v102];
        [(PXStoryClipLayout *)v30 setReferenceDepth:*(a1 + 136)];
        v89 = *(a1 + 136);
        [(PXStoryClipLayout *)v30 referenceDepth];
        v91 = v90 / *(a1 + 136);
        [*(a1 + 40) relativeZPositionAboveLegibilityGradients];
        [(PXStoryClipLayout *)v30 setRelativeZPositionAboveLegibilityGradients:(v48 / v89 + v92) / v91];
        [*(a1 + 40) setZPosition:v104 forSublayoutAtIndex:v48];
        [*(a1 + 40) setFrame:v104 forSublayoutAtIndex:{v40, v39, v84, v83}];
        [*(a1 + 56) removeObject:v35];
        [*(a1 + 72) removeIndex:v31];
        [*(a1 + 40) didUpdateClipLayout:v30 frame:{v40, v39, v84, v83}];
      }

      v17 += 96;
      a3 += 3;
      v18 += 4;
      a2 = v111 - 1;
    }

    while (v111 != 1);
  }
}

uint64_t __39__PXStoryTimelineLayout__updateContent__block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 1032) indexOfObject:a2];
  [*(a1 + 32) removeSublayoutAtIndex:v3];
  v4 = *(*(a1 + 32) + 1032);

  return [v4 removeObjectAtIndex:v3];
}

void __39__PXStoryTimelineLayout__updateContent__block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 1040);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v2 removeObjectForKey:v3];
}

uint64_t __39__PXStoryTimelineLayout__updateContent__block_invoke_5(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 hasResourceEqualTo:*(a1 + 32)];
  *a3 = result;
  return result;
}

- (void)_invalidateContent
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryTimelineLayout _invalidateContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryTimelineLayout.m" lineNumber:200 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXStoryTimelineLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryTimelineLayout;
  [(PXGCompositeLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryTimelineLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryTimelineLayout.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryTimelineLayout update]"];
      [currentHandler handleFailureInFunction:v6 file:@"PXStoryTimelineLayout.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryTimelineLayout *)self _updateContent];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryTimelineLayout update]"];
      [currentHandler2 handleFailureInFunction:v8 file:@"PXStoryTimelineLayout.m" lineNumber:190 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXStoryTimelineLayout;
  [(PXGCompositeLayout *)&v9 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryTimelineLayout;
  [(PXGCompositeLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryTimelineLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryTimelineLayout.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (PXStoryTimelineLayoutSnapshot)presentedSnapshot
{
  v3 = [PXStoryTimelineLayoutSnapshot alloc];
  displayedTimeline = [(PXStoryTimelineLayout *)self displayedTimeline];
  [(PXStoryTimelineLayout *)self displayedTimelineRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PXStoryTimelineLayout *)self displayedTimeRange];
  [(PXStoryTimelineLayout *)self clipsCornerRadius];
  LODWORD(v14) = v13;
  LODWORD(v16) = v15;
  LODWORD(v18) = v17;
  LODWORD(v20) = v19;
  v21 = [(PXStoryTimelineLayoutSnapshot *)v3 initWithTimeline:displayedTimeline timelineRect:&v23 timeRange:v6 clipCornerRadius:v8, v10, v12, v14, v16, v18, v20];

  return v21;
}

- (void)didUpdateClipLayout:(id)layout frame:(CGRect)frame
{
  layoutCopy = layout;
  displayedTimeline = [(PXStoryTimelineLayout *)self displayedTimeline];
  [displayedTimeline originalSize];
  [layoutCopy setDisplayedTimelineOriginalSize:?];
}

- (void)referenceDepthDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryTimelineLayout;
  [(PXGCompositeLayout *)&v3 referenceDepthDidChange];
  [(PXStoryTimelineLayout *)self _invalidateContent];
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryTimelineLayout;
  [(PXStoryTimelineLayout *)&v3 alphaDidChange];
  [(PXStoryTimelineLayout *)self _invalidateContent];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryTimelineLayout;
  [(PXGCompositeLayout *)&v3 referenceSizeDidChange];
  [(PXStoryTimelineLayout *)self _invalidateContent];
}

- (void)setRelativeZPositionAboveLegibilityGradients:(double)gradients
{
  if (self->_relativeZPositionAboveLegibilityGradients != gradients)
  {
    self->_relativeZPositionAboveLegibilityGradients = gradients;
    [(PXStoryTimelineLayout *)self _invalidateContent];
  }
}

- (void)setClipsCornerRadius:(id)radius
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  if ((vminv_u16(vmovn_s32(vceqq_f32(v7, self->_clipsCornerRadius))) & 1) == 0)
  {
    self->_clipsCornerRadius.var0.var0.topLeft = v3;
    self->_clipsCornerRadius.var0.var0.topRight = v4;
    self->_clipsCornerRadius.var0.var0.bottomLeft = v5;
    self->_clipsCornerRadius.var0.var0.bottomRight = v6;
    [(PXStoryTimelineLayout *)self _invalidateContent:*&radius.var0.var0.var0];
  }
}

- (void)setCornerRadius:(id)radius
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  if ((vminv_u16(vmovn_s32(vceqq_f32(v7, self->_cornerRadius))) & 1) == 0)
  {
    self->_cornerRadius.var0.var0.topLeft = v3;
    self->_cornerRadius.var0.var0.topRight = v4;
    self->_cornerRadius.var0.var0.bottomLeft = v5;
    self->_cornerRadius.var0.var0.bottomRight = v6;
    [(PXStoryTimelineLayout *)self _invalidateContent:*&radius.var0.var0.var0];
  }
}

- (void)setPresentedTimelineTransition:(id)transition
{
  transitionCopy = transition;
  v6 = transitionCopy;
  if (self->_presentedTimelineTransition != transitionCopy)
  {
    v8 = transitionCopy;
    v7 = [(PXStoryViewModeTransition *)transitionCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(PXStoryViewModeTransition *)self->_presentedTimelineTransition unregisterChangeObserver:self context:TimelineTransitionObservationContext];
      objc_storeStrong(&self->_presentedTimelineTransition, transition);
      [(PXStoryViewModeTransition *)self->_presentedTimelineTransition registerChangeObserver:self context:TimelineTransitionObservationContext];
      [(PXStoryTimelineLayout *)self _invalidateContent];
      v6 = v8;
    }
  }
}

- (void)setDisplayedTimelineRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_displayedTimelineRect = &self->_displayedTimelineRect;
  if (!CGRectEqualToRect(rect, self->_displayedTimelineRect))
  {
    p_displayedTimelineRect->origin.x = x;
    p_displayedTimelineRect->origin.y = y;
    p_displayedTimelineRect->size.width = width;
    p_displayedTimelineRect->size.height = height;

    [(PXStoryTimelineLayout *)self displayedTimelineRectDidChange];
  }
}

- (void)setDisplayedTimeRange:(id *)range
{
  p_displayedTimeRange = &self->_displayedTimeRange;
  v6 = *&range->var0.var3;
  *&range1.start.value = *&range->var0.var0;
  *&range1.start.epoch = v6;
  *&range1.duration.timescale = *&range->var1.var1;
  v7 = *&self->_displayedTimeRange.start.epoch;
  *&v10.start.value = *&self->_displayedTimeRange.start.value;
  *&v10.start.epoch = v7;
  *&v10.duration.timescale = *&self->_displayedTimeRange.duration.timescale;
  if (!CMTimeRangeEqual(&range1, &v10))
  {
    v8 = *&range->var0.var0;
    v9 = *&range->var1.var1;
    *&p_displayedTimeRange->start.epoch = *&range->var0.var3;
    *&p_displayedTimeRange->duration.timescale = v9;
    *&p_displayedTimeRange->start.value = v8;
    [(PXStoryTimelineLayout *)self displayedTimeRangeDidChange];
  }
}

- (void)setDisplayedTimeline:(id)timeline
{
  timelineCopy = timeline;
  v6 = timelineCopy;
  if (self->_displayedTimeline != timelineCopy)
  {
    v8 = timelineCopy;
    v7 = [(PXStoryTimeline *)timelineCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_displayedTimeline, timeline);
      [(PXStoryTimelineLayout *)self displayedTimelineDidChange];
      v6 = v8;
    }
  }
}

- (PXStoryTimelineLayout)init
{
  v13.receiver = self;
  v13.super_class = PXStoryTimelineLayout;
  v2 = [(PXGAbsoluteCompositeLayout *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
    clipIdentifiers = v2->_clipIdentifiers;
    v2->_clipIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    clipLayoutReuseIdentifiers = v2->_clipLayoutReuseIdentifiers;
    v2->_clipLayoutReuseIdentifiers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clipLayoutReuseIdentifiersByClipIdentifier = v2->_clipLayoutReuseIdentifiersByClipIdentifier;
    v2->_clipLayoutReuseIdentifiersByClipIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    [v9 addIndex:1];
    [v9 addIndex:3];
    [v9 addIndex:4];
    [v9 addIndex:5];
    v10 = [v9 copy];
    supportedResourceKindsForClipLayouts = v2->_supportedResourceKindsForClipLayouts;
    v2->_supportedResourceKindsForClipLayouts = v10;
  }

  return v2;
}

@end