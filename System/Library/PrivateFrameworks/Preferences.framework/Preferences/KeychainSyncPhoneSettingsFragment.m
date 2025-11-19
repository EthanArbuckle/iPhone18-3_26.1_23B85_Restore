@interface KeychainSyncPhoneSettingsFragment
- (KeychainSyncPhoneSettingsFragment)initWithListController:(id)a3;
- (KeychainSyncPhoneSettingsFragmentDelegate)delegate;
- (NSArray)specifiers;
- (id)unformattedPhoneNumber;
- (void)dealloc;
- (void)reloadSpecifiers;
- (void)resignFirstResponder;
- (void)setDialingCountryInfo:(id)a3 forSpecifier:(id)a4;
- (void)setPhoneNumber:(id)a3 forSpecifier:(id)a4;
- (void)textFieldChanged:(id)a3;
@end

@implementation KeychainSyncPhoneSettingsFragment

- (KeychainSyncPhoneSettingsFragment)initWithListController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = KeychainSyncPhoneSettingsFragment;
  v5 = [(KeychainSyncPhoneSettingsFragment *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v5 selector:sel_textFieldChanged_ name:*MEMORY[0x1E69DE5C0] object:0];

    objc_storeWeak(&v5->_listController, v4);
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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

  v70 = self;
  v64 = [MEMORY[0x1E695DF58] currentLocale];
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
        phoneNumber = v70->_phoneNumber;
        v70->_phoneNumber = v13;

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
  v25 = [v64 localeIdentifier];
  v26 = [v24 componentsFromLocaleIdentifier:v25];
  v65 = [v26 objectForKey:*MEMORY[0x1E695D978]];

  v27 = v68;
  if (!v68)
  {
    v27 = v65;
  }

  v66 = v27;
  if ([(NSString *)v70->_phoneNumber length])
  {
    v28 = PSPNCreateFormattedStringWithCountry(v70->_phoneNumber, [v66 lowercaseString]);
    v29 = v70->_phoneNumber;
    v70->_phoneNumber = v28;
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
    v33 = [(KeychainSyncPhoneSettingsFragment *)v70 title];
    v67 = [PSSpecifier groupSpecifierWithName:v33];

    v34 = PS_LocalizedStringForKeychainSync(@"PHONE_NUMBER_DESCRIPTION");
    [v67 setProperty:v34 forKey:@"footerText"];

    [(NSArray *)v69 addObject:v67];
  }

  countryInfo = v70->_countryInfo;
  v70->_countryInfo = 0;

  v36 = PS_LocalizedStringForKeychainSync(@"COUNTRY");
  v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:v70 set:sel_setDialingCountryInfo_forSpecifier_ get:sel_dialingCountryInfoForSpecifier_ detail:objc_opt_class() cell:2 edit:0];
  countrySpecifier = v70->_countrySpecifier;
  v70->_countrySpecifier = v37;

  [(PSSpecifier *)v70->_countrySpecifier setProperty:objc_opt_class() forKey:?];
  if (!v70->_countryInfo)
  {
    v39 = [KeychainSyncCountryInfo countryInfoForCountryCode:v68 dialingPrefix:v62];
    v40 = v70->_countryInfo;
    v70->_countryInfo = v39;
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
        v47 = [v46 localizedCountryName];
        v48 = v47;
        if (v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = [v46 countryName];
        }

        v50 = v49;

        v51 = MEMORY[0x1E696AEC0];
        v52 = [v46 dialingPrefix];
        v53 = [v51 stringWithFormat:@"\u202A+%@\u202C (%@)", v52, v50];

        [v42 addObject:v53];
      }

      v43 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
    }

    while (v43);
  }

  [(PSSpecifier *)v70->_countrySpecifier setValues:obj titles:v42];
  [(NSArray *)v69 addObject:v70->_countrySpecifier];
  v54 = objc_alloc_init(PSPhoneNumberSpecifier);
  p_phoneNumberSpecifier = &v70->_phoneNumberSpecifier;
  phoneNumberSpecifier = v70->_phoneNumberSpecifier;
  v70->_phoneNumberSpecifier = v54;

  v57 = v70->_phoneNumberSpecifier;
  v58 = PS_LocalizedStringForKeychainSync(@"NUMBER");
  [(PSSpecifier *)v57 setName:v58];

  objc_storeWeak(&v70->_phoneNumberSpecifier->super.super.target, v70);
  (*p_phoneNumberSpecifier)->super.super.setter = sel_setPhoneNumber_forSpecifier_;
  (*p_phoneNumberSpecifier)->super.super.getter = sel_phoneNumberForSpecifier_;
  (*p_phoneNumberSpecifier)->super.super.detailControllerClass = 0;
  (*p_phoneNumberSpecifier)->super.super.cellType = 8;
  (*p_phoneNumberSpecifier)->super.super.editPaneClass = 0;
  [(PSPhoneNumberSpecifier *)v70->_phoneNumberSpecifier setCountryCode:v66];
  [(PSSpecifier *)v70->_phoneNumberSpecifier setKeyboardType:5 autoCaps:0 autoCorrection:1];
  [(PSPhoneNumberSpecifier *)v70->_phoneNumberSpecifier setProperty:objc_opt_class() forKey:@"cellClass"];
  [(NSArray *)v69 addObject:v70->_phoneNumberSpecifier];
  v59 = v70->_specifiers;
  v70->_specifiers = v69;

  specifiers = v70->_specifiers;
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
  v2 = [(KeychainSyncPhoneSettingsFragment *)self phoneNumberCell];
  [v2 resignFirstResponder];
}

- (void)setDialingCountryInfo:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  if (self->_countryInfo != v6)
  {
    v18 = v6;
    objc_storeStrong(&self->_countryInfo, a3);
    phoneNumberSpecifier = self->_phoneNumberSpecifier;
    v8 = [(KeychainSyncCountryInfo *)self->_countryInfo countryCode];
    [(PSPhoneNumberSpecifier *)phoneNumberSpecifier setCountryCode:v8];

    countryInfo = self->_countryInfo;
    v10 = self->_phoneNumber;
    v11 = [(KeychainSyncCountryInfo *)countryInfo countryCode];
    v12 = PSPNCreateFormattedStringWithCountry(v10, [v11 lowercaseString]);
    phoneNumber = self->_phoneNumber;
    self->_phoneNumber = v12;

    WeakRetained = objc_loadWeakRetained(&self->_listController);
    [WeakRetained reloadSpecifier:self->_phoneNumberSpecifier];

    v15 = [(KeychainSyncPhoneSettingsFragment *)self delegate];
    v16 = [(KeychainSyncPhoneSettingsFragment *)self unformattedPhoneNumber];
    v17 = [(KeychainSyncPhoneSettingsFragment *)self countryInfo];
    [v15 phoneSettingsFragment:self didChangePhoneNumber:v16 countryInfo:v17];

    v6 = v18;
  }
}

- (void)setPhoneNumber:(id)a3 forSpecifier:(id)a4
{
  if (self->_phoneNumber != a3)
  {
    [(KeychainSyncPhoneSettingsFragment *)self setPhoneNumber:?];
    v8 = [(KeychainSyncPhoneSettingsFragment *)self delegate];
    v6 = [(KeychainSyncPhoneSettingsFragment *)self unformattedPhoneNumber];
    v7 = [(KeychainSyncPhoneSettingsFragment *)self countryInfo];
    [v8 phoneSettingsFragment:self didChangePhoneNumber:v6 countryInfo:v7];
  }
}

- (id)unformattedPhoneNumber
{
  v2 = [(KeychainSyncPhoneSettingsFragment *)self phoneNumber];
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

  v5 = v3(v2);

  return v5;
}

- (void)textFieldChanged:(id)a3
{
  phoneNumberSpecifier = self->_phoneNumberSpecifier;
  v5 = a3;
  v6 = [(PSSpecifier *)phoneNumberSpecifier propertyForKey:@"cellObject"];
  v9 = [v6 editableTextField];

  v7 = [v5 object];

  if (v7 == v9)
  {
    v8 = [v9 text];
    [(KeychainSyncPhoneSettingsFragment *)self setPhoneNumber:v8 forSpecifier:self->_phoneNumberSpecifier];
  }
}

- (KeychainSyncPhoneSettingsFragmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end