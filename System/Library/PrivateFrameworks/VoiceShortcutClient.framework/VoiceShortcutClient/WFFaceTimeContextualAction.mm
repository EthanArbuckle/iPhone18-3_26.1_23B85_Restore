@interface WFFaceTimeContextualAction
- (WFFaceTimeContextualAction)initWithPerson:(id)person type:(unint64_t)type callTypeSerializedRepresentation:(id)representation personSerializedRepresentation:(id)serializedRepresentation namedQueryInfo:(id)info;
- (id)_staticDisplayStringForDecoding;
- (id)uniqueIdentifier;
@end

@implementation WFFaceTimeContextualAction

- (WFFaceTimeContextualAction)initWithPerson:(id)person type:(unint64_t)type callTypeSerializedRepresentation:(id)representation personSerializedRepresentation:(id)serializedRepresentation namedQueryInfo:(id)info
{
  v61[2] = *MEMORY[0x1E69E9840];
  personCopy = person;
  representationCopy = representation;
  serializedRepresentationCopy = serializedRepresentation;
  infoCopy = info;
  if (personCopy)
  {
    if (representationCopy)
    {
      goto LABEL_3;
    }

LABEL_28:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFaceTimeContextualAction.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"callTypeSerializedRepresentation"}];

    if (serializedRepresentationCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFFaceTimeContextualAction.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"person"}];

  if (!representationCopy)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (serializedRepresentationCopy)
  {
    goto LABEL_4;
  }

LABEL_29:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFFaceTimeContextualAction.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"personSerializedRepresentation"}];

LABEL_4:
  v15 = @"Video";
  typeCopy = type;
  if (type == 1)
  {
    v15 = @"Audio";
  }

  v16 = v15;
  v17 = WFLocalizedString(v16);
  nameComponents = [personCopy nameComponents];
  givenName = [nameComponents givenName];
  v20 = givenName;
  if (givenName)
  {
    displayName = givenName;
  }

  else
  {
    displayName = [personCopy displayName];
  }

  v22 = displayName;

  if (![v22 length])
  {
    displayName2 = [personCopy displayName];
    v24 = displayName2;
    if (displayName2)
    {
      value = displayName2;
    }

    else
    {
      [personCopy personHandle];
      v27 = v26 = v17;
      value = [v27 value];

      v22 = v27;
      v17 = v26;
    }

    v22 = value;
  }

  v59 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:v17 wfParameterKey:@"WFFaceTimeType" wfSerializedRepresentation:representationCopy];
  v55 = serializedRepresentationCopy;
  v28 = [[WFContextualActionParameter alloc] initWithType:@"WFContactContentItem" displayString:v22 wfParameterKey:@"WFFaceTimeContact" wfSerializedRepresentation:serializedRepresentationCopy];
  image = [personCopy image];
  _imageData = [image _imageData];

  if (_imageData)
  {
    v31 = [WFContextualActionIcon alloc];
    image2 = [personCopy image];
    _imageData2 = [image2 _imageData];
    v51 = [(WFContextualActionIcon *)v31 initWithImageData:_imageData2 scale:1 displayStyle:2.0];
  }

  else
  {
    v51 = 0;
  }

  v56 = representationCopy;
  if (typeCopy == 1)
  {
    v35 = +[WFDevice currentDevice];
    idiom = [v35 idiom];

    if (idiom == 1)
    {
      v37 = [WFContextualActionIcon iconWithImageName:@"Phone"];
LABEL_25:
      v38 = v37;
      goto LABEL_26;
    }

    v34 = @"com.apple.mobilephone";
LABEL_24:
    v37 = [WFContextualActionIcon iconWithApplicationBundleIdentifier:v34];
    goto LABEL_25;
  }

  if (!typeCopy)
  {
    v34 = @"com.apple.facetime";
    goto LABEL_24;
  }

  v38 = 0;
LABEL_26:
  v39 = [@"com.apple.facetime.facetime" stringByAppendingFormat:@":%@", v16];
  v61[0] = v59;
  v61[1] = v28;
  v50 = v28;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v53 = v16;
  v41 = MEMORY[0x1E696AEC0];
  v42 = WFLocalizedString(@"%1$@ Call %2$@");
  v43 = [v41 localizedStringWithFormat:v42, v17, v22];
  v44 = WFLocalizedString(@"FaceTime");
  v60.receiver = self;
  v60.super_class = WFFaceTimeContextualAction;
  v58 = [(WFTopHitItemContextualAction *)&v60 initWithItem:personCopy identifier:v39 wfActionIdentifier:@"com.apple.facetime.facetime" associatedAppBundleIdentifier:@"com.apple.facetime" parameters:v40 displayString:v43 title:v44 subtitle:v22 primaryColor:4 icon:v51 accessoryIcon:v38 namedQueryInfo:infoCopy];

  v45 = *MEMORY[0x1E69E9840];
  return v58;
}

- (id)_staticDisplayStringForDecoding
{
  person = [(WFFaceTimeContextualAction *)self person];
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

  if ([v7 length])
  {
    if (v7)
    {
LABEL_6:
      v8 = MEMORY[0x1E696AEC0];
      v9 = WFLocalizedString(@"Call %@");
      v10 = [v8 localizedStringWithFormat:v9, v7];

      goto LABEL_12;
    }
  }

  else
  {
    displayName2 = [person displayName];
    v12 = displayName2;
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
    if (value)
    {
      goto LABEL_6;
    }
  }

  v10 = WFLocalizedString(@"Call");
LABEL_12:

  return v10;
}

- (id)uniqueIdentifier
{
  identifier = [(WFContextualAction *)self identifier];
  person = [(WFFaceTimeContextualAction *)self person];
  contactIdentifier = [person contactIdentifier];
  v6 = contactIdentifier;
  if (contactIdentifier)
  {
    v7 = [identifier stringByAppendingFormat:@":%@", contactIdentifier];
  }

  else
  {
    person2 = [(WFFaceTimeContextualAction *)self person];
    displayName = [person2 displayName];
    v7 = [identifier stringByAppendingFormat:@":%@", displayName];
  }

  return v7;
}

@end