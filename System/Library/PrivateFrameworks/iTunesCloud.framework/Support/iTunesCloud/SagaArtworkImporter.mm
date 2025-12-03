@interface SagaArtworkImporter
- (SagaArtworkImporter)initWithConfiguration:(id)configuration;
- (void)_importOriginalContainerArtworkWithClientIdentity:(id)identity;
- (void)_importOriginalItemArtworkWithClientIdentity:(id)identity;
- (void)importAllItemArtworkWithClientIdentity:(id)identity;
- (void)importContainerArtworkForSagaID:(unint64_t)d variantType:(int64_t)type clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importItemArtworkForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importScreenshotForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
@end

@implementation SagaArtworkImporter

- (void)_importOriginalContainerArtworkWithClientIdentity:(id)identity
{
  identityCopy = identity;
  v5 = +[ICCloudAvailabilityController sharedController];
  v6 = [v5 isCellularDataRestrictedForMusic] ^ 1;

  musicLibrary = [(CloudArtworkImporter *)self musicLibrary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100136AC4;
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
  v5 = +[ICCloudAvailabilityController sharedController];
  v6 = [v5 isCellularDataRestrictedForMusic] ^ 1;

  musicLibrary = [(CloudArtworkImporter *)self musicLibrary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100136D9C;
  v9[3] = &unk_1001DF530;
  v12 = v6;
  v10 = identityCopy;
  selfCopy = self;
  v8 = identityCopy;
  [musicLibrary databaseConnectionAllowingWrites:0 withBlock:v9];
}

- (void)importContainerArtworkForSagaID:(unint64_t)d variantType:(int64_t)type clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  musicLibrary = [(CloudArtworkImporter *)self musicLibrary];
  [musicLibrary setClientIdentity:identityCopy];

  musicLibrary2 = [(CloudArtworkImporter *)self musicLibrary];
  v14 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyStoreCloudID equalToInt64:d];
  v15 = [ML3Container anyInLibrary:musicLibrary2 predicate:v14];

  if (v15)
  {
    v16 = [[ML3ArtworkTokenSet alloc] initWithEntity:v15 artworkType:5 artworkVariantType:type];
    v17 = [v16 artworkTokenForSource:200];
  }

  else
  {
    v17 = 0;
  }

  if ([v17 length])
  {
    v18 = +[ICCloudAvailabilityController sharedController];
    isCellularDataRestrictedForMusic = [v18 isCellularDataRestrictedForMusic];

    [(CloudArtworkImporter *)self importArtworkForCloudID:d artworkType:5 token:v17 mediaType:8 variantType:type allowsCellularData:isCellularDataRestrictedForMusic ^ 1 clientIdentity:identityCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    type = [NSString stringWithFormat:@"No cloud_artwork_token for playlist saga id = %llu, variantType = %ld", d, type];
    v23 = NSLocalizedDescriptionKey;
    v24 = type;
    v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v21];

    handlerCopy[2](handlerCopy, v22);
  }
}

- (void)importScreenshotForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  musicLibrary = [(CloudArtworkImporter *)self musicLibrary];
  [musicLibrary setClientIdentity:identityCopy];

  musicLibrary2 = [(CloudArtworkImporter *)self musicLibrary];
  v12 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreSagaID equalToInt64:d];
  v13 = [ML3Track anyInLibrary:musicLibrary2 predicate:v12 options:7];

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
    unsignedIntValue = [v16 unsignedIntValue];

    v18 = +[ICCloudAvailabilityController sharedController];
    isCellularDataRestrictedForMusic = [v18 isCellularDataRestrictedForMusic];

    [(CloudArtworkImporter *)self importArtworkForCloudID:d artworkType:2 token:v15 mediaType:unsignedIntValue allowsCellularData:isCellularDataRestrictedForMusic ^ 1 clientIdentity:identityCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v20 = [NSString stringWithFormat:@"No cloud_screenshot_token for item saga id = %llu", d];
    v23 = NSLocalizedDescriptionKey;
    v24 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v21];

    handlerCopy[2](handlerCopy, v22);
  }
}

- (void)importItemArtworkForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  musicLibrary = [(CloudArtworkImporter *)self musicLibrary];
  [musicLibrary setClientIdentity:identityCopy];

  musicLibrary2 = [(CloudArtworkImporter *)self musicLibrary];
  v12 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreSagaID equalToInt64:d];
  v13 = [ML3Track anyInLibrary:musicLibrary2 predicate:v12 options:7];

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
    unsignedIntValue = [v16 unsignedIntValue];

    v18 = +[ICCloudAvailabilityController sharedController];
    isCellularDataRestrictedForMusic = [v18 isCellularDataRestrictedForMusic];

    [(CloudArtworkImporter *)self importArtworkForCloudID:d artworkType:1 token:v15 mediaType:unsignedIntValue allowsCellularData:isCellularDataRestrictedForMusic ^ 1 clientIdentity:identityCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v20 = [NSString stringWithFormat:@"No cloud_artwork_token for item saga id = %llu", d];
    v23 = NSLocalizedDescriptionKey;
    v24 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v21];

    handlerCopy[2](handlerCopy, v22);
  }
}

- (void)importAllItemArtworkWithClientIdentity:(id)identity
{
  identityCopy = identity;
  [(SagaArtworkImporter *)self _importOriginalItemArtworkWithClientIdentity:identityCopy];
  [(SagaArtworkImporter *)self _importOriginalContainerArtworkWithClientIdentity:identityCopy];
}

- (SagaArtworkImporter)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = SagaArtworkImporter;
  return [(CloudArtworkImporter *)&v4 initWithConfiguration:configuration sourceType:200];
}

@end