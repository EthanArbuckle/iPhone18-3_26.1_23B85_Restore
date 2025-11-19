@interface SKUIItem
- (BOOL)isEqual:(id)a3;
- (NSMutableDictionary)cacheRepresentation;
- (NSString)_downloadKind;
- (NSURL)largestArtworkURL;
- (SKUIItem)initWithCacheRepresentation:(id)a3;
- (SKUIItem)initWithIdentifier:(id)a3 mediaResultDictionary:(id)a4;
- (SKUIItem)initWithLookupDictionary:(id)a3;
- (SKUIStoreIdentifier)storeIdentifier;
- (_NSRange)ageBandRange;
- (id)initContainerItemWithItem:(id)a3;
- (id)lookupDictionary;
- (id)valueForMetricsField:(id)a3;
@end

@implementation SKUIItem

- (id)initContainerItemWithItem:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIItem initContainerItemWithItem:];
  }

  v25.receiver = self;
  v25.super_class = SKUIItem;
  v5 = [(SKUIItem *)&v25 init];
  if (v5)
  {
    v6 = [v4 artistName];
    artistName = v5->_artistName;
    v5->_artistName = v6;

    v8 = [v4 artworksProvider];
    artworksProvider = v5->_artworksProvider;
    v5->_artworksProvider = v8;

    v10 = [v4 categoryName];
    categoryName = v5->_categoryName;
    v5->_categoryName = v10;

    v12 = [v4 productPageURLString];
    productPageURLString = v5->_productPageURLString;
    v5->_productPageURLString = v12;

    v14 = [v4 collectionName];
    title = v5->_title;
    v5->_title = v14;

    if (v5->_productPageURLString)
    {
      v16 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5->_productPageURLString];
      v17 = [v16 path];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 rangeOfString:@"/id"];
        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = [v18 substringFromIndex:v19 + v20];
          v5->_itemIdentifier = [v21 longLongValue];
        }
      }
    }

    v22 = [v4 itemKind];
    if (v22 == 13)
    {
      v23 = 7;
      goto LABEL_15;
    }

    if (v22 == 14)
    {
      v23 = 15;
LABEL_15:
      v5->_itemKind = v23;
    }
  }

  return v5;
}

- (SKUIItem)initWithLookupDictionary:(id)a3
{
  v142 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SKUIItem initWithLookupDictionary:];
    }
  }

  v136.receiver = self;
  v136.super_class = SKUIItem;
  v7 = [(SKUIItem *)&v136 init];

  if (!v7)
  {
    goto LABEL_166;
  }

  v8 = [v4 objectForKey:*MEMORY[0x277D6A2F0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v7->_artistName, v8);
  }

  v9 = [v4 objectForKey:*MEMORY[0x277D6A308]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v7->_bundleID, v9);
  }

  v10 = [v4 objectForKey:*MEMORY[0x277D6A340]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 count])
  {
    v11 = [v10 objectAtIndex:0];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    v10 = v11;
    categoryName = v7->_categoryName;
    v7->_categoryName = v10;
  }

  else
  {
    categoryName = [v4 objectForKey:@"genres"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [categoryName firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 objectForKey:@"name"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v7->_categoryName, v14);
        }
      }
    }
  }

  v11 = v10;
LABEL_22:
  v15 = [v4 objectForKey:@"collectionName"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 copy];
    collectionName = v7->_collectionName;
    v7->_collectionName = v16;
  }

  v18 = [v4 objectForKey:*MEMORY[0x277D6A360]];

  if (objc_opt_respondsToSelector())
  {
    v7->_itemIdentifier = [v18 longLongValue];
  }

  v19 = [v4 objectForKey:@"feedUrl"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v7->_feedUrlString, v19);
  }

  v20 = [v4 objectForKey:@"appCount"];

  if (objc_opt_respondsToSelector())
  {
    v7->_numberOfChildItems = [v20 integerValue];
  }

  v21 = [v4 objectForKey:@"hasInAppPurchases"];

  if (objc_opt_respondsToSelector())
  {
    v7->_hasInAppPurchases = [v21 BOOLValue];
  }

  v22 = [v4 objectForKey:*MEMORY[0x277D6A390]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v7->_productPageURLString, v22);
  }

  v23 = [v4 objectForKey:*MEMORY[0x277D6A3A0]];

  objc_opt_class();
  v119 = v7;
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
    requiredCapabilities = v7->_requiredCapabilities;
    v7->_requiredCapabilities = v24;
LABEL_47:

    goto LABEL_48;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v4;
    requiredCapabilities = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v23 componentsSeparatedByString:@" "];
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v27 = v135 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v132 objects:v141 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v133;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v133 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v132 + 1) + 8 * i);
          if ([v32 length])
          {
            [(NSArray *)requiredCapabilities addObject:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v132 objects:v141 count:16];
      }

      while (v29);
    }

    v33 = [(NSArray *)requiredCapabilities copy];
    v7 = v119;
    v34 = v119->_requiredCapabilities;
    v119->_requiredCapabilities = v33;

    v4 = v26;
    goto LABEL_47;
  }

LABEL_48:
  v35 = [v4 objectForKey:*MEMORY[0x277D6A338]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v7->_title, v35);
  }

  v36 = [v4 objectForKey:*MEMORY[0x277D6A368]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v7->_itemKindString, v36);
    itemKindString = v7->_itemKindString;
    v38 = &off_2781F9EA0;
    v39 = 25;
    while (![*v38 isEqualToString:itemKindString])
    {
      v38 += 2;
      if (!--v39)
      {
        v40 = 0;
        goto LABEL_56;
      }
    }

    v40 = *(v38 - 1);
LABEL_56:
    v7 = v119;
    v119->_itemKind = v40;
  }

  v41 = [v4 objectForKey:*MEMORY[0x277D6A300]];

  v42 = [SKUIArtworkProvidingFactory artworkProviderForStoreResponse:v41];
  artworksProvider = v7->_artworksProvider;
  v7->_artworksProvider = v42;

  v44 = [v4 objectForKey:*MEMORY[0x277D6A378]];

  v45 = [SKUIArtworkProvidingFactory artworkProviderForStoreResponse:v44];
  newsstandArtworks = v7->_newsstandArtworks;
  v7->_newsstandArtworks = v45;

  if (v7->_newsstandArtworks)
  {
    v7->_newsstandApp = 1;
  }

  v47 = [v4 objectForKey:@"hasMessagesExtension"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7->_hasMessagesExtension = [v47 BOOLValue];
  }

  v48 = [v4 objectForKey:@"isHiddenFromSpringBoard"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7->_isHiddenFromSpringBoard = [v48 BOOLValue];
  }

  v49 = [v4 objectForKey:@"isGameControllerSupported"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7->_gameControllerSupported = [v49 BOOLValue];
  }

  v50 = [v4 objectForKey:@"requiresGameController"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7->_requiresGameController = [v50 BOOLValue];
  }

  v51 = [v4 objectForKey:@"ageBand"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = [v51 objectForKey:@"maxAge"];
    v109 = [v51 objectForKey:@"minAge"];
  }

  else
  {
    v109 = 0;
    v52 = 0;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v7->_ageBandRange.location = [v109 integerValue];
    v53 = [v52 integerValue] - v7->_ageBandRange.location;
  }

  else
  {
    v53 = 0;
    v7->_ageBandRange.location = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7->_ageBandRange.length = v53;
  v54 = [v4 objectForKey:*MEMORY[0x277D6A310]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = [v54 objectForKey:@"value"];

    v113 = v55;
    if (objc_opt_respondsToSelector())
    {
      v7->_parentalControlsRank = [v55 integerValue];
    }
  }

  else
  {
    v113 = v50;
  }

  v56 = [v4 objectForKey:*MEMORY[0x277D6A380]];
  objc_opt_class();
  v112 = v56;
  v108 = v54;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v56 count])
  {
    v57 = [v56 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [v57 objectForKey:@"version"];
      objc_opt_class();
      v59 = v52;
      if (objc_opt_isKindOfClass())
      {
        v60 = [v58 objectForKey:@"display"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v7->_versionString, v60);
        }

        v61 = [v58 objectForKey:@"externalId"];

        v113 = v61;
        if (objc_opt_respondsToSelector())
        {
          v7->_versionIdentifier = [v61 longLongValue];
        }
      }

      v62 = [[SKUIItemOffer alloc] initWithLookupDictionary:v57];
      itemOffer = v7->_itemOffer;
      v7->_itemOffer = v62;

      v64 = [v4 objectForKey:@"fileSizeByDevice"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SKUIItemOffer *)v7->_itemOffer _setFileSizeWithDeviceSizes:v64];
      }

      v52 = v59;
      v54 = v108;
    }

    v56 = v112;
  }

  v65 = [v4 objectForKey:@"deviceFamilies"];
  if (!v65)
  {
    v66 = [v4 objectForKey:*MEMORY[0x277D6A3E0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = [v66 objectForKey:@"deviceFamilies"];
    }

    else
    {
      v65 = 0;
    }

    v56 = v112;
  }

  objc_opt_class();
  v117 = v65;
  v106 = v52;
  v107 = v51;
  if (objc_opt_isKindOfClass())
  {
    v67 = v4;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v68 = v65;
    v69 = [v68 countByEnumeratingWithState:&v128 objects:v140 count:16];
    if (!v69)
    {
      goto LABEL_113;
    }

    v70 = v69;
    v71 = *v129;
    while (1)
    {
      for (j = 0; j != v70; ++j)
      {
        if (*v129 != v71)
        {
          objc_enumerationMutation(v68);
        }

        v73 = *(*(&v128 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v73 isEqualToString:@"ipad"])
          {
            v74 = 1;
          }

          else if ([v73 isEqualToString:@"iphone"])
          {
            v74 = 2;
          }

          else if ([v73 isEqualToString:@"ipod"])
          {
            v74 = 4;
          }

          else
          {
            if (![v73 isEqualToString:@"tvos"])
            {
              continue;
            }

            v74 = 8;
          }

          v119->_deviceFamilies |= v74;
        }
      }

      v70 = [v68 countByEnumeratingWithState:&v128 objects:v140 count:16];
      if (!v70)
      {
LABEL_113:

        v4 = v67;
        v7 = v119;
        v65 = v117;
        v51 = v107;
        v54 = v108;
        v56 = v112;
        goto LABEL_115;
      }
    }
  }

  v7->_deviceFamilies = 15;
LABEL_115:
  v75 = [v4 objectForKey:@"editorialBadgeInfo"];
  objc_opt_class();
  v110 = v75;
  if (objc_opt_isKindOfClass())
  {
    v76 = [v75 objectForKey:@"nameForDisplay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v7->_editorialBadge, v76);
    }

    v56 = v112;
  }

  if (!v7->_versionIdentifier)
  {
    v77 = [v4 objectForKey:@"version"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v7->_versionString, v77);
    }

    v78 = [v4 objectForKey:@"versionId"];

    v113 = v78;
    if (objc_opt_respondsToSelector())
    {
      v7->_versionIdentifier = [v78 longLongValue];
    }

    v56 = v112;
  }

  v79 = [v4 objectForKey:*MEMORY[0x277D6A418]];
  objc_opt_class();
  v111 = v79;
  if (objc_opt_isKindOfClass())
  {
    itemKind = v7->_itemKind;
    if (itemKind == 17 || itemKind == 12)
    {
      v81 = [v79 objectForKey:*MEMORY[0x277D6A410]];

      if (objc_opt_respondsToSelector())
      {
        v7->_numberOfUserRatings = [v81 integerValue];
      }

      v82 = MEMORY[0x277D6A428];
    }

    else
    {
      v81 = [v79 objectForKey:*MEMORY[0x277D6A408]];

      if (objc_opt_respondsToSelector())
      {
        v7->_numberOfUserRatings = [v81 integerValue];
      }

      v82 = MEMORY[0x277D6A420];
    }

    v83 = [v79 objectForKey:*v82];

    v113 = v83;
    v56 = v112;
    if (objc_opt_respondsToSelector())
    {
      [v83 floatValue];
      v7->_userRating = v84;
    }
  }

  v85 = [v4 objectForKey:@"videoPreviewByType"];
  objc_opt_class();
  v118 = v85;
  if (objc_opt_isKindOfClass())
  {
    v105 = v4;
    v86 = [MEMORY[0x277D75418] currentDevice];
    v87 = [v86 userInterfaceIdiom];

    if (v87 == 1)
    {
      v88 = &unk_2828D2F18;
    }

    else
    {
      v88 = &unk_2828D2F30;
    }

    v89 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    obj = v88;
    v116 = [v88 countByEnumeratingWithState:&v124 objects:v139 count:16];
    if (v116)
    {
      v115 = *v125;
LABEL_142:
      v90 = 0;
      while (1)
      {
        if (*v125 != v115)
        {
          objc_enumerationMutation(obj);
        }

        v91 = [v118 objectForKey:*(*(&v124 + 1) + 8 * v90)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v92 = v91;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v138 = v91;
            v92 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
          }

          else
          {
            v92 = 0;
          }
        }

        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v93 = v92;
        v94 = [v93 countByEnumeratingWithState:&v120 objects:v137 count:16];
        if (v94)
        {
          v95 = v94;
          v96 = *v121;
          do
          {
            for (k = 0; k != v95; ++k)
            {
              if (*v121 != v96)
              {
                objc_enumerationMutation(v93);
              }

              v98 = *(*(&v120 + 1) + 8 * k);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v99 = [[SKUIVideo alloc] initWithVideoDictionary:v98];
                if (v99)
                {
                  [v89 addObject:v99];
                }
              }
            }

            v95 = [v93 countByEnumeratingWithState:&v120 objects:v137 count:16];
          }

          while (v95);
        }

        v100 = [v89 count];
        v65 = v117;
        if (v100)
        {
          break;
        }

        if (++v90 == v116)
        {
          v116 = [obj countByEnumeratingWithState:&v124 objects:v139 count:16];
          if (v116)
          {
            goto LABEL_142;
          }

          break;
        }
      }
    }

    v101 = [v89 copy];
    v7 = v119;
    videos = v119->_videos;
    v119->_videos = v101;

    v4 = v105;
    v52 = v106;
    v51 = v107;
    v54 = v108;
    v56 = v112;
  }

LABEL_166:
  v103 = v7;

  return v103;
}

- (SKUIItem)initWithIdentifier:(id)a3 mediaResultDictionary:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIItem initWithIdentifier:mediaResultDictionary:];
  }

  v67.receiver = self;
  v67.super_class = SKUIItem;
  v8 = [(SKUIItem *)&v67 init];
  if (!v8)
  {
    goto LABEL_74;
  }

  if (objc_opt_respondsToSelector())
  {
    v8->_itemIdentifier = [v6 longLongValue];
  }

  v9 = [v7 objectForKeyedSubscript:@"platformAttributes"];
  v10 = [v9 objectForKeyedSubscript:@"ios"];

  v11 = [v7 objectForKey:@"artistName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v8->_artistName, v11);
  }

  v12 = [v10 objectForKey:@"bundleId"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v8->_bundleID, v12);
  }

  v13 = [v7 objectForKey:@"genreDisplayName"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v8->_categoryName, v13);
  }

  v14 = [v10 objectForKey:@"hasInAppPurchases"];

  if (objc_opt_respondsToSelector())
  {
    v8->_hasInAppPurchases = [v14 BOOLValue];
  }

  v15 = [v7 objectForKey:@"url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v8->_productPageURLString, v15);
  }

  v16 = [v10 objectForKey:@"requiredCapabilities"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
    requiredCapabilities = v8->_requiredCapabilities;
    v8->_requiredCapabilities = v17;
LABEL_31:

    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = v10;
    v56 = v7;
    v57 = v6;
    requiredCapabilities = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = [v16 componentsSeparatedByString:@" "];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v64;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v64 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v63 + 1) + 8 * i);
          if ([v24 length])
          {
            [(NSArray *)requiredCapabilities addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v21);
    }

    v25 = [(NSArray *)requiredCapabilities copy];
    v26 = v8->_requiredCapabilities;
    v8->_requiredCapabilities = v25;

    v7 = v56;
    v6 = v57;
    v10 = v55;
    goto LABEL_31;
  }

LABEL_32:
  v27 = [v7 objectForKey:@"name"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v8->_title, v27);
  }

  v28 = [v10 objectForKey:@"artwork"];

  v29 = [SKUIArtworkProvidingFactory artworkProviderForStoreResponse:v28];
  artworksProvider = v8->_artworksProvider;
  v8->_artworksProvider = v29;

  v31 = [v10 objectForKey:@"hasMessagesExtension"];

  if (objc_opt_respondsToSelector())
  {
    v8->_hasMessagesExtension = [v31 BOOLValue];
  }

  v32 = [v10 objectForKey:@"isHiddenFromSpringboard"];

  if (objc_opt_respondsToSelector())
  {
    v8->_isHiddenFromSpringBoard = [v32 BOOLValue];
  }

  v33 = [v10 objectForKey:@"supportsGameController"];

  if (objc_opt_respondsToSelector())
  {
    v8->_gameControllerSupported = [v33 BOOLValue];
  }

  v34 = [v10 objectForKey:@"requiresGameController"];

  if (objc_opt_respondsToSelector())
  {
    v8->_requiresGameController = [v34 BOOLValue];
  }

  v35 = [v10 objectForKey:@"externalVersionId"];

  if (objc_opt_respondsToSelector())
  {
    v8->_versionIdentifier = [v35 longLongValue];
  }

  v36 = [v10 objectForKey:@"offers"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v36 count])
  {
    v37 = [v36 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [[SKUIItemOffer alloc] initWithLookupDictionary:v37];
      itemOffer = v8->_itemOffer;
      v8->_itemOffer = v38;
    }
  }

  v40 = [v7 objectForKey:@"deviceFamilies"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = v36;
    v54 = v35;
    v58 = v6;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v52 = v40;
    v41 = v40;
    v42 = [v41 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (!v42)
    {
      goto LABEL_67;
    }

    v43 = v42;
    v44 = *v60;
    while (1)
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v60 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v59 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v46 isEqualToString:@"ipad"])
          {
            v47 = 1;
          }

          else if ([v46 isEqualToString:@"iphone"])
          {
            v47 = 2;
          }

          else if ([v46 isEqualToString:@"ipod"])
          {
            v47 = 4;
          }

          else
          {
            if (![v46 isEqualToString:@"tvos"])
            {
              continue;
            }

            v47 = 8;
          }

          v8->_deviceFamilies |= v47;
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v59 objects:v68 count:16];
      if (!v43)
      {
LABEL_67:

        v6 = v58;
        v35 = v54;
        v40 = v52;
        v36 = v53;
        break;
      }
    }
  }

  v48 = [v7 objectForKey:{@"userRating", v52, v53}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = [v48 objectForKey:@"ratingCount"];

    if (objc_opt_respondsToSelector())
    {
      v8->_numberOfUserRatings = [v49 integerValue];
    }

    v35 = [v48 objectForKey:@"value"];

    if (objc_opt_respondsToSelector())
    {
      [v35 floatValue];
      v8->_userRating = v50;
    }
  }

LABEL_74:
  return v8;
}

- (NSURL)largestArtworkURL
{
  v2 = [(SKUIArtworkProviding *)self->_artworksProvider largestArtwork];
  v3 = [v2 URL];

  return v3;
}

- (SKUIStoreIdentifier)storeIdentifier
{
  storeIdentifier = self->_storeIdentifier;
  if (!storeIdentifier)
  {
    v4 = [[SKUIStoreIdentifier alloc] initWithLongLong:[(SKUIItem *)self itemIdentifier]];
    v5 = self->_storeIdentifier;
    self->_storeIdentifier = v4;

    v6 = [(SKUIItem *)self bundleIdentifier];
    [(SKUIStoreIdentifier *)self->_storeIdentifier setBundleIdentifier:v6];

    [(SKUIStoreIdentifier *)self->_storeIdentifier setPodcastFeedURLIdentifier:self->_feedUrlString];
    storeIdentifier = self->_storeIdentifier;
  }

  return storeIdentifier;
}

- (id)lookupDictionary
{
  v64[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(SKUIItem *)self ageBandRange];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    v7 = v5;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    [v8 setObject:v9 forKey:@"minAge"];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6 + v7];
    [v8 setObject:v10 forKey:@"maxAge"];

    [v3 setObject:v8 forKey:@"ageBand"];
  }

  v11 = [(SKUIItem *)self artistName];
  if (v11)
  {
    [v3 setObject:v11 forKey:*MEMORY[0x277D6A2F0]];
  }

  v12 = [(SKUIItem *)self bundleIdentifier];

  if (v12)
  {
    [v3 setObject:v12 forKey:*MEMORY[0x277D6A308]];
  }

  v13 = [(SKUIItem *)self categoryName];

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v13, 0}];
    [v3 setObject:v14 forKey:*MEMORY[0x277D6A340]];
  }

  v15 = [(SKUIItem *)self collectionName];

  if (v15)
  {
    [v3 setObject:v15 forKey:@"collectionName"];
  }

  if ([(SKUIItem *)self hasInAppPurchases])
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKey:@"hasInAppPurchases"];
  }

  v16 = [(SKUIItem *)self itemIdentifier];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:v16];
    [v3 setObject:v17 forKey:*MEMORY[0x277D6A360]];
  }

  v18 = [(SKUIItem *)self itemKindString];

  if (v18)
  {
    [v3 setObject:v18 forKey:*MEMORY[0x277D6A368]];
  }

  v19 = [(SKUIItem *)self primaryItemOffer];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 lookupDictionary];
    v64[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
    [v3 setObject:v22 forKey:*MEMORY[0x277D6A380]];
  }

  v23 = [(SKUIItem *)self numberOfChildItems];
  if (v23 >= 1)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:v23];
    [v3 setObject:v24 forKey:@"appCount"];
  }

  v25 = [(SKUIItem *)self parentalControlsRank];
  if (v25)
  {
    v62 = @"value";
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
    v63 = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    [v3 setObject:v27 forKey:*MEMORY[0x277D6A310]];
  }

  v28 = [(SKUIItem *)self productPageURLString];

  if (v28)
  {
    [v3 setObject:v28 forKey:*MEMORY[0x277D6A390]];
  }

  v29 = [(SKUIItem *)self requiredCapabilities];

  if (v29)
  {
    [v3 setObject:v29 forKey:*MEMORY[0x277D6A3A0]];
  }

  v30 = [(SKUIItem *)self title];

  if (v30)
  {
    [v3 setObject:v30 forKey:*MEMORY[0x277D6A338]];
  }

  v31 = [(SKUIItem *)self versionIdentifier];
  if (v31)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithLongLong:v31];
    [v3 setObject:v32 forKey:@"versionId"];
  }

  v33 = [(SKUIItem *)self versionString];

  if (v33)
  {
    [v3 setObject:v33 forKey:@"version"];
  }

  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = [(SKUIItem *)self deviceFamilies];
  v36 = v35;
  if (v35)
  {
    [v34 addObject:@"ipad"];
    if ((v36 & 2) == 0)
    {
LABEL_35:
      if ((v36 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((v35 & 2) == 0)
  {
    goto LABEL_35;
  }

  [v34 addObject:@"iphone"];
  if ((v36 & 4) != 0)
  {
LABEL_36:
    [v34 addObject:@"ipod"];
  }

LABEL_37:
  if ([v34 count])
  {
    v37 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v34, @"deviceFamilies", 0}];
    [v3 setObject:v37 forKey:*MEMORY[0x277D6A3E0]];
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = [(SKUIItem *)self itemKind];
  v40 = MEMORY[0x277D6A420];
  v41 = MEMORY[0x277D6A408];
  if (v39 == 17)
  {
    v41 = MEMORY[0x277D6A410];
    v40 = MEMORY[0x277D6A428];
  }

  if (v39 == 12)
  {
    v42 = MEMORY[0x277D6A410];
  }

  else
  {
    v42 = v41;
  }

  if (v39 == 12)
  {
    v43 = MEMORY[0x277D6A428];
  }

  else
  {
    v43 = v40;
  }

  v44 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SKUIItem numberOfUserRatings](self, "numberOfUserRatings")}];
  [v38 setObject:v44 forKey:*v42];

  v45 = MEMORY[0x277CCABB0];
  [(SKUIItem *)self userRating];
  v46 = [v45 numberWithFloat:?];
  [v38 setObject:v46 forKey:*v43];

  [v3 setObject:v38 forKey:*MEMORY[0x277D6A418]];
  v47 = [(SKUIItem *)self artworksProvider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v49 = [(SKUIItem *)self artworksProvider];
  v50 = v49;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v53 = objc_opt_isKindOfClass();

    if ((v53 & 1) == 0)
    {
      goto LABEL_58;
    }

    v50 = [(SKUIItem *)self artworksProvider];
    v52 = [v50 _lookupArray];
    if (![v52 count])
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v51 = [v49 urlTemplateString];

  if (v51)
  {
    v52 = [v50 _lookupDictionary];
LABEL_55:
    [v3 setObject:v52 forKey:*MEMORY[0x277D6A300]];
LABEL_56:
  }

LABEL_58:
  v54 = [(SKUIItem *)self newsstandArtworks];
  objc_opt_class();
  v55 = objc_opt_isKindOfClass();

  v56 = [(SKUIItem *)self newsstandArtworks];
  v57 = v56;
  if ((v55 & 1) == 0)
  {
    objc_opt_class();
    v60 = objc_opt_isKindOfClass();

    if ((v60 & 1) == 0)
    {
      goto LABEL_66;
    }

    v57 = [(SKUIItem *)self newsstandArtworks];
    v59 = [v57 _lookupArray];
    if (![v59 count])
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v58 = [v56 urlTemplateString];

  if (v58)
  {
    v59 = [v57 _lookupDictionary];
LABEL_63:
    [v3 setObject:v59 forKey:*MEMORY[0x277D6A378]];
LABEL_64:
  }

LABEL_66:

  return v3;
}

- (NSString)_downloadKind
{
  v2 = [(SKUIItem *)self itemKind];
  if (v2 <= 0x12)
  {
    v3 = **(&unk_2781FA028 + v2);
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [v4 itemIdentifier];
    v6 = v7 == [(SKUIItem *)self itemIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SKUIItem)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v59.receiver = self;
    v59.super_class = SKUIItem;
    v5 = [(SKUIItem *)&v59 init];
    if (v5)
    {
      v6 = [v4 objectForKey:@"artistName"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 copy];
        artistName = v5->_artistName;
        v5->_artistName = v7;
      }

      v9 = [v4 objectForKey:@"bid"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 copy];
        bundleID = v5->_bundleID;
        v5->_bundleID = v10;
      }

      v12 = [v4 objectForKey:@"genre"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 copy];
        categoryName = v5->_categoryName;
        v5->_categoryName = v13;
      }

      v15 = [v4 objectForKey:@"col_name"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 copy];
        collectionName = v5->_collectionName;
        v5->_collectionName = v16;
      }

      v18 = [v4 objectForKey:@"dev_fam"];

      if (objc_opt_respondsToSelector())
      {
        v5->_deviceFamilies = [v18 unsignedIntegerValue];
      }

      v19 = [v4 objectForKey:@"id"];

      if (objc_opt_respondsToSelector())
      {
        v5->_itemIdentifier = [v19 longLongValue];
      }

      v20 = [v4 objectForKey:@"offer"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [[SKUIItemOffer alloc] initWithCacheRepresentation:v20];
        itemOffer = v5->_itemOffer;
        v5->_itemOffer = v21;
      }

      v23 = [v4 objectForKey:@"child_count"];

      if (objc_opt_respondsToSelector())
      {
        v5->_numberOfChildItems = [v23 integerValue];
      }

      v24 = [v4 objectForKey:@"user_rating_count"];

      if (objc_opt_respondsToSelector())
      {
        v5->_numberOfUserRatings = [v24 integerValue];
      }

      v25 = [v4 objectForKey:@"parental_rank"];

      if (objc_opt_respondsToSelector())
      {
        v5->_parentalControlsRank = [v25 integerValue];
      }

      v26 = [v4 objectForKey:@"url"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v26 copy];
        productPageURLString = v5->_productPageURLString;
        v5->_productPageURLString = v27;
      }

      v29 = [v4 objectForKey:@"req_caps"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v29 copy];
        requiredCapabilities = v5->_requiredCapabilities;
        v5->_requiredCapabilities = v30;
      }

      v32 = [v4 objectForKey:@"name"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [v32 copy];
        title = v5->_title;
        v5->_title = v33;
      }

      v35 = [v4 objectForKey:@"user_rating"];

      if (objc_opt_respondsToSelector())
      {
        [v35 floatValue];
        v5->_userRating = v36;
      }

      v37 = [v4 objectForKey:@"version_id"];

      if (objc_opt_respondsToSelector())
      {
        v5->_versionIdentifier = [v37 longLongValue];
      }

      v38 = [v4 objectForKey:@"version"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = [v38 copy];
        versionString = v5->_versionString;
        v5->_versionString = v39;
      }

      v41 = [v4 objectForKey:@"kind"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = [v41 copy];
        itemKindString = v5->_itemKindString;
        v5->_itemKindString = v42;

        v44 = v5->_itemKindString;
        v45 = &off_2781F9EA0;
        v46 = 25;
        while (![*v45 isEqualToString:v44])
        {
          v45 += 2;
          if (!--v46)
          {
            v47 = 0;
            goto LABEL_43;
          }
        }

        v47 = *(v45 - 1);
LABEL_43:
        v5->_itemKind = v47;
      }

      else
      {
        v48 = v5->_itemKindString;
        v5->_itemKind = 12;
        v5->_itemKindString = @"iosSoftware";
      }

      v49 = [v4 objectForKey:@"artwork"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [v4 objectForKey:@"artworkProvider"];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v50 isEqualToString:@"artworkTemplate"])
        {
          v51 = off_2781F61E0;
        }

        else
        {
          v51 = off_2781F61C8;
        }

        v52 = [objc_alloc(*v51) initWithCacheRepresentation:v49];
        artworksProvider = v5->_artworksProvider;
        v5->_artworksProvider = v52;
      }

      v54 = [v4 objectForKey:@"ageblen"];
      v55 = [v4 objectForKey:@"agebloc"];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v56 = [v55 integerValue];
        v57 = [v54 integerValue];
        v5->_ageBandRange.location = v56;
      }

      else
      {
        v57 = 0;
        v5->_ageBandRange.location = 0x7FFFFFFFFFFFFFFFLL;
      }

      v5->_ageBandRange.length = v57;
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_ageBandRange.length];
  [v3 setObject:v4 forKey:@"ageblen"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_ageBandRange.location];
  [v3 setObject:v5 forKey:@"agebloc"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceFamilies];
  [v3 setObject:v6 forKey:@"dev_fam"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemIdentifier];
  [v3 setObject:v7 forKey:@"id"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfChildItems];
  [v3 setObject:v8 forKey:@"child_count"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfUserRatings];
  [v3 setObject:v9 forKey:@"user_rating_count"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_parentalControlsRank];
  [v3 setObject:v10 forKey:@"parental_rank"];

  *&v11 = self->_userRating;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v3 setObject:v12 forKey:@"user_rating"];

  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_versionIdentifier];
  [v3 setObject:v13 forKey:@"version_id"];

  artistName = self->_artistName;
  if (artistName)
  {
    [v3 setObject:artistName forKey:@"artistName"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bid"];
  }

  categoryName = self->_categoryName;
  if (categoryName)
  {
    [v3 setObject:categoryName forKey:@"genre"];
  }

  collectionName = self->_collectionName;
  if (collectionName)
  {
    [v3 setObject:collectionName forKey:@"col_name"];
  }

  itemKindString = self->_itemKindString;
  if (itemKindString)
  {
    [v3 setObject:itemKindString forKey:@"kind"];
  }

  productPageURLString = self->_productPageURLString;
  if (productPageURLString)
  {
    [v3 setObject:productPageURLString forKey:@"url"];
  }

  requiredCapabilities = self->_requiredCapabilities;
  if (requiredCapabilities)
  {
    [v3 setObject:requiredCapabilities forKey:@"req_caps"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"name"];
  }

  versionString = self->_versionString;
  if (versionString)
  {
    [v3 setObject:versionString forKey:@"version"];
  }

  v23 = [(SKUIItemOffer *)self->_itemOffer cacheRepresentation];
  if (v23)
  {
    [v3 setObject:v23 forKey:@"offer"];
  }

  v24 = [(SKUIArtworkProviding *)self->_artworksProvider cacheRepresentation];
  if (v24)
  {
    [v3 setObject:v24 forKey:@"artwork"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = @"artworkTemplate";
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_28;
    }

    v25 = @"artworkList";
  }

  [v3 setObject:v25 forKey:@"artworkProvider"];
LABEL_28:

  return v3;
}

- (id)valueForMetricsField:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D6A490]])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemIdentifier];
LABEL_6:
    v6 = v5;
    goto LABEL_7;
  }

  if (([v4 isEqualToString:*MEMORY[0x277D6A4A8]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D6A4A0]))
  {
    v5 = [(SKUIItem *)self title];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D6A4B0]])
  {
    v5 = [(SKUIItem *)self itemKindString];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (_NSRange)ageBandRange
{
  length = self->_ageBandRange.length;
  location = self->_ageBandRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)initContainerItemWithItem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItem initContainerItemWithItem:]";
}

- (void)initWithLookupDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItem initWithLookupDictionary:]";
}

- (void)initWithIdentifier:mediaResultDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItem initWithIdentifier:mediaResultDictionary:]";
}

@end