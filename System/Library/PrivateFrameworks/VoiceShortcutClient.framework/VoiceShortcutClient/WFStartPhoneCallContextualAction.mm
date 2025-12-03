@interface WFStartPhoneCallContextualAction
+ (void)getTopHitContextualActionsWithLimit:(int64_t)limit completion:(id)completion;
- (WFStartPhoneCallContextualAction)initWithPerson:(id)person serializedRepresentation:(id)representation namedQueryInfo:(id)info;
- (id)_staticDisplayStringForDecoding;
- (id)uniqueIdentifier;
@end

@implementation WFStartPhoneCallContextualAction

- (WFStartPhoneCallContextualAction)initWithPerson:(id)person serializedRepresentation:(id)representation namedQueryInfo:(id)info
{
  v43[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  representationCopy = representation;
  infoCopy = info;
  if (personCopy)
  {
    if (representationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFStartPhoneCallContextualAction.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"person"}];

    if (representationCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFStartPhoneCallContextualAction.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"serializedRepresentation"}];

LABEL_3:
  nameComponents = [personCopy nameComponents];
  givenName = [nameComponents givenName];
  v13 = givenName;
  if (givenName)
  {
    displayName = givenName;
  }

  else
  {
    displayName = [personCopy displayName];
  }

  v15 = displayName;

  if (![v15 length])
  {
    displayName2 = [personCopy displayName];
    v17 = displayName2;
    if (displayName2)
    {
      value = displayName2;
    }

    else
    {
      personHandle = [personCopy personHandle];
      value = [personHandle value];

      v15 = personHandle;
    }

    v15 = value;
  }

  v41 = representationCopy;
  v20 = [[WFContextualActionParameter alloc] initWithType:@"WFContactContentItem" displayString:v15 wfParameterKey:@"WFCallContact" wfSerializedRepresentation:representationCopy];
  image = [personCopy image];
  _imageData = [image _imageData];

  v23 = [WFContextualActionIcon alloc];
  v24 = v23;
  if (_imageData)
  {
    image2 = [personCopy image];
    _imageData2 = [image2 _imageData];
    v27 = [(WFContextualActionIcon *)v24 initWithImageData:_imageData2 scale:1 displayStyle:2.0];
  }

  else
  {
    v27 = [(WFContextualActionIcon *)v23 initWithSystemName:@"person.fill"];
  }

  v43[0] = v20;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  v29 = MEMORY[0x1E696AEC0];
  v30 = WFLocalizedString(@"Call %@");
  v31 = [v29 localizedStringWithFormat:v30, v15];
  WFLocalizedString(@"Start Call");
  v32 = v39 = v20;
  v33 = [WFContextualActionIcon iconWithApplicationBundleIdentifier:@"com.apple.mobilephone"];
  v42.receiver = self;
  v42.super_class = WFStartPhoneCallContextualAction;
  v34 = [(WFTopHitItemContextualAction *)&v42 initWithItem:personCopy identifier:@"com.apple.mobilephone.call" wfActionIdentifier:@"com.apple.mobilephone.call" associatedAppBundleIdentifier:@"com.apple.mobilephone" parameters:v28 displayString:v31 title:v32 subtitle:v15 primaryColor:4 icon:v27 accessoryIcon:v33 namedQueryInfo:infoCopy];

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)_staticDisplayStringForDecoding
{
  person = [(WFStartPhoneCallContextualAction *)self person];
  nameComponents = [person nameComponents];
  givenName = [nameComponents givenName];
  v5 = givenName;
  if (givenName)
  {
    displayName = givenName;
  }

  else
  {
    displayName = [person displayName];
  }

  v7 = displayName;

  if (![v7 length])
  {
    displayName2 = [person displayName];
    v9 = displayName2;
    if (displayName2)
    {
      value = displayName2;
    }

    else
    {
      personHandle = [person personHandle];
      value = [personHandle value];

      v7 = personHandle;
    }

    v7 = value;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = WFLocalizedString(@"Call %@");
  v14 = [v12 localizedStringWithFormat:v13, v7];

  return v14;
}

- (id)uniqueIdentifier
{
  identifier = [(WFContextualAction *)self identifier];
  person = [(WFStartPhoneCallContextualAction *)self person];
  contactIdentifier = [person contactIdentifier];
  v6 = contactIdentifier;
  if (contactIdentifier)
  {
    v7 = [identifier stringByAppendingFormat:@":%@", contactIdentifier];
  }

  else
  {
    person2 = [(WFStartPhoneCallContextualAction *)self person];
    displayName = [person2 displayName];
    v7 = [identifier stringByAppendingFormat:@":%@", displayName];
  }

  return v7;
}

+ (void)getTopHitContextualActionsWithLimit:(int64_t)limit completion:(id)completion
{
  v5 = MEMORY[0x1E696ABC0];
  completionCopy = completion;
  v7 = [v5 errorWithDomain:@"TopHitItemContextualActionError" code:0 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v7);
}

@end