@interface KeychainSyncPhoneSettingsFragment
- (KeychainSyncPhoneSettingsFragment)initWithListController:(id)controller;
- (KeychainSyncPhoneSettingsFragmentDelegate)delegate;
- (NSArray)specifiers;
- (id)unformattedPhoneNumber;
- (void)dealloc;
- (void)reloadSpecifiers;
- (void)resignFirstResponder;
- (void)setDialingCountryInfo:(id)info forSpecifier:(id)specifier;
- (void)setPhoneNumber:(id)number forSpecifier:(id)specifier;
- (void)textFieldChanged:(id)changed;
@end

@implementation KeychainSyncPhoneSettingsFragment

- (KeychainSyncPhoneSettingsFragment)initWithListController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = KeychainSyncPhoneSettingsFragment;
  v5 = [(KeychainSyncPhoneSettingsFragment *)&v8 init];
  if (v5)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_textFieldChanged_ name:*MEMORY[0x1E69DE5C0] object:0];

    objc_storeWeak(&v5->_listController, controllerCopy);
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = KeychainSyncPhoneSettingsFragment;
  [(KeychainSyncPhoneSettingsFragment *)&v4 dealloc];
}

- (NSArray)specifiers
{
  v87 = *MEMORY[0x1E69E9840];
  specifiers = self->_specifiers;
  if (specifiers)
  {
    goto LABEL_43;
  }

  selfCopy = self;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v76 = 0;
  v63 = PSSecureBackupAccountInfo(&v76, 0);
  v4 = v76;
  v61 = v4;
  if (!v4)
  {
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v5 = getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr;
    v85 = getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr;
    if (!getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr)
    {
      v77 = MEMORY[0x1E69E9820];
      v78 = 3221225472;
      v79 = __getkSecureBackupSMSTargetInfoKeySymbolLoc_block_invoke;
      v80 = &unk_1E71DBC78;
      v81 = &v82;
      v6 = CloudServicesLibrary();
      v7 = dlsym(v6, "kSecureBackupSMSTargetInfoKey");
      *(v81[1] + 24) = v7;
      getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr = *(v81[1] + 24);
      v5 = v83[3];
    }

    _Block_object_dispose(&v82, 8);
    if (v5)
    {
      v8 = [v63 objectForKey:*v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v82 = 0;
        v83 = &v82;
        v84 = 0x2020000000;
        v9 = getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr;
        v85 = getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr;
        if (!getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr)
        {
          v77 = MEMORY[0x1E69E9820];
          v78 = 3221225472;
          v79 = __getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_block_invoke;
          v80 = &unk_1E71DBC78;
          v81 = &v82;
          v10 = CloudServicesLibrary();
          v11 = dlsym(v10, "kSecureBackupSMSTargetPhoneNumberKey");
          *(v81[1] + 24) = v11;
          getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr = *(v81[1] + 24);
          v9 = v83[3];
        }

        _Block_object_dispose(&v82, 8);
        if (!v9)
        {
          goto LABEL_47;
        }

        v12 = *v9;
        v13 = [v8 objectForKey:v12];
        phoneNumber = selfCopy->_phoneNumber;
        selfCopy->_phoneNumber = v13;

        v82 = 0;
        v83 = &v82;
        v84 = 0x2020000000;
        v15 = getkSecureBackupCountryDialCodeKeySymbolLoc_ptr;
        v85 = getkSecureBackupCountryDialCodeKeySymbolLoc_ptr;
        if (!getkSecureBackupCountryDialCodeKeySymbolLoc_ptr)
        {
          v77 = MEMORY[0x1E69E9820];
          v78 = 3221225472;
          v79 = __getkSecureBackupCountryDialCodeKeySymbolLoc_block_invoke;
          v80 = &unk_1E71DBC78;
          v81 = &v82;
          v16 = CloudServicesLibrary();
          v17 = dlsym(v16, "kSecureBackupCountryDialCodeKey");
          *(v81[1] + 24) = v17;
          getkSecureBackupCountryDialCodeKeySymbolLoc_ptr = *(v81[1] + 24);
          v15 = v83[3];
        }

        _Block_object_dispose(&v82, 8);
        if (!v15)
        {
          goto LABEL_47;
        }

        v62 = [v8 objectForKey:*v15];
        v18 = getkSecureBackupCountryCodeKey();
        v68 = [v8 objectForKey:v18];

        if (v68)
        {
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        v62 = 0;
      }

      v82 = 0;
      v83 = &v82;
      v84 = 0x2020000000;
      v19 = getkSecureBackupMetadataKeySymbolLoc_ptr;
      v85 = getkSecureBackupMetadataKeySymbolLoc_ptr;
      if (!getkSecureBackupMetadataKeySymbolLoc_ptr)
      {
        v77 = MEMORY[0x1E69E9820];
        v78 = 3221225472;
        v79 = __getkSecureBackupMetadataKeySymbolLoc_block_invoke;
        v80 = &unk_1E71DBC78;
        v81 = &v82;
        v20 = CloudServicesLibrary();
        v21 = dlsym(v20, "kSecureBackupMetadataKey");
        *(v81[1] + 24) = v21;
        getkSecureBackupMetadataKeySymbolLoc_ptr = *(v81[1] + 24);
        v19 = v83[3];
      }

      _Block_object_dispose(&v82, 8);
      if (v19)
      {
        v22 = [v63 objectForKey:*v19];
        v23 = getkSecureBackupCountryCodeKey();
        v68 = [v22 objectForKey:v23];

        goto LABEL_21;
      }
    }

LABEL_47:
    [PSContactsAuthorizationLevelController dealloc];
    __break(1u);
  }

  NSLog(&cfstr_Getaccountinfo.isa, v4);
  v62 = 0;
  v68 = 0;
LABEL_22:
  v24 = MEMORY[0x1E695DF58];
  localeIdentifier = [currentLocale localeIdentifier];
  v26 = [v24 componentsFromLocaleIdentifier:localeIdentifier];
  v65 = [v26 objectForKey:*MEMORY[0x1E695D978]];

  v27 = v68;
  if (!v68)
  {
    v27 = v65;
  }

  v66 = v27;
  if ([(NSString *)selfCopy->_phoneNumber length])
  {
    v28 = PSPNCreateFormattedStringWithCountry(selfCopy->_phoneNumber, [v66 lowercaseString]);
    v29 = selfCopy->_phoneNumber;
    selfCopy->_phoneNumber = v28;
  }

  else
  {
    v30 = v65;
    v29 = v68;
    v68 = v30;
  }

  v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (PSIsRunningInAssistant() && ([MEMORY[0x1E69DC938] currentDevice], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "userInterfaceIdiom") == 0, v31, v32))
  {
    v67 = +[PSSpecifier emptyGroupSpecifier];
    [(NSArray *)v69 addObject:v67];
  }

  else
  {
    title = [(KeychainSyncPhoneSettingsFragment *)selfCopy title];
    v67 = [PSSpecifier groupSpecifierWithName:title];

    v34 = PS_LocalizedStringForKeychainSync(@"PHONE_NUMBER_DESCRIPTION");
    [v67 setProperty:v34 forKey:@"footerText"];

    [(NSArray *)v69 addObject:v67];
  }

  countryInfo = selfCopy->_countryInfo;
  selfCopy->_countryInfo = 0;

  v36 = PS_LocalizedStringForKeychainSync(@"COUNTRY");
  v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:selfCopy set:sel_setDialingCountryInfo_forSpecifier_ get:sel_dialingCountryInfoForSpecifier_ detail:objc_opt_class() cell:2 edit:0];
  countrySpecifier = selfCopy->_countrySpecifier;
  selfCopy->_countrySpecifier = v37;

  [(PSSpecifier *)selfCopy->_countrySpecifier setProperty:objc_opt_class() forKey:?];
  if (!selfCopy->_countryInfo)
  {
    v39 = [KeychainSyncCountryInfo countryInfoForCountryCode:v68 dialingPrefix:v62];
    v40 = selfCopy->_countryInfo;
    selfCopy->_countryInfo = v39;
  }

  v41 = +[KeychainSyncCountryInfo allCountries];
  v42 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v41, "count")}];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v41;
  v43 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
  if (v43)
  {
    v44 = *v73;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v73 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v72 + 1) + 8 * i);
        localizedCountryName = [v46 localizedCountryName];
        v48 = localizedCountryName;
        if (localizedCountryName)
        {
          countryName = localizedCountryName;
        }

        else
        {
          countryName = [v46 countryName];
        }

        v50 = countryName;

        v51 = MEMORY[0x1E696AEC0];
        dialingPrefix = [v46 dialingPrefix];
        v53 = [v51 stringWithFormat:@"\u202A+%@\u202C (%@)", dialingPrefix, v50];

        [v42 addObject:v53];
      }

      v43 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
    }

    while (v43);
  }

  [(PSSpecifier *)selfCopy->_countrySpecifier setValues:obj titles:v42];
  [(NSArray *)v69 addObject:selfCopy->_countrySpecifier];
  v54 = objc_alloc_init(PSPhoneNumberSpecifier);
  p_phoneNumberSpecifier = &selfCopy->_phoneNumberSpecifier;
  phoneNumberSpecifier = selfCopy->_phoneNumberSpecifier;
  selfCopy->_phoneNumberSpecifier = v54;

  v57 = selfCopy->_phoneNumberSpecifier;
  v58 = PS_LocalizedStringForKeychainSync(@"NUMBER");
  [(PSSpecifier *)v57 setName:v58];

  objc_storeWeak(&selfCopy->_phoneNumberSpecifier->super.super.target, selfCopy);
  (*p_phoneNumberSpecifier)->super.super.setter = sel_setPhoneNumber_forSpecifier_;
  (*p_phoneNumberSpecifier)->super.super.getter = sel_phoneNumberForSpecifier_;
  (*p_phoneNumberSpecifier)->super.super.detailControllerClass = 0;
  (*p_phoneNumberSpecifier)->super.super.cellType = 8;
  (*p_phoneNumberSpecifier)->super.super.editPaneClass = 0;
  [(PSPhoneNumberSpecifier *)selfCopy->_phoneNumberSpecifier setCountryCode:v66];
  [(PSSpecifier *)selfCopy->_phoneNumberSpecifier setKeyboardType:5 autoCaps:0 autoCorrection:1];
  [(PSPhoneNumberSpecifier *)selfCopy->_phoneNumberSpecifier setProperty:objc_opt_class() forKey:@"cellClass"];
  [(NSArray *)v69 addObject:selfCopy->_phoneNumberSpecifier];
  v59 = selfCopy->_specifiers;
  selfCopy->_specifiers = v69;

  specifiers = selfCopy->_specifiers;
LABEL_43:

  return specifiers;
}

- (void)reloadSpecifiers
{
  specifiers = self->_specifiers;
  self->_specifiers = 0;
}

- (void)resignFirstResponder
{
  phoneNumberCell = [(KeychainSyncPhoneSettingsFragment *)self phoneNumberCell];
  [phoneNumberCell resignFirstResponder];
}

- (void)setDialingCountryInfo:(id)info forSpecifier:(id)specifier
{
  infoCopy = info;
  if (self->_countryInfo != infoCopy)
  {
    v18 = infoCopy;
    objc_storeStrong(&self->_countryInfo, info);
    phoneNumberSpecifier = self->_phoneNumberSpecifier;
    countryCode = [(KeychainSyncCountryInfo *)self->_countryInfo countryCode];
    [(PSPhoneNumberSpecifier *)phoneNumberSpecifier setCountryCode:countryCode];

    countryInfo = self->_countryInfo;
    v10 = self->_phoneNumber;
    countryCode2 = [(KeychainSyncCountryInfo *)countryInfo countryCode];
    v12 = PSPNCreateFormattedStringWithCountry(v10, [countryCode2 lowercaseString]);
    phoneNumber = self->_phoneNumber;
    self->_phoneNumber = v12;

    WeakRetained = objc_loadWeakRetained(&self->_listController);
    [WeakRetained reloadSpecifier:self->_phoneNumberSpecifier];

    delegate = [(KeychainSyncPhoneSettingsFragment *)self delegate];
    unformattedPhoneNumber = [(KeychainSyncPhoneSettingsFragment *)self unformattedPhoneNumber];
    countryInfo = [(KeychainSyncPhoneSettingsFragment *)self countryInfo];
    [delegate phoneSettingsFragment:self didChangePhoneNumber:unformattedPhoneNumber countryInfo:countryInfo];

    infoCopy = v18;
  }
}

- (void)setPhoneNumber:(id)number forSpecifier:(id)specifier
{
  if (self->_phoneNumber != number)
  {
    [(KeychainSyncPhoneSettingsFragment *)self setPhoneNumber:?];
    delegate = [(KeychainSyncPhoneSettingsFragment *)self delegate];
    unformattedPhoneNumber = [(KeychainSyncPhoneSettingsFragment *)self unformattedPhoneNumber];
    countryInfo = [(KeychainSyncPhoneSettingsFragment *)self countryInfo];
    [delegate phoneSettingsFragment:self didChangePhoneNumber:unformattedPhoneNumber countryInfo:countryInfo];
  }
}

- (id)unformattedPhoneNumber
{
  phoneNumber = [(KeychainSyncPhoneSettingsFragment *)self phoneNumber];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr;
  v11 = get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr;
  if (!get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr)
  {
    v4 = PhoneNumbersLibrary();
    v9[3] = dlsym(v4, "_PNCreateStringByStrippingFormattingAndNotVisiblyAllowable");
    get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    v7 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v5 = v3(phoneNumber);

  return v5;
}

- (void)textFieldChanged:(id)changed
{
  phoneNumberSpecifier = self->_phoneNumberSpecifier;
  changedCopy = changed;
  v6 = [(PSSpecifier *)phoneNumberSpecifier propertyForKey:@"cellObject"];
  editableTextField = [v6 editableTextField];

  object = [changedCopy object];

  if (object == editableTextField)
  {
    text = [editableTextField text];
    [(KeychainSyncPhoneSettingsFragment *)self setPhoneNumber:text forSpecifier:self->_phoneNumberSpecifier];
  }
}

- (KeychainSyncPhoneSettingsFragmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end