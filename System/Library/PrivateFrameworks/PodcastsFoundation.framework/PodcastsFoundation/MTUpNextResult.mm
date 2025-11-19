@interface MTUpNextResult
- (void)setModifiedDate:(double)a3;
- (void)updateFor:(id)a3;
@end

@implementation MTUpNextResult

- (void)updateFor:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  [(MTUpNextResult *)self setEpisodeUuid:v5];

  v6 = [v4 listenNowEpisode];

  [(MTUpNextResult *)self setNeedsUpdate:v6 ^ 1u];
}

- (void)setModifiedDate:(double)a3
{
  v6 = +[_TtC18PodcastsFoundation17FutureDateChecker lenientSharedInstance];
  [v6 timestampBoundByNow:a3];
  self->_modifiedDate = v5;
}

@end