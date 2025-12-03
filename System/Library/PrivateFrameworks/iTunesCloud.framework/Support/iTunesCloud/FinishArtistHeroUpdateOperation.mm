@interface FinishArtistHeroUpdateOperation
- (void)main;
@end

@implementation FinishArtistHeroUpdateOperation

- (void)main
{
  if (![(QueueAwareOperation *)self shouldProcessSpecificArtists])
  {
    musicLibrary = [(QueueAwareOperation *)self musicLibrary];
    v4 = +[NSDate date];
    v5 = musicLibrary;
    [v4 timeIntervalSinceReferenceDate];
    v6 = [NSNumber numberWithDouble:?];
    [v5 setValue:v6 forDatabaseProperty:@"MLArtistHeroImageImportDate"];
  }

  musicLibrary2 = [(QueueAwareOperation *)self musicLibrary];
  sub_1000710A8(musicLibrary2, [(FinishArtistHeroUpdateOperation *)self currentDatabaseRevision]);

  v8 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating artist hero images complete.", v9, 2u);
  }
}

@end