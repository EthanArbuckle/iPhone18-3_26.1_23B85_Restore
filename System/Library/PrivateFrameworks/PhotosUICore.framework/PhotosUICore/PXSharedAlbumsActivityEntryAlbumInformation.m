@interface PXSharedAlbumsActivityEntryAlbumInformation
- (PXSharedAlbumsActivityEntryAlbumInformation)initWithAlbumGUID:(id)a3 photoLibrary:(id)a4 plPhotoLibrary:(id)a5;
- (PXSharedAlbumsActivityEntryAlbumInformation)initWithAlbumTitle:(id)a3 albumGUID:(id)a4 ownerIsAllowlisted:(BOOL)a5;
@end

@implementation PXSharedAlbumsActivityEntryAlbumInformation

- (PXSharedAlbumsActivityEntryAlbumInformation)initWithAlbumGUID:(id)a3 photoLibrary:(id)a4 plPhotoLibrary:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = PXSharedAlbumsActivityEntryAlbumInformation;
  v9 = [(PXSharedAlbumsActivityEntryAlbumInformation *)&v26 init];
  if (v9)
  {
    v10 = [PXSharedAlbumsUtilities fetchSharedAlbumWithScopeIdentifier:v7 inPhotoLibrary:v8 allowPending:1];
    if (!v10)
    {
      v11 = PLSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v7;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Collection share not found with guid: %{public}@. May have empty titles and be treated as allowlisted for invitations", buf, 0xCu);
      }
    }

    v12 = MEMORY[0x1E6978AC0];
    v13 = [v8 librarySpecificFetchOptions];
    v14 = [v12 fetchOwnerParticipantInShare:v10 options:v13];
    v15 = [v14 firstObject];

    v16 = [v10 title];
    v17 = v16;
    v18 = &stru_1F1741150;
    if (v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = &stru_1F1741150;
    }

    v20 = [v10 scopeIdentifier];
    v21 = v20;
    if (v20)
    {
      v18 = v20;
    }

    v9 = -[PXSharedAlbumsActivityEntryAlbumInformation initWithAlbumTitle:albumGUID:ownerIsAllowlisted:](v9, "initWithAlbumTitle:albumGUID:ownerIsAllowlisted:", v19, v18, [v15 allowlistedState] == 1);

    v22 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v9 albumTitle];
    v23 = [v22 length];

    if (!v23)
    {
      v24 = PLSharingGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v7;
        _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_ERROR, "Album with cloud GUID: %{public}@ has an empty title", buf, 0xCu);
      }
    }
  }

  return v9;
}

- (PXSharedAlbumsActivityEntryAlbumInformation)initWithAlbumTitle:(id)a3 albumGUID:(id)a4 ownerIsAllowlisted:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PXSharedAlbumsActivityEntryAlbumInformation;
  v10 = [(PXSharedAlbumsActivityEntryAlbumInformation *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    albumTitle = v10->_albumTitle;
    v10->_albumTitle = v11;

    v13 = [v9 copy];
    albumGUID = v10->_albumGUID;
    v10->_albumGUID = v13;

    v10->_ownerIsAllowlisted = a5;
  }

  return v10;
}

@end