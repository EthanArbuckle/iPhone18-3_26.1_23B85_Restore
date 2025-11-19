@interface PSGAccessoryDetailsController
- (PSGAccessoryDetailsController)init;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_accessoryDidUpdate:(id)a3;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)findAppForAccessory;
@end

@implementation PSGAccessoryDetailsController

- (PSGAccessoryDetailsController)init
{
  v5.receiver = self;
  v5.super_class = PSGAccessoryDetailsController;
  v2 = [(PSGAccessoryDetailsController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5E88] object:0];
    [v3 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EA0] object:0];
    [v3 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5E90] object:0];
    [v3 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EB0] object:0];
    [v3 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EC8] object:0];
    [v3 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EB8] object:0];
    [v3 addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EC0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  accessory = self->_accessory;
  if (accessory)
  {
    [(EAAccessory *)accessory setDelegate:0];
    v5 = self->_accessory;
    self->_accessory = 0;
  }

  v6.receiver = self;
  v6.super_class = PSGAccessoryDetailsController;
  [(PSGAccessoryDetailsController *)&v6 dealloc];
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PSGAccessoryDetailsController *)self specifier];
  v5 = [v4 userInfo];

  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    objc_storeStrong(&self->_accessory, v5);
    [(EAAccessory *)self->_accessory setDelegate:self];
    v6 = [(EAAccessory *)self->_accessory bonjourName];
    if (v6)
    {
      v7 = v6;
      v8 = [(EAAccessory *)self->_accessory isAvailableOverBonjour];

      if (v8)
      {
        v9 = [(EAAccessory *)self->_accessory hasIPConnection];
        v10 = MEMORY[0x277D3FAD8];
        v11 = PSG_BundleForGeneralSettingsUIFramework();
        v12 = v11;
        if (v9)
        {
          v13 = @"DISCONNECT";
        }

        else
        {
          v13 = @"CONNECT";
        }

        if (v9)
        {
          v14 = &selRef_disconnect;
        }

        else
        {
          v14 = &selRef_connect;
        }

        v15 = [v11 localizedStringForKey:v13 value:&stru_282E88A90 table:0];
        v16 = [v10 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:13 edit:0];

        [v16 setButtonAction:*v14];
        [v16 setIdentifier:@"CONNECT_BUTTON"];
        [v3 addObject:v16];
      }
    }

    if ([(EAAccessory *)self->_accessory isConnected])
    {
      v17 = [(EAAccessory *)self->_accessory manufacturer];
      v18 = [v17 length];

      v19 = MEMORY[0x277D3FED8];
      if (v18)
      {
        v20 = MEMORY[0x277D3FAD8];
        v21 = PSG_BundleForGeneralSettingsUIFramework();
        v22 = [v21 localizedStringForKey:@"MANUFACTURER" value:&stru_282E88A90 table:0];
        v23 = [v20 preferenceSpecifierNamed:v22 target:self set:0 get:sel_manufacturer detail:0 cell:4 edit:0];

        [v23 setIdentifier:@"MANUFACTURER"];
        [v23 setProperty:MEMORY[0x277CBEC38] forKey:*v19];
        [v3 addObject:v23];
      }

      v24 = [(EAAccessory *)self->_accessory modelNumber];
      v25 = [v24 length];

      if (v25)
      {
        v26 = MEMORY[0x277D3FAD8];
        v27 = PSG_BundleForGeneralSettingsUIFramework();
        v28 = [v27 localizedStringForKey:@"MODELNUMBER" value:&stru_282E88A90 table:0];
        v29 = [v26 preferenceSpecifierNamed:v28 target:self set:0 get:sel_modelNumber detail:0 cell:4 edit:0];

        [v29 setIdentifier:@"MODELNUMBER"];
        [v29 setProperty:MEMORY[0x277CBEC38] forKey:*v19];
        [v3 addObject:v29];
      }

      v30 = [(EAAccessory *)self->_accessory serialNumber];
      v31 = [v30 length];

      if (v31)
      {
        v32 = MEMORY[0x277D3FAD8];
        v33 = PSG_BundleForGeneralSettingsUIFramework();
        v34 = [v33 localizedStringForKey:@"SERIALNUMBER" value:&stru_282E88A90 table:0];
        v35 = [v32 preferenceSpecifierNamed:v34 target:self set:0 get:sel_serialNumber detail:0 cell:4 edit:0];

        [v35 setIdentifier:@"SERIALNUMBER"];
        [v35 setProperty:MEMORY[0x277CBEC38] forKey:*v19];
        [v3 addObject:v35];
      }

      v36 = [(EAAccessory *)self->_accessory firmwareRevision];
      v37 = [v36 length];

      if (v37)
      {
        v38 = MEMORY[0x277D3FAD8];
        v39 = PSG_BundleForGeneralSettingsUIFramework();
        v40 = [v39 localizedStringForKey:@"FIRMWAREREVISION" value:&stru_282E88A90 table:0];
        v41 = [v38 preferenceSpecifierNamed:v40 target:self set:0 get:sel_firmwareRevision detail:0 cell:4 edit:0];

        [v41 setIdentifier:@"FIRMWAREREVISION"];
        [v41 setProperty:MEMORY[0x277CBEC38] forKey:*v19];
        [v3 addObject:v41];
      }

      v42 = [(EAAccessory *)self->_accessory hardwareRevision];
      v43 = [v42 length];

      if (v43)
      {
        v44 = MEMORY[0x277D3FAD8];
        v45 = PSG_BundleForGeneralSettingsUIFramework();
        v46 = [v45 localizedStringForKey:@"HARDWAREREVISION" value:&stru_282E88A90 table:0];
        v47 = [v44 preferenceSpecifierNamed:v46 target:self set:0 get:sel_hardwareRevision detail:0 cell:4 edit:0];

        [v47 setIdentifier:@"HARDWAREREVISION"];
        [v47 setProperty:MEMORY[0x277CBEC38] forKey:*v19];
        [v3 addObject:v47];
      }

      if ([(EAAccessory *)self->_accessory supportsPublicIap])
      {
        v48 = MEMORY[0x277D3FAD8];
        v49 = PSG_BundleForGeneralSettingsUIFramework();
        v50 = [v49 localizedStringForKey:@"FIND_APP_FOR_ACCESSORY" value:&stru_282E88A90 table:0];
        v51 = [v48 preferenceSpecifierNamed:v50 target:self set:0 get:0 detail:0 cell:13 edit:0];

        [v51 setButtonAction:sel_findAppForAccessory];
        [v51 setIdentifier:@"FIND_APP_FOR_ACCESSORY"];
        [v3 addObject:v51];
      }
    }
  }

  v52 = *MEMORY[0x277D3FC48];
  v53 = *(&self->super.super.super.super.super.isa + v52);
  *(&self->super.super.super.super.super.isa + v52) = v3;
  v54 = v3;

  v55 = *(&self->super.super.super.super.super.isa + v52);
  v56 = v55;

  return v55;
}

- (void)connect
{
  v4 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  v3 = [(EAAccessory *)self->_accessory bonjourName];
  [v4 initiateConnectionToIPAccessory:v3];
}

- (void)disconnect
{
  v4 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  v3 = [(EAAccessory *)self->_accessory bonjourName];
  [v4 disconnectIPAccessory:v3];
}

- (void)findAppForAccessory
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:@"action" value:@"accessory-lookup"];
  v5 = v3;
  [v3 addObject:v4];

  v42 = self;
  [(EAAccessory *)self->_accessory allPublicProtocolStrings];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v49 = 0u;
  v6 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    v9 = 1;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v46 + 1) + 8 * v10);
        v13 = MEMORY[0x277CCAD18];
        v9 = (v11 + 1);
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"id%d", v11];
        v15 = [v13 queryItemWithName:v14 value:v12];
        [v5 addObject:v15];

        ++v10;
        v11 = v9;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v7);
  }

  v16 = MEMORY[0x277CCAD18];
  v17 = [(EAAccessory *)v42->_accessory preferredApp];
  v18 = [v16 queryItemWithName:@"bid" value:v17];
  [v5 addObject:v18];

  v19 = MEMORY[0x277CCAD18];
  v20 = [(EAAccessory *)v42->_accessory name];
  v21 = [v19 queryItemWithName:@"accessoryName" value:v20];
  [v5 addObject:v21];

  v22 = MEMORY[0x277CCAD18];
  v23 = [(EAAccessory *)v42->_accessory manufacturer];
  v24 = [v22 queryItemWithName:@"manufacturer" value:v23];
  [v5 addObject:v24];

  v25 = MEMORY[0x277CCAD18];
  v26 = [(EAAccessory *)v42->_accessory modelNumber];
  v27 = [v25 queryItemWithName:@"modelNumber" value:v26];
  [v5 addObject:v27];

  v28 = MEMORY[0x277CCAD18];
  v29 = [(EAAccessory *)v42->_accessory firmwareRevision];
  v30 = [v28 queryItemWithName:@"firmwareVersion" value:v29];
  [v5 addObject:v30];

  v31 = MEMORY[0x277CCAD18];
  v32 = [(EAAccessory *)v42->_accessory hardwareRevision];
  v33 = [v31 queryItemWithName:@"hardwareVersion" value:v32];
  [v5 addObject:v33];

  v34 = MEMORY[0x277CCAD18];
  v35 = [(EAAccessory *)v42->_accessory serialNumber];
  v36 = [v34 queryItemWithName:@"serialNumber" value:v35];
  [v5 addObject:v36];

  v37 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:@"itms-apps://?"];
  [v37 setQueryItems:v5];
  v38 = [MEMORY[0x277D75128] sharedApplication];
  v39 = [v37 URL];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __52__PSGAccessoryDetailsController_findAppForAccessory__block_invoke;
  v44[3] = &unk_278325070;
  v45 = v37;
  v40 = v37;
  [v38 openURL:v39 options:MEMORY[0x277CBEC10] completionHandler:v44];

  v41 = *MEMORY[0x277D85DE8];
}

void __52__PSGAccessoryDetailsController_findAppForAccessory__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) URL];
    NSLog(&cfstr_CouldNotOpenUr.isa, v3);
  }
}

- (void)_accessoryDidUpdate:(id)a3
{
  v98 = a3;
  v4 = [v98 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CC5E98]];

  [v5 setDelegate:self];
  if (!v5)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v6 = [v5 bonjourName];

  if (v6)
  {
    v7 = [v5 bonjourName];
  }

  else
  {
    v8 = [v5 name];

    if (!v8)
    {
      goto LABEL_8;
    }

    v7 = [v5 name];
  }

  v8 = v7;
LABEL_8:
  v9 = [(EAAccessory *)self->_accessory name];
  if ([v8 isEqualToString:v9])
  {
  }

  else
  {
    v10 = [(EAAccessory *)self->_accessory bonjourName];
    v11 = [v8 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_95;
    }
  }

  v94 = v8;
  v12 = [(PSGAccessoryDetailsController *)self specifierForID:@"CONNECT_BUTTON"];
  v97 = [(PSGAccessoryDetailsController *)self specifierForID:@"MANUFACTURER"];
  v13 = [(PSGAccessoryDetailsController *)self specifierForID:@"MODELNUMBER"];
  v14 = [(PSGAccessoryDetailsController *)self specifierForID:@"SERIALNUMBER"];
  v15 = [(PSGAccessoryDetailsController *)self specifierForID:@"FIRMWAREREVISION"];
  v16 = [(PSGAccessoryDetailsController *)self specifierForID:@"HARDWAREREVISION"];
  v17 = [(PSGAccessoryDetailsController *)self specifierForID:@"FIND_APP_FOR_ACCESSORY"];
  [(PSGAccessoryDetailsController *)self beginUpdates];
  v18 = [v98 name];
  v95 = v15;
  v96 = v14;
  if ([v18 isEqualToString:*MEMORY[0x277CC5E88]])
  {
    v19 = [v5 isConnected];

    if (v19)
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = v97;
      if (v97)
      {
        [v20 addObject:v97];
      }

      if (v13)
      {
        [v20 addObject:v13];
      }

      if (v14)
      {
        [v20 addObject:v14];
      }

      if (v15)
      {
        [v20 addObject:v15];
      }

      if (v16)
      {
        [v20 addObject:v16];
      }

      if (v17)
      {
        [v20 addObject:v17];
      }

      v92 = v13;
      if ([v20 count])
      {
        [(PSGAccessoryDetailsController *)self removeContiguousSpecifiers:v20 animated:1];
      }

      v90 = v20;
      v22 = [v5 manufacturer];
      v23 = [v22 length];

      v24 = MEMORY[0x277D3FED8];
      if (v23)
      {
        v25 = MEMORY[0x277D3FAD8];
        v26 = PSG_BundleForGeneralSettingsUIFramework();
        v27 = [v26 localizedStringForKey:@"MANUFACTURER" value:&stru_282E88A90 table:0];
        v28 = [v25 preferenceSpecifierNamed:v27 target:self set:0 get:sel_manufacturer detail:0 cell:4 edit:0];

        v24 = MEMORY[0x277D3FED8];
        [v28 setIdentifier:@"MANUFACTURER"];
        [v28 setProperty:MEMORY[0x277CBEC38] forKey:*v24];
        [v91 addObject:v28];
        v21 = v28;
      }

      v29 = v12;
      v97 = v21;
      v30 = [v5 modelNumber];
      v31 = [v30 length];

      if (v31)
      {
        v32 = MEMORY[0x277D3FAD8];
        v33 = PSG_BundleForGeneralSettingsUIFramework();
        v34 = [v33 localizedStringForKey:@"MODELNUMBER" value:&stru_282E88A90 table:0];
        v35 = [v32 preferenceSpecifierNamed:v34 target:self set:0 get:sel_modelNumber detail:0 cell:4 edit:0];

        v24 = MEMORY[0x277D3FED8];
        [v35 setIdentifier:@"MODELNUMBER"];
        [v35 setProperty:MEMORY[0x277CBEC38] forKey:*v24];
        v36 = v91;
        [v91 addObject:v35];
        v92 = v35;
      }

      else
      {
        v36 = v91;
      }

      v43 = [v5 serialNumber];
      v44 = [v43 length];

      if (v44)
      {
        v45 = MEMORY[0x277D3FAD8];
        v46 = PSG_BundleForGeneralSettingsUIFramework();
        v47 = [v46 localizedStringForKey:@"SERIALNUMBER" value:&stru_282E88A90 table:0];
        v48 = [v45 preferenceSpecifierNamed:v47 target:self set:0 get:sel_serialNumber detail:0 cell:4 edit:0];

        v24 = MEMORY[0x277D3FED8];
        [v48 setIdentifier:@"SERIALNUMBER"];
        [v48 setProperty:MEMORY[0x277CBEC38] forKey:*v24];
        [v36 addObject:v48];
      }

      else
      {
        v48 = v96;
      }

      v96 = v48;
      v49 = [v5 firmwareRevision];
      v50 = [v49 length];

      if (v50)
      {
        v51 = MEMORY[0x277D3FAD8];
        v52 = PSG_BundleForGeneralSettingsUIFramework();
        v53 = [v52 localizedStringForKey:@"FIRMWAREREVISION" value:&stru_282E88A90 table:0];
        v54 = [v51 preferenceSpecifierNamed:v53 target:self set:0 get:sel_firmwareRevision detail:0 cell:4 edit:0];

        v24 = MEMORY[0x277D3FED8];
        [v54 setIdentifier:@"FIRMWAREREVISION"];
        [v54 setProperty:MEMORY[0x277CBEC38] forKey:*v24];
        [v36 addObject:v54];
        v95 = v54;
      }

      v55 = [v5 hardwareRevision];
      v56 = [v55 length];

      if (v56)
      {
        v57 = MEMORY[0x277D3FAD8];
        v58 = PSG_BundleForGeneralSettingsUIFramework();
        v59 = [v58 localizedStringForKey:@"HARDWAREREVISION" value:&stru_282E88A90 table:0];
        v60 = [v57 preferenceSpecifierNamed:v59 target:self set:0 get:sel_hardwareRevision detail:0 cell:4 edit:0];

        [v60 setIdentifier:@"HARDWAREREVISION"];
        [v60 setProperty:MEMORY[0x277CBEC38] forKey:*v24];
        [v36 addObject:v60];
        v16 = v60;
      }

      if ([v5 supportsPublicIap])
      {
        v61 = MEMORY[0x277D3FAD8];
        v62 = PSG_BundleForGeneralSettingsUIFramework();
        v63 = [v62 localizedStringForKey:@"FIND_APP_FOR_ACCESSORY" value:&stru_282E88A90 table:0];
        v64 = [v61 preferenceSpecifierNamed:v63 target:self set:0 get:0 detail:0 cell:13 edit:0];

        [v64 setButtonAction:sel_findAppForAccessory];
        [v64 setIdentifier:@"FIND_APP_FOR_ACCESSORY"];
        [v36 addObject:v64];
        v17 = v64;
      }

      v13 = v92;
      if ([v36 count])
      {
        [(PSGAccessoryDetailsController *)self addSpecifiersFromArray:v36 animated:1];
      }

LABEL_64:
      v42 = 0;
      goto LABEL_65;
    }
  }

  else
  {
  }

  v37 = [v98 name];
  if ([v37 isEqualToString:*MEMORY[0x277CC5E90]])
  {
    v38 = [v5 isConnected];

    v29 = v12;
    if ((v38 & 1) == 0)
    {
      v39 = [v5 bonjourName];

      if (v39)
      {
        v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v41 = v40;
        if (v97)
        {
          [v40 addObject:?];
        }

        if (v13)
        {
          [v41 addObject:v13];
        }

        if (v14)
        {
          [v41 addObject:v14];
        }

        if (v95)
        {
          [v41 addObject:v95];
        }

        if (v16)
        {
          [v41 addObject:v16];
        }

        if (v17)
        {
          [v41 addObject:v17];
        }

        if ([v41 count])
        {
          [(PSGAccessoryDetailsController *)self removeContiguousSpecifiers:v41 animated:1];
        }
      }

      else
      {
        v42 = 1;
        if (self->_finishedAppearing)
        {
          goto LABEL_65;
        }

        self->_shouldEscape = 1;
      }
    }

    goto LABEL_64;
  }

  v42 = 0;
  v29 = v12;
LABEL_65:
  v65 = [v5 bonjourName];
  if (!v65 || (v66 = v65, v67 = [v5 isAvailableOverBonjour], v66, !v67))
  {
    v73 = [v5 bonjourName];

    if (!v73)
    {
      goto LABEL_78;
    }

    if (self->_finishedAppearing)
    {
      [(PSGAccessoryDetailsController *)self endUpdates];
      goto LABEL_92;
    }

    self->_shouldEscape = 1;
LABEL_81:
    [(PSGAccessoryDetailsController *)self endUpdates];
    if (v42)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  v68 = [v98 name];
  if ([v68 isEqualToString:*MEMORY[0x277CC5EB8]])
  {
    v69 = [v5 hasIPConnection];

    if (v69)
    {
      v70 = v17;
      v71 = v16;
      v93 = v13;
      if (v29)
      {
        v72 = [(PSGAccessoryDetailsController *)self indexOfSpecifier:v29];
        [(PSGAccessoryDetailsController *)self removeSpecifier:v29 animated:1];
      }

      else
      {
        v72 = 1;
      }

      v76 = v29;
      v77 = MEMORY[0x277D3FAD8];
      v78 = PSG_BundleForGeneralSettingsUIFramework();
      v79 = [v78 localizedStringForKey:@"DISCONNECT" value:&stru_282E88A90 table:0];
      v80 = [v77 preferenceSpecifierNamed:v79 target:self set:0 get:0 detail:0 cell:13 edit:0];

      v81 = sel_disconnect;
      goto LABEL_91;
    }
  }

  else
  {
  }

  v74 = [v98 name];
  if (![v74 isEqualToString:*MEMORY[0x277CC5EC0]])
  {

    goto LABEL_81;
  }

  v75 = [v5 hasIPConnection];

  if (v75)
  {
LABEL_78:
    [(PSGAccessoryDetailsController *)self endUpdates];
    if (v42)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  v70 = v17;
  v71 = v16;
  v93 = v13;
  if (v29)
  {
    v72 = [(PSGAccessoryDetailsController *)self indexOfSpecifier:v29];
    [(PSGAccessoryDetailsController *)self removeSpecifier:v29 animated:1];
  }

  else
  {
    v72 = 1;
  }

  v82 = v29;
  v83 = MEMORY[0x277D3FAD8];
  v84 = PSG_BundleForGeneralSettingsUIFramework();
  v85 = [v84 localizedStringForKey:@"CONNECT" value:&stru_282E88A90 table:0];
  v80 = [v83 preferenceSpecifierNamed:v85 target:self set:0 get:0 detail:0 cell:13 edit:0];

  v81 = sel_connect;
LABEL_91:
  [v80 setButtonAction:v81];
  [v80 setIdentifier:@"CONNECT_BUTTON"];
  [(PSGAccessoryDetailsController *)self insertSpecifier:v80 atIndex:v72 animated:1];
  [(PSGAccessoryDetailsController *)self endUpdates];
  v29 = v80;
  v13 = v93;
  v16 = v71;
  v17 = v70;
  if (v42)
  {
LABEL_92:
    v86 = [(PSGAccessoryDetailsController *)self navigationController];
    v87 = [v86 topViewController];

    if (v87 == self)
    {
      v88 = [(PSGAccessoryDetailsController *)self navigationController];
      v89 = [v88 popViewControllerAnimated:1];
    }
  }

LABEL_94:
  objc_storeStrong(&self->_accessory, v5);

  v8 = v94;
LABEL_95:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = PSGAccessoryDetailsController;
  v6 = a4;
  v7 = [(PSGAccessoryDetailsController *)&v13 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(PSGAccessoryDetailsController *)self indexForIndexPath:v6, v13.receiver, v13.super_class];

  v9 = [(PSGAccessoryDetailsController *)self specifierAtIndex:v8];
  v10 = [v9 identifier];
  LODWORD(v6) = [v10 isEqualToString:@"SERIALNUMBER"];

  if (v6)
  {
    v11 = [v7 detailTextLabel];
    [v11 setAdjustsFontSizeToFitWidth:1];
  }

  return v7;
}

@end