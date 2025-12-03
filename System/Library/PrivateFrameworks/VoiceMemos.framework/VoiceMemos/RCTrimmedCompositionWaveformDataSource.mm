@interface RCTrimmedCompositionWaveformDataSource
- (RCTrimmedCompositionWaveformDataSource)initWithSourceComposition:(id)composition destinationWaveformURL:(id)l trackIndex:(unint64_t)index;
@end

@implementation RCTrimmedCompositionWaveformDataSource

- (RCTrimmedCompositionWaveformDataSource)initWithSourceComposition:(id)composition destinationWaveformURL:(id)l trackIndex:(unint64_t)index
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = RCTrimmedCompositionWaveformDataSource;
  v10 = [(RCCompositionWaveformDataSource *)&v13 initWithComposition:composition trackIndex:index];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_destinationWaveformURL, l);
    [(RCCompositionWaveformDataSource *)v11 setSaveGeneratedWaveform:1];
  }

  return v11;
}

@end