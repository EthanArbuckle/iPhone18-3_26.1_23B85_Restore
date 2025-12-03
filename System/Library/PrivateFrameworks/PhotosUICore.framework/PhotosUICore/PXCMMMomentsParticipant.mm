@interface PXCMMMomentsParticipant
- (PXCMMMomentsParticipant)initWithEmailAddress:(id)address phoneNumber:(id)number localizedName:(id)name;
- (PXCMMMomentsParticipant)initWithPerson:(id)person;
- (id)localizedName;
@end

@implementation PXCMMMomentsParticipant

- (id)localizedName
{
  additionalLocalizedName = self->_additionalLocalizedName;
  if (additionalLocalizedName)
  {
    localizedName = additionalLocalizedName;
  }

  else
  {
    localizedName = [(PXCMMMomentsParticipant *)self localizedName];
  }

  return localizedName;
}

- (PXCMMMomentsParticipant)initWithPerson:(id)person
{
  v21[2] = *MEMORY[0x1E69E9840];
  personCopy = person;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitation.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v7 = *MEMORY[0x1E695C330];
  v21[0] = *MEMORY[0x1E695C208];
  v21[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v9 = [personCopy linkedContactWithKeysToFetch:v8];

  if (v9)
  {
    emailAddresses = [v9 emailAddresses];
    firstObject = [emailAddresses firstObject];
    value = [firstObject value];

    phoneNumbers = [v9 phoneNumbers];
    firstObject2 = [phoneNumbers firstObject];
    value2 = [firstObject2 value];
    stringValue = [value2 stringValue];
  }

  else
  {
    stringValue = 0;
    value = 0;
  }

  if (!(value | stringValue))
  {
    value = @"foo@bar.com";
  }

  px_localizedName = [personCopy px_localizedName];
  v18 = [(PXCMMMomentsParticipant *)self initWithEmailAddress:value phoneNumber:stringValue localizedName:px_localizedName];

  if (v18)
  {
    objc_storeStrong(&v18->_person, person);
  }

  return v18;
}

- (PXCMMMomentsParticipant)initWithEmailAddress:(id)address phoneNumber:(id)number localizedName:(id)name
{
  addressCopy = address;
  numberCopy = number;
  nameCopy = name;
  if (!(addressCopy | numberCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitation.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"emailAddress || phoneNumber"}];
  }

  if (addressCopy)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (addressCopy)
  {
    v13 = addressCopy;
  }

  else
  {
    v13 = numberCopy;
  }

  v19.receiver = self;
  v19.super_class = PXCMMMomentsParticipant;
  v14 = [(PXRecipient *)&v19 initWithAddress:v13 nameComponents:0 recipientKind:v12];
  if (v14)
  {
    v15 = [nameCopy copy];
    additionalLocalizedName = v14->_additionalLocalizedName;
    v14->_additionalLocalizedName = v15;
  }

  return v14;
}

@end