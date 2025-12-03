@interface CNVCardMutableNameComponents
- (void)setCompanyName:(id)name;
- (void)setFirstName:(id)name;
- (void)setFormattedName:(id)name;
- (void)setIsCompany:(BOOL)company;
- (void)setLastName:(id)name;
- (void)setMiddleName:(id)name;
- (void)setSuffix:(id)suffix;
- (void)setTitle:(id)title;
@end

@implementation CNVCardMutableNameComponents

- (void)setFormattedName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->super._formattedName] & 1) == 0)
  {
    v4 = [nameCopy copy];
    formattedName = self->super._formattedName;
    self->super._formattedName = v4;
  }
}

- (void)setFirstName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->super._firstName] & 1) == 0)
  {
    v4 = [nameCopy copy];
    firstName = self->super._firstName;
    self->super._firstName = v4;
  }
}

- (void)setLastName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->super._lastName] & 1) == 0)
  {
    v4 = [nameCopy copy];
    lastName = self->super._lastName;
    self->super._lastName = v4;
  }
}

- (void)setMiddleName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->super._middleName] & 1) == 0)
  {
    v4 = [nameCopy copy];
    middleName = self->super._middleName;
    self->super._middleName = v4;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (([titleCopy isEqualToString:self->super._title] & 1) == 0)
  {
    v4 = [titleCopy copy];
    title = self->super._title;
    self->super._title = v4;
  }
}

- (void)setSuffix:(id)suffix
{
  suffixCopy = suffix;
  if (([suffixCopy isEqualToString:self->super._suffix] & 1) == 0)
  {
    v4 = [suffixCopy copy];
    suffix = self->super._suffix;
    self->super._suffix = v4;
  }
}

- (void)setCompanyName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->super._companyName] & 1) == 0)
  {
    v4 = [nameCopy copy];
    companyName = self->super._companyName;
    self->super._companyName = v4;
  }
}

- (void)setIsCompany:(BOOL)company
{
  if (self->super._isCompany != company)
  {
    self->super._isCompany = company;
  }
}

@end