@interface PXPeopleNameSelection
- (NSString)fullName;
- (NSString)localizedName;
- (PXPeopleNameSelection)initWithName:(id)name contact:(id)contact person:(id)person type:(unint64_t)type;
- (id)_selectionTypeString;
- (id)description;
- (void)setLinkedPerson:(id)person;
@end

@implementation PXPeopleNameSelection

- (id)_selectionTypeString
{
  selectionType = [(PXPeopleNameSelection *)self selectionType];
  if (selectionType - 1 > 2)
  {
    return @"PXPeopleNameSelectionTypeNone";
  }

  else
  {
    return off_1E7742110[selectionType - 1];
  }
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = PXPeopleNameSelection;
  v3 = [(PXPeopleNameSelection *)&v11 description];
  v4 = [v3 mutableCopy];

  _selectionTypeString = [(PXPeopleNameSelection *)self _selectionTypeString];
  [v4 appendFormat:@": selectionType: %@, ", _selectionTypeString];

  person = [(PXPeopleNameSelection *)self person];
  [v4 appendFormat:@"person: %@, ", person];

  contact = [(PXPeopleNameSelection *)self contact];
  [v4 appendFormat:@"contact: %@, ", contact];

  name = [(PXPeopleNameSelection *)self name];
  [v4 appendFormat:@"name: %@, ", name];

  localizedName = [(PXPeopleNameSelection *)self localizedName];
  [v4 appendFormat:@"localizedName: %@", localizedName];

  return v4;
}

- (NSString)fullName
{
  selectionType = [(PXPeopleNameSelection *)self selectionType];
  switch(selectionType)
  {
    case 1uLL:
      person = [(PXPeopleNameSelection *)self person];
      name = [person name];

      break;
    case 2uLL:
      v5 = MEMORY[0x1E6978980];
      contact = [(PXPeopleNameSelection *)self contact];
      name = [v5 fullNameFromContact:contact];

      break;
    case 3uLL:
      name = [(PXPeopleNameSelection *)self name];
      break;
    default:
      name = 0;
      break;
  }

  return name;
}

- (NSString)localizedName
{
  selectionType = [(PXPeopleNameSelection *)self selectionType];
  switch(selectionType)
  {
    case 1uLL:
      person = [(PXPeopleNameSelection *)self person];
      px_localizedName = [person px_localizedName];
LABEL_11:

      break;
    case 2uLL:
      person = [(PXPeopleNameSelection *)self contact];
      v6 = [MEMORY[0x1E6978980] px_localizedNameFromContact:person];
      if ([v6 length])
      {
        v7 = v6;
      }

      else
      {
        v7 = [MEMORY[0x1E6978980] fullNameFromContact:person];
      }

      px_localizedName = v7;

      goto LABEL_11;
    case 3uLL:
      px_localizedName = [(PXPeopleNameSelection *)self name];
      break;
    default:
      px_localizedName = 0;
      break;
  }

  return px_localizedName;
}

- (void)setLinkedPerson:(id)person
{
  personCopy = person;
  if ([(PXPeopleNameSelection *)self selectionType]== 2)
  {
    objc_storeStrong(&self->_person, person);
  }
}

- (PXPeopleNameSelection)initWithName:(id)name contact:(id)contact person:(id)person type:(unint64_t)type
{
  nameCopy = name;
  contactCopy = contact;
  personCopy = person;
  v17.receiver = self;
  v17.super_class = PXPeopleNameSelection;
  v14 = [(PXPeopleNameSelection *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v15->_contact, contact);
    objc_storeStrong(&v15->_person, person);
    v15->_selectionType = type;
  }

  return v15;
}

@end