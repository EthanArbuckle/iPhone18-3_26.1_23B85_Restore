@interface MTSecureDownloadRenewalManager
+ (id)inContextKeyDataFor:(int64_t)for ctx:(id)ctx;
- (MTSecureDownloadRenewalManager)initWithDelegate:(id)delegate;
- (void)requestSecureDeletionOf:(int64_t)of completionHandler:(id)handler;
- (void)requestSecureDeletionOfOrphanedKeysWithCompletionHandler:(id)handler;
- (void)requestSecureDeletionOfStoreTrackIds:(id)ids completionHandler:(id)handler;
- (void)updateDRMKeysForDownloads;
- (void)updateDRMKeysForDownloadsWithUrlProtocolDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation MTSecureDownloadRenewalManager

- (MTSecureDownloadRenewalManager)initWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  v4 = sub_1D8CFDE70(delegate);
  swift_unknownObjectRelease();
  return v4;
}

- (void)requestSecureDeletionOfOrphanedKeysWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
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

  selfCopy = self;
  sub_1D8F15808(v7, v6);
  sub_1D8D15664(v7);
}

- (void)requestSecureDeletionOf:(int64_t)of completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
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

  selfCopy = self;
  sub_1D8F15FFC(of, v6, v7);
  sub_1D8D15664(v6);
}

- (void)requestSecureDeletionOfStoreTrackIds:(id)ids completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
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

  selfCopy = self;
  sub_1D8F16720(v6, v5, v7);
  sub_1D8D15664(v5);
}

- (void)updateDRMKeysForDownloads
{
  selfCopy = self;
  sub_1D8F1EC28(0, 0);
}

- (void)updateDRMKeysForDownloadsWithUrlProtocolDelegate:(id)delegate completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
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
  selfCopy = self;
  sub_1D8F1EC28(v5, v6);
  sub_1D8D15664(v5);
  swift_unknownObjectRelease();
}

+ (id)inContextKeyDataFor:(int64_t)for ctx:(id)ctx
{
  ctxCopy = ctx;
  v6 = _s18PodcastsFoundation28SecureDownloadRenewalManagerC16inContextKeyData3for3ctxSo09MTOfflineiJ0CSgs5Int64V_So015NSManagedObjectH0CtFZ_0(for, ctxCopy);

  return v6;
}

@end