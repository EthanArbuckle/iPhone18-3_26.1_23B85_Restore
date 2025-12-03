@interface MTUpNextResult
- (void)setModifiedDate:(double)date;
- (void)updateFor:(id)for;
@end

@implementation MTUpNextResult

- (void)updateFor:(id)for
{
  forCopy = for;
  uuid = [forCopy uuid];
  [(MTUpNextResult *)self setEpisodeUuid:uuid];

  listenNowEpisode = [forCopy listenNowEpisode];

  [(MTUpNextResult *)self setNeedsUpdate:listenNowEpisode ^ 1u];
}

- (void)setModifiedDate:(double)date
{
  v6 = +[_TtC18PodcastsFoundation17FutureDateChecker lenientSharedInstance];
  [v6 timestampBoundByNow:date];
  self->_modifiedDate = v5;
}

@end