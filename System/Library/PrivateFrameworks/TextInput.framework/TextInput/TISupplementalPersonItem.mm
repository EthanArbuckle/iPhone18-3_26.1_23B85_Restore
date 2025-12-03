@interface TISupplementalPersonItem
- (NSPersonNameComponents)personNameComponents;
- (TISupplementalPersonItem)initWithCoder:(id)coder;
- (TISupplementalPersonItem)initWithContact:(id)contact;
- (TISupplementalPersonItem)initWithPersonNameComponents:(id)components;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TISupplementalPersonItem

- (id)description
{
  v23[20] = *MEMORY[0x1E69E9840];
  givenName = self->_givenName;
  v23[0] = "givenName";
  v23[1] = givenName;
  phoneticGivenName = self->_phoneticGivenName;
  v23[2] = "phoneticGivenName";
  v23[3] = phoneticGivenName;
  middleName = self->_middleName;
  v23[4] = "middleName";
  v23[5] = middleName;
  phoneticMiddleName = self->_phoneticMiddleName;
  v23[6] = "phoneticMiddleName";
  v23[7] = phoneticMiddleName;
  familyName = self->_familyName;
  v23[8] = "familyName";
  v23[9] = familyName;
  phoneticFamilyName = self->_phoneticFamilyName;
  v23[10] = "phoneticFamilyName";
  v23[11] = phoneticFamilyName;
  previousFamilyName = self->_previousFamilyName;
  v23[12] = "previousFamilyName";
  v23[13] = previousFamilyName;
  organizationName = self->_organizationName;
  v23[14] = "organizationName";
  v23[15] = organizationName;
  phoneticOrganizationName = self->_phoneticOrganizationName;
  v23[16] = "phoneticOrganizationName";
  v23[17] = phoneticOrganizationName;
  nickname = self->_nickname;
  v23[18] = "nickname";
  v23[19] = nickname;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  for (i = 0; i != 20; i += 2)
  {
    v16 = v23[i];
    v15 = v23[i + 1];
    if ([v15 length])
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s=%@", v16, v15];
      [v13 addObject:v17];
    }
  }

  v18 = MEMORY[0x1E696AEC0];
  v19 = objc_opt_class();
  v20 = [v13 componentsJoinedByString:{@", "}];
  v21 = [v18 stringWithFormat:@"<%@: %p %@, identifier=%llu>", v19, self, v20, -[TISupplementalItem identifier](self, "identifier")];;

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TISupplementalPersonItem;
  coderCopy = coder;
  [(TISupplementalItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_givenName forKey:{@"givenName", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_phoneticGivenName forKey:@"phoneticGivenName"];
  [coderCopy encodeObject:self->_middleName forKey:@"middleName"];
  [coderCopy encodeObject:self->_phoneticMiddleName forKey:@"phoneticMiddleName"];
  [coderCopy encodeObject:self->_familyName forKey:@"familyName"];
  [coderCopy encodeObject:self->_phoneticFamilyName forKey:@"phoneticFamilyName"];
  [coderCopy encodeObject:self->_organizationName forKey:@"organizationName"];
  [coderCopy encodeObject:self->_phoneticOrganizationName forKey:@"phoneticOrganizationName"];
  [coderCopy encodeObject:self->_nickname forKey:@"nickname"];
  [coderCopy encodeObject:self->_previousFamilyName forKey:@"previousFamilyName"];
}

- (TISupplementalPersonItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = TISupplementalPersonItem;
  v5 = [(TISupplementalItem *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"givenName"];
    givenName = v5->_givenName;
    v5->_givenName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneticGivenName"];
    phoneticGivenName = v5->_phoneticGivenName;
    v5->_phoneticGivenName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneticMiddleName"];
    middleName = v5->_middleName;
    v5->_middleName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneticMiddleName"];
    phoneticMiddleName = v5->_phoneticMiddleName;
    v5->_phoneticMiddleName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"familyName"];
    familyName = v5->_familyName;
    v5->_familyName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneticFamilyName"];
    phoneticFamilyName = v5->_phoneticFamilyName;
    v5->_phoneticFamilyName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];
    organizationName = v5->_organizationName;
    v5->_organizationName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneticOrganizationName"];
    phoneticOrganizationName = v5->_phoneticOrganizationName;
    v5->_phoneticOrganizationName = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nickname"];
    nickname = v5->_nickname;
    v5->_nickname = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousFamilyName"];
    previousFamilyName = v5->_previousFamilyName;
    v5->_previousFamilyName = v24;

    v26 = v5;
  }

  return v5;
}

- (NSPersonNameComponents)personNameComponents
{
  if ([(NSString *)self->_organizationName length])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(NSString *)self->_phoneticOrganizationName length]!= 0;
  }

  if ([(NSString *)self->_givenName length]|| [(NSString *)self->_phoneticGivenName length]|| [(NSString *)self->_middleName length]|| [(NSString *)self->_phoneticMiddleName length]|| [(NSString *)self->_familyName length]|| [(NSString *)self->_phoneticFamilyName length]|| [(NSString *)self->_nickname length]!= 0 && !v3)
  {
    v4 = objc_opt_new();
    [v4 setGivenName:self->_givenName];
    [v4 setMiddleName:self->_middleName];
    [v4 setFamilyName:self->_familyName];
    [v4 setNickname:self->_nickname];
    if ([(NSString *)self->_phoneticGivenName length]|| [(NSString *)self->_phoneticFamilyName length]|| [(NSString *)self->_phoneticMiddleName length])
    {
      v5 = objc_opt_new();
      [v4 setPhoneticRepresentation:v5];

      phoneticGivenName = self->_phoneticGivenName;
      phoneticRepresentation = [v4 phoneticRepresentation];
      [phoneticRepresentation setGivenName:phoneticGivenName];

      phoneticMiddleName = self->_phoneticMiddleName;
      phoneticRepresentation2 = [v4 phoneticRepresentation];
      [phoneticRepresentation2 setMiddleName:phoneticMiddleName];

      phoneticFamilyName = self->_phoneticFamilyName;
      phoneticRepresentation3 = [v4 phoneticRepresentation];
      [phoneticRepresentation3 setFamilyName:phoneticFamilyName];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TISupplementalPersonItem)initWithPersonNameComponents:(id)components
{
  componentsCopy = components;
  v31.receiver = self;
  v31.super_class = TISupplementalPersonItem;
  v5 = [(TISupplementalItem *)&v31 init];
  if (v5)
  {
    givenName = [componentsCopy givenName];
    v7 = [givenName copy];
    givenName = v5->_givenName;
    v5->_givenName = v7;

    middleName = [componentsCopy middleName];
    v10 = [middleName copy];
    middleName = v5->_middleName;
    v5->_middleName = v10;

    familyName = [componentsCopy familyName];
    v13 = [familyName copy];
    familyName = v5->_familyName;
    v5->_familyName = v13;

    nickname = [componentsCopy nickname];
    v16 = [nickname copy];
    nickname = v5->_nickname;
    v5->_nickname = v16;

    phoneticRepresentation = [componentsCopy phoneticRepresentation];
    v19 = phoneticRepresentation;
    if (phoneticRepresentation)
    {
      givenName2 = [phoneticRepresentation givenName];
      v21 = [givenName2 copy];
      phoneticGivenName = v5->_phoneticGivenName;
      v5->_phoneticGivenName = v21;

      middleName2 = [v19 middleName];
      v24 = [middleName2 copy];
      phoneticMiddleName = v5->_phoneticMiddleName;
      v5->_phoneticMiddleName = v24;

      familyName2 = [v19 familyName];
      v27 = [familyName2 copy];
      phoneticFamilyName = v5->_phoneticFamilyName;
      v5->_phoneticFamilyName = v27;
    }

    v29 = v5;
  }

  return v5;
}

- (TISupplementalPersonItem)initWithContact:(id)contact
{
  contactCopy = contact;
  v69.receiver = self;
  v69.super_class = TISupplementalPersonItem;
  v5 = [(TISupplementalItem *)&v69 init];
  if (!v5)
  {
LABEL_53:

    return v5;
  }

  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v6 = getCNContactGivenNameKeySymbolLoc_ptr;
  v78 = getCNContactGivenNameKeySymbolLoc_ptr;
  if (!getCNContactGivenNameKeySymbolLoc_ptr)
  {
    v70 = MEMORY[0x1E69E9820];
    v71 = 3221225472;
    v72 = __getCNContactGivenNameKeySymbolLoc_block_invoke;
    v73 = &unk_1E6F4D960;
    v74 = &v75;
    v7 = ContactsLibrary();
    v8 = dlsym(v7, "CNContactGivenNameKey");
    *(v74[1] + 24) = v8;
    getCNContactGivenNameKeySymbolLoc_ptr = *(v74[1] + 24);
    v6 = v76[3];
  }

  _Block_object_dispose(&v75, 8);
  if (v6)
  {
    if ([contactCopy isKeyAvailable:*v6])
    {
      givenName = [contactCopy givenName];
      v10 = [givenName copy];
      givenName = v5->_givenName;
      v5->_givenName = v10;
    }

    v75 = 0;
    v76 = &v75;
    v77 = 0x2020000000;
    v12 = getCNContactPhoneticGivenNameKeySymbolLoc_ptr;
    v78 = getCNContactPhoneticGivenNameKeySymbolLoc_ptr;
    if (!getCNContactPhoneticGivenNameKeySymbolLoc_ptr)
    {
      v70 = MEMORY[0x1E69E9820];
      v71 = 3221225472;
      v72 = __getCNContactPhoneticGivenNameKeySymbolLoc_block_invoke;
      v73 = &unk_1E6F4D960;
      v74 = &v75;
      v13 = ContactsLibrary();
      v14 = dlsym(v13, "CNContactPhoneticGivenNameKey");
      *(v74[1] + 24) = v14;
      getCNContactPhoneticGivenNameKeySymbolLoc_ptr = *(v74[1] + 24);
      v12 = v76[3];
    }

    _Block_object_dispose(&v75, 8);
    if (v12)
    {
      if ([contactCopy isKeyAvailable:*v12])
      {
        phoneticGivenName = [contactCopy phoneticGivenName];
        v16 = [phoneticGivenName copy];
        phoneticGivenName = v5->_phoneticGivenName;
        v5->_phoneticGivenName = v16;
      }

      v75 = 0;
      v76 = &v75;
      v77 = 0x2020000000;
      v18 = getCNContactMiddleNameKeySymbolLoc_ptr;
      v78 = getCNContactMiddleNameKeySymbolLoc_ptr;
      if (!getCNContactMiddleNameKeySymbolLoc_ptr)
      {
        v70 = MEMORY[0x1E69E9820];
        v71 = 3221225472;
        v72 = __getCNContactMiddleNameKeySymbolLoc_block_invoke;
        v73 = &unk_1E6F4D960;
        v74 = &v75;
        v19 = ContactsLibrary();
        v20 = dlsym(v19, "CNContactMiddleNameKey");
        *(v74[1] + 24) = v20;
        getCNContactMiddleNameKeySymbolLoc_ptr = *(v74[1] + 24);
        v18 = v76[3];
      }

      _Block_object_dispose(&v75, 8);
      if (v18)
      {
        if ([contactCopy isKeyAvailable:*v18])
        {
          middleName = [contactCopy middleName];
          v22 = [middleName copy];
          middleName = v5->_middleName;
          v5->_middleName = v22;
        }

        v75 = 0;
        v76 = &v75;
        v77 = 0x2020000000;
        v24 = getCNContactPhoneticMiddleNameKeySymbolLoc_ptr;
        v78 = getCNContactPhoneticMiddleNameKeySymbolLoc_ptr;
        if (!getCNContactPhoneticMiddleNameKeySymbolLoc_ptr)
        {
          v70 = MEMORY[0x1E69E9820];
          v71 = 3221225472;
          v72 = __getCNContactPhoneticMiddleNameKeySymbolLoc_block_invoke;
          v73 = &unk_1E6F4D960;
          v74 = &v75;
          v25 = ContactsLibrary();
          v26 = dlsym(v25, "CNContactPhoneticMiddleNameKey");
          *(v74[1] + 24) = v26;
          getCNContactPhoneticMiddleNameKeySymbolLoc_ptr = *(v74[1] + 24);
          v24 = v76[3];
        }

        _Block_object_dispose(&v75, 8);
        if (v24)
        {
          if ([contactCopy isKeyAvailable:*v24])
          {
            phoneticMiddleName = [contactCopy phoneticMiddleName];
            v28 = [phoneticMiddleName copy];
            phoneticMiddleName = v5->_phoneticMiddleName;
            v5->_phoneticMiddleName = v28;
          }

          v75 = 0;
          v76 = &v75;
          v77 = 0x2020000000;
          v30 = getCNContactFamilyNameKeySymbolLoc_ptr;
          v78 = getCNContactFamilyNameKeySymbolLoc_ptr;
          if (!getCNContactFamilyNameKeySymbolLoc_ptr)
          {
            v70 = MEMORY[0x1E69E9820];
            v71 = 3221225472;
            v72 = __getCNContactFamilyNameKeySymbolLoc_block_invoke;
            v73 = &unk_1E6F4D960;
            v74 = &v75;
            v31 = ContactsLibrary();
            v32 = dlsym(v31, "CNContactFamilyNameKey");
            *(v74[1] + 24) = v32;
            getCNContactFamilyNameKeySymbolLoc_ptr = *(v74[1] + 24);
            v30 = v76[3];
          }

          _Block_object_dispose(&v75, 8);
          if (v30)
          {
            if ([contactCopy isKeyAvailable:*v30])
            {
              familyName = [contactCopy familyName];
              v34 = [familyName copy];
              familyName = v5->_familyName;
              v5->_familyName = v34;
            }

            v75 = 0;
            v76 = &v75;
            v77 = 0x2020000000;
            v36 = getCNContactPhoneticFamilyNameKeySymbolLoc_ptr;
            v78 = getCNContactPhoneticFamilyNameKeySymbolLoc_ptr;
            if (!getCNContactPhoneticFamilyNameKeySymbolLoc_ptr)
            {
              v70 = MEMORY[0x1E69E9820];
              v71 = 3221225472;
              v72 = __getCNContactPhoneticFamilyNameKeySymbolLoc_block_invoke;
              v73 = &unk_1E6F4D960;
              v74 = &v75;
              v37 = ContactsLibrary();
              v38 = dlsym(v37, "CNContactPhoneticFamilyNameKey");
              *(v74[1] + 24) = v38;
              getCNContactPhoneticFamilyNameKeySymbolLoc_ptr = *(v74[1] + 24);
              v36 = v76[3];
            }

            _Block_object_dispose(&v75, 8);
            if (v36)
            {
              if ([contactCopy isKeyAvailable:*v36])
              {
                phoneticFamilyName = [contactCopy phoneticFamilyName];
                v40 = [phoneticFamilyName copy];
                phoneticFamilyName = v5->_phoneticFamilyName;
                v5->_phoneticFamilyName = v40;
              }

              v75 = 0;
              v76 = &v75;
              v77 = 0x2020000000;
              v42 = getCNContactPreviousFamilyNameKeySymbolLoc_ptr;
              v78 = getCNContactPreviousFamilyNameKeySymbolLoc_ptr;
              if (!getCNContactPreviousFamilyNameKeySymbolLoc_ptr)
              {
                v70 = MEMORY[0x1E69E9820];
                v71 = 3221225472;
                v72 = __getCNContactPreviousFamilyNameKeySymbolLoc_block_invoke;
                v73 = &unk_1E6F4D960;
                v74 = &v75;
                v43 = ContactsLibrary();
                v44 = dlsym(v43, "CNContactPreviousFamilyNameKey");
                *(v74[1] + 24) = v44;
                getCNContactPreviousFamilyNameKeySymbolLoc_ptr = *(v74[1] + 24);
                v42 = v76[3];
              }

              _Block_object_dispose(&v75, 8);
              if (v42)
              {
                if ([contactCopy isKeyAvailable:*v42])
                {
                  previousFamilyName = [contactCopy previousFamilyName];
                  v46 = [previousFamilyName copy];
                  previousFamilyName = v5->_previousFamilyName;
                  v5->_previousFamilyName = v46;
                }

                v75 = 0;
                v76 = &v75;
                v77 = 0x2020000000;
                v48 = getCNContactOrganizationNameKeySymbolLoc_ptr;
                v78 = getCNContactOrganizationNameKeySymbolLoc_ptr;
                if (!getCNContactOrganizationNameKeySymbolLoc_ptr)
                {
                  v70 = MEMORY[0x1E69E9820];
                  v71 = 3221225472;
                  v72 = __getCNContactOrganizationNameKeySymbolLoc_block_invoke;
                  v73 = &unk_1E6F4D960;
                  v74 = &v75;
                  v49 = ContactsLibrary();
                  v50 = dlsym(v49, "CNContactOrganizationNameKey");
                  *(v74[1] + 24) = v50;
                  getCNContactOrganizationNameKeySymbolLoc_ptr = *(v74[1] + 24);
                  v48 = v76[3];
                }

                _Block_object_dispose(&v75, 8);
                if (v48)
                {
                  if ([contactCopy isKeyAvailable:*v48])
                  {
                    organizationName = [contactCopy organizationName];
                    v52 = [organizationName copy];
                    organizationName = v5->_organizationName;
                    v5->_organizationName = v52;
                  }

                  v75 = 0;
                  v76 = &v75;
                  v77 = 0x2020000000;
                  v54 = getCNContactPhoneticOrganizationNameKeySymbolLoc_ptr;
                  v78 = getCNContactPhoneticOrganizationNameKeySymbolLoc_ptr;
                  if (!getCNContactPhoneticOrganizationNameKeySymbolLoc_ptr)
                  {
                    v70 = MEMORY[0x1E69E9820];
                    v71 = 3221225472;
                    v72 = __getCNContactPhoneticOrganizationNameKeySymbolLoc_block_invoke;
                    v73 = &unk_1E6F4D960;
                    v74 = &v75;
                    v55 = ContactsLibrary();
                    v56 = dlsym(v55, "CNContactPhoneticOrganizationNameKey");
                    *(v74[1] + 24) = v56;
                    getCNContactPhoneticOrganizationNameKeySymbolLoc_ptr = *(v74[1] + 24);
                    v54 = v76[3];
                  }

                  _Block_object_dispose(&v75, 8);
                  if (v54)
                  {
                    if ([contactCopy isKeyAvailable:*v54])
                    {
                      phoneticOrganizationName = [contactCopy phoneticOrganizationName];
                      v58 = [phoneticOrganizationName copy];
                      phoneticOrganizationName = v5->_phoneticOrganizationName;
                      v5->_phoneticOrganizationName = v58;
                    }

                    v75 = 0;
                    v76 = &v75;
                    v77 = 0x2020000000;
                    v60 = getCNContactNicknameKeySymbolLoc_ptr;
                    v78 = getCNContactNicknameKeySymbolLoc_ptr;
                    if (!getCNContactNicknameKeySymbolLoc_ptr)
                    {
                      v70 = MEMORY[0x1E69E9820];
                      v71 = 3221225472;
                      v72 = __getCNContactNicknameKeySymbolLoc_block_invoke;
                      v73 = &unk_1E6F4D960;
                      v74 = &v75;
                      v61 = ContactsLibrary();
                      v62 = dlsym(v61, "CNContactNicknameKey");
                      *(v74[1] + 24) = v62;
                      getCNContactNicknameKeySymbolLoc_ptr = *(v74[1] + 24);
                      v60 = v76[3];
                    }

                    _Block_object_dispose(&v75, 8);
                    if (v60)
                    {
                      if ([contactCopy isKeyAvailable:*v60])
                      {
                        nickname = [contactCopy nickname];
                        v64 = [nickname copy];
                        nickname = v5->_nickname;
                        v5->_nickname = v64;
                      }

                      v66 = v5;
                      goto LABEL_53;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  dlerror();
  v68 = abort_report_np();
  return __getCNContactGivenNameKeySymbolLoc_block_invoke(v68);
}

@end