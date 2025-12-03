@interface _PXStoryConcreteCompanionTimelineSegmentTransition
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- ($D23540E3B197441F7781E3353E3BC035)transitionInfo;
- (_PXStoryConcreteCompanionTimelineSegmentTransition)initWithTransitionInfo:(id *)info;
- (int64_t)kind;
@end

@implementation _PXStoryConcreteCompanionTimelineSegmentTransition

- ($D23540E3B197441F7781E3353E3BC035)transitionInfo
{
  v3 = *&self->var2.var3;
  *&retstr->var0 = *&self->var2.var0;
  *&retstr->var2.var1 = v3;
  *&retstr->var3 = self->var5.var0;
  return self;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  result = [(_PXStoryConcreteCompanionTimelineSegmentTransition *)self transitionInfo];
  *retstr = v5;
  return result;
}

- (int64_t)kind
{
  [(_PXStoryConcreteCompanionTimelineSegmentTransition *)self transitionInfo];
  if (v3 > 0xAuLL)
  {
    return 0;
  }

  else
  {
    return qword_1A5381C58[v3];
  }
}

- (_PXStoryConcreteCompanionTimelineSegmentTransition)initWithTransitionInfo:(id *)info
{
  v7.receiver = self;
  v7.super_class = _PXStoryConcreteCompanionTimelineSegmentTransition;
  result = [(_PXStoryConcreteCompanionTimelineSegmentTransition *)&v7 init];
  if (result)
  {
    v5 = *&info->var0;
    v6 = *&info->var2.var1;
    *&result->_transitionInfo.fallbackFromTransitionKind = *&info->var3;
    *&result->_transitionInfo.duration.timescale = v6;
    *&result->_transitionInfo.orderOutTransition = v5;
  }

  return result;
}

@end