@interface TILinguisticAssetDownloadClientMock
- (TILinguisticAssetDownloadClientMock)initWithResult:(int64_t)result error:(id)error;
- (void)requestLinguisticAssetsForLanguage:(id)language completion:(id)completion;
@end

@implementation TILinguisticAssetDownloadClientMock

- (void)requestLinguisticAssetsForLanguage:(id)language completion:(id)completion
{
  completionCopy = completion;
  result = [(TILinguisticAssetDownloadClientMock *)self result];
  error = [(TILinguisticAssetDownloadClientMock *)self error];
  (*(completion + 2))(completionCopy, result, error);
}

- (TILinguisticAssetDownloadClientMock)initWithResult:(int64_t)result error:(id)error
{
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = TILinguisticAssetDownloadClientMock;
  v8 = [(TILinguisticAssetDownloadClientMock *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_result = result;
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

@end