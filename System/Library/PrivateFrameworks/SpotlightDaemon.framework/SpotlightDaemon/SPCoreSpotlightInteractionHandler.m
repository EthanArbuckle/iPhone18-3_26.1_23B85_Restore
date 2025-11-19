@interface SPCoreSpotlightInteractionHandler
- (id)attributeForIntent:(id)a3 direction:(int64_t)a4;
- (id)interestingContactIdentifiersFromIntent:(id)a3;
- (void)handleInteraction:(id)a3 bundleID:(id)a4 protectionClass:(id)a5;
@end

@implementation SPCoreSpotlightInteractionHandler

- (id)interestingContactIdentifiersFromIntent:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setNumberStyle:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [v3 contacts];
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 recipients];
    goto LABEL_4;
  }

  v6 = 0;
LABEL_5:
  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) contactIdentifier];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)attributeForIntent:(id)a3 direction:(int64_t)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a4 == 2)
      {
        v6 = MEMORY[0x277CC2C38];
        goto LABEL_14;
      }

      if (a4 == 1)
      {
        v6 = MEMORY[0x277CC2E40];
        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = MEMORY[0x277CC2E20];
        goto LABEL_14;
      }
    }

LABEL_11:
    v7 = 0;
    goto LABEL_15;
  }

  if (a4 == 2)
  {
    v6 = MEMORY[0x277CC2C08];
    goto LABEL_14;
  }

  if (a4 != 1)
  {
    goto LABEL_11;
  }

  v6 = MEMORY[0x277CC2E10];
LABEL_14:
  v7 = *v6;
LABEL_15:

  return v7;
}

- (void)handleInteraction:(id)a3 bundleID:(id)a4 protectionClass:(id)a5
{
  v6 = a3;
  v7 = [v6 intent];
  v8 = [(SPCoreSpotlightInteractionHandler *)self interestingContactIdentifiersFromIntent:v7];
  if (v8)
  {
    v9 = -[SPCoreSpotlightInteractionHandler attributeForIntent:direction:](self, "attributeForIntent:direction:", v7, [v6 direction]);
    if (v9)
    {
      if (handleInteraction_bundleID_protectionClass__onceToken != -1)
      {
        [SPCoreSpotlightInteractionHandler handleInteraction:bundleID:protectionClass:];
      }

      v10 = handleInteraction_bundleID_protectionClass__helperQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__SPCoreSpotlightInteractionHandler_handleInteraction_bundleID_protectionClass___block_invoke_2;
      block[3] = &unk_278934130;
      v12 = v6;
      v13 = v9;
      v14 = v8;
      dispatch_async(v10, block);
    }
  }
}

void __80__SPCoreSpotlightInteractionHandler_handleInteraction_bundleID_protectionClass___block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.corespotlight.interactionhelper", v0);
  v2 = handleInteraction_bundleID_protectionClass__helperQueue;
  handleInteraction_bundleID_protectionClass__helperQueue = v1;
}

void __80__SPCoreSpotlightInteractionHandler_handleInteraction_bundleID_protectionClass___block_invoke_2(uint64_t a1)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dateInterval];
  v3 = [v2 startDate];

  v4 = SICopyRoundedDate();
  v5 = *MEMORY[0x277CC2E20];
  if ([*(a1 + 40) isEqualToString:*MEMORY[0x277CC2E20]])
  {
    v6 = *MEMORY[0x277CC2E38];
    v26[0] = v5;
    v26[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "adding contacts interaction %@ identifiers %@", buf, 0x16u);
  }

  v11 = +[SPCoreSpotlightIndexer sharedInstance];
  v12 = *MEMORY[0x277CCA1A0];
  v13 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__SPCoreSpotlightInteractionHandler_handleInteraction_bundleID_protectionClass___block_invoke_9;
  v17[3] = &unk_278934108;
  v18 = v13;
  v19 = *(a1 + 40);
  v20 = v3;
  v21 = v4;
  v14 = v4;
  v15 = v3;
  [v11 fetchAttributesForProtectionClass:v12 attributes:v7 bundleID:@"com.apple.MobileAddressBook" identifiers:v18 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __80__SPCoreSpotlightInteractionHandler_handleInteraction_bundleID_protectionClass___block_invoke_9(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v38 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v4)
  {
    v5 = v4;
    v39 = *v41;
    v37 = *MEMORY[0x277CC2E20];
    v36 = *MEMORY[0x277CC2D10];
    v6 = *MEMORY[0x277CC2E38];
    v33 = *MEMORY[0x277CC2E38];
    v34 = *MEMORY[0x277CBEEE8];
    v32 = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v41 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v40 + 1) + 8 * i);
        v9 = [v3 objectForKey:v8];

        if (v9)
        {
          v10 = objc_opt_new();
          [v10 setBundleID:@"com.apple.MobileAddressBook"];
          [v10 setUniqueIdentifier:v8];
          [v10 setIsUpdate:1];
          if ([*(a1 + 40) isEqualToString:v37])
          {
            v11 = [v3 objectForKey:v8];
            v12 = v11;
            if (v11)
            {
              v13 = [v11 firstObject];
              v14 = [v12 objectAtIndex:1];
              if (v13 && v13 != v34)
              {
                v15 = [v13 mutableCopy];
                v16 = MEMORY[0x277CCABB0];
                v17 = [v13 objectAtIndexedSubscript:0];
                v18 = [v16 numberWithUnsignedLongLong:{objc_msgSend(v17, "unsignedLongLongValue") + 1}];
                [v15 setObject:v18 atIndexedSubscript:0];

                v3 = v32;
                v19 = [v15 copy];

                v13 = v15;
LABEL_17:

                if (!v14 || v14 == v34)
                {
                  v21 = &unk_2846C9140;
                }

                else
                {
                  v23 = [v14 mutableCopy];
                  v24 = MEMORY[0x277CCABB0];
                  v25 = [v14 objectAtIndexedSubscript:0];
                  v26 = [v24 numberWithUnsignedLongLong:{objc_msgSend(v25, "unsignedLongLongValue") + 1}];
                  [v23 setObject:v26 atIndexedSubscript:0];

                  v3 = v32;
                  v21 = [v23 copy];

                  v14 = v23;
                }

                v27 = objc_alloc(MEMORY[0x277CC34B8]);
                v28 = *(a1 + 48);
                v47[0] = *(a1 + 40);
                v47[1] = v33;
                v48[0] = v19;
                v48[1] = v21;
                v47[2] = v36;
                v48[2] = v28;
                v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
                v29 = [v27 initWithAttributes:v22];
                [v10 setAttributeSet:v29];

LABEL_22:
                [v38 addObject:v10];
                goto LABEL_23;
              }
            }

            else
            {
              v13 = 0;
              v14 = 0;
            }

            v19 = &unk_2846C9128;
            goto LABEL_17;
          }

          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@":A:%@", *(a1 + 40)];
          v20 = objc_alloc(MEMORY[0x277CC34B8]);
          v44 = *(a1 + 56);
          v45[0] = v12;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
          v45[1] = v36;
          v46[0] = v19;
          v46[1] = *(a1 + 48);
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
          v22 = [v20 initWithAttributes:v21];
          [v10 setAttributeSet:v22];
          goto LABEL_22;
        }

        v10 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = v8;
          _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "interaction-related identifier not indexed %@", buf, 0xCu);
        }

LABEL_23:
      }

      v5 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v5);
  }

  v30 = +[SPCoreSpotlightIndexer sharedInstance];
  [v30 indexSearchableItems:v38 deleteSearchableItemsWithIdentifiers:0 clientState:0 clientStateName:0 protectionClass:*MEMORY[0x277CCA1A0] forBundleID:@"com.apple.MobileAddressBook" options:0 completionHandler:0];

  v31 = *MEMORY[0x277D85DE8];
}

@end