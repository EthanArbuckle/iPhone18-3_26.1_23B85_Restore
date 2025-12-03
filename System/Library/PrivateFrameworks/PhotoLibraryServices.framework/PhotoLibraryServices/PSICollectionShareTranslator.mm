@interface PSICollectionShareTranslator
+ (id)psiCollectionFromCollectionShare:(id)share indexingContext:(id)context;
@end

@implementation PSICollectionShareTranslator

+ (id)psiCollectionFromCollectionShare:(id)share indexingContext:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  contextCopy = context;
  uuid = [shareCopy uuid];
  valid = PLIsValidUUIDString();

  if (valid)
  {
    calendar = [contextCopy calendar];
    v10 = [PSIDate alloc];
    creationDate = [shareCopy creationDate];
    v12 = [(PSIDate *)v10 initWithUniversalDate:creationDate calendar:calendar];

    v13 = [PSICollection alloc];
    uuid2 = [shareCopy uuid];
    title = [shareCopy title];
    creationDate2 = [shareCopy creationDate];
    v17 = [(PSICollection *)v13 initWithUUID:uuid2 startDate:v12 endDate:v12 title:title subtitle:0 type:3 assetsCountPrivate:0 assetsCountShared:0 sortDate:creationDate2];

    title2 = [shareCopy title];
    [(PSIObject *)v17 addContentString:title2 category:1402 owningCategory:0];
  }

  else
  {
    v19 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      uuid3 = [shareCopy uuid];
      *buf = 138543362;
      v23 = uuid3;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Invalid CollectionShare UUID: %{public}@. Not inserting CollectionShare into PSI.", buf, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

@end