@interface PHBusinessCallingListController
- (PHBusinessCallingListController)init;
- (id)groupFooterTextFor:(id)for;
- (id)specifiers;
- (void)activeSubscriptionsDidChange;
- (void)willEnterForeground;
@end

@implementation PHBusinessCallingListController

- (PHBusinessCallingListController)init
{
  v16.receiver = self;
  v16.super_class = PHBusinessCallingListController;
  v2 = [(PHBusinessCallingListController *)&v16 init];
  v3 = v2;
  if (v2)
  {
    specifier = [(PHBusinessCallingListController *)v2 specifier];

    if (specifier)
    {
      specifier2 = [(PHBusinessCallingListController *)v3 specifier];
      v6 = [specifier2 propertyForKey:@"PHBrandedCallingControllerKey"];
      brandedCallingController = v3->_brandedCallingController;
      v3->_brandedCallingController = v6;

      [(PHBrandedCallingController *)v3->_brandedCallingController setParentListController:v3];
    }

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("PHBrandedCallingListControllerQueue", v8);
    v10 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v9];
    ctClient = v3->_ctClient;
    v3->_ctClient = v10;

    [(CoreTelephonyClient *)v3->_ctClient setDelegate:v3];
    v12 = objc_alloc_init(PHBusinessConnectCallingController);
    businessConnectCallingController = v3->_businessConnectCallingController;
    v3->_businessConnectCallingController = v12;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v3;
}

- (void)willEnterForeground
{
  [(PHBrandedCallingController *)self->_brandedCallingController updateBrandedCallingState];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PHBusinessCallingListController_willEnterForeground__block_invoke;
  block[3] = &unk_2782E3960;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)specifiers
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    specifier = [(PHBusinessCallingListController *)self specifier];

    if (!specifier)
    {
      goto LABEL_14;
    }

    if (self->_brandedCallingController)
    {
      goto LABEL_6;
    }

    specifier2 = [(PHBusinessCallingListController *)self specifier];
    v9 = [specifier2 propertyForKey:@"PHBrandedCallingControllerKey"];
    brandedCallingController = self->_brandedCallingController;
    self->_brandedCallingController = v9;

    [(PHBrandedCallingController *)self->_brandedCallingController setParentListController:self];
    if (self->_brandedCallingController)
    {
LABEL_6:
      v31 = v2;
      specifiers = [(PHBusinessConnectCallingController *)self->_businessConnectCallingController specifiers];
      [v6 addObjectsFromArray:specifiers];

      activeContextsSupportingBrandedCalling = [(PHBrandedCallingController *)self->_brandedCallingController activeContextsSupportingBrandedCalling];
      v13 = MEMORY[0x277D3FAD8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"BRANDED_CALLING_GROUP_HEADER" value:&stru_282D54710 table:@"CallDirectorySettings"];
      v16 = [v13 groupSpecifierWithID:@"BrandedCallingGroup" name:v15];

      v17 = [(PHBusinessCallingListController *)self groupFooterTextFor:activeContextsSupportingBrandedCalling];
      [v16 setProperty:v17 forKey:*MEMORY[0x277D3FF88]];

      [v6 addObject:v16];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = activeContextsSupportingBrandedCalling;
      v18 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v34;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            v22 = v6;
            if (*v34 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v33 + 1) + 8 * i);
            v24 = [PHBrandedCallingSwitchSpecifier alloc];
            ctClient = self->_ctClient;
            context = [v23 context];
            carrierName = [v23 carrierName];
            v28 = [(PHBrandedCallingSwitchSpecifier *)v24 initWithCoreTelephonyClient:ctClient context:context carrierName:carrierName];
            v6 = v22;
            [v22 addObject:v28];
          }

          v19 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v19);
      }

      objc_storeStrong((&self->super.super.super.super.super.isa + v31), v6);
      v4 = *(&self->super.super.super.super.super.isa + v31);
    }

    else
    {
LABEL_14:
      v4 = *(&self->super.super.super.super.super.isa + v2);
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)activeSubscriptionsDidChange
{
  [(PHBrandedCallingController *)self->_brandedCallingController updateBrandedCallingState];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PHBusinessCallingListController_activeSubscriptionsDidChange__block_invoke;
  block[3] = &unk_2782E3960;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)groupFooterTextFor:(id)for
{
  forCopy = for;
  if ([forCopy count] == 1)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"BRANDED_CALLING_SINGLE_CARRIER_FOOTER_TEXT" value:&stru_282D54710 table:@"CallDirectorySettings"];
    v7 = [forCopy objectAtIndexedSubscript:0];
    carrierName = [v7 carrierName];
    v9 = [v4 stringWithFormat:v6, carrierName];
LABEL_5:

    goto LABEL_7;
  }

  if ([forCopy count] == 2)
  {
    v10 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"BRANDED_CALLING_TWO_CARRIER_FOOTER_TEXT" value:&stru_282D54710 table:@"CallDirectorySettings"];
    v7 = [forCopy objectAtIndexedSubscript:0];
    carrierName = [v7 carrierName];
    v11 = [forCopy objectAtIndexedSubscript:1];
    carrierName2 = [v11 carrierName];
    v9 = [v10 stringWithFormat:v6, carrierName, carrierName2];

    goto LABEL_5;
  }

  v9 = &stru_282D54710;
LABEL_7:

  return v9;
}

@end