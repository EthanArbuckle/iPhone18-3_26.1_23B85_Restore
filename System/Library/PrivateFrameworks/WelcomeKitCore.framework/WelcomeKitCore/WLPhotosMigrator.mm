@interface WLPhotosMigrator
- (WLFeaturePayload)featurePayload;
- (id)importDidEnd;
- (id)importWillBegin;
- (void)addWorkingTime:(unint64_t)time;
- (void)enable;
- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion;
- (void)setEstimatedDataSize:(unint64_t)size;
- (void)setState:(id)state;
@end

@implementation WLPhotosMigrator

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:stateCopy];
}

- (void)setEstimatedDataSize:(unint64_t)size
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:size];
}

- (void)addWorkingTime:(unint64_t)time
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + time}];
}

- (id)importWillBegin
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:0];

  v4 = [[WLPhotoLibrary alloc] initWithContentType:0];
  photoLibrary = self->_photoLibrary;
  self->_photoLibrary = v4;

  return 0;
}

- (id)importDidEnd
{
  errorCount = [(WLPhotoLibrary *)self->_photoLibrary errorCount];
  photoLibrary = self->_photoLibrary;
  self->_importErrorCount = errorCount;
  self->_photoLibrary = 0;

  return 0;
}

- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion
{
  completionCopy = completion;
  summaryCopy = summary;
  itemSize = [summaryCopy itemSize];
  dataFilePath = [summaryCopy dataFilePath];
  identifier = [summaryCopy identifier];
  lastPathComponent = [identifier lastPathComponent];

  bucket = [summaryCopy bucket];

  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setCount:{objc_msgSend(WeakRetained, "count") + 1}];

  v16 = objc_loadWeakRetained(&self->_featurePayload);
  [v16 setSize:{objc_msgSend(v16, "size") + itemSize}];

  photoLibrary = self->_photoLibrary;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__WLPhotosMigrator_importRecordData_summary_account_completion___block_invoke;
  v19[3] = &unk_279EB53B8;
  v20 = completionCopy;
  v18 = completionCopy;
  [(WLPhotoLibrary *)photoLibrary addAsset:dataFilePath filename:lastPathComponent size:itemSize collection:bucket completion:v19];
}

uint64_t __64__WLPhotosMigrator_importRecordData_summary_account_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end