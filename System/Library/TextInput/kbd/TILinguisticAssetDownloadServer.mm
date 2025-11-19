@interface TILinguisticAssetDownloadServer
+ (id)_dispatchQueue;
+ (id)sharedServer;
+ (int64_t)serverResultForAssetManagerResult:(int64_t)a3;
- (void)addLinguisticAssetsAssertionForLanguage:(id)a3 assertionID:(id)a4 region:(id)a5 clientID:(id)a6 withHandler:(id)a7;
- (void)fetchAssetUpdateStatusForInputModeIdentifier:(id)a3 callback:(id)a4;
- (void)removeLinguisticAssetsAssertionWithIdentifier:(id)a3 forClientID:(id)a4 withHandler:(id)a5;
- (void)requestLinguisticAssetsForLanguage:(id)a3 completion:(id)a4;
- (void)start;
- (void)stop;
- (void)updateAssetForInputModeIdentifier:(id)a3 callback:(id)a4;
@end

@implementation TILinguisticAssetDownloadServer

+ (id)sharedServer
{
  if (qword_1000265F8 != -1)
  {
    sub_10000DBF4();
  }

  v3 = qword_1000265F0;

  return v3;
}

- (void)start
{
  v2 = +[TILinguisticAssetDownloadServer _dispatchQueue];
  TIDispatchAsync();
}

+ (id)_dispatchQueue
{
  if (qword_100026608 != -1)
  {
    sub_10000DC08();
  }

  v3 = qword_100026600;

  return v3;
}

- (void)stop
{
  v2 = +[TILinguisticAssetDownloadServer _dispatchQueue];
  TIDispatchAsync();
}

+ (int64_t)serverResultForAssetManagerResult:(int64_t)a3
{
  if ((a3 + 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)requestLinguisticAssetsForLanguage:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[TILinguisticAssetDownloadServer _dispatchQueue];
  v10 = v6;
  v8 = v6;
  v9 = v5;
  TIDispatchAsync();
}

- (void)addLinguisticAssetsAssertionForLanguage:(id)a3 assertionID:(id)a4 region:(id)a5 clientID:(id)a6 withHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = +[TIAssetManager sharedAssetManager];
  [v16 addLinguisticAssetsAssertionForLanguage:v15 assertionID:v14 region:v13 clientID:v12 withHandler:v11];
}

- (void)removeLinguisticAssetsAssertionWithIdentifier:(id)a3 forClientID:(id)a4 withHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[TIAssetManager sharedAssetManager];
  [v10 removeLinguisticAssetsAssertionWithIdentifier:v9 forClientID:v8 withHandler:v7];
}

- (void)fetchAssetUpdateStatusForInputModeIdentifier:(id)a3 callback:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[TIAssetManager sharedAssetManager];
  [v7 fetchAssetUpdateStatusForInputModeIdentifier:v6 callback:v5];
}

- (void)updateAssetForInputModeIdentifier:(id)a3 callback:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[TIAssetManager sharedAssetManager];
  [v7 updateAssetForInputModeIdentifier:v6 callback:v5];
}

@end