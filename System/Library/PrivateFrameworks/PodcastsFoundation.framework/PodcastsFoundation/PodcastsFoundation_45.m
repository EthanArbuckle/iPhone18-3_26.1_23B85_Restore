uint64_t sub_1D9121C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EyebrowBuilder.ListContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9121CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EyebrowBuilder.ListContext(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D91204E8(a1, v6, a2);
}

unint64_t sub_1D9121D58()
{
  result = qword_1ECABACE8;
  if (!qword_1ECABACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABACE8);
  }

  return result;
}

void sub_1D9121F88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 != 1)
    {
      return;
    }

    v9 = 168;
    v10 = 160;
  }

  else
  {
    v9 = 152;
    v10 = 144;
  }

  sub_1D9176E2C();
  sub_1D9176CCC();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  *(v2 + v10) = v12;
  *(v2 + v9) = 0;
}

uint64_t sub_1D9122090()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[11];

  v4 = v0[15];

  v5 = v0[17];

  return swift_deallocClassInstance();
}

uint64_t sub_1D9122154(uint64_t a1)
{
  v2 = *v1;
  if (a1 == 1)
  {
    return *(v2 + 17);
  }

  if (a1)
  {
    return 0;
  }

  return *(v2 + 16);
}

uint64_t sub_1D912217C(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (a2 == 1)
  {
    *(v3 + 17) = result & 1;
  }

  else if (!a2)
  {
    *(v3 + 16) = result & 1;
  }

  return result;
}

uint64_t sub_1D91221A4(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v3 = 48;
    v4 = 40;
  }

  else
  {
    v3 = 32;
    v4 = 24;
  }

  v5 = *(v2 + v4);
  v6 = *(v2 + v3);

  return v5;
}

uint64_t sub_1D9122208(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v5 = 48;
    v6 = 40;
  }

  else
  {
    v5 = 32;
    v6 = 24;
  }

  v7 = *(v4 + v5);
  *(v4 + v6) = a2;
  *(v4 + v5) = a3;
}

uint64_t sub_1D912227C(uint64_t result)
{
  v2 = *v1;
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v3 = 48;
    v4 = 40;
  }

  else
  {
    v3 = 32;
    v4 = 24;
  }

  v5 = *(v2 + v3);
  v6 = (v2 + v4);
  *v6 = 0;
  v6[1] = 0;
}

uint64_t sub_1D91222B4(uint64_t a1)
{
  v2 = *v1;
  if (a1 == 1)
  {
    return *(v2 + 60);
  }

  if (a1)
  {
    return 0;
  }

  return *(v2 + 59);
}

uint64_t sub_1D91222DC(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (a2 == 1)
  {
    *(v3 + 60) = result & 1;
  }

  else if (!a2)
  {
    *(v3 + 59) = result & 1;
  }

  return result;
}

uint64_t sub_1D912231C()
{
  result = *(*v0 + 64);
  v2 = *(*v0 + 72);
  return result;
}

uint64_t sub_1D912232C(uint64_t result, char a2)
{
  v3 = *v2;
  *(v3 + 64) = result;
  *(v3 + 72) = a2 & 1;
  return result;
}

uint64_t sub_1D9122340(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
}

uint64_t sub_1D9122354()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 136);

  return v1;
}

uint64_t sub_1D9122388(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
}

uint64_t sub_1D912239C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);

  return v1;
}

uint64_t sub_1D91223D0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
}

uint64_t sub_1D91223E4()
{
  result = *(*v0 + 96);
  v2 = *(*v0 + 104);
  return result;
}

uint64_t sub_1D91223F4(uint64_t result, char a2)
{
  v3 = *v2;
  *(v3 + 96) = result;
  *(v3 + 104) = a2 & 1;
  return result;
}

uint64_t sub_1D9122408(uint64_t a1)
{
  v2 = *v1;
  if (!a1)
  {
    v3 = 152;
    v4 = 144;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v3 = 168;
    v4 = 160;
LABEL_5:
    result = *(v2 + v4);
    v6 = *(v2 + v3);
    return result;
  }

  return 0;
}

uint64_t sub_1D9122468(uint64_t result)
{
  v2 = *v1;
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v3 = 168;
    v4 = 160;
  }

  else
  {
    v3 = 152;
    v4 = 144;
  }

  *(v2 + v4) = 0;
  *(v2 + v3) = 1;
  return result;
}

uint64_t SyncKeysRepository.isSubscriptionSyncDirty(for:)(uint64_t a1)
{
  if (isRunningUnitTests() & 1) == 0 && [objc_opt_self() isRunningOnHomepod] && (v10 = &type metadata for Podcasts, v11 = sub_1D8CF0F2C(), LOBYTE(v9[0]) = 13, v3 = sub_1D917710C(), __swift_destroy_boxed_opaque_existential_1Tm(v9), (v3))
  {
    v4 = 0;
  }

  else
  {
    v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
    swift_beginAccess();
    sub_1D8CFD9D8(v1 + v5, v9);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v7 + 80))(a1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return v4 & 1;
}

uint64_t SyncKeysRepository.markSubscriptionSyncDirty(_:for:)(char a1, uint64_t a2)
{
  if ((isRunningUnitTests() & 1) != 0 || ![objc_opt_self() isRunningOnHomepod] || (v11 = &type metadata for Podcasts, v12 = sub_1D8CF0F2C(), LOBYTE(v10[0]) = 13, v5 = sub_1D917710C(), result = __swift_destroy_boxed_opaque_existential_1Tm(v10), (v5 & 1) == 0))
  {
    v7 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
    swift_beginAccess();
    sub_1D8CFD9D8(v2 + v7, v10);
    v8 = v11;
    v9 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v9 + 88))(a1 & 1, a2, v8, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return result;
}

id SyncKeysRepository.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SyncKeysRepository.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SyncKeysRepository.isNonFollowedShowsSyncDirty.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  LOBYTE(v1) = (*(v3 + 8))(v2, v3);
  swift_endAccess();
  return v1 & 1;
}

uint64_t SyncKeysRepository.isNonFollowedShowsSyncDirty.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 16))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1D9122A70@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v3) = (*(v5 + 8))(v4, v5);
  result = swift_endAccess();
  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1D9122B08(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 16))(v2, v4, v5);
  return swift_endAccess();
}

void (*SyncKeysRepository.isNonFollowedShowsSyncDirty.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  LOBYTE(v6) = (*(v8 + 8))(v7, v8);
  swift_endAccess();
  *(v4 + 40) = v6 & 1;
  return sub_1D9122C74;
}

void sub_1D9122C74(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 24) + *(*a1 + 32);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 16))(v2, v4, v5);
  swift_endAccess();

  free(v1);
}

uint64_t SyncKeysRepository.isInterestSyncDirty.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  LOBYTE(v1) = (*(v3 + 32))(v2, v3);
  swift_endAccess();
  return v1 & 1;
}

uint64_t SyncKeysRepository.isInterestSyncDirty.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 40))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1D9122F84@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v3) = (*(v5 + 32))(v4, v5);
  result = swift_endAccess();
  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1D912301C(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 40))(v2, v4, v5);
  return swift_endAccess();
}

void (*SyncKeysRepository.isInterestSyncDirty.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  LOBYTE(v6) = (*(v8 + 32))(v7, v8);
  swift_endAccess();
  *(v4 + 40) = v6 & 1;
  return sub_1D9123188;
}

void sub_1D9123188(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 24) + *(*a1 + 32);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 40))(v2, v4, v5);
  swift_endAccess();

  free(v1);
}

uint64_t SyncKeysRepository.isPlaylistSyncDirty.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  LOBYTE(v1) = (*(v3 + 56))(v2, v3);
  swift_endAccess();
  return v1 & 1;
}

uint64_t SyncKeysRepository.isPlaylistSyncDirty.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 64))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1D9123498@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v3) = (*(v5 + 56))(v4, v5);
  result = swift_endAccess();
  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1D9123530(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 64))(v2, v4, v5);
  return swift_endAccess();
}

void (*SyncKeysRepository.isPlaylistSyncDirty.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  LOBYTE(v6) = (*(v8 + 56))(v7, v8);
  swift_endAccess();
  *(v4 + 40) = v6 & 1;
  return sub_1D912369C;
}

void sub_1D912369C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 24) + *(*a1 + 32);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 64))(v2, v4, v5);
  swift_endAccess();

  free(v1);
}

uint64_t static SyncKeysRepository.shouldSyncInReadOnlyMode.getter()
{
  if ((isRunningUnitTests() & 1) != 0 || ![objc_opt_self() isRunningOnHomepod])
  {
    v0 = 0;
  }

  else
  {
    v2[3] = &type metadata for Podcasts;
    v2[4] = sub_1D8CF0F2C();
    LOBYTE(v2[0]) = 13;
    v0 = sub_1D917710C();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  return v0 & 1;
}

uint64_t SyncKeysRepository.subscriptionsSyncVersion(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 96))(a1, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t SyncKeysRepository.updateSubscriptionsSyncVersion(for:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v3 + v7, v11);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 104))(a1, a2, a3, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t SyncKeysRepository.resetSubscriptionsSyncVersion(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 112))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t SyncKeysRepository.isBookmarksSyncDirty(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  LOBYTE(a1) = (*(v5 + 120))(a1, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return a1 & 1;
}

uint64_t SyncKeysRepository.markBookmarksSyncDirty(_:for:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v2 + v5, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 128))(a1, a2, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t SyncKeysRepository.nonFollowedShowsSyncVersion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 184))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t SyncKeysRepository.nonFollowedShowsSyncVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 192))(a1, a2, v6, v7);
  return swift_endAccess();
}

uint64_t sub_1D91241C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 184))(v4, v5);
  v8 = v7;
  result = swift_endAccess();
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_1D9124260(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 192);

  v7(v2, v3, v5, v6);
  return swift_endAccess();
}

void (*SyncKeysRepository.nonFollowedShowsSyncVersion.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 184))(v7, v8);
  v11 = v10;
  swift_endAccess();
  *(v4 + 24) = v9;
  *(v4 + 32) = v11;
  return sub_1D91243EC;
}

void sub_1D91243EC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40) + *(*a1 + 48);
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 192);
  if (a2)
  {

    v9(v4, v5, v7, v8);
    swift_endAccess();
    v10 = v3[4];
  }

  else
  {
    v9(v4, v5, v7, v8);
    swift_endAccess();
  }

  free(v3);
}

uint64_t SyncKeysRepository.interestSyncVersion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 232))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t SyncKeysRepository.interestSyncVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 240))(a1, a2, v6, v7);
  return swift_endAccess();
}

uint64_t sub_1D91247D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 232))(v4, v5);
  v8 = v7;
  result = swift_endAccess();
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_1D912486C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 240);

  v7(v2, v3, v5, v6);
  return swift_endAccess();
}

void (*SyncKeysRepository.interestSyncVersion.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 232))(v7, v8);
  v11 = v10;
  swift_endAccess();
  *(v4 + 24) = v9;
  *(v4 + 32) = v11;
  return sub_1D91249F8;
}

void sub_1D91249F8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40) + *(*a1 + 48);
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 240);
  if (a2)
  {

    v9(v4, v5, v7, v8);
    swift_endAccess();
    v10 = v3[4];
  }

  else
  {
    v9(v4, v5, v7, v8);
    swift_endAccess();
  }

  free(v3);
}

uint64_t SyncKeysRepository.podcastsDomainVersion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 208))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t SyncKeysRepository.podcastsDomainVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 216))(a1, a2, v6, v7);
  return swift_endAccess();
}

uint64_t sub_1D9124DE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 208))(v4, v5);
  v8 = v7;
  result = swift_endAccess();
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_1D9124E78(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 216);

  v7(v2, v3, v5, v6);
  return swift_endAccess();
}

void (*SyncKeysRepository.podcastsDomainVersion.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 208))(v7, v8);
  v11 = v10;
  swift_endAccess();
  *(v4 + 24) = v9;
  *(v4 + 32) = v11;
  return sub_1D9125004;
}

void sub_1D9125004(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40) + *(*a1 + 48);
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 216);
  if (a2)
  {

    v9(v4, v5, v7, v8);
    swift_endAccess();
    v10 = v3[4];
  }

  else
  {
    v9(v4, v5, v7, v8);
    swift_endAccess();
  }

  free(v3);
}

uint64_t SyncKeysRepository.isLibrarySyncEnabled.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  LOBYTE(v1) = (*(v3 + 136))(v2, v3);
  swift_endAccess();
  return v1 & 1;
}

uint64_t SyncKeysRepository.isLibrarySyncEnabled.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 144))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1D9125374@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v3) = (*(v5 + 136))(v4, v5);
  result = swift_endAccess();
  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1D912540C(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 144))(v2, v4, v5);
  return swift_endAccess();
}

void (*SyncKeysRepository.isLibrarySyncEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  LOBYTE(v6) = (*(v8 + 136))(v7, v8);
  swift_endAccess();
  *(v4 + 40) = v6 & 1;
  return sub_1D9125578;
}

void sub_1D9125578(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 24) + *(*a1 + 32);
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 144))(v2, v4, v5);
  swift_endAccess();

  free(v1);
}

uint64_t SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 160))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t sub_1D91256B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 160))(v4, v5);
  LOBYTE(v4) = v7;
  result = swift_endAccess();
  *a2 = v6;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D9125750(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 168))(v2, v3, v5, v6);
  return swift_endAccess();
}

uint64_t SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 168))(a1, a2 & 1, v6, v7);
  return swift_endAccess();
}

void (*SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 160))(v7, v8);
  LOBYTE(v7) = v10;
  swift_endAccess();
  *(v4 + 24) = v9;
  *(v4 + 32) = v7 & 1;
  return sub_1D9125974;
}

void sub_1D9125974(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40) + *(*a1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 168))(v2, v3, v5, v6);
  swift_endAccess();

  free(v1);
}

uint64_t SyncKeysRepository.interestLastSyncTimestamp.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 256))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t sub_1D9125AB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 256))(v4, v5);
  LOBYTE(v4) = v7;
  result = swift_endAccess();
  *a2 = v6;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D9125B54(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 264))(v2, v3, v5, v6);
  return swift_endAccess();
}

uint64_t SyncKeysRepository.interestLastSyncTimestamp.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 264))(a1, a2 & 1, v6, v7);
  return swift_endAccess();
}

void (*SyncKeysRepository.interestLastSyncTimestamp.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 256))(v7, v8);
  LOBYTE(v7) = v10;
  swift_endAccess();
  *(v4 + 24) = v9;
  *(v4 + 32) = v7 & 1;
  return sub_1D9125D78;
}

void sub_1D9125D78(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40) + *(*a1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 264))(v2, v3, v5, v6);
  swift_endAccess();

  free(v1);
}

double SyncKeysRepository.subscriptionsLastSyncTimestamp(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v6 = COERCE_DOUBLE((*(v5 + 336))(a1, v4, v5));
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v8;
}

uint64_t SyncKeysRepository.updateSubscriptionsLastSyncTimestamp(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 344))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t SyncKeysRepository.resetSubscriptionsLastSyncTimestamp(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v1 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 352))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_1D912669C(char a1)
{
  v2 = *(v1 + 48);
  v3 = v2[6];
  v4 = v2[7];
  v11 = MEMORY[0x1E69E6370];
  v10[0] = a1;
  v5 = v2[5];
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v4 + 16);

  v8(v10, v5, v6, v7, v3, v4);

  return sub_1D8D64450(v10);
}

uint64_t sub_1D912673C(char a1)
{
  v2 = *(v1 + 56);
  v3 = v2[6];
  v4 = v2[7];
  v11 = MEMORY[0x1E69E6370];
  v10[0] = a1;
  v5 = v2[5];
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v4 + 16);

  v8(v10, v5, v6, v7, v3, v4);

  return sub_1D8D64450(v10);
}

uint64_t sub_1D91267DC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v3 = 24;
  }

  else
  {
    v3 = 16;
  }

  v4 = *(v2 + v3);
  v5 = v4[6];
  v6 = v4[7];
  v12 = MEMORY[0x1E69E6370];
  v11[0] = result & 1;
  v7 = v4[5];
  v8 = v4[2];
  v9 = v4[3];
  v10 = *(v6 + 16);

  v10(v11, v7, v8, v9, v5, v6);

  return sub_1D8D64450(v11);
}

uint64_t sub_1D9126898(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v6 = 40;
  }

  else
  {
    v6 = 32;
  }

  v7 = *(v3 + v6);
  v8 = v7[7];
  v9 = v7[8];
  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  v14[0] = a2;
  v14[1] = a3;
  v10 = v7[6];
  v11 = v7[2];
  v12 = v7[3];
  v13 = *(v9 + 16);

  v13(v14, v10, v11, v12, v8, v9);

  return sub_1D8D64450(v14);
}

uint64_t sub_1D9126974(uint64_t result)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v2 = 40;
  }

  else
  {
    v2 = 32;
  }

  v3 = *(v1 + v2);
  v4 = v3[7];
  v5 = v3[8];
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  v10[0] = 0;
  v10[1] = 0;
  v6 = v3[6];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v5 + 16);

  v9(v10, v6, v7, v8, v4, v5);

  return sub_1D8D64450(v10);
}

uint64_t sub_1D9126A38(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v3 = 72;
  }

  else
  {
    v3 = 64;
  }

  v4 = *(v2 + v3);
  v5 = v4[6];
  v6 = v4[7];
  v12 = MEMORY[0x1E69E6370];
  v11[0] = result & 1;
  v7 = v4[5];
  v8 = v4[2];
  v9 = v4[3];
  v10 = *(v6 + 16);

  v10(v11, v7, v8, v9, v5, v6);

  return sub_1D8D64450(v11);
}

uint64_t sub_1D9126AF4(uint64_t a1, char a2)
{
  v5 = *(v2 + 80);
  v6 = v5[7];
  v7 = v5[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
  v13 = a1;
  v14 = a2 & 1;
  v8 = v5[6];
  v9 = v5[2];
  v10 = v5[3];
  v11 = *(v7 + 16);

  v11(&v13, v8, v9, v10, v6, v7);

  return sub_1D8D64450(&v13);
}

uint64_t sub_1D9126BB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  v6 = v5[7];
  v7 = v5[8];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  v13[0] = a1;
  v13[1] = a2;
  v8 = v5[6];
  v9 = v5[2];
  v10 = v5[3];
  v11 = *(v7 + 16);

  v11(v13, v8, v9, v10, v6, v7);

  return sub_1D8D64450(v13);
}

uint64_t sub_1D9126C64(uint64_t a1, char a2)
{
  v5 = *(v2 + 96);
  v6 = v5[7];
  v7 = v5[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
  v13 = a1;
  v14 = a2 & 1;
  v8 = v5[6];
  v9 = v5[2];
  v10 = v5[3];
  v11 = *(v7 + 16);

  v11(&v13, v8, v9, v10, v6, v7);

  return sub_1D8D64450(&v13);
}

uint64_t sub_1D9126D24(char a1)
{
  v2 = *(v1 + 104);
  v3 = v2[6];
  v4 = v2[7];
  v11 = MEMORY[0x1E69E6370];
  v10[0] = a1;
  v5 = v2[5];
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v4 + 16);

  v8(v10, v5, v6, v7, v3, v4);

  return sub_1D8D64450(v10);
}

uint64_t sub_1D9126DC4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);
  v6 = v5[7];
  v7 = v5[8];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  v13[0] = a1;
  v13[1] = a2;
  v8 = v5[6];
  v9 = v5[2];
  v10 = v5[3];
  v11 = *(v7 + 16);

  v11(v13, v8, v9, v10, v6, v7);

  return sub_1D8D64450(v13);
}

void sub_1D9126E78(uint64_t a1)
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 != 1)
    {
      return;
    }

    v8 = 128;
  }

  else
  {
    v8 = 120;
  }

  v9 = *(v1 + v8);

  sub_1D9176E2C();
  sub_1D9176CCC();
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  v13 = v9[7];
  v12 = v9[8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
  v14 = v11;
  v15 = 0;
  (*(v12 + 16))(&v14, v9[6], v9[2], v9[3], v13, v12);

  sub_1D8D64450(&v14);
}

uint64_t sub_1D9126FDC(uint64_t result)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v2 = 128;
  }

  else
  {
    v2 = 120;
  }

  v3 = *(v1 + v2);
  v4 = v3[7];
  v5 = v3[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
  v10 = 0;
  v11 = 1;
  v6 = v3[6];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v5 + 16);

  v9(&v10, v6, v7, v8, v4, v5);

  return sub_1D8D64450(&v10);
}

void *sub_1D91270A8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  return v0;
}

uint64_t sub_1D9127138()
{
  sub_1D91270A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1D912716C()
{
  v1 = *(*v0 + 48);

  v2 = sub_1D90F6D4C();

  return v2 & 1;
}

uint64_t sub_1D91271D0()
{
  v1 = *(*v0 + 104);

  v2 = sub_1D90F6D4C();

  return v2 & 1;
}

uint64_t sub_1D9127234()
{
  v1 = *(*v0 + 56);

  v2 = sub_1D90F6D4C();

  return v2 & 1;
}

uint64_t sub_1D9127298(uint64_t a1)
{
  if (!a1)
  {
    v2 = 16;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v2 = 24;
LABEL_5:
    v3 = *(*v1 + v2);

    v4 = sub_1D90F6D4C();

    return v4 & 1;
  }

  return 0;
}

uint64_t sub_1D9127364(uint64_t a1)
{
  if (!a1)
  {
    v2 = 64;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v2 = 72;
LABEL_5:
    v3 = *(*v1 + v2);

    v4 = sub_1D90F6D4C();

    return v4 & 1;
  }

  return 0;
}

id sub_1D91273E8()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
  if (qword_1ECAB0118 != -1)
  {
    swift_once();
  }

  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_1D9127498(char a1)
{
  v2 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
  if (qword_1ECAB0118 != -1)
  {
    swift_once();
  }

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v2 setBool:a1 & 1 forKey:v3];
}

uint64_t sub_1D9127558()
{
  v1 = *(*v0 + 80);

  v2 = sub_1D90F6DE4();

  return v2;
}

uint64_t sub_1D91275D0()
{
  v1 = *(*v0 + 88);

  v2 = sub_1D8D0ED94();

  return v2;
}

uint64_t sub_1D912764C()
{
  v1 = *(*v0 + 112);

  v2 = sub_1D8D0ED94();

  return v2;
}

uint64_t sub_1D91276C0()
{
  v1 = *(*v0 + 96);

  v2 = sub_1D90F6DE4();

  return v2;
}

uint64_t sub_1D9127738(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v2 = 128;
  }

  else
  {
    v2 = 120;
  }

  v3 = *(*v1 + v2);

  v4 = sub_1D90F6DE4();

  return v4;
}

uint64_t sub_1D91277F8()
{
  v0 = [objc_opt_self() isPodcastsApp];
  v1 = objc_opt_self();
  if (v0)
  {
    v2 = [v1 standardUserDefaults];
  }

  else
  {
    v2 = [v1 _applePodcastsFoundationSharedUserDefaults];
  }

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1D917820C();

  return v5;
}

void sub_1D912791C(uint64_t a1, uint64_t a2)
{
  if ([objc_opt_self() isPodcastsApp])
  {
    v3 = [objc_opt_self() standardUserDefaults];
    if (a2)
    {
      v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v4 = 0;
    }

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v3 setObject:v4 forKey:v5];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1D9127A54()
{
  result = sub_1D917820C();
  qword_1ECAB0120 = result;
  *algn_1ECAB0128 = v1;
  return result;
}

uint64_t sub_1D9127CEC()
{
  sub_1D917946C();

  result = MEMORY[0x1DA7298F0](0xD000000000000011, 0x80000001D91D8060);
  qword_1ECAAFFD8 = 0xD000000000000033;
  unk_1ECAAFFE0 = 0x80000001D91D7E30;
  return result;
}

uint64_t sub_1D9127DC4()
{
  sub_1D917946C();

  result = MEMORY[0x1DA7298F0](0xD000000000000011, 0x80000001D91D8060);
  qword_1ECAAFFF0 = 0xD000000000000033;
  *algn_1ECAAFFF8 = 0x80000001D91D7E70;
  return result;
}

uint64_t sub_1D9127ECC()
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](0x706F505F73706954, 0xEC0000007265766FLL);
  result = MEMORY[0x1DA7298F0](0xD000000000000012, 0x80000001D91D8040);
  qword_1ECAB0008 = 0x5F6775626544;
  unk_1ECAB0010 = 0xE600000000000000;
  return result;
}

uint64_t sub_1D9127FDC(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (qword_1ECAB0030 != -1)
  {
    swift_once();
  }

  v8 = qword_1ECAB0038;
  v9 = qword_1ECAB0040;

  result = MEMORY[0x1DA7298F0](a2, 0xEA00000000006465);
  *a3 = v8;
  *a4 = v9;
  return result;
}

uint64_t sub_1D9128150(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x1DA7298F0](a2, 0xEA00000000006465);
  *a3 = 0xD000000000000014;
  *a4 = 0x80000001D91D8000;
  return result;
}

uint64_t sub_1D91281E8()
{
  result = MEMORY[0x1DA7298F0](0x7373696D7369645FLL, 0xEA00000000006465);
  qword_1ECAB00A0 = 0xD000000000000017;
  *algn_1ECAB00A8 = 0x80000001D91D7FE0;
  return result;
}

void *WrappedUserDefaults.__allocating_init<A>(defaultValue:key:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1D9128B2C(a1, a2, a3, a4, &qword_1ECAB4EA0, &qword_1D918DB70, &type metadata for Int64Transform, &off_1F5485EB0);
}

{
  return sub_1D9128B2C(a1, a2, a3, a4, &qword_1ECABAD30, &qword_1D91BA5E0, &type metadata for IntegerTransform, &off_1F5485E50);
}

uint64_t sub_1D91283F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[10];
  v6 = sub_1D91791BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - v13;
  v15 = &v2[v4[14]];
  v16 = *v15;
  (*(*(v15 + 1) + 8))(v21, *&v2[v4[13]], *(v2 + 2), *(v2 + 3), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  v17 = swift_dynamicCast();
  v18 = *(v5 - 8);
  (*(v18 + 56))(v14, v17 ^ 1u, 1, v5);
  (*(v7 + 16))(v10, v14, v6);
  v19 = *(v18 + 48);
  if (v19(v10, 1, v5) == 1)
  {
    (*(v18 + 16))(a1, &v2[*(*v2 + 96)], v5);
    if (v19(v10, 1, v5) != 1)
    {
      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    (*(v18 + 32))(a1, v10, v5);
  }

  return (*(v7 + 8))(v14, v6);
}

uint64_t sub_1D91286B4(uint64_t a1)
{
  v3 = *v1;
  sub_1D9129740(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_1D9128730(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1D91283F8(v9);
  return sub_1D9128844;
}

void sub_1D9128844(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_1D9129740(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1D9129740((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *WrappedUserDefaults.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);

  return v0;
}

uint64_t WrappedUserDefaults.__deallocating_deinit()
{
  WrappedUserDefaults.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t WrappedUserDefaults.__allocating_init<A>(defaultValue:key:store:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD00, &qword_1D91BA5D0);
  result = swift_allocObject();
  *(result + 32) = a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 40) = a4;
  *(result + 48) = &type metadata for BoolTransform;
  *(result + 56) = &off_1F5485E80;
  return result;
}

void *WrappedUserDefaults.__allocating_init<A>(defaultValue:key:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD28, &qword_1D91BA5D8);
  result = swift_allocObject();
  result[4] = a1;
  result[5] = a2;
  result[2] = a3;
  result[3] = a4;
  result[6] = a5;
  result[7] = &type metadata for StringTransform;
  result[8] = &off_1F5485E68;
  return result;
}

void *sub_1D9128B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a1;
  result[5] = a4;
  result[6] = a7;
  result[7] = a8;
  return result;
}

char *WrappedUserDefaults.__allocating_init<A>(defaultValue:key:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD38, qword_1D91BA5E8);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = *(*v11 + 96);
  v13 = sub_1D9176C2C();
  (*(*(v13 - 8) + 32))(&v11[v12], a1, v13);
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *&v11[*(*v11 + 104)] = a4;
  v14 = &v11[*(*v11 + 112)];
  *v14 = &type metadata for URLTransform;
  *(v14 + 1) = &off_1F5485E38;
  return v11;
}

uint64_t WrappedUserDefaults.__allocating_init<A>(defaultValue:key:store:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA7A0, qword_1D91B7610);
  result = swift_allocObject();
  *(result + 32) = a4;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 40) = a3;
  *(result + 48) = &type metadata for DoubleTransform;
  *(result + 56) = &off_1F5485E98;
  return result;
}

void sub_1D9128D0C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  LOBYTE(a1) = [a1 BOOLForKey_];

  *(a2 + 24) = MEMORY[0x1E69E6370];
  *a2 = a1;
}

void sub_1D9128D98(void *a1@<X0>, uint64_t a2@<X5>, void *a3@<X8>)
{
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [a1 integerForKey_];

  a3[3] = a2;
  *a3 = v7;
}

uint64_t sub_1D9128E00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v12 = [a1 URLForKey_];

  if (v12)
  {
    sub_1D9176B9C();

    v13 = sub_1D9176C2C();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  }

  else
  {
    v13 = sub_1D9176C2C();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_1D8D5DE80(v7, v10);
  sub_1D9176C2C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    result = sub_1D8D08A50(v10, &unk_1ECAB5910, &qword_1D9188C90);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    return (*(v14 + 32))(boxed_opaque_existential_0, v10, v13);
  }

  return result;
}

void sub_1D912902C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-v6];
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8FE89F4(a1, v17);
  if (v18)
  {
    v13 = swift_dynamicCast();
    (*(v9 + 56))(v7, v13 ^ 1u, 1, v8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v12, v7, v8);
      v14 = sub_1D9176B1C();
      v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [a2 setURL:v14 forKey:v15];

      (*(v9 + 8))(v12, v8);
      return;
    }
  }

  else
  {
    sub_1D8D08A50(v17, &qword_1ECAB57F0, &unk_1D9190AA0);
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_1D8D08A50(v7, &unk_1ECAB5910, &qword_1D9188C90);
  v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 removeObjectForKey_];
}

void sub_1D91292AC(uint64_t a1, void *a2)
{
  sub_1D8FE89F4(a1, v5);
  if (!v6)
  {
    sub_1D8D08A50(v5, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [a2 removeObjectForKey_];
    goto LABEL_6;
  }

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 setBool:v4 forKey:v3];
LABEL_6:
}

void sub_1D912938C(uint64_t a1, void *a2)
{
  sub_1D8FE89F4(a1, v5);
  if (!v6)
  {
    sub_1D8D08A50(v5, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [a2 removeObjectForKey_];
    goto LABEL_6;
  }

  v3 = sub_1D9179D9C();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 setObject:v3 forKey:v4];

LABEL_6:
}

void sub_1D9129478(uint64_t a1, void *a2)
{
  sub_1D8FE89F4(a1, v5);
  if (!v6)
  {
    sub_1D8D08A50(v5, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [a2 removeObjectForKey_];
    goto LABEL_6;
  }

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 setDouble:v3 forKey:v4];
LABEL_6:
}

void sub_1D9129560(uint64_t a1, void *a2)
{
  sub_1D8FE89F4(a1, v5);
  if (!v6)
  {
    sub_1D8D08A50(v5, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [a2 removeObjectForKey_];
    goto LABEL_6;
  }

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 setObject:v3 forKey:v4];

LABEL_6:
}

void sub_1D9129660(uint64_t a1, void *a2)
{
  sub_1D8FE89F4(a1, v5);
  if (!v6)
  {
    sub_1D8D08A50(v5, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [a2 removeObjectForKey_];
    goto LABEL_6;
  }

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 setInteger:v4 forKey:v3];
LABEL_6:
}

uint64_t sub_1D9129740(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 112));
  v4 = *v3;
  v5 = v3[1];
  v10 = *(*v1 + 80);
  v6 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, a1, v6);
  (*(v5 + 16))(v9, *(v1 + *(*v1 + 104)), v1[2], v1[3], v4, v5);
  return sub_1D8D08A50(v9, &qword_1ECAB57F0, &unk_1D9190AA0);
}

unint64_t get_enum_tag_for_layout_string_18PodcastsFoundation25AlignmentCoordinatorErrorO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1D9129940(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D912999C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D91299FC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t dispatch thunk of AlignmentCoordinator.fetchPlayerTimestamp(for:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(a2 + 16);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D9129B88;
  v10.n128_f64[0] = a3;

  return v12(a1, a2, v10);
}

uint64_t sub_1D9129B88(double a1)
{
  v3 = *(*v1 + 16);
  v7 = *v1;

  v4 = *(v7 + 8);
  v5.n128_f64[0] = a1;

  return v4(v5);
}

uint64_t dispatch thunk of ScoutingAligner.align(at:within:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v11 = *(a2 + 8);
  v18 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D9129B88;
  v14.n128_f64[0] = a3;
  v15.n128_f64[0] = a4;
  v16.n128_f64[0] = a5;

  return v18(a1, a2, v14, v15, v16);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation22TimelineAlignmentErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9129E38(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t AlignmentRequest.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = 0x80000001D91CCA60;
  v4 = 0;
  v19 = URL.md5()();
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = &v18 + 2 * v4;
  while (++v4 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D8D4241C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1D8D4241C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8D72B0C();
  v13 = sub_1D917817C();
  v15 = v14;
  v16 = sub_1D9176C2C();
  (*(*(v16 - 8) + 8))(a1, v16);

  *a2 = v13;
  a2[1] = v15;
  return result;
}

uint64_t AlignmentRequest.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AlignmentRequest.inMemorySize.getter()
{
  result = sub_1D8E62904(*v0, v0[1]);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 32;
    do
    {
      v5 = *(result + v4);
      v6 = __OFADD__(v3, v5);
      v3 += v5;
      if (v6)
      {
        __break(1u);
        return result;
      }

      v4 += 8;
      --v2;
    }

    while (v2);

    if ((v3 & 0x8000000000000000) == 0)
    {
      return v3;
    }

    __break(1u);
  }

  return 0;
}

uint64_t AlignmentRequest.encode(_:)()
{
  v0 = sub_1D91769EC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1D91769DC();
  type metadata accessor for AssetReaderTimelineAlignment();
  sub_1D912A4C4(&qword_1ECABAD40);
  v3 = sub_1D91769CC();

  return v3;
}

uint64_t AlignmentRequest.decode(_:)()
{
  v1 = sub_1D91769AC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1D917699C();
  type metadata accessor for AssetReaderTimelineAlignment();
  sub_1D912A4C4(&qword_1ECABAD48);
  sub_1D917698C();

  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1D912A340(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1D91769EC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D91769DC();
  type metadata accessor for AssetReaderTimelineAlignment();
  sub_1D912A4C4(&qword_1ECABAD40);
  v5 = sub_1D91769CC();

  return v5;
}

uint64_t sub_1D912A3F8@<X0>(void *a1@<X8>)
{
  v3 = sub_1D91769AC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1D917699C();
  type metadata accessor for AssetReaderTimelineAlignment();
  sub_1D912A4C4(&qword_1ECABAD48);
  sub_1D917698C();

  if (!v1)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1D912A4C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetReaderTimelineAlignment();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1D912A50C(_BYTE *result)
{
  if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

_BYTE *sub_1D912A520(_BYTE *result)
{
  if (!*result)
  {
    *result = 1;
  }

  return result;
}

_BYTE *sub_1D912A538(_BYTE *result)
{
  if (*result <= 1u)
  {
    *result = 2;
  }

  return result;
}

uint64_t sub_1D912A550(void *a1, _OWORD *a2)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD60, &qword_1D91BAB50);
  v41 = *(v38 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD68, &qword_1D91BAB58);
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD70, &qword_1D91BAB60);
  v48 = *(v45 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD78, &qword_1D91BAB68);
  v15 = *(v14 - 8);
  v46 = v14;
  v47 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v38 - v17;
  *(swift_allocObject() + 16) = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD80, &qword_1D91BAB70);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = a1;
  v49 = sub_1D9177A5C();
  sub_1D8CF2154(0, &qword_1ECABAD88, 0x1E6987E80);
  sub_1D8CF48EC(&qword_1ECABAD90, &qword_1ECABAD80, &qword_1D91BAB70);
  sub_1D9177B2C();

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = a2[1];
  *(v22 + 24) = *a2;
  *(v22 + 40) = v23;
  *(v22 + 56) = a2[2];
  v24 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD98, &qword_1D91BAB78);
  sub_1D8CF48EC(&qword_1ECABADA0, &qword_1ECABAD60, &qword_1D91BAB50);
  v25 = v38;
  sub_1D9177C6C();

  (*(v41 + 8))(v6, v25);
  sub_1D8CF48EC(&qword_1ECABADA8, &qword_1ECABAD68, &qword_1D91BAB58);
  v26 = v39;
  v27 = sub_1D9177B1C();
  v41 = v27;
  (*(v40 + 8))(v11, v26);
  v49 = v27;
  v28 = swift_allocObject();
  v29 = v42;
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1D912D20C;
  *(v30 + 24) = v28;
  v40 = sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADB0, &qword_1D91BAB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADB8, &qword_1D91BAB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADC0, &qword_1D91BAB90);
  sub_1D8CF48EC(&qword_1ECABADC8, &qword_1ECABADB0, &qword_1D91BAB80);
  sub_1D8CF48EC(&qword_1ECABADD0, &qword_1ECABADC0, &qword_1D91BAB90);
  v31 = v43;
  sub_1D9177CBC();

  v32 = *(v29 + 16);
  sub_1D8CF48EC(&qword_1ECABADD8, &qword_1ECABAD70, &qword_1D91BAB60);
  swift_retain_n();
  v33 = v45;
  v34 = v44;
  sub_1D9177B3C();

  (*(v48 + 8))(v31, v33);
  sub_1D8CF48EC(&qword_1ECABADE0, &qword_1ECABAD78, &qword_1D91BAB68);
  v35 = v46;
  v36 = sub_1D9177B1C();
  (*(v47 + 8))(v34, v35);
  return v36;
}

uint64_t sub_1D912AC58(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADE8, &qword_1D91BAB98);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v13 = sub_1D91778DC();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = v13;
  sub_1D8CF48EC(&qword_1ECABADF0, &qword_1ECABADE8, &qword_1D91BAB98);

  v10 = a1;
  v11 = a2;

  sub_1D9177B3C();
}

uint64_t sub_1D912ADA0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D912AE1C(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1D912AE1C(void *a1, void *a2, uint64_t a3)
{
  v28 = sub_1D9177E0C();
  v30 = *(v28 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D9177E9C();
  v27 = *(v29 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v17 = *(v13 + 24);
  v16 = *(v13 + 32);
  *(v13 + 24) = sub_1D912D260;
  *(v13 + 32) = v15;

  v18 = a1;
  v19 = a2;

  sub_1D8D15664(v17);

  v20 = *(v3 + 24);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v3;
  aBlock[4] = sub_1D912D26C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_95;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  sub_1D9177E4C();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBF58(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v24 = v28;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v12, v9, v22);
  _Block_release(v22);
  (*(v30 + 8))(v9, v24);
  (*(v27 + 8))(v12, v29);
}

void sub_1D912B18C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = 0;
  os_unfair_lock_unlock((v3 + 20));
  v5 = a2[3];
  if (v5)
  {
    v6 = a2[4];

    os_unfair_lock_lock((v3 + 20));
    v7 = *(v3 + 16);
    os_unfair_lock_unlock((v3 + 20));
    v5(v4, v7);

    sub_1D8D15664(v5);
  }
}

void sub_1D912B24C(void *a1)
{
  v2 = a1[2];
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 2;
  os_unfair_lock_unlock((v2 + 20));
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[4];

    os_unfair_lock_lock((v2 + 20));
    v6 = *(v2 + 16);
    os_unfair_lock_unlock((v2 + 20));
    v4(v3, v6);

    sub_1D8D15664(v4);
  }
}

uint64_t sub_1D912B310(uint64_t result, char a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (result != 1 && a2 == 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1D912B3A4(a4, a5, a6);
    }
  }

  return result;
}

uint64_t sub_1D912B3A4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D9177E9C();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v4 + 24);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_1D912D484;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_35_2;
  v18 = _Block_copy(aBlock);

  v19 = a1;
  v20 = a2;

  sub_1D9177E4C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBF58(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v23);
}

void sub_1D912B694(void *a1, uint64_t a2)
{
  if ([a1 status] != 1)
  {
    sub_1D9178CCC();
    v3 = *(a2 + 16);
    v4 = v3[2];
    os_unfair_lock_lock((v4 + 20));
    v5 = *(v4 + 16);
    os_unfair_lock_unlock((v4 + 20));
    os_unfair_lock_lock((v4 + 20));
    *(v4 + 16) = 1;
    os_unfair_lock_unlock((v4 + 20));
    v6 = v3[3];
    if (v6)
    {
      v7 = v3[4];

      os_unfair_lock_lock((v4 + 20));
      v8 = *(v4 + 16);
      os_unfair_lock_unlock((v4 + 20));
      v6(v5, v8);

      sub_1D8D15664(v6);
    }
  }
}

void sub_1D912B794(uint64_t a1, id a2, void *a3, uint64_t a4)
{
  v79 = a3;
  v80 = a4;
  v6 = sub_1D9178D4C();
  v7 = *(v6 - 8);
  v77 = v6;
  v78 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  v10 = *(a1 + 16);
  v11 = v10[2];
  os_unfair_lock_lock((v11 + 20));
  v12 = *(v11 + 16);
  os_unfair_lock_unlock((v11 + 20));
  v13 = &selRef_redirectURLForStoreCollectionId_;
  if (v12 == 1)
  {
    v14 = 0;
    v72 = *MEMORY[0x1E695E480];
    v73 = (v78 + 8);
    v71 = xmmword_1D9189080;
    v74 = v10;
    v75 = a2;
    do
    {
      if ([a2 v13[440]] != 1)
      {
        break;
      }

      v15 = [v79 copyNextSampleBuffer];
      if (!v15)
      {
        break;
      }

      v16 = v15;
      v17 = objc_autoreleasePoolPush();
      if (qword_1ECAB3730 != -1)
      {
        swift_once();
      }

      v18 = qword_1ECABAD50;
      if (qword_1ECABAD50)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE00, &qword_1D91BABA0);
        v19 = *(v78 + 72);
        v20 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v21 = swift_allocObject();
        *(v21 + 16) = v71;
        v22 = v18;
        sub_1D9178D3C();
        *&v81 = v21;
        sub_1D8CFBF58(&qword_1ECABAE08, MEMORY[0x1E69E7ED0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE10, &qword_1D91BABA8);
        sub_1D8CF48EC(&qword_1ECABAE18, &qword_1ECABAE10, &qword_1D91BABA8);
        v23 = v77;
        v24 = v76;
        v25 = sub_1D91792CC();
        MEMORY[0x1EEE9AC00](v25);
        *(&v60 - 2) = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE20, &unk_1D91BABB0);
        sub_1D9178D2C();
        if (v14)
        {

          (*v73)(v24, v23);
          v14 = 0;
        }

        else
        {
          (*v73)(v24, v23);
          if (v85)
          {
            v68 = v85;
            [v85 setFrameLength_];
            CMSampleBufferGetPresentationTimeStamp(&v85, v16);
            v30 = v85;
            v66 = v85;
            v67 = 0;
            v31 = DWORD2(v85);
            v32 = HIDWORD(v85);
            v64 = HIDWORD(v85);
            v65 = DWORD2(v85);
            v33 = v86;
            v63 = v86;
            CMSampleBufferGetDuration(&v85, v16);
            v69 = v17;
            v34 = v85;
            v36 = DWORD2(v85);
            v35 = HIDWORD(v85);
            v62 = HIDWORD(v85);
            v61 = v86;

            v92 = v30;
            v93 = v31;
            v94 = v32;
            v95 = v33;
            v96 = v34;
            v97 = v36;
            v98 = v35;
            v37 = v61;
            v99 = v61;
            sub_1D9178C6C();
            a2 = v75;
            [v75 timeRange];
            sub_1D9178C6C();
            v14 = v67;
            sub_1D9178C7C();
            v38 = v90;
            v39 = v91;
            v40 = v70;
            *(v70 + 32) = v89;
            *(v40 + 48) = v38;
            *(v40 + 64) = v39;
            *(v40 + 80) = 0;
            *&v81 = v68;
            *(&v81 + 1) = v66;
            *&v82 = __PAIR64__(v64, v65);
            *(&v82 + 1) = v63;
            *&v83 = v34;
            v17 = v69;
            *(&v83 + 1) = __PAIR64__(v62, v36);
            v84 = v37;
            v41 = v68;
            sub_1D91778BC();

            v85 = v81;
            v86 = v82;
            v87 = v83;
            v88 = v84;
            sub_1D8D08A50(&v85, &qword_1ECABADB8, &qword_1D91BAB88);
            v10 = v74;
            v13 = &selRef_redirectURLForStoreCollectionId_;
            goto LABEL_12;
          }
        }

        v10 = v74;
        a2 = v75;
        v13 = &selRef_redirectURLForStoreCollectionId_;
      }

      [a2 cancelReading];
      sub_1D912D490();
      v26 = swift_allocError();
      *v27 = 0;
      *(v27 + 8) = 2;
      *&v85 = v26;
      sub_1D91778AC();

LABEL_12:
      objc_autoreleasePoolPop(v17);

      v28 = v10[2];
      os_unfair_lock_lock((v28 + 20));
      v29 = *(v28 + 16);
      os_unfair_lock_unlock((v28 + 20));
    }

    while (v29 == 1);
  }

  v42 = v10[2];
  os_unfair_lock_lock((v42 + 20));
  v43 = *(v42 + 16);
  os_unfair_lock_unlock((v42 + 20));
  if (v43 == 2)
  {
    [a2 cancelReading];
  }

  if ([a2 v13[440]] == 2)
  {
    v44 = v10[2];
    os_unfair_lock_lock((v44 + 20));
    v45 = *(v44 + 16);
    os_unfair_lock_unlock((v44 + 20));
    os_unfair_lock_lock((v44 + 20));
    *(v44 + 16) = 3;
    os_unfair_lock_unlock((v44 + 20));
    v46 = v10[3];
    if (v46)
    {
      v47 = v10[4];

      os_unfair_lock_lock((v44 + 20));
      v48 = *(v44 + 16);
      os_unfair_lock_unlock((v44 + 20));
      v46(v45, v48);
      sub_1D8D15664(v46);
    }

    *&v85 = 0;
    sub_1D91778AC();
  }

  else
  {
    if ([a2 v13[440]] == 3)
    {
      v49 = [a2 error];
      if (v49)
      {
        *&v85 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
        sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
        if (swift_dynamicCast())
        {
          v50 = v81;
          v51 = [v81 code];

          if (v51 == -11847)
          {
            v52 = [a2 asset];
            sub_1D912BF58(v52, v80);

            return;
          }
        }
      }

      v59 = [a2 error];
      sub_1D912D490();
      v55 = swift_allocError();
      v57 = v55;
      *v56 = v59;
      v58 = 1;
    }

    else
    {
      v53 = v10[2];
      os_unfair_lock_lock((v53 + 20));
      v54 = *(v53 + 16);
      os_unfair_lock_unlock((v53 + 20));
      if (!v54)
      {
        return;
      }

      sub_1D912D490();
      v55 = swift_allocError();
      v57 = v55;
      *v56 = 1;
      v58 = 2;
    }

    *(v56 + 8) = v58;
    *&v85 = v55;
    sub_1D91778AC();
  }
}

uint64_t sub_1D912BF58(void *a1, uint64_t a2)
{
  v3 = v2;
  v66 = a2;
  v5 = *v2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD60, &qword_1D91BAB50);
  v61 = *(v63 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v54 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD68, &qword_1D91BAB58);
  v62 = *(v64 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v54 - v10;
  if (qword_1ECAB0CA0 != -1)
  {
    swift_once();
  }

  v11 = sub_1D917744C();
  __swift_project_value_buffer(v11, qword_1ECAB0CA8);
  v12 = sub_1D917741C();
  v13 = sub_1D9178D1C();
  v14 = os_log_type_enabled(v12, v13);
  v65 = v5;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v67 = v16;
    *v15 = 136315138;
    v17 = sub_1D9179FEC();
    v19 = sub_1D8CFA924(v17, v18, &v67);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1D8CEC000, v12, v13, "[%s]: Reader was invalidated. Attempting to rebuild the asset reader.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1DA72CB90](v16, -1, -1);
    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  v20 = v3[2];
  v21 = v20[2];
  os_unfair_lock_lock((v21 + 20));
  v22 = *(v21 + 16);
  os_unfair_lock_unlock((v21 + 20));
  os_unfair_lock_lock((v21 + 20));
  *(v21 + 16) = 0;
  os_unfair_lock_unlock((v21 + 20));
  v23 = v20[3];
  if (v23)
  {
    v24 = v20[4];

    os_unfair_lock_lock((v21 + 20));
    v25 = *(v21 + 16);
    os_unfair_lock_unlock((v21 + 20));
    v23(v22, v25);
    sub_1D8D15664(v23);
  }

  if (v3[10])
  {
    v26 = MEMORY[0x1E6960CA8];
    v27 = (MEMORY[0x1E6960CA8] + 40);
    v28 = (MEMORY[0x1E6960CA8] + 32);
    v29 = (MEMORY[0x1E6960CA8] + 24);
    v30 = (MEMORY[0x1E6960CA8] + 16);
    v31 = (MEMORY[0x1E6960CA8] + 8);
  }

  else
  {
    v26 = v3 + 4;
    v27 = v3 + 9;
    v28 = v3 + 8;
    v29 = v3 + 7;
    v30 = v3 + 6;
    v31 = v3 + 5;
  }

  v59 = *v27;
  v58 = *v28;
  v32 = *v29;
  v56 = *v30;
  v57 = v32;
  v55 = *v31;
  v33 = *v26;
  *(swift_allocObject() + 16) = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD80, &qword_1D91BAB70);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = a1;
  v67 = sub_1D9177A5C();
  sub_1D8CF2154(0, &qword_1ECABAD88, 0x1E6987E80);
  sub_1D8CF48EC(&qword_1ECABAD90, &qword_1ECABAD80, &qword_1D91BAB70);
  sub_1D9177B2C();

  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = v33;
  v39 = v56;
  v38[4] = v55;
  v38[5] = v39;
  v40 = v58;
  v38[6] = v57;
  v38[7] = v40;
  v38[8] = v59;
  v41 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD98, &qword_1D91BAB78);
  sub_1D8CF48EC(&qword_1ECABADA0, &qword_1ECABAD60, &qword_1D91BAB50);
  v42 = v60;
  v43 = v63;
  sub_1D9177C6C();

  (*(v61 + 8))(v8, v43);
  sub_1D8CF48EC(&qword_1ECABADA8, &qword_1ECABAD68, &qword_1D91BAB58);
  v44 = v64;
  v45 = sub_1D9177B1C();
  (*(v62 + 8))(v42, v44);
  v67 = v45;
  v46 = swift_allocObject();
  v47 = v65;
  *(v46 + 16) = v65;
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = swift_allocObject();
  v49[2] = v48;
  v49[3] = v66;
  v49[4] = v47;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1D912D54C;
  *(v50 + 24) = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADB0, &qword_1D91BAB80);
  sub_1D8CF48EC(&qword_1ECABADC8, &qword_1ECABADB0, &qword_1D91BAB80);
  v51 = sub_1D9177BCC();

  v52 = v3[11];
  v3[11] = v51;
}

void sub_1D912C65C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = v1;
    if (qword_1ECAB0CA0 != -1)
    {
      swift_once();
    }

    v3 = sub_1D917744C();
    __swift_project_value_buffer(v3, qword_1ECAB0CA8);
    v4 = v1;
    v5 = sub_1D917741C();
    v6 = sub_1D9178CFC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v7 = 136315394;
      v10 = sub_1D9179FEC();
      v12 = sub_1D8CFA924(v10, v11, &v15);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2112;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v14;
      *v8 = v14;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "[%s]: Failed to rebuild the asset reader with error: %@", v7, 0x16u);
      sub_1D8D08A50(v8, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D912C860(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ECAB0CA0 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1ECAB0CA8);
  v8 = a1;
  v9 = sub_1D917741C();
  v10 = sub_1D9178D1C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315650;
    v13 = sub_1D9179FEC();
    v15 = sub_1D8CFA924(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    [v8 timeRange];
    sub_1D917910C();
    *(v11 + 14) = v16;
    *(v11 + 22) = 2048;
    [v8 timeRange];
    sub_1D917910C();
    *(v11 + 24) = v17;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "[%s]: Resuming asset reader from (start: %f, duration: %f).", v11, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D912AE1C(v8, a2, a4);
  }

  return result;
}

void sub_1D912CA64(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *MEMORY[0x1E69875A0];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D8D419F0;
  *(v8 + 24) = v6;
  v10[4] = sub_1D912D588;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D912CC64;
  v10[3] = &block_descriptor_68_2;
  v9 = _Block_copy(v10);

  [a3 loadTracksWithMediaType:v7 completionHandler:v9];
  _Block_release(v9);
}

void sub_1D912CB8C(unint64_t a1, void *a2, void (*a3)(void))
{
  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_1D917935C())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      a3();
      return;
    }
  }

  sub_1D912D490();
  v5 = swift_allocError();
  *v6 = a2;
  *(v6 + 8) = 0;
  v7 = a2;
  (a3)(v5, 1);
}

uint64_t sub_1D912CC64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1D8CF2154(0, &qword_1ECABAE28, 0x1E6987EC8);
    v4 = sub_1D91785FC();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_1D912CD08(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (qword_1ECAB3730 != -1)
  {
    swift_once();
  }

  if (qword_1ECABAD50)
  {
    v4 = qword_1ECABAD50;
    v5 = [v4 settings];
    sub_1D917805C();

    v6 = objc_allocWithZone(MEMORY[0x1E6987E80]);
    sub_1D8CF2154(0, &qword_1ECABAE28, 0x1E6987EC8);
    v7 = sub_1D91785DC();
    v8 = sub_1D917802C();

    v9 = [v6 initWithAudioTracks:v7 audioSettings:v8];

    [v9 setAlwaysCopiesSampleData_];
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
}

id sub_1D912CE78@<X0>(void **a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3[1];
  v20 = *a3;
  v21 = v6;
  v22 = a3[2];
  v7 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5C00, &qword_1D91913F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  v9 = *MEMORY[0x1E6987380];
  sub_1D917820C();
  *(&v19[0] + 1) = v10;
  sub_1D91793EC();
  *(inited + 96) = MEMORY[0x1E69E6370];
  *(inited + 72) = 1;
  sub_1D8D653BC(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &unk_1ECAB6C80, &unk_1D91949C0);
  v11 = objc_allocWithZone(MEMORY[0x1E6987E78]);
  v12 = sub_1D917802C();

  *&v19[0] = 0;
  v13 = [v11 initWithAsset:a2 options:v12 error:v19];

  if (v13)
  {
    v14 = *(MEMORY[0x1E6960CA8] + 16);
    v19[3] = *MEMORY[0x1E6960CA8];
    v19[4] = v14;
    v19[5] = *(MEMORY[0x1E6960CA8] + 32);
    v15 = *&v19[0];
    if (sub_1D9178C5C())
    {
      v19[0] = v20;
      v19[1] = v21;
      v19[2] = v22;
      [v13 setTimeRange_];
    }

    [v13 addOutput_];
    *a4 = v13;
    a4[1] = v7;
    result = v7;
  }

  else
  {
    v17 = *&v19[0];
    sub_1D9176A6C();

    result = swift_willThrow();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D912D0AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_1D912D118()
{
  v1 = v0[2];

  v2 = v0[4];
  sub_1D8D15664(v0[3]);

  return swift_deallocClassInstance();
}

unint64_t sub_1D912D190()
{
  result = qword_1ECABAD58;
  if (!qword_1ECABAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAD58);
  }

  return result;
}

uint64_t sub_1D912D214(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

id sub_1D912D274()
{
  result = [objc_allocWithZone(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:1 channels:16000.0];
  qword_1ECABAD50 = result;
  return result;
}

void sub_1D912D2B8(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_1D9177F5C();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = objc_allocWithZone(MEMORY[0x1E6958440]);
  v12[4] = sub_1D912D500;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D912D3E0;
  v12[3] = &block_descriptor_41_4;
  v9 = _Block_copy(v12);
  v10 = a1;

  v11 = [v8 initWithPCMFormat:a2 bufferListNoCopy:v6 deallocator:v9];
  _Block_release(v9);
  *a3 = v11;
}

uint64_t sub_1D912D3E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

unint64_t sub_1D912D490()
{
  result = qword_1ECABADF8;
  if (!qword_1ECABADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABADF8);
  }

  return result;
}

uint64_t sub_1D912D500()
{
  v2 = *(v0 + 16);
  type metadata accessor for CMBlockBuffer(0);
  return sub_1D9177F6C();
}

uint64_t sub_1D912D558(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation11AssetReaderC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

char *AssetReaderScoutingAligner.__allocating_init(asset:catalog:logger:)(void *a1, void *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_1D9131A80(a1, a2, a3);

  return v9;
}

char *AssetReaderScoutingAligner.init(asset:catalog:logger:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1D9131A80(a1, a2, a3);

  return v5;
}

uint64_t sub_1D912D688(double a1, double a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_1D917734C();
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D912D75C, 0, 0);
}

uint64_t sub_1D912D75C()
{
  if (qword_1ECAB3558 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 9);
  v2 = sub_1D917739C();
  __swift_project_value_buffer(v2, qword_1ECAB78E8);
  sub_1D917737C();
  sub_1D917731C();
  v3 = sub_1D917737C();
  v4 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v5 = *(v0 + 9);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v3, v4, v7, "ScoutingAlignment", "", v6, 2u);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  v10 = *(v0 + 6);
  v11 = *(v0 + 7);

  (*(v11 + 16))(v8, v9, v10);
  v12 = sub_1D91773FC();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 10) = sub_1D91773EC();
  (*(v11 + 8))(v9, v10);
  v15 = swift_task_alloc();
  *(v0 + 11) = v15;
  *v15 = v0;
  v15[1] = sub_1D912D944;
  v16 = *(v0 + 5);
  v17 = v0[3];
  v18 = v0[4];
  v19 = v0[2];

  return sub_1D912DB94(v19, v17, v18);
}

uint64_t sub_1D912D944(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v8 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v6 = sub_1D912DB00;
  }

  else
  {
    *(v4 + 104) = a1;
    v6 = sub_1D912DA68;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D912DA68()
{
  v1 = v0[9];
  v2 = v0[8];
  sub_1D91317F0(v0[10], "ScoutingAlignment");

  v3 = v0[1];
  v4.n128_u64[0] = v0[13];

  return v3(v4);
}

uint64_t sub_1D912DB00()
{
  v1 = v0[9];
  v2 = v0[8];
  sub_1D91317F0(v0[10], "ScoutingAlignment");

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_1D912DB94(double a1, double a2, double a3)
{
  v13 = *MEMORY[0x1E69E9840];
  *(v4 + 112) = v3;
  *(v4 + 96) = a2;
  *(v4 + 104) = a3;
  *(v4 + 88) = a1;
  v5 = sub_1D91773AC();
  *(v4 + 120) = v5;
  v6 = *(v5 - 8);
  *(v4 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v8 = sub_1D917734C();
  *(v4 + 144) = v8;
  v9 = *(v8 - 8);
  *(v4 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D912DD08, 0, 0);
}

uint64_t sub_1D912DD08()
{
  v85 = v0;
  v84[10] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 112);
  *(v0 + 192) = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderScoutingAligner_logger;
  v2 = sub_1D917741C();
  v3 = sub_1D9178D1C();
  v4 = &off_1D9187000;
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_1D8CEC000, v2, v3, "Scouting: Beginning with initial guess for %f", v6, 0xCu);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  if (qword_1ECAB3558 != -1)
  {
LABEL_43:
    swift_once();
  }

  v7 = *(v0 + 184);
  v8 = sub_1D917739C();
  *(v0 + 200) = __swift_project_value_buffer(v8, qword_1ECAB78E8);
  sub_1D917737C();
  sub_1D917731C();
  v9 = sub_1D917737C();
  v10 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v11 = *(v0 + 184);
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v9, v10, v13, "ScoutingAlignmentResolve", "", v12, 2u);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  v14 = *(v0 + 176);
  v15 = *(v0 + 184);
  v16 = *(v0 + 144);
  v17 = *(v0 + 152);
  v18 = *(v0 + 88);

  v19 = *(v17 + 16);
  *(v0 + 208) = v19;
  *(v0 + 216) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v14, v15, v16);
  v20 = sub_1D91773FC();
  *(v0 + 224) = v20;
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v0 + 232) = sub_1D91773EC();
  v23 = *(v17 + 8);
  *(v0 + 240) = v23;
  *(v0 + 248) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v15, v16);
  *(v0 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6030, &qword_1D9191FE0);
  inited = swift_initStackObject();
  *(v0 + 256) = inited;
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0;
  *(inited + 40) = v18;
  v25 = MEMORY[0x1E69E7CD0];
  v26 = MEMORY[0x1E69E93E8];
  *(v0 + 72) = inited;
  *(v0 + 80) = v25;
  *(v0 + 328) = *v26;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  v27 = *(inited + 16);
  if (!v27)
  {
LABEL_37:

    v74 = *(v0 + 80);

    sub_1D9131F00();
    swift_allocError();
    *v75 = 1;
    swift_willThrow();
    v77 = *(v0 + 176);
    v76 = *(v0 + 184);
    v79 = *(v0 + 160);
    v78 = *(v0 + 168);
    v80 = *(v0 + 136);
    sub_1D912F4E0(*(v0 + 88), *(v0 + 112), *(v0 + 232), (v0 + 64));

    v81 = *(v0 + 8);
    v82 = *MEMORY[0x1E69E9840];

    return v81();
  }

  v83 = *(v4 + 115);
  v4 = 0xC3E0000000000001;
  while (1)
  {
    *(v0 + 332) = *(inited + 32);
    v29 = *(inited + 40);
    *(v0 + 280) = v29;
    if ((v27 - 1) > *(inited + 24) >> 1)
    {
      inited = sub_1D8ECE180(1, v27, 1, inited);
    }

    *(v0 + 288) = inited;
    v30 = *(inited + 16);
    memmove((inited + 32), (inited + 48), 16 * v30 - 16);
    *(inited + 16) = v30 - 1;
    if (v29 >= *(v0 + 96) && v29 < *(v0 + 104))
    {
      break;
    }

    v32 = *(v0 + 112) + *(v0 + 192);
    v33 = sub_1D917741C();
    v34 = sub_1D9178D1C();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_10;
    }

    v28 = swift_slowAlloc();
    *v28 = v83;
    *(v28 + 4) = v29;
    _os_log_impl(&dword_1D8CEC000, v33, v34, "Scouting: Skipping out of bounds %f", v28, 0xCu);
LABEL_9:
    MEMORY[0x1DA72CB90](v28, -1, -1);
LABEL_10:

    v27 = *(inited + 16);
    if (!v27)
    {
      goto LABEL_37;
    }
  }

  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v29 <= -9.22337204e18)
  {
    goto LABEL_41;
  }

  if (v29 >= 9.22337204e18)
  {
    goto LABEL_42;
  }

  v35 = *(v0 + 80);
  if (*(v35 + 16))
  {
    v36 = *(v35 + 40);
    sub_1D9179DBC();
    sub_1D9179FAC();
    v37 = sub_1D9179E1C();
    v38 = -1 << *(v35 + 32);
    v39 = v37 & ~v38;
    if ((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
    {
      v40 = ~v38;
      while (1)
      {
        v41 = (*(v35 + 48) + 16 * v39);
        v42 = *v41;
        v43 = v41[1];
        if (sub_1D9179F9C())
        {
          break;
        }

        v39 = (v39 + 1) & v40;
        if (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v44 = *(v0 + 112) + *(v0 + 192);
      v33 = sub_1D917741C();
      v45 = sub_1D9178D1C();
      if (!os_log_type_enabled(v33, v45))
      {
        v4 = 0xC3E0000000000001;
        goto LABEL_10;
      }

      v28 = swift_slowAlloc();
      *v28 = v83;
      *(v28 + 4) = v29;
      _os_log_impl(&dword_1D8CEC000, v33, v45, "Scouting: Skipping already visited position %f", v28, 0xCu);
      v4 = 0xC3E0000000000001;
      goto LABEL_9;
    }
  }

LABEL_30:
  v46 = *(v0 + 192);
  v47 = *(v0 + 112);
  sub_1D8EFBE2C(v84, 1000000000000000000 * v29, ((v29 >> 63) & 0xF21F494C589C0000) + ((v29 * 0xDE0B6B3A7640000uLL) >> 64));
  v48 = sub_1D917741C();
  v49 = sub_1D9178D1C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134218752;
    *(v50 + 4) = 0;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v29;
    *(v50 + 22) = 2048;
    *(v50 + 24) = 0;
    *(v50 + 32) = 2048;
    *(v50 + 34) = 24;
    _os_log_impl(&dword_1D8CEC000, v48, v49, "Scouting: Beginning step %ld, Position: %f, GiveUp: %ld/%ld", v50, 0x2Au);
    MEMORY[0x1DA72CB90](v50, -1, -1);
  }

  v51 = *(v0 + 200);
  v52 = *(v0 + 160);
  sub_1D917737C();
  sub_1D917731C();
  v53 = sub_1D917737C();
  v54 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v55 = *(v0 + 160);
    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v53, v54, v57, "ScoutingAlignmentStep", "", v56, 2u);
    MEMORY[0x1DA72CB90](v56, -1, -1);
  }

  v59 = *(v0 + 240);
  v58 = *(v0 + 248);
  v61 = *(v0 + 216);
  v60 = *(v0 + 224);
  v62 = *(v0 + 208);
  v63 = *(v0 + 176);
  v64 = *(v0 + 160);
  v65 = *(v0 + 144);

  v62(v63, v64, v65);
  v66 = *(v60 + 48);
  v67 = *(v60 + 52);
  swift_allocObject();
  v68 = sub_1D91773EC();
  *(v0 + 296) = v68;
  v59(v64, v65);
  *(v0 + 64) = v68;
  v69 = swift_task_alloc();
  *(v0 + 304) = v69;
  *v69 = v0;
  v69[1] = sub_1D912E57C;
  v70 = *(v0 + 112);
  v71 = *(v0 + 88);
  v72 = *MEMORY[0x1E69E9840];

  return sub_1D912F98C(v71, v29);
}

uint64_t sub_1D912E57C(uint64_t a1, char a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v6 = *(*v3 + 304);
  v13 = *v3;
  *(v5 + 312) = a1;
  *(v5 + 320) = v2;

  if (v2)
  {
    v7 = *(v5 + 288);

    v8 = *(v5 + 80);

    v9 = sub_1D912F3D8;
  }

  else
  {
    *(v5 + 333) = a2;
    v9 = sub_1D912E6DC;
  }

  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D912E6DC()
{
  v144 = v1;
  v143[10] = *MEMORY[0x1E69E9840];
  if (!*(v1 + 333))
  {
    v12 = *(v1 + 288);
    v13 = *(v1 + 192);
    v14 = *(v1 + 112);

    v15 = *(v1 + 80);

    v16 = sub_1D917741C();
    v17 = sub_1D9178D1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v1 + 280);
      v19 = *(v1 + 272);
      v20 = *(v1 + 88);
      v21 = swift_slowAlloc();
      *v21 = 134218496;
      *(v21 + 4) = v20;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v18;
      *(v21 + 22) = 2048;
      *(v21 + 24) = v19;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "Scouting: 🎯 Resolved from %f to %f in %ld steps", v21, 0x20u);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }

    v22 = *(v1 + 312);
    v23 = *(v1 + 296);
    v24 = *(v1 + 232);
    v26 = *(v1 + 176);
    v25 = *(v1 + 184);
    v28 = *(v1 + 160);
    v27 = *(v1 + 168);
    v29 = *(v1 + 136);
    v30 = *(v1 + 112);
    v31 = *(v1 + 88);

    sub_1D912F4E0(v31, v30, v24, (v1 + 64));

    v32 = *(v1 + 8);
    v33 = *MEMORY[0x1E69E9840];
    v34.n128_u64[0] = v22;
LABEL_68:

    return v32(v34);
  }

  if (*(v1 + 333) != 1)
  {
    v3 = *(v1 + 264);
    v4 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_85;
    }

    v35 = *(v1 + 332);
    v36 = *(v1 + 112) + *(v1 + 192);
    v37 = sub_1D917741C();
    v38 = sub_1D9178D1C();
    v39 = os_log_type_enabled(v37, v38);
    if (v35)
    {
      if (v35 == 1)
      {
        if (v39)
        {
          v40 = *(v1 + 280);
          v41 = swift_slowAlloc();
          *v41 = 134217984;
          *(v41 + 4) = v40;
          _os_log_impl(&dword_1D8CEC000, v37, v38, "Scouting: ⬅️ No match found for %f", v41, 0xCu);
          MEMORY[0x1DA72CB90](v41, -1, -1);
        }

        v42 = *(v1 + 288);
        v43 = *(v1 + 280);

        v2 = v43 + -120.0;
        v45 = *(v42 + 16);
        v44 = *(v42 + 24);
        v0 = *(v1 + 288);
        if (v45 >= v44 >> 1)
        {
          v0 = sub_1D8ECE180((v44 > 1), v45 + 1, 1, *(v1 + 288));
        }

        *(v0 + 2) = v45 + 1;
        v46 = &v0[16 * v45];
        v47 = 1;
      }

      else
      {
        if (v39)
        {
          v59 = *(v1 + 280);
          v60 = swift_slowAlloc();
          *v60 = 134217984;
          *(v60 + 4) = v59;
          _os_log_impl(&dword_1D8CEC000, v37, v38, "Scouting: ➡️ No match found for %f", v60, 0xCu);
          MEMORY[0x1DA72CB90](v60, -1, -1);
        }

        v61 = *(v1 + 288);
        v62 = *(v1 + 280);

        v2 = v62 + 120.0;
        v64 = *(v61 + 16);
        v63 = *(v61 + 24);
        v0 = *(v1 + 288);
        if (v64 >= v63 >> 1)
        {
          v0 = sub_1D8ECE180((v63 > 1), v64 + 1, 1, *(v1 + 288));
        }

        *(v0 + 2) = v64 + 1;
        v46 = &v0[16 * v64];
        v47 = 2;
      }
    }

    else
    {
      if (v39)
      {
        v48 = *(v1 + 280);
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = v48;
        _os_log_impl(&dword_1D8CEC000, v37, v38, "Scouting: ↔️ No match found for %f", v49, 0xCu);
        MEMORY[0x1DA72CB90](v49, -1, -1);
      }

      v50 = *(v1 + 288);
      v51 = *(v1 + 280);

      v52 = v51 + 120.0;
      v54 = *(v50 + 16);
      v53 = *(v50 + 24);
      v55 = v53 >> 1;
      v56 = v54 + 1;
      v0 = *(v1 + 288);
      if (v53 >> 1 <= v54)
      {
        v0 = sub_1D8ECE180((v53 > 1), v54 + 1, 1, *(v1 + 288));
        v53 = *(v0 + 3);
        v55 = v53 >> 1;
      }

      v2 = v51 + -120.0;
      *(v0 + 2) = v56;
      v57 = &v0[16 * v54];
      v57[32] = 2;
      *(v57 + 5) = v52;
      v58 = v54 + 2;
      if (v55 < v58)
      {
        v0 = sub_1D8ECE180((v53 > 1), v58, 1, v0);
      }

      *(v0 + 2) = v58;
      v46 = &v0[16 * v56];
      v47 = 1;
    }

    v46[32] = v47;
    *(v46 + 5) = v2;
    goto LABEL_32;
  }

  v3 = *(v1 + 264);
  v4 = v3 + 4;
  if (__OFADD__(v3, 4))
  {
    goto LABEL_84;
  }

  v2 = *(v1 + 312);
  v5 = *(v1 + 112) + *(v1 + 192);
  v6 = sub_1D917741C();
  v7 = sub_1D9178D1C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 312);
    v9 = *(v1 + 280);
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v8;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "Scouting: 🔎 Refined guess from %f to %f.", v10, 0x16u);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  v11 = *(v1 + 288);

  v3 = *(v11 + 16);
  *(v1 + 72) = v11;
  v0 = *(v1 + 288);
  if (v3 >= *(v11 + 24) >> 1)
  {
    goto LABEL_86;
  }

  while (1)
  {
    sub_1D8F90608(0, 0, 1, 0, v2);
LABEL_32:
    v65 = *(v1 + 272);
    v66 = __OFADD__(v65, 1);
    v3 = v65 + 1;
    if (!v66)
    {
      break;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    v0 = sub_1D8ECE180(1, v3 + 1, 1, v0);
    *(v1 + 72) = v0;
  }

  v67 = *(v1 + 296);
  *(v1 + 264) = v4;
  *(v1 + 272) = v3;
  v68 = *(v0 + 2);
  if (!v68)
  {
LABEL_64:

    v101 = *(v1 + 80);

    if (v4 < 24)
    {
      v102 = 1;
    }

    else
    {
      v102 = 2;
    }

LABEL_67:
    sub_1D9131F00();
    swift_allocError();
    *v103 = v102;
    swift_willThrow();
    v105 = *(v1 + 176);
    v104 = *(v1 + 184);
    v107 = *(v1 + 160);
    v106 = *(v1 + 168);
    v108 = *(v1 + 136);
    sub_1D912F4E0(*(v1 + 88), *(v1 + 112), *(v1 + 232), (v1 + 64));

    v32 = *(v1 + 8);
    v109 = *MEMORY[0x1E69E9840];
    goto LABEL_68;
  }

  v141 = v3;
  while (1)
  {
    *(v1 + 332) = v0[32];
    v2 = *(v0 + 5);
    *(v1 + 280) = v2;
    if ((v68 - 1) > *(v0 + 3) >> 1)
    {
      v0 = sub_1D8ECE180(1, v68, 1, v0);
    }

    *(v1 + 288) = v0;
    v70 = *(v0 + 2);
    memmove(v0 + 32, v0 + 48, 16 * v70 - 16);
    *(v0 + 2) = v70 - 1;
    if (v4 > 23)
    {

      v140 = *(v1 + 80);

      v102 = 2;
      goto LABEL_67;
    }

    if (v2 >= *(v1 + 96) && v2 < *(v1 + 104))
    {
      break;
    }

    v72 = *(v1 + 112) + *(v1 + 192);
    v73 = sub_1D917741C();
    v74 = sub_1D9178D1C();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_37;
    }

    v69 = swift_slowAlloc();
    *v69 = 134217984;
    *(v69 + 4) = v2;
    _os_log_impl(&dword_1D8CEC000, v73, v74, "Scouting: Skipping out of bounds %f", v69, 0xCu);
LABEL_36:
    MEMORY[0x1DA72CB90](v69, -1, -1);
LABEL_37:

    v68 = *(v0 + 2);
    if (!v68)
    {
      goto LABEL_64;
    }
  }

  v3 = *&v2 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_81;
  }

  if (v2 <= -9.22337204e18)
  {
    goto LABEL_82;
  }

  if (v2 >= 9.22337204e18)
  {
    goto LABEL_83;
  }

  v142 = v67;
  v75 = v4;
  v76 = *(v1 + 80);
  if (*(v76 + 16))
  {
    v77 = *(v76 + 40);
    sub_1D9179DBC();
    sub_1D9179FAC();
    v78 = sub_1D9179E1C();
    v79 = -1 << *(v76 + 32);
    v80 = v78 & ~v79;
    if ((*(v76 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80))
    {
      v81 = ~v79;
      while (1)
      {
        v82 = (*(v76 + 48) + 16 * v80);
        v83 = *v82;
        v84 = v82[1];
        if (sub_1D9179F9C())
        {
          break;
        }

        v80 = (v80 + 1) & v81;
        if (((*(v76 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      v85 = *(v1 + 112) + *(v1 + 192);
      v73 = sub_1D917741C();
      v86 = sub_1D9178D1C();
      if (!os_log_type_enabled(v73, v86))
      {
        v4 = v75;
        v67 = v142;
        goto LABEL_37;
      }

      v69 = swift_slowAlloc();
      *v69 = 134217984;
      *(v69 + 4) = v2;
      _os_log_impl(&dword_1D8CEC000, v73, v86, "Scouting: Skipping already visited position %f", v69, 0xCu);
      v4 = v75;
      v67 = v142;
      goto LABEL_36;
    }
  }

LABEL_58:
  v87 = *(v1 + 192);
  v88 = *(v1 + 112);
  sub_1D8EFBE2C(v143, 1000000000000000000 * v2, ((v2 >> 63) & 0xF21F494C589C0000) + ((v2 * 0xDE0B6B3A7640000uLL) >> 64));
  v89 = sub_1D917741C();
  v90 = sub_1D9178D1C();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 134218752;
    *(v91 + 4) = v141;
    *(v91 + 12) = 2048;
    *(v91 + 14) = v2;
    *(v91 + 22) = 2048;
    *(v91 + 24) = v75;
    *(v91 + 32) = 2048;
    *(v91 + 34) = 24;
    _os_log_impl(&dword_1D8CEC000, v89, v90, "Scouting: Beginning step %ld, Position: %f, GiveUp: %ld/%ld", v91, 0x2Au);
    MEMORY[0x1DA72CB90](v91, -1, -1);
  }

  if (v142)
  {
    v92 = *(v1 + 200);
    v93 = *(v1 + 168);

    v94 = sub_1D917737C();
    sub_1D91773DC();
    v95 = sub_1D9178F4C();
    if (sub_1D917918C())
    {
      v96 = *(v1 + 328);
      v98 = *(v1 + 128);
      v97 = *(v1 + 136);
      v99 = *(v1 + 120);

      sub_1D917740C();

      if ((*(v98 + 88))(v97, v99) == v96)
      {
        v100 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));
        v100 = "";
      }

      v111 = *(v1 + 168);
      v112 = swift_slowAlloc();
      *v112 = 0;
      v113 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v94, v95, v113, "ScoutingAlignmentStep", v100, v112, 2u);
      MEMORY[0x1DA72CB90](v112, -1, -1);
    }

    v115 = *(v1 + 240);
    v114 = *(v1 + 248);
    v116 = *(v1 + 168);
    v117 = *(v1 + 144);

    v115(v116, v117);
  }

  v118 = *(v1 + 200);
  v119 = *(v1 + 160);
  sub_1D917737C();
  sub_1D917731C();
  v120 = sub_1D917737C();
  v121 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v122 = *(v1 + 160);
    v123 = swift_slowAlloc();
    *v123 = 0;
    v124 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v120, v121, v124, "ScoutingAlignmentStep", "", v123, 2u);
    MEMORY[0x1DA72CB90](v123, -1, -1);
  }

  v126 = *(v1 + 240);
  v125 = *(v1 + 248);
  v128 = *(v1 + 216);
  v127 = *(v1 + 224);
  v129 = *(v1 + 208);
  v130 = *(v1 + 176);
  v131 = *(v1 + 160);
  v132 = *(v1 + 144);

  v129(v130, v131, v132);
  v133 = *(v127 + 48);
  v134 = *(v127 + 52);
  swift_allocObject();
  v135 = sub_1D91773EC();
  *(v1 + 296) = v135;
  v126(v131, v132);

  *(v1 + 64) = v135;
  v136 = swift_task_alloc();
  *(v1 + 304) = v136;
  *v136 = v1;
  v136[1] = sub_1D912E57C;
  v137 = *(v1 + 112);
  v138 = *(v1 + 88);
  v139 = *MEMORY[0x1E69E9840];

  return sub_1D912F98C(v138, v2);
}

uint64_t sub_1D912F3D8()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 136);
  sub_1D912F4E0(*(v0 + 88), *(v0 + 112), *(v0 + 232), (v0 + 64));

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8();
}

uint64_t sub_1D912F4E0(double a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = a4;
  v5 = sub_1D91773AC();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v41 = sub_1D917734C();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = sub_1D917741C();
  v19 = sub_1D9178D1C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = a1;
    _os_log_impl(&dword_1D8CEC000, v18, v19, "Scouting: Ending task for %f", v20, 0xCu);
    MEMORY[0x1DA72CB90](v20, -1, -1);
  }

  if (qword_1ECAB3558 != -1)
  {
    swift_once();
  }

  v21 = sub_1D917739C();
  __swift_project_value_buffer(v21, qword_1ECAB78E8);
  v22 = sub_1D917737C();
  sub_1D91773DC();
  v23 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    v24 = v39;
    if ((*(v39 + 88))(v10, v5) == *MEMORY[0x1E69E93E8])
    {
      v25 = "[Error] Interval already ended";
    }

    else
    {
      (*(v24 + 8))(v10, v5);
      v25 = "";
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v22, v23, v27, "ScoutingAlignmentResolve", v25, v26, 2u);
    MEMORY[0x1DA72CB90](v26, -1, -1);
  }

  v28 = *(v11 + 8);
  result = v28(v17, v41);
  if (*v40)
  {
    v30 = *v40;

    v31 = sub_1D917737C();
    sub_1D91773DC();
    v32 = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      v33 = v38;
      sub_1D917740C();

      v34 = v39;
      if ((*(v39 + 88))(v33, v5) == *MEMORY[0x1E69E93E8])
      {
        v35 = "[Error] Interval already ended";
      }

      else
      {
        (*(v34 + 8))(v33, v5);
        v35 = "";
      }

      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v31, v32, v37, "ScoutingAlignmentStep", v35, v36, 2u);
      MEMORY[0x1DA72CB90](v36, -1, -1);
    }

    return v28(v14, v41);
  }

  return result;
}

uint64_t sub_1D912F98C(double a1, double a2)
{
  *(v3 + 104) = v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  v4 = sub_1D91773AC();
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE50, &qword_1D91BAD38);
  *(v3 + 136) = v7;
  v8 = *(v7 - 8);
  *(v3 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE58, &qword_1D91BAD40);
  *(v3 + 160) = v10;
  v11 = *(v10 - 8);
  *(v3 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE60, &qword_1D91BAD48);
  *(v3 + 184) = v13;
  v14 = *(v13 - 8);
  *(v3 + 192) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE68, &qword_1D91BAD50);
  *(v3 + 208) = v16;
  v17 = *(v16 - 8);
  *(v3 + 216) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  v19 = sub_1D917734C();
  *(v3 + 232) = v19;
  v20 = *(v19 - 8);
  *(v3 + 240) = v20;
  v21 = *(v20 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D912FC7C, 0, 0);
}

uint64_t sub_1D912FC7C()
{
  if (qword_1ECAB1050 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917739C();
  __swift_project_value_buffer(v1, qword_1ECAB1058);
  if (qword_1ECAB3558 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 280);
  *(v0 + 288) = __swift_project_value_buffer(v1, qword_1ECAB78E8);
  sub_1D917737C();
  sub_1D917731C();
  v3 = sub_1D917737C();
  v4 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v5 = *(v0 + 280);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v3, v4, v7, "ScoutingAssetRead", "", v6, 2u);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  v8 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 200);
  v13 = *(v0 + 192);
  v31 = *(v0 + 184);
  v32 = *(v0 + 224);
  v34 = *(v0 + 208);
  v35 = *(v0 + 176);
  v14 = *(v0 + 152);
  v36 = *(v0 + 144);
  v33 = *(v0 + 136);
  v15 = *(v0 + 104);
  v16 = *(v0 + 96);

  v17 = *(v10 + 16);
  *(v0 + 296) = v17;
  *(v0 + 304) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v8, v9, v11);
  v18 = sub_1D91773FC();
  *(v0 + 312) = v18;
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v0 + 320) = sub_1D91773EC();
  v21 = *(v10 + 8);
  *(v0 + 328) = v21;
  *(v0 + 336) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v9, v11);
  v22 = *(v15 + 16);
  v23 = *(v15 + 24);
  sub_1D9179F5C();
  sub_1D91790FC();
  sub_1D91790FC();
  sub_1D9178C7C();
  *(v0 + 72) = sub_1D912A550(v23, (v0 + 448));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE70, &qword_1D91BAD58);
  sub_1D8CF48EC(&qword_1ECABAE78, &qword_1ECABAE70, &qword_1D91BAD58);
  sub_1D9177C8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE80, &unk_1D91BAD60);
  sub_1D8CF48EC(&qword_1ECABAE88, &qword_1ECABAE60, &qword_1D91BAD48);
  sub_1D9177C6C();

  (*(v13 + 8))(v12, v31);
  v24 = sub_1D8CF48EC(&qword_1ECABAE90, &qword_1ECABAE68, &qword_1D91BAD50);
  MEMORY[0x1DA729240](v34, v24);
  sub_1D917797C();
  (*(v36 + 8))(v14, v33);
  v25 = sub_1D8CF48EC(&qword_1ECABAE98, &qword_1ECABAE58, &qword_1D91BAD40);
  v26 = *(MEMORY[0x1E69E85A8] + 4);
  v27 = swift_task_alloc();
  *(v0 + 344) = v27;
  *v27 = v0;
  v27[1] = sub_1D9130158;
  v28 = *(v0 + 176);
  v29 = *(v0 + 160);

  return MEMORY[0x1EEE6D8C8](v0 + 16, v29, v25);
}

uint64_t sub_1D9130158()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_1D9130574;
  }

  else
  {
    v3 = sub_1D913026C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D913026C()
{
  v1 = *(v0 + 16);
  *(v0 + 360) = v1;
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = *(v0 + 288);
    v7 = *(v0 + 264);
    *(v0 + 400) = *(v0 + 24);
    *(v0 + 408) = v2;
    *(v0 + 416) = v3;
    *(v0 + 432) = v4;
    *(v0 + 440) = v5;
    sub_1D917737C();
    sub_1D917731C();
    v8 = sub_1D917737C();
    v9 = sub_1D9178F5C();
    if (sub_1D917918C())
    {
      v10 = *(v0 + 264);
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v8, v9, v12, "ScoutingSignatureMatching", "", v11, 2u);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    v42 = *(v0 + 328);
    v43 = *(v0 + 336);
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = *(v0 + 296);
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v18 = *(v0 + 232);
    v19 = *(v0 + 104);

    v15(v16, v17, v18);
    v20 = *(v13 + 48);
    v21 = *(v13 + 52);
    swift_allocObject();
    *(v0 + 368) = sub_1D91773EC();
    v42(v17, v18);
    v22 = *(v19 + 32);
    v23 = *(MEMORY[0x1E697B778] + 4);
    v24 = swift_task_alloc();
    *(v0 + 376) = v24;
    *v24 = v0;
    v24[1] = sub_1D9130740;

    return MEMORY[0x1EEDD8DD8](v1);
  }

  else
  {
    v25 = *(v0 + 320);
    v26 = *(v0 + 216);
    v27 = *(v0 + 224);
    v28 = *(v0 + 208);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    sub_1D9131F00();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();

    (*(v26 + 8))(v27, v28);
    v31 = *(v0 + 272);
    v30 = *(v0 + 280);
    v33 = *(v0 + 256);
    v32 = *(v0 + 264);
    v34 = *(v0 + 248);
    v35 = *(v0 + 224);
    v36 = *(v0 + 200);
    v37 = *(v0 + 176);
    v38 = *(v0 + 152);
    v39 = *(v0 + 128);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_1D9130574()
{
  *(v0 + 80) = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D9130608, 0, 0);
}

uint64_t sub_1D9130608()
{
  v1 = v0[40];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v20 = v0[44];
  v9 = v0[34];
  v8 = v0[35];
  v11 = v0[32];
  v10 = v0[33];
  v12 = v0[31];
  v13 = v0[28];
  v14 = v0[25];
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[16];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D9130740(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 376);
  v7 = *v3;
  *(v4 + 384) = a1;
  *(v4 + 392) = a2;
  *(v4 + 496) = a3;

  return MEMORY[0x1EEE6DFA0](sub_1D9130844, 0, 0);
}

uint64_t sub_1D9130844()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 288);
  v3 = *(v0 + 256);
  v4 = sub_1D917737C();
  sub_1D91773DC();
  v5 = sub_1D9178F4C();
  if (sub_1D917918C())
  {
    v6 = *(v0 + 368);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 112);

    sub_1D917740C();

    if ((*(v8 + 88))(v7, v9) == *MEMORY[0x1E69E93E8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
      v10 = "";
    }

    v11 = *(v0 + 256);
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v4, v5, v13, "ScoutingSignatureMatching", v10, v12, 2u);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  v14 = *(v0 + 496);
  v16 = *(v0 + 328);
  v15 = *(v0 + 336);
  v17 = *(v0 + 256);
  v18 = *(v0 + 232);

  v16(v17, v18);
  if (v14)
  {
    if (v14 == 1)
    {
      v96 = 0;
      v19 = *(v0 + 360);
      v92 = 2;
LABEL_18:

      v70 = *(v0 + 368);
      v71 = *(v0 + 320);
      v72 = *(v0 + 280);
      v80 = *(v0 + 272);
      v81 = *(v0 + 264);
      v82 = *(v0 + 256);
      v83 = *(v0 + 248);
      v73 = *(v0 + 216);
      v74 = *(v0 + 224);
      v75 = *(v0 + 208);
      v76 = *(v0 + 168);
      v77 = *(v0 + 176);
      v78 = *(v0 + 160);
      v85 = *(v0 + 200);
      v88 = *(v0 + 152);
      v91 = *(v0 + 128);
      sub_1D9131F70(*(v0 + 384), *(v0 + 392), *(v0 + 496));

      (*(v76 + 8))(v77, v78);
      (*(v73 + 8))(v74, v75);

      v79 = *(v0 + 8);

      return v79(v96, v92);
    }

    v50 = *(v0 + 384);
    v49 = *(v0 + 392);
    v51 = *(v0 + 360);
    v52 = *(v0 + 368);
    v53 = *(v0 + 320);
    v54 = *(v0 + 216);
    v90 = *(v0 + 208);
    v95 = *(v0 + 224);
    v55 = *(v0 + 168);
    v87 = *(v0 + 176);
    v56 = *(v0 + 160);
    swift_willThrow();
    v57 = v50;

    sub_1D9131F70(v50, v49, 2u);

    (*(v55 + 8))(v87, v56);
    (*(v54 + 8))(v95, v90);
  }

  else
  {
    v97 = *(v0 + 384);
    v20 = *(v0 + 288);
    v21 = *(v0 + 248);
    sub_1D917737C();
    sub_1D917731C();
    v22 = sub_1D917737C();
    v23 = sub_1D9178F5C();
    if (sub_1D917918C())
    {
      v24 = *(v0 + 248);
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v22, v23, v26, "ScoutingSignatureAlignment", "", v25, 2u);
      MEMORY[0x1DA72CB90](v25, -1, -1);
    }

    v93 = *(v0 + 352);
    v27 = *(v0 + 328);
    v28 = *(v0 + 336);
    v30 = *(v0 + 304);
    v29 = *(v0 + 312);
    v31 = *(v0 + 296);
    v32 = *(v0 + 272);
    v33 = *(v0 + 248);
    v34 = *(v0 + 232);
    v36 = *(v0 + 88);
    v35 = *(v0 + 96);

    v31(v32, v33, v34);
    v37 = *(v29 + 48);
    v38 = *(v29 + 52);
    swift_allocObject();
    v39 = sub_1D91773EC();
    v27(v33, v34);
    v40 = sub_1D9131FBC(v97, v0 + 400, v36, v35);
    if (!v93)
    {
      v19 = *(v0 + 360);
      v92 = v41;
      v96 = v40;
      sub_1D91317F0(v39, "ScoutingSignatureAlignment");

      goto LABEL_18;
    }

    v43 = *(v0 + 384);
    v42 = *(v0 + 392);
    v44 = *(v0 + 360);
    v45 = *(v0 + 368);
    v46 = *(v0 + 320);
    v47 = *(v0 + 216);
    v89 = *(v0 + 208);
    v94 = *(v0 + 224);
    v48 = *(v0 + 168);
    v84 = *(v0 + 160);
    v86 = *(v0 + 176);
    sub_1D91317F0(v39, "ScoutingSignatureAlignment");

    sub_1D9131F70(v43, v42, 0);

    (*(v48 + 8))(v86, v84);
    (*(v47 + 8))(v94, v89);
  }

  v59 = *(v0 + 272);
  v58 = *(v0 + 280);
  v61 = *(v0 + 256);
  v60 = *(v0 + 264);
  v62 = *(v0 + 248);
  v63 = *(v0 + 224);
  v64 = *(v0 + 200);
  v65 = *(v0 + 176);
  v66 = *(v0 + 152);
  v67 = *(v0 + 128);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t AssetReaderScoutingAligner.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderScoutingAligner_logger;
  v3 = sub_1D917744C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t AssetReaderScoutingAligner.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderScoutingAligner_logger;
  v3 = sub_1D917744C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D9130F20(double a1, double a2, double a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D9130FD0;

  return sub_1D912D688(a1, a2, a3);
}

uint64_t sub_1D9130FD0(double a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5.n128_f64[0] = a1;
  }

  return v6(v5);
}

uint64_t sub_1D91310D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v81 = *MEMORY[0x1E69E9840];
  v69 = sub_1D91773AC();
  v70 = *(v69 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1D917734C();
  v6 = *(v73 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  v72 = *a1;
  if (qword_1ECAB3558 != -1)
  {
    swift_once();
  }

  v15 = sub_1D917739C();
  __swift_project_value_buffer(v15, qword_1ECAB78E8);
  v16 = sub_1D917737C();
  sub_1D91773DC();
  v17 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    v18 = v70;
    v19 = v69;
    if ((*(v70 + 88))(v5, v69) == *MEMORY[0x1E69E93E8])
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v18 + 8))(v5, v19);
      v20 = "";
    }

    v21 = v17;
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v16, v21, v23, "ScoutingAssetRead", v20, v22, 2u);
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  v24 = *(v6 + 8);
  v25 = v14;
  v26 = v73;
  v24(v25, v73);
  sub_1D917737C();
  sub_1D917731C();
  v27 = sub_1D917737C();
  v28 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v27, v28, v30, "ScoutingSignatureGeneration", "", v29, 2u);
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  (*(v6 + 16))(v71, v11, v26);
  v31 = sub_1D91773FC();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_1D91773EC();
  v24(v11, v26);
  v35 = [objc_allocWithZone(MEMORY[0x1E697B7E0]) init];
  v36 = v72;
  v37 = *(v72 + 16);
  if (v37)
  {
    v38 = *(v72 + 48);
    v77 = *(v72 + 32);
    v78 = v38;
    v79 = *(v72 + 64);
    v73 = *(v72 + 80);
    v80 = v73;
    v40 = *(&v77 + 1);
    v39 = v77;
    v70 = *(&v38 + 1);
    v41 = v38;
    v43 = *(&v79 + 1);
    v42 = v79;
    sub_1D9132394(&v77, &lhs);
    lhs.value = 0;
    v44 = [v35 appendBuffer:v39 atTime:0 error:&lhs];
    value = lhs.value;
    if (!v44)
    {
LABEL_21:
      v60 = value;
      sub_1D9176A6C();

      swift_willThrow();
      sub_1D9132404(&v77);
      goto LABEL_22;
    }

    v46 = lhs.value;
    sub_1D9132404(&v77);
    if (v37 == 1)
    {
LABEL_24:
      v62 = [v35 signature];

      v63 = v68;
      *v68 = v62;
      v63[1] = v40;
      v64 = v70;
      v63[2] = v41;
      v63[3] = v64;
      v63[4] = v42;
      v63[5] = v43;
      v63[6] = v73;
      sub_1D91317F0(v34, "ScoutingSignatureGeneration");

      goto LABEL_25;
    }

    v66 = v41;
    v67 = v40;
    v69 = v34;
    if (*(v36 + 16) >= 2uLL)
    {
      v47 = (v36 + 88);
      v71 = (2 - v37);
      v48 = 1;
      while (1)
      {
        v49 = v35;
        v50 = *(v47 + 6);
        v51 = v47[1];
        v52 = *v47;
        v79 = v47[2];
        v80 = v50;
        v77 = v52;
        v78 = v51;
        v34 = HIDWORD(v43);
        v53 = v52;
        v54 = v79;
        sub_1D9132394(&v77, &lhs);
        rhs.epoch = v50;
        lhs.value = v42;
        *&lhs.timescale = v43;
        lhs.epoch = v73;
        *&rhs.value = v54;
        v35 = v49;
        CMTimeAdd(&v74, &lhs, &rhs);
        v42 = v74.value;
        v43 = *&v74.timescale;
        epoch = v74.epoch;
        lhs.value = 0;
        v56 = [v49 appendBuffer:v53 atTime:0 error:&lhs];
        value = lhs.value;
        if (!v56)
        {
          v34 = v69;
          goto LABEL_21;
        }

        v73 = epoch;
        v57 = &v71[v48];
        v58 = lhs.value;
        sub_1D9132404(&v77);
        if (v57 == 1)
        {
          break;
        }

        ++v48;
        v47 = (v47 + 56);
        if (v48 >= *(v72 + 16))
        {
          goto LABEL_18;
        }
      }

      v34 = v69;
      v40 = v67;
      v41 = v66;
      goto LABEL_24;
    }

LABEL_18:
    __break(1u);
  }

  sub_1D913246C();
  swift_allocError();
  *v59 = 1;
  swift_willThrow();
LABEL_22:

  sub_1D91317F0(v34, "ScoutingSignatureGeneration");

LABEL_25:
  v65 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D91317F0(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_1D91773AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D917734C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB3558 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917739C();
  __swift_project_value_buffer(v12, qword_1ECAB78E8);
  v13 = sub_1D917737C();
  sub_1D91773DC();
  v14 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v13, v14, v17, v20, v15, v16, 2u);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

char *sub_1D9131A80(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  (*(v9 + 104))(v12, *MEMORY[0x1E69E7FA0], v8);
  v13 = sub_1D9178E6C();
  (*(v9 + 8))(v12, v8);
  type metadata accessor for AssetReader.StateController();
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAED0, &qword_1D91BAD90);
  v15 = swift_allocObject();
  *(v15 + 20) = 0;
  *(v15 + 16) = 0;
  v14[2] = v15;
  type metadata accessor for AssetReader();
  v14[3] = 0;
  v14[4] = 0;
  v16 = swift_allocObject();
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 1;
  *(v16 + 88) = 0;
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  *(v4 + 2) = v16;
  *(v4 + 3) = a1;
  v17 = objc_allocWithZone(MEMORY[0x1E697B7C0]);
  v18 = a1;
  *(v4 + 4) = [v17 initWithCatalog_];
  v19 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderScoutingAligner_logger;
  v20 = sub_1D917744C();
  (*(*(v20 - 8) + 32))(&v4[v19], a3, v20);
  return v4;
}

uint64_t type metadata accessor for AssetReaderScoutingAligner()
{
  result = qword_1ECABAE38;
  if (!qword_1ECABAE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9131CEC()
{
  result = sub_1D917744C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of AssetReaderScoutingAligner.align(at:within:)(double a1, double a2, double a3)
{
  v8 = *(*v3 + 120);
  v15 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D9129B88;
  v11.n128_f64[0] = a1;
  v12.n128_f64[0] = a2;
  v13.n128_f64[0] = a3;

  return v15(v11, v12, v13);
}

unint64_t sub_1D9131F00()
{
  result = qword_1ECABAE48;
  if (!qword_1ECABAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAE48);
  }

  return result;
}

void sub_1D9131F70(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_1D9132394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADB8, &qword_1D91BAB88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9132404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABADB8, &qword_1D91BAB88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D913246C()
{
  result = qword_1ECABAEC8;
  if (!qword_1ECABAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAEC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetReaderScoutingAligner.ScoutingStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetReaderScoutingAligner.ScoutingStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1D9132568()
{
  result = qword_1ECABAED8;
  if (!qword_1ECABAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAED8);
  }

  return result;
}

unint64_t sub_1D91325D0()
{
  result = qword_1ECABAEE0;
  if (!qword_1ECABAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAEE0);
  }

  return result;
}

void (*sub_1D9132624(void (*result)(uint64_t), uint64_t a2, uint64_t a3, char a4))(uint64_t)
{
  v5 = v4;
  v6 = a3;
  v18 = result;
  if (!a4)
  {
    return (result)(a3);
  }

  if (a4 == 1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1D917931C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF60, &qword_1D91BB030);
      sub_1D8CF48EC(&qword_1ECABAF68, &qword_1ECABAF60, &qword_1D91BB030);
      result = sub_1D9178B3C();
      v6 = v19;
      v7 = v20;
      v8 = v21;
      v9 = v22;
      v10 = v23;
    }

    else
    {
      v11 = -1 << *(a3 + 32);
      v7 = a3 + 56;
      v8 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(a3 + 56);

      v9 = 0;
    }

    if (v6 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v14 = v9;
    v15 = v10;
    if (v10)
    {
LABEL_15:
      v16 = (v15 - 1) & v15;
      v17 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v15)))));

      if (v17)
      {
        while (1)
        {
          v18(v17);
          if (v5)
          {
            break;
          }

          v10 = v16;
          if ((v6 & 0x8000000000000000) == 0)
          {
            goto LABEL_11;
          }

LABEL_17:
          if (sub_1D917938C())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF60, &qword_1D91BB030);
            swift_dynamicCast();
            v17 = v24;
            v16 = v10;
            if (v24)
            {
              continue;
            }
          }

          return sub_1D8D1B144();
        }

        sub_1D8D1B144();
      }

      else
      {
        return sub_1D8D1B144();
      }
    }

    else
    {
      while (1)
      {
        v9 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v9 >= ((v8 + 64) >> 6))
        {
          return sub_1D8D1B144();
        }

        v15 = *(v7 + 8 * v9);
        ++v14;
        if (v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void sub_1D913289C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  if (*(v1 + 24) == 1)
  {
    swift_beginAccess();
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    swift_beginAccess();
    sub_1D8D546A0(v4, v5);
    sub_1D9138258(a1, v1 + 56);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    MEMORY[0x1EEE9AC00](v6);
    v7[2] = a1;
    sub_1D9132624(sub_1D8D5480C, v7, v4, v5);
    sub_1D8D54860(v4, v5);
  }

  else
  {

    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1D91329CC(void *a1)
{
  v10 = a1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 0;
    swift_beginAccess();
    v4 = *(v1 + 32);
    v5 = a1;
    *(v1 + 32) = a1;
    sub_1D9138588(v4);
    swift_beginAccess();
    v6 = *(v1 + 40);
    *(v1 + 40) = 0;
    v7 = *(v1 + 48);
    *(v1 + 48) = 2;
    os_unfair_lock_unlock(v3 + 4);
    MEMORY[0x1EEE9AC00](v8);
    v9[2] = &v10;
    sub_1D9132624(sub_1D9138598, v9, v6, v7);
    sub_1D8D54860(v6, v7);
  }

  else
  {

    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1D9132B0C(void (*a1)(uint64_t))
{
  v3 = v1[2];
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  os_unfair_lock_lock((v3 + 20));
  a1(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  v5 = v1[3];
  if (v5)
  {
    v6 = v1[4];

    os_unfair_lock_lock((v3 + 20));
    v7 = *(v3 + 16);
    os_unfair_lock_unlock((v3 + 20));
    v5(v4, v7);
    sub_1D8D15664(v5);
  }
}

uint64_t AssetReaderTimelineAligner.__allocating_init(catalog:cache:episodeID:logger:signposter:workQueue:elapsedTimeProvider:analyticsChannel:)(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v49 = a6;
  v50 = a8;
  v47 = a4;
  v48 = a5;
  v46 = a3;
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v10 + 48);
  v19 = *(v10 + 52);
  v20 = swift_allocObject();
  v21 = a2[1];
  v51 = *a2;
  v52 = v21;
  v22 = a2[3];
  v53 = a2[2];
  v54 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEE8, &unk_1D91BAEF0);
  v23 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v23 + 16) = v24;
  *(v23 + 24) = 1;
  *(v23 + 32) = xmmword_1D918BEE0;
  *(v23 + 48) = 2;
  v25 = MEMORY[0x1E69E7CC0];
  *(v23 + 56) = 0u;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0;
  *(v23 + 96) = v25;
  *(v20 + 32) = v23;
  v26 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_started;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v27 = swift_allocObject();
  *(v27 + 20) = 0;
  *(v27 + 16) = 0;
  *(v20 + v26) = v27;
  *(v20 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_subscriptions) = MEMORY[0x1E69E7CD0];
  v28 = v20 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_elapsedTimeProvider;
  *(v20 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_elapsedTimeProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AssetReader.StateController();
  v29 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAED0, &qword_1D91BAD90);
  v30 = swift_allocObject();
  *(v30 + 20) = 0;
  *(v30 + 16) = 0;
  v29[3] = 0;
  v29[4] = 0;
  v29[2] = v30;
  if (qword_1ECAB34C0 != -1)
  {
    swift_once();
  }

  v31 = qword_1ECAB71F8;
  type metadata accessor for AssetReader();
  v32 = swift_allocObject();
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0u;
  *(v32 + 64) = 0u;
  *(v32 + 80) = 1;
  *(v32 + 88) = 0;
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;
  *(v20 + 16) = v32;
  v33 = qword_1ECAB0CA0;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v13, qword_1ECAB0CA8);
  (*(v14 + 16))(v17, v35, v13);
  if (qword_1ECAB34C8 != -1)
  {
    swift_once();
  }

  v36 = qword_1ECAB7200;
  type metadata accessor for ShazamMatcher();
  swift_allocObject();
  v37 = v36;
  v38 = sub_1D9141E84(a1, v17, v37);

  *(v20 + 24) = v38;
  v39 = v52;
  *(v20 + 40) = v51;
  *(v20 + 56) = v39;
  v40 = v54;
  *(v20 + 72) = v53;
  *(v20 + 88) = v40;
  v41 = v47;
  *(v20 + 104) = v46;
  (*(v14 + 32))(v20 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_logger, v41, v13);
  v42 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_signposter;
  v43 = sub_1D917739C();
  (*(*(v43 - 8) + 32))(v20 + v42, v48, v43);
  *(v20 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_workQueue) = v49;
  *(v28 + 8) = v50;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v20 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_analyticsChannel) = a9;
  return v20;
}

uint64_t AssetReaderTimelineAligner.init(catalog:cache:episodeID:logger:signposter:workQueue:elapsedTimeProvider:analyticsChannel:)(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v46 = a6;
  v47 = a8;
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[1];
  v48 = *a2;
  v49 = v18;
  v19 = a2[3];
  v50 = a2[2];
  v51 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEE8, &unk_1D91BAEF0);
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v20 + 16) = v21;
  *(v20 + 24) = 1;
  *(v20 + 32) = xmmword_1D918BEE0;
  *(v20 + 48) = 2;
  v22 = MEMORY[0x1E69E7CC0];
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0;
  *(v20 + 96) = v22;
  *(v10 + 32) = v20;
  v23 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_started;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v24 = swift_allocObject();
  *(v24 + 20) = 0;
  *(v24 + 16) = 0;
  *(v10 + v23) = v24;
  *(v10 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_subscriptions) = MEMORY[0x1E69E7CD0];
  v25 = v10 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_elapsedTimeProvider;
  *(v10 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_elapsedTimeProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AssetReader.StateController();
  v26 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAED0, &qword_1D91BAD90);
  v27 = swift_allocObject();
  *(v27 + 20) = 0;
  *(v27 + 16) = 0;
  v26[3] = 0;
  v26[4] = 0;
  v26[2] = v27;
  if (qword_1ECAB34C0 != -1)
  {
    swift_once();
  }

  v28 = qword_1ECAB71F8;
  type metadata accessor for AssetReader();
  v29 = swift_allocObject();
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 80) = 1;
  *(v29 + 88) = 0;
  *(v29 + 16) = v26;
  *(v29 + 24) = v28;
  *(v10 + 16) = v29;
  v30 = qword_1ECAB0CA0;
  v31 = v28;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v13, qword_1ECAB0CA8);
  (*(v14 + 16))(v17, v32, v13);
  if (qword_1ECAB34C8 != -1)
  {
    swift_once();
  }

  v33 = qword_1ECAB7200;
  type metadata accessor for ShazamMatcher();
  swift_allocObject();
  v34 = v33;
  v35 = sub_1D9141E84(a1, v17, v34);

  *(v10 + 24) = v35;
  v36 = v49;
  *(v10 + 40) = v48;
  *(v10 + 56) = v36;
  v37 = v51;
  *(v10 + 72) = v50;
  *(v10 + 88) = v37;
  v38 = v44;
  *(v10 + 104) = v43;
  (*(v14 + 32))(v10 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_logger, v38, v13);
  v39 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_signposter;
  v40 = sub_1D917739C();
  (*(*(v40 - 8) + 32))(v10 + v39, v45, v40);
  *(v10 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_workQueue) = v46;
  *(v25 + 8) = v47;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v10 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_analyticsChannel) = a9;
  return v10;
}

uint64_t AssetReaderTimelineAligner.align(asset:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF28, &qword_1D91BAF00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_started);
  os_unfair_lock_lock((v8 + 20));
  v9 = *(v8 + 16);
  *(v8 + 16) = 1;
  os_unfair_lock_unlock((v8 + 20));
  if ((v9 & 1) == 0)
  {
    sub_1D9133B98(a1);
  }

  v12[1] = *(v1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEE8, &unk_1D91BAEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF30, &qword_1D91BAF08);
  sub_1D8CF48EC(&qword_1ECABAF38, &qword_1ECABAEE8, &unk_1D91BAEF0);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECABAF40, &qword_1ECABAF28, &qword_1D91BAF00);
  v10 = sub_1D9177B1C();
  (*(v4 + 8))(v7, v3);
  return v10;
}

Swift::Void __swiftcall AssetReaderTimelineAligner.pauseReadingIfNeeded()()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = v1[2];
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  os_unfair_lock_lock((v2 + 20));
  if (*(v2 + 16) == 1)
  {
    *(v2 + 16) = 0;
  }

  os_unfair_lock_unlock((v2 + 20));
  v4 = v1[3];
  if (v4)
  {
    v5 = v1[4];

    os_unfair_lock_lock((v2 + 20));
    v6 = *(v2 + 16);
    os_unfair_lock_unlock((v2 + 20));
    v4(v3, v6);

    sub_1D8D15664(v4);
  }
}

Swift::Void __swiftcall AssetReaderTimelineAligner.resumeReadingIfNeeded()()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = v1[2];
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  os_unfair_lock_lock((v2 + 20));
  if (!*(v2 + 16))
  {
    *(v2 + 16) = 1;
  }

  os_unfair_lock_unlock((v2 + 20));
  v4 = v1[3];
  if (v4)
  {
    v5 = v1[4];

    os_unfair_lock_lock((v2 + 20));
    v6 = *(v2 + 16);
    os_unfair_lock_unlock((v2 + 20));
    v4(v3, v6);

    sub_1D8D15664(v4);
  }
}

Swift::Void __swiftcall AssetReaderTimelineAligner.cancelReading()()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = v1[2];
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  os_unfair_lock_lock((v2 + 20));
  if (*(v2 + 16) <= 1u)
  {
    *(v2 + 16) = 2;
  }

  os_unfair_lock_unlock((v2 + 20));
  v4 = v1[3];
  if (v4)
  {
    v5 = v1[4];

    os_unfair_lock_lock((v2 + 20));
    v6 = *(v2 + 16);
    os_unfair_lock_unlock((v2 + 20));
    v4(v3, v6);

    sub_1D8D15664(v4);
  }
}

char *AssetReaderTimelineAligner.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 6);
  v5 = *(v0 + 8);
  v6 = *(v0 + 10);
  v7 = *(v0 + 12);

  v8 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_logger;
  v9 = sub_1D917744C();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  v10 = OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_signposter;
  v11 = sub_1D917739C();
  (*(*(v11 - 8) + 8))(&v0[v10], v11);

  v12 = *&v0[OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_started];

  v13 = *&v0[OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_analyticsChannel];
  swift_unknownObjectRelease();
  v14 = *&v0[OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_subscriptions];

  sub_1D8EB07F4(&v0[OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_elapsedTimeProvider]);
  return v0;
}

uint64_t AssetReaderTimelineAligner.__deallocating_deinit()
{
  AssetReaderTimelineAligner.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1D9133B98(char *a1)
{
  v2 = v1;
  v102 = a1;
  v3 = sub_1D91773AC();
  v4 = *(v3 - 8);
  v100 = v3;
  v101 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v95 = (&v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v93 - v8;
  v9 = sub_1D9176C2C();
  v98 = *(v9 - 8);
  v99 = v9;
  v10 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D917734C();
  v12 = *(v105 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v96 = (&v93 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v93 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v93 - v22;
  sub_1D917737C();
  sub_1D917731C();
  v24 = sub_1D917737C();
  v25 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v24, v25, v27, "AlignmentReadCache", "", v26, 2u);
    MEMORY[0x1DA72CB90](v26, -1, -1);
  }

  v28 = v105;
  (*(v12 + 16))(v20, v23, v105);
  v29 = sub_1D91773FC();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_1D91773EC();
  v34 = v12 + 8;
  v33 = *(v12 + 8);
  v103 = v34;
  (v33)(v23, v28);
  v35 = v102;
  sub_1D91379B0(&v106);
  v36 = v107;
  v104 = v32;
  if (v107)
  {
    v37 = v106;
    v39 = *(v1 + 40);
    v38 = *(v1 + 48);

    v39(&v111, &v106);

    v93 = v111;
    if (v111)
    {
      v40 = v35;
      v41 = sub_1D917741C();
      v42 = sub_1D9178D1C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v102 = v33;
        v44 = v43;
        v95 = swift_slowAlloc();
        v106 = v95;
        *v44 = 141558275;
        *(v44 + 4) = 1752392040;
        *(v44 + 12) = 2081;
        v45 = [v40 URL];
        v46 = v97;
        sub_1D9176B9C();

        sub_1D91382C8(&qword_1ECAB2C88, MEMORY[0x1E6968FB0]);
        v47 = v99;
        v48 = sub_1D9179A4C();
        v50 = v49;
        (*(v98 + 8))(v46, v47);
        v51 = sub_1D8CFA924(v48, v50, &v106);

        *(v44 + 14) = v51;
        _os_log_impl(&dword_1D8CEC000, v41, v42, "Using in-memory alignment cache for asset: %{private,mask.hash}s", v44, 0x16u);
        v52 = v95;
        __swift_destroy_boxed_opaque_existential_1Tm(v95);
        MEMORY[0x1DA72CB90](v52, -1, -1);
        v53 = v44;
        v33 = v102;
        MEMORY[0x1DA72CB90](v53, -1, -1);
      }

      v54 = v96;
      v55 = v93;
      v56 = *(v2 + 32);
      v109 = type metadata accessor for AssetReaderTimelineAlignment();
      v110 = &protocol witness table for AssetReaderTimelineAlignment;
      v106 = v55;

      sub_1D913289C(&v106);
      sub_1D8D08A50(&v106, &qword_1ECABAF58, &qword_1D91BB028);
      v57 = sub_1D917737C();
      sub_1D91773DC();
      v58 = sub_1D9178F4C();
      v59 = sub_1D917918C();
      v60 = v101;
      if (v59)
      {

        v61 = v94;
        sub_1D917740C();
        v62 = v61;

        v63 = v61;
        v64 = v100;
        if ((*(v60 + 88))(v63, v100) == *MEMORY[0x1E69E93E8])
        {
          v65 = "[Error] Interval already ended";
        }

        else
        {
          (*(v60 + 8))(v62, v64);
          v65 = "HIT";
        }

        v91 = swift_slowAlloc();
        *v91 = 0;
        v92 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v57, v58, v92, "AlignmentReadCache", v65, v91, 2u);
        MEMORY[0x1DA72CB90](v91, -1, -1);
      }

      else
      {
      }

      (v33)(v54, v105);
      return;
    }

    v96 = v37;
  }

  else
  {
    v66 = v35;
    v96 = v35;
  }

  v67 = sub_1D917737C();
  sub_1D91773DC();
  v68 = sub_1D9178F4C();
  if (sub_1D917918C())
  {
    v69 = v33;

    v70 = v95;
    sub_1D917740C();

    v71 = v100;
    v72 = v101;
    if ((*(v101 + 88))(v70, v100) == *MEMORY[0x1E69E93E8])
    {
      v73 = "[Error] Interval already ended";
    }

    else
    {
      (*(v72 + 8))(v70, v71);
      v73 = "MISS";
    }

    v74 = swift_slowAlloc();
    *v74 = 0;
    v75 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v67, v68, v75, "AlignmentReadCache", v73, v74, 2u);
    MEMORY[0x1DA72CB90](v74, -1, -1);
    v33 = v69;
  }

  (v33)(v15, v105);
  v76 = v35;
  v77 = sub_1D917741C();
  v78 = sub_1D9178D1C();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v106 = v105;
    *v79 = 141558275;
    *(v79 + 4) = 1752392040;
    *(v79 + 12) = 2081;
    v80 = [v76 URL];
    v81 = v36;
    v82 = v97;
    sub_1D9176B9C();

    sub_1D91382C8(&qword_1ECAB2C88, MEMORY[0x1E6968FB0]);
    v83 = v99;
    v84 = sub_1D9179A4C();
    v86 = v85;
    v87 = v82;
    v36 = v81;
    (*(v98 + 8))(v87, v83);
    v88 = sub_1D8CFA924(v84, v86, &v106);

    *(v79 + 14) = v88;
    _os_log_impl(&dword_1D8CEC000, v77, v78, "Generating alignments for asset: %{private,mask.hash}s", v79, 0x16u);
    v89 = v105;
    __swift_destroy_boxed_opaque_existential_1Tm(v105);
    MEMORY[0x1DA72CB90](v89, -1, -1);
    MEMORY[0x1DA72CB90](v79, -1, -1);
  }

  v90 = v96;
  v106 = v96;
  v107 = v36;
  v108 = v36 == 0;
  sub_1D9134574(v76, &v106);

  sub_1D9138248(v90, v36, v36 == 0);
}

uint64_t sub_1D9134574(void *a1, uint64_t a2)
{
  v85 = a1;
  v4 = sub_1D917744C();
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v95 = v6;
  v96 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF70, &unk_1D91BB038);
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v89 = &v79 - v12;
  v105 = sub_1D917739C();
  v13 = *(v105 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v84 = v15;
  v104 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF78, &qword_1D91BB048);
  v87 = *(v88 - 8);
  v16 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF80, &unk_1D91BB050);
  v93 = *(v18 - 8);
  v94 = v18;
  v19 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v79 - v20;
  v21 = sub_1D917734C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v79 - v27;
  v29 = *a2;
  v102 = *(a2 + 8);
  v103 = v29;
  v101 = *(a2 + 16);
  v30 = v2;
  v31 = v2 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_signposter;
  sub_1D917737C();
  sub_1D917731C();
  v100 = v31;
  v32 = sub_1D917737C();
  v33 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v32, v33, v35, "AlignmentAssetRead", "", v34, 2u);
    MEMORY[0x1DA72CB90](v34, -1, -1);
  }

  (*(v22 + 16))(v25, v28, v21);
  v36 = sub_1D91773FC();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_1D91773EC();
  (*(v22 + 8))(v28, v21);
  v99 = v30;
  sub_1D9135080(v85);
  v107 = *(v30 + 24);
  v40 = v107;
  type metadata accessor for ShazamMatcher();
  sub_1D91382C8(&qword_1ECABAF88, type metadata accessor for ShazamMatcher);
  sub_1D917789C();

  v107 = v40;
  v41 = *(v13 + 16);
  v82 = v13 + 16;
  v83 = v41;
  v43 = v104;
  v42 = v105;
  v41(v104, v100, v105);
  v44 = *(v13 + 80);
  v85 = v44;
  v45 = (v44 + 16) & ~v44;
  v81 = v45;
  v46 = (v84 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v80 = *(v13 + 32);
  v84 = v13 + 32;
  v80(v47 + v45, v43, v42);
  v79 = v39;
  *(v47 + v46) = v39;
  v48 = v46;
  sub_1D91382C8(&qword_1ECABAF90, type metadata accessor for ShazamMatcher);

  v49 = v86;
  sub_1D9177B3C();

  v50 = v99;
  v51 = *(v99 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_workQueue);
  v52 = sub_1D9178DBC();
  v53 = v89;
  (*(*(v52 - 8) + 56))(v89, 1, 1, v52);
  v107 = v51;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECABAF98, &qword_1ECABAF78, &qword_1D91BB048);
  sub_1D8D02DF0();
  v54 = v90;
  v55 = v88;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECABAFA0, &qword_1ECABAF70, &unk_1D91BB038);
  v56 = v92;
  sub_1D9177CEC();
  (*(v91 + 8))(v54, v56);
  sub_1D8D08A50(v53, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v87 + 8))(v49, v55);
  v57 = swift_allocObject();
  v58 = v50;
  swift_weakInit();
  v59 = *(v50 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_analyticsChannel);
  v91 = *(v50 + 32);
  v92 = v59;
  v60 = v104;
  v61 = v105;
  v83(v104, v100, v105);
  v62 = v48;
  v63 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  v100 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v80(v65 + v81, v60, v61);
  *(v65 + v62) = v79;
  v66 = v91;
  *(v65 + v63) = v91;
  *(v65 + v64) = v57;
  v67 = v65 + v100;
  v68 = v102;
  *v67 = v103;
  *(v67 + 8) = v68;
  *(v67 + 16) = v101;
  *(v65 + ((v64 + 39) & 0xFFFFFFFFFFFFFFF8)) = v59;
  v70 = v96;
  v69 = v97;
  v71 = v98;
  (*(v97 + 16))(v96, v58 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_logger, v98);
  v72 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v73 = (v95 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  (*(v69 + 32))(v74 + v72, v70, v71);
  *(v74 + v73) = v66;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1D9138470;
  *(v75 + 24) = v74;
  swift_retain_n();

  swift_unknownObjectRetain();
  sub_1D9138578(v103, v102, v101);
  sub_1D8CF48EC(&qword_1ECABAFA8, &qword_1ECABAF80, &unk_1D91BB050);
  v76 = v94;
  v77 = v106;
  sub_1D9177BCC();

  (*(v93 + 8))(v77, v76);
  swift_beginAccess();
  sub_1D917783C();
  swift_endAccess();
}

uint64_t sub_1D9135080(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFB0, &qword_1D91BB070);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v30 - v6;
  v8 = v1 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_elapsedTimeProvider;
  if (!swift_unknownObjectWeakLoadStrong() || (v9 = *(v8 + 8), ObjectType = swift_getObjectType(), v11 = COERCE_DOUBLE((*(v9 + 8))(a1, ObjectType, v9)), v13 = v12, v15 = v14, swift_unknownObjectRelease(), (v15 & 1) != 0) || (sub_1D91366F0(&v31, v11, v13), (v35 & 1) != 0))
  {
    v16 = *(MEMORY[0x1E6960CA8] + 16);
    v37 = *MEMORY[0x1E6960CA8];
    v17 = *(MEMORY[0x1E6960CA8] + 32);
    v38 = v16;
    v39 = v17;
    return sub_1D91368A0(a1, &v37, 0);
  }

  else
  {
    v19 = v34;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v23 = sub_1D91790EC();
    *&v37 = v20;
    *(&v37 + 1) = __PAIR64__(v22, v21);
    *&v38 = v19;
    *(&v38 + 1) = v23;
    *&v39 = v24;
    *(&v39 + 1) = v25;
    v26 = *MEMORY[0x1E6960CC0];
    v27 = *(MEMORY[0x1E6960CC0] + 8);
    v28 = *(MEMORY[0x1E6960CC0] + 16);
    sub_1D9178C7C();
    v30[2] = sub_1D91368A0(a1, &v37, 2);
    v30[1] = sub_1D91368A0(a1, v36, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFB8, &qword_1D91BB078);
    sub_1D8CF48EC(&qword_1ECABAFC0, &qword_1ECABAFB8, &qword_1D91BB078);
    sub_1D9177C3C();

    sub_1D8CF48EC(&qword_1ECABAFC8, &qword_1ECABAFB0, &qword_1D91BB070);
    v29 = sub_1D9177B1C();
    (*(v4 + 8))(v7, v3);
    return v29;
  }
}

uint64_t sub_1D9135368()
{
  v0 = sub_1D91773AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D917734C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D917737C();
  sub_1D91773DC();
  v11 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v12 = "CANCELLED";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v10, v11, v14, "AlignmentAssetRead", v12, v13, 2u);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1D91355B0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, int a8, void *a9)
{
  v55 = a8;
  v53 = a6;
  v54 = a7;
  v59 = a4;
  v57 = a9;
  v10 = sub_1D91773AC();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v58 = sub_1D917734C();
  v17 = *(v58 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  v24 = *a1;
  if (v24)
  {
    v25 = sub_1D917737C();
    sub_1D91773DC();
    v26 = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      sub_1D917740C();

      v27 = v56;
      if ((*(v56 + 88))(v13, v10) == *MEMORY[0x1E69E93E8])
      {
        v28 = "[Error] Interval already ended";
      }

      else
      {
        (*(v27 + 8))(v13, v10);
        v28 = "FAILED";
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v25, v26, v36, "AlignmentAssetRead", v28, v35, 2u);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    (*(v17 + 8))(v20, v58);
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1D917946C();

    v62 = 0xD000000000000020;
    v63 = 0x80000001D91D85E0;
    v37 = sub_1D9176A5C();
    v38 = [v37 code];

    v61 = v38;
    v39 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v39);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    v40 = _s18PodcastsFoundation14AnalyticsEventC25transcriptAlignmentFailed6reasonACSS_tFZ_0();

    [v57 sendEvent_];

    sub_1D913246C();
    v41 = swift_allocError();
    *v42 = v24;
    v43 = v24;
    v44 = v41;
    goto LABEL_20;
  }

  v29 = sub_1D917737C();
  sub_1D91773DC();
  v30 = sub_1D9178F4C();
  v31 = sub_1D917918C();
  v32 = v55;
  if (v31)
  {

    sub_1D917740C();

    v33 = v56;
    if ((*(v56 + 88))(v16, v10) == *MEMORY[0x1E69E93E8])
    {
      v34 = "[Error] Interval already ended";
    }

    else
    {
      (*(v33 + 8))(v16, v10);
      v34 = "SUCCESS";
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v29, v30, v46, "AlignmentAssetRead", v34, v45, 2u);
    MEMORY[0x1DA72CB90](v45, -1, -1);
  }

  (*(v17 + 8))(v23, v58);
  v47 = v59;
  v48 = *(v59 + 16);
  os_unfair_lock_lock(v48 + 4);
  swift_beginAccess();
  sub_1D8D088B4(v47 + 56, &v62, &qword_1ECABAF58, &qword_1D91BB028);
  os_unfair_lock_unlock(v48 + 4);
  if (!v65)
  {
    sub_1D8D08A50(&v62, &qword_1ECABAF58, &qword_1D91BB028);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF30, &qword_1D91BAF08);
  v49 = type metadata accessor for AssetReaderTimelineAlignment();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v51 = _s18PodcastsFoundation14AnalyticsEventC25transcriptAlignmentFailed6reasonACSS_tFZ_0();
    [v57 sendEvent_];

    sub_1D913246C();
    v44 = swift_allocError();
    v41 = v44;
    *v52 = 0;
LABEL_20:
    sub_1D91329CC(v44);

    return;
  }

  v50 = v60;
  sub_1D9139460();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v62 = v53;
    v63 = v54;
    v64 = v32 & 1;
    sub_1D9135C34(v50, &v62);
  }

  v65 = v49;
  v66 = &protocol witness table for AssetReaderTimelineAlignment;
  v62 = v50;

  sub_1D913289C(&v62);
  sub_1D8D08A50(&v62, &qword_1ECABAF58, &qword_1D91BB028);
  sub_1D91329CC(0);
}

void sub_1D9135C34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = a1;
  v5 = sub_1D91773AC();
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D917734C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v64 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v19 = *a2;
  if (*(a2 + 16))
  {
    v20 = *a2;
    sub_1D91379B0(&v66);
    v19 = v66;
    v21 = v67;
    if (v67)
    {
LABEL_3:
      v59 = v8;
      v60 = v5;
      v63 = v10;
      sub_1D917737C();
      sub_1D917731C();
      v22 = sub_1D917737C();
      v23 = sub_1D9178F5C();
      if (sub_1D917918C())
      {
        v24 = swift_slowAlloc();
        v58 = v9;
        v25 = v24;
        *v24 = 0;
        v26 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v22, v23, v26, "AlignmentWriteCache", "", v25, 2u);
        v27 = v25;
        v9 = v58;
        MEMORY[0x1DA72CB90](v27, -1, -1);
      }

      v28 = v63;
      (*(v63 + 16))(v15, v18, v9);
      v29 = sub_1D91773FC();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      sub_1D91773EC();
      v34 = *(v28 + 8);
      v32 = v28 + 8;
      v33 = v34;
      v34(v18, v9);
      v35 = v3[7];
      v36 = v3[8];
      v65 = v62;
      v66 = v19;
      v67 = v21;
      v35(&v65, &v66);

      v37 = sub_1D917737C();
      v38 = v64;
      sub_1D91773DC();
      v39 = sub_1D9178F4C();
      if (sub_1D917918C())
      {
        v63 = v32;

        v40 = v59;
        sub_1D917740C();

        v41 = v60;
        v42 = v61;
        v43 = v9;
        if ((*(v61 + 88))(v40, v60) == *MEMORY[0x1E69E93E8])
        {
          v44 = "[Error] Interval already ended";
        }

        else
        {
          (*(v42 + 8))(v40, v41);
          v44 = "SUCCESS";
        }

        v48 = swift_slowAlloc();
        *v48 = 0;
        v49 = v64;
        v50 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v37, v39, v50, "AlignmentWriteCache", v44, v48, 2u);
        MEMORY[0x1DA72CB90](v48, -1, -1);
        v9 = v43;
        v38 = v49;
      }

      v33(v38, v9);

      v51 = sub_1D917741C();
      v52 = sub_1D9178D1C();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 141558275;
        *(v53 + 4) = 1752392040;
        *(v53 + 12) = 2081;
        v65 = v3[13];
        v66 = v54;
        sub_1D8E40A10();
        v55 = sub_1D9179A4C();
        v57 = sub_1D8CFA924(v55, v56, &v66);

        *(v53 + 14) = v57;
        _os_log_impl(&dword_1D8CEC000, v51, v52, "Writing alignment to disk for %{private,mask.hash}s", v53, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x1DA72CB90](v54, -1, -1);
        MEMORY[0x1DA72CB90](v53, -1, -1);
      }

      return;
    }
  }

  else
  {
    v21 = *(a2 + 8);

    if (v21)
    {
      goto LABEL_3;
    }
  }

  v64 = sub_1D917741C();
  v45 = sub_1D9178CFC();
  if (os_log_type_enabled(v64, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1D8CEC000, v64, v45, "Stream was never cached to disk. Skipping cache write.", v46, 2u);
    MEMORY[0x1DA72CB90](v46, -1, -1);
  }

  v47 = v64;
}

void sub_1D9136204(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1D917744C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 mediaItems];
  sub_1D8CF2154(0, &qword_1ECABAEA0, 0x1E697B7A8);
  v17 = sub_1D91785FC();

  if (v17 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_3;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1DA72AA90](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v18 = *(v17 + 32);
  }

  v16 = v18;

  v19 = [v16 signatureAlignments];
  if (v19)
  {
    v20 = v19;
    sub_1D8CF2154(0, &qword_1ECABAEA8, 0x1E697B7D8);
    a4 = sub_1D91785FC();

    v21 = *(a5 + 16);
    os_unfair_lock_lock(v21 + 4);
    swift_beginAccess();
    sub_1D8D088B4(a5 + 56, v34, &qword_1ECABAF58, &qword_1D91BB028);
    os_unfair_lock_unlock(v21 + 4);
    if (v35)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF30, &qword_1D91BAF08);
      v22 = type metadata accessor for AssetReaderTimelineAlignment();
      if (swift_dynamicCast())
      {
        v23 = v33[1];
LABEL_15:
        sub_1D9138A54(a4, a2, a3);

        type metadata accessor for AssetReaderTimelineAlignment();
        v35 = v22;
        v36 = &protocol witness table for AssetReaderTimelineAlignment;
        v34[0] = v23;

        sub_1D913289C(v34);

        sub_1D8D08A50(v34, &qword_1ECABAF58, &qword_1D91BB028);
        return;
      }

      LODWORD(v33[0]) = a3;
    }

    else
    {
      LODWORD(v33[0]) = a3;
      sub_1D8D08A50(v34, &qword_1ECABAF58, &qword_1D91BB028);
    }

    a3 = sub_1D8E27EE4(MEMORY[0x1E69E7CC0]);
    if (qword_1ECAB0CA0 == -1)
    {
LABEL_14:
      v24 = __swift_project_value_buffer(v10, qword_1ECAB0CA8);
      (*(v11 + 16))(v15, v24, v10);
      v22 = type metadata accessor for AssetReaderTimelineAlignment();
      v25 = *(v22 + 48);
      v26 = *(v22 + 52);
      v23 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEB0, &unk_1D91BAD70);
      v27 = swift_allocObject();
      *(v27 + 24) = 0;
      *(v27 + 16) = a3;
      v23[3].isa = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEB8, &unk_1D91BB060);
      v28 = swift_allocObject();
      *(v28 + 28) = 0;
      *(v28 + 16) = 0;
      *(v28 + 24) = 1;
      v23[4].isa = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEC0, &unk_1D91BAD80);
      v29 = swift_allocObject();
      *(v29 + 20) = 0;
      *(v29 + 16) = 3;
      v23[2].isa = v29;
      *&v23[5].isa = xmmword_1D91BAC80;
      (*(v11 + 32))(v23 + OBJC_IVAR____TtC18PodcastsFoundation28AssetReaderTimelineAlignment_logger, v15, v10);
      LODWORD(a3) = v33[0];
      goto LABEL_15;
    }

LABEL_25:
    swift_once();
    goto LABEL_14;
  }

LABEL_18:
  v33[0] = sub_1D917741C();
  v30 = sub_1D9178CFC();
  if (os_log_type_enabled(v33[0], v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1D8CEC000, v33[0], v30, "Expected to receive signature alignments for a match.", v31, 2u);
    MEMORY[0x1DA72CB90](v31, -1, -1);
  }

  v32 = v33[0];
}

uint64_t sub_1D91366F0@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a2 >= 6.0)
  {
    if (a3 - a2 < 6.0)
    {
      v14 = sub_1D917741C();
      v15 = sub_1D9178D1C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1D8CEC000, v14, v15, "Adjusting match buffer start point since we're close to the end of the episode.", v16, 2u);
        MEMORY[0x1DA72CB90](v16, -1, -1);
      }
    }

    v8 = sub_1D91790FC();
    v9 = v17;
    v10 = v18;
    result = sub_1D91790FC();
  }

  else
  {
    v5 = sub_1D917741C();
    v6 = sub_1D9178D1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "Playhead is near start of episode, reading from beginning", v7, 2u);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = 0;
    v12 = 0;
    v13 = 0;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = result;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = a2 < 6.0;
  return result;
}

uint64_t sub_1D91368A0(void *a1, _OWORD *a2, int a3)
{
  v58 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFD0, &qword_1D91BB080);
  v7 = *(v6 - 8);
  v53 = v6;
  v54 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFD8, &qword_1D91BB088);
  v16 = *(v15 - 8);
  v51 = v15;
  v52 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFE0, &qword_1D91BB090);
  v55 = *(v20 - 8);
  v56 = v20;
  v21 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFE8, &qword_1D91BB098);
  v63 = *(v60 - 8);
  v24 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v48 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFF0, &unk_1D91BB0A0);
  v27 = *(v26 - 8);
  v61 = v26;
  v62 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v59 = &v48 - v29;
  v30 = v3;
  v49 = v3;
  v31 = *(v3 + 16);
  v32 = sub_1D912A550(a1, a2);
  v33 = *(v30 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_workQueue);
  v34 = sub_1D9178DBC();
  (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
  v64 = v32;
  v65 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE70, &qword_1D91BAD58);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v50 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1ECABAE78, &qword_1ECABAE70, &qword_1D91BAD58);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECABAFF8, &qword_1ECABAFD0, &qword_1D91BB080);
  v35 = v53;
  sub_1D9177CEC();

  (*(v54 + 8))(v10, v35);
  sub_1D8D08A50(v14, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8CF48EC(&qword_1ECABB000, &qword_1ECABAFD8, &qword_1D91BB088);
  v36 = v51;
  sub_1D9177C9C();
  (*(v52 + 8))(v19, v36);
  v37 = *(v49 + 24);
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  LOBYTE(v19) = v58;
  *(v38 + 24) = v58;

  v39 = sub_1D9137128(0x94049F30F7200000, 97, sub_1D9138600, v38);
  v54 = v39;

  (*(v55 + 8))(v23, v56);
  v65 = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = v19;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1D913860C;
  *(v41 + 24) = v40;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB008, &unk_1D91BB0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FA0, &qword_1D9191F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB010, &unk_1D91BB0C0);
  sub_1D8CF48EC(&qword_1ECABB018, &qword_1ECABB008, &unk_1D91BB0B0);
  sub_1D8CF48EC(&qword_1ECABB020, &qword_1ECABB010, &unk_1D91BB0C0);
  v42 = v57;
  sub_1D9177CBC();

  sub_1D8CF48EC(&qword_1ECABB028, &qword_1ECABAFE8, &qword_1D91BB098);

  v43 = v60;
  v44 = v59;
  sub_1D9177B3C();

  (*(v63 + 8))(v42, v43);
  sub_1D8CF48EC(&qword_1ECABB030, &qword_1ECABAFF0, &unk_1D91BB0A0);
  v45 = v61;
  v46 = sub_1D9177B1C();
  (*(v62 + 8))(v44, v45);
  return v46;
}

void sub_1D913709C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = [*(a1 + 16) signature];
  v6 = *(a1 + 40);
  v9[0] = *(a1 + 24);
  v9[1] = v6;
  v9[2] = *(a1 + 56);
  v7 = *(a2 + 24);
  sub_1D913FECC(v8, v9, a3);
}

uint64_t sub_1D9137128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB048, &qword_1D91BB0E0);
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v24 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB050, &qword_1D91BB0E8);
  v12 = *(v25 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v15 = &v24 - v14;
  type metadata accessor for SignatureGenerator();
  v16 = swift_allocObject();
  *(v16 + 16) = [objc_allocWithZone(MEMORY[0x1E697B7E0]) init];
  v17 = MEMORY[0x1E6960CA8];
  v18 = *(MEMORY[0x1E6960CA8] + 16);
  *(v16 + 24) = *MEMORY[0x1E6960CA8];
  *(v16 + 40) = v18;
  *(v16 + 56) = *(v17 + 32);
  v27 = v16;
  v28 = 0;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFE0, &qword_1D91BB090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB058, &qword_1D91BB0F0);
  sub_1D8CF48EC(&qword_1ECABB060, &qword_1ECABAFE0, &qword_1D91BB090);
  sub_1D9177BBC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB068, qword_1D91BB0F8);
  sub_1D8CF48EC(&qword_1ECABB070, &qword_1ECABB048, &qword_1D91BB0E0);
  v20 = v26;
  sub_1D9177B2C();
  (*(v8 + 8))(v11, v20);
  sub_1D8CF48EC(&qword_1ECABB078, &qword_1ECABB050, &qword_1D91BB0E8);
  v21 = v25;
  v22 = sub_1D9177B1C();
  (*(v12 + 8))(v15, v21);
  return v22;
}

uint64_t sub_1D9137498(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB038, &unk_1D91BB0D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v13[1] = a1;
  type metadata accessor for SignatureGenerator();

  sub_1D9177A0C();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FA0, &qword_1D9191F18);
  sub_1D8CF48EC(&qword_1ECABB040, &qword_1ECABB038, &unk_1D91BB0D0);
  sub_1D9177B7C();

  return (*(v7 + 8))(v10, v6);
}

id sub_1D9137654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(MEMORY[0x1E6960CA8] + 16);
    v36 = *MEMORY[0x1E6960CA8];
    v37 = v6;
    v38 = *(MEMORY[0x1E6960CA8] + 32);
    v7 = (a2 + 32);
    for (i = v5 - 1; ; --i)
    {
      v9 = v7[1];
      v30 = *v7;
      v31 = v9;
      v32 = *(v7 + 2);
      v10 = v30;
      v11 = *(v4 + 56);
      v12 = *(v4 + 40);
      v33 = *(v4 + 24);
      v34 = v12;
      v35 = v11;
      sub_1D8D088B4(&v30, &lhs, &qword_1ECABADB8, &qword_1D91BAB88);
      if (sub_1D9178C4C())
      {
        v13 = *(&v30 + 1);
        v14 = *(&v31 + 1);
        v15 = v31;
        v17 = *&v32.timescale;
        value = v32.value;
        epoch = v32.epoch;
      }

      else
      {
        v15 = *(&v33 + 1);
        v13 = v33;
        v14 = v34;
        rhs = v32;
        lhs.value = *(&v34 + 1);
        *&lhs.timescale = v35;
        CMTimeAdd(&v27, &lhs, &rhs);
        value = v27.value;
        v17 = *&v27.timescale;
        epoch = v27.epoch;
      }

      *(v4 + 24) = v13;
      *(v4 + 32) = v15;
      *(v4 + 40) = v14;
      *(v4 + 48) = value;
      *(v4 + 56) = v17;
      *(v4 + 64) = epoch;
      v19 = *(v4 + 16);
      lhs.value = 0;
      if (![v19 appendBuffer:v10 atTime:0 error:{&lhs, v24}])
      {
        break;
      }

      v20 = lhs.value;
      sub_1D8D08A50(&v30, &qword_1ECABADB8, &qword_1D91BAB88);
      if (!i)
      {
        goto LABEL_9;
      }

      v7 = (v7 + 56);
    }

    v22 = lhs.value;
    sub_1D9176A6C();

    swift_willThrow();
    result = sub_1D8D08A50(&v30, &qword_1ECABADB8, &qword_1D91BAB88);
  }

  else
  {
LABEL_9:
    result = [*(v4 + 16) signature];
    *v25 = result;
    *(v25 + 8) = *(v4 + 24);
    *(v25 + 24) = *(v4 + 40);
    *(v25 + 40) = *(v4 + 56);
    *(v25 + 56) = a3;
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D91378B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  result = sub_1D917791C();
  v13[0] = *v11;
  v13[1] = *&v11[16];
  *v14 = *&v11[32];
  *&v14[9] = *&v11[41];
  v5 = *v11;
  if (*v11)
  {
    v6 = v14[24];
    v12[0] = *&v11[8];
    v12[1] = *&v11[24];
    v12[2] = *&v11[40];
    v7 = *(a2 + 24);
    v9[0] = *v11;
    v9[1] = *&v11[16];
    v10[0] = *&v11[32];
    *(v10 + 9) = *&v11[41];
    sub_1D8D088B4(v9, &v8, &qword_1ECAB5FA0, &qword_1D9191F18);
    sub_1D913FECC(v5, v12, v6);
    sub_1D8D08A50(v13, &qword_1ECABB220, &qword_1D91BBAC0);
    return sub_1D8D08A50(v13, &qword_1ECABB220, &qword_1D91BBAC0);
  }

  return result;
}

uint64_t sub_1D91379B0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v44 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  v4 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v41 - v8;
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  v20 = [v1 URL];
  sub_1D9176B9C();

  LOBYTE(v20) = sub_1D9176A8C();
  v21 = *(v10 + 8);
  v21(v19, v9);
  if (v20)
  {
    v22 = [v2 URL];
    sub_1D9176B9C();

    result = AlignmentRequest.init(url:)(v19, &v47);
    v24 = v48;
    *a1 = v47;
    a1[1] = v24;
    return result;
  }

  v42 = a1;
  v25 = [v2 URL];
  sub_1D9176B9C();

  v26 = objc_allocWithZone(type metadata accessor for MediaStreamedAssetCache(0));
  v27 = sub_1D9176B1C();
  v28 = [objc_opt_self() streamedMediaAssetURL];
  sub_1D9176B9C();

  v29 = sub_1D9176B1C();
  v21(v15, v9);
  v30 = [v26 initWithSourceURL:v27 cacheLocation:v29 purgeability:512];

  v21(v19, v9);
  if (!v30)
  {
    v36 = v46;
    (*(v10 + 56))(v46, 1, 1, v9);
    v38 = v42;
LABEL_10:
    result = sub_1D8D08A50(v36, &unk_1ECAB5910, &qword_1D9188C90);
    *v38 = 0;
    v38[1] = 0;
    return result;
  }

  v31 = *&v30[OBJC_IVAR___PFMediaStreamedAssetCache_phase];
  v32 = *(*v31 + *MEMORY[0x1E69E6B68] + 16);
  v33 = (*(*v31 + 48) + 3) & 0x1FFFFFFFCLL;
  v34 = v30;
  os_unfair_lock_lock((v31 + v33));
  v35 = v45;
  sub_1D8E6A238(v31 + v32, v45);
  os_unfair_lock_unlock((v31 + v33));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = v46;
    (*(v10 + 32))(v46, v35, v9);
    v37 = 0;
    v38 = v42;
  }

  else
  {
    sub_1D8E6A29C(v35);
    v37 = 1;
    v38 = v42;
    v36 = v46;
  }

  (*(v10 + 56))(v36, v37, 1, v9);

  if ((*(v10 + 48))(v36, 1, v9) == 1)
  {

    goto LABEL_10;
  }

  v39 = v43;
  (*(v10 + 32))(v43, v36, v9);
  (*(v10 + 16))(v19, v39, v9);
  AlignmentRequest.init(url:)(v19, &v47);

  result = (v21)(v39, v9);
  v40 = v48;
  *v38 = v47;
  v38[1] = v40;
  return result;
}

uint64_t sub_1D9137E94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(*a1 + 16);

  [v8 duration];
  sub_1D9179FBC();
  if (sub_1D9179F7C())
  {
    a3(v6);
    type metadata accessor for SignatureGenerator();
    v9 = swift_allocObject();
    *(v9 + 16) = [objc_allocWithZone(MEMORY[0x1E697B7E0]) init];

    v10 = MEMORY[0x1E6960CA8];
    v11 = *(MEMORY[0x1E6960CA8] + 16);
    *(v9 + 24) = *MEMORY[0x1E6960CA8];
    *(v9 + 40) = v11;
    *(v9 + 56) = *(v10 + 32);
    v6 = v9;
  }

  *a4 = v6;
  a4[1] = v7;
}

uint64_t sub_1D9137F9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = *a1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v3;
}

uint64_t sub_1D9137FEC()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssetReaderTimelineAligner()
{
  result = qword_1ECABAF48;
  if (!qword_1ECABAF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D91380C8()
{
  result = sub_1D917744C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1D917739C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1D9138248(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D9138258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF58, &qword_1D91BB028);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D91382C8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9138310()
{
  v1 = *(sub_1D917739C() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D9135368();
}

void sub_1D913839C(void **a1)
{
  v3 = *(sub_1D917739C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1D91355B0(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1D9138470(void *a1, void *a2, void *a3)
{
  v7 = *(sub_1D917744C() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D9136204(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_1D9138524(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(a1 + 3);
  v7[0] = *(a1 + 1);
  v7[1] = v5;
  v7[2] = *(a1 + 5);
  return v2(v4, v7, *(a1 + 56));
}

id sub_1D9138578(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1D9138588(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1D9138614(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1D913866C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 40);
  return sub_1D9137E94(a1, a2, *(v3 + 32), a3);
}

uint64_t sub_1D9138678(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DEAC(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_1D9179A2C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = fabs(v11);
        v13 = v8;
        v14 = v10;
        do
        {
          v15 = *v14;
          if (v12 >= fabs(*v14))
          {
            break;
          }

          *v14 = v11;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_1D913C470(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D91387B4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DEE8(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_1D9179A2C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 1);
          if (v13 >= *(v12 - 3))
          {
            break;
          }

          v14 = *(v12 + 4);
          v15 = *(v12 + 1);
          v16 = *(v12 - 8);
          *(v12 + 8) = *(v12 - 24);
          *(v12 + 24) = v16;
          *(v12 - 3) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1D913C9D0(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D9138908(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DEE8(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_1D9179A2C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (v13 >= *v12)
          {
            break;
          }

          v14 = *(v12 + 5);
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          *(v12 + 1) = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1D913CF68(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1D9138A54(unint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock((v8 + 20));
  v9 = *(v8 + 16);
  os_unfair_lock_unlock((v8 + 20));
  LOBYTE(v10) = v9 == 3;
  v68 = v8;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = MEMORY[0x1E69E7CC0];
  v70 = v4;
  if (v11)
  {
    v78[0] = MEMORY[0x1E69E7CC0];
    sub_1D8E3199C(0, v11 & ~(v11 >> 63), 0);
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v12 = v78[0];
      v72 = a1 & 0xC000000000000001;
      v4 = a2[1];
      oslogb = a2[2];
      v71 = a1 & 0xFFFFFFFFFFFFFF8;
      v7 = &selRef_setParent_;
      v73 = *a2;
      v67 = a2;
      while (!v72)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v13 >= *(v71 + 16))
        {
          goto LABEL_42;
        }

        a2 = *(a1 + 8 * v13 + 32);
        if (v10)
        {
          goto LABEL_12;
        }

LABEL_14:
        v19 = [a2 referenceTimeRange];
        [v19 lowerBound];
        v21 = v20;

        v10 = [a2 referenceTimeRange];
        [v10 upperBound];
        v23 = v22;

        if (v21 > v23)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v11 = sub_1D917935C();
          goto LABEL_3;
        }

        sub_1D917910C();
        v25 = v24;
        v26 = [a2 queryTimeRange];
        [v26 lowerBound];
        v28 = v27;

        v29 = v25 + v28;
        v30 = [a2 queryTimeRange];
        [v30 &selRef_hasEnabledSettings + 6];
        v32 = v31;

        v10 = [a2 queryTimeRange];
        [v10 lowerBound];
        v34 = v33;

        v35 = v29 + v32 - v34;
        if (v29 > v35)
        {
          goto LABEL_40;
        }

        v36 = a1;
        v78[0] = v12;
        v38 = *(v12 + 2);
        v37 = *(v12 + 3);
        a2 = (v38 + 1);
        if (v38 >= v37 >> 1)
        {
          sub_1D8E3199C((v37 > 1), v38 + 1, 1);
          v12 = v78[0];
        }

        LOBYTE(v10) = 0;
        ++v13;
        *(v12 + 2) = a2;
        v39 = &v12[32 * v38];
        v39[4] = v29;
        v39[5] = v35;
        v39[6] = v21;
        v39[7] = v23;
        a1 = v36;
        if (v11 == v13)
        {
          v4 = v70;
          a2 = v67;
          goto LABEL_20;
        }
      }

      a2 = MEMORY[0x1DA72AA90](v13, a1);
      if ((v10 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_12:
      v14 = [a2 queryTimeRange];
      [v14 lowerBound];
      v16 = v15;

      if (v16 > 1.0)
      {
        v17 = *(v70 + 32);
        os_unfair_lock_lock((v17 + 28));
        sub_1D917910C();
        *(v17 + 16) = v18;
        *(v17 + 24) = 0;
        os_unfair_lock_unlock((v17 + 28));
      }

      goto LABEL_14;
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_20:
    v78[0] = v12;

    sub_1D91387B4(v78);

    v40 = *(v4 + 24);
    os_unfair_lock_lock((v40 + 24));
    v41 = *(v40 + 16);
    if (*(v41 + 16) && (v42 = sub_1D8F0726C(a3), (v43 & 1) != 0))
    {
      v44 = *(*(v41 + 56) + 8 * v42);
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC0];
    }

    os_unfair_lock_unlock((v40 + 24));
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = *a2;
      v47 = a2[1];
      v48 = a2[2];
      v49 = (v44 + 32);
      v50 = MEMORY[0x1E69E7CC0];
      do
      {
        v74 = v49[1];
        *oslog = *v49;
        sub_1D917910C();
        if (*oslog <= v54)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78[0] = v50;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D8E3199C(0, *(v50 + 2) + 1, 1);
            v50 = v78[0];
          }

          v52 = *(v50 + 2);
          v51 = *(v50 + 3);
          if (v52 >= v51 >> 1)
          {
            sub_1D8E3199C((v51 > 1), v52 + 1, 1);
            v50 = v78[0];
          }

          *(v50 + 2) = v52 + 1;
          v53 = &v50[32 * v52];
          *(v53 + 2) = *oslog;
          *(v53 + 3) = v74;
        }

        v49 += 2;
        --v45;
      }

      while (v45);
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

    os_unfair_lock_lock((v40 + 24));
    v78[0] = v50;

    sub_1D8E2F860(v56);
    v57 = sub_1D913A1C8(2000000000000000000, 0, v78[0]);

    v58 = sub_1D913A280(v57);

    v59 = *(v40 + 16);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v78[0] = *(v40 + 16);
    *(v40 + 16) = 0x8000000000000000;
    sub_1D8F51780(v58, a3, v60);
    *(v40 + 16) = v78[0];
    os_unfair_lock_unlock((v40 + 24));
    os_unfair_lock_lock((v68 + 20));
    *(v68 + 16) = a3;
    os_unfair_lock_unlock((v68 + 20));

    osloga = sub_1D917741C();
    v61 = sub_1D9178D1C();

    if (os_log_type_enabled(osloga, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v78[0] = v63;
      *v62 = 136315138;

      v64 = sub_1D917828C();
      v66 = sub_1D8CFA924(v64, v65, v78);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_1D8CEC000, osloga, v61, "Matched:\n%s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x1DA72CB90](v63, -1, -1);
      MEMORY[0x1DA72CB90](v62, -1, -1);
    }

    else
    {
    }
  }
}

Swift::Double_optional __swiftcall AssetReaderTimelineAlignment.playerTimestamp(for:)(Swift::Double a1)
{
  if (sub_1D913A4D0())
  {
    AssetReaderTimelineAlignment.alignments.getter();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0.0;
      v6 = (v3 + 56);
      v7 = 1;
      do
      {
        v8 = *(v6 - 1);
        if (v8 + -0.5 <= a1 && *v6 + 0.5 >= a1)
        {
          v10 = v8 - *(v6 - 3);
          if ((v7 & 1) != 0 || fabs(v10) < COERCE_DOUBLE(*&v5 & 0x7FFFFFFFFFFFFFFFLL))
          {
            v7 = 0;
            v5 = v10;
          }

          else
          {
            v7 = 0;
          }
        }

        v6 += 4;
        --v4;
      }

      while (v4);

      v2 = a1 - v5;
      if (v7)
      {
        LOBYTE(v11) = LOBYTE(v5);
      }

      else
      {
        v11 = a1 - v5;
      }
    }

    else
    {

      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = LOBYTE(a1);
  }

  result.value = v2;
  result.is_nil = LOBYTE(v11);
  return result;
}

Swift::Double_optional __swiftcall AssetReaderTimelineAlignment.referenceTimestamp(for:)(Swift::Double a1)
{
  AssetReaderTimelineAlignment.alignments.getter();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = (v2 + 56);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *(v5 - 3);
      if (v10 + -0.5 <= a1 && *(v5 - 2) + 0.5 >= a1)
      {
        v23 = *(v5 - 1);
        v12 = *v5;
        v24 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D8E3199C(0, *(v6 + 2) + 1, 1);
          v6 = v24;
        }

        v8 = *(v6 + 2);
        v7 = *(v6 + 3);
        if (v8 >= v7 >> 1)
        {
          sub_1D8E3199C((v7 > 1), v8 + 1, 1);
          v6 = v24;
        }

        *(v6 + 2) = v8 + 1;
        v9 = &v6[4 * v8];
        v9[4] = v10;
        *(v9 + 5) = v23;
        v9[7] = v12;
      }

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v6 + 2);
  if (v13)
  {
    v24 = v4;
    sub_1D8E31798(0, v13, 0);
    v14 = v4;
    v15 = *(v4 + 16);
    v16 = v6 + 6;
    do
    {
      v17 = *(v16 - 2);
      v18 = *v16;
      v24 = v14;
      v19 = *(v14 + 3);
      if (v15 >= v19 >> 1)
      {
        sub_1D8E31798((v19 > 1), v15 + 1, 1);
        v14 = v24;
      }

      *(v14 + 2) = v15 + 1;
      v14[v15 + 4] = v17 - v18;
      v16 += 4;
      ++v15;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v24 = v14;

  sub_1D9138678(&v24);

  if (*(v24 + 2))
  {
    v20 = v24[4];

    v21 = a1 - v20;
    v22 = a1 - v20;
  }

  else
  {

    LOBYTE(v22) = 0;
  }

  result.value = v21;
  result.is_nil = LOBYTE(v22);
  return result;
}

void sub_1D9139460()
{
  v1 = *v0;
  AssetReaderTimelineAlignment.alignments.getter();
  v2 = v0[3];
  os_unfair_lock_lock((v2 + 24));
  sub_1D913E7EC((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  v3 = v0[2];
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = 4;
  os_unfair_lock_unlock((v3 + 20));

  v4 = sub_1D917741C();
  v5 = sub_1D9178D1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;

    v8 = sub_1D917828C();
    v10 = sub_1D8CFA924(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Completed Alignment:\n%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }
}

double AssetReaderTimelineAlignment.Alignment.queryTimeRange.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

double AssetReaderTimelineAlignment.Alignment.referenceTimeRange.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

unint64_t sub_1D9139614()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6D69547972657571;
  }

  *v0;
  return result;
}

uint64_t sub_1D9139660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D69547972657571 && a2 == 0xEE0065676E615265;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D8780 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D913974C(uint64_t a1)
{
  v2 = sub_1D913DB3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9139788(uint64_t a1)
{
  v2 = sub_1D913DB3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetReaderTimelineAlignment.Alignment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB080, &qword_1D91BB110);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D913DB3C();
  sub_1D9179F1C();
  v17 = v9;
  v18 = v10;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB090, &qword_1D91BB118);
  sub_1D913DB90(&qword_1ECABB098);
  sub_1D91799FC();
  if (!v2)
  {
    v17 = v11;
    v18 = v12;
    v16 = 1;
    sub_1D91799FC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AssetReaderTimelineAlignment.Alignment.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB0A0, &qword_1D91BB120);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D913DB3C();
  sub_1D9179EEC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB090, &qword_1D91BB118);
    v15 = 0;
    sub_1D913DB90(&qword_1ECABB0A8);
    sub_1D91798FC();
    v11 = v14;
    v15 = 1;
    sub_1D91798FC();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D9139BFC()
{
  v1 = *v0;
  sub_1D9179DBC();
  if (v1 == 2)
  {
    MEMORY[0x1DA72B390](1);
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    sub_1D9179DDC();
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D9139C64()
{
  if (*v0 == 2)
  {
    return MEMORY[0x1DA72B390](1);
  }

  MEMORY[0x1DA72B390](0);
  return sub_1D9179DDC();
}

uint64_t sub_1D9139CB0()
{
  v1 = *v0;
  sub_1D9179DBC();
  if (v1 == 2)
  {
    MEMORY[0x1DA72B390](1);
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    sub_1D9179DDC();
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D9139D14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

BOOL sub_1D9139D4C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2u)
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return 1;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D9139DC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_1D8F0726C(0), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v7 = 0;
  }

  v24[4] = v7;
  if (*(v3 + 16) && (v8 = sub_1D8F0726C(1), (v9 & 1) != 0))
  {
    v10 = *(*(v3 + 56) + 8 * v8);
  }

  else
  {
    v11 = 0;
  }

  v24[5] = v11;
  if (*(v3 + 16) && (v12 = sub_1D8F0726C(2), (v13 & 1) != 0))
  {
    v14 = *(*(v3 + 56) + 8 * v12);
  }

  else
  {
    result = 0;
  }

  v16 = 0;
  v24[6] = result;
  v17 = MEMORY[0x1E69E7CC0];
LABEL_14:
  if (v16 <= 3)
  {
    v18 = 3;
  }

  else
  {
    v18 = v16;
  }

  while (1)
  {
    if (v16 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABB130, &unk_1D91BB6C0);
      result = swift_arrayDestroy();
      *a2 = v17;
      return result;
    }

    if (v18 == v16)
    {
      break;
    }

    v19 = &v24[v16];
    v20 = v19[4];
    ++v16;
    if (v20)
    {
      v21 = v19[4];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D8ECE3B8(0, v17[2] + 1, 1, v17);
        v17 = result;
      }

      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_1D8ECE3B8((v22 > 1), v23 + 1, 1, v17);
        v17 = result;
      }

      v17[2] = v23 + 1;
      v17[v23 + 4] = v20;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

BOOL AssetReaderTimelineAlignment.isInProgress.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2 != 4;
}

void AssetReaderTimelineAlignment.alignments.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1D9139DC4((v1 + 16), &v17);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v17;
  v3 = *(v17 + 16);
  if (!v3)
  {
LABEL_19:

    return;
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v4 < *(v2 + 16))
  {
    v6 = *(v2 + 32 + 8 * v4);
    v7 = *(v6 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 32 + 8 * v4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v12 = v8 + v7;
      }

      else
      {
        v12 = v8;
      }

      v5 = sub_1D8ECC4D4(isUniquelyReferenced_nonNull_native, v12, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        v13 = *(v5 + 2);
        if ((*(v5 + 3) >> 1) - v13 < v7)
        {
          goto LABEL_23;
        }

        memcpy(&v5[32 * v13 + 32], (v6 + 32), 32 * v7);

        if (v7)
        {
          v14 = *(v5 + 2);
          v15 = __OFADD__(v14, v7);
          v16 = v14 + v7;
          if (v15)
          {
            goto LABEL_24;
          }

          *(v5 + 2) = v16;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_22;
    }

LABEL_4:
    if (v3 == ++v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

BOOL AssetReaderTimelineAlignment.matchedBeginning.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return (v2 & 0xFE) != 2;
}

uint64_t AssetReaderTimelineAlignment.matchedEnd.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if ((v2 - 2) >= 3)
  {
    v3 = v2;
  }

  else
  {
    v3 = 4u >> ((v2 - 2) & 7);
  }

  return v3 & 1;
}

uint64_t sub_1D913A1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 48);
    v8 = *(a3 + 16);
    do
    {
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;
      sub_1D913C128(v12);
      v7 += 2;
      --v8;
    }

    while (v8);
    v5 = v13;
  }

  if (*(v5 + 16) == v6)
  {
    return v5;
  }

  v11 = sub_1D913A1C8(a1, a2, v5);

  return v11;
}

uint64_t sub_1D913A280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 56);
    v3 = MEMORY[0x1E69E7CC0];
    v4 = *(a1 + 16);
    while (1)
    {
      v6 = *(v2 - 3);
      v7 = *(v2 - 1);
      v8 = *v2;
      v9 = *(v3 + 2);
      if (v9 && (v10 = &v3[32 * v9], v12 = *(v10 + 2), v11 = v10 + 16, v13 = v12, v7 <= v12))
      {
        if (*(v11 + 1) - v13 >= v8 - v7)
        {
          goto LABEL_5;
        }

        v21 = *(v2 - 3);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D915C3EC(v3);
          v3 = result;
        }

        v16 = v21;
        if (v9 > *(v3 + 2))
        {
          __break(1u);
          return result;
        }

        v5 = &v3[32 * v9];
      }

      else
      {
        v20 = *(v2 - 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D8ECC4D4(0, v9 + 1, 1, v3);
        }

        v15 = *(v3 + 2);
        v14 = *(v3 + 3);
        v16 = v20;
        if (v15 >= v14 >> 1)
        {
          v17 = sub_1D8ECC4D4((v14 > 1), v15 + 1, 1, v3);
          v16 = v20;
          v3 = v17;
        }

        *(v3 + 2) = v15 + 1;
        v5 = &v3[32 * v15 + 32];
      }

      *v5 = v16;
      *(v5 + 16) = v7;
      *(v5 + 24) = v8;
LABEL_5:
      v2 += 4;
      if (!--v4)
      {
        goto LABEL_18;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_18:
  if (*(v3 + 2) == v1)
  {
    return v3;
  }

  v19 = sub_1D913A280(v3);

  return v19;
}

uint64_t sub_1D913A400(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB120, &qword_1D91BB6A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0;
  v6 = sub_1D913A1C8(2000000000000000000, 0, a2);
  v7 = sub_1D913A280(v6);

  *(inited + 40) = v7;
  v8 = sub_1D8E27EE4(inited);
  swift_setDeallocating();
  result = sub_1D913E784(inited + 32);
  *a1 = v8;
  return result;
}

uint64_t sub_1D913A4D0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 4)
  {
    return 1;
  }

  AssetReaderTimelineAlignment.alignments.getter();
  v4 = *(v3 + 16);

  if (!v4)
  {
    return 2;
  }

  AssetReaderTimelineAlignment.alignments.getter();
  v6 = (v5 + 56);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    if (vabdd_f64(*(v6 - 1), *(v6 - 3)) <= 0.1)
    {
      v8 = *v6;
      v9 = *(v6 - 2);
      v6 += 4;
      if (vabdd_f64(v8, v9) <= 0.1)
      {
        continue;
      }
    }

    v10 = 2;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

char *AssetReaderTimelineAlignment.nonMatchingRangesInReference(with:)(char *a1, unint64_t a2)
{
  AssetReaderTimelineAlignment.alignments.getter();
  v7 = *(v6 + 16);

  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v36 = MEMORY[0x1E69E7CC0];
    v9 = v2[2];
    os_unfair_lock_lock(v9 + 5);
    v10 = v9[16];
    os_unfair_lock_unlock(v9 + 5);
    if ((v10 & 0xFE) == 2)
    {
      goto LABEL_9;
    }

    AssetReaderTimelineAlignment.alignments.getter();
    if (!*(v11 + 16))
    {

      goto LABEL_9;
    }

    v12 = *(v11 + 48);

    if (v12 <= 0.0)
    {
      goto LABEL_9;
    }

    v13 = sub_1D9179FBC();
    v15 = v14;
    if (sub_1D9179F7C())
    {
      goto LABEL_27;
    }

    v16 = sub_1D8ECE510(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = *(v16 + 2);
    v17 = *(v16 + 3);
    v3 = (v10 + 1);
    if (v10 >= v17 >> 1)
    {
      goto LABEL_28;
    }

    while (1)
    {
      *(v16 + 2) = v3;
      v18 = &v16[32 * v10];
      *(v18 + 4) = 0;
      *(v18 + 5) = 0;
      *(v18 + 6) = v13;
      *(v18 + 7) = v15;
      v36 = v16;
LABEL_9:
      v33 = a1;
      v34 = a2;
      v19 = v2[3];
      os_unfair_lock_lock(v19 + 6);
      v15 = 0;
      sub_1D9139DC4(v19 + 2, &v35);
      os_unfair_lock_unlock(v19 + 6);
      v3 = v35;
      v10 = *(v35 + 2);
      if (!v10)
      {
        break;
      }

      a2 = 0;
      a1 = v35 + 32;
      v13 = &unk_1D91BB128;
      while (1)
      {
        v17 = *(v3 + 2);
        if (a2 >= v17)
        {
          break;
        }

        v35 = *&a1[8 * a2];
        swift_bridgeObjectRetain_n();
        sub_1D9138908(&v35);

        ++a2;
        v20 = v35;
        KeyPath = swift_getKeyPath();
        v22 = sub_1D913A8B8(KeyPath, v20);

        v2 = &v36;
        sub_1D8E30AF4(v22);
        if (v10 == a2)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v16 = sub_1D8ECE510((v17 > 1), v3, 1, v16);
    }

LABEL_13:

    os_unfair_lock_lock(v9 + 5);
    v23 = v9[16];
    os_unfair_lock_unlock(v9 + 5);
    if ((v23 - 2) < 2 || v23 != 4 && (v23 & 1) == 0)
    {
      return v36;
    }

    AssetReaderTimelineAlignment.alignments.getter();
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = *(v24 + 32 * v25 + 24);

      sub_1D9179FBC();
      if (sub_1D9179F7C())
      {
        v27 = sub_1D9179FBC();
        v29 = v28;
        if (sub_1D9179F7C())
        {
          __break(1u);
        }

        else
        {
          a1 = v36;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_20:
            v31 = *(a1 + 2);
            v30 = *(a1 + 3);
            if (v31 >= v30 >> 1)
            {
              a1 = sub_1D8ECE510((v30 > 1), v31 + 1, 1, a1);
            }

            *(a1 + 2) = v31 + 1;
            v32 = &a1[32 * v31];
            *(v32 + 4) = v27;
            *(v32 + 5) = v29;
            *(v32 + 6) = v33;
            *(v32 + 7) = v34;
            return a1;
          }
        }

        a1 = sub_1D8ECE510(0, *(a1 + 2) + 1, 1, a1);
        goto LABEL_20;
      }
    }

    else
    {
    }

    return v36;
  }

  return result;
}

uint64_t sub_1D913A8B8(uint64_t a1, uint64_t a2)
{
  sub_1D913E9B8(1uLL, a2);
  v43 = v3;
  v5 = v4;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  v9 = v8 >> 1;
  result = swift_bridgeObjectRetain_n();
  v11 = v6 != 0;
  v12 = v5;
  v44 = MEMORY[0x1E69E7CC0];
  v13 = v11;
  v14 = v5;
  while (v9 != v14)
  {
    if (v12 < v5 || v14 >= v9)
    {
      goto LABEL_26;
    }

    if (v6 == v13)
    {
      break;
    }

    if (v11 < (v6 != 0) || v13 >= v6)
    {
      goto LABEL_27;
    }

    v15 = (v43 + 32 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = (v7 + 32 * v13);
    v45 = v18[1];
    v47 = *v18;
    ++v13;
    v41 = v16;
    v42 = v17;
    swift_getAtKeyPath();
    result = swift_getAtKeyPath();
    ++v14;
    if (v51 < v49)
    {
      v19 = v44;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D8E319DC(0, *(v44 + 16) + 1, 1);
        v19 = v44;
      }

      v21 = v41;
      v20 = v42;
      v23 = v45;
      v22 = v47;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_1D8E319DC((v24 > 1), v25 + 1, 1);
        v23 = v45;
        v22 = v47;
        v21 = v41;
        v20 = v42;
        v19 = v44;
      }

      *(v19 + 16) = v25 + 1;
      v44 = v19;
      v26 = (v19 + (v25 << 6));
      v26[2] = v20;
      v26[3] = v21;
      v26[4] = v22;
      v26[5] = v23;
      v11 = v13;
      v12 = v14;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v27 = *(v44 + 16);
  if (v27)
  {
    v50 = MEMORY[0x1E69E7CC0];
    sub_1D8E319BC(0, v27, 0);
    result = v44;
    v28 = 0;
    v29 = v50;
    v30 = (v44 + 64);
    while (v28 < *(result + 16))
    {
      v46 = v30[1];
      v48 = *v30;
      v52 = *(v30 - 2);
      v53 = *(v30 - 1);
      swift_getAtKeyPath();
      v31 = sub_1D9179FBC();
      v33 = v32;
      swift_getAtKeyPath();
      v34 = sub_1D9179FBC();
      v36 = v35;
      result = sub_1D9179F7C();
      if (result)
      {
        goto LABEL_25;
      }

      v37 = v27;
      v39 = *(v50 + 16);
      v38 = *(v50 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D8E319BC((v38 > 1), v39 + 1, 1);
      }

      ++v28;
      *(v50 + 16) = v39 + 1;
      v40 = (v50 + 32 * v39);
      v40[4] = v31;
      v40[5] = v33;
      v40[6] = v34;
      v40[7] = v36;
      v30 += 4;
      v27 = v37;
      result = v44;
      if (v37 == v28)
      {

        return v29;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  return MEMORY[0x1E69E7CC0];
}