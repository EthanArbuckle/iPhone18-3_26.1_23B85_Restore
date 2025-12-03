@interface PXSharedAlbumsActivityEntryAlbumInformation
- (PXSharedAlbumsActivityEntryAlbumInformation)initWithAlbumGUID:(id)d photoLibrary:(id)library plPhotoLibrary:(id)photoLibrary;
- (PXSharedAlbumsActivityEntryAlbumInformation)initWithAlbumTitle:(id)title albumGUID:(id)d ownerIsAllowlisted:(BOOL)allowlisted;
@end

@implementation PXSharedAlbumsActivityEntryAlbumInformation

- (PXSharedAlbumsActivityEntryAlbumInformation)initWithAlbumGUID:(id)d photoLibrary:(id)library plPhotoLibrary:(id)photoLibrary
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryCopy = library;
  v26.receiver = self;
  v26.super_class = PXSharedAlbumsActivityEntryAlbumInformation;
  v9 = [(PXSharedAlbumsActivityEntryAlbumInformation *)&v26 init];
  if (v9)
  {
    v10 = [PXSharedAlbumsUtilities fetchSharedAlbumWithScopeIdentifier:dCopy inPhotoLibrary:libraryCopy allowPending:1];
    if (!v10)
    {
      v11 = PLSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = dCopy;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Collection share not found with guid: %{public}@. May have empty titles and be treated as allowlisted for invitations", buf, 0xCu);
      }
    }

    v12 = MEMORY[0x1E6978AC0];
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    v14 = [v12 fetchOwnerParticipantInShare:v10 options:librarySpecificFetchOptions];
    firstObject = [v14 firstObject];

    title = [v10 title];
    v17 = title;
    v18 = &stru_1F1741150;
    if (title)
    {
      v19 = title;
    }

    else
    {
      v19 = &stru_1F1741150;
    }

    scopeIdentifier = [v10 scopeIdentifier];
    v21 = scopeIdentifier;
    if (scopeIdentifier)
    {
      v18 = scopeIdentifier;
    }

    v9 = -[PXSharedAlbumsActivityEntryAlbumInformation initWithAlbumTitle:albumGUID:ownerIsAllowlisted:](v9, "initWithAlbumTitle:albumGUID:ownerIsAllowlisted:", v19, v18, [firstObject allowlistedState] == 1);

    albumTitle = [(PXSharedAlbumsActivityEntryAlbumInformation *)v9 albumTitle];
    v23 = [albumTitle length];

    if (!v23)
    {
      v24 = PLSharingGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = dCopy;
        _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_ERROR, "Album with cloud GUID: %{public}@ has an empty title", buf, 0xCu);
      }
    }
  }

  return v9;
}

- (PXSharedAlbumsActivityEntryAlbumInformation)initWithAlbumTitle:(id)title albumGUID:(id)d ownerIsAllowlisted:(BOOL)allowlisted
{
  titleCopy = title;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = PXSharedAlbumsActivityEntryAlbumInformation;
  v10 = [(PXSharedAlbumsActivityEntryAlbumInformation *)&v16 init];
  if (v10)
  {
    v11 = [titleCopy copy];
    albumTitle = v10->_albumTitle;
    v10->_albumTitle = v11;

    v13 = [dCopy copy];
    albumGUID = v10->_albumGUID;
    v10->_albumGUID = v13;

    v10->_ownerIsAllowlisted = allowlisted;
  }

  return v10;
}

@end