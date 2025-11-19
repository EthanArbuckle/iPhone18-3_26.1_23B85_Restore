@interface PSICollectionShareTranslator
+ (id)psiCollectionFromCollectionShare:(id)a3 indexingContext:(id)a4;
@end

@implementation PSICollectionShareTranslator

+ (id)psiCollectionFromCollectionShare:(id)a3 indexingContext:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 uuid];
  valid = PLIsValidUUIDString();

  if (valid)
  {
    v9 = [v6 calendar];
    v10 = [PSIDate alloc];
    v11 = [v5 creationDate];
    v12 = [(PSIDate *)v10 initWithUniversalDate:v11 calendar:v9];

    v13 = [PSICollection alloc];
    v14 = [v5 uuid];
    v15 = [v5 title];
    v16 = [v5 creationDate];
    v17 = [(PSICollection *)v13 initWithUUID:v14 startDate:v12 endDate:v12 title:v15 subtitle:0 type:3 assetsCountPrivate:0 assetsCountShared:0 sortDate:v16];

    v18 = [v5 title];
    [(PSIObject *)v17 addContentString:v18 category:1402 owningCategory:0];
  }

  else
  {
    v19 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v5 uuid];
      *buf = 138543362;
      v23 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Invalid CollectionShare UUID: %{public}@. Not inserting CollectionShare into PSI.", buf, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

@end