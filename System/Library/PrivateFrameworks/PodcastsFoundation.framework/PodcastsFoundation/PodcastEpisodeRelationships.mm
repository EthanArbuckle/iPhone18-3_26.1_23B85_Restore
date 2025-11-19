@interface PodcastEpisodeRelationships
- (_TtC18PodcastsFoundation27PodcastEpisodeRelationships)init;
@end

@implementation PodcastEpisodeRelationships

- (_TtC18PodcastsFoundation27PodcastEpisodeRelationships)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_transcripts) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_chapters) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(PodcastEpisodeRelationships *)&v5 init];
}

@end