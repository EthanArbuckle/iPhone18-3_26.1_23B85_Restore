@interface SKUIProductPageItem
- (SKUIProductPageItem)initWithIdentifier:(id)identifier mediaResult:(id)result;
- (SKUIProductPageItem)initWithLookupDictionary:(id)dictionary;
- (id)loadedChildItems;
- (int64_t)numberOfChildItems;
- (void)_setVersionHistory:(id)history;
@end

@implementation SKUIProductPageItem

- (SKUIProductPageItem)initWithIdentifier:(id)identifier mediaResult:(id)result
{
  v60 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  resultCopy = result;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIProductPageItem initWithIdentifier:mediaResult:];
  }

  responseDataItems = [resultCopy responseDataItems];
  firstObject = [responseDataItems firstObject];
  v10 = [firstObject objectForKeyedSubscript:@"attributes"];

  if (!v10)
  {
    v11 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v58.receiver = self;
  v58.super_class = SKUIProductPageItem;
  v11 = [(SKUIItem *)&v58 initWithIdentifier:identifierCopy mediaResultDictionary:v10];
  if (v11)
  {
    v12 = [v10 objectForKeyedSubscript:@"platformAttributes"];
    self = [v12 objectForKeyedSubscript:@"ios"];

    v13 = [(SKUIProductPageItem *)self objectForKey:@"copyright"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      copyrightString = v11->_copyrightString;
      v11->_copyrightString = v14;
    }

    v16 = [(SKUIProductPageItem *)self objectForKey:@"releaseDate"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v17 setDateFormat:@"yyyy-MM-dd"];
      v18 = [v17 dateFromString:v16];
      [v17 setDateFormat:0];
      [v17 setDateStyle:2];
      [v17 setTimeStyle:0];
      v19 = [v17 stringFromDate:v18];
      lastUpdateDateString = v11->_lastUpdateDateString;
      v11->_lastUpdateDateString = v19;
    }

    v21 = [v10 objectForKey:@"url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      shortenedProductPageURLString = v11->_shortenedProductPageURLString;
      v11->_shortenedProductPageURLString = v22;
    }

    v24 = [v10 objectForKey:@"contentRatingsBySystem"];
    objc_opt_class();
    v53 = v24;
    if (objc_opt_isKindOfClass())
    {
      v47 = v21;
      v48 = v10;
      selfCopy = self;
      v50 = resultCopy;
      v51 = identifierCopy;
      keyEnumerator = [v24 keyEnumerator];
      v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v26 = keyEnumerator;
      v27 = [v26 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v55;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v55 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v54 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [v31 isEqualToString:@"appsApple"];
              v33 = [SKUIItemContentRating alloc];
              v34 = [v53 objectForKey:v31];
              v35 = [v31 copy];
              v36 = [(SKUIItemContentRating *)v33 initWithContentRatingDictionary:v34 systemName:v35];
              v37 = v36;
              if (v32)
              {
                contentRating = v11->_contentRating;
                v11->_contentRating = v36;

                v37 = v34;
              }

              else
              {

                [v52 addObject:v37];
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v54 objects:v59 count:16];
        }

        while (v28);
      }

      v39 = [MEMORY[0x277CBEA60] arrayWithArray:v52];
      secondaryContentRatings = v11->_secondaryContentRatings;
      v11->_secondaryContentRatings = v39;

      resultCopy = v50;
      identifierCopy = v51;
      v10 = v48;
      self = selfCopy;
      v21 = v47;
    }

    v41 = [(SKUIProductPageItem *)self objectForKey:@"editorialNotes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = objc_alloc_init(SKUIStoreNotes);
      storeNotes = v11->_storeNotes;
      v11->_storeNotes = v42;

      v44 = [v41 objectForKey:@"tagline"];
      v45 = v21;
      v21 = v44;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SKUIStoreNotes *)v11->_storeNotes setStandardNotes:v21];
      }
    }

    goto LABEL_32;
  }

LABEL_33:

  return v11;
}

- (SKUIProductPageItem)initWithLookupDictionary:(id)dictionary
{
  v141 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [SKUIProductPageItem initWithLookupDictionary:];
    }
  }

  v137.receiver = self;
  v137.super_class = SKUIProductPageItem;
  v7 = [(SKUIItem *)&v137 initWithLookupDictionary:dictionaryCopy];

  if (v7)
  {
    v8 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A2F8]];
    v9 = 0x277CCA000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v8];
      artistPageURL = v7->_artistPageURL;
      v7->_artistPageURL = v10;
    }

    v12 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A320]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      copyrightString = v7->_copyrightString;
      v7->_copyrightString = v13;
    }

    v15 = [dictionaryCopy objectForKey:@"regularPriceFormatted"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      regularPriceString = v7->_regularPriceString;
      v7->_regularPriceString = v16;
    }

    v18 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A398]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v19 setDateFormat:@"yyyy-MM-dd"];
      v20 = [v19 dateFromString:v18];
      if (v20)
      {
        [v19 setDateFormat:0];
        [v19 setDateStyle:2];
        [v19 setTimeStyle:0];
        v21 = [v19 stringFromDate:v20];
      }

      else
      {
        v21 = [v18 copy];
      }

      lastUpdateDateString = v7->_lastUpdateDateString;
      v7->_lastUpdateDateString = v21;
    }

    v23 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A3D8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      shortenedProductPageURLString = v7->_shortenedProductPageURLString;
      v7->_shortenedProductPageURLString = v24;
    }

    v26 = [dictionaryCopy objectForKey:@"childrenIds"];
    objc_opt_class();
    v120 = v26;
    v123 = v7;
    v118 = dictionaryCopy;
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      childItemIdentifiers = v7->_childItemIdentifiers;
      v7->_childItemIdentifiers = v27;

      v29 = [dictionaryCopy objectForKey:@"children"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v115 = v23;
        v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
        loadedChildItems = v7->_loadedChildItems;
        v7->_loadedChildItems = v30;

        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v32 = v7->_childItemIdentifiers;
        v33 = [(NSArray *)v32 countByEnumeratingWithState:&v133 objects:v140 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v134;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v134 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v133 + 1) + 8 * i);
              stringValue = [v37 stringValue];
              v39 = [v29 objectForKey:stringValue];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v40 = [[SKUIItem alloc] initWithLookupDictionary:v39];
                if (v40)
                {
                  [(NSMutableDictionary *)v7->_loadedChildItems setObject:v40 forKey:v37];
                }
              }
            }

            v34 = [(NSArray *)v32 countByEnumeratingWithState:&v133 objects:v140 count:16];
          }

          while (v34);
        }

        v23 = v115;
        dictionaryCopy = v118;
        v9 = 0x277CCA000uLL;
      }
    }

    v41 = [dictionaryCopy objectForKey:@"appBundleAdamIds"];
    objc_opt_class();
    v119 = v41;
    if (objc_opt_isKindOfClass())
    {
      v42 = [v41 copy];
      parentBundleItemIdentifiers = v7->_parentBundleItemIdentifiers;
      v7->_parentBundleItemIdentifiers = v42;
    }

    v44 = [dictionaryCopy objectForKey:@"contentRatingsBySystem"];
    objc_opt_class();
    v124 = v44;
    if (objc_opt_isKindOfClass())
    {
      v116 = v23;
      keyEnumerator = [v44 keyEnumerator];
      v121 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v46 = keyEnumerator;
      v47 = [v46 countByEnumeratingWithState:&v129 objects:v139 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v130;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v130 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v129 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v52 = v9;
              v53 = [v51 isEqualToString:@"appsApple"];
              v54 = [SKUIItemContentRating alloc];
              v55 = [v124 objectForKey:v51];
              v56 = [v51 copy];
              v57 = [(SKUIItemContentRating *)v54 initWithContentRatingDictionary:v55 systemName:v56];
              v58 = v57;
              if (v53)
              {
                contentRating = v123->_contentRating;
                v123->_contentRating = v57;

                v58 = v55;
              }

              else
              {

                [(SKUIItemContentRating *)v121 addObject:v58];
              }

              v9 = v52;
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v129 objects:v139 count:16];
        }

        while (v48);
      }

      v60 = v121;
      v61 = [MEMORY[0x277CBEA60] arrayWithArray:v121];
      v7 = v123;
      secondaryContentRatings = v123->_secondaryContentRatings;
      v123->_secondaryContentRatings = v61;

      v23 = v116;
      dictionaryCopy = v118;
    }

    else
    {
      v46 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A310]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_54:

        v64 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A328]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v65 = [v64 objectForKey:*MEMORY[0x277D6A330]];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v66 = [v65 copy];
            itemDescription = v7->_itemDescription;
            v7->_itemDescription = v66;
          }
        }

        else
        {
          v65 = v23;
        }

        v68 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A3E0]];
        objc_opt_class();
        v122 = v68;
        if (objc_opt_isKindOfClass())
        {
          v69 = [v68 objectForKey:*MEMORY[0x277D6A358]];

          if ((objc_opt_respondsToSelector() & 1) != 0 && [v69 BOOLValue])
          {
            v7->_supportedFeatures |= 1uLL;
          }

          v70 = [v68 objectForKey:*MEMORY[0x277D6A370]];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v71 = [v70 copy];
            licenseAgreementURLString = v7->_licenseAgreementURLString;
            v7->_licenseAgreementURLString = v71;
          }

          v73 = [v68 objectForKey:*MEMORY[0x277D6A388]];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v74 = [v73 copy];
            privacyPolicyURLString = v7->_privacyPolicyURLString;
            v7->_privacyPolicyURLString = v74;
          }

          v76 = [v68 objectForKey:*MEMORY[0x277D6A3A8]];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v77 = [v76 copy];
            installationRequirementsDescription = v7->_installationRequirementsDescription;
            v7->_installationRequirementsDescription = v77;
          }

          v79 = [v68 objectForKey:*MEMORY[0x277D6A400]];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v80 = [v79 copy];
            supportURLString = v7->_supportURLString;
            v7->_supportURLString = v80;
          }

          v82 = [v68 objectForKey:*MEMORY[0x277D6A348]];

          if (objc_opt_respondsToSelector())
          {
            -[SKUIItem _setHasInAppPurchases:](v7, "_setHasInAppPurchases:", [v82 BOOLValue]);
          }

          v83 = [v68 objectForKey:@"developerInfo"];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v84 = [[SKUIDeveloperInfo alloc] initWithDeveloperDictionary:v83];
            developerInfo = v7->_developerInfo;
            v7->_developerInfo = v84;

            v86 = v7->_developerInfo;
            artistName = [(SKUIItem *)v7 artistName];
            [(SKUIDeveloperInfo *)v86 setTradeName:artistName];
          }

          v65 = [v68 objectForKey:@"seller"];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v88 = [v65 copy];
            sellerName = v7->_sellerName;
            v7->_sellerName = v88;
          }
        }

        v90 = [dictionaryCopy objectForKey:@"supportsPassbook"];

        if ((objc_opt_respondsToSelector() & 1) != 0 && [v90 BOOLValue])
        {
          v7->_supportedFeatures |= 4uLL;
        }

        if ([(SKUIItem *)v7 isNewsstandApp])
        {
          v7->_supportedFeatures |= 8uLL;
        }

        v91 = [dictionaryCopy objectForKey:@"gameCenterInfo"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v92 = [v91 objectForKey:@"hasLiveAchievements"];

          if ((objc_opt_respondsToSelector() & 1) != 0 && [v92 BOOLValue])
          {
            v7->_supportedGameCenterFeatures |= 2uLL;
          }

          v93 = [v91 objectForKey:@"hasLiveLeaderboards"];

          if ((objc_opt_respondsToSelector() & 1) != 0 && [v93 BOOLValue])
          {
            v7->_supportedGameCenterFeatures |= 4uLL;
          }

          v94 = [v91 objectForKey:@"usesGameControllerAPI"];

          if ((objc_opt_respondsToSelector() & 1) != 0 && [v94 BOOLValue])
          {
            v7->_supportedGameCenterFeatures |= 1uLL;
          }

          v95 = [v91 objectForKey:@"usesMultiplayerAPI"];

          if ((objc_opt_respondsToSelector() & 1) != 0 && [v95 BOOLValue])
          {
            v7->_supportedGameCenterFeatures |= 8uLL;
          }

          v90 = [v91 objectForKey:@"usesTurnBasedAPI"];

          if ((objc_opt_respondsToSelector() & 1) != 0 && [v90 BOOLValue])
          {
            v7->_supportedGameCenterFeatures |= 0x10uLL;
          }
        }

        v117 = v91;
        v96 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A3F8]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v97 = objc_alloc_init(SKUIStoreNotes);
          storeNotes = v7->_storeNotes;
          v7->_storeNotes = v97;

          v99 = [v96 objectForKey:*MEMORY[0x277D6A3E8]];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(SKUIStoreNotes *)v7->_storeNotes setStandardNotes:v99];
          }
        }

        else
        {
          v99 = v90;
        }

        v100 = SKUIItemScreenshotsForDictionary(dictionaryCopy);
        screenshots = v7->_screenshots;
        v7->_screenshots = v100;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v114 = v64;
          v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          v128 = 0u;
          v103 = v99;
          v104 = [v103 countByEnumeratingWithState:&v125 objects:v138 count:16];
          if (v104)
          {
            v105 = v104;
            v106 = *v126;
            do
            {
              for (k = 0; k != v105; ++k)
              {
                if (*v126 != v106)
                {
                  objc_enumerationMutation(v103);
                }

                v108 = *(*(&v125 + 1) + 8 * k);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v109 = [[SKUIScreenshot alloc] initWithScreenshotDictionary:v108];
                  if (v109)
                  {
                    [v102 addObject:v109];
                  }
                }
              }

              v105 = [v103 countByEnumeratingWithState:&v125 objects:v138 count:16];
            }

            while (v105);
          }

          v110 = [v102 copy];
          v7 = v123;
          v111 = v123->_screenshots;
          v123->_screenshots = v110;

          dictionaryCopy = v118;
          v64 = v114;
        }

        goto LABEL_115;
      }

      v63 = [[SKUIItemContentRating alloc] initWithContentRatingDictionary:v46 systemName:@"appsApple"];
      v60 = v7->_contentRating;
      v7->_contentRating = v63;
    }

    goto LABEL_54;
  }

LABEL_115:
  v112 = v7;

  return v112;
}

- (id)loadedChildItems
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_childItemIdentifiers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_loadedChildItems objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        if (v9)
        {
          [array addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (int64_t)numberOfChildItems
{
  if (self->_childItemIdentifiers)
  {
    childItemIdentifiers = self->_childItemIdentifiers;

    return [(NSArray *)childItemIdentifiers count];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SKUIProductPageItem;
    return [(SKUIItem *)&v6 numberOfChildItems];
  }
}

- (void)_setVersionHistory:(id)history
{
  historyCopy = history;
  if ([historyCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    [(NSString *)v5 setDateStyle:2];
    [(NSString *)v5 setTimeStyle:0];
    v6 = [historyCopy objectAtIndex:0];
    date = [v6 date];
    v8 = [(NSString *)v5 stringFromDate:date];
    lastUpdateDateString = self->_lastUpdateDateString;
    self->_lastUpdateDateString = v8;

    objc_storeStrong(&self->_releaseNotes, history);
    changeNotes = [v6 changeNotes];
    updateDescription = self->_updateDescription;
    self->_updateDescription = changeNotes;
  }

  else
  {
    releaseNotes = self->_releaseNotes;
    self->_releaseNotes = 0;

    v5 = self->_updateDescription;
    self->_updateDescription = 0;
  }
}

- (void)initWithIdentifier:mediaResult:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageItem initWithIdentifier:mediaResult:]";
}

- (void)initWithLookupDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageItem initWithLookupDictionary:]";
}

@end