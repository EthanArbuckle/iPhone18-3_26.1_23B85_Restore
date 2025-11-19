@interface PXCMMMomentsParticipant
- (PXCMMMomentsParticipant)initWithEmailAddress:(id)a3 phoneNumber:(id)a4 localizedName:(id)a5;
- (PXCMMMomentsParticipant)initWithPerson:(id)a3;
- (id)localizedName;
@end

@implementation PXCMMMomentsParticipant

- (id)localizedName
{
  additionalLocalizedName = self->_additionalLocalizedName;
  if (additionalLocalizedName)
  {
    v3 = additionalLocalizedName;
  }

  else
  {
    v3 = [(PXCMMMomentsParticipant *)self localizedName];
  }

  return v3;
}

- (PXCMMMomentsParticipant)initWithPerson:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitation.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v7 = *MEMORY[0x1E695C330];
  v21[0] = *MEMORY[0x1E695C208];
  v21[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v9 = [v6 linkedContactWithKeysToFetch:v8];

  if (v9)
  {
    v10 = [v9 emailAddresses];
    v11 = [v10 firstObject];
    v12 = [v11 value];

    v13 = [v9 phoneNumbers];
    v14 = [v13 firstObject];
    v15 = [v14 value];
    v16 = [v15 stringValue];
  }

  else
  {
    v16 = 0;
    v12 = 0;
  }

  if (!(v12 | v16))
  {
    v12 = @"foo@bar.com";
  }

  v17 = [v6 px_localizedName];
  v18 = [(PXCMMMomentsParticipant *)self initWithEmailAddress:v12 phoneNumber:v16 localizedName:v17];

  if (v18)
  {
    objc_storeStrong(&v18->_person, a3);
  }

  return v18;
}

- (PXCMMMomentsParticipant)initWithEmailAddress:(id)a3 phoneNumber:(id)a4 localizedName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!(v9 | v10))
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitation.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"emailAddress || phoneNumber"}];
  }

  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  v19.receiver = self;
  v19.super_class = PXCMMMomentsParticipant;
  v14 = [(PXRecipient *)&v19 initWithAddress:v13 nameComponents:0 recipientKind:v12];
  if (v14)
  {
    v15 = [v11 copy];
    additionalLocalizedName = v14->_additionalLocalizedName;
    v14->_additionalLocalizedName = v15;
  }

  return v14;
}

@end