@interface PXStoryDummyStyle
- ($D23540E3B197441F7781E3353E3BC035)transitionInfo;
- (CGPoint)kenBurnsRelativeTransformOrigin;
- (PXStoryDummyStyle)initWithConfiguration:(id)a3;
- (void)setOutroDuration:(id *)a3;
- (void)setTransitionInfo:(id *)a3;
@end

@implementation PXStoryDummyStyle

- (void)setTransitionInfo:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2.var1;
  *&self->_transitionInfo.fallbackFromTransitionKind = *&a3->var3;
  *&self->_transitionInfo.orderOutTransition = v3;
  *&self->_transitionInfo.duration.timescale = v4;
}

- ($D23540E3B197441F7781E3353E3BC035)transitionInfo
{
  v3 = *&self[4].var3;
  *&retstr->var0 = *&self[4].var2.var1;
  *&retstr->var2.var1 = v3;
  *&retstr->var3 = *&self[5].var0;
  return self;
}

- (CGPoint)kenBurnsRelativeTransformOrigin
{
  x = self->_kenBurnsRelativeTransformOrigin.x;
  y = self->_kenBurnsRelativeTransformOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setOutroDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_outroDuration.epoch = a3->var3;
  *&self->_outroDuration.value = v3;
}

- (PXStoryDummyStyle)initWithConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryDummyStyle;
  v5 = [(PXStoryDummyStyle *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_cropVerticalContentMode = 0;
    v5->_cropMode = 0;
    v5->_defaultSegmentDuration = 3.0;
    CMTimeMakeWithSeconds(&v8, 1.5, 600);
    v6->_outroDuration = v8;
    (v4)[2](v4, v6);
  }

  return v6;
}

@end