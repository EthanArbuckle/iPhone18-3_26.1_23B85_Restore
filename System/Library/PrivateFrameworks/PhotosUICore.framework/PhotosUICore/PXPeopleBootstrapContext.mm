@interface PXPeopleBootstrapContext
+ (PXPeopleBootstrapContext)contextWithFace:(id)face type:(unint64_t)type delayedPersonBlock:(id)block;
+ (PXPeopleBootstrapContext)contextWithPerson:(id)person type:(unint64_t)type;
+ (PXPeopleBootstrapContext)contextWithPersonSuggestion:(id)suggestion;
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

  sourcePerson = [(PXPeopleBootstrapContext *)self sourcePerson];
  [v4 appendFormat:@"\nsourcePerson: %@, \n", sourcePerson];

  targetPerson = [(PXPeopleBootstrapContext *)self targetPerson];
  [v4 appendFormat:@"targetPerson: %@, \n", targetPerson];

  bootstrapType = [(PXPeopleBootstrapContext *)self bootstrapType];
  if (bootstrapType - 1 > 2)
  {
    v8 = @"PXPeopleBootstrapTypeFavorite";
  }

  else
  {
    v8 = off_1E7744730[bootstrapType - 1];
  }

  [v4 appendFormat:@"bootstrapType: %@, \n", v8];
  nameSelection = [(PXPeopleBootstrapContext *)self nameSelection];
  [v4 appendFormat:@"nameSelection: %@, \n", nameSelection];

  suggestionManager = [(PXPeopleBootstrapContext *)self suggestionManager];
  [v4 appendFormat:@"suggestionManager: %@, \n", suggestionManager];

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

  onInitBlock = [(PXPeopleBootstrapContext *)self onInitBlock];
  v14 = _Block_copy(onInitBlock);
  [v4 appendFormat:@"onInitBlock: %@, \n", v14];

  cancelBlock = [(PXPeopleBootstrapContext *)self cancelBlock];
  v16 = _Block_copy(cancelBlock);
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

  prefetchedDataSource = [(PXPeopleBootstrapContext *)self prefetchedDataSource];
  [v4 appendFormat:@"prefetchedDataSource: %@, \n", prefetchedDataSource];

  callerInfo = [(PXPeopleBootstrapContext *)self callerInfo];
  [v4 appendFormat:@"callerInfo: %@, \n", callerInfo];

  localizedName = [(PXPeopleBootstrapContext *)self localizedName];
  [v4 appendFormat:@"localizedName: %@, \n", localizedName];

  personSuggestion = [(PXPeopleBootstrapContext *)self personSuggestion];
  [v4 appendFormat:@"personSuggestion: %@, \n", personSuggestion];

  face = [(PXPeopleBootstrapContext *)self face];
  [v4 appendFormat:@"face: %@\n", face];

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

  keyAsset = [(PXPeopleBootstrapContext *)self keyAsset];
  localIdentifier = [keyAsset localIdentifier];
  [v4 appendFormat:@"keyAsset: %@\n", localIdentifier];

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
  nameSelection = [(PXPeopleBootstrapContext *)self nameSelection];
  v4 = nameSelection;
  if (nameSelection)
  {
    localizedName = [nameSelection localizedName];
  }

  else
  {
    sourcePerson = [(PXPeopleBootstrapContext *)self sourcePerson];
    localizedName = [sourcePerson px_localizedName];
  }

  return localizedName;
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

+ (PXPeopleBootstrapContext)contextWithPersonSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (suggestionCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [suggestionCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapContext.m" lineNumber:68 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"personSuggestion", v11, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapContext.m" lineNumber:68 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"personSuggestion", v11}];
  }

LABEL_3:
  person = [suggestionCopy person];
  v7 = [PXPeopleBootstrapContext contextWithPerson:person type:2];
  [v7 setPersonSuggestion:suggestionCopy];

  return v7;
}

+ (PXPeopleBootstrapContext)contextWithFace:(id)face type:(unint64_t)type delayedPersonBlock:(id)block
{
  faceCopy = face;
  blockCopy = block;
  v11 = blockCopy;
  if (faceCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapContext.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"face"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapContext.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"delayedPersonBlock"}];

LABEL_3:
  if (type != 1)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapContext.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"type == PXPeopleBootstrapTypeName"}];
  }

  v12 = objc_alloc_init(PXPeopleBootstrapContext);
  [(PXPeopleBootstrapContext *)v12 setBootstrapType:type];
  [(PXPeopleBootstrapContext *)v12 setWantsMergeCandidateSuggestions:0];
  [(PXPeopleBootstrapContext *)v12 setFace:faceCopy];
  [(PXPeopleBootstrapContext *)v12 setDelayedPersonBlock:v11];

  return v12;
}

+ (PXPeopleBootstrapContext)contextWithPerson:(id)person type:(unint64_t)type
{
  personCopy = person;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapContext.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v8 = objc_alloc_init(PXPeopleBootstrapContext);
  [(PXPeopleBootstrapContext *)v8 setSourcePerson:personCopy];
  [(PXPeopleBootstrapContext *)v8 setBootstrapType:type];

  return v8;
}

@end