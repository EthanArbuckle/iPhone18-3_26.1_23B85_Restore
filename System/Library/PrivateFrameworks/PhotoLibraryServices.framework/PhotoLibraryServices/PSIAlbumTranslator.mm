@interface PSIAlbumTranslator
+ (id)psiCollectionFromAlbum:(id)a3 indexingContext:(id)a4;
@end

@implementation PSIAlbumTranslator

+ (id)psiCollectionFromAlbum:(id)a3 indexingContext:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 uuid];
  valid = PLIsValidUUIDString();

  if (valid)
  {
    v9 = [v6 calendar];
    v27 = v6;
    v10 = [PSIDate alloc];
    v11 = [v5 startDate];
    v12 = [(PSIDate *)v10 initWithUniversalDate:v11 calendar:v9];

    v13 = [PSIDate alloc];
    v14 = [v5 endDate];
    v15 = [(PSIDate *)v13 initWithUniversalDate:v14 calendar:v9];

    v16 = [PSICollection alloc];
    v17 = [v5 uuid];
    v18 = [v5 title];
    v19 = [v5 assets];
    v20 = [v19 count];
    v21 = [v5 startDate];
    v22 = [(PSICollection *)v16 initWithUUID:v17 startDate:v12 endDate:v15 title:v18 subtitle:0 type:3 assetsCountPrivate:v20 assetsCountShared:0 sortDate:v21];

    v23 = [v5 title];
    [(PSIObject *)v22 addContentString:v23 category:1400 owningCategory:0];

    v6 = v27;
  }

  else
  {
    v24 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v5 uuid];
      *buf = 138543362;
      v29 = v25;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Invalid Album UUID: %{public}@. Not inserting Album into PSI.", buf, 0xCu);
    }

    v22 = 0;
  }

  return v22;
}

@end