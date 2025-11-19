@interface MTSecureDownloadRenewalManager
+ (id)inContextKeyDataFor:(int64_t)a3 ctx:(id)a4;
- (MTSecureDownloadRenewalManager)initWithDelegate:(id)a3;
- (void)requestSecureDeletionOf:(int64_t)a3 completionHandler:(id)a4;
- (void)requestSecureDeletionOfOrphanedKeysWithCompletionHandler:(id)a3;
- (void)requestSecureDeletionOfStoreTrackIds:(id)a3 completionHandler:(id)a4;
- (void)updateDRMKeysForDownloads;
- (void)updateDRMKeysForDownloadsWithUrlProtocolDelegate:(id)a3 completionHandler:(id)a4;
@end

@implementation MTSecureDownloadRenewalManager

- (MTSecureDownloadRenewalManager)initWithDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_1D8CFDE70(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (void)requestSecureDeletionOfOrphanedKeysWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1D8F210E4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1D8F15808(v7, v6);
  sub_1D8D15664(v7);
}

- (void)requestSecureDeletionOf:(int64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1D8F210E4;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_1D8F15FFC(a3, v6, v7);
  sub_1D8D15664(v6);
}

- (void)requestSecureDeletionOfStoreTrackIds:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1D91785FC();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1D8F20C08;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_1D8F16720(v6, v5, v7);
  sub_1D8D15664(v5);
}

- (void)updateDRMKeysForDownloads
{
  v2 = self;
  sub_1D8F1EC28(0, 0);
}

- (void)updateDRMKeysForDownloadsWithUrlProtocolDelegate:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1D8D99DB0;
  }

  else
  {
    v6 = 0;
  }

  swift_unknownObjectRetain();
  v7 = self;
  sub_1D8F1EC28(v5, v6);
  sub_1D8D15664(v5);
  swift_unknownObjectRelease();
}

+ (id)inContextKeyDataFor:(int64_t)a3 ctx:(id)a4
{
  v5 = a4;
  v6 = _s18PodcastsFoundation28SecureDownloadRenewalManagerC16inContextKeyData3for3ctxSo09MTOfflineiJ0CSgs5Int64V_So015NSManagedObjectH0CtFZ_0(a3, v5);

  return v6;
}

@end