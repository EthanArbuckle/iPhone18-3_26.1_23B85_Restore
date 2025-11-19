@interface TUAdhocResult
- (CNContact)backingContact;
- (NSArray)handles;
- (NSArray)idsCanonicalDestinations;
- (NSString)backingContactIdentifier;
- (NSString)displayName;
- (TUAdhocResult)initWithString:(id)a3;
- (TUSearchController)searchController;
@end

@implementation TUAdhocResult

- (TUAdhocResult)initWithString:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUAdhocResult;
  v5 = [(TUAdhocResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TUAdhocResult *)v5 setValue:v4];
  }

  return v6;
}

- (NSString)displayName
{
  v2 = [(TUAdhocResult *)self value];
  v3 = [v2 formattedDisplayID];

  return v3;
}

- (CNContact)backingContact
{
  v3 = [(TUAdhocResult *)self searchController];
  v4 = [v3 contactStore];
  v5 = [(TUAdhocResult *)self value];
  v6 = [v4 contactForDestinationId:v5];

  return v6;
}

- (NSString)backingContactIdentifier
{
  v2 = [(TUAdhocResult *)self backingContact];
  v3 = [v2 identifier];

  return v3;
}

- (NSArray)handles
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(TUAdhocResult *)self value];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(TUAdhocResult *)self value];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSArray)idsCanonicalDestinations
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(TUAdhocResult *)self value];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(TUAdhocResult *)self value];
    v6 = [v5 IDSFormattedDestinationID];

    if (v6)
    {
      v10[0] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (TUSearchController)searchController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);

  return WeakRetained;
}

@end