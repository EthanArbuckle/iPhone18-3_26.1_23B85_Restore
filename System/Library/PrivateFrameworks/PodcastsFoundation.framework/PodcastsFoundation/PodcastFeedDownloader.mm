@interface PodcastFeedDownloader
- (void)downloadPodcast:(id)a3 triggerBy:(id)a4 allowEpisodesTo404:(BOOL)a5 isImplicitActionRequest:(BOOL)a6 completion:(id)a7;
@end

@implementation PodcastFeedDownloader

- (void)downloadPodcast:(id)a3 triggerBy:(id)a4 allowEpisodesTo404:(BOOL)a5 isImplicitActionRequest:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v8 = a5;
  v12 = _Block_copy(a7);
  if (a4)
  {
    v13 = sub_1D917820C();
    a4 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = a3;
  v17 = self;
  sub_1D90556F0(v16, v13, a4, v8, v7, sub_1D9057658, v15);
}

@end