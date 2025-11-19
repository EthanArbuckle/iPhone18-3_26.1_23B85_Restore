@interface TILinguisticAssetDownloadClientMock
- (TILinguisticAssetDownloadClientMock)initWithResult:(int64_t)a3 error:(id)a4;
- (void)requestLinguisticAssetsForLanguage:(id)a3 completion:(id)a4;
@end

@implementation TILinguisticAssetDownloadClientMock

- (void)requestLinguisticAssetsForLanguage:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(TILinguisticAssetDownloadClientMock *)self result];
  v8 = [(TILinguisticAssetDownloadClientMock *)self error];
  (*(a4 + 2))(v6, v7, v8);
}

- (TILinguisticAssetDownloadClientMock)initWithResult:(int64_t)a3 error:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TILinguisticAssetDownloadClientMock;
  v8 = [(TILinguisticAssetDownloadClientMock *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_result = a3;
    objc_storeStrong(&v8->_error, a4);
  }

  return v9;
}

@end