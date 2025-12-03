@interface APPCMediaMetricsHelper
- (APPCMediaMetricsHelper)init;
- (id)visiblePercentageChanged;
- (void)mediaComplete;
- (void)mediaContractedAtPosition:(double)position fullScreen:(BOOL)screen;
- (void)mediaExpandedAtPosition:(double)position fullScreen:(BOOL)screen;
- (void)mediaFinished;
- (void)mediaLoaded;
- (void)mediaPausedAtPosition:(double)position;
- (void)mediaPlayedAtPosition:(double)position;
- (void)mediaProgress:(int64_t)progress;
- (void)mediaShowControlsAtPosition:(double)position;
- (void)mediaSkippedAtPosition:(double)position;
- (void)mediaStarted;
- (void)mediaVolumeChangedAtPosition:(double)position volume:(float)volume;
- (void)registerHandlerForAllMetricsWithClosure:(id)closure;
- (void)removeHandler;
- (void)setVisiblePercentage:(int64_t)percentage;
- (void)setVisiblePercentageChanged:(id)changed;
- (void)videoChosen;
- (void)videoChosenWithVideoWidth:(float)width videoHeight:(float)height;
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

- (void)setVisiblePercentageChanged:(id)changed
{
  v4 = _Block_copy(changed);
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
  selfCopy = self;
  sub_1C1AC0530(v7);
}

- (void)setVisiblePercentage:(int64_t)percentage
{
  selfCopy = self;
  sub_1C1B13220(percentage);
}

- (void)registerHandlerForAllMetricsWithClosure:(id)closure
{
  v4 = _Block_copy(closure);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1C1B1352C(sub_1C1B192F0, v5);
}

- (void)removeHandler
{
  selfCopy = self;
  sub_1C1B13778();
}

- (void)mediaLoaded
{
  selfCopy = self;
  sub_1C1B14874();
}

- (void)videoChosenWithVideoWidth:(float)width videoHeight:(float)height
{
  selfCopy = self;
  sub_1C1B151A8();
}

- (void)videoChosen
{
  selfCopy = self;
  sub_1C1B151A8();
}

- (void)mediaPlayedAtPosition:(double)position
{
  selfCopy = self;
  sub_1C1B156F4(position);
}

- (void)mediaPausedAtPosition:(double)position
{
  selfCopy = self;
  sub_1C1B15C28(position);
}

- (void)mediaSkippedAtPosition:(double)position
{
  selfCopy = self;
  sub_1C1B15C88(position);
}

- (void)mediaVolumeChangedAtPosition:(double)position volume:(float)volume
{
  selfCopy = self;
  sub_1C1B1608C(position, volume);
}

- (void)mediaExpandedAtPosition:(double)position fullScreen:(BOOL)screen
{
  screenCopy = screen;
  selfCopy = self;
  sub_1C1B166E8(screenCopy, position);
}

- (void)mediaContractedAtPosition:(double)position fullScreen:(BOOL)screen
{
  screenCopy = screen;
  selfCopy = self;
  sub_1C1B16754(screenCopy, position);
}

- (void)mediaShowControlsAtPosition:(double)position
{
  selfCopy = self;
  sub_1C1B16D68(position);
}

- (void)mediaStarted
{
  selfCopy = self;
  sub_1C1B172A8();
}

- (void)mediaFinished
{
  selfCopy = self;
  sub_1C1B1748C(100);
}

- (void)mediaProgress:(int64_t)progress
{
  selfCopy = self;
  sub_1C1B1748C(progress);
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