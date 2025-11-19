@interface PXPeopleConfirmationInfo
- (PXPeopleConfirmationInfo)initWithBootstrapContext:(id)a3;
- (PXPeopleConfirmationInfo)initWithSourcePerson:(id)a3 targetPerson:(id)a4 confirmedSuggestions:(id)a5;
- (id)description;
@end

@implementation PXPeopleConfirmationInfo

- (id)description
{
  v23.receiver = self;
  v23.super_class = PXPeopleConfirmationInfo;
  v3 = [(PXPeopleConfirmationInfo *)&v23 description];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(PXPeopleConfirmationInfo *)self sourcePerson];
  v7 = [v5 stringWithFormat:@"\nsourcePerson: %@\n", v6];
  [v4 appendString:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(PXPeopleConfirmationInfo *)self targetPerson];
  v10 = [v8 stringWithFormat:@"targetPerson: %@\n", v9];
  [v4 appendString:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(PXPeopleConfirmationInfo *)self otherPersons];
  v13 = [v11 stringWithFormat:@"otherPersons: %@\n", v12];
  [v4 appendString:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(PXPeopleConfirmationInfo *)self wasNaming];
  v16 = @"NO";
  if (v15)
  {
    v16 = @"YES";
  }

  v17 = v16;
  v18 = [v14 stringWithFormat:@"wasNaming: %@\n", v17];
  [v4 appendString:v18];

  v19 = MEMORY[0x1E696AEC0];
  v20 = [(PXPeopleConfirmationInfo *)self localizedName];
  v21 = [v19 stringWithFormat:@"localizedName: %@\n", v20];
  [v4 appendString:v21];

  return v4;
}

- (PXPeopleConfirmationInfo)initWithBootstrapContext:(id)a3
{
  v4 = a3;
  [v4 sourcePerson];
  objc_claimAutoreleasedReturnValue();
  [v4 targetPerson];
  objc_claimAutoreleasedReturnValue();
  [v4 suggestionManager];
  [objc_claimAutoreleasedReturnValue() currentSuggestions];
  objc_claimAutoreleasedReturnValue();
  self;
  PXMap();
}

id __53__PXPeopleConfirmationInfo_initWithBootstrapContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = objc_opt_class();
    v9 = NSStringFromClass(v12);
    v13 = [v3 px_descriptionForAssertionMessage];
    [v5 handleFailureInMethod:v10 object:v11 file:@"PXPeopleConfirmationInfo.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"person", v9, v13}];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 handleFailureInMethod:v6 object:v7 file:@"PXPeopleConfirmationInfo.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"person", v9}];
  }

LABEL_3:

  return v3;
}

- (PXPeopleConfirmationInfo)initWithSourcePerson:(id)a3 targetPerson:(id)a4 confirmedSuggestions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = PXPeopleConfirmationInfo;
  v12 = [(PXPeopleConfirmationInfo *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourcePerson, a3);
    objc_storeStrong(&v13->_targetPerson, a4);
    v14 = [v11 mutableCopy];
    [v14 removeObject:v13->_sourcePerson];
    [v14 removeObject:v13->_targetPerson];
    v15 = [v14 copy];
    otherPersons = v13->_otherPersons;
    v13->_otherPersons = v15;
  }

  return v13;
}

@end