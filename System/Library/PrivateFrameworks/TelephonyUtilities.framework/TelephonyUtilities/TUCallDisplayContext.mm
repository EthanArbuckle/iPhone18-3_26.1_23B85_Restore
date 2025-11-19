@interface TUCallDisplayContext
- (BOOL)isEqual:(id)a3;
- (NSString)contactIdentifier;
- (NSString)firstName;
- (NSString)label;
- (NSString)name;
- (TUCallDisplayContext)init;
- (TUCallDisplayContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)displayContextByMergingWithDisplayContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setContactIdentifier:(id)a3;
- (void)setFirstName:(id)a3;
@end

@implementation TUCallDisplayContext

- (TUCallDisplayContext)init
{
  v3.receiver = self;
  v3.super_class = TUCallDisplayContext;
  result = [(TUCallDisplayContext *)&v3 init];
  if (result)
  {
    result->_legacyAddressBookIdentifier = -1;
  }

  return result;
}

- (NSString)name
{
  name = self->_name;
  if (!name)
  {
    v4 = TUBundle();
    v5 = [v4 localizedStringForKey:@"UNKNOWN" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v6 = self->_name;
    self->_name = v5;

    name = self->_name;
  }

  return name;
}

- (NSString)label
{
  label = self->_label;
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [(NSString *)label stringByTrimmingCharactersInSet:v4];
  v6 = [v5 length];

  if (!v6)
  {
    v7 = self->_label;
    self->_label = 0;
  }

  v8 = self->_label;

  return v8;
}

- (NSString)contactIdentifier
{
  v2 = [(TUCallDisplayContext *)self contactIdentifiers];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setContactIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUCallDisplayContext *)self contactIdentifiers];
  v6 = [v5 firstObject];
  v7 = TUStringsAreEqualOrNil(v6, v4);

  if ((v7 & 1) == 0)
  {
    v10[0] = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(TUCallDisplayContext *)self setContactIdentifiers:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (NSString)firstName
{
  v2 = [(TUCallDisplayContext *)self personNameComponents];
  v3 = [v2 givenName];

  return v3;
}

- (void)setFirstName:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [(TUCallDisplayContext *)self personNameComponents];

    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E696ADF0]);
      [(TUCallDisplayContext *)self setPersonNameComponents:v5];
    }
  }

  v6 = [(TUCallDisplayContext *)self personNameComponents];
  [v6 setGivenName:v7];
}

- (id)displayContextByMergingWithDisplayContext:(id)a3
{
  v4 = a3;
  if ([(TUCallDisplayContext *)self isEqual:v4])
  {
    v5 = self;
  }

  else
  {
    v6 = [(TUCallDisplayContext *)self mutableCopy];
    [v6 mergeValuesFromDisplayContext:v4];
    v5 = [v6 copy];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TUCallDisplayContext *)self name];
    v7 = [v5 name];
    if (TUStringsAreEqualOrNil(v6, v7))
    {
      v8 = [(TUCallDisplayContext *)self personNameComponents];
      v9 = [v5 personNameComponents];
      if (TUObjectsAreEqualOrNil(v8, v9))
      {
        v10 = [(TUCallDisplayContext *)self suggestedName];
        v11 = [v5 suggestedName];
        if (TUStringsAreEqualOrNil(v10, v11))
        {
          v12 = [(TUCallDisplayContext *)self label];
          v13 = [v5 label];
          v56 = v12;
          v14 = v12;
          v15 = v13;
          if (TUStringsAreEqualOrNil(v14, v13))
          {
            v53 = v15;
            v16 = [(TUCallDisplayContext *)self companyName];
            v54 = [v5 companyName];
            v55 = v16;
            if (TUStringsAreEqualOrNil(v16, v54))
            {
              v17 = [(TUCallDisplayContext *)self companyDepartment];
              v51 = [v5 companyDepartment];
              v52 = v17;
              if (TUStringsAreEqualOrNil(v17, v51))
              {
                v18 = [(TUCallDisplayContext *)self contactName];
                v49 = [v5 contactName];
                v50 = v18;
                if (TUStringsAreEqualOrNil(v18, v49))
                {
                  v19 = [(TUCallDisplayContext *)self contactLabel];
                  v47 = [v5 contactLabel];
                  v48 = v19;
                  if (TUStringsAreEqualOrNil(v19, v47))
                  {
                    v20 = [(TUCallDisplayContext *)self mapName];
                    v45 = [v5 mapName];
                    v46 = v20;
                    if (TUStringsAreEqualOrNil(v20, v45))
                    {
                      v21 = [(TUCallDisplayContext *)self location];
                      v43 = [v5 location];
                      v44 = v21;
                      if (TUStringsAreEqualOrNil(v21, v43))
                      {
                        v22 = [(TUCallDisplayContext *)self callDirectoryLabel];
                        v41 = [v5 callDirectoryLabel];
                        v42 = v22;
                        if (TUStringsAreEqualOrNil(v22, v41))
                        {
                          v23 = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
                          v39 = [v5 callDirectoryLocalizedExtensionContainingAppName];
                          v40 = v23;
                          if (TUStringsAreEqualOrNil(v23, v39))
                          {
                            v24 = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
                            v37 = [v5 callDirectoryExtensionIdentifier];
                            v38 = v24;
                            if (TUStringsAreEqualOrNil(v24, v37))
                            {
                              v25 = [(TUCallDisplayContext *)self contactIdentifiers];
                              v35 = [v5 contactIdentifiers];
                              v36 = v25;
                              if (TUObjectsAreEqualOrNil(v25, v35))
                              {
                                v26 = [(TUCallDisplayContext *)self companyLogoURL];
                                v27 = [v5 companyLogoURL];
                                v34 = v26;
                                v28 = v26;
                                v29 = v27;
                                if (TUObjectsAreEqualOrNil(v28, v27) && (v33 = -[TUCallDisplayContext callDirectoryIdentityType](self, "callDirectoryIdentityType"), v33 == [v5 callDirectoryIdentityType]))
                                {
                                  v30 = [(TUCallDisplayContext *)self legacyAddressBookIdentifier];
                                  v31 = v30 == [v5 legacyAddressBookIdentifier];
                                }

                                else
                                {
                                  v31 = 0;
                                }
                              }

                              else
                              {
                                v31 = 0;
                              }
                            }

                            else
                            {
                              v31 = 0;
                            }

                            v15 = v53;
                          }

                          else
                          {
                            v31 = 0;
                            v15 = v53;
                          }
                        }

                        else
                        {
                          v31 = 0;
                          v15 = v53;
                        }
                      }

                      else
                      {
                        v31 = 0;
                        v15 = v53;
                      }
                    }

                    else
                    {
                      v31 = 0;
                      v15 = v53;
                    }
                  }

                  else
                  {
                    v31 = 0;
                    v15 = v53;
                  }
                }

                else
                {
                  v31 = 0;
                  v15 = v53;
                }
              }

              else
              {
                v31 = 0;
                v15 = v53;
              }
            }

            else
            {
              v31 = 0;
              v15 = v53;
            }
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (unint64_t)hash
{
  v35 = [(TUCallDisplayContext *)self name];
  v3 = [v35 hash];
  v34 = [(TUCallDisplayContext *)self personNameComponents];
  v4 = [v34 hash] ^ v3;
  v33 = [(TUCallDisplayContext *)self suggestedName];
  v5 = [v33 hash];
  v32 = [(TUCallDisplayContext *)self label];
  v6 = v4 ^ v5 ^ [v32 hash];
  v31 = [(TUCallDisplayContext *)self companyName];
  v7 = [v31 hash];
  v30 = [(TUCallDisplayContext *)self companyDepartment];
  v8 = v7 ^ [v30 hash];
  v29 = [(TUCallDisplayContext *)self companyLogoURL];
  v9 = v6 ^ v8 ^ [v29 hash];
  v28 = [(TUCallDisplayContext *)self contactName];
  v10 = [v28 hash];
  v11 = [(TUCallDisplayContext *)self contactLabel];
  v12 = v10 ^ [v11 hash];
  v13 = [(TUCallDisplayContext *)self mapName];
  v14 = v12 ^ [v13 hash];
  v15 = [(TUCallDisplayContext *)self location];
  v16 = v9 ^ v14 ^ [v15 hash];
  v17 = [(TUCallDisplayContext *)self callDirectoryLabel];
  v18 = [v17 hash];
  v19 = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  v20 = v18 ^ [v19 hash];
  v21 = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
  v22 = v20 ^ [v21 hash];
  v23 = [(TUCallDisplayContext *)self contactIdentifiers];
  v24 = v22 ^ [v23 hash];
  v25 = v16 ^ v24 ^ [(TUCallDisplayContext *)self callDirectoryIdentityType];
  v26 = [(TUCallDisplayContext *)self legacyAddressBookIdentifier];

  return v25 ^ v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TUCallDisplayContext *)self name];
  [v4 setName:v5];

  v6 = [(TUCallDisplayContext *)self personNameComponents];
  [v4 setPersonNameComponents:v6];

  v7 = [(TUCallDisplayContext *)self suggestedName];
  [v4 setSuggestedName:v7];

  v8 = [(TUCallDisplayContext *)self label];
  [v4 setLabel:v8];

  v9 = [(TUCallDisplayContext *)self companyName];
  [v4 setCompanyName:v9];

  v10 = [(TUCallDisplayContext *)self companyDepartment];
  [v4 setCompanyDepartment:v10];

  v11 = [(TUCallDisplayContext *)self companyLogoURL];
  [v4 setCompanyLogoURL:v11];

  v12 = [(TUCallDisplayContext *)self contactIdentifiers];
  [v4 setContactIdentifiers:v12];

  v13 = [(TUCallDisplayContext *)self contactName];
  [v4 setContactName:v13];

  v14 = [(TUCallDisplayContext *)self contactLabel];
  [v4 setContactLabel:v14];

  v15 = [(TUCallDisplayContext *)self mapName];
  [v4 setMapName:v15];

  v16 = [(TUCallDisplayContext *)self location];
  [v4 setLocation:v16];

  v17 = [(TUCallDisplayContext *)self callDirectoryLabel];
  [v4 setCallDirectoryLabel:v17];

  v18 = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  [v4 setCallDirectoryLocalizedExtensionContainingAppName:v18];

  v19 = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
  [v4 setCallDirectoryExtensionIdentifier:v19];

  [v4 setCallDirectoryIdentityType:{-[TUCallDisplayContext callDirectoryIdentityType](self, "callDirectoryIdentityType")}];
  [v4 setLegacyAddressBookIdentifier:{-[TUCallDisplayContext legacyAddressBookIdentifier](self, "legacyAddressBookIdentifier")}];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(TUCallDisplayContext *)[TUMutableCallDisplayContext allocWithZone:?]];
  v5 = [(TUCallDisplayContext *)self name];
  [(TUCallDisplayContext *)v4 setName:v5];

  v6 = [(TUCallDisplayContext *)self personNameComponents];
  [(TUCallDisplayContext *)v4 setPersonNameComponents:v6];

  v7 = [(TUCallDisplayContext *)self suggestedName];
  [(TUCallDisplayContext *)v4 setSuggestedName:v7];

  v8 = [(TUCallDisplayContext *)self label];
  [(TUCallDisplayContext *)v4 setLabel:v8];

  v9 = [(TUCallDisplayContext *)self companyName];
  [(TUCallDisplayContext *)v4 setCompanyName:v9];

  v10 = [(TUCallDisplayContext *)self companyDepartment];
  [(TUCallDisplayContext *)v4 setCompanyDepartment:v10];

  v11 = [(TUCallDisplayContext *)self companyLogoURL];
  [(TUCallDisplayContext *)v4 setCompanyLogoURL:v11];

  v12 = [(TUCallDisplayContext *)self contactIdentifiers];
  [(TUCallDisplayContext *)v4 setContactIdentifiers:v12];

  v13 = [(TUCallDisplayContext *)self contactName];
  [(TUCallDisplayContext *)v4 setContactName:v13];

  v14 = [(TUCallDisplayContext *)self contactLabel];
  [(TUCallDisplayContext *)v4 setContactLabel:v14];

  v15 = [(TUCallDisplayContext *)self mapName];
  [(TUCallDisplayContext *)v4 setMapName:v15];

  v16 = [(TUCallDisplayContext *)self location];
  [(TUCallDisplayContext *)v4 setLocation:v16];

  v17 = [(TUCallDisplayContext *)self callDirectoryLabel];
  [(TUCallDisplayContext *)v4 setCallDirectoryLabel:v17];

  v18 = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  [(TUCallDisplayContext *)v4 setCallDirectoryLocalizedExtensionContainingAppName:v18];

  v19 = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
  [(TUCallDisplayContext *)v4 setCallDirectoryExtensionIdentifier:v19];

  [(TUCallDisplayContext *)v4 setCallDirectoryIdentityType:[(TUCallDisplayContext *)self callDirectoryIdentityType]];
  [(TUCallDisplayContext *)v4 setLegacyAddressBookIdentifier:[(TUCallDisplayContext *)self legacyAddressBookIdentifier]];
  return v4;
}

- (TUCallDisplayContext)initWithCoder:(id)a3
{
  v4 = a3;
  v71.receiver = self;
  v71.super_class = TUCallDisplayContext;
  v5 = [(TUCallDisplayContext *)&v71 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_name);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    name = v5->_name;
    v5->_name = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_personNameComponents);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    personNameComponents = v5->_personNameComponents;
    v5->_personNameComponents = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_suggestedName);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    suggestedName = v5->_suggestedName;
    v5->_suggestedName = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_label);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    label = v5->_label;
    v5->_label = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_companyName);
    v24 = [v4 decodeObjectOfClass:v22 forKey:v23];
    companyName = v5->_companyName;
    v5->_companyName = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_companyDepartment);
    v28 = [v4 decodeObjectOfClass:v26 forKey:v27];
    companyDepartment = v5->_companyDepartment;
    v5->_companyDepartment = v28;

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_companyLogoURL);
    v32 = [v4 decodeObjectOfClass:v30 forKey:v31];
    companyLogoURL = v5->_companyLogoURL;
    v5->_companyLogoURL = v32;

    v34 = objc_opt_class();
    v35 = NSStringFromSelector(sel_contactName);
    v36 = [v4 decodeObjectOfClass:v34 forKey:v35];
    contactName = v5->_contactName;
    v5->_contactName = v36;

    v38 = objc_opt_class();
    v39 = NSStringFromSelector(sel_contactLabel);
    v40 = [v4 decodeObjectOfClass:v38 forKey:v39];
    contactLabel = v5->_contactLabel;
    v5->_contactLabel = v40;

    v42 = objc_opt_class();
    v43 = NSStringFromSelector(sel_mapName);
    v44 = [v4 decodeObjectOfClass:v42 forKey:v43];
    mapName = v5->_mapName;
    v5->_mapName = v44;

    v46 = objc_opt_class();
    v47 = NSStringFromSelector(sel_location);
    v48 = [v4 decodeObjectOfClass:v46 forKey:v47];
    location = v5->_location;
    v5->_location = v48;

    v50 = objc_opt_class();
    v51 = NSStringFromSelector(sel_callDirectoryLabel);
    v52 = [v4 decodeObjectOfClass:v50 forKey:v51];
    callDirectoryLabel = v5->_callDirectoryLabel;
    v5->_callDirectoryLabel = v52;

    v54 = objc_opt_class();
    v55 = NSStringFromSelector(sel_callDirectoryLocalizedExtensionContainingAppName);
    v56 = [v4 decodeObjectOfClass:v54 forKey:v55];
    callDirectoryLocalizedExtensionContainingAppName = v5->_callDirectoryLocalizedExtensionContainingAppName;
    v5->_callDirectoryLocalizedExtensionContainingAppName = v56;

    v58 = objc_opt_class();
    v59 = NSStringFromSelector(sel_callDirectoryExtensionIdentifier);
    v60 = [v4 decodeObjectOfClass:v58 forKey:v59];
    callDirectoryExtensionIdentifier = v5->_callDirectoryExtensionIdentifier;
    v5->_callDirectoryExtensionIdentifier = v60;

    v62 = MEMORY[0x1E695DFD8];
    v63 = objc_opt_class();
    v64 = [v62 setWithObjects:{v63, objc_opt_class(), 0}];
    v65 = NSStringFromSelector(sel_contactIdentifiers);
    v66 = [v4 decodeObjectOfClasses:v64 forKey:v65];
    contactIdentifiers = v5->_contactIdentifiers;
    v5->_contactIdentifiers = v66;

    v68 = NSStringFromSelector(sel_callDirectoryIdentityType);
    v5->_callDirectoryIdentityType = [v4 decodeIntegerForKey:v68];

    v69 = NSStringFromSelector(sel_legacyAddressBookIdentifier);
    v5->_legacyAddressBookIdentifier = [v4 decodeInt32ForKey:v69];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCallDisplayContext *)self name];
  v6 = NSStringFromSelector(sel_name);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUCallDisplayContext *)self personNameComponents];
  v8 = NSStringFromSelector(sel_personNameComponents);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUCallDisplayContext *)self suggestedName];
  v10 = NSStringFromSelector(sel_suggestedName);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUCallDisplayContext *)self label];
  v12 = NSStringFromSelector(sel_label);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUCallDisplayContext *)self companyName];
  v14 = NSStringFromSelector(sel_companyName);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(TUCallDisplayContext *)self companyDepartment];
  v16 = NSStringFromSelector(sel_companyDepartment);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(TUCallDisplayContext *)self companyLogoURL];
  v18 = NSStringFromSelector(sel_companyLogoURL);
  [v4 encodeObject:v17 forKey:v18];

  v19 = [(TUCallDisplayContext *)self contactName];
  v20 = NSStringFromSelector(sel_contactName);
  [v4 encodeObject:v19 forKey:v20];

  v21 = [(TUCallDisplayContext *)self contactLabel];
  v22 = NSStringFromSelector(sel_contactLabel);
  [v4 encodeObject:v21 forKey:v22];

  v23 = [(TUCallDisplayContext *)self mapName];
  v24 = NSStringFromSelector(sel_mapName);
  [v4 encodeObject:v23 forKey:v24];

  v25 = [(TUCallDisplayContext *)self location];
  v26 = NSStringFromSelector(sel_location);
  [v4 encodeObject:v25 forKey:v26];

  v27 = [(TUCallDisplayContext *)self callDirectoryLabel];
  v28 = NSStringFromSelector(sel_callDirectoryLabel);
  [v4 encodeObject:v27 forKey:v28];

  v29 = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  v30 = NSStringFromSelector(sel_callDirectoryLocalizedExtensionContainingAppName);
  [v4 encodeObject:v29 forKey:v30];

  v31 = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
  v32 = NSStringFromSelector(sel_callDirectoryExtensionIdentifier);
  [v4 encodeObject:v31 forKey:v32];

  v33 = [(TUCallDisplayContext *)self contactIdentifiers];
  v34 = NSStringFromSelector(sel_contactIdentifiers);
  [v4 encodeObject:v33 forKey:v34];

  v35 = [(TUCallDisplayContext *)self callDirectoryIdentityType];
  v36 = NSStringFromSelector(sel_callDirectoryIdentityType);
  [v4 encodeInteger:v35 forKey:v36];

  v37 = [(TUCallDisplayContext *)self legacyAddressBookIdentifier];
  v38 = NSStringFromSelector(sel_legacyAddressBookIdentifier);
  [v4 encodeInt32:v37 forKey:v38];
}

@end