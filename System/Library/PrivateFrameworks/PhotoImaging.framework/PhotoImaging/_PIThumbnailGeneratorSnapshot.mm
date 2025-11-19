@interface _PIThumbnailGeneratorSnapshot
- (PIThumbnailGenerator)generator;
- (_PIThumbnailGeneratorSnapshot)initWithGenerator:(id)a3;
- (void)setReferenceTime:(id *)a3;
@end

@implementation _PIThumbnailGeneratorSnapshot

- (PIThumbnailGenerator)generator
{
  WeakRetained = objc_loadWeakRetained(&self->_generator);

  return WeakRetained;
}

- (void)setReferenceTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_referenceTime.epoch = a3->var3;
  *&self->_referenceTime.value = v3;
}

- (_PIThumbnailGeneratorSnapshot)initWithGenerator:(id)a3
{
  v16.receiver = self;
  v16.super_class = _PIThumbnailGeneratorSnapshot;
  v3 = a3;
  v4 = [(_PIThumbnailGeneratorSnapshot *)&v16 init];
  objc_storeWeak(&v4->_generator, v3);
  v5 = [v3 composition];
  v6 = [v5 copy];
  composition = v4->_composition;
  v4->_composition = v6;

  v8 = [v3 thumbnailTimes];
  v9 = [v8 copy];
  thumbnailTimes = v4->_thumbnailTimes;
  v4->_thumbnailTimes = v9;

  v11 = [v3 resultQueue];
  resultQueue = v4->_resultQueue;
  v4->_resultQueue = v11;

  v13 = [v3 partialResultHandler];

  partialResultHandler = v4->_partialResultHandler;
  v4->_partialResultHandler = v13;

  return v4;
}

@end