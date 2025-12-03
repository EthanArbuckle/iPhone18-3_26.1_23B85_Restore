@interface PXSharedCollectionsUtilities
+ (BOOL)isSharedCollectionURL:(id)l;
+ (id)allowedSharingOptionsForSharing;
+ (id)ckShareFromAssetCollection:(id)collection error:(id *)error;
+ (id)createCKContainerForSharing;
+ (id)createDefaultAssetCreationOptionsForAssets:(id)assets;
+ (id)fetchParticipantsInAssetCollection:(id)collection;
+ (id)makeItemProviderFromCKShare:(id)share;
+ (id)sharedAlbumTitleForAssets:(id)assets inAssetCollection:(id)collection;
+ (void)addAssetsTo:(id)to assets:(id)assets comment:(id)comment completionHandler:(id)handler;
+ (void)createAlbumWithName:(id)name assets:(id)assets photoLibrary:(id)library completionHandler:(id)handler;
+ (void)deleteAlbums:(id)albums completionHandler:(id)handler;
+ (void)fetchSharedCollectionWithShareURL:(id)l inPhotoLibrary:(id)library acceptIfPending:(BOOL)pending completionHandler:(id)handler;
- (PXSharedCollectionsUtilities)init;
@end

@implementation PXSharedCollectionsUtilities

+ (id)sharedAlbumTitleForAssets:(id)assets inAssetCollection:(id)collection
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v5 = sub_1A524CA34();
  collectionCopy = collection;
  SharedCollectionsTitle(for:in:)(v5, collection);

  v7 = sub_1A524C634();

  return v7;
}

+ (id)fetchParticipantsInAssetCollection:(id)collection
{
  collectionCopy = collection;
  v4 = SharedCollectionsFetchParticipants(in:)(collectionCopy);

  return v4;
}

+ (id)createDefaultAssetCreationOptionsForAssets:(id)assets
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v3 = sub_1A524CA34();
  sub_1A4976C7C(v3);

  sub_1A3C52C70(0, &qword_1EB12B618);
  v4 = sub_1A524C3D4();

  return v4;
}

+ (void)createAlbumWithName:(id)name assets:(id)assets photoLibrary:(id)library completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_1A524C674();
  v10 = v9;
  sub_1A3C52C70(0, &qword_1EB126660);
  v11 = sub_1A524CA34();
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  SharedCollectionsCreateAlbum(albumName:assets:photoLibrary:completionHandler:)(v8, v10, v11, library, sub_1A4981364, v12);
}

+ (void)deleteAlbums:(id)albums completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  sub_1A3C52C70(0, &qword_1EB126AC0);
  v5 = sub_1A524CA34();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  SharedCollectionsDeleteAlbums(sharedAlbums:completionHandler:)(v5, sub_1A3FABAE4, v6);
}

+ (void)addAssetsTo:(id)to assets:(id)assets comment:(id)comment completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  sub_1A3C52C70(0, &qword_1EB126660);
  v9 = sub_1A524CA34();
  if (comment)
  {
    sub_1A524C674();
  }

  _Block_copy(v8);
  toCopy = to;
  sub_1A4980A28(toCopy, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

+ (id)createCKContainerForSharing
{
  v2 = _s12PhotosUICore38SharedCollectionsCKContainerForSharingSo0E0CyF_0();

  return v2;
}

+ (id)ckShareFromAssetCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  v6 = SharedCollectionsCKShare(from:error:)(collectionCopy, error);

  return v6;
}

+ (id)allowedSharingOptionsForSharing
{
  standardOptions = [objc_opt_self() standardOptions];
  [standardOptions setSupportAllowingAddedParticipantsToInviteOthers_];
  [standardOptions setSupportAllowingAccessRequests_];

  return standardOptions;
}

+ (id)makeItemProviderFromCKShare:(id)share
{
  shareCopy = share;
  result = SharedCollectionsMakeItemProvider(from:)(shareCopy);
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

+ (BOOL)isSharedCollectionURL:(id)l
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

+ (void)fetchSharedCollectionWithShareURL:(id)l inPhotoLibrary:(id)library acceptIfPending:(BOOL)pending completionHandler:(id)handler
{
  pendingCopy = pending;
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
  v18 = _Block_copy(handler);
  sub_1A5240DE4();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  libraryCopy = library;
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
  *v26 = libraryCopy;
  *(v26 + 8) = pendingCopy;
  v27 = (v25 + v24);
  *v27 = sub_1A4981D2C;
  v27[1] = v19;
  v28 = libraryCopy;

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