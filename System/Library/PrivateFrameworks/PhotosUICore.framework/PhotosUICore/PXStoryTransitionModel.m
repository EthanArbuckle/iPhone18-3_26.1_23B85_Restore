@interface PXStoryTransitionModel
- ($0AC6E346AE4835514AAA8AC86D8F4844)segmentTransitionInfo;
- ($5A4ED22E2CF2C812F70E33C35343ABA3)orderInCompositionInfo;
- ($5A4ED22E2CF2C812F70E33C35343ABA3)orderOutCompositionInfo;
- ($D23540E3B197441F7781E3353E3BC035)transitionInfo;
- (PXStoryTransitionModel)initWithSegmentTransitionInfo:(id)a3 orderOutCompositionInfo:(id *)a4 orderInCompositionInfo:(id *)a5 transitionInfo:(id *)a6;
- (void)addClipWithIdentifier:(int64_t)a3 info:(id *)a4 event:(int64_t)a5;
- (void)dealloc;
- (void)enumerateClipIdentifiersUsingBlock:(id)a3;
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

- (void)enumerateClipIdentifiersUsingBlock:(id)a3
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
      v10 = *(a3 + 2);
      memcpy(v11, __dst, sizeof(v11));
      v10(a3, v8, v11, v9, &v13);
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

- (void)addClipWithIdentifier:(int64_t)a3 info:(id *)a4 event:(int64_t)a5
{
  capacity = self->_capacity;
  ++self->_count;
  v6 = capacity;
  _PXGArrayCapacityResizeToCount();
}

- (PXStoryTransitionModel)initWithSegmentTransitionInfo:(id)a3 orderOutCompositionInfo:(id *)a4 orderInCompositionInfo:(id *)a5 transitionInfo:(id *)a6
{
  var1 = a3.var1;
  var0 = a3.var0;
  v18.receiver = self;
  v18.super_class = PXStoryTransitionModel;
  result = [(PXStoryTransitionModel *)&v18 init];
  if (result)
  {
    result->_segmentTransitionInfo.fromSegmentIdentifier = var0;
    result->_segmentTransitionInfo.toSegmentIdentifier = var1;
    v12 = *&a6->var0;
    v13 = *&a6->var2.var1;
    *&result->_transitionInfo.fallbackFromTransitionKind = *&a6->var3;
    *&result->_transitionInfo.orderOutTransition = v12;
    *&result->_transitionInfo.duration.timescale = v13;
    v14 = *&a4->var0;
    v15 = *&a4->var2;
    *&result->_orderOutCompositionInfo.mainDividerSplitRatio = a4->var4;
    *&result->_orderOutCompositionInfo.clipFramesExtendToBounds = v15;
    *&result->_transitionInfo.var1.scaleRelativeFactor = v14;
    v16 = *&a5->var0;
    v17 = *&a5->var2;
    *&result->_orderInCompositionInfo.mainDividerSplitRatio = a5->var4;
    *&result->_orderOutCompositionInfo.numberOfAssets = v16;
    *&result->_orderInCompositionInfo.clipFramesExtendToBounds = v17;
  }

  return result;
}

@end