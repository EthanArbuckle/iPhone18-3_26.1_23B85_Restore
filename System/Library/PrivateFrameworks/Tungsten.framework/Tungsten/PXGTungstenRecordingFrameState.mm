@interface PXGTungstenRecordingFrameState
- (PXGTungstenRecordingFrameState)init;
@end

@implementation PXGTungstenRecordingFrameState

- (PXGTungstenRecordingFrameState)init
{
  v6.receiver = self;
  v6.super_class = PXGTungstenRecordingFrameState;
  v2 = [(PXGTungstenRecordingFrameState *)&v6 init];
  if (v2)
  {
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    spriteIndexes = v2->_spriteIndexes;
    v2->_spriteIndexes = indexSet;
  }

  return v2;
}

@end