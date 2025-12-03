@interface PXSharedAlbumsActivityEntryAvatarConfiguration
+ (id)avatarForAssetContributorInAlbumWithAlbumGUID:(id)d contributedAsset:(id)asset;
+ (id)avatarFromOwnerOfPendingSharedAlbumWithGUID:(id)d withPhotoLibrary:(id)library plPhotoLibrary:(id)photoLibrary;
+ (id)avatarFromParticipantWithID:(id)d withPhotoLibrary:(id)library plPhotoLibrary:(id)photoLibrary;
- (PXSharedAlbumsActivityEntryAvatarConfiguration)initWithEmail:(id)email phone:(id)phone firstName:(id)name lastName:(id)lastName;
- (id)fullName;
@end

@implementation PXSharedAlbumsActivityEntryAvatarConfiguration

- (id)fullName
{
  firstName = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)self firstName];
  lastName = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)self lastName];
  v5 = PLLocalizedNameWithFirstAndLastName();

  return v5;
}

- (PXSharedAlbumsActivityEntryAvatarConfiguration)initWithEmail:(id)email phone:(id)phone firstName:(id)name lastName:(id)lastName
{
  emailCopy = email;
  phoneCopy = phone;
  nameCopy = name;
  lastNameCopy = lastName;
  v24.receiver = self;
  v24.super_class = PXSharedAlbumsActivityEntryAvatarConfiguration;
  v14 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)&v24 init];
  if (v14)
  {
    v15 = [emailCopy copy];
    email = v14->_email;
    v14->_email = v15;

    v17 = [phoneCopy copy];
    phone = v14->_phone;
    v14->_phone = v17;

    v19 = [nameCopy copy];
    firstName = v14->_firstName;
    v14->_firstName = v19;

    v21 = [lastNameCopy copy];
    lastName = v14->_lastName;
    v14->_lastName = v21;
  }

  return v14;
}

+ (id)avatarForAssetContributorInAlbumWithAlbumGUID:(id)d contributedAsset:(id)asset
{
  v19 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  cloudOwnerEmail = [assetCopy cloudOwnerEmail];
  cloudOwnerFirstName = [assetCopy cloudOwnerFirstName];
  cloudOwnerLastName = [assetCopy cloudOwnerLastName];
  v8 = cloudOwnerLastName;
  if (cloudOwnerFirstName)
  {
    if (cloudOwnerLastName)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = PLSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    uuid = [assetCopy uuid];
    v15 = 138543618;
    v16 = uuid;
    v17 = 2112;
    v18 = assetCopy;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Empty/missing firstName for asset [%{public}@]: %@", &v15, 0x16u);
  }

  if (!v8)
  {
LABEL_7:
    v11 = PLSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [assetCopy uuid];
      v15 = 138543618;
      v16 = uuid2;
      v17 = 2112;
      v18 = assetCopy;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Empty/missing lastName for asset [%{public}@]: %@", &v15, 0x16u);
    }
  }

LABEL_10:
  v13 = [[PXSharedAlbumsActivityEntryAvatarConfiguration alloc] initWithEmail:cloudOwnerEmail phone:0 firstName:cloudOwnerFirstName lastName:v8];

  return v13;
}

+ (id)avatarFromParticipantWithID:(id)d withPhotoLibrary:(id)library plPhotoLibrary:(id)photoLibrary
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6978AC0];
  dCopy = d;
  v7 = MEMORY[0x1E695DEC8];
  libraryCopy = library;
  dCopy2 = d;
  v10 = [v7 arrayWithObjects:&dCopy count:1];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];

  v12 = [v6 fetchParticipantsWithParticipantIDs:v10 options:librarySpecificFetchOptions];
  firstObject = [v12 firstObject];

  v14 = [PXSharedAlbumsActivityEntryAvatarConfiguration alloc];
  emailAddress = [firstObject emailAddress];
  phoneNumber = [firstObject phoneNumber];
  nameComponents = [firstObject nameComponents];
  givenName = [nameComponents givenName];
  nameComponents2 = [firstObject nameComponents];
  familyName = [nameComponents2 familyName];
  v21 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)v14 initWithEmail:emailAddress phone:phoneNumber firstName:givenName lastName:familyName];

  return v21;
}

+ (id)avatarFromOwnerOfPendingSharedAlbumWithGUID:(id)d withPhotoLibrary:(id)library plPhotoLibrary:(id)photoLibrary
{
  v26[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  dCopy = d;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludePendingShares:1];
  v9 = MEMORY[0x1E6978770];
  v26[0] = dCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v11 = [v9 fetchCollectionSharesWithScopeIdentifiers:v10 options:librarySpecificFetchOptions];
  firstObject = [v11 firstObject];

  v13 = MEMORY[0x1E6978AC0];
  librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];

  v15 = [v13 fetchOwnerParticipantInShare:firstObject options:librarySpecificFetchOptions2];
  firstObject2 = [v15 firstObject];

  v17 = [PXSharedAlbumsActivityEntryAvatarConfiguration alloc];
  emailAddress = [firstObject2 emailAddress];
  phoneNumber = [firstObject2 phoneNumber];
  nameComponents = [firstObject2 nameComponents];
  givenName = [nameComponents givenName];
  nameComponents2 = [firstObject2 nameComponents];
  familyName = [nameComponents2 familyName];
  v24 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)v17 initWithEmail:emailAddress phone:phoneNumber firstName:givenName lastName:familyName];

  return v24;
}

@end