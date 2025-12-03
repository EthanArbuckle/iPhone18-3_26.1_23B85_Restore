@interface PSIAlbumTranslator
+ (id)psiCollectionFromAlbum:(id)album indexingContext:(id)context;
@end

@implementation PSIAlbumTranslator

+ (id)psiCollectionFromAlbum:(id)album indexingContext:(id)context
{
  v30 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  contextCopy = context;
  uuid = [albumCopy uuid];
  valid = PLIsValidUUIDString();

  if (valid)
  {
    calendar = [contextCopy calendar];
    v27 = contextCopy;
    v10 = [PSIDate alloc];
    startDate = [albumCopy startDate];
    v12 = [(PSIDate *)v10 initWithUniversalDate:startDate calendar:calendar];

    v13 = [PSIDate alloc];
    endDate = [albumCopy endDate];
    v15 = [(PSIDate *)v13 initWithUniversalDate:endDate calendar:calendar];

    v16 = [PSICollection alloc];
    uuid2 = [albumCopy uuid];
    title = [albumCopy title];
    assets = [albumCopy assets];
    v20 = [assets count];
    startDate2 = [albumCopy startDate];
    v22 = [(PSICollection *)v16 initWithUUID:uuid2 startDate:v12 endDate:v15 title:title subtitle:0 type:3 assetsCountPrivate:v20 assetsCountShared:0 sortDate:startDate2];

    title2 = [albumCopy title];
    [(PSIObject *)v22 addContentString:title2 category:1400 owningCategory:0];

    contextCopy = v27;
  }

  else
  {
    v24 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      uuid3 = [albumCopy uuid];
      *buf = 138543362;
      v29 = uuid3;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Invalid Album UUID: %{public}@. Not inserting Album into PSI.", buf, 0xCu);
    }

    v22 = 0;
  }

  return v22;
}

@end