@interface PXPeoplePickerMockPerson
- (PXPeoplePickerMockPerson)init;
- (PXPeoplePickerMockPerson)initWithLocalIdentifier:(id)identifier displayName:(id)name;
- (id)description;
@end

@implementation PXPeoplePickerMockPerson

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  mockName = [(PXPeoplePickerMockPerson *)self mockName];
  px_localizedName = [(PXPeoplePickerMockPerson *)self px_localizedName];
  v7 = [v3 stringWithFormat:@"<%@:%p, uuid:%@, displayName:%@>", v4, self, mockName, px_localizedName];

  return v7;
}

- (PXPeoplePickerMockPerson)initWithLocalIdentifier:(id)identifier displayName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v9 = nameCopy;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerMockPerson.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"localIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerMockPerson.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"displayName"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PXPeoplePickerMockPerson;
  v10 = [(PXPeoplePickerMockPerson *)&v18 init];
  if (v10)
  {
    v11 = [v9 copy];
    mockName = v10->_mockName;
    v10->_mockName = v11;

    v13 = [identifierCopy copy];
    mockLocalIdentifier = v10->_mockLocalIdentifier;
    v10->_mockLocalIdentifier = v13;
  }

  return v10;
}

- (PXPeoplePickerMockPerson)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerMockPerson.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXPeoplePickerMockPerson init]"}];

  abort();
}

@end