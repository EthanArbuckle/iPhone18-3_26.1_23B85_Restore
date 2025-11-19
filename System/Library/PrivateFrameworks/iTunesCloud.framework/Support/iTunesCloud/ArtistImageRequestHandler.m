@interface ArtistImageRequestHandler
+ (BOOL)supportsAccountlessHandling;
+ (id)accountlessHandler;
+ (id)handlers;
- (ArtistImageRequestHandler)initWithConfiguration:(id)a3;
- (void)updateArtistHeroImagesForArtistsAddedSinceLastUpdateUsingClientIdentity:(id)a3;
@end

@implementation ArtistImageRequestHandler

+ (id)handlers
{
  if (qword_100213EC8 != -1)
  {
    dispatch_once(&qword_100213EC8, &stru_1001DFA00);
  }

  v3 = qword_100213EC0;

  return v3;
}

- (void)updateArtistHeroImagesForArtistsAddedSinceLastUpdateUsingClientIdentity:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudAvailabilityController sharedController];
  v6 = [v5 shouldProhibitMusicActionForCurrentNetworkConditions];

  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping artist hero image update due to insufficient network conditions", v8, 2u);
    }
  }

  else
  {
    [(CloudArtistHeroImageImporter *)self->_importer updateArtistHeroImagesForArtistsAddedSinceLastUpdateUsingClientIdentity:v4];
  }
}

- (ArtistImageRequestHandler)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = +[ICDeviceInfo currentDeviceInfo];
  v6 = [v5 isAudioAccessory];

  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Device does not support ArtistImageRequestHandler", buf, 2u);
    }

    v8 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ArtistImageRequestHandler;
    v9 = [(BaseRequestHandler *)&v13 initWithConfiguration:v4];
    if (v9)
    {
      v10 = [[CloudArtistHeroImageImporter alloc] initWithConfiguration:v4];
      importer = v9->_importer;
      v9->_importer = v10;
    }

    self = v9;
    v8 = self;
  }

  return v8;
}

+ (id)accountlessHandler
{
  if (qword_100213ED8 != -1)
  {
    dispatch_once(&qword_100213ED8, &stru_1001DFA20);
  }

  v3 = qword_100213ED0;

  return v3;
}

+ (BOOL)supportsAccountlessHandling
{
  v2 = +[ICDeviceInfo currentDeviceInfo];
  v3 = [v2 isAudioAccessory];

  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Device does not support ArtistImageRequestHandler", v6, 2u);
    }
  }

  return v3 ^ 1;
}

@end