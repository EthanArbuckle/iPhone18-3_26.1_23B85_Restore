@interface TUContactsDataProviderResult
- (NSArray)contacts;
- (id)description;
@end

@implementation TUContactsDataProviderResult

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  contacts = [(TUContactsDataProviderResult *)self contacts];
  [v3 appendFormat:@" contacts=%@", contacts];

  localizedName = [(TUContactsDataProviderResult *)self localizedName];
  [v3 appendFormat:@" localizedName=%@", localizedName];

  companyName = [(TUContactsDataProviderResult *)self companyName];
  [v3 appendFormat:@" companyName=%@", companyName];

  contactLabel = [(TUContactsDataProviderResult *)self contactLabel];
  [v3 appendFormat:@" contactLabel=%@", contactLabel];

  [v3 appendFormat:@" legacyAddressBookIdentifier=%d", -[TUContactsDataProviderResult legacyAddressBookIdentifier](self, "legacyAddressBookIdentifier")];
  [v3 appendString:@">"];
  v8 = [v3 copy];

  return v8;
}

- (NSArray)contacts
{
  contacts = self->_contacts;
  if (!contacts)
  {
    self->_contacts = MEMORY[0x1E695E0F0];

    contacts = self->_contacts;
  }

  return contacts;
}

@end