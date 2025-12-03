@interface EpisodeRemovalManagingMock
- (void)removeEpisodesWith:(id)with;
@end

@implementation EpisodeRemovalManagingMock

- (void)removeEpisodesWith:(id)with
{
  v4 = sub_1D91785FC();
  v5 = *self->removeEpisodesHandler;
  if (v5)
  {
    v6 = *&self->removeEpisodesHandler[8];

    v5(v4);
  }
}

@end