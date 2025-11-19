@interface TUMutableCallDisplayContext
- (void)mergeValuesFromDisplayContext:(id)a3;
@end

@implementation TUMutableCallDisplayContext

- (void)mergeValuesFromDisplayContext:(id)a3
{
  v40 = a3;
  v4 = [(TUCallDisplayContext *)self name];
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"UNKNOWN" value:&stru_1F098C218 table:@"TelephonyUtilities"];
  v7 = [v4 isEqualToString:v6] == 0;
  v8 = v40;
  if (v7)
  {
    v8 = self;
  }

  v9 = [(TUCallDisplayContext *)v8 name];
  [(TUCallDisplayContext *)self setName:v9];

  v10 = [(TUCallDisplayContext *)self personNameComponents];
  if (v10)
  {
    [(TUCallDisplayContext *)self setPersonNameComponents:v10];
  }

  else
  {
    v11 = [(TUCallDisplayContext *)v40 personNameComponents];
    [(TUCallDisplayContext *)self setPersonNameComponents:v11];
  }

  v12 = [(TUCallDisplayContext *)self suggestedName];
  if (v12)
  {
    [(TUCallDisplayContext *)self setSuggestedName:v12];
  }

  else
  {
    v13 = [(TUCallDisplayContext *)v40 suggestedName];
    [(TUCallDisplayContext *)self setSuggestedName:v13];
  }

  v14 = [(TUCallDisplayContext *)self label];
  if (v14)
  {
    [(TUCallDisplayContext *)self setLabel:v14];
  }

  else
  {
    v15 = [(TUCallDisplayContext *)v40 label];
    [(TUCallDisplayContext *)self setLabel:v15];
  }

  v16 = [(TUCallDisplayContext *)self companyName];
  if (v16)
  {
    [(TUCallDisplayContext *)self setCompanyName:v16];
  }

  else
  {
    v17 = [(TUCallDisplayContext *)v40 companyName];
    [(TUCallDisplayContext *)self setCompanyName:v17];
  }

  v18 = [(TUCallDisplayContext *)self companyDepartment];
  if (v18)
  {
    [(TUCallDisplayContext *)self setCompanyDepartment:v18];
  }

  else
  {
    v19 = [(TUCallDisplayContext *)v40 companyDepartment];
    [(TUCallDisplayContext *)self setCompanyDepartment:v19];
  }

  v20 = [(TUCallDisplayContext *)self companyLogoURL];
  if (v20)
  {
    [(TUCallDisplayContext *)self setCompanyLogoURL:v20];
  }

  else
  {
    v21 = [(TUCallDisplayContext *)v40 companyLogoURL];
    [(TUCallDisplayContext *)self setCompanyLogoURL:v21];
  }

  v22 = [(TUCallDisplayContext *)self contactName];
  if (v22)
  {
    [(TUCallDisplayContext *)self setContactName:v22];
  }

  else
  {
    v23 = [(TUCallDisplayContext *)v40 contactName];
    [(TUCallDisplayContext *)self setContactName:v23];
  }

  v24 = [(TUCallDisplayContext *)self contactLabel];
  if (v24)
  {
    [(TUCallDisplayContext *)self setContactLabel:v24];
  }

  else
  {
    v25 = [(TUCallDisplayContext *)v40 contactLabel];
    [(TUCallDisplayContext *)self setContactLabel:v25];
  }

  v26 = [(TUCallDisplayContext *)self mapName];
  if (v26)
  {
    [(TUCallDisplayContext *)self setMapName:v26];
  }

  else
  {
    v27 = [(TUCallDisplayContext *)v40 mapName];
    [(TUCallDisplayContext *)self setMapName:v27];
  }

  v28 = [(TUCallDisplayContext *)self location];
  if (v28)
  {
    [(TUCallDisplayContext *)self setLocation:v28];
  }

  else
  {
    v29 = [(TUCallDisplayContext *)v40 location];
    [(TUCallDisplayContext *)self setLocation:v29];
  }

  v30 = [(TUCallDisplayContext *)self callDirectoryLabel];
  if (v30)
  {
    [(TUCallDisplayContext *)self setCallDirectoryLabel:v30];
  }

  else
  {
    v31 = [(TUCallDisplayContext *)v40 callDirectoryLabel];
    [(TUCallDisplayContext *)self setCallDirectoryLabel:v31];
  }

  v32 = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  if (v32)
  {
    [(TUCallDisplayContext *)self setCallDirectoryLocalizedExtensionContainingAppName:v32];
  }

  else
  {
    v33 = [(TUCallDisplayContext *)v40 callDirectoryLocalizedExtensionContainingAppName];
    [(TUCallDisplayContext *)self setCallDirectoryLocalizedExtensionContainingAppName:v33];
  }

  v34 = [(TUCallDisplayContext *)self contactIdentifiers];
  if (v34)
  {
    [(TUCallDisplayContext *)self setContactIdentifiers:v34];
  }

  else
  {
    v35 = [(TUCallDisplayContext *)v40 contactIdentifiers];
    [(TUCallDisplayContext *)self setContactIdentifiers:v35];
  }

  v36 = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
  if (v36)
  {
    [(TUCallDisplayContext *)self setCallDirectoryExtensionIdentifier:v36];
  }

  else
  {
    v37 = [(TUCallDisplayContext *)v40 callDirectoryExtensionIdentifier];
    [(TUCallDisplayContext *)self setCallDirectoryExtensionIdentifier:v37];
  }

  v7 = [(TUCallDisplayContext *)self callDirectoryIdentityType]== 0;
  v38 = v40;
  if (!v7)
  {
    v38 = self;
  }

  [(TUCallDisplayContext *)self setCallDirectoryIdentityType:[(TUCallDisplayContext *)v38 callDirectoryIdentityType]];
  v7 = [(TUCallDisplayContext *)self legacyAddressBookIdentifier]== -1;
  v39 = v40;
  if (!v7)
  {
    v39 = self;
  }

  [(TUCallDisplayContext *)self setLegacyAddressBookIdentifier:[(TUCallDisplayContext *)v39 legacyAddressBookIdentifier]];
}

@end