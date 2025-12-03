@interface PXStoryTransitionModel
- ($0AC6E346AE4835514AAA8AC86D8F4844)segmentTransitionInfo;
- ($5A4ED22E2CF2C812F70E33C35343ABA3)orderInCompositionInfo;
- ($5A4ED22E2CF2C812F70E33C35343ABA3)orderOutCompositionInfo;
- ($D23540E3B197441F7781E3353E3BC035)transitionInfo;
- (PXStoryTransitionModel)initWithSegmentTransitionInfo:(id)info orderOutCompositionInfo:(id *)compositionInfo orderInCompositionInfo:(id *)inCompositionInfo transitionInfo:(id *)transitionInfo;
- (void)addClipWithIdentifier:(int64_t)identifier info:(id *)info event:(int64_t)event;
- (void)dealloc;
- (void)enumerateClipIdentifiersUsingBlock:(id)block;
@end

@implementation PXStoryTransitionModel

- ($5A4ED22E2CF2C812F70E33C35343ABA3)orderInCompositionInfo
{
  v3 = *&self[3].var3;
  *&retstr->var0 = *&self[3].var1;
  *&retstr->var2 = v3;
  retstr->var4 = self[4].var0;
  return self;
}

- ($5A4ED22E2CF2C812F70E33C35343ABA3)orderOutCompositionInfo
{
  v3 = *&self[2].var3;
  *&retstr->var0 = *&self[2].var1;
  *&retstr->var2 = v3;
  retstr->var4 = self[3].var0;
  return self;
}

- ($D23540E3B197441F7781E3353E3BC035)transitionInfo
{
  v3 = *&self[1].var2.var1;
  *&retstr->var0 = *&self[1].var0;
  *&retstr->var2.var1 = v3;
  *&retstr->var3 = *&self[1].var3;
  return self;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)segmentTransitionInfo
{
  toSegmentIdentifier = self->_segmentTransitionInfo.toSegmentIdentifier;
  fromSegmentIdentifier = self->_segmentTransitionInfo.fromSegmentIdentifier;
  result.var1 = toSegmentIdentifier;
  result.var0 = fromSegmentIdentifier;
  return result;
}

- (void)dealloc
{
  free(self->_clipInfos);
  v3.receiver = self;
  v3.super_class = PXStoryTransitionModel;
  [(PXStoryTransitionModel *)&v3 dealloc];
}

- (void)enumerateClipIdentifiersUsingBlock:(id)block
{
  v13 = 0;
  if (self->_count >= 1)
  {
    v5 = 0;
    v6 = 776;
    do
    {
      v7 = (&self->_clipInfos->var0 + v6);
      v8 = *(v7 - 97);
      memcpy(__dst, v7 - 96, sizeof(__dst));
      v9 = *v7;
      v10 = *(block + 2);
      memcpy(v11, __dst, sizeof(v11));
      v10(block, v8, v11, v9, &v13);
      if (v13 == 1)
      {
        break;
      }

      ++v5;
      v6 += 784;
    }

    while (v5 < self->_count);
  }
}

- (void)addClipWithIdentifier:(int64_t)identifier info:(id *)info event:(int64_t)event
{
  capacity = self->_capacity;
  ++self->_count;
  v6 = capacity;
  _PXGArrayCapacityResizeToCount();
}

- (PXStoryTransitionModel)initWithSegmentTransitionInfo:(id)info orderOutCompositionInfo:(id *)compositionInfo orderInCompositionInfo:(id *)inCompositionInfo transitionInfo:(id *)transitionInfo
{
  var1 = info.var1;
  var0 = info.var0;
  v18.receiver = self;
  v18.super_class = PXStoryTransitionModel;
  result = [(PXStoryTransitionModel *)&v18 init];
  if (result)
  {
    result->_segmentTransitionInfo.fromSegmentIdentifier = var0;
    result->_segmentTransitionInfo.toSegmentIdentifier = var1;
    v12 = *&transitionInfo->var0;
    v13 = *&transitionInfo->var2.var1;
    *&result->_transitionInfo.fallbackFromTransitionKind = *&transitionInfo->var3;
    *&result->_transitionInfo.orderOutTransition = v12;
    *&result->_transitionInfo.duration.timescale = v13;
    v14 = *&compositionInfo->var0;
    v15 = *&compositionInfo->var2;
    *&result->_orderOutCompositionInfo.mainDividerSplitRatio = compositionInfo->var4;
    *&result->_orderOutCompositionInfo.clipFramesExtendToBounds = v15;
    *&result->_transitionInfo.var1.scaleRelativeFactor = v14;
    v16 = *&inCompositionInfo->var0;
    v17 = *&inCompositionInfo->var2;
    *&result->_orderInCompositionInfo.mainDividerSplitRatio = inCompositionInfo->var4;
    *&result->_orderOutCompositionInfo.numberOfAssets = v16;
    *&result->_orderInCompositionInfo.clipFramesExtendToBounds = v17;
  }

  return result;
}

@end