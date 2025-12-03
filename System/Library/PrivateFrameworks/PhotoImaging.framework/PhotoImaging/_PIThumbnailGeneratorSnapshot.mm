@interface _PIThumbnailGeneratorSnapshot
- (PIThumbnailGenerator)generator;
- (_PIThumbnailGeneratorSnapshot)initWithGenerator:(id)generator;
- (void)setReferenceTime:(id *)time;
@end

@implementation _PIThumbnailGeneratorSnapshot

- (PIThumbnailGenerator)generator
{
  WeakRetained = objc_loadWeakRetained(&self->_generator);

  return WeakRetained;
}

- (void)setReferenceTime:(id *)time
{
  v3 = *&time->var0;
  self->_referenceTime.epoch = time->var3;
  *&self->_referenceTime.value = v3;
}

- (_PIThumbnailGeneratorSnapshot)initWithGenerator:(id)generator
{
  v16.receiver = self;
  v16.super_class = _PIThumbnailGeneratorSnapshot;
  generatorCopy = generator;
  v4 = [(_PIThumbnailGeneratorSnapshot *)&v16 init];
  objc_storeWeak(&v4->_generator, generatorCopy);
  composition = [generatorCopy composition];
  v6 = [composition copy];
  composition = v4->_composition;
  v4->_composition = v6;

  thumbnailTimes = [generatorCopy thumbnailTimes];
  v9 = [thumbnailTimes copy];
  thumbnailTimes = v4->_thumbnailTimes;
  v4->_thumbnailTimes = v9;

  resultQueue = [generatorCopy resultQueue];
  resultQueue = v4->_resultQueue;
  v4->_resultQueue = resultQueue;

  partialResultHandler = [generatorCopy partialResultHandler];

  partialResultHandler = v4->_partialResultHandler;
  v4->_partialResultHandler = partialResultHandler;

  return v4;
}

@end