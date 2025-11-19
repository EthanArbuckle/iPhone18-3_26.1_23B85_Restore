@interface SKUIProductPageInformationViewController
- (SKUIProductPageInformationViewController)initWithItem:(id)a3 clientContext:(id)a4;
- (SKUIProductPageInformationViewController)initWithProductInformation:(id)a3 clientContext:(id)a4;
- (id)_contentRatingResourceLoader;
- (id)_informationLinesWithItem:(id)a3 ratingImage:(id)a4;
- (id)_informationLinesWithProductInfo:(id)a3;
- (void)_updateLinesWithRatingImage:(id)a3;
- (void)dealloc;
- (void)loadView;
@end

@implementation SKUIProductPageInformationViewController

- (SKUIProductPageInformationViewController)initWithItem:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageInformationViewController initWithItem:clientContext:];
  }

  v12.receiver = self;
  v12.super_class = SKUIProductPageInformationViewController;
  v9 = [(SKUIProductPageInformationViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, a4);
    objc_storeStrong(&v10->_item, a3);
  }

  return v10;
}

- (SKUIProductPageInformationViewController)initWithProductInformation:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageInformationViewController initWithProductInformation:clientContext:];
  }

  v12.receiver = self;
  v12.super_class = SKUIProductPageInformationViewController;
  v9 = [(SKUIProductPageInformationViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, a4);
    objc_storeStrong(&v10->_productInfo, a3);
  }

  return v10;
}

- (void)dealloc
{
  [(SKUIContentRatingArtworkResourceLoader *)self->_contentRatingArtworkLoader removeObserver:self];
  v3.receiver = self;
  v3.super_class = SKUIProductPageInformationViewController;
  [(SKUIProductPageInformationViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(SKUIProductInformationView);
  informationView = self->_informationView;
  self->_informationView = v3;

  v5 = self->_informationView;
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_TITLE" inTable:@"ProductPage"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_TITLE" inBundles:0 inTable:@"ProductPage"];
  }
  v7 = ;
  [(SKUIProductInformationView *)v5 setTitle:v7];

  v8 = [(SKUIProductPageItem *)self->_item secondaryContentRatings];
  v9 = [v8 count];

  if (v9)
  {
    if (!self->_contentRatingArtworkLoader)
    {
      v10 = [(SKUIProductPageInformationViewController *)self _contentRatingResourceLoader];
      contentRatingArtworkLoader = self->_contentRatingArtworkLoader;
      self->_contentRatingArtworkLoader = v10;

      [(SKUIContentRatingArtworkResourceLoader *)self->_contentRatingArtworkLoader addObserver:self];
    }

    v12 = [(SKUIProductPageItem *)self->_item secondaryContentRatings];
    v13 = [v12 lastObject];

    v14 = [(SKUIContentRatingArtworkResourceLoader *)self->_contentRatingArtworkLoader cachedImageForContentRating:v13 withClientContext:self->_clientContext];
    if (!v14)
    {
      [(SKUIContentRatingArtworkResourceLoader *)self->_contentRatingArtworkLoader loadImageForContentRating:v13 clientContent:self->_clientContext reason:1];
      v14 = [(SKUIContentRatingArtworkResourceLoader *)self->_contentRatingArtworkLoader placeholderImage];
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [(SKUIProductPageInformationViewController *)self _updateLinesWithRatingImage:v15];
  [(SKUIProductPageInformationViewController *)self setView:self->_informationView];
}

- (id)_contentRatingResourceLoader
{
  v3 = [SKUIResourceLoader alloc];
  v4 = [(SKUIProductPageInformationViewController *)self clientContext];
  v5 = [(SKUIResourceLoader *)v3 initWithClientContext:v4];

  v6 = [[SKUIContentRatingArtworkResourceLoader alloc] initWithArtworkLoader:v5];
  v7 = [SKUIStyledImageDataConsumer appIconConsumerWithSize:11.0, 11.0];
  [(SKUIContentRatingArtworkResourceLoader *)v6 setImageDataConsumer:v7];

  return v6;
}

- (id)_informationLinesWithItem:(id)a3 ratingImage:(id)a4
{
  v116[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [v6 artistName];
  v10 = [v6 sellerName];
  objc_opt_class();
  v11 = 0x277CBE000uLL;
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_SELLER" inTable:@"ProductPage"];
    }

    else
    {
      v19 = 0;
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_SELLER" inBundles:0 inTable:@"ProductPage"];
    }
    v20 = ;

    v116[0] = v20;
    v116[1] = v10;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:2];
    [v8 addObject:v21];

    v22 = self->_clientContext;
    if (v22)
    {
      [(SKUIClientContext *)v22 localizedStringForKey:@"PRODUCT_PAGE_INFO_DEVELOPER" inTable:@"ProductPage"];
    }

    else
    {
      v23 = 0;
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_DEVELOPER" inBundles:0 inTable:@"ProductPage"];
    }
    v16 = ;

    v115 = v16;
    v17 = &v115;
    v18 = v9;
    v11 = 0x277CBE000;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = self->_clientContext;
      if (v13)
      {
        [(SKUIClientContext *)v13 localizedStringForKey:@"PRODUCT_PAGE_INFO_SELLER" inTable:@"ProductPage"];
      }

      else
      {
        v15 = 0;
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_SELLER" inBundles:0 inTable:@"ProductPage"];
      }
      v16 = ;

      v114 = v16;
      v17 = &v114;
      v18 = v10;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_21;
      }

      v14 = self->_clientContext;
      if (v14)
      {
        [(SKUIClientContext *)v14 localizedStringForKey:@"PRODUCT_PAGE_INFO_SELLER" inTable:@"ProductPage"];
      }

      else
      {
        v24 = 0;
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_SELLER" inBundles:0 inTable:@"ProductPage"];
      }
      v16 = ;

      v113 = v16;
      v17 = &v113;
      v18 = v9;
    }
  }

  v17[1] = v18;
  v25 = [*(v11 + 2656) arrayWithObjects:? count:?];
  [v8 addObject:v25];

LABEL_21:
  v26 = [v6 categoryName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = self->_clientContext;
    if (v27)
    {
      [(SKUIClientContext *)v27 localizedStringForKey:@"PRODUCT_PAGE_INFO_CATEGORY" inTable:@"ProductPage"];
    }

    else
    {
      v28 = 0;
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_CATEGORY" inBundles:0 inTable:@"ProductPage"];
    }
    v29 = ;

    v112[0] = v29;
    v112[1] = v26;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:2];
    [v8 addObject:v30];
  }

  v98 = v10;
  if ([(SKUIItem *)self->_item itemKind]== 17)
  {
    v31 = v26;
  }

  else
  {
    v31 = [(SKUIProductPageItem *)self->_item lastUpdateDateString];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = self->_clientContext;
      if (v32)
      {
        [(SKUIClientContext *)v32 localizedStringForKey:@"PRODUCT_PAGE_INFO_UPDATED" inTable:@"ProductPage"];
      }

      else
      {
        v33 = 0;
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_UPDATED" inBundles:0 inTable:@"ProductPage"];
      }
      v34 = ;

      v111[0] = v34;
      v111[1] = v31;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:2];
      [v8 addObject:v35];
    }
  }

  v36 = [(SKUIItem *)self->_item versionString];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = self->_clientContext;
    if (v37)
    {
      [(SKUIClientContext *)v37 localizedStringForKey:@"PRODUCT_PAGE_INFO_VERSION" inTable:@"ProductPage"];
    }

    else
    {
      v38 = 0;
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_VERSION" inBundles:0 inTable:@"ProductPage"];
    }
    v39 = ;

    v110[0] = v39;
    v110[1] = v36;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
    [v8 addObject:v40];
  }

  v99 = v9;
  if ([v6 itemKind] == 17)
  {
    v41 = [v6 childItemIdentifiers];
    v42 = [v41 count];

    if (v42 < 2)
    {
      v97 = v36;
      goto LABEL_53;
    }

    v43 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v43 setNumberStyle:1];
    v44 = [MEMORY[0x277CCABB0] numberWithInteger:v42];
    v47 = [v43 stringFromNumber:v44];

    v45 = self->_clientContext;
    if (v45)
    {
      [(SKUIClientContext *)v45 localizedStringForKey:@"PRODUCT_PAGE_INFO_BUNDLE_APP_COUNT" inTable:@"ProductPage"];
    }

    else
    {
      v50 = 0;
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_BUNDLE_APP_COUNT" inBundles:0 inTable:@"ProductPage"];
    }
    v51 = ;

    v108[0] = v51;
    v108[1] = v47;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:2];
    [v8 addObject:v52];
  }

  else
  {
    v46 = [v6 primaryItemOffer];
    v47 = [v46 fileSizeText];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v97 = v47;
      goto LABEL_53;
    }

    v49 = self->_clientContext;
    if (v49)
    {
      [(SKUIClientContext *)v49 localizedStringForKey:@"PRODUCT_PAGE_INFO_SIZE" inTable:@"ProductPage"];
    }

    else
    {
      v53 = 0;
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_SIZE" inBundles:0 inTable:@"ProductPage"];
    }
    v43 = ;

    v109[0] = v43;
    v109[1] = v47;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:2];
    [v8 addObject:v51];
  }

  v97 = v47;

LABEL_53:
  v54 = [v6 contentRating];
  v55 = [v54 contentRatingName];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_104;
  }

  v92 = v7;
  v57 = [v6 ageBandRange];
  if (v57 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v96 = 0;
    v94 = 0;
  }

  else
  {
    v58 = v56;
    v59 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v59 setNumberStyle:1];
    [v59 setUsesGroupingSeparator:0];
    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57];
    v94 = [v59 stringFromNumber:v60];

    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57 + v58];
    v96 = [v59 stringFromNumber:v61];
  }

  v95 = [v54 contentRatingAdvisories];
  v62 = self->_clientContext;
  if (v62)
  {
    [(SKUIClientContext *)v62 localizedStringForKey:@"PRODUCT_PAGE_INFO_RATING" inTable:@"ProductPage"];
  }

  else
  {
    v63 = 0;
    [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_RATING" inBundles:0 inTable:@"ProductPage"];
  }
  v93 = ;

  if ([v95 count])
  {
    v64 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if (v57 || !v96)
    {
      v67 = self->_clientContext;
      if (v94 && v96)
      {
        if (v67)
        {
          [(SKUIClientContext *)v67 localizedStringForKey:@"PRODUCT_PAGE_INFO_RATED_FOR_WITH_AGE_BAND" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_RATED_FOR_WITH_AGE_BAND" inBundles:0 inTable:@"ProductPage"];
        }
        v69 = ;
        [MEMORY[0x277CCACA8] stringWithValidatedFormat:v69 validFormatSpecifiers:@"%@%@%@" error:0, v94, v96, v55];
      }

      else
      {
        if (v67)
        {
          [(SKUIClientContext *)v67 localizedStringForKey:@"PRODUCT_PAGE_INFO_RATED_FOR" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_RATED_FOR" inBundles:0 inTable:@"ProductPage"];
        }
        v69 = ;
        [MEMORY[0x277CCACA8] stringWithValidatedFormat:v69 validFormatSpecifiers:@"%@" error:0, v55, v90, v91];
      }
    }

    else
    {
      v65 = self->_clientContext;
      if (v65)
      {
        [(SKUIClientContext *)v65 localizedStringForKey:@"PRODUCT_PAGE_INFO_RATED_FOR_WITH_AGE_MINIMUM" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_RATED_FOR_WITH_AGE_MINIMUM" inBundles:0 inTable:@"ProductPage"];
      }
      v69 = ;
      [MEMORY[0x277CCACA8] stringWithValidatedFormat:v69 validFormatSpecifiers:@"%@%@" error:0, v96, v55, v91];
    }
    v71 = ;
    [v64 appendString:v71];

    v72 = self->_clientContext;
    if (v72)
    {
      [(SKUIClientContext *)v72 localizedStringForKey:@"PRODUCT_PAGE_INFO_RATING_ADVISORY" inTable:@"ProductPage"];
    }

    else
    {
      v73 = 0;
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_RATING_ADVISORY" inBundles:0 inTable:@"ProductPage"];
    }
    v74 = ;
    v7 = v92;

    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __82__SKUIProductPageInformationViewController__informationLinesWithItem_ratingImage___block_invoke;
    v100[3] = &unk_2781F82D0;
    v75 = v64;
    v101 = v75;
    v76 = v74;
    v102 = v76;
    [v95 enumerateObjectsUsingBlock:v100];
    v105[0] = v93;
    v105[1] = v75;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:2];
    [v8 addObject:v77];

    if (v92)
    {
      v104[0] = &stru_2827FFAC8;
      v104[1] = &stru_2827FFAC8;
      v104[2] = v92;
      v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:3];
      [v8 addObject:v78];
    }

    v79 = v93;
    goto LABEL_103;
  }

  if (v57 || !v96)
  {
    if (!v94)
    {
      v7 = v92;
      goto LABEL_97;
    }

    v7 = v92;
    if (!v96)
    {
      goto LABEL_97;
    }

    v68 = self->_clientContext;
    if (v68)
    {
      [(SKUIClientContext *)v68 localizedStringForKey:@"PRODUCT_PAGE_INFO_RATING_WITH_AGE_BAND" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_RATING_WITH_AGE_BAND" inBundles:0 inTable:@"ProductPage"];
    }
    v70 = ;
    [MEMORY[0x277CCACA8] stringWithValidatedFormat:v70 validFormatSpecifiers:@"%@%@%@" error:0, v55, v94, v96];
  }

  else
  {
    v66 = self->_clientContext;
    if (v66)
    {
      [(SKUIClientContext *)v66 localizedStringForKey:@"PRODUCT_PAGE_INFO_RATING_WITH_AGE_MINIMUM" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_RATING_WITH_AGE_MINIMUM" inBundles:0 inTable:@"ProductPage"];
    }
    v70 = ;
    v7 = v92;
    [MEMORY[0x277CCACA8] stringWithValidatedFormat:v70 validFormatSpecifiers:@"%@%@" error:0, v55, v96, v91];
  }
  v80 = ;

  v55 = v80;
LABEL_97:
  if (v7)
  {
    v81 = self->_clientContext;
    if (v81)
    {
      [(SKUIClientContext *)v81 localizedStringForKey:@"PRODUCT_PAGE_INFO_RATING_WITH_SECONDARY_TYPE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_RATING_WITH_SECONDARY_TYPE" inBundles:0 inTable:@"ProductPage"];
    }
    v75 = ;
    v82 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v75 validFormatSpecifiers:@"%@" error:0, v55];

    v107[0] = v93;
    v107[1] = v82;
    v107[2] = v7;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:3];
    [v8 addObject:v83];

    v79 = v93;
    v55 = v82;
  }

  else
  {
    v79 = v93;
    v106[0] = v93;
    v106[1] = v55;
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:2];
    [v8 addObject:v75];
  }

LABEL_103:

LABEL_104:
  v84 = [v6 installationRequirementsDescription];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v85 = self->_clientContext;
    if (v85)
    {
      [(SKUIClientContext *)v85 localizedStringForKey:@"PRODUCT_PAGE_INFO_REQUIRES" inTable:@"ProductPage"];
    }

    else
    {
      v86 = 0;
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_INFO_REQUIRES" inBundles:0 inTable:@"ProductPage"];
    }
    v87 = ;

    v103[0] = v87;
    v103[1] = v84;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];
    [v8 addObject:v88];
  }

  return v8;
}

void __82__SKUIProductPageInformationViewController__informationLinesWithItem_ratingImage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:@"\n"];
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:*(a1 + 40) validFormatSpecifiers:@"%@" error:0, v7];
  [v5 appendString:v6];
}

- (id)_informationLinesWithProductInfo:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SKUIProductPageInformationViewController__informationLinesWithProductInfo___block_invoke;
  v8[3] = &unk_2781FD808;
  v6 = v5;
  v9 = v6;
  [v4 enumerateEntriesWithBlock:v8];

  return v6;
}

void __77__SKUIProductPageInformationViewController__informationLinesWithProductInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithObjects:{v7, v6, 0}];

  [*(a1 + 32) addObject:v8];
}

- (void)_updateLinesWithRatingImage:(id)a3
{
  productInfo = self->_productInfo;
  if (productInfo)
  {
    [(SKUIProductPageInformationViewController *)self _informationLinesWithProductInfo:productInfo, a3];
  }

  else
  {
    [(SKUIProductPageInformationViewController *)self _informationLinesWithItem:self->_item ratingImage:a3];
  }
  v6 = ;
  [(SKUIProductInformationView *)self->_informationView setInformationLines:v6];
}

- (void)initWithItem:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageInformationViewController initWithItem:clientContext:]";
}

- (void)initWithProductInformation:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageInformationViewController initWithProductInformation:clientContext:]";
}

@end