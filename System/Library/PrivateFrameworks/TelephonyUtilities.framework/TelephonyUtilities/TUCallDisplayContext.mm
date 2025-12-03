@interface TUCallDisplayContext
- (BOOL)isEqual:(id)equal;
- (NSString)contactIdentifier;
- (NSString)firstName;
- (NSString)label;
- (NSString)name;
- (TUCallDisplayContext)init;
- (TUCallDisplayContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayContextByMergingWithDisplayContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setContactIdentifier:(id)identifier;
- (void)setFirstName:(id)name;
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
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [(NSString *)label stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
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
  contactIdentifiers = [(TUCallDisplayContext *)self contactIdentifiers];
  firstObject = [contactIdentifiers firstObject];

  return firstObject;
}

- (void)setContactIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contactIdentifiers = [(TUCallDisplayContext *)self contactIdentifiers];
  firstObject = [contactIdentifiers firstObject];
  v7 = TUStringsAreEqualOrNil(firstObject, identifierCopy);

  if ((v7 & 1) == 0)
  {
    v10[0] = identifierCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(TUCallDisplayContext *)self setContactIdentifiers:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (NSString)firstName
{
  personNameComponents = [(TUCallDisplayContext *)self personNameComponents];
  givenName = [personNameComponents givenName];

  return givenName;
}

- (void)setFirstName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    personNameComponents = [(TUCallDisplayContext *)self personNameComponents];

    if (!personNameComponents)
    {
      v5 = objc_alloc_init(MEMORY[0x1E696ADF0]);
      [(TUCallDisplayContext *)self setPersonNameComponents:v5];
    }
  }

  personNameComponents2 = [(TUCallDisplayContext *)self personNameComponents];
  [personNameComponents2 setGivenName:nameCopy];
}

- (id)displayContextByMergingWithDisplayContext:(id)context
{
  contextCopy = context;
  if ([(TUCallDisplayContext *)self isEqual:contextCopy])
  {
    selfCopy = self;
  }

  else
  {
    v6 = [(TUCallDisplayContext *)self mutableCopy];
    [v6 mergeValuesFromDisplayContext:contextCopy];
    selfCopy = [v6 copy];
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(TUCallDisplayContext *)self name];
    name2 = [v5 name];
    if (TUStringsAreEqualOrNil(name, name2))
    {
      personNameComponents = [(TUCallDisplayContext *)self personNameComponents];
      personNameComponents2 = [v5 personNameComponents];
      if (TUObjectsAreEqualOrNil(personNameComponents, personNameComponents2))
      {
        suggestedName = [(TUCallDisplayContext *)self suggestedName];
        suggestedName2 = [v5 suggestedName];
        if (TUStringsAreEqualOrNil(suggestedName, suggestedName2))
        {
          label = [(TUCallDisplayContext *)self label];
          label2 = [v5 label];
          v56 = label;
          v14 = label;
          v15 = label2;
          if (TUStringsAreEqualOrNil(v14, label2))
          {
            v53 = v15;
            companyName = [(TUCallDisplayContext *)self companyName];
            companyName2 = [v5 companyName];
            v55 = companyName;
            if (TUStringsAreEqualOrNil(companyName, companyName2))
            {
              companyDepartment = [(TUCallDisplayContext *)self companyDepartment];
              companyDepartment2 = [v5 companyDepartment];
              v52 = companyDepartment;
              if (TUStringsAreEqualOrNil(companyDepartment, companyDepartment2))
              {
                contactName = [(TUCallDisplayContext *)self contactName];
                contactName2 = [v5 contactName];
                v50 = contactName;
                if (TUStringsAreEqualOrNil(contactName, contactName2))
                {
                  contactLabel = [(TUCallDisplayContext *)self contactLabel];
                  contactLabel2 = [v5 contactLabel];
                  v48 = contactLabel;
                  if (TUStringsAreEqualOrNil(contactLabel, contactLabel2))
                  {
                    mapName = [(TUCallDisplayContext *)self mapName];
                    mapName2 = [v5 mapName];
                    v46 = mapName;
                    if (TUStringsAreEqualOrNil(mapName, mapName2))
                    {
                      location = [(TUCallDisplayContext *)self location];
                      location2 = [v5 location];
                      v44 = location;
                      if (TUStringsAreEqualOrNil(location, location2))
                      {
                        callDirectoryLabel = [(TUCallDisplayContext *)self callDirectoryLabel];
                        callDirectoryLabel2 = [v5 callDirectoryLabel];
                        v42 = callDirectoryLabel;
                        if (TUStringsAreEqualOrNil(callDirectoryLabel, callDirectoryLabel2))
                        {
                          callDirectoryLocalizedExtensionContainingAppName = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
                          callDirectoryLocalizedExtensionContainingAppName2 = [v5 callDirectoryLocalizedExtensionContainingAppName];
                          v40 = callDirectoryLocalizedExtensionContainingAppName;
                          if (TUStringsAreEqualOrNil(callDirectoryLocalizedExtensionContainingAppName, callDirectoryLocalizedExtensionContainingAppName2))
                          {
                            callDirectoryExtensionIdentifier = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
                            callDirectoryExtensionIdentifier2 = [v5 callDirectoryExtensionIdentifier];
                            v38 = callDirectoryExtensionIdentifier;
                            if (TUStringsAreEqualOrNil(callDirectoryExtensionIdentifier, callDirectoryExtensionIdentifier2))
                            {
                              contactIdentifiers = [(TUCallDisplayContext *)self contactIdentifiers];
                              contactIdentifiers2 = [v5 contactIdentifiers];
                              v36 = contactIdentifiers;
                              if (TUObjectsAreEqualOrNil(contactIdentifiers, contactIdentifiers2))
                              {
                                companyLogoURL = [(TUCallDisplayContext *)self companyLogoURL];
                                companyLogoURL2 = [v5 companyLogoURL];
                                v34 = companyLogoURL;
                                v28 = companyLogoURL;
                                v29 = companyLogoURL2;
                                if (TUObjectsAreEqualOrNil(v28, companyLogoURL2) && (v33 = -[TUCallDisplayContext callDirectoryIdentityType](self, "callDirectoryIdentityType"), v33 == [v5 callDirectoryIdentityType]))
                                {
                                  legacyAddressBookIdentifier = [(TUCallDisplayContext *)self legacyAddressBookIdentifier];
                                  v31 = legacyAddressBookIdentifier == [v5 legacyAddressBookIdentifier];
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
  name = [(TUCallDisplayContext *)self name];
  v3 = [name hash];
  personNameComponents = [(TUCallDisplayContext *)self personNameComponents];
  v4 = [personNameComponents hash] ^ v3;
  suggestedName = [(TUCallDisplayContext *)self suggestedName];
  v5 = [suggestedName hash];
  label = [(TUCallDisplayContext *)self label];
  v6 = v4 ^ v5 ^ [label hash];
  companyName = [(TUCallDisplayContext *)self companyName];
  v7 = [companyName hash];
  companyDepartment = [(TUCallDisplayContext *)self companyDepartment];
  v8 = v7 ^ [companyDepartment hash];
  companyLogoURL = [(TUCallDisplayContext *)self companyLogoURL];
  v9 = v6 ^ v8 ^ [companyLogoURL hash];
  contactName = [(TUCallDisplayContext *)self contactName];
  v10 = [contactName hash];
  contactLabel = [(TUCallDisplayContext *)self contactLabel];
  v12 = v10 ^ [contactLabel hash];
  mapName = [(TUCallDisplayContext *)self mapName];
  v14 = v12 ^ [mapName hash];
  location = [(TUCallDisplayContext *)self location];
  v16 = v9 ^ v14 ^ [location hash];
  callDirectoryLabel = [(TUCallDisplayContext *)self callDirectoryLabel];
  v18 = [callDirectoryLabel hash];
  callDirectoryLocalizedExtensionContainingAppName = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  v20 = v18 ^ [callDirectoryLocalizedExtensionContainingAppName hash];
  callDirectoryExtensionIdentifier = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
  v22 = v20 ^ [callDirectoryExtensionIdentifier hash];
  contactIdentifiers = [(TUCallDisplayContext *)self contactIdentifiers];
  v24 = v22 ^ [contactIdentifiers hash];
  v25 = v16 ^ v24 ^ [(TUCallDisplayContext *)self callDirectoryIdentityType];
  legacyAddressBookIdentifier = [(TUCallDisplayContext *)self legacyAddressBookIdentifier];

  return v25 ^ legacyAddressBookIdentifier;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(TUCallDisplayContext *)self name];
  [v4 setName:name];

  personNameComponents = [(TUCallDisplayContext *)self personNameComponents];
  [v4 setPersonNameComponents:personNameComponents];

  suggestedName = [(TUCallDisplayContext *)self suggestedName];
  [v4 setSuggestedName:suggestedName];

  label = [(TUCallDisplayContext *)self label];
  [v4 setLabel:label];

  companyName = [(TUCallDisplayContext *)self companyName];
  [v4 setCompanyName:companyName];

  companyDepartment = [(TUCallDisplayContext *)self companyDepartment];
  [v4 setCompanyDepartment:companyDepartment];

  companyLogoURL = [(TUCallDisplayContext *)self companyLogoURL];
  [v4 setCompanyLogoURL:companyLogoURL];

  contactIdentifiers = [(TUCallDisplayContext *)self contactIdentifiers];
  [v4 setContactIdentifiers:contactIdentifiers];

  contactName = [(TUCallDisplayContext *)self contactName];
  [v4 setContactName:contactName];

  contactLabel = [(TUCallDisplayContext *)self contactLabel];
  [v4 setContactLabel:contactLabel];

  mapName = [(TUCallDisplayContext *)self mapName];
  [v4 setMapName:mapName];

  location = [(TUCallDisplayContext *)self location];
  [v4 setLocation:location];

  callDirectoryLabel = [(TUCallDisplayContext *)self callDirectoryLabel];
  [v4 setCallDirectoryLabel:callDirectoryLabel];

  callDirectoryLocalizedExtensionContainingAppName = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  [v4 setCallDirectoryLocalizedExtensionContainingAppName:callDirectoryLocalizedExtensionContainingAppName];

  callDirectoryExtensionIdentifier = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
  [v4 setCallDirectoryExtensionIdentifier:callDirectoryExtensionIdentifier];

  [v4 setCallDirectoryIdentityType:{-[TUCallDisplayContext callDirectoryIdentityType](self, "callDirectoryIdentityType")}];
  [v4 setLegacyAddressBookIdentifier:{-[TUCallDisplayContext legacyAddressBookIdentifier](self, "legacyAddressBookIdentifier")}];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(TUCallDisplayContext *)[TUMutableCallDisplayContext allocWithZone:?]];
  name = [(TUCallDisplayContext *)self name];
  [(TUCallDisplayContext *)v4 setName:name];

  personNameComponents = [(TUCallDisplayContext *)self personNameComponents];
  [(TUCallDisplayContext *)v4 setPersonNameComponents:personNameComponents];

  suggestedName = [(TUCallDisplayContext *)self suggestedName];
  [(TUCallDisplayContext *)v4 setSuggestedName:suggestedName];

  label = [(TUCallDisplayContext *)self label];
  [(TUCallDisplayContext *)v4 setLabel:label];

  companyName = [(TUCallDisplayContext *)self companyName];
  [(TUCallDisplayContext *)v4 setCompanyName:companyName];

  companyDepartment = [(TUCallDisplayContext *)self companyDepartment];
  [(TUCallDisplayContext *)v4 setCompanyDepartment:companyDepartment];

  companyLogoURL = [(TUCallDisplayContext *)self companyLogoURL];
  [(TUCallDisplayContext *)v4 setCompanyLogoURL:companyLogoURL];

  contactIdentifiers = [(TUCallDisplayContext *)self contactIdentifiers];
  [(TUCallDisplayContext *)v4 setContactIdentifiers:contactIdentifiers];

  contactName = [(TUCallDisplayContext *)self contactName];
  [(TUCallDisplayContext *)v4 setContactName:contactName];

  contactLabel = [(TUCallDisplayContext *)self contactLabel];
  [(TUCallDisplayContext *)v4 setContactLabel:contactLabel];

  mapName = [(TUCallDisplayContext *)self mapName];
  [(TUCallDisplayContext *)v4 setMapName:mapName];

  location = [(TUCallDisplayContext *)self location];
  [(TUCallDisplayContext *)v4 setLocation:location];

  callDirectoryLabel = [(TUCallDisplayContext *)self callDirectoryLabel];
  [(TUCallDisplayContext *)v4 setCallDirectoryLabel:callDirectoryLabel];

  callDirectoryLocalizedExtensionContainingAppName = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  [(TUCallDisplayContext *)v4 setCallDirectoryLocalizedExtensionContainingAppName:callDirectoryLocalizedExtensionContainingAppName];

  callDirectoryExtensionIdentifier = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
  [(TUCallDisplayContext *)v4 setCallDirectoryExtensionIdentifier:callDirectoryExtensionIdentifier];

  [(TUCallDisplayContext *)v4 setCallDirectoryIdentityType:[(TUCallDisplayContext *)self callDirectoryIdentityType]];
  [(TUCallDisplayContext *)v4 setLegacyAddressBookIdentifier:[(TUCallDisplayContext *)self legacyAddressBookIdentifier]];
  return v4;
}

- (TUCallDisplayContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v71.receiver = self;
  v71.super_class = TUCallDisplayContext;
  v5 = [(TUCallDisplayContext *)&v71 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_name);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    name = v5->_name;
    v5->_name = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_personNameComponents);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    personNameComponents = v5->_personNameComponents;
    v5->_personNameComponents = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_suggestedName);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    suggestedName = v5->_suggestedName;
    v5->_suggestedName = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_label);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    label = v5->_label;
    v5->_label = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_companyName);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    companyName = v5->_companyName;
    v5->_companyName = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_companyDepartment);
    v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];
    companyDepartment = v5->_companyDepartment;
    v5->_companyDepartment = v28;

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_companyLogoURL);
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
    companyLogoURL = v5->_companyLogoURL;
    v5->_companyLogoURL = v32;

    v34 = objc_opt_class();
    v35 = NSStringFromSelector(sel_contactName);
    v36 = [coderCopy decodeObjectOfClass:v34 forKey:v35];
    contactName = v5->_contactName;
    v5->_contactName = v36;

    v38 = objc_opt_class();
    v39 = NSStringFromSelector(sel_contactLabel);
    v40 = [coderCopy decodeObjectOfClass:v38 forKey:v39];
    contactLabel = v5->_contactLabel;
    v5->_contactLabel = v40;

    v42 = objc_opt_class();
    v43 = NSStringFromSelector(sel_mapName);
    v44 = [coderCopy decodeObjectOfClass:v42 forKey:v43];
    mapName = v5->_mapName;
    v5->_mapName = v44;

    v46 = objc_opt_class();
    v47 = NSStringFromSelector(sel_location);
    v48 = [coderCopy decodeObjectOfClass:v46 forKey:v47];
    location = v5->_location;
    v5->_location = v48;

    v50 = objc_opt_class();
    v51 = NSStringFromSelector(sel_callDirectoryLabel);
    v52 = [coderCopy decodeObjectOfClass:v50 forKey:v51];
    callDirectoryLabel = v5->_callDirectoryLabel;
    v5->_callDirectoryLabel = v52;

    v54 = objc_opt_class();
    v55 = NSStringFromSelector(sel_callDirectoryLocalizedExtensionContainingAppName);
    v56 = [coderCopy decodeObjectOfClass:v54 forKey:v55];
    callDirectoryLocalizedExtensionContainingAppName = v5->_callDirectoryLocalizedExtensionContainingAppName;
    v5->_callDirectoryLocalizedExtensionContainingAppName = v56;

    v58 = objc_opt_class();
    v59 = NSStringFromSelector(sel_callDirectoryExtensionIdentifier);
    v60 = [coderCopy decodeObjectOfClass:v58 forKey:v59];
    callDirectoryExtensionIdentifier = v5->_callDirectoryExtensionIdentifier;
    v5->_callDirectoryExtensionIdentifier = v60;

    v62 = MEMORY[0x1E695DFD8];
    v63 = objc_opt_class();
    v64 = [v62 setWithObjects:{v63, objc_opt_class(), 0}];
    v65 = NSStringFromSelector(sel_contactIdentifiers);
    v66 = [coderCopy decodeObjectOfClasses:v64 forKey:v65];
    contactIdentifiers = v5->_contactIdentifiers;
    v5->_contactIdentifiers = v66;

    v68 = NSStringFromSelector(sel_callDirectoryIdentityType);
    v5->_callDirectoryIdentityType = [coderCopy decodeIntegerForKey:v68];

    v69 = NSStringFromSelector(sel_legacyAddressBookIdentifier);
    v5->_legacyAddressBookIdentifier = [coderCopy decodeInt32ForKey:v69];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(TUCallDisplayContext *)self name];
  v6 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:name forKey:v6];

  personNameComponents = [(TUCallDisplayContext *)self personNameComponents];
  v8 = NSStringFromSelector(sel_personNameComponents);
  [coderCopy encodeObject:personNameComponents forKey:v8];

  suggestedName = [(TUCallDisplayContext *)self suggestedName];
  v10 = NSStringFromSelector(sel_suggestedName);
  [coderCopy encodeObject:suggestedName forKey:v10];

  label = [(TUCallDisplayContext *)self label];
  v12 = NSStringFromSelector(sel_label);
  [coderCopy encodeObject:label forKey:v12];

  companyName = [(TUCallDisplayContext *)self companyName];
  v14 = NSStringFromSelector(sel_companyName);
  [coderCopy encodeObject:companyName forKey:v14];

  companyDepartment = [(TUCallDisplayContext *)self companyDepartment];
  v16 = NSStringFromSelector(sel_companyDepartment);
  [coderCopy encodeObject:companyDepartment forKey:v16];

  companyLogoURL = [(TUCallDisplayContext *)self companyLogoURL];
  v18 = NSStringFromSelector(sel_companyLogoURL);
  [coderCopy encodeObject:companyLogoURL forKey:v18];

  contactName = [(TUCallDisplayContext *)self contactName];
  v20 = NSStringFromSelector(sel_contactName);
  [coderCopy encodeObject:contactName forKey:v20];

  contactLabel = [(TUCallDisplayContext *)self contactLabel];
  v22 = NSStringFromSelector(sel_contactLabel);
  [coderCopy encodeObject:contactLabel forKey:v22];

  mapName = [(TUCallDisplayContext *)self mapName];
  v24 = NSStringFromSelector(sel_mapName);
  [coderCopy encodeObject:mapName forKey:v24];

  location = [(TUCallDisplayContext *)self location];
  v26 = NSStringFromSelector(sel_location);
  [coderCopy encodeObject:location forKey:v26];

  callDirectoryLabel = [(TUCallDisplayContext *)self callDirectoryLabel];
  v28 = NSStringFromSelector(sel_callDirectoryLabel);
  [coderCopy encodeObject:callDirectoryLabel forKey:v28];

  callDirectoryLocalizedExtensionContainingAppName = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  v30 = NSStringFromSelector(sel_callDirectoryLocalizedExtensionContainingAppName);
  [coderCopy encodeObject:callDirectoryLocalizedExtensionContainingAppName forKey:v30];

  callDirectoryExtensionIdentifier = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
  v32 = NSStringFromSelector(sel_callDirectoryExtensionIdentifier);
  [coderCopy encodeObject:callDirectoryExtensionIdentifier forKey:v32];

  contactIdentifiers = [(TUCallDisplayContext *)self contactIdentifiers];
  v34 = NSStringFromSelector(sel_contactIdentifiers);
  [coderCopy encodeObject:contactIdentifiers forKey:v34];

  callDirectoryIdentityType = [(TUCallDisplayContext *)self callDirectoryIdentityType];
  v36 = NSStringFromSelector(sel_callDirectoryIdentityType);
  [coderCopy encodeInteger:callDirectoryIdentityType forKey:v36];

  legacyAddressBookIdentifier = [(TUCallDisplayContext *)self legacyAddressBookIdentifier];
  v38 = NSStringFromSelector(sel_legacyAddressBookIdentifier);
  [coderCopy encodeInt32:legacyAddressBookIdentifier forKey:v38];
}

@end