@interface _LTDLanguageAssetCacheObserver
- (_LTDLanguageAssetCacheObserver)initWithID:(id)a3 taskHint:(int64_t)a4 progress:(BOOL)a5 observations:(id)a6 completion:(id)a7;
@end

@implementation _LTDLanguageAssetCacheObserver

- (_LTDLanguageAssetCacheObserver)initWithID:(id)a3 taskHint:(int64_t)a4 progress:(BOOL)a5 observations:(id)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = _LTDLanguageAssetCacheObserver;
  v16 = [(_LTDLanguageAssetCacheObserver *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_observerId, a3);
    v17->_taskHint = a4;
    v17->_isIndeterminate = !a5;
    v18 = MEMORY[0x238398770](v14);
    observations = v17->_observations;
    v17->_observations = v18;

    v20 = MEMORY[0x238398770](v15);
    completion = v17->_completion;
    v17->_completion = v20;

    v22 = v17;
  }

  return v17;
}

@end