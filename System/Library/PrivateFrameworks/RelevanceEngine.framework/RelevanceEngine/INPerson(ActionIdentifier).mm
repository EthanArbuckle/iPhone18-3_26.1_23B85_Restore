@interface INPerson(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INPerson(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  personHandle = [self personHandle];

  if (personHandle)
  {
    personHandle2 = [self personHandle];
  }

  else
  {
    contactIdentifier = [self contactIdentifier];

    if (contactIdentifier)
    {
      [self contactIdentifier];
    }

    else
    {
      [self customIdentifier];
    }
    personHandle2 = ;
  }

  v5 = personHandle2;
  re_actionIdentifierHashValue = [personHandle2 re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue;
}

@end