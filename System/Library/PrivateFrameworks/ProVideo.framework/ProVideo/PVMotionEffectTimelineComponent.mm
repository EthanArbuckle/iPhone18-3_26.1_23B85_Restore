@interface PVMotionEffectTimelineComponent
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)componentTimeFromTimelineTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)componentTimeFromTimelineTime_NoLock:(SEL)lock documentInfo:(id *)info;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)componentTimeFromTimelineTime_NoLock:(SEL)lock editRange:(id *)range documentInfo:(id *)info;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)introDuration_NoLock;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)loopTimeOverride;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)loopTimeOverride_NoLock;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineDuration_NoLock;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineFrameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineFrameDuration_NoLock;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineLastFrame;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineLastFrame_NoLock;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineTimeFromComponentTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineTimeFromComponentTime_NoLock:(SEL)lock documentInfo:(id *)info;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineTimeFromComponentTime_NoLock:(SEL)lock editRange:(id *)range documentInfo:(id *)info;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineTimeFromComponentTime_NoLock:(SEL)lock editRange:(id *)range forcePosterFrame:(id *)frame documentInfo:(BOOL)info;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineTimeFromComponentTime_NoLock:(SEL)lock forcePosterFrame:(id *)frame documentInfo:(BOOL)info;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)componentTimeRangeFromTimelineTimeRange:(SEL)range;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)componentTimeRangeFromTimelineTimeRange_NoLock:(SEL)lock documentInfo:(id *)info;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)componentTimeRangeFromTimelineTimeRange_NoLock:(SEL)lock editRange:(id *)range documentInfo:(id *)info;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)timelineTimeRangeFromComponentTimeRange:(SEL)range;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)timelineTimeRangeFromComponentTimeRange_NoLock:(SEL)lock documentInfo:(id *)info;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)timelineTimeRangeFromComponentTimeRange_NoLock:(SEL)lock editRange:(id *)range documentInfo:(id *)info;
- (BOOL)forceDisableBuildAnimation;
- (BOOL)forceDisableBuildAnimation_NoLock;
- (BOOL)forceDisableLoop;
- (BOOL)forceDisableLoop_NoLock;
- (BOOL)isForceRenderAtPosterFrameEnabled;
- (BOOL)isForceRenderAtPosterFrameEnabled:(id)enabled;
- (BOOL)loopTimeOverrideEnabled;
- (BOOL)loopTimeOverrideEnabled_NoLock;
- (BOOL)motionEffect:(id)effect propertiesDisableCache:(id)cache time:(id *)time forcePosterFrame:(BOOL)frame;
- (BOOL)motionEffect:(id)effect shouldInvalidateCachedRenderForProperty:(id)property oldValue:(id)value newValue:(id)newValue;
- (PVMotionEffectTimelineComponent)initWithMotionEffect:(id)effect;
- (double)timelineDurationInSeconds;
- (double)timelineDurationInSeconds_NoLock;
- (double)timelineFrameRate;
- (double)timelineFrameRate_NoLock;
- (id)motionEffectPropertyKeysThatInvalidateCachedRender:(id)render;
- (id)posterFrameMarker;
- (id)posterFrameMarker_NoLock:(const void *)lock;
- (id)timelineMarkers;
- (id)timelineMarkersOfType:(int)type;
- (id)timelineMarkersOfType_NoLock:(int)lock documentInfo:(const void *)info;
- (id)timelineMarkers_NoLock:(const void *)lock;
- (unsigned)timelineDurationInFrames;
- (unsigned)timelineDurationInFrames_NoLock;
- (void)applyProperties_NoLock:(id)lock defaultProperties:(id)properties documentInfo:(const void *)info;
- (void)computeIntroOutroPoints_NoLock:(const void *)lock;
- (void)dealloc;
- (void)effect:(id)effect updateProperties:(id)properties allProperties:(id)allProperties;
- (void)motionEffect:(id)effect didBecomeReady:(const void *)ready properties:(id)properties;
- (void)motionEffectDidUnload:(id)unload;
- (void)setBuildInEnabled_NoLock:(BOOL)lock;
- (void)setBuildOutEnabled_NoLock:(BOOL)lock;
- (void)setForceDisableBuildAnimation:(BOOL)animation;
- (void)setForceDisableBuildAnimation_NoLock:(BOOL)lock;
- (void)setForceDisableLoop:(BOOL)loop;
- (void)setForceDisableLoop_NoLock:(BOOL)lock;
- (void)setLoopTimeOverride:(id *)override;
- (void)setLoopTimeOverrideEnabled:(BOOL)enabled;
- (void)setLoopTimeOverrideEnabled_NoLock:(BOOL)lock;
- (void)setLoopTimeOverride_NoLock:(id *)lock;
- (void)setNeedsToUpdateSceneDuration_NoLock;
- (void)setRenderStartOffset_NoLock:(id *)lock;
- (void)updateSceneDuration_NoLock:(const void *)lock;
@end

@implementation PVMotionEffectTimelineComponent

- (PVMotionEffectTimelineComponent)initWithMotionEffect:(id)effect
{
  effectCopy = effect;
  v15.receiver = self;
  v15.super_class = PVMotionEffectTimelineComponent;
  v5 = [(PVMotionEffectComponent *)&v15 initWithMotionEffect:effectCopy];
  v6 = v5;
  if (v5)
  {
    *(v5 + 6) = 0;
    *(v5 + 4) = 0;
    v7 = MEMORY[0x277CC08F0];
    v8 = *MEMORY[0x277CC08F0];
    *(v5 + 7) = *(MEMORY[0x277CC08F0] + 16);
    *(v5 + 40) = v8;
    v9 = *(v5 + 20);
    *(v5 + 20) = 0;

    v10 = *v7;
    *(v6 + 23) = *(v7 + 2);
    *(v6 + 168) = v10;
    v11 = MEMORY[0x277CC0898];
    v12 = *MEMORY[0x277CC0898];
    *(v6 + 26) = *(MEMORY[0x277CC0898] + 16);
    *(v6 + 12) = v12;
    v6[216] = 0;
    v13 = *v11;
    *(v6 + 236) = *(v11 + 2);
    *(v6 + 220) = v13;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  buildInEnableChan = self->_buildInEnableChan;
  if (buildInEnableChan)
  {
    (*(buildInEnableChan->var0 + 1))(buildInEnableChan, a2);
    self->_buildInEnableChan = 0;
  }

  buildOutEnableChan = self->_buildOutEnableChan;
  if (buildOutEnableChan)
  {
    (*(buildOutEnableChan->var0 + 1))(buildOutEnableChan, a2);
    self->_buildOutEnableChan = 0;
  }

  v5.receiver = self;
  v5.super_class = PVMotionEffectTimelineComponent;
  [(PVMotionEffectTimelineComponent *)&v5 dealloc];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineDuration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4812000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = &unk_260C3B1FE;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __51__PVMotionEffectTimelineComponent_timelineDuration__block_invoke;
  v7[3] = &unk_279AA5B80;
  v7[4] = self;
  v7[5] = &v8;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v7];

  *retstr = v9[2];
  _Block_object_dispose(&v8, 8);
  return result;
}

double __51__PVMotionEffectTimelineComponent_timelineDuration__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 timelineDuration_NoLock];
  }

  else
  {
    v5 = 0uLL;
    v6 = 0;
  }

  v3 = *(*(a1 + 40) + 8);
  result = *&v5;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineDuration_NoLock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v7 = 120000 * [(PVMotionEffectTimelineComponent *)self timelineDurationInFrames_NoLock];
  [(PVMotionEffectTimelineComponent *)self timelineFrameRate_NoLock];

  return CMTimeMake(retstr, v7, (v8 * 120000.0));
}

- (unsigned)timelineDurationInFrames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __59__PVMotionEffectTimelineComponent_timelineDurationInFrames__block_invoke;
  v5[3] = &unk_279AA5B80;
  v5[4] = self;
  v5[5] = &v6;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v5];

  LODWORD(motionEffect) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return motionEffect;
}

uint64_t __59__PVMotionEffectTimelineComponent_timelineDurationInFrames__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) timelineDurationInFrames_NoLock];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unsigned)timelineDurationInFrames_NoLock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  return self->_numFrames;
}

- (double)timelineDurationInSeconds
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __60__PVMotionEffectTimelineComponent_timelineDurationInSeconds__block_invoke;
  v6[3] = &unk_279AA5B80;
  v6[4] = self;
  v6[5] = &v7;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __60__PVMotionEffectTimelineComponent_timelineDurationInSeconds__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) timelineDurationInSeconds_NoLock];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)timelineDurationInSeconds_NoLock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  LODWORD(v5) = self->_numFrames;
  return v5 / self->_frameRate;
}

- (double)timelineFrameRate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __52__PVMotionEffectTimelineComponent_timelineFrameRate__block_invoke;
  v6[3] = &unk_279AA5B80;
  v6[4] = self;
  v6[5] = &v7;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __52__PVMotionEffectTimelineComponent_timelineFrameRate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) timelineFrameRate_NoLock];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)timelineFrameRate_NoLock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  return self->_frameRate;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineFrameDuration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4812000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = &unk_260C3B1FE;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __56__PVMotionEffectTimelineComponent_timelineFrameDuration__block_invoke;
  v7[3] = &unk_279AA5B80;
  v7[4] = self;
  v7[5] = &v8;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v7];

  *retstr = v9[2];
  _Block_object_dispose(&v8, 8);
  return result;
}

double __56__PVMotionEffectTimelineComponent_timelineFrameDuration__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 timelineFrameDuration_NoLock];
  }

  else
  {
    v5 = 0uLL;
    v6 = 0;
  }

  v3 = *(*(a1 + 40) + 8);
  result = *&v5;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineFrameDuration_NoLock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  *retstr = self->_frameDuration;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineLastFrame
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4812000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = &unk_260C3B1FE;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __52__PVMotionEffectTimelineComponent_timelineLastFrame__block_invoke;
  v7[3] = &unk_279AA5B80;
  v7[4] = self;
  v7[5] = &v8;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v7];

  *retstr = v9[2];
  _Block_object_dispose(&v8, 8);
  return result;
}

double __52__PVMotionEffectTimelineComponent_timelineLastFrame__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 timelineLastFrame_NoLock];
  }

  else
  {
    v5 = 0uLL;
    v6 = 0;
  }

  v3 = *(*(a1 + 40) + 8);
  result = *&v5;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineLastFrame_NoLock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v7 = 120000 * self->_numFrames - 120000;
  v8 = (self->_frameRate * 120000.0);

  return CMTimeMake(retstr, v7, v8);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)componentTimeFromTimelineTime:(SEL)time
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = &unk_260C3B1FE;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = *"";
  v9[2] = __65__PVMotionEffectTimelineComponent_componentTimeFromTimelineTime___block_invoke;
  v9[3] = &unk_279AA5BA8;
  v9[4] = self;
  v9[5] = &v11;
  v10 = *a4;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v9];

  *retstr = v12[2];
  _Block_object_dispose(&v11, 8);
  return result;
}

double __65__PVMotionEffectTimelineComponent_componentTimeFromTimelineTime___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  if (v3)
  {
    [v3 componentTimeFromTimelineTime_NoLock:&v6 documentInfo:a2];
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
  }

  v4 = *(*(a1 + 40) + 8);
  result = *&v8;
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineTimeFromComponentTime:(SEL)time
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = &unk_260C3B1FE;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = *"";
  v9[2] = __65__PVMotionEffectTimelineComponent_timelineTimeFromComponentTime___block_invoke;
  v9[3] = &unk_279AA5BA8;
  v9[4] = self;
  v9[5] = &v11;
  v10 = *a4;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v9];

  *retstr = v12[2];
  _Block_object_dispose(&v11, 8);
  return result;
}

double __65__PVMotionEffectTimelineComponent_timelineTimeFromComponentTime___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  if (v3)
  {
    [v3 timelineTimeFromComponentTime_NoLock:&v6 documentInfo:a2];
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
  }

  v4 = *(*(a1 + 40) + 8);
  result = *&v8;
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  return result;
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)componentTimeRangeFromTimelineTimeRange:(SEL)range
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x6012000000;
  v19 = __Block_byref_object_copy__73;
  v20 = __Block_byref_object_dispose__74;
  v21 = &unk_260C3B1FE;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = *"";
  v12[2] = __75__PVMotionEffectTimelineComponent_componentTimeRangeFromTimelineTimeRange___block_invoke;
  v12[3] = &unk_279AA5BD0;
  v12[4] = self;
  v12[5] = &v16;
  v8 = *&a4->var0.var3;
  v13 = *&a4->var0.var0;
  v14 = v8;
  v15 = *&a4->var1.var1;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v12];

  v9 = v17;
  v10 = *(v17 + 4);
  *&retstr->var0.var0 = *(v17 + 3);
  *&retstr->var0.var3 = v10;
  *&retstr->var1.var1 = *(v9 + 5);
  _Block_object_dispose(&v16, 8);
  return result;
}

double __75__PVMotionEffectTimelineComponent_componentTimeRangeFromTimelineTimeRange___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v8[0] = *(a1 + 48);
  v8[1] = v4;
  v8[2] = *(a1 + 80);
  if (v3)
  {
    [v3 componentTimeRangeFromTimelineTimeRange_NoLock:v8 documentInfo:a2];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = v10;
  v5[3] = v9;
  v5[4] = v6;
  result = *&v11;
  v5[5] = v11;
  return result;
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)timelineTimeRangeFromComponentTimeRange:(SEL)range
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x6012000000;
  v19 = __Block_byref_object_copy__73;
  v20 = __Block_byref_object_dispose__74;
  v21 = &unk_260C3B1FE;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = *"";
  v12[2] = __75__PVMotionEffectTimelineComponent_timelineTimeRangeFromComponentTimeRange___block_invoke;
  v12[3] = &unk_279AA5BD0;
  v12[4] = self;
  v12[5] = &v16;
  v8 = *&a4->var0.var3;
  v13 = *&a4->var0.var0;
  v14 = v8;
  v15 = *&a4->var1.var1;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v12];

  v9 = v17;
  v10 = *(v17 + 4);
  *&retstr->var0.var0 = *(v17 + 3);
  *&retstr->var0.var3 = v10;
  *&retstr->var1.var1 = *(v9 + 5);
  _Block_object_dispose(&v16, 8);
  return result;
}

double __75__PVMotionEffectTimelineComponent_timelineTimeRangeFromComponentTimeRange___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v8[0] = *(a1 + 48);
  v8[1] = v4;
  v8[2] = *(a1 + 80);
  if (v3)
  {
    [v3 componentTimeRangeFromTimelineTimeRange_NoLock:v8 documentInfo:a2];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = v10;
  v5[3] = v9;
  v5[4] = v6;
  result = *&v11;
  v5[5] = v11;
  return result;
}

- (id)timelineMarkers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__77;
  v11 = __Block_byref_object_dispose__78;
  v12 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __50__PVMotionEffectTimelineComponent_timelineMarkers__block_invoke;
  v6[3] = &unk_279AA5B80;
  v6[4] = self;
  v6[5] = &v7;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __50__PVMotionEffectTimelineComponent_timelineMarkers__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) timelineMarkers_NoLock:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)timelineMarkers_NoLock:(const void *)lock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v7 = OZXMarkerCount(*lock);
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    for (i = 0; i != v8; ++i)
    {
      if (!OZXGetMarkerFigTime(*lock, i, v13))
      {
        v11 = [PVTimelineMarker markerWithOZXTimeMarkerFigTime:v13];
        [v9 addObject:v11];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)timelineMarkersOfType:(int)type
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__77;
  v14 = __Block_byref_object_dispose__78;
  v15 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __57__PVMotionEffectTimelineComponent_timelineMarkersOfType___block_invoke;
  v8[3] = &unk_279AA5BF8;
  v8[4] = self;
  v8[5] = &v10;
  typeCopy = type;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __57__PVMotionEffectTimelineComponent_timelineMarkersOfType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) timelineMarkersOfType_NoLock:*(a1 + 48) documentInfo:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)timelineMarkersOfType_NoLock:(int)lock documentInfo:(const void *)info
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v9 = OZXMarkerCount(*info);
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
    for (i = 0; i != v10; ++i)
    {
      if (!OZXGetMarkerFigTimeOfType(*info, i, lock, v15))
      {
        v13 = [PVTimelineMarker markerWithOZXTimeMarkerFigTime:v15];
        [v11 addObject:v13];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)posterFrameMarker
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__77;
  v11 = __Block_byref_object_dispose__78;
  v12 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __52__PVMotionEffectTimelineComponent_posterFrameMarker__block_invoke;
  v6[3] = &unk_279AA5B80;
  v6[4] = self;
  v6[5] = &v7;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__PVMotionEffectTimelineComponent_posterFrameMarker__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) posterFrameMarker_NoLock:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)posterFrameMarker_NoLock:(const void *)lock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  posterFrameMarker = self->_posterFrameMarker;
  if (!posterFrameMarker)
  {
    v8 = [(PVMotionEffectTimelineComponent *)self timelineMarkersOfType_NoLock:8 documentInfo:lock];
    firstObject = [v8 firstObject];
    v10 = self->_posterFrameMarker;
    self->_posterFrameMarker = firstObject;

    v11 = self->_posterFrameMarker;
    if (!v11 || ([(PVTimelineMarker *)v11 timeRange], (BYTE12(v17[0]) & 1) == 0))
    {
      v12 = *(MEMORY[0x277CC08E0] + 16);
      v17[0] = *MEMORY[0x277CC08E0];
      v17[1] = v12;
      v17[2] = *(MEMORY[0x277CC08E0] + 32);
      v13 = [PVTimelineMarker markerWithType:8 timeRange:v17];
      v14 = self->_posterFrameMarker;
      self->_posterFrameMarker = v13;
    }

    posterFrameMarker = self->_posterFrameMarker;
  }

  v15 = posterFrameMarker;

  return v15;
}

- (void)setLoopTimeOverrideEnabled:(BOOL)enabled
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __62__PVMotionEffectTimelineComponent_setLoopTimeOverrideEnabled___block_invoke;
  v6[3] = &unk_279AA5C20;
  v6[4] = self;
  enabledCopy = enabled;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v6];
}

- (void)setLoopTimeOverrideEnabled_NoLock:(BOOL)lock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  self->_loopTimeOverrideEnabled = lock;
}

- (BOOL)loopTimeOverrideEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __58__PVMotionEffectTimelineComponent_loopTimeOverrideEnabled__block_invoke;
  v5[3] = &unk_279AA5B80;
  v5[4] = self;
  v5[5] = &v6;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v5];

  LOBYTE(motionEffect) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return motionEffect;
}

uint64_t __58__PVMotionEffectTimelineComponent_loopTimeOverrideEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) loopTimeOverrideEnabled_NoLock];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)loopTimeOverrideEnabled_NoLock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  return self->_loopTimeOverrideEnabled;
}

- (void)setLoopTimeOverride:(id *)override
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __55__PVMotionEffectTimelineComponent_setLoopTimeOverride___block_invoke;
  v6[3] = &unk_279AA5C48;
  v6[4] = self;
  v7 = *override;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v6];
}

uint64_t __55__PVMotionEffectTimelineComponent_setLoopTimeOverride___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  return [v1 setLoopTimeOverride_NoLock:&v3];
}

- (void)setLoopTimeOverride_NoLock:(id *)lock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  var3 = lock->var3;
  *(&self->_loopTimeOverrideEnabled + 4) = *&lock->var0;
  *&self->_loopTimeOverride.flags = var3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)loopTimeOverride
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4812000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = &unk_260C3B1FE;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __51__PVMotionEffectTimelineComponent_loopTimeOverride__block_invoke;
  v7[3] = &unk_279AA5B80;
  v7[4] = self;
  v7[5] = &v8;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v7];

  *retstr = v9[2];
  _Block_object_dispose(&v8, 8);
  return result;
}

double __51__PVMotionEffectTimelineComponent_loopTimeOverride__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 loopTimeOverride_NoLock];
  }

  else
  {
    v5 = 0uLL;
    v6 = 0;
  }

  v3 = *(*(a1 + 40) + 8);
  result = *&v5;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)loopTimeOverride_NoLock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  *retstr = *(&self->_loopTimeOverrideEnabled + 4);
  return result;
}

- (void)setForceDisableLoop:(BOOL)loop
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __55__PVMotionEffectTimelineComponent_setForceDisableLoop___block_invoke;
  v6[3] = &unk_279AA5C20;
  v6[4] = self;
  loopCopy = loop;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v6];
}

- (void)setForceDisableLoop_NoLock:(BOOL)lock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  METimeRemap::setForceDisableLoop(&self->_timeRemap, lock);
}

- (BOOL)forceDisableLoop
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __51__PVMotionEffectTimelineComponent_forceDisableLoop__block_invoke;
  v5[3] = &unk_279AA5B80;
  v5[4] = self;
  v5[5] = &v6;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v5];

  LOBYTE(motionEffect) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return motionEffect;
}

uint64_t __51__PVMotionEffectTimelineComponent_forceDisableLoop__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) forceDisableLoop_NoLock];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)forceDisableLoop_NoLock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  return METimeRemap::forceDisableLoop(&self->_timeRemap);
}

- (void)setForceDisableBuildAnimation:(BOOL)animation
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __65__PVMotionEffectTimelineComponent_setForceDisableBuildAnimation___block_invoke;
  v6[3] = &unk_279AA5C20;
  v6[4] = self;
  animationCopy = animation;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v6];
}

- (void)setForceDisableBuildAnimation_NoLock:(BOOL)lock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  METimeRemap::setForceDisableBuildAnimation(&self->_timeRemap, lock);
}

- (BOOL)forceDisableBuildAnimation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __61__PVMotionEffectTimelineComponent_forceDisableBuildAnimation__block_invoke;
  v5[3] = &unk_279AA5B80;
  v5[4] = self;
  v5[5] = &v6;
  [motionEffect runEnsuringDocumentReadyAndLockingDocument:v5];

  LOBYTE(motionEffect) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return motionEffect;
}

uint64_t __61__PVMotionEffectTimelineComponent_forceDisableBuildAnimation__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) forceDisableBuildAnimation_NoLock];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)forceDisableBuildAnimation_NoLock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  return METimeRemap::forceDisableBuildAnimation(&self->_timeRemap);
}

- (BOOL)isForceRenderAtPosterFrameEnabled
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v3 = [motionEffect inspectablePropertyForKey:@"RenderAtPosterTime"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isForceRenderAtPosterFrameEnabled:(id)enabled
{
  v3 = [enabled objectForKeyedSubscript:@"RenderAtPosterTime"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)componentTimeFromTimelineTime_NoLock:(SEL)lock documentInfo:(id *)info
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
  v11 = motionEffect3;
  if (motionEffect3)
  {
    [motionEffect3 effectRange];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
  }

  v12 = *&info->var0;
  var3 = info->var3;
  v14[0] = v17;
  v14[1] = v18;
  v14[2] = v19;
  v15 = v12;
  return [(PVMotionEffectTimelineComponent *)self componentTimeFromTimelineTime_NoLock:&v15 editRange:v14 documentInfo:a5];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)componentTimeFromTimelineTime_NoLock:(SEL)lock editRange:(id *)range documentInfo:(id *)info
{
  v10 = [(PVMotionEffectComponent *)self motionEffect:range];
  [v10 assertDocumentIsLocked];

  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentStatusIsLoadedOrReady];

  v12 = *&info->var0.var3;
  *&range1.start.value = *&info->var0.var0;
  *&range1.start.epoch = v12;
  *&range1.duration.timescale = *&info->var1.var1;
  v13 = *(MEMORY[0x277CC08C8] + 16);
  *&range2.start.value = *MEMORY[0x277CC08C8];
  *&range2.start.epoch = v13;
  *&range2.duration.timescale = *(MEMORY[0x277CC08C8] + 32);
  if (CMTimeRangeEqual(&range1, &range2))
  {
    v14 = *&info->var0.var3;
    *&range1.start.value = *&info->var0.var0;
    *&range1.start.epoch = v14;
    *&range1.duration.timescale = *&info->var1.var1;
    v15 = CMTimeRangeCopyDescription(0, &range1);
    motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
    motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
    debugDisplayName = [motionEffect3 debugDisplayName];
    NSLog(&cfstr_WarningInvalid.isa, v15, motionEffect2, debugDisplayName);
  }

  memset(&range1, 0, 24);
  METimeRemap::componentTimeFromMotionTime(&self->_timeRemap, range, info, &range1);
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  *&range2.start.value = *&range1.start.value;
  range2.start.epoch = range1.start.epoch;
  rhs = self->_renderStartOffset;
  return CMTimeSubtract(retstr, &range2.start, &rhs);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineTimeFromComponentTime_NoLock:(SEL)lock documentInfo:(id *)info
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
  v11 = motionEffect3;
  if (motionEffect3)
  {
    [motionEffect3 effectRange];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
  }

  v12 = *&info->var0;
  var3 = info->var3;
  v14[0] = v17;
  v14[1] = v18;
  v14[2] = v19;
  v15 = v12;
  return [(PVMotionEffectTimelineComponent *)self timelineTimeFromComponentTime_NoLock:&v15 editRange:v14 documentInfo:a5];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineTimeFromComponentTime_NoLock:(SEL)lock editRange:(id *)range documentInfo:(id *)info
{
  v10 = [(PVMotionEffectComponent *)self motionEffect:range];
  [v10 assertDocumentIsLocked];

  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentStatusIsLoadedOrReady];

  v12 = *&info->var0.var3;
  *&range1.start.value = *&info->var0.var0;
  *&range1.start.epoch = v12;
  *&range1.duration.timescale = *&info->var1.var1;
  v13 = *(MEMORY[0x277CC08C8] + 16);
  *&range2.start.value = *MEMORY[0x277CC08C8];
  *&range2.start.epoch = v13;
  *&range2.duration.timescale = *(MEMORY[0x277CC08C8] + 32);
  if (CMTimeRangeEqual(&range1, &range2))
  {
    v14 = *&info->var0.var3;
    *&range1.start.value = *&info->var0.var0;
    *&range1.start.epoch = v14;
    *&range1.duration.timescale = *&info->var1.var1;
    v15 = CMTimeRangeCopyDescription(0, &range1);
    motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
    motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
    debugDisplayName = [motionEffect3 debugDisplayName];
    NSLog(&cfstr_WarningInvalid.isa, v15, motionEffect2, debugDisplayName);
  }

  v19 = MEMORY[0x277CC0898];
  *&retstr->var0 = *MEMORY[0x277CC0898];
  retstr->var3 = *(v19 + 16);
  motionEffect4 = [(PVMotionEffectComponent *)self motionEffect];
  isTranscription = [motionEffect4 isTranscription];

  if (!isTranscription)
  {
    memset(&range1, 0, 24);
    *&range2.start.value = *&range->var0;
    range2.start.epoch = range->var3;
    rhs = self->_renderStartOffset;
    CMTimeAdd(&range1.start, &range2.start, &rhs);
    METimeRemap::motionTimeFromComponentTime(&self->_timeRemap, &range1.start, info, 0, retstr);
    goto LABEL_14;
  }

  motionEffect5 = [(PVMotionEffectComponent *)self motionEffect];
  isPreview = [motionEffect5 isPreview];

  if (!isPreview)
  {
    *&range2.start.value = *&range->var0;
    range2.start.epoch = range->var3;
    rhs = info->var0;
    CMTimeSubtract(&range1.start, &range2.start, &rhs);
    goto LABEL_9;
  }

  motionEffect6 = [(PVMotionEffectComponent *)self motionEffect];
  isRecording = [motionEffect6 isRecording];

  if (isRecording)
  {
    *&range1.start.value = *&range->var0;
    range1.start.epoch = range->var3;
LABEL_9:
    *&range2.start.value = *&self->_renderStartOffset.value;
    range2.start.epoch = self->_renderStartOffset.epoch;
    result = CMTimeAdd(retstr, &range1.start, &range2.start);
    goto LABEL_14;
  }

  if (!self->_loopTimeOverrideEnabled || (p_loopTime = (&self->_loopTimeOverrideEnabled + 4), (self->_loopTimeOverride.timescale & 1) == 0))
  {
    p_loopTime = &self->_loopTime;
  }

  v31 = *&p_loopTime->value;
  epoch = p_loopTime->epoch;
  v29 = 0uLL;
  v30 = 0;
  operator/(&range->var0, &v31, &v29);
  CMTimeMake(&v35, 1, 1);
  *&range1.start.value = v29;
  range1.start.epoch = v30;
  range2.start = v35;
  PC_CMTimeFloorToSampleDuration(&range1.start, &range2.start, &v36);
  *&range1.start.value = v29;
  range1.start.epoch = v30;
  *&range2.start.value = v36;
  range2.start.epoch = v37;
  PC_CMTimeSaferSubtract(&range1.start, &range2.start, &rhs);
  operator*(&rhs.value, &v31, &range1);
  v28 = range1.start.epoch;
  v30 = range1.start.epoch;
  v29 = *&range1.start.value;
  *&retstr->var0 = *&range1.start.value;
  retstr->var3 = v28;
LABEL_14:
  if ((retstr->var2 & 1) == 0)
  {
    *&range1.start.value = *&range->var0;
    range1.start.epoch = range->var3;
    rhs = info->var0;
    CMTimeSubtract(&range2.start, &range1.start, &rhs);
    rhs = self->_renderStartOffset;
    result = CMTimeAdd(&range1.start, &range2.start, &rhs);
    *&retstr->var0 = *&range1.start.value;
    retstr->var3 = range1.start.epoch;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineTimeFromComponentTime_NoLock:(SEL)lock forcePosterFrame:(id *)frame documentInfo:(BOOL)info
{
  infoCopy = info;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
  v13 = motionEffect3;
  if (motionEffect3)
  {
    [motionEffect3 effectRange];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
  }

  v14 = *&frame->var0;
  var3 = frame->var3;
  v16[0] = v19;
  v16[1] = v20;
  v16[2] = v21;
  v17 = v14;
  return [(PVMotionEffectTimelineComponent *)self timelineTimeFromComponentTime_NoLock:&v17 editRange:v16 forcePosterFrame:infoCopy documentInfo:a6];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineTimeFromComponentTime_NoLock:(SEL)lock editRange:(id *)range forcePosterFrame:(id *)frame documentInfo:(BOOL)info
{
  infoCopy = info;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  *retstr = **&MEMORY[0x277CC0898];
  if (!infoCopy)
  {
    goto LABEL_5;
  }

  v15 = [(PVMotionEffectTimelineComponent *)self posterFrameMarker_NoLock:a7];
  v16 = v15;
  if (v15)
  {
    [v15 timeRange];
    *&retstr->var0 = v21;
    retstr->var3 = v22;
  }

  if ((retstr->var2 & 1) == 0)
  {
LABEL_5:
    v19 = *&range->var0;
    var3 = range->var3;
    v18 = *&frame->var0.var3;
    v21 = *&frame->var0.var0;
    v22 = v18;
    v23 = *&frame->var1.var1;
    return [(PVMotionEffectTimelineComponent *)self timelineTimeFromComponentTime_NoLock:&v19 editRange:&v21 documentInfo:a7];
  }

  return result;
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)componentTimeRangeFromTimelineTimeRange_NoLock:(SEL)lock documentInfo:(id *)info
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
  v11 = motionEffect3;
  if (motionEffect3)
  {
    [motionEffect3 effectRange];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  v12 = *&info->var0.var3;
  v15[0] = *&info->var0.var0;
  v15[1] = v12;
  v15[2] = *&info->var1.var1;
  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  return [(PVMotionEffectTimelineComponent *)self componentTimeRangeFromTimelineTimeRange_NoLock:v15 editRange:v14 documentInfo:a5];
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)componentTimeRangeFromTimelineTimeRange_NoLock:(SEL)lock editRange:(id *)range documentInfo:(id *)info
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v23 = 0uLL;
  v24 = 0;
  v13 = *&range->var0.var0;
  v22.epoch = range->var0.var3;
  v14 = *&info->var0.var3;
  v19 = *&info->var0.var0;
  v20 = v14;
  v21 = *&info->var1.var1;
  *&v22.value = v13;
  [(PVMotionEffectTimelineComponent *)self componentTimeFromTimelineTime_NoLock:&v22 editRange:&v19 documentInfo:a6];
  memset(&v22, 0, sizeof(v22));
  v15 = *&range->var0.var3;
  v19 = *&range->var0.var0;
  v20 = v15;
  v21 = *&range->var1.var1;
  PC_CMTimeRangeEnd(&v19, &v18);
  v16 = *&info->var0.var3;
  v19 = *&info->var0.var0;
  v20 = v16;
  v21 = *&info->var1.var1;
  [(PVMotionEffectTimelineComponent *)self componentTimeFromTimelineTime_NoLock:&v18 editRange:&v19 documentInfo:a6];
  v19 = v23;
  *&v20 = v24;
  v18 = v22;
  return PC_CMTimeRangeMakeWithStartEnd(&v19, &v18, retstr);
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)timelineTimeRangeFromComponentTimeRange_NoLock:(SEL)lock documentInfo:(id *)info
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
  v11 = motionEffect3;
  if (motionEffect3)
  {
    [motionEffect3 effectRange];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  v12 = *&info->var0.var3;
  v15[0] = *&info->var0.var0;
  v15[1] = v12;
  v15[2] = *&info->var1.var1;
  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  return [(PVMotionEffectTimelineComponent *)self timelineTimeRangeFromComponentTimeRange_NoLock:v15 editRange:v14 documentInfo:a5];
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)timelineTimeRangeFromComponentTimeRange_NoLock:(SEL)lock editRange:(id *)range documentInfo:(id *)info
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v23 = 0uLL;
  v24 = 0;
  v13 = *&range->var0.var0;
  v22.epoch = range->var0.var3;
  v14 = *&info->var0.var3;
  v19 = *&info->var0.var0;
  v20 = v14;
  v21 = *&info->var1.var1;
  *&v22.value = v13;
  [(PVMotionEffectTimelineComponent *)self componentTimeFromTimelineTime_NoLock:&v22 editRange:&v19 documentInfo:a6];
  memset(&v22, 0, sizeof(v22));
  v15 = *&range->var0.var3;
  v19 = *&range->var0.var0;
  v20 = v15;
  v21 = *&range->var1.var1;
  PC_CMTimeRangeEnd(&v19, &v18);
  v16 = *&info->var0.var3;
  v19 = *&info->var0.var0;
  v20 = v16;
  v21 = *&info->var1.var1;
  [(PVMotionEffectTimelineComponent *)self componentTimeFromTimelineTime_NoLock:&v18 editRange:&v19 documentInfo:a6];
  v19 = v23;
  *&v20 = v24;
  v18 = v22;
  return PC_CMTimeRangeMakeWithStartEnd(&v19, &v18, retstr);
}

- (void)updateSceneDuration_NoLock:(const void *)lock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  if (self->_needsToUpdateSceneDuration)
  {
    OZXGetSceneDuration(*lock, &self->_numFrames, &self->_frameRate, &self->_frameDuration);
    self->_needsToUpdateSceneDuration = 0;

    [(PVMotionEffectTimelineComponent *)self computeIntroOutroPoints_NoLock:lock];
  }
}

- (void)computeIntroOutroPoints_NoLock:(const void *)lock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  memset(&v20, 0, sizeof(v20));
  [(PVMotionEffectTimelineComponent *)self timelineDuration_NoLock];
  v7 = OZXMarkerCount(*lock);
  if (!v7)
  {
    METimeRemap::setIntroDuration(&self->_timeRemap, MEMORY[0x277CC08F0]);
LABEL_18:
    METimeRemap::setOutroDuration(&self->_timeRemap, MEMORY[0x277CC08F0]);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  do
  {
    OZXGetMarkerFigTime(*lock, v11 - 1, &v18);
    if ((v10 & 1) != 0 || (v19 - 3) > 1)
    {
      if ((v9 & 1) == 0)
      {
        if ((v19 - 5) > 2)
        {
          v9 = 0;
          goto LABEL_11;
        }

        v22 = v20;
        v21 = v18;
        PC_CMTimeSaferSubtract(&v22, &v21, &v17);
        METimeRemap::setOutroDuration(&self->_timeRemap, &v17);
        METimeRemap::setIsLoop(&self->_timeRemap, v19 == 7);
        METimeRemap::setIsOutroOptional(&self->_timeRemap, v19 == 6);
        self->_loopTime = v18;
      }

      v9 = 1;
    }

    else
    {
      METimeRemap::setIntroDuration(&self->_timeRemap, &v18);
      LiGrid::setGroundPlane(&self->_timeRemap, v19 == 4);
      v10 = 1;
    }

LABEL_11:
    if (v11 >= v8)
    {
      break;
    }

    ++v11;
  }

  while ((v10 & v9 & 1) == 0);
  if ((v10 & 1) == 0)
  {
    METimeRemap::setIntroDuration(&self->_timeRemap, MEMORY[0x277CC08F0]);
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  Description = ProGL::Private::TextureImpl::getDescription(&self->_timeRemap);
  v18 = v20;
  v13 = *Description;
  v22.epoch = *(Description + 16);
  *&v22.value = v13;
  PC_CMTimeSaferSubtract(&v18, &v22, &v17);
  v15 = OZChannelBase::setRangeName(&self->_timeRemap, v14);
  v18 = v17;
  v16 = *v15;
  v22.epoch = *(v15 + 16);
  *&v22.value = v16;
  PC_CMTimeSaferSubtract(&v18, &v22, &v21);
  METimeRemap::setScaleableDuration(&self->_timeRemap, &v21);
  METimeRemap::setBuildEnableChannels(&self->_timeRemap, self->_buildInEnableChan, self->_buildOutEnableChan);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)introDuration_NoLock
{
  result = OZChannelBase::setRangeName(&self->_timeRemap, a3);
  *retstr = *result;
  return result;
}

- (void)setNeedsToUpdateSceneDuration_NoLock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  self->_needsToUpdateSceneDuration = 1;
}

- (void)setRenderStartOffset_NoLock:(id *)lock
{
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  var3 = lock->var3;
  *&self->_renderStartOffset.value = *&lock->var0;
  self->_renderStartOffset.epoch = var3;
}

- (void)setBuildInEnabled_NoLock:(BOOL)lock
{
  lockCopy = lock;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v8 = *(self->_buildInEnableChan->var0 + 89);

  v7.n128_f64[0] = lockCopy;
  v8(v7);
}

- (void)setBuildOutEnabled_NoLock:(BOOL)lock
{
  lockCopy = lock;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v8 = *(self->_buildOutEnableChan->var0 + 89);

  v7.n128_f64[0] = lockCopy;
  v8(v7);
}

- (void)applyProperties_NoLock:(id)lock defaultProperties:(id)properties documentInfo:(const void *)info
{
  lockCopy = lock;
  propertiesCopy = properties;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect assertDocumentIsLocked];

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect2 assertDocumentStatusIsLoadedOrReady];

  v11 = [MEMORY[0x277CBEAC0] objectForKey:@"RenderStartOffset" inDictionary:lockCopy orInDefaultDictionary:propertiesCopy];
  v12 = v11;
  if (v11)
  {
    [v11 CMTimeValue];
    [(PVMotionEffectTimelineComponent *)self setRenderStartOffset_NoLock:v23];
  }

  v13 = [MEMORY[0x277CBEAC0] objectForKey:@"RenderAtPosterTime" inDictionary:lockCopy orInDefaultDictionary:propertiesCopy];
  if (v13)
  {
    motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
    [motionEffect3 didSetCacheInvalidatingParameter_NoLock:v13 forKey:@"RenderAtPosterTime"];
  }

  v15 = [MEMORY[0x277CBEAC0] objectForKey:@"TitleBuildIn" inDictionary:lockCopy orInDefaultDictionary:propertiesCopy];
  v16 = v15;
  if (v15)
  {
    -[PVMotionEffectTimelineComponent setBuildInEnabled_NoLock:](self, "setBuildInEnabled_NoLock:", [v15 BOOLValue]);
  }

  v17 = [MEMORY[0x277CBEAC0] objectForKey:@"TitleBuildOut" inDictionary:lockCopy orInDefaultDictionary:propertiesCopy];
  v18 = v17;
  if (v17)
  {
    -[PVMotionEffectTimelineComponent setBuildOutEnabled_NoLock:](self, "setBuildOutEnabled_NoLock:", [v17 BOOLValue]);
  }

  v19 = [MEMORY[0x277CBEAC0] objectForKey:@"ForceDisableLoop" inDictionary:lockCopy orInDefaultDictionary:propertiesCopy];
  v20 = v19;
  if (v19)
  {
    -[PVMotionEffectTimelineComponent setForceDisableLoop_NoLock:](self, "setForceDisableLoop_NoLock:", [v19 BOOLValue]);
  }

  v21 = [MEMORY[0x277CBEAC0] objectForKey:@"ForceDisableBuildAnimation" inDictionary:lockCopy orInDefaultDictionary:propertiesCopy];
  v22 = v21;
  if (v21)
  {
    -[PVMotionEffectTimelineComponent setForceDisableBuildAnimation_NoLock:](self, "setForceDisableBuildAnimation_NoLock:", [v21 BOOLValue]);
  }
}

- (void)motionEffect:(id)effect didBecomeReady:(const void *)ready properties:(id)properties
{
  effectCopy = effect;
  propertiesCopy = properties;
  v10.receiver = self;
  v10.super_class = PVMotionEffectTimelineComponent;
  [(PVMotionEffectComponent *)&v10 motionEffect:effectCopy didBecomeReady:ready properties:propertiesCopy];
  [(PVMotionEffectTimelineComponent *)self updateSceneDuration_NoLock:ready];
  [(PVMotionEffectTimelineComponent *)self applyProperties_NoLock:0 defaultProperties:propertiesCopy documentInfo:ready];
}

- (void)motionEffectDidUnload:(id)unload
{
  unloadCopy = unload;
  v12.receiver = self;
  v12.super_class = PVMotionEffectTimelineComponent;
  [(PVMotionEffectComponent *)&v12 motionEffectDidUnload:unloadCopy];
  self->_numFrames = 0;
  self->_frameRate = 0.0;
  v5 = MEMORY[0x277CC08F0];
  v6 = *MEMORY[0x277CC08F0];
  self->_frameDuration.epoch = *(MEMORY[0x277CC08F0] + 16);
  *&self->_frameDuration.value = v6;
  posterFrameMarker = self->_posterFrameMarker;
  self->_posterFrameMarker = 0;

  v8 = *v5;
  self->_renderStartOffset.epoch = *(v5 + 2);
  *&self->_renderStartOffset.value = v8;
  v9 = *MEMORY[0x277CC0898];
  self->_loopTime.epoch = *(MEMORY[0x277CC0898] + 16);
  *&self->_loopTime.value = v9;
  buildInEnableChan = self->_buildInEnableChan;
  if (buildInEnableChan)
  {
    (*(buildInEnableChan->var0 + 89))(buildInEnableChan, MEMORY[0x277CC08F0], 0, 0.0);
  }

  buildOutEnableChan = self->_buildOutEnableChan;
  if (buildOutEnableChan)
  {
    (*(buildOutEnableChan->var0 + 89))(buildOutEnableChan, MEMORY[0x277CC08F0], 0, 0.0);
  }

  self->_needsToUpdateSceneDuration = 1;
}

- (void)effect:(id)effect updateProperties:(id)properties allProperties:(id)allProperties
{
  effectCopy = effect;
  propertiesCopy = properties;
  allPropertiesCopy = allProperties;
  v17.receiver = self;
  v17.super_class = PVMotionEffectTimelineComponent;
  [(PVMotionEffectComponent *)&v17 effect:effectCopy updateProperties:propertiesCopy allProperties:allPropertiesCopy];
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = *"";
  v14[2] = __73__PVMotionEffectTimelineComponent_effect_updateProperties_allProperties___block_invoke;
  v14[3] = &unk_279AA5468;
  v14[4] = self;
  v12 = propertiesCopy;
  v15 = v12;
  v13 = allPropertiesCopy;
  v16 = v13;
  [motionEffect runWithDocument_NoLock:v14];
}

- (BOOL)motionEffect:(id)effect propertiesDisableCache:(id)cache time:(id *)time forcePosterFrame:(BOOL)frame
{
  v8 = *time;
  v7.receiver = self;
  v7.super_class = PVMotionEffectTimelineComponent;
  return [(PVMotionEffectComponent *)&v7 motionEffect:effect propertiesDisableCache:cache time:&v8 forcePosterFrame:?]|| !frame;
}

- (id)motionEffectPropertyKeysThatInvalidateCachedRender:(id)render
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = PVMotionEffectTimelineComponent;
  v3 = [(PVMotionEffectComponent *)&v10 motionEffectPropertyKeysThatInvalidateCachedRender:render];
  v4 = MEMORY[0x277CBEB58];
  v11[0] = @"RenderAtPosterTime";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [v4 setWithArray:v5];

  anyObject = [v3 anyObject];
  LOBYTE(v5) = anyObject == 0;

  if ((v5 & 1) == 0)
  {
    allObjects = [v3 allObjects];
    [v6 addObjectsFromArray:allObjects];
  }

  return v6;
}

- (BOOL)motionEffect:(id)effect shouldInvalidateCachedRenderForProperty:(id)property oldValue:(id)value newValue:(id)newValue
{
  effectCopy = effect;
  propertyCopy = property;
  valueCopy = value;
  newValueCopy = newValue;
  v16.receiver = self;
  v16.super_class = PVMotionEffectTimelineComponent;
  if ([(PVMotionEffectComponent *)&v16 motionEffect:effectCopy shouldInvalidateCachedRenderForProperty:propertyCopy oldValue:valueCopy newValue:newValueCopy])
  {
    LOBYTE(v14) = 1;
  }

  else if ([propertyCopy isEqualToString:@"RenderAtPosterTime"])
  {
    v14 = PVNumbersAreEqualAsBooleans(valueCopy, newValueCopy) ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

@end