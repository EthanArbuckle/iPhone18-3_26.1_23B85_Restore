@interface SKUIProductPageDataConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
- (id)productPageWithDictionary:(id)dictionary;
@end

@implementation SKUIProductPageDataConsumer

- (id)productPageWithDictionary:(id)dictionary
{
  v60 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageDataConsumer productPageWithDictionary:];
  }

  v42 = objc_alloc_init(SKUIProductPage);
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__87;
  v56 = __Block_byref_object_dispose__87;
  v57 = 0;
  v41 = [dictionaryCopy objectForKey:@"storePlatformPrewarmDataKey"];
  v40 = [dictionaryCopy objectForKey:@"storePlatformData"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v40 objectForKey:v41], (v39 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v39 = [v40 objectForKey:@"product"];
    if (!v39)
    {
      v39 = [v40 objectForKey:@"product-dv-product"];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v39 objectForKey:@"results"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __57__SKUIProductPageDataConsumer_productPageWithDictionary___block_invoke;
      v51[3] = &unk_2781FFD80;
      v51[4] = &v52;
      [v4 enumerateKeysAndObjectsUsingBlock:v51];
    }
  }

  if (v53[5])
  {
    v38 = [dictionaryCopy objectForKey:@"versionHistory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = +[SKUIReleaseNote dateFormatter];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v7 = v38;
      v8 = [v7 countByEnumeratingWithState:&v47 objects:v59 count:16];
      if (v8)
      {
        v9 = *v48;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v48 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v47 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [[SKUIReleaseNote alloc] initWithReleaseNoteDictionary:v11 dateFormatter:v6];
              if (v12)
              {
                [v5 addObject:v12];
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v47 objects:v59 count:16];
        }

        while (v8);
      }

      [v53[5] _setVersionHistory:v5];
    }

    v13 = [dictionaryCopy objectForKey:@"topInAppPurchases"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v43 objects:v58 count:16];
      if (v16)
      {
        v17 = *v44;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v44 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v43 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[SKUIInAppPurchase alloc] initWithInAppPurchaseDictionary:v19];
              if (v20)
              {
                [v14 addObject:v20];
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v43 objects:v58 count:16];
        }

        while (v16);
      }

      [v53[5] _setInAppPurchases:v14];
    }

    [(SKUIProductPage *)v42 setItem:v53[5]];
  }

  v21 = [dictionaryCopy objectForKey:@"infoSection"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [[SKUIProductPageProductInfo alloc] initWithInfoSectionDictionaries:v21];
    if ([(SKUIProductPageProductInfo *)v22 numberOfEntries]>= 1)
    {
      [(SKUIProductPage *)v42 setProductInformation:v22];
    }
  }

  v23 = [dictionaryCopy objectForKey:@"customersAlsoBought"];
  v24 = [dictionaryCopy objectForKey:@"moreByThisDeveloper"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = objc_opt_class();
    v27 = SKUIStorePageItemsWithStorePlatformDictionary(v40, v41, v26);
    v28 = objc_alloc_init(SKUIPageComponentContext);
    [(SKUIPageComponentContext *)v28 setItems:v27];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUIPageComponentContext *)v28 setComponentDictionary:v24];
      v29 = [[SKUISwooshPageComponent alloc] initWithRelatedContentContext:v28];
      [v25 addObject:v29];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUIPageComponentContext *)v28 setComponentDictionary:v23];
      v30 = [[SKUISwooshPageComponent alloc] initWithRelatedContentContext:v28];
      [v25 addObject:v30];
    }

    [(SKUIProductPage *)v42 setRelatedContentSwooshes:v25];
  }

  v31 = [dictionaryCopy objectForKey:@"reviewsUrlsData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [[SKUIReviewConfiguration alloc] initWithConfigurationDictionary:v31];
    [(SKUIProductPage *)v42 setReviewConfiguration:v32];
  }

  v33 = [objc_alloc(MEMORY[0x277D69B70]) initWithStorePlatformData:dictionaryCopy];
  [(SKUIProductPage *)v42 setMetricsConfiguration:v33];
  v34 = SSVGetMetricsPageDescriptionWithPlatformDictionary();
  [(SKUIProductPage *)v42 setMetricsPageDescription:v34];

  v35 = [dictionaryCopy objectForKey:@"uber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = [[SKUIUber alloc] initWithUberDictionary:v35];
    [(SKUIProductPage *)v42 setUber:v36];
  }

  _Block_object_dispose(&v52, 8);

  return v42;
}

void __57__SKUIProductPageDataConsumer_productPageWithDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SKUIProductPageItem alloc] initWithLookupDictionary:v9];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  *a4 = 1;
}

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  responseCopy = response;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageDataConsumer objectForData:response:error:];
  }

  allHeaderFields = [responseCopy allHeaderFields];
  v11 = ISDictionaryValueForCaseInsensitiveString();

  if (v11 || ([responseCopy MIMEType], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if ([v11 rangeOfString:@"itml" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = objc_alloc_init(SKUIProductPage);
      [(SKUIProductPage *)v14 setITMLData:dataCopy];
      [(SKUIProductPage *)v14 setITMLResponse:responseCopy];
      v13 = 0;
      if (!error)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  v19 = 0;
  v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v19];
  v13 = v19;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[SKUIProductPageDataConsumer productPageWithDictionary:](self, "productPageWithDictionary:", v12), v14 = objc_claimAutoreleasedReturnValue(), [responseCopy URL], v15 = objc_claimAutoreleasedReturnValue(), -[SKUIProductPage setPageURL:](v14, "setPageURL:", v15), v15, !v14))
  {
    if ([v11 isEqualToString:@"text/html"])
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SKUIErrorDomain" code:1 userInfo:0];

      v14 = 0;
      v13 = v16;
    }

    else
    {
      v14 = 0;
    }
  }

  if (error)
  {
LABEL_16:
    if (!v14)
    {
      v17 = v13;
      *error = v13;
    }
  }

LABEL_18:

  return v14;
}

- (void)productPageWithDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageDataConsumer productPageWithDictionary:]";
}

- (void)objectForData:response:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageDataConsumer objectForData:response:error:]";
}

@end