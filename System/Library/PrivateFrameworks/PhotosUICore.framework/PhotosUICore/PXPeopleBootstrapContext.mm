@interface PXPeopleBootstrapContext
+ (PXPeopleBootstrapContext)contextWithFace:(id)a3 type:(unint64_t)a4 delayedPersonBlock:(id)a5;
+ (PXPeopleBootstrapContext)contextWithPerson:(id)a3 type:(unint64_t)a4;
+ (PXPeopleBootstrapContext)contextWithPersonSuggestion:(id)a3;
- (NSString)localizedName;
- (PXPeopleBootstrapContext)init;
- (id)description;
@end

@implementation PXPeopleBootstrapContext

- (id)description
{
  v38.receiver = self;
  v38.super_class = PXPeopleBootstrapContext;
  v3 = [(PXPeopleBootstrapContext *)&v38 description];
  v4 = [v3 mutableCopy];

  v5 = [(PXPeopleBootstrapContext *)self sourcePerson];
  [v4 appendFormat:@"\nsourcePerson: %@, \n", v5];

  v6 = [(PXPeopleBootstrapContext *)self targetPerson];
  [v4 appendFormat:@"targetPerson: %@, \n", v6];

  v7 = [(PXPeopleBootstrapContext *)self bootstrapType];
  if (v7 - 1 > 2)
  {
    v8 = @"PXPeopleBootstrapTypeFavorite";
  }

  else
  {
    v8 = off_1E7744730[v7 - 1];
  }

  [v4 appendFormat:@"bootstrapType: %@, \n", v8];
  v9 = [(PXPeopleBootstrapContext *)self nameSelection];
  [v4 appendFormat:@"nameSelection: %@, \n", v9];

  v10 = [(PXPeopleBootstrapContext *)self suggestionManager];
  [v4 appendFormat:@"suggestionManager: %@, \n", v10];

  if ([(PXPeopleBootstrapContext *)self skipInitialAction])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = v11;
  [v4 appendFormat:@"skipInitialAction: %@, \n", v12];

  v13 = [(PXPeopleBootstrapContext *)self onInitBlock];
  v14 = _Block_copy(v13);
  [v4 appendFormat:@"onInitBlock: %@, \n", v14];

  v15 = [(PXPeopleBootstrapContext *)self cancelBlock];
  v16 = _Block_copy(v15);
  [v4 appendFormat:@"cancelBlock: %@, \n", v16];

  if ([(PXPeopleBootstrapContext *)self wantsNaming])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = v17;
  [v4 appendFormat:@"wantsNaming: %@, \n", v18];

  if ([(PXPeopleBootstrapContext *)self wantsMergeCandidateSuggestions])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v20 = v19;
  [v4 appendFormat:@"wantsMergeCandidateSuggestions: %@, \n", v20];

  if ([(PXPeopleBootstrapContext *)self wantsPostNaming])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v22 = v21;
  [v4 appendFormat:@"wantsPostNaming: %@, \n", v22];

  if ([(PXPeopleBootstrapContext *)self wantsToBeAddedToPeopleAlbum])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v24 = v23;
  [v4 appendFormat:@"wantsToBeAddedToPeopleAlbum: %@, \n", v24];

  v25 = [(PXPeopleBootstrapContext *)self prefetchedDataSource];
  [v4 appendFormat:@"prefetchedDataSource: %@, \n", v25];

  v26 = [(PXPeopleBootstrapContext *)self callerInfo];
  [v4 appendFormat:@"callerInfo: %@, \n", v26];

  v27 = [(PXPeopleBootstrapContext *)self localizedName];
  [v4 appendFormat:@"localizedName: %@, \n", v27];

  v28 = [(PXPeopleBootstrapContext *)self personSuggestion];
  [v4 appendFormat:@"personSuggestion: %@, \n", v28];

  v29 = [(PXPeopleBootstrapContext *)self face];
  [v4 appendFormat:@"face: %@\n", v29];

  [(PXPeopleBootstrapContext *)self backingScaleFactor];
  [v4 appendFormat:@"backingScaleFactor: %f\n", v30];
  if ([(PXPeopleBootstrapContext *)self didCommitPreBootstrapAction])
  {
    v31 = @"YES";
  }

  else
  {
    v31 = @"NO";
  }

  v32 = v31;
  [v4 appendFormat:@"didCommitPreBootstrapAction: %@\n", v32];

  v33 = [(PXPeopleBootstrapContext *)self keyAsset];
  v34 = [v33 localIdentifier];
  [v4 appendFormat:@"keyAsset: %@\n", v34];

  if ([(PXPeopleBootstrapContext *)self wantsContactUnlinkage])
  {
    v35 = @"YES";
  }

  else
  {
    v35 = @"NO";
  }

  v36 = v35;
  [v4 appendFormat:@"wantsContactUnlinkage: %@", v36];

  return v4;
}

- (NSString)localizedName
{
  v3 = [(PXPeopleBootstrapContext *)self nameSelection];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localizedName];
  }

  else
  {
    v6 = [(PXPeopleBootstrapContext *)self sourcePerson];
    v5 = [v6 px_localizedName];
  }

  return v5;
}

- (PXPeopleBootstrapContext)init
{
  v3.receiver = self;
  v3.super_class = PXPeopleBootstrapContext;
  result = [(PXPeopleBootstrapContext *)&v3 init];
  if (result)
  {
    *&result->_wantsNaming = 257;
    result->_wantsPostNaming = 1;
  }

  return result;
}

+ (PXPeopleBootstrapContext)contextWithPersonSuggestion:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v5 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXPeopleBootstrapContext.m" lineNumber:68 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"personSuggestion", v11, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXPeopleBootstrapContext.m" lineNumber:68 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"personSuggestion", v11}];
  }

LABEL_3:
  v6 = [v5 person];
  v7 = [PXPeopleBootstrapContext contextWithPerson:v6 type:2];
  [v7 setPersonSuggestion:v5];

  return v7;
}

+ (PXPeopleBootstrapContext)contextWithFace:(id)a3 type:(unint64_t)a4 delayedPersonBlock:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PXPeopleBootstrapContext.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"face"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"PXPeopleBootstrapContext.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"delayedPersonBlock"}];

LABEL_3:
  if (a4 != 1)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PXPeopleBootstrapContext.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"type == PXPeopleBootstrapTypeName"}];
  }

  v12 = objc_alloc_init(PXPeopleBootstrapContext);
  [(PXPeopleBootstrapContext *)v12 setBootstrapType:a4];
  [(PXPeopleBootstrapContext *)v12 setWantsMergeCandidateSuggestions:0];
  [(PXPeopleBootstrapContext *)v12 setFace:v9];
  [(PXPeopleBootstrapContext *)v12 setDelayedPersonBlock:v11];

  return v12;
}

+ (PXPeopleBootstrapContext)contextWithPerson:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXPeopleBootstrapContext.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v8 = objc_alloc_init(PXPeopleBootstrapContext);
  [(PXPeopleBootstrapContext *)v8 setSourcePerson:v7];
  [(PXPeopleBootstrapContext *)v8 setBootstrapType:a4];

  return v8;
}

@end