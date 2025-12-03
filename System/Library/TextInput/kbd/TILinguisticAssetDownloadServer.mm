@interface TILinguisticAssetDownloadServer
+ (id)_dispatchQueue;
+ (id)sharedServer;
+ (int64_t)serverResultForAssetManagerResult:(int64_t)result;
- (void)addLinguisticAssetsAssertionForLanguage:(id)language assertionID:(id)d region:(id)region clientID:(id)iD withHandler:(id)handler;
- (void)fetchAssetUpdateStatusForInputModeIdentifier:(id)identifier callback:(id)callback;
- (void)removeLinguisticAssetsAssertionWithIdentifier:(id)identifier forClientID:(id)d withHandler:(id)handler;
- (void)requestLinguisticAssetsForLanguage:(id)language completion:(id)completion;
- (void)start;
- (void)stop;
- (void)updateAssetForInputModeIdentifier:(id)identifier callback:(id)callback;
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

+ (int64_t)serverResultForAssetManagerResult:(int64_t)result
{
  if ((result + 1) >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

- (void)requestLinguisticAssetsForLanguage:(id)language completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  v7 = +[TILinguisticAssetDownloadServer _dispatchQueue];
  v10 = completionCopy;
  v8 = completionCopy;
  v9 = languageCopy;
  TIDispatchAsync();
}

- (void)addLinguisticAssetsAssertionForLanguage:(id)language assertionID:(id)d region:(id)region clientID:(id)iD withHandler:(id)handler
{
  handlerCopy = handler;
  iDCopy = iD;
  regionCopy = region;
  dCopy = d;
  languageCopy = language;
  v16 = +[TIAssetManager sharedAssetManager];
  [v16 addLinguisticAssetsAssertionForLanguage:languageCopy assertionID:dCopy region:regionCopy clientID:iDCopy withHandler:handlerCopy];
}

- (void)removeLinguisticAssetsAssertionWithIdentifier:(id)identifier forClientID:(id)d withHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  identifierCopy = identifier;
  v10 = +[TIAssetManager sharedAssetManager];
  [v10 removeLinguisticAssetsAssertionWithIdentifier:identifierCopy forClientID:dCopy withHandler:handlerCopy];
}

- (void)fetchAssetUpdateStatusForInputModeIdentifier:(id)identifier callback:(id)callback
{
  callbackCopy = callback;
  identifierCopy = identifier;
  v7 = +[TIAssetManager sharedAssetManager];
  [v7 fetchAssetUpdateStatusForInputModeIdentifier:identifierCopy callback:callbackCopy];
}

- (void)updateAssetForInputModeIdentifier:(id)identifier callback:(id)callback
{
  callbackCopy = callback;
  identifierCopy = identifier;
  v7 = +[TIAssetManager sharedAssetManager];
  [v7 updateAssetForInputModeIdentifier:identifierCopy callback:callbackCopy];
}

@end