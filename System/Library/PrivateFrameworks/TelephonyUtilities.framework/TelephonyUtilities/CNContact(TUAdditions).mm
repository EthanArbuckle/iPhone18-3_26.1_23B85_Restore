@interface CNContact(TUAdditions)
- (id)personNameComponents;
@end

@implementation CNContact(TUAdditions)

- (id)personNameComponents
{
  v2 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  givenName = [self givenName];
  if ([givenName length])
  {
    givenName2 = [self givenName];
    [v2 setGivenName:givenName2];
  }

  else
  {
    [v2 setGivenName:0];
  }

  middleName = [self middleName];
  if ([middleName length])
  {
    middleName2 = [self middleName];
    [v2 setMiddleName:middleName2];
  }

  else
  {
    [v2 setMiddleName:0];
  }

  familyName = [self familyName];
  if ([familyName length])
  {
    familyName2 = [self familyName];
    [v2 setFamilyName:familyName2];
  }

  else
  {
    [v2 setFamilyName:0];
  }

  namePrefix = [self namePrefix];
  if ([namePrefix length])
  {
    namePrefix2 = [self namePrefix];
    [v2 setNamePrefix:namePrefix2];
  }

  else
  {
    [v2 setNamePrefix:0];
  }

  nameSuffix = [self nameSuffix];
  if ([nameSuffix length])
  {
    nameSuffix2 = [self nameSuffix];
    [v2 setNameSuffix:nameSuffix2];
  }

  else
  {
    [v2 setNameSuffix:0];
  }

  nickname = [self nickname];
  if ([nickname length])
  {
    nickname2 = [self nickname];
    [v2 setNickname:nickname2];
  }

  else
  {
    [v2 setNickname:0];
  }

  v15 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  phoneticGivenName = [self phoneticGivenName];
  if ([phoneticGivenName length])
  {
    phoneticGivenName2 = [self phoneticGivenName];
    [v15 setGivenName:phoneticGivenName2];
  }

  else
  {
    [v15 setGivenName:0];
  }

  phoneticMiddleName = [self phoneticMiddleName];
  if ([phoneticMiddleName length])
  {
    phoneticMiddleName2 = [self phoneticMiddleName];
    [v15 setMiddleName:phoneticMiddleName2];
  }

  else
  {
    [v15 setMiddleName:0];
  }

  phoneticFamilyName = [self phoneticFamilyName];
  if ([phoneticFamilyName length])
  {
    phoneticFamilyName2 = [self phoneticFamilyName];
    [v15 setFamilyName:phoneticFamilyName2];
  }

  else
  {
    [v15 setFamilyName:0];
  }

  [v2 setPhoneticRepresentation:v15];

  return v2;
}

@end