@interface TUMutableCallDisplayContext
- (void)mergeValuesFromDisplayContext:(id)context;
@end

@implementation TUMutableCallDisplayContext

- (void)mergeValuesFromDisplayContext:(id)context
{
  contextCopy = context;
  name = [(TUCallDisplayContext *)self name];
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"UNKNOWN" value:&stru_1F098C218 table:@"TelephonyUtilities"];
  v7 = [name isEqualToString:v6] == 0;
  selfCopy = contextCopy;
  if (v7)
  {
    selfCopy = self;
  }

  name2 = [(TUCallDisplayContext *)selfCopy name];
  [(TUCallDisplayContext *)self setName:name2];

  personNameComponents = [(TUCallDisplayContext *)self personNameComponents];
  if (personNameComponents)
  {
    [(TUCallDisplayContext *)self setPersonNameComponents:personNameComponents];
  }

  else
  {
    personNameComponents2 = [(TUCallDisplayContext *)contextCopy personNameComponents];
    [(TUCallDisplayContext *)self setPersonNameComponents:personNameComponents2];
  }

  suggestedName = [(TUCallDisplayContext *)self suggestedName];
  if (suggestedName)
  {
    [(TUCallDisplayContext *)self setSuggestedName:suggestedName];
  }

  else
  {
    suggestedName2 = [(TUCallDisplayContext *)contextCopy suggestedName];
    [(TUCallDisplayContext *)self setSuggestedName:suggestedName2];
  }

  label = [(TUCallDisplayContext *)self label];
  if (label)
  {
    [(TUCallDisplayContext *)self setLabel:label];
  }

  else
  {
    label2 = [(TUCallDisplayContext *)contextCopy label];
    [(TUCallDisplayContext *)self setLabel:label2];
  }

  companyName = [(TUCallDisplayContext *)self companyName];
  if (companyName)
  {
    [(TUCallDisplayContext *)self setCompanyName:companyName];
  }

  else
  {
    companyName2 = [(TUCallDisplayContext *)contextCopy companyName];
    [(TUCallDisplayContext *)self setCompanyName:companyName2];
  }

  companyDepartment = [(TUCallDisplayContext *)self companyDepartment];
  if (companyDepartment)
  {
    [(TUCallDisplayContext *)self setCompanyDepartment:companyDepartment];
  }

  else
  {
    companyDepartment2 = [(TUCallDisplayContext *)contextCopy companyDepartment];
    [(TUCallDisplayContext *)self setCompanyDepartment:companyDepartment2];
  }

  companyLogoURL = [(TUCallDisplayContext *)self companyLogoURL];
  if (companyLogoURL)
  {
    [(TUCallDisplayContext *)self setCompanyLogoURL:companyLogoURL];
  }

  else
  {
    companyLogoURL2 = [(TUCallDisplayContext *)contextCopy companyLogoURL];
    [(TUCallDisplayContext *)self setCompanyLogoURL:companyLogoURL2];
  }

  contactName = [(TUCallDisplayContext *)self contactName];
  if (contactName)
  {
    [(TUCallDisplayContext *)self setContactName:contactName];
  }

  else
  {
    contactName2 = [(TUCallDisplayContext *)contextCopy contactName];
    [(TUCallDisplayContext *)self setContactName:contactName2];
  }

  contactLabel = [(TUCallDisplayContext *)self contactLabel];
  if (contactLabel)
  {
    [(TUCallDisplayContext *)self setContactLabel:contactLabel];
  }

  else
  {
    contactLabel2 = [(TUCallDisplayContext *)contextCopy contactLabel];
    [(TUCallDisplayContext *)self setContactLabel:contactLabel2];
  }

  mapName = [(TUCallDisplayContext *)self mapName];
  if (mapName)
  {
    [(TUCallDisplayContext *)self setMapName:mapName];
  }

  else
  {
    mapName2 = [(TUCallDisplayContext *)contextCopy mapName];
    [(TUCallDisplayContext *)self setMapName:mapName2];
  }

  location = [(TUCallDisplayContext *)self location];
  if (location)
  {
    [(TUCallDisplayContext *)self setLocation:location];
  }

  else
  {
    location2 = [(TUCallDisplayContext *)contextCopy location];
    [(TUCallDisplayContext *)self setLocation:location2];
  }

  callDirectoryLabel = [(TUCallDisplayContext *)self callDirectoryLabel];
  if (callDirectoryLabel)
  {
    [(TUCallDisplayContext *)self setCallDirectoryLabel:callDirectoryLabel];
  }

  else
  {
    callDirectoryLabel2 = [(TUCallDisplayContext *)contextCopy callDirectoryLabel];
    [(TUCallDisplayContext *)self setCallDirectoryLabel:callDirectoryLabel2];
  }

  callDirectoryLocalizedExtensionContainingAppName = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  if (callDirectoryLocalizedExtensionContainingAppName)
  {
    [(TUCallDisplayContext *)self setCallDirectoryLocalizedExtensionContainingAppName:callDirectoryLocalizedExtensionContainingAppName];
  }

  else
  {
    callDirectoryLocalizedExtensionContainingAppName2 = [(TUCallDisplayContext *)contextCopy callDirectoryLocalizedExtensionContainingAppName];
    [(TUCallDisplayContext *)self setCallDirectoryLocalizedExtensionContainingAppName:callDirectoryLocalizedExtensionContainingAppName2];
  }

  contactIdentifiers = [(TUCallDisplayContext *)self contactIdentifiers];
  if (contactIdentifiers)
  {
    [(TUCallDisplayContext *)self setContactIdentifiers:contactIdentifiers];
  }

  else
  {
    contactIdentifiers2 = [(TUCallDisplayContext *)contextCopy contactIdentifiers];
    [(TUCallDisplayContext *)self setContactIdentifiers:contactIdentifiers2];
  }

  callDirectoryExtensionIdentifier = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
  if (callDirectoryExtensionIdentifier)
  {
    [(TUCallDisplayContext *)self setCallDirectoryExtensionIdentifier:callDirectoryExtensionIdentifier];
  }

  else
  {
    callDirectoryExtensionIdentifier2 = [(TUCallDisplayContext *)contextCopy callDirectoryExtensionIdentifier];
    [(TUCallDisplayContext *)self setCallDirectoryExtensionIdentifier:callDirectoryExtensionIdentifier2];
  }

  v7 = [(TUCallDisplayContext *)self callDirectoryIdentityType]== 0;
  selfCopy2 = contextCopy;
  if (!v7)
  {
    selfCopy2 = self;
  }

  [(TUCallDisplayContext *)self setCallDirectoryIdentityType:[(TUCallDisplayContext *)selfCopy2 callDirectoryIdentityType]];
  v7 = [(TUCallDisplayContext *)self legacyAddressBookIdentifier]== -1;
  selfCopy3 = contextCopy;
  if (!v7)
  {
    selfCopy3 = self;
  }

  [(TUCallDisplayContext *)self setLegacyAddressBookIdentifier:[(TUCallDisplayContext *)selfCopy3 legacyAddressBookIdentifier]];
}

@end