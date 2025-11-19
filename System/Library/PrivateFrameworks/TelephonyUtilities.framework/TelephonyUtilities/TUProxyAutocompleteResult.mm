@interface TUProxyAutocompleteResult
- (CNContact)backingContact;
- (NSArray)handles;
- (NSArray)idsCanonicalDestinations;
- (NSString)backingContactIdentifier;
- (NSString)destinationId;
- (NSString)displayName;
- (TUProxyAutocompleteResult)init;
- (TUProxyAutocompleteResult)initWithAutocompleteResult:(id)a3;
@end

@implementation TUProxyAutocompleteResult

- (TUProxyAutocompleteResult)initWithAutocompleteResult:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUProxyAutocompleteResult;
  v5 = [(TUProxyAutocompleteResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TUProxyAutocompleteResult *)v5 setAutocompleteResult:v4];
  }

  return v6;
}

- (TUProxyAutocompleteResult)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[TUProxyAutocompleteResult init]"];
  v6 = [v4 stringWithFormat:@"Don't call %@, call designated initializer instead.", v5];
  NSLog(&cfstr_TuassertionFai.isa, v6);

  if (_TUAssertShouldCrashApplication())
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[TUProxyAutocompleteResult init]"];
    [v7 handleFailureInMethod:a2 object:self file:@"TUProxyAutocompleteResult.m" lineNumber:41 description:{@"Don't call %@, call designated initializer instead.", v8}];
  }

  return 0;
}

- (NSString)displayName
{
  v3 = [(TUProxyAutocompleteResult *)self autocompleteResult];
  v4 = [v3 displayName];

  if (!v4)
  {
    v4 = [(TUProxyAutocompleteResult *)self destinationId];
  }

  return v4;
}

- (CNContact)backingContact
{
  v3 = +[TUSearchController sharedInstance];
  v4 = [v3 contactStore];

  v5 = [(TUProxyAutocompleteResult *)self autocompleteResult];
  v6 = [v5 identifier];
  v7 = [v4 contactForIdentifier:v6];

  return v7;
}

- (NSString)backingContactIdentifier
{
  v2 = [(TUProxyAutocompleteResult *)self autocompleteResult];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)destinationId
{
  v3 = [(TUProxyAutocompleteResult *)self autocompleteResult];
  v4 = [v3 value];
  v5 = [v4 address];

  if (!v5)
  {
    v6 = [(TUProxyAutocompleteResult *)self backingContact];
    v5 = [v6 anyDestinationID];
  }

  return v5;
}

- (NSArray)handles
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(TUProxyAutocompleteResult *)self backingContact];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 phoneNumberStrings];
    v6 = [v4 emailAddressStrings];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];

LABEL_5:
    goto LABEL_6;
  }

  v8 = [(TUProxyAutocompleteResult *)self destinationId];

  if (v8)
  {
    v5 = [(TUProxyAutocompleteResult *)self destinationId];
    v11[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    goto LABEL_5;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_6:

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSArray)idsCanonicalDestinations
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(TUProxyAutocompleteResult *)self destinationId];
  v5 = [v4 IDSFormattedDestinationID];

  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(TUProxyAutocompleteResult *)self backingContact];

  if (v6)
  {
    v7 = [(TUProxyAutocompleteResult *)self backingContact];
    v8 = [v7 allIDSDestinations];
    [v3 addObjectsFromArray:v8];
  }

  v9 = [v3 allObjects];

  return v9;
}

@end