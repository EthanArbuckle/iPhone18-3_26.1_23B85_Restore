@interface PXSharedAlbumsUtilities
+ (BOOL)canContributeAssetsToSharedAlbum:(id)a3;
+ (BOOL)canSetMultipleContributorsEnabledForSharedAlbum:(id)a3;
+ (BOOL)hasReachedLimitOfAcceptedSharedAlbumsInPhotoLibrary:(id)a3;
+ (BOOL)multipleContributorsEnabledForSharedAlbum:(id)a3;
+ (BOOL)notificationsEnabledForSharedAlbum:(id)a3;
+ (BOOL)ownerIsVettedForSharedAlbum:(id)a3;
+ (BOOL)sharedAlbumIsAppleFamily:(id)a3;
+ (BOOL)sharedAlbumIsOwned:(id)a3;
+ (BOOL)sharedAlbumIsPending:(id)a3;
+ (BOOL)sharedAlbumsEnabledForPhotoLibrary:(id)a3;
+ (id)fetchSharedAlbumWithScopeIdentifier:(id)a3 inPhotoLibrary:(id)a4 allowPending:(BOOL)a5;
+ (id)fetchSharedAlbumWithTitle:(id)a3 inPhotoLibrary:(id)a4 allowPending:(BOOL)a5;
+ (id)fetchSharedAlbumsInPhotoLibrary:(id)a3 allowPending:(BOOL)a4;
+ (id)localizedSharedByDescriptionForSharedAlbum:(id)a3;
+ (id)ownerForSharedAlbum:(id)a3;
+ (id)publicURLForSharedAlbum:(id)a3;
+ (id)scopeIdentifierForSharedAlbum:(id)a3;
+ (void)acceptInvitationToSharedAlbum:(id)a3 completionHandler:(id)a4;
+ (void)addComment:(id)a3 toAsset:(id)a4 completionHandler:(id)a5;
+ (void)declineInvitationToSharedAlbum:(id)a3 completionHandler:(id)a4;
+ (void)inviteParticipants:(id)a3 toSharedAlbum:(id)a4 completionHandler:(id)a5;
+ (void)markInvitationToSharedAlbumAsSpam:(id)a3 completionHandler:(id)a4;
+ (void)markSharedAlbumAsViewed:(id)a3;
+ (void)removeComments:(id)a3 fromAsset:(id)a4 completionHandler:(id)a5;
+ (void)removeParticipants:(id)a3 fromSharedAlbum:(id)a4 completionHandler:(id)a5;
+ (void)resendInvitationToParticipant:(id)a3 inSharedAlbum:(id)a4 completionHandler:(id)a5;
+ (void)setLikedTo:(BOOL)a3 forAssets:(id)a4 completionHandler:(id)a5;
+ (void)setMultipleContributorsEnabled:(BOOL)a3 forSharedAlbum:(id)a4 completionHandler:(id)a5;
+ (void)setNotificationsEnabled:(BOOL)a3 forSharedAlbum:(id)a4 completionHandler:(id)a5;
+ (void)setPublicURLEnabled:(BOOL)a3 forSharedAlbum:(id)a4 completionHandler:(id)a5;
+ (void)setTitle:(id)a3 forSharedAlbum:(id)a4 completionHandler:(id)a5;
- (PXSharedAlbumsUtilities)init;
@end

@implementation PXSharedAlbumsUtilities

+ (BOOL)sharedAlbumsEnabledForPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE06sharedB7Enabled3forSbSo14PHPhotoLibraryC_tFZ_0(v3);

  return v4 & 1;
}

+ (id)fetchSharedAlbumWithScopeIdentifier:(id)a3 inPhotoLibrary:(id)a4 allowPending:(BOOL)a5
{
  v7 = sub_1A524C674();
  v9 = v8;
  v10 = a4;
  v11 = sub_1A4076458(v10, v7, v9, 0, 0, a5);
  v12 = [v11 firstObject];

  return v12;
}

+ (id)fetchSharedAlbumWithTitle:(id)a3 inPhotoLibrary:(id)a4 allowPending:(BOOL)a5
{
  v7 = sub_1A524C674();
  v9 = v8;
  v10 = a4;
  v11 = sub_1A4076458(v10, 0, 0, v7, v9, a5);
  v12 = [v11 firstObject];

  return v12;
}

+ (id)fetchSharedAlbumsInPhotoLibrary:(id)a3 allowPending:(BOOL)a4
{
  v5 = a3;
  v6 = sub_1A4076458(v5, 0, 0, 0, 0, a4);

  return v6;
}

+ (BOOL)sharedAlbumIsOwned:(id)a3
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    LOBYTE(v4) = [v3 status] == 1;
  }

  else
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {

      LOBYTE(v4) = [v4 isOwned];
    }
  }

  return v4;
}

+ (BOOL)sharedAlbumIsAppleFamily:(id)a3
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    LOBYTE(v3) = [v3 cloudAlbumSubtype] == 1;
  }

  return v3;
}

+ (BOOL)sharedAlbumIsPending:(id)a3
{
  v3 = a3;
  v4 = _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE20sharedAlbumIsPendingySbSo17PHAssetCollectionCFZ_0(v3);

  return v4 & 1;
}

+ (id)ownerForSharedAlbum:(id)a3
{
  v3 = a3;
  v4 = _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE5owner14forSharedAlbumSo0aI11ParticipantCSgSo17PHAssetCollectionC_tFZ_0(v3);

  return v4;
}

+ (BOOL)ownerIsVettedForSharedAlbum:(id)a3
{
  v3 = a3;
  v4 = _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE13ownerIsVetted14forSharedAlbumSbSo17PHAssetCollectionC_tFZ_0(v3);

  return v4 & 1;
}

+ (id)scopeIdentifierForSharedAlbum:(id)a3
{
  v3 = a3;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE15scopeIdentifier14forSharedAlbumSSSgSo17PHAssetCollectionC_tFZ_0(v3);
  v5 = v4;

  if (v5)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)canContributeAssetsToSharedAlbum:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  if ([v4 sharedAlbumIsOwned_])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 multipleContributorsEnabledForSharedAlbum_];
  }

  return v6;
}

+ (id)localizedSharedByDescriptionForSharedAlbum:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static PXSharedAlbumsUtilities.localizedSharedByDescription(forSharedAlbum:)(v4);

  v5 = sub_1A524C634();

  return v5;
}

+ (void)setTitle:(id)a3 forSharedAlbum:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1A524C674();
  v9 = v8;
  if (v6)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v6 = sub_1A3FABAE4;
  }

  else
  {
    v10 = 0;
  }

  v11 = a4;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE8setTitle_14forSharedAlbum17completionHandlerySS_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(v7, v9, v11, v6, v10);
  sub_1A3C33378(v6);
}

+ (BOOL)hasReachedLimitOfAcceptedSharedAlbumsInPhotoLibrary:(id)a3
{
  v3 = a3;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE031hasReachedLimitOfAcceptedSharedB02inSbSo14PHPhotoLibraryC_tFZ_0(v3);
  v5 = v4;

  return v5 & 1;
}

+ (void)acceptInvitationToSharedAlbum:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  v6 = a3;
  sub_1A4088E00(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

+ (void)declineInvitationToSharedAlbum:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1A3FABAE4;
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  sub_1A4089140(v7, v5, v6, &unk_1F16F43E8, &unk_1A5316968, "An invalid asset collection was passed in to resendInvitationToParticipant:");
  sub_1A3C33378(v5);
}

+ (void)markInvitationToSharedAlbumAsSpam:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1A3FABAE4;
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  sub_1A4089140(v7, v5, v6, &unk_1F16F4370, &unk_1A5316948, "An invalid asset collection was passed in to markInvitationToSharedAlbumAsSpam:");
  sub_1A3C33378(v5);
}

+ (void)inviteParticipants:(id)a3 toSharedAlbum:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  sub_1A3C52C70(0, &qword_1EB12C1B0);
  v7 = sub_1A524CA34();
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v6 = sub_1A3FABAE4;
  }

  else
  {
    v8 = 0;
  }

  v9 = a4;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE18inviteParticipants_13toSharedAlbum17completionHandlerySaySo0aJ11ParticipantCG_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(v7, v9, v6, v8);
  sub_1A3C33378(v6);
}

+ (void)resendInvitationToParticipant:(id)a3 inSharedAlbum:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1A3FABAE4;
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v10 = a4;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE16resendInvitation2to13inSharedAlbum17completionHandlerySo0aK11ParticipantC_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(v9, v10, v7, v8);
  sub_1A3C33378(v7);
}

+ (void)removeParticipants:(id)a3 fromSharedAlbum:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  sub_1A3C52C70(0, &qword_1EB12C1B0);
  v7 = sub_1A524CA34();
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v6 = sub_1A3FABAE4;
  }

  else
  {
    v8 = 0;
  }

  v9 = a4;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE18removeParticipants_15fromSharedAlbum17completionHandlerySaySo0aJ11ParticipantCG_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(v7, v9, v6, v8);
  sub_1A3C33378(v6);
}

+ (BOOL)multipleContributorsEnabledForSharedAlbum:(id)a3
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    LOBYTE(v4) = [v3 publicPermission] == 3;
  }

  else
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {

      LOBYTE(v4) = [v4 isCloudMultipleContributorsEnabled];
    }
  }

  return v4;
}

+ (BOOL)canSetMultipleContributorsEnabledForSharedAlbum:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  if ([v4 sharedAlbumIsOwned_])
  {
    v6 = [v4 sharedAlbumIsAppleFamily_];

    return v6 ^ 1;
  }

  else
  {

    return 0;
  }
}

+ (void)setMultipleContributorsEnabled:(BOOL)a3 forSharedAlbum:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1A3FABAE4;
  }

  else
  {
    v8 = 0;
  }

  v9 = a4;
  sub_1A4089D24(a3, v9, v7, v8, &unk_1F16F3F88, &unk_1A5316870, "An invalid asset collection was passed in to setMultipleContributorsEnabled:");
  sub_1A3C33378(v7);
}

+ (BOOL)notificationsEnabledForSharedAlbum:(id)a3
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    LOBYTE(v4) = [v3 notificationState] == 0x7FFF;
  }

  else
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {

      LOBYTE(v4) = [v4 isCloudNotificationsEnabled];
    }
  }

  return v4;
}

+ (void)setNotificationsEnabled:(BOOL)a3 forSharedAlbum:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1A3FABAE4;
  }

  else
  {
    v8 = 0;
  }

  v9 = a4;
  sub_1A4089D24(a3, v9, v7, v8, &unk_1F16F3E98, &unk_1A5316840, "An invalid asset collection was passed in to setNotificationsEnabled:");
  sub_1A3C33378(v7);
}

+ (id)publicURLForSharedAlbum:(id)a3
{
  sub_1A408BC44(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  swift_getObjCClassMetadata();
  v7 = a3;
  static PXSharedAlbumsUtilities.publicURL(forSharedAlbum:)(v7, v6);

  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1A5240D44();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

+ (void)setPublicURLEnabled:(BOOL)a3 forSharedAlbum:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1A3FABAE4;
  }

  else
  {
    v8 = 0;
  }

  v9 = a4;
  sub_1A4089D24(a3, v9, v7, v8, &unk_1F16F3DA8, &unk_1A5316810, "An invalid asset collection was passed in to setPublicURLEnabled:");
  sub_1A3C33378(v7);
}

+ (void)setLikedTo:(BOOL)a3 forAssets:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v7 = _Block_copy(a5);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1A3FABAE4;
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectRetain();
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE8setLiked2to9forAssets17completionHandlerySb_So17PXFastEnumeration_pySb_s5Error_pSgtcSgtFZ_0(v6, a4, v7, v8);
  sub_1A3C33378(v7);

  swift_unknownObjectRelease();
}

+ (void)addComment:(id)a3 toAsset:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1A524C674();
  v9 = v8;
  if (v6)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v6 = sub_1A408BF78;
  }

  else
  {
    v10 = 0;
  }

  v11 = a4;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE10addComment_7toAsset17completionHandlerySS_So7PHAssetCySSSg_s5Error_pSgtcSgtFZ_0(v7, v9, v11, v6, v10);
  sub_1A3C33378(v6);
}

+ (void)removeComments:(id)a3 fromAsset:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1A3D7A9AC;
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectRetain();
  v9 = a4;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE14removeComments_9fromAsset17completionHandlerySo17PXFastEnumeration_p_So7PHAssetCySb_s5Error_pSgtcSgtFZ_0(a3, v9, v7, v8);
  sub_1A3C33378(v7);
  swift_unknownObjectRelease();
}

+ (void)markSharedAlbumAsViewed:(id)a3
{
  v3 = a3;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE23markSharedAlbumAsViewedyySo17PHAssetCollectionCFZ_0(v3);
}

- (PXSharedAlbumsUtilities)init
{
  v3.receiver = self;
  v3.super_class = PXSharedAlbumsUtilities;
  return [(PXSharedAlbumsUtilities *)&v3 init];
}

@end