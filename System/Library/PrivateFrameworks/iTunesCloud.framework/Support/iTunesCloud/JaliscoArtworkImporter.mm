@interface JaliscoArtworkImporter
- (BOOL)_cellularDataAllowedForMediaType:(unsigned int)a3;
- (JaliscoArtworkImporter)initWithConfiguration:(id)a3;
- (void)_importOriginalItemArtworkWithClientIdentity:(id)a3;
- (void)_importOriginalScreenshotsWithClientIdentity:(id)a3;
- (void)importAllItemArtworkAndScreenshotsWithClientIdentity:(id)a3;
- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importScreenshotForPurchaseHistoryID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
@end

@implementation JaliscoArtworkImporter

- (BOOL)_cellularDataAllowedForMediaType:(unsigned int)a3
{
  if ((a3 & 0x408) != 0)
  {
    v3 = +[ICCloudAvailabilityController sharedController];
    v4 = [v3 isCellularDataRestrictedForMusic];
  }

  else
  {
    if ((a3 & 0x10042) != 0)
    {
      v3 = [ICNetworkConstraints constraintsForSystemApplicationType:2];
      v5 = [v3 shouldAllowDataForCellularNetworkTypes];
      goto LABEL_6;
    }

    v3 = +[ICCloudAvailabilityController sharedController];
    v4 = [v3 isCellularDataRestrictedForVideos];
  }

  v5 = v4 ^ 1;
LABEL_6:

  return v5;
}

- (void)_importOriginalScreenshotsWithClientIdentity:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  v6 = [v5 isCellularDataRestrictedForVideos] ^ 1;

  v7 = [(CloudArtworkImporter *)self musicLibrary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006EBA8;
  v9[3] = &unk_1001DF530;
  v12 = v6;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v7 databaseConnectionAllowingWrites:0 withBlock:v9];
}

- (void)_importOriginalItemArtworkWithClientIdentity:(id)a3
{
  v4 = a3;
  v5 = [(CloudArtworkImporter *)self musicLibrary];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006EE6C;
  v7[3] = &unk_1001DEE70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 databaseConnectionAllowingWrites:0 withBlock:v7];
}

- (void)importScreenshotForPurchaseHistoryID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CloudArtworkImporter *)self musicLibrary];
  v11 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyPurchaseHistoryID equalToInt64:a3];
  v12 = [ML3Track anyInLibrary:v10 predicate:v11 options:3];

  if (v12)
  {
    v13 = [[ML3ArtworkTokenSet alloc] initWithEntity:v12 artworkType:2];
    v14 = [v13 artworkTokenForSource:400];

    if (v14)
    {
      v15 = [v12 valueForProperty:ML3TrackPropertyMediaType];
      v16 = [v15 unsignedIntValue];

      v17 = +[ICCloudAvailabilityController sharedController];
      v18 = [v17 isCellularDataRestrictedForVideos];

      [(CloudArtworkImporter *)self importArtworkForCloudID:a3 artworkType:2 token:v14 mediaType:v16 allowsCellularData:v18 ^ 1 clientIdentity:v8 completionHandler:v9];
LABEL_6:

      goto LABEL_7;
    }
  }

  if (v9)
  {
    v14 = [NSString stringWithFormat:@"No purchase_history_screenshot_token for purchase_history_id = %llu", a3];
    v21 = NSLocalizedDescriptionKey;
    v22 = v14;
    v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v20 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v19];

    v9[2](v9, v20);
    goto LABEL_6;
  }

LABEL_7:
}

- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CloudArtworkImporter *)self musicLibrary];
  v11 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyPurchaseHistoryID equalToInt64:a3];
  v12 = [ML3Track anyInLibrary:v10 predicate:v11 options:3];

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
    v16 = [v15 unsignedIntValue];

    [(CloudArtworkImporter *)self importArtworkForCloudID:a3 artworkType:1 token:v14 mediaType:v16 allowsCellularData:[(JaliscoArtworkImporter *)self _cellularDataAllowedForMediaType:v16] clientIdentity:v8 completionHandler:v9];
  }

  else if (v9)
  {
    v17 = [NSString stringWithFormat:@"No purchase_history_artwork_token for purchase_history_id = %llu", a3];
    v20 = NSLocalizedDescriptionKey;
    v21 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v19 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v18];

    v9[2](v9, v19);
  }
}

- (void)importAllItemArtworkAndScreenshotsWithClientIdentity:(id)a3
{
  v4 = a3;
  [(JaliscoArtworkImporter *)self _importOriginalItemArtworkWithClientIdentity:v4];
  [(JaliscoArtworkImporter *)self _importOriginalScreenshotsWithClientIdentity:v4];
}

- (JaliscoArtworkImporter)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = JaliscoArtworkImporter;
  return [(CloudArtworkImporter *)&v4 initWithConfiguration:a3 sourceType:400];
}

@end