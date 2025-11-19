@interface PXPeoplePickerMockPerson
- (PXPeoplePickerMockPerson)init;
- (PXPeoplePickerMockPerson)initWithLocalIdentifier:(id)a3 displayName:(id)a4;
- (id)description;
@end

@implementation PXPeoplePickerMockPerson

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PXPeoplePickerMockPerson *)self mockName];
  v6 = [(PXPeoplePickerMockPerson *)self px_localizedName];
  v7 = [v3 stringWithFormat:@"<%@:%p, uuid:%@, displayName:%@>", v4, self, v5, v6];

  return v7;
}

- (PXPeoplePickerMockPerson)initWithLocalIdentifier:(id)a3 displayName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerMockPerson.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"localIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerMockPerson.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"displayName"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PXPeoplePickerMockPerson;
  v10 = [(PXPeoplePickerMockPerson *)&v18 init];
  if (v10)
  {
    v11 = [v9 copy];
    mockName = v10->_mockName;
    v10->_mockName = v11;

    v13 = [v7 copy];
    mockLocalIdentifier = v10->_mockLocalIdentifier;
    v10->_mockLocalIdentifier = v13;
  }

  return v10;
}

- (PXPeoplePickerMockPerson)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerMockPerson.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXPeoplePickerMockPerson init]"}];

  abort();
}

@end