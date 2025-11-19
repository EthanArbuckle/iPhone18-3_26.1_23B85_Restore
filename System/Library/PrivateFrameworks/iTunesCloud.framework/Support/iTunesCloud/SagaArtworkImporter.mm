@interface SagaArtworkImporter
- (SagaArtworkImporter)initWithConfiguration:(id)a3;
- (void)_importOriginalContainerArtworkWithClientIdentity:(id)a3;
- (void)_importOriginalItemArtworkWithClientIdentity:(id)a3;
- (void)importAllItemArtworkWithClientIdentity:(id)a3;
- (void)importContainerArtworkForSagaID:(unint64_t)a3 variantType:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)importItemArtworkForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importScreenshotForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
@end

@implementation SagaArtworkImporter

- (void)_importOriginalContainerArtworkWithClientIdentity:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  v6 = [v5 isCellularDataRestrictedForMusic] ^ 1;

  v7 = [(CloudArtworkImporter *)self musicLibrary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100136AC4;
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
  v5 = +[ICCloudAvailabilityController sharedController];
  v6 = [v5 isCellularDataRestrictedForMusic] ^ 1;

  v7 = [(CloudArtworkImporter *)self musicLibrary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100136D9C;
  v9[3] = &unk_1001DF530;
  v12 = v6;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v7 databaseConnectionAllowingWrites:0 withBlock:v9];
}

- (void)importContainerArtworkForSagaID:(unint64_t)a3 variantType:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(CloudArtworkImporter *)self musicLibrary];
  [v12 setClientIdentity:v10];

  v13 = [(CloudArtworkImporter *)self musicLibrary];
  v14 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyStoreCloudID equalToInt64:a3];
  v15 = [ML3Container anyInLibrary:v13 predicate:v14];

  if (v15)
  {
    v16 = [[ML3ArtworkTokenSet alloc] initWithEntity:v15 artworkType:5 artworkVariantType:a4];
    v17 = [v16 artworkTokenForSource:200];
  }

  else
  {
    v17 = 0;
  }

  if ([v17 length])
  {
    v18 = +[ICCloudAvailabilityController sharedController];
    v19 = [v18 isCellularDataRestrictedForMusic];

    [(CloudArtworkImporter *)self importArtworkForCloudID:a3 artworkType:5 token:v17 mediaType:8 variantType:a4 allowsCellularData:v19 ^ 1 clientIdentity:v10 completionHandler:v11];
  }

  else if (v11)
  {
    v20 = [NSString stringWithFormat:@"No cloud_artwork_token for playlist saga id = %llu, variantType = %ld", a3, a4];
    v23 = NSLocalizedDescriptionKey;
    v24 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v21];

    v11[2](v11, v22);
  }
}

- (void)importScreenshotForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CloudArtworkImporter *)self musicLibrary];
  [v10 setClientIdentity:v8];

  v11 = [(CloudArtworkImporter *)self musicLibrary];
  v12 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreSagaID equalToInt64:a3];
  v13 = [ML3Track anyInLibrary:v11 predicate:v12 options:7];

  if (v13)
  {
    v14 = [[ML3ArtworkTokenSet alloc] initWithEntity:v13 artworkType:2];
    v15 = [v14 artworkTokenForSource:200];
  }

  else
  {
    v15 = 0;
  }

  if ([v15 length])
  {
    v16 = [v13 valueForProperty:ML3TrackPropertyMediaType];
    v17 = [v16 unsignedIntValue];

    v18 = +[ICCloudAvailabilityController sharedController];
    v19 = [v18 isCellularDataRestrictedForMusic];

    [(CloudArtworkImporter *)self importArtworkForCloudID:a3 artworkType:2 token:v15 mediaType:v17 allowsCellularData:v19 ^ 1 clientIdentity:v8 completionHandler:v9];
  }

  else if (v9)
  {
    v20 = [NSString stringWithFormat:@"No cloud_screenshot_token for item saga id = %llu", a3];
    v23 = NSLocalizedDescriptionKey;
    v24 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v21];

    v9[2](v9, v22);
  }
}

- (void)importItemArtworkForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CloudArtworkImporter *)self musicLibrary];
  [v10 setClientIdentity:v8];

  v11 = [(CloudArtworkImporter *)self musicLibrary];
  v12 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreSagaID equalToInt64:a3];
  v13 = [ML3Track anyInLibrary:v11 predicate:v12 options:7];

  if (v13)
  {
    v14 = [[ML3ArtworkTokenSet alloc] initWithEntity:v13 artworkType:1];
    v15 = [v14 artworkTokenForSource:200];
  }

  else
  {
    v15 = 0;
  }

  if ([v15 length])
  {
    v16 = [v13 valueForProperty:ML3TrackPropertyMediaType];
    v17 = [v16 unsignedIntValue];

    v18 = +[ICCloudAvailabilityController sharedController];
    v19 = [v18 isCellularDataRestrictedForMusic];

    [(CloudArtworkImporter *)self importArtworkForCloudID:a3 artworkType:1 token:v15 mediaType:v17 allowsCellularData:v19 ^ 1 clientIdentity:v8 completionHandler:v9];
  }

  else if (v9)
  {
    v20 = [NSString stringWithFormat:@"No cloud_artwork_token for item saga id = %llu", a3];
    v23 = NSLocalizedDescriptionKey;
    v24 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v21];

    v9[2](v9, v22);
  }
}

- (void)importAllItemArtworkWithClientIdentity:(id)a3
{
  v4 = a3;
  [(SagaArtworkImporter *)self _importOriginalItemArtworkWithClientIdentity:v4];
  [(SagaArtworkImporter *)self _importOriginalContainerArtworkWithClientIdentity:v4];
}

- (SagaArtworkImporter)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = SagaArtworkImporter;
  return [(CloudArtworkImporter *)&v4 initWithConfiguration:a3 sourceType:200];
}

@end