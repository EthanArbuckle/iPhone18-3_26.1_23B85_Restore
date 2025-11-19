@interface PXSharedCollectionsUtilities
+ (BOOL)isSharedCollectionURL:(id)a3;
+ (id)allowedSharingOptionsForSharing;
+ (id)ckShareFromAssetCollection:(id)a3 error:(id *)a4;
+ (id)createCKContainerForSharing;
+ (id)createDefaultAssetCreationOptionsForAssets:(id)a3;
+ (id)fetchParticipantsInAssetCollection:(id)a3;
+ (id)makeItemProviderFromCKShare:(id)a3;
+ (id)sharedAlbumTitleForAssets:(id)a3 inAssetCollection:(id)a4;
+ (void)addAssetsTo:(id)a3 assets:(id)a4 comment:(id)a5 completionHandler:(id)a6;
+ (void)createAlbumWithName:(id)a3 assets:(id)a4 photoLibrary:(id)a5 completionHandler:(id)a6;
+ (void)deleteAlbums:(id)a3 completionHandler:(id)a4;
+ (void)fetchSharedCollectionWithShareURL:(id)a3 inPhotoLibrary:(id)a4 acceptIfPending:(BOOL)a5 completionHandler:(id)a6;
- (PXSharedCollectionsUtilities)init;
@end

@implementation PXSharedCollectionsUtilities

+ (id)sharedAlbumTitleForAssets:(id)a3 inAssetCollection:(id)a4
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v5 = sub_1A524CA34();
  v6 = a4;
  SharedCollectionsTitle(for:in:)(v5, a4);

  v7 = sub_1A524C634();

  return v7;
}

+ (id)fetchParticipantsInAssetCollection:(id)a3
{
  v3 = a3;
  v4 = SharedCollectionsFetchParticipants(in:)(v3);

  return v4;
}

+ (id)createDefaultAssetCreationOptionsForAssets:(id)a3
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v3 = sub_1A524CA34();
  sub_1A4976C7C(v3);

  sub_1A3C52C70(0, &qword_1EB12B618);
  v4 = sub_1A524C3D4();

  return v4;
}

+ (void)createAlbumWithName:(id)a3 assets:(id)a4 photoLibrary:(id)a5 completionHandler:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = sub_1A524C674();
  v10 = v9;
  sub_1A3C52C70(0, &qword_1EB126660);
  v11 = sub_1A524CA34();
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  SharedCollectionsCreateAlbum(albumName:assets:photoLibrary:completionHandler:)(v8, v10, v11, a5, sub_1A4981364, v12);
}

+ (void)deleteAlbums:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  sub_1A3C52C70(0, &qword_1EB126AC0);
  v5 = sub_1A524CA34();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  SharedCollectionsDeleteAlbums(sharedAlbums:completionHandler:)(v5, sub_1A3FABAE4, v6);
}

+ (void)addAssetsTo:(id)a3 assets:(id)a4 comment:(id)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a6);
  sub_1A3C52C70(0, &qword_1EB126660);
  v9 = sub_1A524CA34();
  if (a5)
  {
    sub_1A524C674();
  }

  _Block_copy(v8);
  v10 = a3;
  sub_1A4980A28(v10, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

+ (id)createCKContainerForSharing
{
  v2 = _s12PhotosUICore38SharedCollectionsCKContainerForSharingSo0E0CyF_0();

  return v2;
}

+ (id)ckShareFromAssetCollection:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = SharedCollectionsCKShare(from:error:)(v5, a4);

  return v6;
}

+ (id)allowedSharingOptionsForSharing
{
  v2 = [objc_opt_self() standardOptions];
  [v2 setSupportAllowingAddedParticipantsToInviteOthers_];
  [v2 setSupportAllowingAccessRequests_];

  return v2;
}

+ (id)makeItemProviderFromCKShare:(id)a3
{
  v3 = a3;
  result = SharedCollectionsMakeItemProvider(from:)(v3);
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (BOOL)isSharedCollectionURL:(id)a3
{
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5240DE4();
  IsC13CollectionURLySb10Foundation0G0VF_0 = _s12PhotosUICore019SharedCollectionsIsC13CollectionURLySb10Foundation0G0VF_0();
  (*(v4 + 8))(v6, v3);
  return IsC13CollectionURLySb10Foundation0G0VF_0 & 1;
}

+ (void)fetchSharedCollectionWithShareURL:(id)a3 inPhotoLibrary:(id)a4 acceptIfPending:(BOOL)a5 completionHandler:(id)a6
{
  v30 = a5;
  sub_1A3C7D2BC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = _Block_copy(a6);
  sub_1A5240DE4();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = a4;
  v29 = v10;
  sub_1A524CC74();
  v21 = sub_1A524CCB4();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  (*(v12 + 16))(v14, v17, v11);
  v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v23 = (v22 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v22 + v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v12 + 32))(v25 + v22, v14, v11);
  v26 = v25 + v23;
  *v26 = v20;
  *(v26 + 8) = v30;
  v27 = (v25 + v24);
  *v27 = sub_1A4981D2C;
  v27[1] = v19;
  v28 = v20;

  sub_1A3D4D930(0, 0, v29, &unk_1A53779B0, v25);

  (*(v12 + 8))(v17, v11);
}

- (PXSharedCollectionsUtilities)init
{
  v3.receiver = self;
  v3.super_class = PXSharedCollectionsUtilities;
  return [(PXSharedCollectionsUtilities *)&v3 init];
}

@end