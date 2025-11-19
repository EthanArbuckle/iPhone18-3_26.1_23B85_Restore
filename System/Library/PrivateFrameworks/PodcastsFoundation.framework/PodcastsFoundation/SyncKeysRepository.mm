@interface SyncKeysRepository
+ (BOOL)shouldSyncInReadOnlyMode;
+ (_TtC18PodcastsFoundation18SyncKeysRepository)shared;
- (BOOL)isBookmarksSyncDirtyFor:(int64_t)a3;
- (BOOL)isInterestSyncDirty;
- (BOOL)isLibrarySyncEnabled;
- (BOOL)isNonFollowedShowsSyncDirty;
- (BOOL)isPlaylistSyncDirty;
- (BOOL)isSubscriptionSyncDirtyFor:(int64_t)a3;
- (NSString)interestSyncVersion;
- (NSString)nonFollowedShowsSyncVersion;
- (NSString)podcastsDomainVersion;
- (_TtC18PodcastsFoundation18SyncKeysRepository)init;
- (double)subscriptionsLastSyncTimestampFor:(int64_t)a3;
- (id)subscriptionsSyncVersionFor:(int64_t)a3;
- (void)markSubscriptionSyncDirty:(BOOL)a3 for:(int64_t)a4;
- (void)resetSubscriptionsLastSyncTimestampFor:(int64_t)a3;
- (void)resetSubscriptionsSyncVersionFor:(int64_t)a3;
- (void)setInterestSyncVersion:(id)a3;
- (void)setNonFollowedShowsSyncVersion:(id)a3;
- (void)setPodcastsDomainVersion:(id)a3;
- (void)updateSubscriptionsLastSyncTimestampFor:(int64_t)a3;
- (void)updateSubscriptionsSyncVersionFor:(int64_t)a3 newValue:(id)a4;
@end

@implementation SyncKeysRepository

+ (_TtC18PodcastsFoundation18SyncKeysRepository)shared
{
  if (qword_1ECAB1F70 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECAB1F78;

  return v3;
}

- (id)subscriptionsSyncVersionFor:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(self + v5, v12);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v7 + 96))(a3, v6, v7);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if (v9)
  {
    v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_TtC18PodcastsFoundation18SyncKeysRepository)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isNonFollowedShowsSyncDirty
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 8);
  v7 = self;
  LOBYTE(v3) = v6(v4, v5);
  swift_endAccess();

  return v3 & 1;
}

- (BOOL)isInterestSyncDirty
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 32);
  v7 = self;
  LOBYTE(v3) = v6(v4, v5);
  swift_endAccess();

  return v3 & 1;
}

- (BOOL)isPlaylistSyncDirty
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 56);
  v7 = self;
  LOBYTE(v3) = v6(v4, v5);
  swift_endAccess();

  return v3 & 1;
}

- (BOOL)isSubscriptionSyncDirtyFor:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = SyncKeysRepository.isSubscriptionSyncDirty(for:)(a3);

  return a3 & 1;
}

- (void)markSubscriptionSyncDirty:(BOOL)a3 for:(int64_t)a4
{
  v6 = self;
  SyncKeysRepository.markSubscriptionSyncDirty(_:for:)(a3, a4);
}

- (void)updateSubscriptionsSyncVersionFor:(int64_t)a3 newValue:(id)a4
{
  if (a4)
  {
    v6 = sub_1D917820C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(self + v9, v14);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v12 = *(v11 + 104);
  v13 = self;
  v12(a3, v6, v8, v10, v11);

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

- (void)resetSubscriptionsSyncVersionFor:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(self + v5, v8);
  v6 = v9;
  v7 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v7 + 112))(a3, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

- (BOOL)isBookmarksSyncDirtyFor:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(self + v5, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  LOBYTE(a3) = (*(v7 + 120))(a3, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return a3 & 1;
}

- (NSString)nonFollowedShowsSyncVersion
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 184);
  v7 = self;
  v6(v4, v5);
  v9 = v8;
  swift_endAccess();

  if (v9)
  {
    v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setNonFollowedShowsSyncVersion:(id)a3
{
  if (a3)
  {
    v4 = sub_1D917820C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v8 = *(v7 + 3);
  v9 = *(v7 + 4);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  v10 = *(v9 + 192);
  v11 = self;
  v10(v4, v6, v8, v9);
  swift_endAccess();
}

- (NSString)interestSyncVersion
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 232);
  v7 = self;
  v6(v4, v5);
  v9 = v8;
  swift_endAccess();

  if (v9)
  {
    v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setInterestSyncVersion:(id)a3
{
  if (a3)
  {
    v4 = sub_1D917820C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v8 = *(v7 + 3);
  v9 = *(v7 + 4);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  v10 = *(v9 + 240);
  v11 = self;
  v10(v4, v6, v8, v9);
  swift_endAccess();
}

- (NSString)podcastsDomainVersion
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 208);
  v7 = self;
  v6(v4, v5);
  v9 = v8;
  swift_endAccess();

  if (v9)
  {
    v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setPodcastsDomainVersion:(id)a3
{
  if (a3)
  {
    v4 = sub_1D917820C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v8 = *(v7 + 3);
  v9 = *(v7 + 4);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  v10 = *(v9 + 216);
  v11 = self;
  v10(v4, v6, v8, v9);
  swift_endAccess();
}

- (BOOL)isLibrarySyncEnabled
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 136);
  v7 = self;
  LOBYTE(v3) = v6(v4, v5);
  swift_endAccess();

  return v3 & 1;
}

- (double)subscriptionsLastSyncTimestampFor:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(self + v5, v12);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v8 = COERCE_DOUBLE((*(v7 + 336))(a3, v6, v7));
  if (v9)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v8;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v10;
}

- (void)updateSubscriptionsLastSyncTimestampFor:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(self + v5, v8);
  v6 = v9;
  v7 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v7 + 344))(a3, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

- (void)resetSubscriptionsLastSyncTimestampFor:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(self + v5, v8);
  v6 = v9;
  v7 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v7 + 352))(a3, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

+ (BOOL)shouldSyncInReadOnlyMode
{
  if ((isRunningUnitTests() & 1) != 0 || ([objc_opt_self() isRunningOnHomepod] & 1) == 0)
  {
    v2 = 0;
  }

  else
  {
    v4[3] = &type metadata for Podcasts;
    v4[4] = sub_1D8CF0F2C();
    LOBYTE(v4[0]) = 13;
    v2 = sub_1D917710C();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  return v2 & 1;
}

@end