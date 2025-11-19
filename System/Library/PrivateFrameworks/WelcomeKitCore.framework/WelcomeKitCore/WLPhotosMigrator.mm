@interface WLPhotosMigrator
- (WLFeaturePayload)featurePayload;
- (id)importDidEnd;
- (id)importWillBegin;
- (void)addWorkingTime:(unint64_t)a3;
- (void)enable;
- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6;
- (void)setEstimatedDataSize:(unint64_t)a3;
- (void)setState:(id)a3;
@end

@implementation WLPhotosMigrator

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:v4];
}

- (void)setEstimatedDataSize:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:a3];
}

- (void)addWorkingTime:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + a3}];
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
  v3 = [(WLPhotoLibrary *)self->_photoLibrary errorCount];
  photoLibrary = self->_photoLibrary;
  self->_importErrorCount = v3;
  self->_photoLibrary = 0;

  return 0;
}

- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = [v9 itemSize];
  v11 = [v9 dataFilePath];
  v12 = [v9 identifier];
  v13 = [v12 lastPathComponent];

  v14 = [v9 bucket];

  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setCount:{objc_msgSend(WeakRetained, "count") + 1}];

  v16 = objc_loadWeakRetained(&self->_featurePayload);
  [v16 setSize:{objc_msgSend(v16, "size") + v10}];

  photoLibrary = self->_photoLibrary;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__WLPhotosMigrator_importRecordData_summary_account_completion___block_invoke;
  v19[3] = &unk_279EB53B8;
  v20 = v8;
  v18 = v8;
  [(WLPhotoLibrary *)photoLibrary addAsset:v11 filename:v13 size:v10 collection:v14 completion:v19];
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