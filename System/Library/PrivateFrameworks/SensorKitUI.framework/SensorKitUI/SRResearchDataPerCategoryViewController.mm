@interface SRResearchDataPerCategoryViewController
+ (void)initialize;
- (BOOL)sensorReader:(id)a3 fetchingRequest:(id)a4 didFetchResult:(id)a5;
- (id)bundleForIndexPath:(id)a3;
- (id)prepareDayCell;
- (id)prepareDeleteCell;
- (id)prepareExportCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)daysFromDate:(id)a3 toDate:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableSectionFromIndexPathSection:(int64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancelExport;
- (void)cleanupExportedFile;
- (void)dealloc;
- (void)deleteAllUnreleasedData;
- (void)exportData;
- (void)navigateToAuthorization;
- (void)populateDays;
- (void)presentDownloadPath:(id)a3 sandboxExtensionToken:(id)a4;
- (void)sensorReader:(id)a3 didCompleteFetch:(id)a4;
- (void)sensorReader:(id)a3 fetchingRequest:(id)a4 failedWithError:(id)a5;
- (void)showActionSheet;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SRResearchDataPerCategoryViewController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRResearchPerDataLog = os_log_create("com.apple.SensorKit", "SRResearchPerData");
  }
}

- (void)viewDidLoad
{
  v93 = *MEMORY[0x277D85DE8];
  v85.receiver = self;
  v85.super_class = SRResearchDataPerCategoryViewController;
  [(SRResearchDataPerCategoryViewController *)&v85 viewDidLoad];
  v56 = [MEMORY[0x277CBEB58] set];
  v53 = [MEMORY[0x277CBEB58] set];
  obj = [(SRAuthorizationStore *)[(SRResearchDataPerCategoryViewController *)self authStore] readerAuthorizationBundleIdValues];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v49 = [obj countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (v49)
  {
    v47 = *v82;
    do
    {
      v2 = 0;
      do
      {
        if (*v82 != v47)
        {
          v3 = v2;
          objc_enumerationMutation(obj);
          v2 = v3;
        }

        v51 = v2;
        v4 = *(*(&v81 + 1) + 8 * v2);
        v5 = [MEMORY[0x277CCA8D8] sk_bundleWithIdentifier:{v4, v47}];
        if (v5)
        {
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v6 = [obj objectForKeyedSubscript:v4];
          v7 = [v6 countByEnumeratingWithState:&v77 objects:v91 count:16];
          if (v7)
          {
            v8 = *v78;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v78 != v8)
                {
                  objc_enumerationMutation(v6);
                }

                v10 = *(*(&v77 + 1) + 8 * i);
                v11 = objc_autoreleasePoolPush();
                if (-[NSString isEqualToString:](-[SRAuthorizationGroup authorizationService](self->_authGroup, "authorizationService"), "isEqualToString:", [objc_msgSend(MEMORY[0x277CDC638] sensorDescriptionForSensor:{v10), "authorizationService"}]))
                {
                  [v56 addObject:v5];
                  if ([objc_msgSend(objc_msgSend(obj objectForKeyedSubscript:{v4), "objectForKeyedSubscript:", v10), "BOOLValue"}])
                  {
                    [v53 addObject:v4];
                  }
                }

                objc_autoreleasePoolPop(v11);
              }

              v7 = [v6 countByEnumeratingWithState:&v77 objects:v91 count:16];
            }

            while (v7);
          }
        }

        v2 = v51 + 1;
      }

      while (v51 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v81 objects:v92 count:16];
    }

    while (v49);
  }

  -[SRResearchDataPerCategoryViewController setAuthorizedBundleIds:](self, "setAuthorizedBundleIds:", [MEMORY[0x277CBEB58] setWithSet:v53]);
  -[SRResearchDataPerCategoryViewController setAppBundles:](self, "setAppBundles:", [objc_msgSend(v56 "allObjects")]);
  [v56 removeAllObjects];
  [v53 removeAllObjects];
  obja = [(SRAuthorizationStore *)[(SRResearchDataPerCategoryViewController *)self authStore] writerAuthorizationValues];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v50 = [obja countByEnumeratingWithState:&v73 objects:v90 count:16];
  if (v50)
  {
    v48 = *v74;
    do
    {
      v12 = 0;
      do
      {
        if (*v74 != v48)
        {
          v13 = v12;
          objc_enumerationMutation(obja);
          v12 = v13;
        }

        v52 = v12;
        v14 = *(*(&v73 + 1) + 8 * v12);
        v15 = [MEMORY[0x277CCA8D8] sk_bundleWithIdentifier:{v14, v48}];
        if (v15)
        {
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v16 = [obja objectForKeyedSubscript:v14];
          v17 = [v16 countByEnumeratingWithState:&v69 objects:v89 count:16];
          if (v17)
          {
            v18 = *v70;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v70 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v69 + 1) + 8 * j);
                v21 = objc_autoreleasePoolPush();
                if (-[NSString isEqualToString:](-[SRAuthorizationGroup authorizationService](self->_authGroup, "authorizationService"), "isEqualToString:", -[SRAuthorizationGroup authorizationService](+[SRAuthorizationGroup authorizationGroupWithServiceName:](SRAuthorizationGroup, "authorizationGroupWithServiceName:", [objc_msgSend(MEMORY[0x277CDC638] sensorDescriptionForSensor:{v20), "writerAuthorizationService"}]), "authorizationService")))
                {
                  [v56 addObject:v15];
                  if ([objc_msgSend(objc_msgSend(obja objectForKeyedSubscript:{v14), "objectForKeyedSubscript:", v20), "BOOLValue"}])
                  {
                    [v53 addObject:v14];
                  }
                }

                objc_autoreleasePoolPop(v21);
              }

              v17 = [v16 countByEnumeratingWithState:&v69 objects:v89 count:16];
            }

            while (v17);
          }
        }

        v12 = v52 + 1;
      }

      while (v52 + 1 != v50);
      v50 = [obja countByEnumeratingWithState:&v73 objects:v90 count:16];
    }

    while (v50);
  }

  -[SRResearchDataPerCategoryViewController setWriterAppBundles:](self, "setWriterAppBundles:", [objc_msgSend(v56 "allObjects")]);
  -[SRResearchDataPerCategoryViewController setAuthorizedWriterBundleIds:](self, "setAuthorizedWriterBundleIds:", [MEMORY[0x277CBEB58] setWithSet:v53]);
  [(SRResearchDataPerCategoryViewController *)self setNumberOfDays:0];
  v22 = [MEMORY[0x277CDC638] sensorDescriptionsForAuthorizationService:{-[SRAuthorizationGroup authorizationService](self->_authGroup, "authorizationService")}];
  v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v24 = [v22 countByEnumeratingWithState:&v65 objects:v88 count:16];
  if (v24)
  {
    v25 = *v66;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v66 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [v23 addObject:{objc_msgSend(*(*(&v65 + 1) + 8 * k), "name")}];
      }

      v24 = [v22 countByEnumeratingWithState:&v65 objects:v88 count:16];
    }

    while (v24);
  }

  [(SRResearchDataPerCategoryViewController *)self setSensorIdentifiers:v23];

  v27 = [MEMORY[0x277CDC638] sensorDescriptionForSensor:{-[NSSet anyObject](-[SRResearchDataPerCategoryViewController sensorIdentifiers](self, "sensorIdentifiers"), "anyObject")}];
  if (!v27)
  {
    v28 = SRResearchPerDataLog;
    if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_FAULT))
    {
      v46 = [(NSSet *)[(SRResearchDataPerCategoryViewController *)self sensorIdentifiers] anyObject];
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v46;
      _os_log_fault_impl(&dword_265602000, v28, OS_LOG_TYPE_FAULT, "Failed to find sensor description for %{public}@", location, 0xCu);
    }
  }

  -[SRResearchDataPerCategoryViewController setDatastoreBackend:](self, "setDatastoreBackend:", [v27 datastoreBackend]);
  if (![(SRResearchDataPerCategoryViewController *)self datastoreBackend])
  {
    v29 = [objc_alloc(MEMORY[0x277CDC648]) initWithSensor:{-[NSSet anyObject](-[SRResearchDataPerCategoryViewController sensorIdentifiers](self, "sensorIdentifiers"), "anyObject")}];
    [v29 serviceStartTime];
    [(SRResearchDataPerCategoryViewController *)self setStart:?];

    [(SRResearchDataPerCategoryViewController *)self start];
    if (v30 != 0.0)
    {
      -[SRResearchDataPerCategoryViewController setTombstones:](self, "setTombstones:", [MEMORY[0x277CBEB18] array]);
      [(SRResearchDataPerCategoryViewController *)self setEnd:SRAbsoluteTimeGetCurrent()];
      v31 = dispatch_group_create();
      [(SRResearchDataPerCategoryViewController *)self setFetchGroup:v31];
      dispatch_release(v31);
      -[SRResearchDataPerCategoryViewController setReaders:](self, "setReaders:", [MEMORY[0x277CBEB18] array]);
      -[SRResearchDataPerCategoryViewController setPruners:](self, "setPruners:", [MEMORY[0x277CBEB18] array]);
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v57 = [(SRResearchDataPerCategoryViewController *)self sensorIdentifiers];
      v32 = [(NSSet *)v57 countByEnumeratingWithState:&v61 objects:v86 count:16];
      if (v32)
      {
        v33 = *v62;
        do
        {
          for (m = 0; m != v32; ++m)
          {
            if (*v62 != v33)
            {
              objc_enumerationMutation(v57);
            }

            v35 = *(*(&v61 + 1) + 8 * m);
            v36 = [objc_alloc(MEMORY[0x277CDC648]) initWithSensor:v35];
            [v36 earliestEligibleTime];
            v38 = v37;
            [(SRResearchDataPerCategoryViewController *)self end];
            [(SRResearchDataPerCategoryViewController *)self setEnd:fmin(v38, v39)];

            v40 = [objc_alloc(MEMORY[0x277CDC648]) initWithSensor:{objc_msgSend(v35, "sr_sensorForDeletionRecordsFromSensor")}];
            [v40 setDelegate:self];
            [(NSMutableArray *)[(SRResearchDataPerCategoryViewController *)self readers] addObject:v40];
            dispatch_group_enter([(SRResearchDataPerCategoryViewController *)self fetchGroup]);
            v41 = objc_alloc_init(MEMORY[0x277CDC630]);
            [v41 setFrom:0.0];
            [v41 setTo:INFINITY];
            [v41 setDevice:{objc_msgSend(MEMORY[0x277CDC628], "currentDevice")}];
            [v40 fetch:v41];

            v42 = objc_alloc(MEMORY[0x277CDC640]);
            v43 = [v42 initWithSensor:v35 device:{objc_msgSend(MEMORY[0x277CDC628], "currentDevice")}];
            [v43 setDelegate:self];
            [(NSMutableArray *)[(SRResearchDataPerCategoryViewController *)self pruners] addObject:v43];
          }

          v32 = [(NSSet *)v57 countByEnumeratingWithState:&v61 objects:v86 count:16];
        }

        while (v32);
      }

      objc_initWeak(location, self);
      v44 = [(SRResearchDataPerCategoryViewController *)self fetchGroup];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__SRResearchDataPerCategoryViewController_viewDidLoad__block_invoke_14;
      block[3] = &unk_279B98368;
      objc_copyWeak(&v60, location);
      dispatch_group_notify(v44, MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v60);
      objc_destroyWeak(location);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

uint64_t __54__SRResearchDataPerCategoryViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 sk_appName];
  v5 = [a3 sk_appName];

  return [v4 compare:v5];
}

uint64_t __54__SRResearchDataPerCategoryViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 sk_appName];
  v5 = [a3 sk_appName];

  return [v4 compare:v5];
}

uint64_t __54__SRResearchDataPerCategoryViewController_viewDidLoad__block_invoke_14(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak populateDays];
}

- (void)dealloc
{
  [(SRResearchDataPerCategoryViewController *)self setAuthorizedBundleIds:0];
  [(SRResearchDataPerCategoryViewController *)self setAuthorizedWriterBundleIds:0];
  [(SRResearchDataPerCategoryViewController *)self setAppBundles:0];
  [(SRResearchDataPerCategoryViewController *)self setWriterAppBundles:0];
  [(SRResearchDataPerCategoryViewController *)self setAuthGroup:0];
  [(SRResearchDataPerCategoryViewController *)self setReaders:0];
  [(SRResearchDataPerCategoryViewController *)self setPruners:0];
  [(SRResearchDataPerCategoryViewController *)self setSensorIdentifiers:0];
  [(SRResearchDataPerCategoryViewController *)self setTombstones:0];
  [(SRResearchDataPerCategoryViewController *)self setCancelExportBlock:0];
  [(SRResearchDataPerCategoryViewController *)self setAuthStore:0];
  [(SRResearchDataPerCategoryViewController *)self setFetchGroup:0];
  [(SRResearchDataPerCategoryViewController *)self setExportedDataURL:0];
  v3.receiver = self;
  v3.super_class = SRResearchDataPerCategoryViewController;
  [(SRResearchDataPerCategoryViewController *)&v3 dealloc];
}

- (int64_t)tableSectionFromIndexPathSection:(int64_t)a3
{
  v3 = a3;
  if ((a3 - 2) >= 4)
  {
    if (a3 != 1)
    {
      return v3;
    }

    v8 = [(NSArray *)[(SRResearchDataPerCategoryViewController *)self appBundles] count]== 0;
    v7 = 1;
  }

  else
  {
    v5 = [(NSArray *)[(SRResearchDataPerCategoryViewController *)self appBundles] count];
    v6 = [(NSArray *)[(SRResearchDataPerCategoryViewController *)self writerAppBundles] count];
    if (v5)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 + 1;
    }

    v8 = v6 == 0;
  }

  if (v8)
  {
    return v7 + 1;
  }

  else
  {
    return v7;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(NSArray *)[(SRResearchDataPerCategoryViewController *)self writerAppBundles] count])
  {
    v4 = 6;
  }

  else
  {
    v4 = 5;
  }

  v5 = (__PAIR128__(v4, [(NSArray *)[(SRResearchDataPerCategoryViewController *)self appBundles] count]) - 1) >> 64;
  return v5 - ([(SRResearchDataPerCategoryViewController *)self datastoreBackend]== 1);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(SRResearchDataPerCategoryViewController *)self tableSectionFromIndexPathSection:a4];
  if (v5 > 2)
  {
    return (v5 - 3) < 3;
  }

  if (!v5)
  {
    return 2;
  }

  if (v5 == 1)
  {
    v6 = [(SRResearchDataPerCategoryViewController *)self appBundles];
    goto LABEL_11;
  }

  if (v5 != 2)
  {
    return 0;
  }

  v6 = [(SRResearchDataPerCategoryViewController *)self writerAppBundles];
LABEL_11:

  return [(NSArray *)v6 count];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(SRResearchDataPerCategoryViewController *)self tableSectionFromIndexPathSection:a4];
  if ((v4 - 1) > 2)
  {
    return 0;
  }

  v5 = qword_2656139B8[v4 - 1];
  v6 = MEMORY[0x277CCACA8];

  return [v6 srui_localizedStringForCode:v5];
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [(SRResearchDataPerCategoryViewController *)self tableSectionFromIndexPathSection:a4];
  v7 = 0;
  if (v6 <= 2)
  {
    switch(v6)
    {
      case 0:
LABEL_18:
        v10 = *MEMORY[0x277D85DE8];
        return v7;
      case 1:
        if ([(SRResearchDataPerCategoryViewController *)self tableView:a3 numberOfRowsInSection:1])
        {
          v7 = 13;
        }

        else
        {
          v7 = 14;
        }

        break;
      case 2:
        v8 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:15];
        v15 = 0;
        v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:&v15, -[SRAuthorizationGroup localizedDisplayName](self->_authGroup, "localizedDisplayName")];
        if (!v7)
        {
          v9 = SRResearchPerDataLog;
          if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v17 = v15;
            _os_log_fault_impl(&dword_265602000, v9, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
          }
        }

        goto LABEL_18;
    }
  }

  else
  {
    if (v6 <= 4)
    {
      if (v6 == 3)
      {
        v12 = [(SRResearchDataPerCategoryViewController *)self datastoreBackend];
        if (v12 == 1)
        {
          v7 = 92;
        }

        else
        {
          v7 = 16 * (v12 == 0);
        }
      }

      else
      {
        if (-[NSString isEqualToString:](-[SRAuthorizationGroup authorizationService](-[SRResearchDataPerCategoryViewController authGroup](self, "authGroup"), "authorizationService"), "isEqualToString:", [objc_msgSend(MEMORY[0x277CDC638] sensorDescriptionForSensor:{*MEMORY[0x277CDC658]), "authorizationService"}]))
        {
          v7 = 91;
        }

        else
        {
          v7 = 17;
        }

        if ([(SRResearchDataPerCategoryViewController *)self datastoreBackend]== 1)
        {
          v7 = 93;
        }
      }

      goto LABEL_26;
    }

    if (v6 == 5)
    {
      v7 = 18;
    }

    else if (v6 == 6)
    {
      goto LABEL_18;
    }
  }

LABEL_26:
  v13 = MEMORY[0x277CCACA8];
  v14 = *MEMORY[0x277D85DE8];

  return [v13 srui_localizedStringForCode:v7];
}

- (id)bundleForIndexPath:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = -[SRResearchDataPerCategoryViewController tableSectionFromIndexPathSection:](self, "tableSectionFromIndexPathSection:", [a3 section]);
  if (v5 - 3 < 4)
  {
LABEL_14:
    v12 = *MEMORY[0x277D85DE8];
    return 0;
  }

  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v6 = [(SRResearchDataPerCategoryViewController *)self writerAppBundles];
  }

  else
  {
    v6 = [(SRResearchDataPerCategoryViewController *)self appBundles];
  }

  v7 = v6;
LABEL_8:
  v8 = [a3 row];
  if ([(NSArray *)v7 count]<= v8)
  {
    v11 = SRResearchPerDataLog;
    if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_FAULT))
    {
      v13 = [(SRAuthorizationGroup *)self->_authGroup localizedDisplayName];
      v14 = 138543874;
      v15 = v13;
      v16 = 2048;
      v17 = [(NSArray *)v7 count];
      v18 = 2048;
      v19 = v8 + 1;
      _os_log_fault_impl(&dword_265602000, v11, OS_LOG_TYPE_FAULT, "Not enough bundle IDs found for category %{public}@. Have %lu, expecting %lu", &v14, 0x20u);
    }

    goto LABEL_14;
  }

  v9 = *MEMORY[0x277D85DE8];

  return [(NSArray *)v7 objectAtIndexedSubscript:v8];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = [a4 row];
  v8 = -[SRResearchDataPerCategoryViewController tableSectionFromIndexPathSection:](self, "tableSectionFromIndexPathSection:", [a4 section]);
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3:

        return [(SRResearchDataPerCategoryViewController *)self prepareDeleteCell];
      case 4:

        return [(SRResearchDataPerCategoryViewController *)self prepareExportCell];
      case 5:

        return [(SRResearchDataPerCategoryViewController *)self prepareDayCell];
      default:
LABEL_24:
        v24 = objc_opt_new();

        return v24;
    }
  }

  else
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v22 = [(SRResearchDataPerCategoryViewController *)self bundleForIndexPath:a4];
        if (v22)
        {
          v10 = v22;
          v11 = [v22 sk_appName];
          v12 = MEMORY[0x277CCABB0];
          v13 = [(SRResearchDataPerCategoryViewController *)self authorizedBundleIds];
          goto LABEL_21;
        }
      }

      else if (v8 == 2)
      {
        v9 = [(SRResearchDataPerCategoryViewController *)self bundleForIndexPath:a4];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 sk_appName];
          v12 = MEMORY[0x277CCABB0];
          v13 = [(SRResearchDataPerCategoryViewController *)self authorizedWriterBundleIds];
LABEL_21:
          v23 = [v12 numberWithBool:{-[NSMutableSet containsObject:](v13, "containsObject:", objc_msgSend(v10, "bundleIdentifier"))}];

          return [SRAuthorizationCell authorizationCellForIndexPath:a4 title:v11 state:v23 delegate:self tableView:a3];
        }
      }

      goto LABEL_24;
    }

    if (v7 != 1)
    {
      if (!v7)
      {
        v15 = *MEMORY[0x277D76918];
        v16 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:2 options:2];
        v17 = [MEMORY[0x277D74300] fontWithDescriptor:v16 size:0.0];
        v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:v15];
        v19 = +[SRAuthorizationCategoryDetailCell categoryDetailCellForAuthGroup:bundle:titleFont:bodyFont:textColor:OBKStyle:](SRAuthorizationCategoryDetailCell, "categoryDetailCellForAuthGroup:bundle:titleFont:bodyFont:textColor:OBKStyle:", self->_authGroup, 0, v17, v18, [MEMORY[0x277D75348] labelColor], 0);
        [a3 separatorInset];
        [objc_msgSend(v19 "contentView")];
        return v19;
      }

      goto LABEL_24;
    }

    v25 = MEMORY[0x277D75B48];

    return [v25 skui_tableViewCellForDataSample:a3];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = -[SRResearchDataPerCategoryViewController tableSectionFromIndexPathSection:](self, "tableSectionFromIndexPathSection:", [a4 section]);
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      [(SRResearchDataPerCategoryViewController *)self exportData];
      goto LABEL_15;
    }

    if (v7 != 5)
    {
      goto LABEL_15;
    }

    v9 = objc_opt_new();
    [v9 setNumberOfDays:{-[SRResearchDataPerCategoryViewController numberOfDays](self, "numberOfDays")}];
    [(SRResearchDataPerCategoryViewController *)self end];
    [v9 setEnd:?];
    [v9 setTombstones:{-[SRResearchDataPerCategoryViewController tombstones](self, "tombstones")}];
    v10 = self;
    v11 = v9;
LABEL_12:
    [(UIViewController *)v10 sk_showViewController:v11 animated:1];
    goto LABEL_15;
  }

  if (!v7)
  {
    if ([a4 row] != 1)
    {
      goto LABEL_15;
    }

    v11 = [SRSampleViewController sampleViewControllerForAuthGroup:self->_authGroup];
    v10 = self;
    goto LABEL_12;
  }

  if (v7 == 3)
  {
    v8 = [(SRResearchDataPerCategoryViewController *)self datastoreBackend];
    if (v8 == 1)
    {
      [(SRResearchDataPerCategoryViewController *)self navigateToAuthorization];
    }

    else if (!v8)
    {
      [(SRResearchDataPerCategoryViewController *)self showActionSheet];
    }
  }

LABEL_15:

  [a3 deselectRowAtIndexPath:a4 animated:1];
}

- (id)prepareDayCell
{
  v3 = [-[SRResearchDataPerCategoryViewController tableView](self "tableView")];
  if (!v3)
  {
    v3 = [[SRDetailedTableCell alloc] initWithStyle:1 reuseIdentifier:@"SRDataDayRowReuseIdentifier"];
  }

  v4 = [(SRResearchDataPerCategoryViewController *)self numberOfDays]> 0;
  [(SRDetailedTableCell *)v3 setAccessoryType:v4];
  [(SRDetailedTableCell *)v3 setUserInteractionEnabled:v4];
  -[UILabel setText:](-[SRDetailedTableCell titleLabel](v3, "titleLabel"), "setText:", [MEMORY[0x277CCACA8] srui_localizedStringForCode:19]);
  if (([(SRResearchDataPerCategoryViewController *)self numberOfDays]& 0x8000000000000000) == 0)
  {
    v5 = objc_opt_new();
    [v5 setDay:{-[SRResearchDataPerCategoryViewController numberOfDays](self, "numberOfDays")}];
    -[UILabel setText:](-[SRDetailedTableCell detailLabel](v3, "detailLabel"), "setText:", [MEMORY[0x277CCA958] localizedStringFromDateComponents:v5 unitsStyle:3]);
  }

  return v3;
}

- (id)prepareDeleteCell
{
  v3 = [-[SRResearchDataPerCategoryViewController tableView](self "tableView")];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"SRDataDeleteRowReuseIdentifier"];
  }

  v4 = [(SRResearchDataPerCategoryViewController *)self datastoreBackend];
  if (v4 == 1)
  {
    v5 = [MEMORY[0x277D75348] systemBlueColor];
    v6 = 95;
    goto LABEL_7;
  }

  if (!v4)
  {
    v5 = [MEMORY[0x277D75348] redColor];
    v6 = 20;
LABEL_7:
    [objc_msgSend(v3 "textLabel")];
    [objc_msgSend(v3 "textLabel")];
  }

  [objc_msgSend(v3 "textLabel")];
  [objc_msgSend(v3 "textLabel")];
  return v3;
}

- (id)prepareExportCell
{
  v2 = [-[SRResearchDataPerCategoryViewController tableView](self "tableView")];
  if (!v2)
  {
    v2 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"SRDataExportRowReuseIdentifier"];
    [objc_msgSend(v2 "textLabel")];
  }

  [objc_msgSend(v2 "textLabel")];
  [objc_msgSend(v2 "textLabel")];
  [objc_msgSend(v2 "textLabel")];
  return v2;
}

- (BOOL)sensorReader:(id)a3 fetchingRequest:(id)a4 didFetchResult:(id)a5
{
  [a5 sample];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[NSMutableArray addObject:](self->_tombstones, "addObject:", [a5 sample]);
  }

  return 1;
}

- (void)sensorReader:(id)a3 didCompleteFetch:(id)a4
{
  if ([(SRResearchDataPerCategoryViewController *)self fetchGroup:a3])
  {
    v5 = [(SRResearchDataPerCategoryViewController *)self fetchGroup];

    dispatch_group_leave(v5);
  }
}

- (void)sensorReader:(id)a3 fetchingRequest:(id)a4 failedWithError:(id)a5
{
  if ([(SRResearchDataPerCategoryViewController *)self fetchGroup:a3])
  {
    v6 = [(SRResearchDataPerCategoryViewController *)self fetchGroup];

    dispatch_group_leave(v6);
  }
}

- (void)populateDays
{
  v12[1] = *MEMORY[0x277D85DE8];
  [(SRResearchDataPerCategoryViewController *)self start];
  v4 = v3;
  [(SRResearchDataPerCategoryViewController *)self end];
  if (v4 < v5)
  {
    v6 = MEMORY[0x277CBEAA8];
    [(SRResearchDataPerCategoryViewController *)self start];
    v7 = [v6 dateWithSRAbsoluteTime:?];
    v8 = MEMORY[0x277CBEAA8];
    [(SRResearchDataPerCategoryViewController *)self end];
    -[SRResearchDataPerCategoryViewController setNumberOfDays:](self, "setNumberOfDays:", -[SRResearchDataPerCategoryViewController daysFromDate:toDate:](self, "daysFromDate:toDate:", v7, [v8 dateWithSRAbsoluteTime:?]));
    [-[SRResearchDataPerCategoryViewController tableView](self "tableView")];
    v9 = [(SRResearchDataPerCategoryViewController *)self numberOfSectionsInTableView:[(SRResearchDataPerCategoryViewController *)self tableView]]- 1;
    v10 = [(SRResearchDataPerCategoryViewController *)self tableView];
    v12[0] = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v9];
    [v10 reloadRowsAtIndexPaths:objc_msgSend(MEMORY[0x277CBEA60] withRowAnimation:{"arrayWithObjects:count:", v12, 1), 100}];
    [-[SRResearchDataPerCategoryViewController tableView](self "tableView")];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)daysFromDate:(id)a3 toDate:(id)a4
{
  v8 = 0;
  v9 = 0;
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  [v6 rangeOfUnit:16 startDate:&v9 interval:0 forDate:a3];
  [v6 rangeOfUnit:16 startDate:&v8 interval:0 forDate:a4];
  return [objc_msgSend(v6 components:16 fromDate:v9 toDate:v8 options:{0), "day"}] + 1;
}

- (void)showActionSheet
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:objc_msgSend(MEMORY[0x277CCACA8] message:"srui_localizedStringForCode:" preferredStyle:{23), 0, 0}];
  v4 = MEMORY[0x277D750F8];
  v5 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:25];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __58__SRResearchDataPerCategoryViewController_showActionSheet__block_invoke;
  v10 = &unk_279B983B8;
  objc_copyWeak(&v11, &location);
  v6 = [v4 actionWithTitle:v5 style:2 handler:&v7];
  [v3 addAction:{v6, v7, v8, v9, v10}];
  [v3 addAction:{objc_msgSend(MEMORY[0x277D750F8], "actionWithTitle:style:handler:", objc_msgSend(MEMORY[0x277CCACA8], "srui_localizedStringForCode:", 26), 1, 0)}];
  [(SRResearchDataPerCategoryViewController *)self presentViewController:v3 animated:1 completion:0];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __58__SRResearchDataPerCategoryViewController_showActionSheet__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak deleteAllUnreleasedData];
}

- (void)exportData
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = SRResearchPerDataLog;
  if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265602000, v3, OS_LOG_TYPE_DEFAULT, "Export data", buf, 2u);
  }

  objc_initWeak(&location, self);
  *buf = 0;
  v31 = buf;
  v32 = 0x2020000000;
  v33 = 0;
  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:27];
  v6 = [v4 alertControllerWithTitle:v5 message:objc_msgSend(MEMORY[0x277CCACA8] preferredStyle:{"srui_localizedStringForCode:", 28), 1}];
  v7 = MEMORY[0x277D750F8];
  v8 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:26];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __53__SRResearchDataPerCategoryViewController_exportData__block_invoke;
  v28[3] = &unk_279B983E0;
  v28[4] = buf;
  objc_copyWeak(&v29, &location);
  [v6 addAction:{objc_msgSend(v7, "actionWithTitle:style:handler:", v8, 1, v28)}];
  [(SRResearchDataPerCategoryViewController *)self presentViewController:v6 animated:1 completion:0];
  v9 = [MEMORY[0x277CDC638] sensorDescriptionsForAuthorizationService:{-[SRAuthorizationGroup authorizationService](self->_authGroup, "authorizationService")}];
  v10 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v9, "count")}];
  v19 = v6;
  v20 = self;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v24 objects:v37 count:16];
  if (v11)
  {
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if ([v14 name])
        {
          [v10 addObject:{objc_msgSend(v14, "name")}];
        }

        else
        {
          v15 = SRResearchPerDataLog;
          if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_FAULT))
          {
            *v35 = 138543362;
            v36 = v14;
            _os_log_fault_impl(&dword_265602000, v15, OS_LOG_TYPE_FAULT, "Trying to export a data stream without a name. %{public}@", v35, 0xCu);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v37 count:16];
    }

    while (v11);
  }

  if ([v10 count])
  {
    objc_initWeak(v35, v20);
    v16 = MEMORY[0x277CDC648];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_54;
    v21[3] = &unk_279B98458;
    objc_copyWeak(&v22, v35);
    objc_copyWeak(&v23, &location);
    v21[4] = v19;
    v21[5] = buf;
    v20->_cancelExportBlock = [v16 createExportDataForServices:v10 withCompletionHandler:v21];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(v35);
  }

  else
  {
    v17 = SRResearchPerDataLog;
    if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_ERROR))
    {
      *v35 = 138543362;
      v36 = v9;
      _os_log_error_impl(&dword_265602000, v17, OS_LOG_TYPE_ERROR, "Failed to find any sensors to export from %{public}@", v35, 0xCu);
    }
  }

  objc_destroyWeak(&v29);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __53__SRResearchDataPerCategoryViewController_exportData__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  Weak = objc_loadWeak((a1 + 40));

  return [Weak cancelExport];
}

void __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = SRResearchPerDataLog;
  if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v15 = a3;
    _os_log_debug_impl(&dword_265602000, v8, OS_LOG_TYPE_DEBUG, "Got sandbox extension token %{public}@", buf, 0xCu);
  }

  [objc_loadWeak((a1 + 48)) setExportedDataURL:a2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_55;
  v12[3] = &unk_279B98430;
  objc_copyWeak(&v13, (a1 + 56));
  v12[4] = a4;
  v12[5] = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12[7] = a3;
  v12[8] = v9;
  v12[6] = v10;
  dispatch_async(MEMORY[0x277D85CD0], v12);
  objc_destroyWeak(&v13);
  v11 = *MEMORY[0x277D85DE8];
}

void __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_55(uint64_t a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  [objc_loadWeak((a1 + 72)) setCancelExportBlock:0];
  v2 = *(a1 + 32);
  if (!v2 && *(a1 + 40))
  {
    goto LABEL_7;
  }

  v3 = SRResearchPerDataLog;
  if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_ERROR))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v2;
    _os_log_error_impl(&dword_265602000, v3, OS_LOG_TYPE_ERROR, "Failed to get exported file %@", location, 0xCu);
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
LABEL_7:
    v6 = 0;
  }

  else
  {
    v4 = MEMORY[0x277D75110];
    v5 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:27];
    v6 = [v4 alertControllerWithTitle:v5 message:objc_msgSend(MEMORY[0x277CCACA8] preferredStyle:{"srui_localizedStringForCode:", 29), 1}];
    objc_initWeak(location, v6);
    v7 = MEMORY[0x277D750F8];
    v8 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:30];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_56;
    v15[3] = &unk_279B983B8;
    objc_copyWeak(&v16, location);
    [v6 addAction:{objc_msgSend(v7, "actionWithTitle:style:handler:", v8, 0, v15)}];
    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  v9 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_2;
  v12[3] = &unk_279B98408;
  objc_copyWeak(&v14, (a1 + 72));
  v10 = *(a1 + 40);
  v12[4] = v6;
  v12[5] = v10;
  v13 = *(a1 + 56);
  [v9 dismissViewControllerAnimated:0 completion:v12];
  objc_destroyWeak(&v14);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_56(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak dismissViewControllerAnimated:0 completion:0];
}

id __53__SRResearchDataPerCategoryViewController_exportData__block_invoke_2(uint64_t a1)
{
  result = objc_loadWeak((a1 + 64));
  v3 = result;
  if (*(a1 + 32))
  {

    return [result presentViewController:? animated:? completion:?];
  }

  else if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v4 = [*(a1 + 40) path];
    v5 = *(a1 + 48);

    return [v3 presentDownloadPath:v4 sandboxExtensionToken:v5];
  }

  return result;
}

- (void)cancelExport
{
  v3 = [(SRResearchDataPerCategoryViewController *)self cancelExportBlock];
  if (v3)
  {
    v3[2]();
  }

  [(SRResearchDataPerCategoryViewController *)self setCancelExportBlock:0];
}

- (void)cleanupExportedFile
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(SRResearchDataPerCategoryViewController *)self exportedDataURL])
  {
    v9 = 0;
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      v3 = SRResearchPerDataLog;
      if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_ERROR))
      {
        v6 = [(SRResearchDataPerCategoryViewController *)self exportedDataURL];
        *buf = 138543618;
        v11 = v6;
        v12 = 2114;
        v13 = v9;
        _os_log_error_impl(&dword_265602000, v3, OS_LOG_TYPE_ERROR, "Failed to remove exported URL %{public}@ because %{public}@", buf, 0x16u);
      }
    }

    [(SRResearchDataPerCategoryViewController *)self setExportedDataURL:0];
  }

  if ([(SRResearchDataPerCategoryViewController *)self sb_handle]!= -1)
  {
    [(SRResearchDataPerCategoryViewController *)self sb_handle];
    if ((sandbox_extension_release() & 0x80000000) != 0)
    {
      v4 = SRResearchPerDataLog;
      if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_ERROR))
      {
        v7 = [(SRResearchDataPerCategoryViewController *)self sb_handle];
        v8 = *__error();
        *buf = 134218240;
        v11 = v7;
        v12 = 1026;
        LODWORD(v13) = v8;
        _os_log_error_impl(&dword_265602000, v4, OS_LOG_TYPE_ERROR, "Error releasing sandbox handle %lld because %{public, errno}d", buf, 0x12u);
      }
    }

    [(SRResearchDataPerCategoryViewController *)self setSb_handle:-1];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)presentDownloadPath:(id)a3 sandboxExtensionToken:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    [a4 UTF8String];
    [(SRResearchDataPerCategoryViewController *)self setSb_handle:sandbox_extension_consume()];
    v7 = [(SRResearchDataPerCategoryViewController *)self sb_handle];
    v8 = SRResearchPerDataLog;
    if (v7 == -1)
    {
      if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_ERROR))
      {
        v19 = *__error();
        *buf = 138543618;
        v25 = a4;
        v26 = 1026;
        LODWORD(v27) = v19;
        _os_log_error_impl(&dword_265602000, v8, OS_LOG_TYPE_ERROR, "Error consuming sandbox extension token %{public}@ because %{public, errno}d", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v25 = a4;
      v26 = 2114;
      v27 = a3;
      _os_log_debug_impl(&dword_265602000, v8, OS_LOG_TYPE_DEBUG, "Consumed sandbox extension token %{public}@ for %{public}@", buf, 0x16u);
    }
  }

  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
  v10 = objc_alloc(MEMORY[0x277D546D8]);
  v23 = v9;
  v11 = [v10 initWithActivityItems:objc_msgSend(MEMORY[0x277CBEA60] applicationActivities:{"arrayWithObjects:count:", &v23, 1), 0}];
  v12 = *MEMORY[0x277D54748];
  v22[0] = *MEMORY[0x277D54760];
  v22[1] = v12;
  v13 = *MEMORY[0x277D54778];
  v22[2] = *MEMORY[0x277D54770];
  v22[3] = v13;
  v14 = *MEMORY[0x277D54718];
  v22[4] = *MEMORY[0x277D54720];
  v22[5] = v14;
  v15 = *MEMORY[0x277D54708];
  v22[6] = *MEMORY[0x277D54780];
  v22[7] = v15;
  v16 = *MEMORY[0x277D54768];
  v22[8] = *MEMORY[0x277D54750];
  v22[9] = v16;
  v22[10] = *MEMORY[0x277D54758];
  v22[11] = v15;
  v17 = *MEMORY[0x277D54730];
  v22[12] = *MEMORY[0x277D54740];
  v22[13] = v17;
  [v11 setExcludedActivityTypes:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v22, 14)}];
  [(SRResearchDataPerCategoryViewController *)self presentViewController:v11 animated:1 completion:&__block_literal_global_62];
  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__SRResearchDataPerCategoryViewController_presentDownloadPath_sandboxExtensionToken___block_invoke_2;
  v20[3] = &unk_279B98480;
  v20[4] = v11;
  objc_copyWeak(&v21, buf);
  [v11 setCompletionWithItemsHandler:v20];
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __85__SRResearchDataPerCategoryViewController_presentDownloadPath_sandboxExtensionToken___block_invoke_2(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));

  return [Weak cleanupExportedFile];
}

- (void)deleteAllUnreleasedData
{
  v17 = *MEMORY[0x277D85DE8];
  [(SRResearchDataPerCategoryViewController *)self end];
  if (v3 <= SRAbsoluteTimeGetCurrent())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(SRResearchDataPerCategoryViewController *)self pruners];
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          [(SRResearchDataPerCategoryViewController *)self end];
          [v9 removeSamplesFrom:v10 to:SRAbsoluteTimeGetCurrent()];
          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)navigateToAuthorization
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = 0;
  [objc_msgSend(MEMORY[0x277CC1E80] "defaultWorkspace")];
  if (v5)
  {
    v2 = SRResearchPerDataLog;
    if (os_log_type_enabled(SRResearchPerDataLog, OS_LOG_TYPE_ERROR))
    {
      v4 = +[NSURL sk_PreferencesMotionAndFitness];
      *buf = 138543618;
      v7 = v4;
      v8 = 2114;
      v9 = v5;
      _os_log_error_impl(&dword_265602000, v2, OS_LOG_TYPE_ERROR, "Error opening %{public}@ because %{public}@", buf, 0x16u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end