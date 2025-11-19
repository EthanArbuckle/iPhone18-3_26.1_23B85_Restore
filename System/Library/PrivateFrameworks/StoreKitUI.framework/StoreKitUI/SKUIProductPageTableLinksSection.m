@interface SKUIProductPageTableLinksSection
- (SKUIProductPageTableLinksSection)initWithItem:(id)a3 clientContext:(id)a4 askPermission:(BOOL)a5;
- (id)selectionActionForTableView:(id)a3 indexPath:(id)a4;
- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4;
@end

@implementation SKUIProductPageTableLinksSection

- (SKUIProductPageTableLinksSection)initWithItem:(id)a3 clientContext:(id)a4 askPermission:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageTableLinksSection initWithItem:clientContext:askPermission:];
  }

  v76.receiver = self;
  v76.super_class = SKUIProductPageTableLinksSection;
  v11 = [(SKUIProductPageTableLinksSection *)&v76 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_item, a3);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    actions = v12->_actions;
    v12->_actions = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    titles = v12->_titles;
    v12->_titles = v15;

    v57 = v9;
    if (SKUIUserInterfaceIdiom(v10))
    {
      if (a5)
      {
        goto LABEL_46;
      }

      goto LABEL_20;
    }

    v17 = [(SKUIProductPageItem *)v12->_item inAppPurchases];
    if ([v17 count])
    {
      v18 = [SKUIProductPageAction actionWithType:3];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __77__SKUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke;
      v73[3] = &unk_2781FD9D8;
      v74 = v17;
      v19 = v10;
      v75 = v19;
      [v18 setViewControllerBlock:v73];
      [(NSMutableArray *)v12->_actions addObject:v18];
      v20 = v12->_titles;
      if (v19)
      {
        [v19 localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_TITLE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_TITLE" inBundles:0 inTable:@"ProductPage"];
      }
      v21 = ;
      [(NSMutableArray *)v20 addObject:v21, v57];

      v9 = v57;
    }

    v22 = [(SKUIProductPageItem *)v12->_item releaseNotes];

    if ([v22 count])
    {
      v23 = [SKUIProductPageAction actionWithType:3];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __77__SKUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_2;
      v70[3] = &unk_2781FD9D8;
      v71 = v22;
      v24 = v10;
      v72 = v24;
      [v23 setViewControllerBlock:v70];
      [(NSMutableArray *)v12->_actions addObject:v23];
      v25 = v12->_titles;
      if (v24)
      {
        [v24 localizedStringForKey:@"PRODUCT_PAGE_UPDATE_HISTORY_TITLE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_UPDATE_HISTORY_TITLE" inBundles:0 inTable:@"ProductPage"];
      }
      v26 = ;
      [(NSMutableArray *)v25 addObject:v26];

      v9 = v57;
    }

    if (!a5)
    {
LABEL_20:
      v27 = [v9 supportURLString];
      if (v27)
      {
        v28 = [SKUIProductPageAction actionWithType:1];
        v29 = [MEMORY[0x277CBEBC0] URLWithString:v27];
        [v28 setURL:v29];

        [(NSMutableArray *)v12->_actions addObject:v28];
        v30 = v12->_titles;
        if (v10)
        {
          [v10 localizedStringForKey:@"PRODUCT_PAGE_DEVELOPER_WEBSITE" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_DEVELOPER_WEBSITE" inBundles:0 inTable:@"ProductPage"];
        }
        v31 = ;
        [(NSMutableArray *)v30 addObject:v31];
      }

      v32 = [v9 licenseAgreementURLString];

      if (v32)
      {
        v33 = [MEMORY[0x277CBEBC0] URLWithString:v32];
        v34 = [v33 URLByAppendingQueryParameter:@"mt" value:@"8"];

        v35 = [SKUIProductPageAction actionWithType:2];
        [v35 setURL:v34];
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __77__SKUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_3;
        v67[3] = &unk_2781FDA00;
        v36 = v34;
        v68 = v36;
        v37 = v10;
        v69 = v37;
        [v35 setViewControllerBlock:v67];
        [(NSMutableArray *)v12->_actions addObject:v35];
        v38 = v12->_titles;
        if (v37)
        {
          [v37 localizedStringForKey:@"PRODUCT_PAGE_LICENSE_AGREEMENT" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_LICENSE_AGREEMENT" inBundles:0 inTable:@"ProductPage"];
        }
        v39 = ;
        [(NSMutableArray *)v38 addObject:v39];

        v9 = v58;
      }

      v40 = [v9 privacyPolicyURLString];

      if (v40)
      {
        v41 = [SKUIProductPageAction actionWithType:1];
        v42 = [MEMORY[0x277CBEBC0] URLWithString:v40];
        [v41 setURL:v42];

        [(NSMutableArray *)v12->_actions addObject:v41];
        v43 = v12->_titles;
        if (v10)
        {
          [v10 localizedStringForKey:@"PRODUCT_PAGE_PRIVACY_POLICY" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_PRIVACY_POLICY" inBundles:0 inTable:@"ProductPage"];
        }
        v44 = ;
        [(NSMutableArray *)v43 addObject:v44];
      }

      v45 = [v9 artistPageURL];
      if (v45)
      {
        v46 = [SKUIProductPageAction actionWithType:2];
        [v46 setURL:v45];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __77__SKUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_4;
        v63[3] = &unk_2781FCA70;
        v47 = v10;
        v48 = v9;
        v49 = v47;
        v64 = v47;
        v65 = v48;
        v66 = v45;
        [v46 setViewControllerBlock:v63];
        [(NSMutableArray *)v12->_actions addObject:v46];
        v50 = v12->_titles;
        if (v49)
        {
          [v49 localizedStringForKey:@"PRODUCT_PAGE_DEVELOPER_APPS" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_DEVELOPER_APPS" inBundles:0 inTable:@"ProductPage"];
        }
        v51 = ;
        [(NSMutableArray *)v50 addObject:v51];

        v9 = v58;
      }

      v52 = [v9 developerInfo];
      if (v52)
      {
        v53 = [SKUIProductPageAction actionWithType:3];
        if (v10)
        {
          [v10 localizedStringForKey:@"PRODUCT_PAGE_DEVELOPER_INFO" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_DEVELOPER_INFO" inBundles:0 inTable:@"ProductPage"];
        }
        v54 = ;
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __77__SKUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_5;
        v59[3] = &unk_2781FDA28;
        v60 = v52;
        v61 = v10;
        v62 = v54;
        v55 = v54;
        [v53 setViewControllerBlock:v59];
        [(NSMutableArray *)v12->_actions addObject:v53];
        [(NSMutableArray *)v12->_titles addObject:v55];

        v9 = v58;
      }
    }
  }

LABEL_46:

  return v12;
}

SKUIViewController *__77__SKUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke(uint64_t a1)
{
  v2 = [[SKUIProductPageTableViewController alloc] initWithInAppPurchases:*(a1 + 32) clientContext:*(a1 + 40)];
  v3 = [(SKUIProductPageTableViewController *)v2 view];
  [v3 setAutoresizingMask:18];

  v4 = objc_alloc_init(SKUIViewController);
  [(SKUIViewController *)v4 setClientContext:*(a1 + 40)];
  [(SKUIViewController *)v4 addChildViewController:v2];
  [(SKUIViewController *)v4 showDefaultNavigationItems];
  v5 = [(SKUIViewController *)v4 view];
  v6 = [(SKUIProductPageTableViewController *)v2 view];
  [v5 addSubview:v6];

  v7 = [(SKUIProductPageTableViewController *)v2 view];
  v8 = [(SKUIViewController *)v4 view];
  [v8 bounds];
  [v7 setFrame:?];

  return v4;
}

SKUIViewController *__77__SKUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_2(uint64_t a1)
{
  v2 = [[SKUIProductPageTableViewController alloc] initWithReleaseNotes:*(a1 + 32) clientContext:*(a1 + 40)];
  v3 = [(SKUIProductPageTableViewController *)v2 view];
  [v3 setAutoresizingMask:18];

  v4 = objc_alloc_init(SKUIViewController);
  [(SKUIViewController *)v4 setClientContext:*(a1 + 40)];
  [(SKUIViewController *)v4 addChildViewController:v2];
  [(SKUIViewController *)v4 showDefaultNavigationItems];
  v5 = [(SKUIViewController *)v4 view];
  v6 = [(SKUIProductPageTableViewController *)v2 view];
  [v5 addSubview:v6];

  v7 = [(SKUIProductPageTableViewController *)v2 view];
  v8 = [(SKUIViewController *)v4 view];
  [v8 bounds];
  [v7 setFrame:?];

  return v4;
}

SKUIApplicationLicenseViewController *__77__SKUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_3(uint64_t a1)
{
  v2 = [[SKUIApplicationLicenseViewController alloc] initWithLicenseAgreementURL:*(a1 + 32)];
  [(SKUIViewController *)v2 setClientContext:*(a1 + 40)];

  return v2;
}

SKUIStorePageViewController *__77__SKUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc_init(SKUIStorePageViewController);
  [(SKUIStorePageViewController *)v2 setClientContext:*(a1 + 32)];
  v3 = [*(a1 + 40) artistName];
  [(SKUIStorePageViewController *)v2 setTitle:v3];

  [(SKUIStorePageViewController *)v2 loadURL:*(a1 + 48) withCompletionBlock:0];

  return v2;
}

SKUIDeveloperInfoViewController *__77__SKUIProductPageTableLinksSection_initWithItem_clientContext_askPermission___block_invoke_5(void *a1)
{
  v2 = [[SKUIDeveloperInfoViewController alloc] initWithDeveloperInfo:a1[4]];
  [(SKUIViewController *)v2 setClientContext:a1[5]];
  [(SKUIDeveloperInfoViewController *)v2 setTitle:a1[6]];

  return v2;
}

- (id)selectionActionForTableView:(id)a3 indexPath:(id)a4
{
  actions = self->_actions;
  v5 = [a4 row];

  return [(NSMutableArray *)actions objectAtIndex:v5];
}

- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"LK"];
  if (!v7)
  {
    v7 = [[SKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"LK"];
    [(SKUITableViewCell *)v7 setAccessoryType:1];
    v8 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (v8)
    {
      [(SKUITableViewCell *)v7 setBottomBorderColor:v8];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(SKUITableViewCell *)v7 setBottomBorderColor:v9];
    }

    v10 = [(SKUITableViewCell *)v7 textLabel];
    v11 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [v10 setFont:v11];

    v12 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v12)
    {
      [v10 setTextColor:v12];
    }

    else
    {
      v13 = [MEMORY[0x277D75348] blackColor];
      [v10 setTextColor:v13];
    }
  }

  v14 = [(SKUITableViewCell *)v7 textLabel];
  titles = self->_titles;
  v16 = [v6 row];

  v17 = [(NSMutableArray *)titles objectAtIndex:v16];
  [v14 setText:v17];

  return v7;
}

- (void)initWithItem:clientContext:askPermission:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageTableLinksSection initWithItem:clientContext:askPermission:]";
}

@end