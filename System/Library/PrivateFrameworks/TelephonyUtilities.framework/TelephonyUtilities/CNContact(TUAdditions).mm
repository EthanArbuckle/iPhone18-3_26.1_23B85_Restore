@interface CNContact(TUAdditions)
- (id)personNameComponents;
@end

@implementation CNContact(TUAdditions)

- (id)personNameComponents
{
  v2 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v3 = [a1 givenName];
  if ([v3 length])
  {
    v4 = [a1 givenName];
    [v2 setGivenName:v4];
  }

  else
  {
    [v2 setGivenName:0];
  }

  v5 = [a1 middleName];
  if ([v5 length])
  {
    v6 = [a1 middleName];
    [v2 setMiddleName:v6];
  }

  else
  {
    [v2 setMiddleName:0];
  }

  v7 = [a1 familyName];
  if ([v7 length])
  {
    v8 = [a1 familyName];
    [v2 setFamilyName:v8];
  }

  else
  {
    [v2 setFamilyName:0];
  }

  v9 = [a1 namePrefix];
  if ([v9 length])
  {
    v10 = [a1 namePrefix];
    [v2 setNamePrefix:v10];
  }

  else
  {
    [v2 setNamePrefix:0];
  }

  v11 = [a1 nameSuffix];
  if ([v11 length])
  {
    v12 = [a1 nameSuffix];
    [v2 setNameSuffix:v12];
  }

  else
  {
    [v2 setNameSuffix:0];
  }

  v13 = [a1 nickname];
  if ([v13 length])
  {
    v14 = [a1 nickname];
    [v2 setNickname:v14];
  }

  else
  {
    [v2 setNickname:0];
  }

  v15 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v16 = [a1 phoneticGivenName];
  if ([v16 length])
  {
    v17 = [a1 phoneticGivenName];
    [v15 setGivenName:v17];
  }

  else
  {
    [v15 setGivenName:0];
  }

  v18 = [a1 phoneticMiddleName];
  if ([v18 length])
  {
    v19 = [a1 phoneticMiddleName];
    [v15 setMiddleName:v19];
  }

  else
  {
    [v15 setMiddleName:0];
  }

  v20 = [a1 phoneticFamilyName];
  if ([v20 length])
  {
    v21 = [a1 phoneticFamilyName];
    [v15 setFamilyName:v21];
  }

  else
  {
    [v15 setFamilyName:0];
  }

  [v2 setPhoneticRepresentation:v15];

  return v2;
}

@end