@interface PXPeopleNameSelection
- (NSString)fullName;
- (NSString)localizedName;
- (PXPeopleNameSelection)initWithName:(id)a3 contact:(id)a4 person:(id)a5 type:(unint64_t)a6;
- (id)_selectionTypeString;
- (id)description;
- (void)setLinkedPerson:(id)a3;
@end

@implementation PXPeopleNameSelection

- (id)_selectionTypeString
{
  v2 = [(PXPeopleNameSelection *)self selectionType];
  if (v2 - 1 > 2)
  {
    return @"PXPeopleNameSelectionTypeNone";
  }

  else
  {
    return off_1E7742110[v2 - 1];
  }
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = PXPeopleNameSelection;
  v3 = [(PXPeopleNameSelection *)&v11 description];
  v4 = [v3 mutableCopy];

  v5 = [(PXPeopleNameSelection *)self _selectionTypeString];
  [v4 appendFormat:@": selectionType: %@, ", v5];

  v6 = [(PXPeopleNameSelection *)self person];
  [v4 appendFormat:@"person: %@, ", v6];

  v7 = [(PXPeopleNameSelection *)self contact];
  [v4 appendFormat:@"contact: %@, ", v7];

  v8 = [(PXPeopleNameSelection *)self name];
  [v4 appendFormat:@"name: %@, ", v8];

  v9 = [(PXPeopleNameSelection *)self localizedName];
  [v4 appendFormat:@"localizedName: %@", v9];

  return v4;
}

- (NSString)fullName
{
  v3 = [(PXPeopleNameSelection *)self selectionType];
  switch(v3)
  {
    case 1uLL:
      v7 = [(PXPeopleNameSelection *)self person];
      v4 = [v7 name];

      break;
    case 2uLL:
      v5 = MEMORY[0x1E6978980];
      v6 = [(PXPeopleNameSelection *)self contact];
      v4 = [v5 fullNameFromContact:v6];

      break;
    case 3uLL:
      v4 = [(PXPeopleNameSelection *)self name];
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (NSString)localizedName
{
  v3 = [(PXPeopleNameSelection *)self selectionType];
  switch(v3)
  {
    case 1uLL:
      v5 = [(PXPeopleNameSelection *)self person];
      v4 = [v5 px_localizedName];
LABEL_11:

      break;
    case 2uLL:
      v5 = [(PXPeopleNameSelection *)self contact];
      v6 = [MEMORY[0x1E6978980] px_localizedNameFromContact:v5];
      if ([v6 length])
      {
        v7 = v6;
      }

      else
      {
        v7 = [MEMORY[0x1E6978980] fullNameFromContact:v5];
      }

      v4 = v7;

      goto LABEL_11;
    case 3uLL:
      v4 = [(PXPeopleNameSelection *)self name];
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (void)setLinkedPerson:(id)a3
{
  v5 = a3;
  if ([(PXPeopleNameSelection *)self selectionType]== 2)
  {
    objc_storeStrong(&self->_person, a3);
  }
}

- (PXPeopleNameSelection)initWithName:(id)a3 contact:(id)a4 person:(id)a5 type:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = PXPeopleNameSelection;
  v14 = [(PXPeopleNameSelection *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, a3);
    objc_storeStrong(&v15->_contact, a4);
    objc_storeStrong(&v15->_person, a5);
    v15->_selectionType = a6;
  }

  return v15;
}

@end