@interface PXStoryMockAutoEditDecisionList
- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo;
- (PXStoryMockAutoEditDecisionList)initWithSong:(id)a3;
- (id)clipAtIndex:(int64_t)a3;
@end

@implementation PXStoryMockAutoEditDecisionList

- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo
{
  v3 = *&self[1].var1.var0.var3;
  v4 = *&self[1].var1.var2.var0;
  *&retstr->var1.var1.var0 = *&self[1].var1.var1.var1;
  *&retstr->var1.var1.var3 = v4;
  *&retstr->var1.var2.var1 = *&self[1].var1.var2.var3;
  *&retstr->var0 = *&self[1].var1.var0.var0;
  *&retstr->var1.var0.var1 = v3;
  return self;
}

- (id)clipAtIndex:(int64_t)a3
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryMockAutoEditDecisionList.m" lineNumber:44 description:{@"Index (%ld) out of range", a3}];

  abort();
}

- (PXStoryMockAutoEditDecisionList)initWithSong:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PXStoryMockAutoEditDecisionList;
  v6 = [(PXStoryMockAutoEditDecisionList *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_numberOfClips = 0;
    v8 = [v5 colorGradeCategory];
    colorGradeCategory = v7->_colorGradeCategory;
    v7->_colorGradeCategory = v8;

    objc_storeStrong(&v7->_song, a3);
    CMTimeMakeWithSeconds(&v14, 2.0, 600);
    v7->_defaultDisplayAssetPresentationDuration = v14;
    v7->_allowsNUp = 0;
    v7->_overallDurationInfo.kind = 4;
    v10 = MEMORY[0x1E69C0DB0];
    v11 = *(MEMORY[0x1E69C0DB0] + 48);
    *&v7->_overallDurationInfo.specificDurationInfo.preferredDuration.timescale = *(MEMORY[0x1E69C0DB0] + 32);
    *&v7->_overallDurationInfo.specificDurationInfo.maximumDuration.value = v11;
    v7->_overallDurationInfo.specificDurationInfo.maximumDuration.epoch = *(v10 + 64);
    v12 = *(v10 + 16);
    *&v7->_overallDurationInfo.specificDurationInfo.minimumDuration.value = *v10;
    *&v7->_overallDurationInfo.specificDurationInfo.minimumDuration.epoch = v12;
    CMTimeMakeWithSeconds(&v14, 1.5, 600);
    v7->_outroDuration = v14;
  }

  return v7;
}

@end