@interface TUAdhocResult
- (CNContact)backingContact;
- (NSArray)handles;
- (NSArray)idsCanonicalDestinations;
- (NSString)backingContactIdentifier;
- (NSString)displayName;
- (TUAdhocResult)initWithString:(id)string;
- (TUSearchController)searchController;
@end

@implementation TUAdhocResult

- (TUAdhocResult)initWithString:(id)string
{
  stringCopy = string;
  v8.receiver = self;
  v8.super_class = TUAdhocResult;
  v5 = [(TUAdhocResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TUAdhocResult *)v5 setValue:stringCopy];
  }

  return v6;
}

- (NSString)displayName
{
  value = [(TUAdhocResult *)self value];
  formattedDisplayID = [value formattedDisplayID];

  return formattedDisplayID;
}

- (CNContact)backingContact
{
  searchController = [(TUAdhocResult *)self searchController];
  contactStore = [searchController contactStore];
  value = [(TUAdhocResult *)self value];
  v6 = [contactStore contactForDestinationId:value];

  return v6;
}

- (NSString)backingContactIdentifier
{
  backingContact = [(TUAdhocResult *)self backingContact];
  identifier = [backingContact identifier];

  return identifier;
}

- (NSArray)handles
{
  v9[1] = *MEMORY[0x1E69E9840];
  value = [(TUAdhocResult *)self value];
  v4 = [value length];

  if (v4)
  {
    value2 = [(TUAdhocResult *)self value];
    v9[0] = value2;
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
  value = [(TUAdhocResult *)self value];
  v4 = [value length];

  if (v4)
  {
    value2 = [(TUAdhocResult *)self value];
    iDSFormattedDestinationID = [value2 IDSFormattedDestinationID];

    if (iDSFormattedDestinationID)
    {
      v10[0] = iDSFormattedDestinationID;
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