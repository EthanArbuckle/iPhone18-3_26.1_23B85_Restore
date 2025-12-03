@interface SKUIStorePageDataConsumer
- (SKUIStorePageDataConsumer)init;
- (id)_artistPageComponentsForDictionary:(id)dictionary items:(id)items;
- (id)_backgroundArtworkWithDictionary:(id)dictionary;
- (id)_bannerRoomComponentsForDictionary:(id)dictionary items:(id)items;
- (id)_customPageComponentsForDictionary:(id)dictionary items:(id)items;
- (id)_groupingPageComponentsForDictionary:(id)dictionary items:(id)items;
- (id)_multiRoomComponentsForDictionary:(id)dictionary items:(id)items;
- (id)_newCustomPageComponentForBlockType:(id)type context:(id)context;
- (id)_newFeaturedContentComponentForKind:(int64_t)kind context:(id)context;
- (id)_newPageComponentContextWithDictionary:(id)dictionary;
- (id)_roomComponentsForDictionary:(id)dictionary items:(id)items gridType:(int64_t)type;
- (id)objectForData:(id)data response:(id)response error:(id *)error;
- (id)storePageWithDictionary:(id)dictionary response:(id)response;
- (void)init;
@end

@implementation SKUIStorePageDataConsumer

- (SKUIStorePageDataConsumer)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStorePageDataConsumer init];
  }

  v5.receiver = self;
  v5.super_class = SKUIStorePageDataConsumer;
  v3 = [(SKUIStorePageDataConsumer *)&v5 init];
  if (v3)
  {
    v3->_storePageClass = objc_opt_class();
  }

  return v3;
}

- (id)storePageWithDictionary:(id)dictionary response:(id)response
{
  dictionaryCopy = dictionary;
  responseCopy = response;
  v8 = objc_alloc_init([(SKUIStorePageDataConsumer *)self storePageClass]);
  v9 = [responseCopy URL];
  [v8 setPageURL:v9];

  v10 = [dictionaryCopy objectForKey:@"pageType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setPageType:v10];
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (SKUIStorePageTypeIsProductPage(v11))
  {
    v12 = +[(SSVURLDataConsumer *)SKUIProductPageDataConsumer];
    v13 = [v12 productPageWithDictionary:dictionaryCopy];

    if (v13)
    {
      v14 = [responseCopy URL];
      [v13 setDefaultPageFragment:SKUIProductPageFragmentWithURL(v14)];

      [v8 setProductPage:v13];
      goto LABEL_50;
    }
  }

  v48 = responseCopy;
  v15 = [dictionaryCopy objectForKey:@"pageTitle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setTitle:v15];
  }

  v16 = [(SKUIStorePageDataConsumer *)self _backgroundArtworkWithDictionary:dictionaryCopy];
  v17 = [v16 URL];

  if (v17)
  {
    [v8 setBackgroundArtwork:v16];
  }

  v47 = v16;
  v46 = [objc_alloc(MEMORY[0x277D69B70]) initWithStorePlatformData:dictionaryCopy];
  [v8 setMetricsConfiguration:?];
  v18 = SSVGetMetricsPageDescriptionWithPlatformDictionary();
  [v8 setMetricsPageDescription:v18];

  v19 = [dictionaryCopy objectForKey:@"uber"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 count] && (v20 = -[SKUIUber initWithUberDictionary:]([SKUIUber alloc], "initWithUberDictionary:", v19)) != 0)
  {
    v49 = v20;
    [v8 setUber:?];
  }

  else
  {
    v49 = 0;
  }

  v21 = [dictionaryCopy objectForKey:@"artist"];
  objc_opt_class();
  v45 = v21;
  if (objc_opt_isKindOfClass())
  {
    if (!v11)
    {
      v11 = @"artist";
      [v8 setPageType:v11];
    }

    v22 = [v21 objectForKey:@"name"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setTitle:v22];
    }
  }

  else
  {
    v22 = v19;
  }

  v23 = [dictionaryCopy objectForKey:@"storePlatfromData"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = [dictionaryCopy objectForKey:@"storePlatformData"];

    v23 = v24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [dictionaryCopy objectForKey:@"storePlatformPrewarmDataKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v10;
    }

    else
    {
      v25 = 0;
    }

    v27 = v49;
    v28 = objc_opt_class();
    v26 = SKUIStorePageItemsWithStorePlatformDictionary(v23, v25, v28);
  }

  else
  {
    v26 = 0;
    v10 = v22;
    v27 = v49;
  }

  if (![(__CFString *)v11 isEqualToString:@"grouping"])
  {
    if (![(__CFString *)v11 isEqualToString:@"room"])
    {
      if ([(__CFString *)v11 isEqualToString:@"multiroom"])
      {
        v29 = [(SKUIStorePageDataConsumer *)self _multiRoomComponentsForDictionary:dictionaryCopy items:v26];
        goto LABEL_43;
      }

      if ([(__CFString *)v11 isEqualToString:@"artist"])
      {
        v29 = [(SKUIStorePageDataConsumer *)self _artistPageComponentsForDictionary:dictionaryCopy items:v26];
        goto LABEL_43;
      }

      if ([(__CFString *)v11 isEqualToString:@"bannerRoom"])
      {
        v29 = [(SKUIStorePageDataConsumer *)self _bannerRoomComponentsForDictionary:dictionaryCopy items:v26];
        goto LABEL_43;
      }

      if ([(__CFString *)v11 isEqualToString:@"custom"])
      {
        v29 = [(SKUIStorePageDataConsumer *)self _customPageComponentsForDictionary:dictionaryCopy items:v26];
        goto LABEL_43;
      }

      if ([(__CFString *)v11 isEqualToString:@"trailerRoom"])
      {
        selfCopy2 = self;
        v31 = dictionaryCopy;
        v32 = v26;
        v33 = 5;
        goto LABEL_34;
      }

      if (![(__CFString *)v11 isEqualToString:@"search-doc-type"])
      {
        v34 = 0;
        goto LABEL_44;
      }
    }

    selfCopy2 = self;
    v31 = dictionaryCopy;
    v32 = v26;
    v33 = 0;
LABEL_34:
    v29 = [(SKUIStorePageDataConsumer *)selfCopy2 _roomComponentsForDictionary:v31 items:v32 gridType:v33];
    goto LABEL_43;
  }

  v29 = [(SKUIStorePageDataConsumer *)self _groupingPageComponentsForDictionary:dictionaryCopy items:v26];
LABEL_43:
  v34 = v29;
LABEL_44:
  v44 = v26;
  artworkProvider = [(SKUIUber *)v27 artworkProvider];
  if ([artworkProvider hasArtwork])
  {
    v36 = 1;
    v37 = [[SKUIMediaComponent alloc] initWithArtworkProvider:artworkProvider appearance:1];
    [v34 insertObject:v37 atIndex:0];
  }

  else
  {
    v36 = 0;
  }

  text = [(SKUIUber *)v27 text];
  if ([text length])
  {
    v39 = [[SKUIEditorialComponent alloc] initWithUberText:text];
    [v34 insertObject:v39 atIndex:v36];
  }

  [v8 setPageComponents:v34];
  v40 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{@"pageTitle", @"pageType", @"backgroundImage", @"uber", @"storePlatformData", @"storePlatformPrewarmDataKey", @"blocks", @"contents", @"children", @"fcStructure", @"charts", @"genreId", @"omnitureMetrics", @"mediaType", @"unAvailableContentIds", @"allCategoriesLink", @"metrics", @"metrics_base", @"metricsBase", @"mt", @"gratisIdentifiers", 0}];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __62__SKUIStorePageDataConsumer_storePageWithDictionary_response___block_invoke;
  v50[3] = &unk_2781FB5F8;
  v51 = v40;
  v52 = v8;
  v41 = v40;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v50];

  v13 = v47;
  responseCopy = v48;
LABEL_50:

  v42 = v8;
  return v8;
}

void __62__SKUIStorePageDataConsumer_storePageWithDictionary_response___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    [*(a1 + 40) setValue:v5 forPageKey:v6];
  }
}

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  responseCopy = response;
  v10 = responseCopy;
  if (!dataCopy)
  {
    v14 = 0;
    v15 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  allHeaderFields = [responseCopy allHeaderFields];
  v12 = ISDictionaryValueForCaseInsensitiveString();

  if ((v12 || ([v10 MIMEType], (v12 = objc_claimAutoreleasedReturnValue()) != 0)) && objc_msgSend(v12, "rangeOfString:options:", @"itml", 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = objc_alloc_init(SKUIStorePage);
    [(SKUIStorePage *)v15 setITMLData:dataCopy];
    [(SKUIStorePage *)v15 setITMLResponse:v10];
    [(SKUIStorePage *)v15 setPageType:@"itml"];
    v14 = 0;
  }

  else
  {
    v18 = 0;
    v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v18];
    v14 = v18;
    objc_opt_class();
    v15 = 0;
    if (objc_opt_isKindOfClass())
    {
      v15 = [(SKUIStorePageDataConsumer *)self storePageWithDictionary:v13 response:v10];
    }
  }

  if (error)
  {
LABEL_12:
    if (!v15)
    {
      v16 = v14;
      *error = v14;
    }
  }

LABEL_14:

  return v15;
}

- (id)_artistPageComponentsForDictionary:(id)dictionary items:(id)items
{
  dictionaryCopy = dictionary;
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  v9 = [(SKUIStorePageDataConsumer *)self _customPageComponentsForDictionary:dictionaryCopy items:itemsCopy];
  if ([v9 count])
  {
    [array addObjectsFromArray:v9];
  }

  v10 = [dictionaryCopy objectForKey:@"contentData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(SKUIStorePageDataConsumer *)self _newPageComponentContextWithDictionary:dictionaryCopy];
    [v11 setItems:itemsCopy];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      v14 = [v10 objectForKey:@"iPadSoftware"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 setComponentDictionary:v14];
        v15 = [[SKUISwooshPageComponent alloc] initWithFeaturedContentContext:v11 kind:260];
        [array addObject:v15];
      }

      v16 = [v10 objectForKey:@"mobileSoftwareBundles"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 setComponentDictionary:v16];
        v17 = [[SKUIGridComponent alloc] initWithFeaturedContentContext:v11 kind:0];
        [array addObject:v17];
      }

      v18 = [v10 objectForKey:@"iPhoneSoftware"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 setComponentDictionary:v18];
        v19 = [[SKUISwooshPageComponent alloc] initWithFeaturedContentContext:v11 kind:260];
        [array addObject:v19];
      }
    }

    else
    {
      v14 = [v10 objectForKey:@"iPhoneSoftware"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 setComponentDictionary:v14];
        v20 = [[SKUIGridComponent alloc] initWithFeaturedContentContext:v11 kind:0];
        [array addObject:v20];
      }

      v16 = [v10 objectForKey:@"mobileSoftwareBundles"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }

      [v11 setComponentDictionary:v16];
      v18 = [[SKUIGridComponent alloc] initWithFeaturedContentContext:v11 kind:0];
      [array addObject:v18];
    }

LABEL_16:
  }

  return array;
}

- (id)_backgroundArtworkWithDictionary:(id)dictionary
{
  v22 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"backgroundImage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[SKUIArtwork alloc] initWithArtworkDictionary:v4];
  }

  else
  {
    v6 = [dictionaryCopy objectForKey:@"blocks"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v15 = v4;
        v16 = v6;
        v10 = *v18;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 objectForKey:@"type"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 isEqualToString:@"page"])
              {
                v4 = [v12 objectForKey:@"backgroundImage"];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v5 = [[SKUIArtwork alloc] initWithArtworkDictionary:v4];
                }

                else
                {
                  v5 = 0;
                }

                v6 = v16;

                goto LABEL_22;
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }

        v5 = 0;
        v4 = v15;
        v6 = v16;
      }

      else
      {
        v5 = 0;
      }

LABEL_22:
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_bannerRoomComponentsForDictionary:(id)dictionary items:(id)items
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  v9 = [(SKUIStorePageDataConsumer *)self _customPageComponentsForDictionary:dictionaryCopy items:itemsCopy];
  if ([v9 count])
  {
    [array addObjectsFromArray:v9];
  }

  v10 = [dictionaryCopy objectForKey:@"contents"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(SKUIStorePageDataConsumer *)self _newPageComponentContextWithDictionary:dictionaryCopy];
    v25 = dictionaryCopy;
    [v11 setComponentDictionary:dictionaryCopy];
    v24 = itemsCopy;
    [v11 setItems:itemsCopy];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = v10;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v11 copy];
            [v19 setComponentDictionary:v18];
            v20 = [[SKUIBrickItem alloc] initWithBannerRoomContext:v19];
            if (v20)
            {
              [v12 addObject:v20];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v21 = [[SKUIGridComponent alloc] initWithBrickItems:v12];
    [array addObject:v21];

    dictionaryCopy = v25;
    itemsCopy = v24;
    v10 = v23;
  }

  return array;
}

- (id)_customPageComponentsForDictionary:(id)dictionary items:(id)items
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  itemsCopy = items;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [dictionaryCopy objectForKey:@"customBlocks"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = v7;
  if ((isKindOfClass & 1) != 0 || ([dictionaryCopy objectForKey:@"children"], v10 = objc_claimAutoreleasedReturnValue(), v9 = dictionaryCopy, !v10))
  {
    v10 = [v9 objectForKey:@"blocks"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v7;
    v23 = dictionaryCopy;
    v11 = [(SKUIStorePageDataConsumer *)self _newPageComponentContextWithDictionary:dictionaryCopy];
    [v11 setItems:itemsCopy];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v10;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v17 objectForKey:@"type"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v11 setComponentDictionary:v17];
              v19 = [(SKUIStorePageDataConsumer *)self _newCustomPageComponentForBlockType:v18 context:v11];
              if (v19)
              {
                [v24 addObject:v19];
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    dictionaryCopy = v23;
    v10 = v21;
    v7 = v22;
  }

  return v24;
}

- (id)_groupingPageComponentsForDictionary:(id)dictionary items:(id)items
{
  dictionaryCopy = dictionary;
  itemsCopy = items;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  v8 = [(SKUIStorePageDataConsumer *)self _newPageComponentContextWithDictionary:dictionaryCopy];
  [v8 setItems:itemsCopy];
  v9 = [dictionaryCopy objectForKey:@"fcStructure"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = itemsCopy;
    v27 = dictionaryCopy;
    v25 = v9;
    v24 = [v9 objectForKey:@"model"];
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v24, 0}];
    v11 = [v10 count];
    if (v11 >= 1)
    {
      v12 = v11;
      for (i = 0; i < v12; ++i)
      {
        v14 = [v10 objectAtIndex:i];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 objectForKey:@"fcKind"];
          if ((objc_opt_respondsToSelector() & 1) != 0 && ([v8 setComponentDictionary:v14], (v16 = -[SKUIStorePageDataConsumer _newFeaturedContentComponentForKind:context:](selfCopy, "_newFeaturedContentComponentForKind:context:", objc_msgSend(v15, "integerValue"), v8)) != 0))
          {
            v17 = v16;
            [v29 addObject:v16];
          }

          else
          {
            v17 = [v14 objectForKey:@"children"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{i + 1, objc_msgSend(v17, "count")}];
              [v10 insertObjects:v17 atIndexes:v18];
              v12 = [v10 count];
            }
          }
        }
      }
    }

    itemsCopy = v26;
    dictionaryCopy = v27;
    v9 = v25;
  }

  v19 = [dictionaryCopy objectForKey:@"subtitle"];
  if (!v19)
  {
    v20 = [dictionaryCopy objectForKey:@"isAgeBandGrouping"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v20 BOOLValue])
    {
      v19 = [dictionaryCopy objectForKey:@"ageBandGroupingTitle"];
    }

    else
    {
      v19 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [[SKUIDividerPageComponent alloc] initWithDividerTitle:v19];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __72__SKUIStorePageDataConsumer__groupingPageComponentsForDictionary_items___block_invoke;
    v30[3] = &unk_2781FB620;
    v30[4] = &v31;
    [v29 enumerateObjectsUsingBlock:v30];
    [v29 insertObject:v21 atIndex:v32[3]];
    _Block_object_dispose(&v31, 8);
  }

  [v8 setComponentDictionary:dictionaryCopy];
  v22 = [[SKUIAccountButtonsComponent alloc] initWithFeaturedContentContext:v8 kind:0];
  [v29 addObject:v22];

  return v29;
}

uint64_t __72__SKUIStorePageDataConsumer__groupingPageComponentsForDictionary_items___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 componentType];
  if (result != 6 && result != 13)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)_multiRoomComponentsForDictionary:(id)dictionary items:(id)items
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  itemsCopy = items;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(SKUIStorePageDataConsumer *)self _customPageComponentsForDictionary:dictionaryCopy items:itemsCopy];
  if ([v9 count])
  {
    [v8 addObjectsFromArray:v9];
  }

  v10 = [dictionaryCopy objectForKey:@"segments"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = dictionaryCopy;
    v11 = [(SKUIStorePageDataConsumer *)self _newPageComponentContextWithDictionary:dictionaryCopy];
    [v11 setItems:itemsCopy];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v11 setComponentDictionary:v17];
            v18 = [[SKUISwooshPageComponent alloc] initWithRoomContext:v11];
            [v8 addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    dictionaryCopy = v20;
  }

  return v8;
}

- (id)_newCustomPageComponentForBlockType:(id)type context:(id)context
{
  contextCopy = context;
  v6 = SKUIPageComponentTypeForBlockType(type);
  v7 = SKUIPageComponentClassForComponentType(v6);
  if (v7)
  {
    v8 = [[v7 alloc] initWithCustomPageContext:contextCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_newFeaturedContentComponentForKind:(int64_t)kind context:(id)context
{
  contextCopy = context;
  v6 = SKUIPageComponentTypeForFeaturedContentKind(kind);
  v7 = SKUIPageComponentClassForComponentType(v6);
  if (v7)
  {
    v8 = [[v7 alloc] initWithFeaturedContentContext:contextCopy kind:kind];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_newPageComponentContextWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(SKUIPageComponentContext);
  v5 = [dictionaryCopy objectForKey:@"storePlatformProfilesMap"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SKUIPageComponentContext *)v4 setPlatformKeyProfileOverrides:v5];
  }

  v6 = [dictionaryCopy objectForKey:@"unAvailableContentIds"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SKUIPageComponentContext *)v4 setUnavailableItemIdentifiers:v6];
  }

  return v4;
}

- (id)_roomComponentsForDictionary:(id)dictionary items:(id)items gridType:(int64_t)type
{
  v21[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  itemsCopy = items;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [(SKUIStorePageDataConsumer *)self _customPageComponentsForDictionary:dictionaryCopy items:itemsCopy];
  if ([v11 count])
  {
    [v10 addObjectsFromArray:v11];
  }

  v12 = [dictionaryCopy objectForKey:@"sortData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [[SKUIMenuPageComponent alloc] initWithRoomSortData:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(SKUIStorePageDataConsumer *)self _newPageComponentContextWithDictionary:dictionaryCopy];
  [v14 setComponentDictionary:dictionaryCopy];
  [v14 setItems:itemsCopy];
  v15 = [[SKUIGridComponent alloc] initWithRoomContext:v14 gridType:type];
  v16 = v15;
  if (v15)
  {
    if (v13)
    {
      v21[0] = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      [(SKUIMenuPageComponent *)v13 _setChildComponents:v17 forIndex:[(SKUIMenuPageComponent *)v13 defaultSelectedIndex]];

      v18 = v10;
      v19 = v13;
    }

    else
    {
      v18 = v10;
      v19 = v16;
    }

    [v18 addObject:v19];
  }

  return v10;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStorePageDataConsumer init]";
}

@end