@interface PXStoryFullsizeLayout
- ($0AC6E346AE4835514AAA8AC86D8F4844)activeTransition;
- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadiusOverride;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)strictVisibleTimeRange;
- (BOOL)isAnimating;
- (CGRect)strictVisibleTimelineRect;
- (PXStoryFullsizeLayout)initWithModel:(id)a3 overrideStyleInfo:(id)a4;
- (double)alphaForClipLayout:(id)a3;
- (double)proposedZPositionForClipLayoutWithClipIdentifier:(int64_t)a3;
- (id)hitTestResultForSpriteIndex:(unsigned int)a3;
- (id)presentedSnapshot;
- (int64_t)viewMode;
- (void)_invalidateActiveTransition;
- (void)_invalidateClipZPositions;
- (void)_invalidateTransitionController;
- (void)_invalidateTransitionEffectSprites;
- (void)_invalidateVisibleClipsReporting;
- (void)_invalidateVisibleSegmentIdentifiers;
- (void)_updateActiveTransition;
- (void)_updateClipZPositions;
- (void)_updateTransitionController;
- (void)_updateTransitionEffectSprites;
- (void)_updateVisibleClipsReporting;
- (void)_updateVisibleSegmentIdentifiers;
- (void)applyTransitionEffectAlpha:(double)a3 auxiliaryEffectAlpha:(double)a4;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)configureClipLayout:(id)a3;
- (void)didBeginTransitionWithEffect:(id)a3 auxiliaryEffect:(id)a4;
- (void)didEndTransitionWithEffect:(id)a3 auxiliaryEffect:(id)a4;
- (void)didUpdateTimelineContent;
- (void)displayedTimelineDidChange;
- (void)entityManager:(id)a3 componentDidChange:(id)a4;
- (void)entityManagerDidChange;
- (void)getDetailedPresentedPlacement:(id)a3 forItemReference:(id)a4;
- (void)handleModelChange:(unint64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceSizeDidChange;
- (void)setActiveTransition:(id)a3;
- (void)setAuxiliaryTransitionEffect:(id)a3;
- (void)setCornerRadiusOverride:(id)a3;
- (void)setDetailedPlacementOverride:(id)a3 forItemReference:(id)a4;
- (void)setStrictVisibleTimeRange:(id *)a3;
- (void)setStrictVisibleTimelineRect:(CGRect)a3;
- (void)setTransitionEffect:(id)a3;
- (void)update;
- (void)updateDisplayedTimeRange;
- (void)updateDisplayedTimeline;
- (void)updatePresentedTimelineTransition;
- (void)willUpdateTimelineContent;
@end

@implementation PXStoryFullsizeLayout

- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadiusOverride
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)activeTransition
{
  p_activeTransition = &self->_activeTransition;
  fromSegmentIdentifier = self->_activeTransition.fromSegmentIdentifier;
  toSegmentIdentifier = p_activeTransition->toSegmentIdentifier;
  result.var1 = toSegmentIdentifier;
  result.var0 = fromSegmentIdentifier;
  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)strictVisibleTimeRange
{
  v3 = *&self[31].var1.var3;
  *&retstr->var0.var0 = *&self[31].var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[32].var0.var1;
  return self;
}

- (CGRect)strictVisibleTimelineRect
{
  x = self->_strictVisibleTimelineRect.origin.x;
  y = self->_strictVisibleTimelineRect.origin.y;
  width = self->_strictVisibleTimelineRect.size.width;
  height = self->_strictVisibleTimelineRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (TransitionControllerObservationContext == a5)
  {
    if (a4)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__PXStoryFullsizeLayout_observable_didChange_context___block_invoke;
      v10[3] = &unk_1E774C648;
      v10[4] = self;
      [(PXStoryFullsizeLayout *)self performChangesWithLocalUpdate:v10];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXStoryFullsizeLayout;
    [(PXStoryModelTimelineLayout *)&v9 observable:v8 didChange:a4 context:a5];
  }
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXStoryFullsizeLayout;
  v4 = a3;
  [(PXStoryTimelineLayout *)&v6 collectTapToRadarDiagnosticsIntoContainer:v4];
  v5 = [(PXStoryFullsizeLayout *)self transitionController:v6.receiver];
  [v4 addSubprovider:v5];
}

- (void)entityManager:(id)a3 componentDidChange:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(PXStoryFullsizeLayout *)self entityManager];

  if (v9 == v8)
  {
    v10 = [(PXStoryModelTimelineLayout *)self model];
    v11 = [v10 loadingStatusReporter];

    if (!v11)
    {
LABEL_6:

      goto LABEL_7;
    }

    v12 = v7;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_5:
        v13 = [v12 states];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __58__PXStoryFullsizeLayout_entityManager_componentDidChange___block_invoke;
        v20[3] = &unk_1E7738FF0;
        v23 = v13;
        v21 = v12;
        v22 = v11;
        v14 = v12;
        [(PXStoryTimelineLayout *)self enumerateClipLayouts:v20];

        goto LABEL_6;
      }

      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v17 = NSStringFromClass(v18);
      v19 = [v12 px_descriptionForAssertionMessage];
      [v15 handleFailureInMethod:a2 object:self file:@"PXStoryFullsizeLayout.m" lineNumber:612 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"changingComponent", v17, v19}];
    }

    else
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [v15 handleFailureInMethod:a2 object:self file:@"PXStoryFullsizeLayout.m" lineNumber:612 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"changingComponent", v17}];
    }

    goto LABEL_5;
  }

LABEL_7:
}

void __58__PXStoryFullsizeLayout_entityManager_componentDidChange___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 contentSpriteEntity];
  v6 = *(*(a1 + 48) + v5);
  if (v6 == 4)
  {
    v7 = [*(a1 + 32) errorForEntity:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [*(a1 + 40) notifyLoadingStatus:v6 error:v7 forClipIdentifier:a2];
}

- (void)setDetailedPlacementOverride:(id)a3 forItemReference:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PXStoryFullsizeLayout;
  [(PXStoryFullsizeLayout *)&v11 setDetailedPlacementOverride:v6 forItemReference:a4];
  if (v6)
  {
    [v6 cornerRadius];
  }

  else
  {
    LODWORD(v7) = *off_1E7721FE8;
    LODWORD(v8) = *(off_1E7721FE8 + 1);
    LODWORD(v9) = *(off_1E7721FE8 + 2);
    LODWORD(v10) = *(off_1E7721FE8 + 3);
  }

  [(PXStoryFullsizeLayout *)self setCornerRadiusOverride:v7, v8, v9, v10];
}

- (void)getDetailedPresentedPlacement:(id)a3 forItemReference:(id)a4
{
  v7 = a3;
  v23.receiver = self;
  v23.super_class = PXStoryFullsizeLayout;
  [(PXStoryFullsizeLayout *)&v23 getDetailedPresentedPlacement:v7 forItemReference:a4];
  [(PXStoryTimelineLayout *)self cornerRadius];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(PXStoryModelTimelineLayout *)self model];
  v17 = [v16 viewMode];

  if (v17 == 1)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"PXStoryFullsizeLayout.m" lineNumber:592 description:{@"%s must be called on the main thread", "-[PXStoryFullsizeLayout getDetailedPresentedPlacement:forItemReference:]"}];
    }

    v9 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 0;
  }

  LODWORD(v18) = v9;
  LODWORD(v19) = v11;
  LODWORD(v20) = v13;
  LODWORD(v21) = v15;
  [v7 setCornerRadius:{v18, v19, v20, v21}];
}

- (void)applyTransitionEffectAlpha:(double)a3 auxiliaryEffectAlpha:(double)a4
{
  [(PXStoryFullsizeLayout *)self setTransitionEffectAlpha:a3];

  [(PXStoryFullsizeLayout *)self setAuxiliaryTransitionEffectAlpha:a4];
}

- (void)didEndTransitionWithEffect:(id)a3 auxiliaryEffect:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXStoryFullsizeLayout *)self transitionEffect];

  if (v8 == v7)
  {
    [(PXStoryFullsizeLayout *)self setTransitionEffect:0];
  }

  v9 = [(PXStoryFullsizeLayout *)self auxiliaryTransitionEffect];

  if (v9 == v6)
  {
    [(PXStoryFullsizeLayout *)self setAuxiliaryTransitionEffect:0];
  }

  [(PXStoryFullsizeLayout *)self setTransitionEffectAlpha:0.0];

  [(PXStoryFullsizeLayout *)self setAuxiliaryTransitionEffectAlpha:0.0];
}

- (void)didBeginTransitionWithEffect:(id)a3 auxiliaryEffect:(id)a4
{
  v6 = a4;
  [(PXStoryFullsizeLayout *)self setTransitionEffect:a3];
  [(PXStoryFullsizeLayout *)self setAuxiliaryTransitionEffect:v6];

  if (a3)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(PXStoryFullsizeLayout *)self setTransitionEffectAlpha:v7];
  if (v6)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [(PXStoryFullsizeLayout *)self setAuxiliaryTransitionEffectAlpha:v8];
}

- (void)_updateTransitionController
{
  v2 = [(PXStoryFullsizeLayout *)self transitionController];
  [v2 performChanges:&__block_literal_global_84];
}

- (void)_invalidateTransitionController
{
  if (self->_timelineContentPostUpdateFlags.isPerformingUpdate && (self->_timelineContentPostUpdateFlags.updated & 0x800) != 0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout _invalidateTransitionController]"];
    [v2 handleFailureInFunction:v3 file:@"PXStoryFullsizeLayout.m" lineNumber:542 description:{@"invalidating %lu after it already has been updated", 2048}];

    abort();
  }

  self->_timelineContentPostUpdateFlags.needsUpdate |= 0x800uLL;
}

- (void)_updateVisibleClipsReporting
{
  v3 = [(PXStoryModelTimelineLayout *)self model];
  v4 = [v3 loadingStatusReporter];

  if (v4)
  {
    [(PXStoryFullsizeLayout *)self contentSize];
    v6 = v5;
    v8 = v7;
    v9 = [(PXStoryFullsizeLayout *)self previouslyReportedClipIdentifiers];
    v10 = [v9 mutableCopy];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__PXStoryFullsizeLayout__updateVisibleClipsReporting__block_invoke;
    v19[3] = &unk_1E7738FA8;
    v20 = v9;
    v21 = v10;
    v23 = 0;
    v24 = 0;
    v25 = v6;
    v26 = v8;
    v11 = v4;
    v22 = v11;
    v12 = v10;
    v13 = v9;
    [(PXStoryTimelineLayout *)self enumerateClipLayouts:v19];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __53__PXStoryFullsizeLayout__updateVisibleClipsReporting__block_invoke_2;
    v17 = &unk_1E774C138;
    v18 = v11;
    [v12 enumerateIndexesUsingBlock:&v14];
    [v13 removeIndexes:{v12, v14, v15, v16, v17}];
  }
}

void __53__PXStoryFullsizeLayout__updateVisibleClipsReporting__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 clip];
  if (v6)
  {
    v7 = v6;
    [v6 info];

    if (v9[1] == 1)
    {
      [*(a1 + 32) addIndex:a2];
      [*(a1 + 40) removeIndex:a2];
      [v5 frame];
      v11 = CGRectInset(v10, 10.0, 10.0);
      if (CGRectIntersectsRect(v11, *(a1 + 56)))
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      [*(a1 + 48) notifyVisibility:v8 forClipIdentifier:a2];
    }
  }

  else
  {
    bzero(v9, 0x300uLL);
  }
}

- (void)_invalidateVisibleClipsReporting
{
  if (self->_postUpdateFlags.isPerformingUpdate && (self->_postUpdateFlags.updated & 0x100000) != 0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout _invalidateVisibleClipsReporting]"];
    [v2 handleFailureInFunction:v3 file:@"PXStoryFullsizeLayout.m" lineNumber:512 description:{@"invalidating %lu after it already has been updated", 0x100000}];

    abort();
  }

  self->_postUpdateFlags.needsUpdate |= 0x100000uLL;
}

- (double)proposedZPositionForClipLayoutWithClipIdentifier:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = PXStoryFullsizeLayout;
  [(PXStoryTimelineLayout *)&v12 proposedZPositionForClipLayoutWithClipIdentifier:?];
  v6 = v5;
  v7 = [(PXStoryFullsizeLayout *)self zPositionsByClipIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    [v9 floatValue];
    v6 = v10;
  }

  return v6;
}

- (void)_updateTransitionEffectSprites
{
  if (self->_allowsTransitionEffects)
  {
    v8[13] = v2;
    v8[14] = v3;
    if (self->_transitionEffectSpriteIndex == -1)
    {
      self->_transitionEffectSpriteIndex = [(PXStoryFullsizeLayout *)self addSpriteWithInitialState:&__block_literal_global_106569];
    }

    if (self->_transitionAuxiliaryEffectSpriteIndex == -1)
    {
      self->_transitionAuxiliaryEffectSpriteIndex = [(PXStoryFullsizeLayout *)self addSpriteWithInitialState:&__block_literal_global_75];
    }

    v8[5] = 0;
    v8[6] = 0;
    [(PXStoryFullsizeLayout *)self referenceSize];
    transitionEffectSpriteIndex = self->_transitionEffectSpriteIndex;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PXStoryFullsizeLayout__updateTransitionEffectSprites__block_invoke_3;
    v8[3] = &unk_1E7738F80;
    v8[4] = self;
    v8[7] = v6;
    v8[8] = v7;
    [(PXStoryFullsizeLayout *)self modifySpritesInRange:transitionEffectSpriteIndex | 0x200000000 fullState:v8];
  }
}

void __55__PXStoryFullsizeLayout__updateTransitionEffectSprites__block_invoke_3(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *(a1 + 32);
  if (v5[341] != -1)
  {
    v6 = [v5 transitionEffect];
    v7 = [v6 effectId];

    v8 = *(a3 + 2);
    [*(a1 + 32) referenceDepth];
    v10 = v9 * -0.9;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v52.origin.x = v11;
    v52.origin.y = v12;
    v52.size.width = v13;
    v52.size.height = v14;
    MidX = CGRectGetMidX(v52);
    v53.origin.x = v11;
    v53.origin.y = v12;
    v53.size.width = v13;
    v53.size.height = v14;
    MidY = CGRectGetMidY(v53);
    v54.origin.x = v11;
    v54.origin.y = v12;
    v54.size.width = v13;
    v54.size.height = v14;
    Width = CGRectGetWidth(v54);
    v55.origin.x = v11;
    v55.origin.y = v12;
    v55.size.width = v13;
    v55.size.height = v14;
    Height = CGRectGetHeight(v55);
    v18.f64[0] = Width;
    v18.f64[1] = Height;
    *v8 = MidX;
    *(v8 + 8) = MidY;
    *(v8 + 16) = v10;
    *(v8 + 24) = vcvt_f32_f64(v18);
    [*(a1 + 32) transitionEffectAlpha];
    *&v19 = v19;
    **(a3 + 3) = LODWORD(v19);
    v20 = [*(a1 + 32) entityManager];
    v21 = [v20 effectComponent];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __55__PXStoryFullsizeLayout__updateTransitionEffectSprites__block_invoke_4;
    v47[3] = &__block_descriptor_76_e55_v16__0__PXGEffectComponent_PXGMutableEffectComponent__8l;
    v22 = a3[1];
    v48 = *a3;
    v49 = v22;
    v50 = *(a3 + 4);
    v51 = v7;
    [v21 performChanges:v47];

    v5 = *(a1 + 32);
  }

  if (v5[342] != -1)
  {
    v23 = [v5 auxiliaryTransitionEffect];
    v24 = [v23 effectId];

    v25 = *(a3 + 2);
    [*(a1 + 32) referenceDepth];
    v27 = v26 * -0.4;
    v28 = *(a1 + 40);
    v29 = *(a1 + 48);
    v30 = *(a1 + 56);
    v31 = *(a1 + 64);
    v56.origin.x = v28;
    v56.origin.y = v29;
    v56.size.width = v30;
    v56.size.height = v31;
    v32 = CGRectGetMidX(v56);
    v57.origin.x = v28;
    v57.origin.y = v29;
    v57.size.width = v30;
    v57.size.height = v31;
    v33 = CGRectGetMidY(v57);
    v58.origin.x = v28;
    v58.origin.y = v29;
    v58.size.width = v30;
    v58.size.height = v31;
    v41 = CGRectGetWidth(v58);
    v59.origin.x = v28;
    v59.origin.y = v29;
    v59.size.width = v30;
    v59.size.height = v31;
    v34 = CGRectGetHeight(v59);
    v35.f64[0] = v41;
    v35.f64[1] = v34;
    *(v25 + 32) = v32;
    *(v25 + 40) = v33;
    *(v25 + 48) = v27;
    *(v25 + 56) = vcvt_f32_f64(v35);
    [*(a1 + 32) auxiliaryTransitionEffectAlpha];
    *&v36 = v36;
    *(*(a3 + 3) + 160) = LODWORD(v36);
    v37 = [*(a1 + 32) entityManager];
    v38 = [v37 effectComponent];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __55__PXStoryFullsizeLayout__updateTransitionEffectSprites__block_invoke_5;
    v42[3] = &__block_descriptor_76_e55_v16__0__PXGEffectComponent_PXGMutableEffectComponent__8l;
    v39 = a3[1];
    v43 = *a3;
    v44 = v39;
    v45 = *(a3 + 4);
    v46 = v24;
    [v38 performChanges:v42];
  }
}

uint64_t __55__PXStoryFullsizeLayout__updateTransitionEffectSprites__block_invoke_4(uint64_t a1, id a2)
{
  v4 = *(a1 + 72);
  v5 = a2;
  result = [a2 mutableEffectIds];
  *(result + 4 * **(a1 + 40)) = v4;
  return result;
}

uint64_t __55__PXStoryFullsizeLayout__updateTransitionEffectSprites__block_invoke_5(uint64_t a1, id a2)
{
  v4 = *(a1 + 72);
  v5 = a2;
  result = [a2 mutableEffectIds];
  *(result + 4 * *(*(a1 + 40) + 4)) = v4;
  return result;
}

__n128 __55__PXStoryFullsizeLayout__updateTransitionEffectSprites__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(off_1E7722048 + 5);
  v3[4] = *(off_1E7722048 + 4);
  v3[5] = v4;
  v5 = *(off_1E7722048 + 3);
  v3[2] = *(off_1E7722048 + 2);
  v3[3] = v5;
  v6 = *(off_1E7722048 + 9);
  v3[8] = *(off_1E7722048 + 8);
  v3[9] = v6;
  v7 = *(off_1E7722048 + 7);
  v3[6] = *(off_1E7722048 + 6);
  v3[7] = v7;
  v8 = *(off_1E7722048 + 1);
  *v3 = *off_1E7722048;
  v3[1] = v8;
  v9 = *(a3 + 32);
  *(v9 + 32) = *(off_1E7722040 + 4);
  result = *off_1E7722040;
  v11 = *(off_1E7722040 + 1);
  *v9 = *off_1E7722040;
  *(v9 + 16) = v11;
  **(a3 + 32) = 2304;
  return result;
}

__n128 __55__PXStoryFullsizeLayout__updateTransitionEffectSprites__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(off_1E7722048 + 5);
  v3[4] = *(off_1E7722048 + 4);
  v3[5] = v4;
  v5 = *(off_1E7722048 + 3);
  v3[2] = *(off_1E7722048 + 2);
  v3[3] = v5;
  v6 = *(off_1E7722048 + 9);
  v3[8] = *(off_1E7722048 + 8);
  v3[9] = v6;
  v7 = *(off_1E7722048 + 7);
  v3[6] = *(off_1E7722048 + 6);
  v3[7] = v7;
  v8 = *(off_1E7722048 + 1);
  *v3 = *off_1E7722048;
  v3[1] = v8;
  v9 = *(a3 + 32);
  *(v9 + 32) = *(off_1E7722040 + 4);
  result = *off_1E7722040;
  v11 = *(off_1E7722040 + 1);
  *v9 = *off_1E7722040;
  *(v9 + 16) = v11;
  **(a3 + 32) = 2304;
  return result;
}

- (void)_invalidateTransitionEffectSprites
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x200000;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x200000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout _invalidateTransitionEffectSprites]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryFullsizeLayout.m" lineNumber:454 description:{@"invalidating %lu after it already has been updated", 0x200000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 0x200000;
  if (!willPerformUpdate)
  {

    [(PXStoryFullsizeLayout *)self setNeedsUpdate];
  }
}

- (void)_updateClipZPositions
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PXStoryFullsizeLayout *)self transitionController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PXStoryFullsizeLayout__updateClipZPositions__block_invoke;
  v7[3] = &unk_1E7738F38;
  v8 = v3;
  v5 = v3;
  [v4 enumerateClipIdentifiersForPendingTransitionUsingBlock:v7];
  v6 = [v5 copy];
  [(PXStoryFullsizeLayout *)self setZPositionsByClipIdentifier:v6];
}

void __46__PXStoryFullsizeLayout__updateClipZPositions__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v5 = -0.1;
  if (a3)
  {
    v5 = -0.6;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (void)_invalidateClipZPositions
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout _invalidateClipZPositions]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryFullsizeLayout.m" lineNumber:440 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXStoryFullsizeLayout *)self setNeedsUpdate];
  }
}

- (void)setActiveTransition:(id)a3
{
  if (self->_activeTransition.fromSegmentIdentifier != a3.var0 || self->_activeTransition.toSegmentIdentifier != a3.var1)
  {
    self->_activeTransition = a3;
    [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeline];
    [(PXStoryFullsizeLayout *)self _invalidateTransitionController];

    [(PXStoryFullsizeLayout *)self _invalidateClipZPositions];
  }
}

- (void)_updateActiveTransition
{
  v5 = [(PXStoryFullsizeLayout *)self transitionController];
  v3 = [v5 activeTransition];
  [(PXStoryFullsizeLayout *)self setActiveTransition:v3, v4];
}

- (void)_invalidateActiveTransition
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout _invalidateActiveTransition]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryFullsizeLayout.m" lineNumber:421 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXStoryFullsizeLayout *)self setNeedsUpdate];
  }
}

- (void)_updateVisibleSegmentIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4 = [(PXStoryTimelineLayout *)self displayedTimeline];
  [(PXStoryFullsizeLayout *)self strictVisibleTimeRange];
  [(PXStoryFullsizeLayout *)self strictVisibleTimelineRect];
  v5 = [v4 segmentIdentifiersInTimeRange:v14 rect:?];

  [v3 addIndexes:v5];
  v6 = [(PXStoryFullsizeLayout *)self transitionController];
  v7 = [v6 activeTransition];
  v9 = v8;

  if (v7 | v9)
  {
    [v3 addIndex:v7];
    [v3 addIndex:v9];
  }

  v10 = [(PXStoryModelTimelineLayout *)self model];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PXStoryFullsizeLayout__updateVisibleSegmentIdentifiers__block_invoke;
  v12[3] = &unk_1E77485B0;
  v13 = v3;
  v11 = v3;
  [v10 performChanges:v12];
}

void __57__PXStoryFullsizeLayout__updateVisibleSegmentIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v3 setVisibleSegmentIdentifiers:v4];
}

- (void)_invalidateVisibleSegmentIdentifiers
{
  if (self->_timelineContentUpdateFlags.isPerformingUpdate && (self->_timelineContentUpdateFlags.updated & 0x400) != 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout _invalidateVisibleSegmentIdentifiers]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryFullsizeLayout.m" lineNumber:402 description:{@"invalidating %lu after it already has been updated", 1024}];

    abort();
  }

  self->_timelineContentUpdateFlags.needsUpdate |= 0x400uLL;

  [(PXStoryFullsizeLayout *)self _invalidateVisibleClipsReporting];
}

- (void)handleModelChange:(unint64_t)a3
{
  if ((a3 & 0x1000012016) != 0)
  {
    [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeline];
    if ((a3 & 4) != 0)
    {
      v5 = [(PXStoryModelTimelineLayout *)self model];
      v6 = [v5 isScrolling];

      if ((v6 & 1) == 0)
      {
        v7 = [(PXStoryFullsizeLayout *)self createFenceWithType:0];
      }
    }
  }

  if ((a3 & 0x400000034) != 0)
  {
    [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeRange];
  }

  if ((a3 & 0x10000) != 0)
  {
    [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeRange];
    [(PXStoryModelTimelineLayout *)self invalidateClipsCornerRadius];
  }

  if ((a3 & 0x400000) != 0)
  {

    [(PXStoryModelTimelineLayout *)self invalidatePresentedTimelineTransition];
  }
}

- (void)didUpdateTimelineContent
{
  v9.receiver = self;
  v9.super_class = PXStoryFullsizeLayout;
  [(PXStoryTimelineLayout *)&v9 didUpdateTimelineContent];
  p_timelineContentPostUpdateFlags = &self->_timelineContentPostUpdateFlags;
  self->_timelineContentPostUpdateFlags.willPerformUpdate = 0;
  needsUpdate = self->_timelineContentPostUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_timelineContentPostUpdateFlags.isPerformingUpdate)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout didUpdateTimelineContent]"];
      [v5 handleFailureInFunction:v6 file:@"PXStoryFullsizeLayout.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"!_timelineContentPostUpdateFlags.isPerformingUpdate"}];

      needsUpdate = p_timelineContentPostUpdateFlags->needsUpdate;
    }

    self->_timelineContentPostUpdateFlags.isPerformingUpdate = 1;
    self->_timelineContentPostUpdateFlags.updated = 2048;
    if ((needsUpdate & 0x800) != 0)
    {
      p_timelineContentPostUpdateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFF7FFLL;
      [(PXStoryFullsizeLayout *)self _updateTransitionController];
      needsUpdate = p_timelineContentPostUpdateFlags->needsUpdate;
    }

    self->_timelineContentPostUpdateFlags.isPerformingUpdate = 0;
    if (needsUpdate)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout didUpdateTimelineContent]"];
      [v7 handleFailureInFunction:v8 file:@"PXStoryFullsizeLayout.m" lineNumber:377 description:{@"still needing to update %lu after update pass", p_timelineContentPostUpdateFlags->needsUpdate}];
    }
  }
}

- (void)willUpdateTimelineContent
{
  v9.receiver = self;
  v9.super_class = PXStoryFullsizeLayout;
  [(PXStoryTimelineLayout *)&v9 willUpdateTimelineContent];
  p_timelineContentUpdateFlags = &self->_timelineContentUpdateFlags;
  self->_timelineContentUpdateFlags.willPerformUpdate = 0;
  needsUpdate = self->_timelineContentUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_timelineContentUpdateFlags.isPerformingUpdate)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout willUpdateTimelineContent]"];
      [v5 handleFailureInFunction:v6 file:@"PXStoryFullsizeLayout.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"!_timelineContentUpdateFlags.isPerformingUpdate"}];

      needsUpdate = p_timelineContentUpdateFlags->needsUpdate;
    }

    self->_timelineContentUpdateFlags.isPerformingUpdate = 1;
    self->_timelineContentUpdateFlags.updated = 1024;
    if ((needsUpdate & 0x400) != 0)
    {
      p_timelineContentUpdateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFBFFLL;
      [(PXStoryFullsizeLayout *)self _updateVisibleSegmentIdentifiers];
      needsUpdate = p_timelineContentUpdateFlags->needsUpdate;
    }

    self->_timelineContentUpdateFlags.isPerformingUpdate = 0;
    if (needsUpdate)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout willUpdateTimelineContent]"];
      [v7 handleFailureInFunction:v8 file:@"PXStoryFullsizeLayout.m" lineNumber:368 description:{@"still needing to update %lu after update pass", p_timelineContentUpdateFlags->needsUpdate}];
    }
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
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout update]"];
      [v9 handleFailureInFunction:v10 file:@"PXStoryFullsizeLayout.m" lineNumber:340 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryFullsizeLayout *)self _updateActiveTransition];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout update]"];
        [v11 handleFailureInFunction:v12 file:@"PXStoryFullsizeLayout.m" lineNumber:344 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryFullsizeLayout *)self _updateClipZPositions];
      v5 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v5)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout update]"];
      [v13 handleFailureInFunction:v14 file:@"PXStoryFullsizeLayout.m" lineNumber:347 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v21.receiver = self;
  v21.super_class = PXStoryFullsizeLayout;
  [(PXStoryModelTimelineLayout *)&v21 update];
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  v7 = self->_postUpdateFlags.needsUpdate;
  if (v7)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout update]"];
      [v15 handleFailureInFunction:v16 file:@"PXStoryFullsizeLayout.m" lineNumber:351 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

      v7 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 0x100000;
    if ((v7 & 0x100000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v7 & 0xFFFFFFFFFFEFFFFFLL;
      [(PXStoryFullsizeLayout *)self _updateVisibleClipsReporting];
      if (!self->_postUpdateFlags.isPerformingUpdate)
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout update]"];
        [v17 handleFailureInFunction:v18 file:@"PXStoryFullsizeLayout.m" lineNumber:356 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
      }
    }

    v8 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x200000uLL;
    if ((v8 & 0x200000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v8 & 0xFFFFFFFFFFDFFFFFLL;
      [(PXStoryFullsizeLayout *)self _updateTransitionEffectSprites];
      v8 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v8)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFullsizeLayout update]"];
      [v19 handleFailureInFunction:v20 file:@"PXStoryFullsizeLayout.m" lineNumber:359 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }
}

- (void)updatePresentedTimelineTransition
{
  v4 = [(PXStoryModelTimelineLayout *)self model];
  v3 = [v4 viewModeTransition];
  [(PXStoryTimelineLayout *)self setPresentedTimelineTransition:v3];
}

- (void)setStrictVisibleTimeRange:(id *)a3
{
  p_strictVisibleTimeRange = &self->_strictVisibleTimeRange;
  v6 = *&a3->var0.var3;
  *&range1.start.value = *&a3->var0.var0;
  *&range1.start.epoch = v6;
  *&range1.duration.timescale = *&a3->var1.var1;
  v7 = *&self->_strictVisibleTimeRange.start.epoch;
  *&v10.start.value = *&self->_strictVisibleTimeRange.start.value;
  *&v10.start.epoch = v7;
  *&v10.duration.timescale = *&self->_strictVisibleTimeRange.duration.timescale;
  if (!CMTimeRangeEqual(&range1, &v10))
  {
    v8 = *&a3->var0.var0;
    v9 = *&a3->var1.var1;
    *&p_strictVisibleTimeRange->start.epoch = *&a3->var0.var3;
    *&p_strictVisibleTimeRange->duration.timescale = v9;
    *&p_strictVisibleTimeRange->start.value = v8;
    [(PXStoryFullsizeLayout *)self _invalidateVisibleSegmentIdentifiers];
  }
}

- (void)setStrictVisibleTimelineRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_strictVisibleTimelineRect = &self->_strictVisibleTimelineRect;
  if (!CGRectEqualToRect(a3, self->_strictVisibleTimelineRect))
  {
    p_strictVisibleTimelineRect->origin.x = x;
    p_strictVisibleTimelineRect->origin.y = y;
    p_strictVisibleTimelineRect->size.width = width;
    p_strictVisibleTimelineRect->size.height = height;

    [(PXStoryFullsizeLayout *)self _invalidateVisibleSegmentIdentifiers];
  }
}

- (void)displayedTimelineDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryFullsizeLayout;
  [(PXStoryTimelineLayout *)&v3 displayedTimelineDidChange];
  [(PXStoryFullsizeLayout *)self _invalidateVisibleSegmentIdentifiers];
}

- (void)updateDisplayedTimeRange
{
  v4 = [(PXStoryModelTimelineLayout *)self model];
  v5 = [v4 timeline];
  v34 = 0;
  v35 = &v34;
  v36 = 0x5010000000;
  v37 = &unk_1A561E057;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PXStoryFullsizeLayout_updateDisplayedTimeRange__block_invoke;
  aBlock[3] = &unk_1E7738F10;
  v6 = v5;
  v32 = v6;
  v33 = &v34;
  v7 = _Block_copy(aBlock);
  v7[2](v7, [v4 currentSegmentIdentifier], 1.0);
  v28 = 0;
  v29 = 0.0;
  v30 = 0;
  if (v4)
  {
    [v4 currentScrollPosition];
    v8 = v28;
  }

  else
  {
    v8 = 0;
  }

  v7[2](v7, v8, 1.0);
  v7[2](v7, v30, v29);
  v9 = *(v35 + 3);
  v25 = *(v35 + 2);
  v26 = v9;
  v27 = *(v35 + 4);
  v22 = v25;
  v23 = v9;
  v24 = v27;
  [(PXStoryFullsizeLayout *)self setStrictVisibleTimeRange:&v22];
  v10 = [v4 viewMode];
  v11 = 1;
  if (v10 <= 5)
  {
    if (((1 << v10) & 0x36) != 0)
    {
      v11 = 0;
    }

    else if (!v10)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"PXStoryFullsizeLayout.m" lineNumber:272 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  v12 = v11 | [v4 isPerformingViewControllerTransition];
  v13 = v35;
  if ((v12 & 1) == 0)
  {
    CMTimeMakeWithSeconds(&v20, -1.0, 600);
    v14 = *(v13 + 3);
    v22 = *(v13 + 2);
    v23 = v14;
    v24 = *(v13 + 4);
    PXStoryTimeRangeInset(&v22, &v20, &v21);
    v13 = v35;
    v16 = *&v21.start.epoch;
    v15 = *&v21.duration.timescale;
    *(v35 + 2) = *&v21.start.value;
    *(v13 + 3) = v16;
    *(v13 + 4) = v15;
  }

  v18 = *(v13 + 3);
  v19 = *(v13 + 4);
  v22 = *(v13 + 2);
  v23 = v18;
  v24 = v19;
  [(PXStoryTimelineLayout *)self setDisplayedTimeRange:&v22, v22, v18, v19];

  _Block_object_dispose(&v34, 8);
}

__n128 __49__PXStoryFullsizeLayout_updateDisplayedTimeRange__block_invoke(uint64_t a1, uint64_t a2, __n128 result)
{
  if (result.n128_f64[0] > 0.0)
  {
    v17 = v3;
    v18 = v4;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v6 = *(a1 + 32);
    if (v6)
    {
      [v6 timeRangeForSegmentWithIdentifier:a2];
    }

    v7 = *(*(a1 + 40) + 8);
    v8 = v7[3];
    *&v12.start.value = v7[2];
    *&v12.start.epoch = v8;
    *&v12.duration.timescale = v7[4];
    v11[0] = v14;
    v11[1] = v15;
    v11[2] = v16;
    PXStoryTimeRangeUnion(&v12, v11, v13);
    v9 = *(*(a1 + 40) + 8);
    v10 = v13[1];
    result = v13[2];
    *(v9 + 32) = v13[0];
    *(v9 + 48) = v10;
    *(v9 + 64) = result;
  }

  return result;
}

- (void)updateDisplayedTimeline
{
  v3 = [(PXStoryModelTimelineLayout *)self model];
  v4 = [v3 timeline];
  [(PXStoryFullsizeLayout *)self referenceSize];
  v6 = v5;
  v8 = v7;
  v9 = [v3 layoutSpec];
  [v9 interpageSpacing];
  v11 = v10;

  v12 = [[PXStoryPagedTimeline alloc] initWithOriginalTimeline:v4 interpageSpacing:v11];
  v13 = [(PXStoryFullsizeLayout *)self transitionController];
  v14 = [v13 activeTransition];
  v16 = v15;

  if (v14 | v16)
  {
    v17 = [[PXStoryTransitionTimeline alloc] initWithOriginalTimeline:v12 transitionInfo:v14, v16];

    v12 = v17;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PXStoryFullsizeLayout_updateDisplayedTimeline__block_invoke;
  aBlock[3] = &unk_1E7738F10;
  v18 = v12;
  v33 = v18;
  v34 = &v35;
  v19 = _Block_copy(aBlock);
  v30 = 0uLL;
  v31 = 0.0;
  if (v3)
  {
    [v3 currentScrollPosition];
    v20 = v30;
  }

  else
  {
    v20 = 0;
  }

  v19[2](v19, v20, 1.0);
  (v19[2])(v19, COERCE_CGFLOAT(*&v31), *(&v30 + 1));
  memset(&v29, 0, sizeof(v29));
  CGAffineTransformMakeTranslation(&v29, -v36[3], 0.0);
  v21 = [PXStoryTransformedTimeline alloc];
  v28 = v29;
  v22 = [(PXStoryTransformedTimeline *)v21 initWithOriginalTimeline:v18 transform:&v28];

  v23 = -[PXStoryResizedTimeline initWithOriginalTimeline:targetSize:options:]([PXStoryResizedTimeline alloc], "initWithOriginalTimeline:targetSize:options:", v22, [v3 viewMode] == 3, v6, v8);
  v24 = [(PXStoryModelTimelineLayout *)self model];
  if ([v24 desiredPlayState])
  {
    goto LABEL_9;
  }

  v25 = [(PXStoryModelTimelineLayout *)self model];
  v26 = [v25 shouldAspectFitCurrentSegment];

  if (v26)
  {
    v27 = [PXStoryAspectFittingTimeline alloc];
    *&v28.a = v30;
    v28.c = v31;
    v24 = v23;
    v23 = [(PXStoryAspectFittingTimeline *)v27 initWithOriginalTimeline:v23 keySegmentMix:&v28];
LABEL_9:
  }

  [(PXStoryTimelineLayout *)self setDisplayedTimeline:v23];

  _Block_object_dispose(&v35, 8);
}

BOOL __48__PXStoryFullsizeLayout_updateDisplayedTimeline__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) frameForSegmentWithIdentifier:a2];
  x = v7.origin.x;
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  result = CGRectIsNull(v7);
  if (!result)
  {
    v8.origin.x = x;
    v8.origin.y = y;
    v8.size.width = width;
    v8.size.height = height;
    CGRectGetMinX(v8);
    PXFloatByLinearlyInterpolatingFloats();
  }

  return result;
}

- (int64_t)viewMode
{
  v2 = [(PXStoryModelTimelineLayout *)self model];
  if ([v2 viewMode] == 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)presentedSnapshot
{
  v3 = [PXStoryTimelineLayoutSnapshot alloc];
  v4 = [(PXStoryTimelineLayout *)self displayedTimeline];
  [(PXStoryTimelineLayout *)self displayedTimelineRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PXStoryFullsizeLayout *)self strictVisibleTimeRange];
  [(PXStoryTimelineLayout *)self clipsCornerRadius];
  LODWORD(v14) = v13;
  LODWORD(v16) = v15;
  LODWORD(v18) = v17;
  LODWORD(v20) = v19;
  v21 = [(PXStoryTimelineLayoutSnapshot *)v3 initWithTimeline:v4 timelineRect:&v23 timeRange:v6 clipCornerRadius:v8, v10, v12, v14, v16, v18, v20];

  return v21;
}

- (double)alphaForClipLayout:(id)a3
{
  v12.receiver = self;
  v12.super_class = PXStoryFullsizeLayout;
  v4 = a3;
  [(PXStoryTimelineLayout *)&v12 alphaForClipLayout:v4];
  v6 = v5;
  v7 = [v4 clip];

  v8 = [v7 resource];
  v9 = [v8 px_storyResourceKind];

  if (v9 == 3)
  {
    [(PXStoryFullsizeLayout *)self textAlpha];
    return v6 * v10;
  }

  return v6;
}

- (void)configureClipLayout:(id)a3
{
  v7.receiver = self;
  v7.super_class = PXStoryFullsizeLayout;
  v4 = a3;
  [(PXStoryModelTimelineLayout *)&v7 configureClipLayout:v4];
  v5 = [(PXStoryModelTimelineLayout *)self model:v7.receiver];
  [v4 setCanShowDynamicContent:{objc_msgSend(v5, "viewMode") != 3}];

  v6 = [(PXStoryFullsizeLayout *)self overrideStyleInfo];
  [v4 setOverrideStyleInfo:v6];

  [v4 setCanShowHUD:1];
  [v4 setCanAspectFitContent:1];
}

- (void)setCornerRadiusOverride:(id)a3
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  if ((vminv_u16(vmovn_s32(vceqq_f32(v7, self->_cornerRadiusOverride))) & 1) == 0)
  {
    self->_cornerRadiusOverride.var0.var0.topLeft = v3;
    self->_cornerRadiusOverride.var0.var0.topRight = v4;
    self->_cornerRadiusOverride.var0.var0.bottomLeft = v5;
    self->_cornerRadiusOverride.var0.var0.bottomRight = v6;
    [(PXStoryModelTimelineLayout *)self invalidateClipsCornerRadius:*&a3.var0.var0.var0];
  }
}

- (void)setAuxiliaryTransitionEffect:(id)a3
{
  v5 = a3;
  if (self->_auxiliaryTransitionEffect != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_auxiliaryTransitionEffect, a3);
    [(PXStoryFullsizeLayout *)self _invalidateTransitionEffectSprites];
    v5 = v6;
  }
}

- (void)setTransitionEffect:(id)a3
{
  v5 = a3;
  if (self->_transitionEffect != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_transitionEffect, a3);
    [(PXStoryFullsizeLayout *)self _invalidateTransitionEffectSprites];
    v5 = v6;
  }
}

- (id)hitTestResultForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v16.receiver = self;
  v16.super_class = PXStoryFullsizeLayout;
  v5 = [(PXStoryFullsizeLayout *)&v16 hitTestResultForSpriteIndex:?];
  v6 = [v5 layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 layout];
    v9 = [v8 clip];
    if (v9)
    {
      v10 = v9;
      [v9 info];

      if (v15[1] != 1)
      {
LABEL_7:

        goto LABEL_8;
      }

      v11 = [(PXFeedHitTestResult *)[PXStoryHitTestResult alloc] initWithSpriteIndex:v3 layout:self];
      v12 = [v8 clip];
      v13 = -[PXStoryHitTestResult clipIdentifier:](v11, "clipIdentifier:", [v12 identifier]);

      v5 = v13;
    }

    else
    {
      bzero(v15, 0x300uLL);
      v11 = 0;
    }

    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (void)entityManagerDidChange
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PXStoryFullsizeLayout;
  [(PXStoryFullsizeLayout *)&v10 entityManagerDidChange];
  v3 = [(PXStoryFullsizeLayout *)self transitionController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PXStoryFullsizeLayout_entityManagerDidChange__block_invoke;
  v9[3] = &unk_1E7738EE8;
  v9[4] = self;
  [v3 performChanges:v9];

  [(PXStoryFullsizeLayout *)self _invalidateTransitionEffectSprites];
  v4 = [(PXStoryFullsizeLayout *)self entityManager];

  if (v4)
  {
    v5 = [(PXStoryFullsizeLayout *)self entityManager];
    v6 = [(PXStoryFullsizeLayout *)self entityManager];
    v7 = [v6 loadingStatus];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v5 registerObserver:self forComponents:v8];
  }
}

void __47__PXStoryFullsizeLayout_entityManagerDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 entityManager];
  [v3 setEntityManager:v4];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryFullsizeLayout;
  [(PXStoryTimelineLayout *)&v3 referenceSizeDidChange];
  [(PXStoryFullsizeLayout *)self _invalidateTransitionEffectSprites];
  [(PXStoryModelTimelineLayout *)self invalidateDisplayedTimeline];
  [(PXStoryModelTimelineLayout *)self invalidateDisplayedRect];
}

- (BOOL)isAnimating
{
  v2 = [(PXStoryModelTimelineLayout *)self model];
  v3 = [v2 isActuallyPlaying];

  return v3;
}

- (PXStoryFullsizeLayout)initWithModel:(id)a3 overrideStyleInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PXStoryFullsizeLayout;
  v8 = [(PXStoryModelTimelineLayout *)&v17 initWithModel:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_overrideStyleInfo, a4);
    v10 = [[PXStoryTransitionController alloc] initWithModel:v6 transitionSource:v9];
    transitionController = v9->_transitionController;
    v9->_transitionController = v10;

    [(PXStoryTransitionController *)v9->_transitionController registerChangeObserver:v9 context:TransitionControllerObservationContext];
    v9->_transitionEffectSpriteIndex = -1;
    v9->_transitionAuxiliaryEffectSpriteIndex = -1;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    zPositionsByClipIdentifier = v9->_zPositionsByClipIdentifier;
    v9->_zPositionsByClipIdentifier = v12;

    v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
    previouslyReportedClipIdentifiers = v9->_previouslyReportedClipIdentifiers;
    v9->_previouslyReportedClipIdentifiers = v14;

    v9->_textAlpha = 1.0;
    v9->_cornerRadiusOverride = *off_1E7721FE8;
    v9->_allowsTransitionEffects = ([v6 options] & 2) == 0;
  }

  return v9;
}

@end