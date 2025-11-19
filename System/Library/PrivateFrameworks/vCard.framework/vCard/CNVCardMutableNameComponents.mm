@interface CNVCardMutableNameComponents
- (void)setCompanyName:(id)a3;
- (void)setFirstName:(id)a3;
- (void)setFormattedName:(id)a3;
- (void)setIsCompany:(BOOL)a3;
- (void)setLastName:(id)a3;
- (void)setMiddleName:(id)a3;
- (void)setSuffix:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation CNVCardMutableNameComponents

- (void)setFormattedName:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._formattedName] & 1) == 0)
  {
    v4 = [v6 copy];
    formattedName = self->super._formattedName;
    self->super._formattedName = v4;
  }
}

- (void)setFirstName:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._firstName] & 1) == 0)
  {
    v4 = [v6 copy];
    firstName = self->super._firstName;
    self->super._firstName = v4;
  }
}

- (void)setLastName:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._lastName] & 1) == 0)
  {
    v4 = [v6 copy];
    lastName = self->super._lastName;
    self->super._lastName = v4;
  }
}

- (void)setMiddleName:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._middleName] & 1) == 0)
  {
    v4 = [v6 copy];
    middleName = self->super._middleName;
    self->super._middleName = v4;
  }
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._title] & 1) == 0)
  {
    v4 = [v6 copy];
    title = self->super._title;
    self->super._title = v4;
  }
}

- (void)setSuffix:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._suffix] & 1) == 0)
  {
    v4 = [v6 copy];
    suffix = self->super._suffix;
    self->super._suffix = v4;
  }
}

- (void)setCompanyName:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._companyName] & 1) == 0)
  {
    v4 = [v6 copy];
    companyName = self->super._companyName;
    self->super._companyName = v4;
  }
}

- (void)setIsCompany:(BOOL)a3
{
  if (self->super._isCompany != a3)
  {
    self->super._isCompany = a3;
  }
}

@end