@interface PUIFeedManagerArtworkBridge
+ (PUIFeedManagerArtworkBridge)shared;
+ (void)setShared:(id)shared;
- (PUIFeedManagerArtworkBridge)init;
- (void)invalidateArtworkForPodcast:(id)podcast;
- (void)updateArtworkForShow:(id)show useBackgroundFetch:(BOOL)fetch fetchUberImage:(BOOL)image;
@end

@implementation PUIFeedManagerArtworkBridge

+ (PUIFeedManagerArtworkBridge)shared
{
  if (qword_2811FEB50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_2811FEB58;
}

+ (void)setShared:(id)shared
{
  v3 = qword_2811FEB50;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_2811FEB58;
  qword_2811FEB58 = sharedCopy;
}

- (void)invalidateArtworkForPodcast:(id)podcast
{
  podcastCopy = podcast;
  selfCopy = self;
  sub_21B4185F8(podcastCopy);
}

- (void)updateArtworkForShow:(id)show useBackgroundFetch:(BOOL)fetch fetchUberImage:(BOOL)image
{
  showCopy = show;
  selfCopy = self;
  sub_21B41A674(showCopy);
}

- (PUIFeedManagerArtworkBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end