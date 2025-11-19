@interface SKUIShareTemplateViewElement
- (NSArray)activities;
- (id)activityForShareSheetActivityType:(id)a3;
- (id)activityForUIActivityType:(id)a3;
@end

@implementation SKUIShareTemplateViewElement

- (NSArray)activities
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIShareTemplateViewElement *)v3 activities:v4];
      }
    }
  }

  v11 = [MEMORY[0x277CBEB18] array];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__SKUIShareTemplateViewElement_activities__block_invoke;
  v14[3] = &unk_2781F9640;
  v12 = v11;
  v15 = v12;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v14];

  return v12;
}

void __42__SKUIShareTemplateViewElement_activities__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 116)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)activityForShareSheetActivityType:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIShareTemplateViewElement *)v5 activityForShareSheetActivityType:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIShareTemplateViewElement *)self activities];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v23 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = [v17 activityType];
        if ([v18 isEqualToString:v4])
        {
          v14 = v17;

          goto LABEL_15;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v14;
}

- (id)activityForUIActivityType:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIShareTemplateViewElement *)v5 activityForUIActivityType:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = SKUIShareSheetActivityTypeForUIActivityType(v4);

  [(SKUIShareTemplateViewElement *)self activities];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v30 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v28;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        v21 = [v20 activityType];
        if ([v21 isEqualToString:@"*"])
        {
          v22 = v20;

          v17 = v22;
        }

        if ([v21 isEqualToString:v13])
        {
          v23 = v20;

          goto LABEL_19;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
  }

  v23 = 0;
LABEL_19:

  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v17;
  }

  v25 = v24;

  return v24;
}

@end