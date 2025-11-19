@interface RCTrimmedCompositionWaveformDataSource
- (RCTrimmedCompositionWaveformDataSource)initWithSourceComposition:(id)a3 destinationWaveformURL:(id)a4 trackIndex:(unint64_t)a5;
@end

@implementation RCTrimmedCompositionWaveformDataSource

- (RCTrimmedCompositionWaveformDataSource)initWithSourceComposition:(id)a3 destinationWaveformURL:(id)a4 trackIndex:(unint64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = RCTrimmedCompositionWaveformDataSource;
  v10 = [(RCCompositionWaveformDataSource *)&v13 initWithComposition:a3 trackIndex:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_destinationWaveformURL, a4);
    [(RCCompositionWaveformDataSource *)v11 setSaveGeneratedWaveform:1];
  }

  return v11;
}

@end