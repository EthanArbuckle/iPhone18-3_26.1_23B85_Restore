@interface PFAnalyticsEvent
+ (PFAnalyticsEvent)globalRetentionPolicy;
+ (id)darkDownloadsChangeWithWasDark:(BOOL)dark isDark:(BOOL)isDark reason:(unint64_t)reason previousExit:(id)exit;
+ (id)downloadedFileHasiPodLibraryURLWithDiscoveryPoint:(id)point path:(id)path source:(id)source;
+ (id)drmKeyRecoveredWithGenerator:(id)generator;
+ (id)drmKeyRecoveredWithPayload:(id)payload;
+ (id)episodeDurationComparisonWithEpisodeAdamId:(int64_t)id duration:(double)duration;
+ (id)episodeDurationComparisonWithMapiProvidedDuration:(double)duration playerItemDuration:(double)itemDuration;
+ (id)transcriptAlignmentFailedWithReason:(id)reason;
- (NSString)description;
- (PFAnalyticsEvent)init;
- (PFAnalyticsEvent)initWithName:(id)name generator:(id)generator;
- (PFAnalyticsEvent)initWithName:(id)name payload:(id)payload;
- (id)payloadGenerator;
- (void)setPayloadGenerator:(id)generator;
@end

@implementation PFAnalyticsEvent

+ (PFAnalyticsEvent)globalRetentionPolicy
{
  v2 = type metadata accessor for AnalyticsEvent();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___PFAnalyticsEvent_name] = @"com.apple.podcasts.downloads.settings.global.retention-policy";
  v4 = &v3[OBJC_IVAR___PFAnalyticsEvent_payloadGenerator];
  *v4 = sub_1D8D6F298;
  v4[1] = 0;
  v8.receiver = v3;
  v8.super_class = v2;
  v5 = @"com.apple.podcasts.downloads.settings.global.retention-policy";
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

- (id)payloadGenerator
{
  v2 = (self + OBJC_IVAR___PFAnalyticsEvent_payloadGenerator);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  aBlock[4] = v3;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D6F198;
  aBlock[3] = &block_descriptor_26_7;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (void)setPayloadGenerator:(id)generator
{
  v4 = _Block_copy(generator);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___PFAnalyticsEvent_payloadGenerator);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = sub_1D914DAA4;
  v6[1] = v5;
}

- (PFAnalyticsEvent)initWithName:(id)name generator:(id)generator
{
  v6 = _Block_copy(generator);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(self + OBJC_IVAR___PFAnalyticsEvent_name) = name;
  v8 = (self + OBJC_IVAR___PFAnalyticsEvent_payloadGenerator);
  *v8 = sub_1D914DA28;
  v8[1] = v7;
  v11.receiver = self;
  v11.super_class = type metadata accessor for AnalyticsEvent();
  nameCopy = name;
  return [(PFAnalyticsEvent *)&v11 init];
}

- (PFAnalyticsEvent)initWithName:(id)name payload:(id)payload
{
  sub_1D8D6F530();
  v6 = sub_1D917805C();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v12[4] = sub_1D914DA9C;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D8D6F198;
  v12[3] = &block_descriptor_16_3;
  v8 = _Block_copy(v12);
  nameCopy = name;

  v10 = [(PFAnalyticsEvent *)self initWithName:nameCopy generator:v8];

  _Block_release(v8);
  return v10;
}

- (NSString)description
{
  selfCopy = self;
  sub_1D914D770();

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v3;
}

- (PFAnalyticsEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)drmKeyRecoveredWithGenerator:(id)generator
{
  v3 = _Block_copy(generator);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = type metadata accessor for AnalyticsEvent();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___PFAnalyticsEvent_name] = @"com.apple.podcasts.DRMKeysRecovered";
  v7 = &v6[OBJC_IVAR___PFAnalyticsEvent_payloadGenerator];
  *v7 = sub_1D914DA28;
  v7[1] = v4;
  v11.receiver = v6;
  v11.super_class = v5;
  v8 = @"com.apple.podcasts.DRMKeysRecovered";
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

+ (id)drmKeyRecoveredWithPayload:(id)payload
{
  sub_1D8D6F530();
  v3 = sub_1D917805C();
  v4 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v9[4] = sub_1D914F044;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D8D6F198;
  v9[3] = &block_descriptor_28;
  v6 = _Block_copy(v9);

  v7 = [v4 initWithName:@"com.apple.podcasts.DRMKeysRecovered" generator:v6];
  _Block_release(v6);

  return v7;
}

+ (id)downloadedFileHasiPodLibraryURLWithDiscoveryPoint:(id)point path:(id)path source:(id)source
{
  sub_1D917820C();
  sub_1D917820C();
  if (source)
  {
    sub_1D917820C();
  }

  v6 = _s18PodcastsFoundation14AnalyticsEventC31downloadedFileHasiPodLibraryURL14discoveryPoint4path6sourceACSS_S2SSgtFZ_0();

  return v6;
}

+ (id)episodeDurationComparisonWithEpisodeAdamId:(int64_t)id duration:(double)duration
{
  v4 = _s18PodcastsFoundation14AnalyticsEventC25episodeDurationComparison0E6AdamId8durationACs5Int64V_SdtFZ_0(id, duration);

  return v4;
}

+ (id)episodeDurationComparisonWithMapiProvidedDuration:(double)duration playerItemDuration:(double)itemDuration
{
  v4 = _s18PodcastsFoundation14AnalyticsEventC25episodeDurationComparison012mapiProvidedF0010playerItemF0ACSd_SdtFZ_0(duration, itemDuration);

  return v4;
}

+ (id)darkDownloadsChangeWithWasDark:(BOOL)dark isDark:(BOOL)isDark reason:(unint64_t)reason previousExit:(id)exit
{
  v9 = sub_1D9176E3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176DFC();
  v14 = _s18PodcastsFoundation14AnalyticsEventC19darkDownloadsChange7wasDark02isI06reason12previousExitACSb_SbSo06PFDarkG6ReasonV0B04DateVtFZ_0(dark, isDark, reason);
  (*(v10 + 8))(v13, v9);

  return v14;
}

+ (id)transcriptAlignmentFailedWithReason:(id)reason
{
  sub_1D917820C();
  v3 = _s18PodcastsFoundation14AnalyticsEventC25transcriptAlignmentFailed6reasonACSS_tFZ_0();

  return v3;
}

@end