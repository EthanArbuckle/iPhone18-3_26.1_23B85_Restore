@interface PXSharedAlbumsActivityEntryAvatarConfiguration
+ (id)avatarForAssetContributorInAlbumWithAlbumGUID:(id)a3 contributedAsset:(id)a4;
+ (id)avatarFromOwnerOfPendingSharedAlbumWithGUID:(id)a3 withPhotoLibrary:(id)a4 plPhotoLibrary:(id)a5;
+ (id)avatarFromParticipantWithID:(id)a3 withPhotoLibrary:(id)a4 plPhotoLibrary:(id)a5;
- (PXSharedAlbumsActivityEntryAvatarConfiguration)initWithEmail:(id)a3 phone:(id)a4 firstName:(id)a5 lastName:(id)a6;
- (id)fullName;
@end

@implementation PXSharedAlbumsActivityEntryAvatarConfiguration

- (id)fullName
{
  v3 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)self firstName];
  v4 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)self lastName];
  v5 = PLLocalizedNameWithFirstAndLastName();

  return v5;
}

- (PXSharedAlbumsActivityEntryAvatarConfiguration)initWithEmail:(id)a3 phone:(id)a4 firstName:(id)a5 lastName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = PXSharedAlbumsActivityEntryAvatarConfiguration;
  v14 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    email = v14->_email;
    v14->_email = v15;

    v17 = [v11 copy];
    phone = v14->_phone;
    v14->_phone = v17;

    v19 = [v12 copy];
    firstName = v14->_firstName;
    v14->_firstName = v19;

    v21 = [v13 copy];
    lastName = v14->_lastName;
    v14->_lastName = v21;
  }

  return v14;
}

+ (id)avatarForAssetContributorInAlbumWithAlbumGUID:(id)a3 contributedAsset:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [v4 cloudOwnerEmail];
  v6 = [v4 cloudOwnerFirstName];
  v7 = [v4 cloudOwnerLastName];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = PLSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [v4 uuid];
    v15 = 138543618;
    v16 = v10;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Empty/missing firstName for asset [%{public}@]: %@", &v15, 0x16u);
  }

  if (!v8)
  {
LABEL_7:
    v11 = PLSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v4 uuid];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Empty/missing lastName for asset [%{public}@]: %@", &v15, 0x16u);
    }
  }

LABEL_10:
  v13 = [[PXSharedAlbumsActivityEntryAvatarConfiguration alloc] initWithEmail:v5 phone:0 firstName:v6 lastName:v8];

  return v13;
}

+ (id)avatarFromParticipantWithID:(id)a3 withPhotoLibrary:(id)a4 plPhotoLibrary:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6978AC0];
  v23 = a3;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:&v23 count:1];
  v11 = [v8 librarySpecificFetchOptions];

  v12 = [v6 fetchParticipantsWithParticipantIDs:v10 options:v11];
  v13 = [v12 firstObject];

  v14 = [PXSharedAlbumsActivityEntryAvatarConfiguration alloc];
  v15 = [v13 emailAddress];
  v16 = [v13 phoneNumber];
  v17 = [v13 nameComponents];
  v18 = [v17 givenName];
  v19 = [v13 nameComponents];
  v20 = [v19 familyName];
  v21 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)v14 initWithEmail:v15 phone:v16 firstName:v18 lastName:v20];

  return v21;
}

+ (id)avatarFromOwnerOfPendingSharedAlbumWithGUID:(id)a3 withPhotoLibrary:(id)a4 plPhotoLibrary:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v6 librarySpecificFetchOptions];
  [v8 setIncludePendingShares:1];
  v9 = MEMORY[0x1E6978770];
  v26[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v11 = [v9 fetchCollectionSharesWithScopeIdentifiers:v10 options:v8];
  v12 = [v11 firstObject];

  v13 = MEMORY[0x1E6978AC0];
  v14 = [v6 librarySpecificFetchOptions];

  v15 = [v13 fetchOwnerParticipantInShare:v12 options:v14];
  v16 = [v15 firstObject];

  v17 = [PXSharedAlbumsActivityEntryAvatarConfiguration alloc];
  v18 = [v16 emailAddress];
  v19 = [v16 phoneNumber];
  v20 = [v16 nameComponents];
  v21 = [v20 givenName];
  v22 = [v16 nameComponents];
  v23 = [v22 familyName];
  v24 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)v17 initWithEmail:v18 phone:v19 firstName:v21 lastName:v23];

  return v24;
}

@end