@interface _LTDLanguageAssetCacheObserver
- (_LTDLanguageAssetCacheObserver)initWithID:(id)d taskHint:(int64_t)hint progress:(BOOL)progress observations:(id)observations completion:(id)completion;
@end

@implementation _LTDLanguageAssetCacheObserver

- (_LTDLanguageAssetCacheObserver)initWithID:(id)d taskHint:(int64_t)hint progress:(BOOL)progress observations:(id)observations completion:(id)completion
{
  dCopy = d;
  observationsCopy = observations;
  completionCopy = completion;
  v24.receiver = self;
  v24.super_class = _LTDLanguageAssetCacheObserver;
  v16 = [(_LTDLanguageAssetCacheObserver *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_observerId, d);
    v17->_taskHint = hint;
    v17->_isIndeterminate = !progress;
    v18 = MEMORY[0x238398770](observationsCopy);
    observations = v17->_observations;
    v17->_observations = v18;

    v20 = MEMORY[0x238398770](completionCopy);
    completion = v17->_completion;
    v17->_completion = v20;

    v22 = v17;
  }

  return v17;
}

@end