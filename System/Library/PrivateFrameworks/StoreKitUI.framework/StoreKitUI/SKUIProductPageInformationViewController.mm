@interface SKUIProductPageInformationViewController
- (SKUIProductPageInformationViewController)initWithItem:(id)item clientContext:(id)context;
- (SKUIProductPageInformationViewController)initWithProductInformation:(id)information clientContext:(id)context;
- (id)_contentRatingResourceLoader;
- (id)_informationLinesWithItem:(id)item ratingImage:(id)image;
- (id)_informationLinesWithProductInfo:(id)info;
- (void)_updateLinesWithRatingImage:(id)image;
- (void)dealloc;
- (void)loadView;
@end

@implementation SKUIProductPageInformationViewController

- (SKUIProductPageInformationViewController)initWithItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
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
    objc_storeStrong(&v9->_clientContext, context);
    objc_storeStrong(&v10->_item, item);
  }

  return v10;
}

- (SKUIProductPageInformationViewController)initWithProductInformation:(id)information clientContext:(id)context
{
  informationCopy = information;
  contextCopy = context;
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
    objc_storeStrong(&v9->_clientContext, context);
    objc_storeStrong(&v10->_productInfo, information);
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

  secondaryContentRatings = [(SKUIProductPageItem *)self->_item secondaryContentRatings];
  v9 = [secondaryContentRatings count];

  if (v9)
  {
    if (!self->_contentRatingArtworkLoader)
    {
      _contentRatingResourceLoader = [(SKUIProductPageInformationViewController *)self _contentRatingResourceLoader];
      contentRatingArtworkLoader = self->_contentRatingArtworkLoader;
      self->_contentRatingArtworkLoader = _contentRatingResourceLoader;

      [(SKUIContentRatingArtworkResourceLoader *)self->_contentRatingArtworkLoader addObserver:self];
    }

    secondaryContentRatings2 = [(SKUIProductPageItem *)self->_item secondaryContentRatings];
    lastObject = [secondaryContentRatings2 lastObject];

    placeholderImage = [(SKUIContentRatingArtworkResourceLoader *)self->_contentRatingArtworkLoader cachedImageForContentRating:lastObject withClientContext:self->_clientContext];
    if (!placeholderImage)
    {
      [(SKUIContentRatingArtworkResourceLoader *)self->_contentRatingArtworkLoader loadImageForContentRating:lastObject clientContent:self->_clientContext reason:1];
      placeholderImage = [(SKUIContentRatingArtworkResourceLoader *)self->_contentRatingArtworkLoader placeholderImage];
    }

    v15 = placeholderImage;
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
  clientContext = [(SKUIProductPageInformationViewController *)self clientContext];
  v5 = [(SKUIResourceLoader *)v3 initWithClientContext:clientContext];

  v6 = [[SKUIContentRatingArtworkResourceLoader alloc] initWithArtworkLoader:v5];
  v7 = [SKUIStyledImageDataConsumer appIconConsumerWithSize:11.0, 11.0];
  [(SKUIContentRatingArtworkResourceLoader *)v6 setImageDataConsumer:v7];

  return v6;
}

- (id)_informationLinesWithItem:(id)item ratingImage:(id)image
{
  v116[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  imageCopy = image;
  array = [MEMORY[0x277CBEB18] array];
  artistName = [itemCopy artistName];
  sellerName = [itemCopy sellerName];
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
    v116[1] = sellerName;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:2];
    [array addObject:v21];

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
    v18 = artistName;
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
      v18 = sellerName;
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
      v18 = artistName;
    }
  }

  v17[1] = v18;
  v25 = [*(v11 + 2656) arrayWithObjects:? count:?];
  [array addObject:v25];

LABEL_21:
  categoryName = [itemCopy categoryName];
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
    v112[1] = categoryName;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:2];
    [array addObject:v30];
  }

  v98 = sellerName;
  if ([(SKUIItem *)self->_item itemKind]== 17)
  {
    lastUpdateDateString = categoryName;
  }

  else
  {
    lastUpdateDateString = [(SKUIProductPageItem *)self->_item lastUpdateDateString];

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
      v111[1] = lastUpdateDateString;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:2];
      [array addObject:v35];
    }
  }

  versionString = [(SKUIItem *)self->_item versionString];

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
    v110[1] = versionString;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
    [array addObject:v40];
  }

  v99 = artistName;
  if ([itemCopy itemKind] == 17)
  {
    childItemIdentifiers = [itemCopy childItemIdentifiers];
    v42 = [childItemIdentifiers count];

    if (v42 < 2)
    {
      v97 = versionString;
      goto LABEL_53;
    }

    v43 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v43 setNumberStyle:1];
    v44 = [MEMORY[0x277CCABB0] numberWithInteger:v42];
    fileSizeText = [v43 stringFromNumber:v44];

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
    v108[1] = fileSizeText;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:2];
    [array addObject:v52];
  }

  else
  {
    primaryItemOffer = [itemCopy primaryItemOffer];
    fileSizeText = [primaryItemOffer fileSizeText];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v97 = fileSizeText;
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
    v109[1] = fileSizeText;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:2];
    [array addObject:v51];
  }

  v97 = fileSizeText;

LABEL_53:
  contentRating = [itemCopy contentRating];
  contentRatingName = [contentRating contentRatingName];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_104;
  }

  v92 = imageCopy;
  ageBandRange = [itemCopy ageBandRange];
  if (ageBandRange == 0x7FFFFFFFFFFFFFFFLL)
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
    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:ageBandRange];
    v94 = [v59 stringFromNumber:v60];

    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:ageBandRange + v58];
    v96 = [v59 stringFromNumber:v61];
  }

  contentRatingAdvisories = [contentRating contentRatingAdvisories];
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

  if ([contentRatingAdvisories count])
  {
    v64 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if (ageBandRange || !v96)
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
        [MEMORY[0x277CCACA8] stringWithValidatedFormat:v69 validFormatSpecifiers:@"%@%@%@" error:0, v94, v96, contentRatingName];
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
        [MEMORY[0x277CCACA8] stringWithValidatedFormat:v69 validFormatSpecifiers:@"%@" error:0, contentRatingName, v90, v91];
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
      [MEMORY[0x277CCACA8] stringWithValidatedFormat:v69 validFormatSpecifiers:@"%@%@" error:0, v96, contentRatingName, v91];
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
    imageCopy = v92;

    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __82__SKUIProductPageInformationViewController__informationLinesWithItem_ratingImage___block_invoke;
    v100[3] = &unk_2781F82D0;
    v75 = v64;
    v101 = v75;
    v76 = v74;
    v102 = v76;
    [contentRatingAdvisories enumerateObjectsUsingBlock:v100];
    v105[0] = v93;
    v105[1] = v75;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:2];
    [array addObject:v77];

    if (v92)
    {
      v104[0] = &stru_2827FFAC8;
      v104[1] = &stru_2827FFAC8;
      v104[2] = v92;
      v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:3];
      [array addObject:v78];
    }

    v79 = v93;
    goto LABEL_103;
  }

  if (ageBandRange || !v96)
  {
    if (!v94)
    {
      imageCopy = v92;
      goto LABEL_97;
    }

    imageCopy = v92;
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
    [MEMORY[0x277CCACA8] stringWithValidatedFormat:v70 validFormatSpecifiers:@"%@%@%@" error:0, contentRatingName, v94, v96];
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
    imageCopy = v92;
    [MEMORY[0x277CCACA8] stringWithValidatedFormat:v70 validFormatSpecifiers:@"%@%@" error:0, contentRatingName, v96, v91];
  }
  v80 = ;

  contentRatingName = v80;
LABEL_97:
  if (imageCopy)
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
    v82 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v75 validFormatSpecifiers:@"%@" error:0, contentRatingName];

    v107[0] = v93;
    v107[1] = v82;
    v107[2] = imageCopy;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:3];
    [array addObject:v83];

    v79 = v93;
    contentRatingName = v82;
  }

  else
  {
    v79 = v93;
    v106[0] = v93;
    v106[1] = contentRatingName;
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:2];
    [array addObject:v75];
  }

LABEL_103:

LABEL_104:
  installationRequirementsDescription = [itemCopy installationRequirementsDescription];

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
    v103[1] = installationRequirementsDescription;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];
    [array addObject:v88];
  }

  return array;
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

- (id)_informationLinesWithProductInfo:(id)info
{
  v3 = MEMORY[0x277CBEB18];
  infoCopy = info;
  array = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SKUIProductPageInformationViewController__informationLinesWithProductInfo___block_invoke;
  v8[3] = &unk_2781FD808;
  v6 = array;
  v9 = v6;
  [infoCopy enumerateEntriesWithBlock:v8];

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

- (void)_updateLinesWithRatingImage:(id)image
{
  productInfo = self->_productInfo;
  if (productInfo)
  {
    [(SKUIProductPageInformationViewController *)self _informationLinesWithProductInfo:productInfo, image];
  }

  else
  {
    [(SKUIProductPageInformationViewController *)self _informationLinesWithItem:self->_item ratingImage:image];
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