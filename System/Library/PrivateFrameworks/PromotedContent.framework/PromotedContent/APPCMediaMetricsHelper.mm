@interface APPCMediaMetricsHelper
- (APPCMediaMetricsHelper)init;
- (id)visiblePercentageChanged;
- (void)mediaComplete;
- (void)mediaContractedAtPosition:(double)a3 fullScreen:(BOOL)a4;
- (void)mediaExpandedAtPosition:(double)a3 fullScreen:(BOOL)a4;
- (void)mediaFinished;
- (void)mediaLoaded;
- (void)mediaPausedAtPosition:(double)a3;
- (void)mediaPlayedAtPosition:(double)a3;
- (void)mediaProgress:(int64_t)a3;
- (void)mediaShowControlsAtPosition:(double)a3;
- (void)mediaSkippedAtPosition:(double)a3;
- (void)mediaStarted;
- (void)mediaVolumeChangedAtPosition:(double)a3 volume:(float)a4;
- (void)registerHandlerForAllMetricsWithClosure:(id)a3;
- (void)removeHandler;
- (void)setVisiblePercentage:(int64_t)a3;
- (void)setVisiblePercentageChanged:(id)a3;
- (void)videoChosen;
- (void)videoChosenWithVideoWidth:(float)a3 videoHeight:(float)a4;
@end

@implementation APPCMediaMetricsHelper

- (id)visiblePercentageChanged
{
  v2 = (self + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1B12E64;
    aBlock[3] = &unk_1F41514F8;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setVisiblePercentageChanged:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1C1B192F8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1C1AC0530(v7);
}

- (void)setVisiblePercentage:(int64_t)a3
{
  v4 = self;
  sub_1C1B13220(a3);
}

- (void)registerHandlerForAllMetricsWithClosure:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1C1B1352C(sub_1C1B192F0, v5);
}

- (void)removeHandler
{
  v2 = self;
  sub_1C1B13778();
}

- (void)mediaLoaded
{
  v2 = self;
  sub_1C1B14874();
}

- (void)videoChosenWithVideoWidth:(float)a3 videoHeight:(float)a4
{
  v4 = self;
  sub_1C1B151A8();
}

- (void)videoChosen
{
  v2 = self;
  sub_1C1B151A8();
}

- (void)mediaPlayedAtPosition:(double)a3
{
  v4 = self;
  sub_1C1B156F4(a3);
}

- (void)mediaPausedAtPosition:(double)a3
{
  v4 = self;
  sub_1C1B15C28(a3);
}

- (void)mediaSkippedAtPosition:(double)a3
{
  v4 = self;
  sub_1C1B15C88(a3);
}

- (void)mediaVolumeChangedAtPosition:(double)a3 volume:(float)a4
{
  v6 = self;
  sub_1C1B1608C(a3, a4);
}

- (void)mediaExpandedAtPosition:(double)a3 fullScreen:(BOOL)a4
{
  v4 = a4;
  v6 = self;
  sub_1C1B166E8(v4, a3);
}

- (void)mediaContractedAtPosition:(double)a3 fullScreen:(BOOL)a4
{
  v4 = a4;
  v6 = self;
  sub_1C1B16754(v4, a3);
}

- (void)mediaShowControlsAtPosition:(double)a3
{
  v4 = self;
  sub_1C1B16D68(a3);
}

- (void)mediaStarted
{
  v2 = self;
  sub_1C1B172A8();
}

- (void)mediaFinished
{
  v2 = self;
  sub_1C1B1748C(100);
}

- (void)mediaProgress:(int64_t)a3
{
  v4 = self;
  sub_1C1B1748C(a3);
}

- (APPCMediaMetricsHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mediaComplete
{
  if (*(self + OBJC_IVAR___APPCMediaMetricsHelper_mediaHasStarted) == 1)
  {
    [*(self + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator) recordMetric:77003 forPurpose:-1 properties:0 internalProperties:0 order:0 options:0];
  }
}

@end