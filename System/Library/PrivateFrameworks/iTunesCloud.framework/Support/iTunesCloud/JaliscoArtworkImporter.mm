@interface JaliscoArtworkImporter
- (BOOL)_cellularDataAllowedForMediaType:(unsigned int)type;
- (JaliscoArtworkImporter)initWithConfiguration:(id)configuration;
- (void)_importOriginalItemArtworkWithClientIdentity:(id)identity;
- (void)_importOriginalScreenshotsWithClientIdentity:(id)identity;
- (void)importAllItemArtworkAndScreenshotsWithClientIdentity:(id)identity;
- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importScreenshotForPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
@end

@implementation JaliscoArtworkImporter

- (BOOL)_cellularDataAllowedForMediaType:(unsigned int)type
{
  if ((type & 0x408) != 0)
  {
    v3 = +[ICCloudAvailabilityController sharedController];
    isCellularDataRestrictedForMusic = [v3 isCellularDataRestrictedForMusic];
  }

  else
  {
    if ((type & 0x10042) != 0)
    {
      v3 = [ICNetworkConstraints constraintsForSystemApplicationType:2];
      shouldAllowDataForCellularNetworkTypes = [v3 shouldAllowDataForCellularNetworkTypes];
      goto LABEL_6;
    }

    v3 = +[ICCloudAvailabilityController sharedController];
    isCellularDataRestrictedForMusic = [v3 isCellularDataRestrictedForVideos];
  }

  shouldAllowDataForCellularNetworkTypes = isCellularDataRestrictedForMusic ^ 1;
LABEL_6:

  return shouldAllowDataForCellularNetworkTypes;
}

- (void)_importOriginalScreenshotsWithClientIdentity:(id)identity
{
  identityCopy = identity;
  v5 = +[ICCloudAvailabilityController sharedController];
  v6 = [v5 isCellularDataRestrictedForVideos] ^ 1;

  musicLibrary = [(CloudArtworkImporter *)self musicLibrary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006EBA8;
  v9[3] = &unk_1001DF530;
  v12 = v6;
  v10 = identityCopy;
  selfCopy = self;
  v8 = identityCopy;
  [musicLibrary databaseConnectionAllowingWrites:0 withBlock:v9];
}

- (void)_importOriginalItemArtworkWithClientIdentity:(id)identity
{
  identityCopy = identity;
  musicLibrary = [(CloudArtworkImporter *)self musicLibrary];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006EE6C;
  v7[3] = &unk_1001DEE70;
  v8 = identityCopy;
  selfCopy = self;
  v6 = identityCopy;
  [musicLibrary databaseConnectionAllowingWrites:0 withBlock:v7];
}

- (void)importScreenshotForPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  musicLibrary = [(CloudArtworkImporter *)self musicLibrary];
  v11 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyPurchaseHistoryID equalToInt64:d];
  v12 = [ML3Track anyInLibrary:musicLibrary predicate:v11 options:3];

  if (v12)
  {
    v13 = [[ML3ArtworkTokenSet alloc] initWithEntity:v12 artworkType:2];
    v14 = [v13 artworkTokenForSource:400];

    if (v14)
    {
      v15 = [v12 valueForProperty:ML3TrackPropertyMediaType];
      unsignedIntValue = [v15 unsignedIntValue];

      v17 = +[ICCloudAvailabilityController sharedController];
      isCellularDataRestrictedForVideos = [v17 isCellularDataRestrictedForVideos];

      [(CloudArtworkImporter *)self importArtworkForCloudID:d artworkType:2 token:v14 mediaType:unsignedIntValue allowsCellularData:isCellularDataRestrictedForVideos ^ 1 clientIdentity:identityCopy completionHandler:handlerCopy];
LABEL_6:

      goto LABEL_7;
    }
  }

  if (handlerCopy)
  {
    v14 = [NSString stringWithFormat:@"No purchase_history_screenshot_token for purchase_history_id = %llu", d];
    v21 = NSLocalizedDescriptionKey;
    v22 = v14;
    v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v20 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v19];

    handlerCopy[2](handlerCopy, v20);
    goto LABEL_6;
  }

LABEL_7:
}

- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  musicLibrary = [(CloudArtworkImporter *)self musicLibrary];
  v11 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyPurchaseHistoryID equalToInt64:d];
  v12 = [ML3Track anyInLibrary:musicLibrary predicate:v11 options:3];

  if (v12)
  {
    v13 = [[ML3ArtworkTokenSet alloc] initWithEntity:v12 artworkType:1];
    v14 = [v13 artworkTokenForSource:400];
  }

  else
  {
    v14 = 0;
  }

  if ([v14 length])
  {
    v15 = [v12 valueForProperty:ML3TrackPropertyMediaType];
    unsignedIntValue = [v15 unsignedIntValue];

    [(CloudArtworkImporter *)self importArtworkForCloudID:d artworkType:1 token:v14 mediaType:unsignedIntValue allowsCellularData:[(JaliscoArtworkImporter *)self _cellularDataAllowedForMediaType:unsignedIntValue] clientIdentity:identityCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v17 = [NSString stringWithFormat:@"No purchase_history_artwork_token for purchase_history_id = %llu", d];
    v20 = NSLocalizedDescriptionKey;
    v21 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v19 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v18];

    handlerCopy[2](handlerCopy, v19);
  }
}

- (void)importAllItemArtworkAndScreenshotsWithClientIdentity:(id)identity
{
  identityCopy = identity;
  [(JaliscoArtworkImporter *)self _importOriginalItemArtworkWithClientIdentity:identityCopy];
  [(JaliscoArtworkImporter *)self _importOriginalScreenshotsWithClientIdentity:identityCopy];
}

- (JaliscoArtworkImporter)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = JaliscoArtworkImporter;
  return [(CloudArtworkImporter *)&v4 initWithConfiguration:configuration sourceType:400];
}

@end