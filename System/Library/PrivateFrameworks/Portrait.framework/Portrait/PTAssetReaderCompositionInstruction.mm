@interface PTAssetReaderCompositionInstruction
- ($69C59A32909E13F94AB58097350E6BB9)timeRange;
- (NSArray)requiredSourceTrackIDs;
- (PTAssetReader)assetReader;
- (void)setTimeRange:(id *)range;
@end

@implementation PTAssetReaderCompositionInstruction

- (NSArray)requiredSourceTrackIDs
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{-[PTAssetReaderCompositionInstruction videTrackID](self, "videTrackID")}];
  v7[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[PTAssetReaderCompositionInstruction auxvTrackID](self, "auxvTrackID")}];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- ($69C59A32909E13F94AB58097350E6BB9)timeRange
{
  v3 = *&self->var1.var3;
  *&retstr->var0.var0 = *&self->var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var1;
  return self;
}

- (void)setTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_timeRange.duration.timescale = *&range->var1.var1;
  *&self->_timeRange.start.epoch = v4;
  *&self->_timeRange.start.value = v3;
}

- (PTAssetReader)assetReader
{
  WeakRetained = objc_loadWeakRetained(&self->_assetReader);

  return WeakRetained;
}

@end