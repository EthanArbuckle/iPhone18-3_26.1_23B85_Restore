@interface INPersonWrapper
- (BOOL)isEqual:(id)equal;
- (INPersonWrapper)initWithINPerson:(id)person;
- (unint64_t)hash;
@end

@implementation INPersonWrapper

- (INPersonWrapper)initWithINPerson:(id)person
{
  objc_storeStrong(&self->_inPerson, person);
  personCopy = person;
  v6 = [TUHandle handleWithPerson:personCopy];
  tuHandle = self->_tuHandle;
  self->_tuHandle = v6;

  return self;
}

- (unint64_t)hash
{
  displayName = [(INPerson *)self->_inPerson displayName];
  v4 = displayName;
  if (displayName)
  {
    v5 = displayName;
  }

  else
  {
    v5 = &stru_10004D950;
  }

  v6 = v5;

  personHandle = [(INPerson *)self->_inPerson personHandle];
  label = [personHandle label];
  v9 = label;
  if (label)
  {
    v10 = label;
  }

  else
  {
    v10 = &stru_10004D950;
  }

  v11 = v10;

  v12 = [(__CFString *)v6 hash];
  v13 = [(__CFString *)v11 hash];

  return v13 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    displayName = [equalCopy[1] displayName];
    displayName2 = [(INPerson *)self->_inPerson displayName];
    if ([displayName isEqualToString:displayName2])
    {
      personHandle = [equalCopy[1] personHandle];
      label = [personHandle label];
      personHandle2 = [(INPerson *)self->_inPerson personHandle];
      label2 = [personHandle2 label];
      if ([label isEqualToString:label2])
      {
        v11 = equalCopy[2];
        tuHandle = self->_tuHandle;
        v13 = TUHandlesAreCanonicallyEqual();
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end