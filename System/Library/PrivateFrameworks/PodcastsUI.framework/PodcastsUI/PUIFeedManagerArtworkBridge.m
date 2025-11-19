@interface PUIFeedManagerArtworkBridge
+ (PUIFeedManagerArtworkBridge)shared;
+ (void)setShared:(id)a3;
- (PUIFeedManagerArtworkBridge)init;
- (void)invalidateArtworkForPodcast:(id)a3;
- (void)updateArtworkForShow:(id)a3 useBackgroundFetch:(BOOL)a4 fetchUberImage:(BOOL)a5;
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

+ (void)setShared:(id)a3
{
  v3 = qword_2811FEB50;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_2811FEB58;
  qword_2811FEB58 = v4;
}

- (void)invalidateArtworkForPodcast:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B4185F8(v4);
}

- (void)updateArtworkForShow:(id)a3 useBackgroundFetch:(BOOL)a4 fetchUberImage:(BOOL)a5
{
  v6 = a3;
  v7 = self;
  sub_21B41A674(v6);
}

- (PUIFeedManagerArtworkBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end