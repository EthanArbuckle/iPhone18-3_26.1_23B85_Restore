@interface PHShareParticipant(PXSharedLibraryPhotoKitParticipant)
- (PXSharedLibraryPhotoKitImageProvider)imageProvider;
- (id)person;
- (uint64_t)status;
@end

@implementation PHShareParticipant(PXSharedLibraryPhotoKitParticipant)

- (PXSharedLibraryPhotoKitImageProvider)imageProvider
{
  v1 = [[PXSharedLibraryPhotoKitImageProvider alloc] initWithParticipant:self];

  return v1;
}

- (uint64_t)status
{
  if ([self exitState])
  {
    return 3;
  }

  v3 = [self acceptanceStatus] - 1;
  if (v3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A5383108[v3];
  }
}

- (id)person
{
  photoLibrary = [self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = [MEMORY[0x1E6978980] fetchPersonForShareParticipant:self options:librarySpecificFetchOptions];
  firstObject = [v4 firstObject];

  return firstObject;
}

@end