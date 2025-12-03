@interface TUProxyAutocompleteResult
- (CNContact)backingContact;
- (NSArray)handles;
- (NSArray)idsCanonicalDestinations;
- (NSString)backingContactIdentifier;
- (NSString)destinationId;
- (NSString)displayName;
- (TUProxyAutocompleteResult)init;
- (TUProxyAutocompleteResult)initWithAutocompleteResult:(id)result;
@end

@implementation TUProxyAutocompleteResult

- (TUProxyAutocompleteResult)initWithAutocompleteResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = TUProxyAutocompleteResult;
  v5 = [(TUProxyAutocompleteResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TUProxyAutocompleteResult *)v5 setAutocompleteResult:resultCopy];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[TUProxyAutocompleteResult init]"];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TUProxyAutocompleteResult.m" lineNumber:41 description:{@"Don't call %@, call designated initializer instead.", v8}];
  }

  return 0;
}

- (NSString)displayName
{
  autocompleteResult = [(TUProxyAutocompleteResult *)self autocompleteResult];
  displayName = [autocompleteResult displayName];

  if (!displayName)
  {
    displayName = [(TUProxyAutocompleteResult *)self destinationId];
  }

  return displayName;
}

- (CNContact)backingContact
{
  v3 = +[TUSearchController sharedInstance];
  contactStore = [v3 contactStore];

  autocompleteResult = [(TUProxyAutocompleteResult *)self autocompleteResult];
  identifier = [autocompleteResult identifier];
  v7 = [contactStore contactForIdentifier:identifier];

  return v7;
}

- (NSString)backingContactIdentifier
{
  autocompleteResult = [(TUProxyAutocompleteResult *)self autocompleteResult];
  identifier = [autocompleteResult identifier];

  return identifier;
}

- (NSString)destinationId
{
  autocompleteResult = [(TUProxyAutocompleteResult *)self autocompleteResult];
  value = [autocompleteResult value];
  address = [value address];

  if (!address)
  {
    backingContact = [(TUProxyAutocompleteResult *)self backingContact];
    address = [backingContact anyDestinationID];
  }

  return address;
}

- (NSArray)handles
{
  v11[1] = *MEMORY[0x1E69E9840];
  backingContact = [(TUProxyAutocompleteResult *)self backingContact];
  v4 = backingContact;
  if (backingContact)
  {
    phoneNumberStrings = [backingContact phoneNumberStrings];
    emailAddressStrings = [v4 emailAddressStrings];
    v7 = [phoneNumberStrings arrayByAddingObjectsFromArray:emailAddressStrings];

LABEL_5:
    goto LABEL_6;
  }

  destinationId = [(TUProxyAutocompleteResult *)self destinationId];

  if (destinationId)
  {
    phoneNumberStrings = [(TUProxyAutocompleteResult *)self destinationId];
    v11[0] = phoneNumberStrings;
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
  destinationId = [(TUProxyAutocompleteResult *)self destinationId];
  iDSFormattedDestinationID = [destinationId IDSFormattedDestinationID];

  if (iDSFormattedDestinationID)
  {
    [v3 addObject:iDSFormattedDestinationID];
  }

  backingContact = [(TUProxyAutocompleteResult *)self backingContact];

  if (backingContact)
  {
    backingContact2 = [(TUProxyAutocompleteResult *)self backingContact];
    allIDSDestinations = [backingContact2 allIDSDestinations];
    [v3 addObjectsFromArray:allIDSDestinations];
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

@end