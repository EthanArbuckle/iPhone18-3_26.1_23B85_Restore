@interface PodcastFeedDownloader
- (void)downloadPodcast:(id)podcast triggerBy:(id)by allowEpisodesTo404:(BOOL)to404 isImplicitActionRequest:(BOOL)request completion:(id)completion;
@end

@implementation PodcastFeedDownloader

- (void)downloadPodcast:(id)podcast triggerBy:(id)by allowEpisodesTo404:(BOOL)to404 isImplicitActionRequest:(BOOL)request completion:(id)completion
{
  requestCopy = request;
  to404Copy = to404;
  v12 = _Block_copy(completion);
  if (by)
  {
    v13 = sub_1D917820C();
    by = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  podcastCopy = podcast;
  selfCopy = self;
  sub_1D90556F0(podcastCopy, v13, by, to404Copy, requestCopy, sub_1D9057658, v15);
}

@end