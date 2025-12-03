@interface PXSharedAlbumsUtilities
+ (BOOL)canContributeAssetsToSharedAlbum:(id)album;
+ (BOOL)canSetMultipleContributorsEnabledForSharedAlbum:(id)album;
+ (BOOL)hasReachedLimitOfAcceptedSharedAlbumsInPhotoLibrary:(id)library;
+ (BOOL)multipleContributorsEnabledForSharedAlbum:(id)album;
+ (BOOL)notificationsEnabledForSharedAlbum:(id)album;
+ (BOOL)ownerIsVettedForSharedAlbum:(id)album;
+ (BOOL)sharedAlbumIsAppleFamily:(id)family;
+ (BOOL)sharedAlbumIsOwned:(id)owned;
+ (BOOL)sharedAlbumIsPending:(id)pending;
+ (BOOL)sharedAlbumsEnabledForPhotoLibrary:(id)library;
+ (id)fetchSharedAlbumWithScopeIdentifier:(id)identifier inPhotoLibrary:(id)library allowPending:(BOOL)pending;
+ (id)fetchSharedAlbumWithTitle:(id)title inPhotoLibrary:(id)library allowPending:(BOOL)pending;
+ (id)fetchSharedAlbumsInPhotoLibrary:(id)library allowPending:(BOOL)pending;
+ (id)localizedSharedByDescriptionForSharedAlbum:(id)album;
+ (id)ownerForSharedAlbum:(id)album;
+ (id)publicURLForSharedAlbum:(id)album;
+ (id)scopeIdentifierForSharedAlbum:(id)album;
+ (void)acceptInvitationToSharedAlbum:(id)album completionHandler:(id)handler;
+ (void)addComment:(id)comment toAsset:(id)asset completionHandler:(id)handler;
+ (void)declineInvitationToSharedAlbum:(id)album completionHandler:(id)handler;
+ (void)inviteParticipants:(id)participants toSharedAlbum:(id)album completionHandler:(id)handler;
+ (void)markInvitationToSharedAlbumAsSpam:(id)spam completionHandler:(id)handler;
+ (void)markSharedAlbumAsViewed:(id)viewed;
+ (void)removeComments:(id)comments fromAsset:(id)asset completionHandler:(id)handler;
+ (void)removeParticipants:(id)participants fromSharedAlbum:(id)album completionHandler:(id)handler;
+ (void)resendInvitationToParticipant:(id)participant inSharedAlbum:(id)album completionHandler:(id)handler;
+ (void)setLikedTo:(BOOL)to forAssets:(id)assets completionHandler:(id)handler;
+ (void)setMultipleContributorsEnabled:(BOOL)enabled forSharedAlbum:(id)album completionHandler:(id)handler;
+ (void)setNotificationsEnabled:(BOOL)enabled forSharedAlbum:(id)album completionHandler:(id)handler;
+ (void)setPublicURLEnabled:(BOOL)enabled forSharedAlbum:(id)album completionHandler:(id)handler;
+ (void)setTitle:(id)title forSharedAlbum:(id)album completionHandler:(id)handler;
- (PXSharedAlbumsUtilities)init;
@end

@implementation PXSharedAlbumsUtilities

+ (BOOL)sharedAlbumsEnabledForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE06sharedB7Enabled3forSbSo14PHPhotoLibraryC_tFZ_0(libraryCopy);

  return v4 & 1;
}

+ (id)fetchSharedAlbumWithScopeIdentifier:(id)identifier inPhotoLibrary:(id)library allowPending:(BOOL)pending
{
  v7 = sub_1A524C674();
  v9 = v8;
  libraryCopy = library;
  v11 = sub_1A4076458(libraryCopy, v7, v9, 0, 0, pending);
  firstObject = [v11 firstObject];

  return firstObject;
}

+ (id)fetchSharedAlbumWithTitle:(id)title inPhotoLibrary:(id)library allowPending:(BOOL)pending
{
  v7 = sub_1A524C674();
  v9 = v8;
  libraryCopy = library;
  v11 = sub_1A4076458(libraryCopy, 0, 0, v7, v9, pending);
  firstObject = [v11 firstObject];

  return firstObject;
}

+ (id)fetchSharedAlbumsInPhotoLibrary:(id)library allowPending:(BOOL)pending
{
  libraryCopy = library;
  v6 = sub_1A4076458(libraryCopy, 0, 0, 0, 0, pending);

  return v6;
}

+ (BOOL)sharedAlbumIsOwned:(id)owned
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

+ (BOOL)sharedAlbumIsAppleFamily:(id)family
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    LOBYTE(v3) = [v3 cloudAlbumSubtype] == 1;
  }

  return v3;
}

+ (BOOL)sharedAlbumIsPending:(id)pending
{
  pendingCopy = pending;
  v4 = _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE20sharedAlbumIsPendingySbSo17PHAssetCollectionCFZ_0(pendingCopy);

  return v4 & 1;
}

+ (id)ownerForSharedAlbum:(id)album
{
  albumCopy = album;
  v4 = _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE5owner14forSharedAlbumSo0aI11ParticipantCSgSo17PHAssetCollectionC_tFZ_0(albumCopy);

  return v4;
}

+ (BOOL)ownerIsVettedForSharedAlbum:(id)album
{
  albumCopy = album;
  v4 = _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE13ownerIsVetted14forSharedAlbumSbSo17PHAssetCollectionC_tFZ_0(albumCopy);

  return v4 & 1;
}

+ (id)scopeIdentifierForSharedAlbum:(id)album
{
  albumCopy = album;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE15scopeIdentifier14forSharedAlbumSSSgSo17PHAssetCollectionC_tFZ_0(albumCopy);
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

+ (BOOL)canContributeAssetsToSharedAlbum:(id)album
{
  v4 = objc_opt_self();
  albumCopy = album;
  if ([v4 sharedAlbumIsOwned_])
  {
    multipleContributorsEnabledForSharedAlbum_ = 1;
  }

  else
  {
    multipleContributorsEnabledForSharedAlbum_ = [v4 multipleContributorsEnabledForSharedAlbum_];
  }

  return multipleContributorsEnabledForSharedAlbum_;
}

+ (id)localizedSharedByDescriptionForSharedAlbum:(id)album
{
  swift_getObjCClassMetadata();
  albumCopy = album;
  static PXSharedAlbumsUtilities.localizedSharedByDescription(forSharedAlbum:)(albumCopy);

  v5 = sub_1A524C634();

  return v5;
}

+ (void)setTitle:(id)title forSharedAlbum:(id)album completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
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

  albumCopy = album;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE8setTitle_14forSharedAlbum17completionHandlerySS_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(v7, v9, albumCopy, v6, v10);
  sub_1A3C33378(v6);
}

+ (BOOL)hasReachedLimitOfAcceptedSharedAlbumsInPhotoLibrary:(id)library
{
  libraryCopy = library;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE031hasReachedLimitOfAcceptedSharedB02inSbSo14PHPhotoLibraryC_tFZ_0(libraryCopy);
  v5 = v4;

  return v5 & 1;
}

+ (void)acceptInvitationToSharedAlbum:(id)album completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  _Block_copy(v5);
  albumCopy = album;
  sub_1A4088E00(albumCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

+ (void)declineInvitationToSharedAlbum:(id)album completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
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

  albumCopy = album;
  sub_1A4089140(albumCopy, v5, v6, &unk_1F16F43E8, &unk_1A5316968, "An invalid asset collection was passed in to resendInvitationToParticipant:");
  sub_1A3C33378(v5);
}

+ (void)markInvitationToSharedAlbumAsSpam:(id)spam completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
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

  spamCopy = spam;
  sub_1A4089140(spamCopy, v5, v6, &unk_1F16F4370, &unk_1A5316948, "An invalid asset collection was passed in to markInvitationToSharedAlbumAsSpam:");
  sub_1A3C33378(v5);
}

+ (void)inviteParticipants:(id)participants toSharedAlbum:(id)album completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
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

  albumCopy = album;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE18inviteParticipants_13toSharedAlbum17completionHandlerySaySo0aJ11ParticipantCG_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(v7, albumCopy, v6, v8);
  sub_1A3C33378(v6);
}

+ (void)resendInvitationToParticipant:(id)participant inSharedAlbum:(id)album completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  participantCopy = participant;
  albumCopy = album;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE16resendInvitation2to13inSharedAlbum17completionHandlerySo0aK11ParticipantC_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(participantCopy, albumCopy, v7, v8);
  sub_1A3C33378(v7);
}

+ (void)removeParticipants:(id)participants fromSharedAlbum:(id)album completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
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

  albumCopy = album;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE18removeParticipants_15fromSharedAlbum17completionHandlerySaySo0aJ11ParticipantCG_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(v7, albumCopy, v6, v8);
  sub_1A3C33378(v6);
}

+ (BOOL)multipleContributorsEnabledForSharedAlbum:(id)album
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

+ (BOOL)canSetMultipleContributorsEnabledForSharedAlbum:(id)album
{
  v4 = objc_opt_self();
  albumCopy = album;
  if ([v4 sharedAlbumIsOwned_])
  {
    sharedAlbumIsAppleFamily_ = [v4 sharedAlbumIsAppleFamily_];

    return sharedAlbumIsAppleFamily_ ^ 1;
  }

  else
  {

    return 0;
  }
}

+ (void)setMultipleContributorsEnabled:(BOOL)enabled forSharedAlbum:(id)album completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  albumCopy = album;
  sub_1A4089D24(enabled, albumCopy, v7, v8, &unk_1F16F3F88, &unk_1A5316870, "An invalid asset collection was passed in to setMultipleContributorsEnabled:");
  sub_1A3C33378(v7);
}

+ (BOOL)notificationsEnabledForSharedAlbum:(id)album
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

+ (void)setNotificationsEnabled:(BOOL)enabled forSharedAlbum:(id)album completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  albumCopy = album;
  sub_1A4089D24(enabled, albumCopy, v7, v8, &unk_1F16F3E98, &unk_1A5316840, "An invalid asset collection was passed in to setNotificationsEnabled:");
  sub_1A3C33378(v7);
}

+ (id)publicURLForSharedAlbum:(id)album
{
  sub_1A408BC44(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  swift_getObjCClassMetadata();
  albumCopy = album;
  static PXSharedAlbumsUtilities.publicURL(forSharedAlbum:)(albumCopy, v6);

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

+ (void)setPublicURLEnabled:(BOOL)enabled forSharedAlbum:(id)album completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  albumCopy = album;
  sub_1A4089D24(enabled, albumCopy, v7, v8, &unk_1F16F3DA8, &unk_1A5316810, "An invalid asset collection was passed in to setPublicURLEnabled:");
  sub_1A3C33378(v7);
}

+ (void)setLikedTo:(BOOL)to forAssets:(id)assets completionHandler:(id)handler
{
  toCopy = to;
  v7 = _Block_copy(handler);
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
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE8setLiked2to9forAssets17completionHandlerySb_So17PXFastEnumeration_pySb_s5Error_pSgtcSgtFZ_0(toCopy, assets, v7, v8);
  sub_1A3C33378(v7);

  swift_unknownObjectRelease();
}

+ (void)addComment:(id)comment toAsset:(id)asset completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
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

  assetCopy = asset;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE10addComment_7toAsset17completionHandlerySS_So7PHAssetCySSSg_s5Error_pSgtcSgtFZ_0(v7, v9, assetCopy, v6, v10);
  sub_1A3C33378(v6);
}

+ (void)removeComments:(id)comments fromAsset:(id)asset completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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
  assetCopy = asset;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE14removeComments_9fromAsset17completionHandlerySo17PXFastEnumeration_p_So7PHAssetCySb_s5Error_pSgtcSgtFZ_0(comments, assetCopy, v7, v8);
  sub_1A3C33378(v7);
  swift_unknownObjectRelease();
}

+ (void)markSharedAlbumAsViewed:(id)viewed
{
  viewedCopy = viewed;
  _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE23markSharedAlbumAsViewedyySo17PHAssetCollectionCFZ_0(viewedCopy);
}

- (PXSharedAlbumsUtilities)init
{
  v3.receiver = self;
  v3.super_class = PXSharedAlbumsUtilities;
  return [(PXSharedAlbumsUtilities *)&v3 init];
}

@end