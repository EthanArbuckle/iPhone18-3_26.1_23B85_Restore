@interface SRAuthorizationGroup
+ (id)authorizationGroupWithServiceName:(id)a3;
+ (void)initialize;
- (NSArray)localizedCollectedData;
- (NSArray)localizedNotCollectedData;
- (NSArray)localizedSampleData;
- (NSArray)localizedWhatIsShared;
- (NSArray)localizedWhenShared;
- (NSArray)platforms;
- (NSString)localizedPlatforms;
- (NSString)localizedRequiredAuthAlertDetail;
- (NSString)localizedRevokeRequiredAuthAlertDetail;
- (SRAuthorizationGroup)initWithBundle:(id)a3;
- (id)localizedExampleDataValue:(id)a3;
- (void)dealloc;
@end

@implementation SRAuthorizationGroup

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _MergedGlobals_6 = os_log_create("com.apple.SensorKit", "SRAuthorizationGroup");
    qword_28001A2C0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  }
}

+ (id)authorizationGroupWithServiceName:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [qword_28001A2C0 objectForKey:?];
  if (v4)
  {
LABEL_4:
    v6 = [[SRAuthorizationGroup alloc] initWithBundle:v4];
    v7 = *MEMORY[0x277D85DE8];

    return v6;
  }

  v5 = [MEMORY[0x277CCA8D8] skui_bundleForAuthorizationService:a3];
  if (v5)
  {
    v4 = v5;
    [qword_28001A2C0 setObject:v5 forKey:a3];
    goto LABEL_4;
  }

  v9 = _MergedGlobals_6;
  if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_ERROR))
  {
    v11 = 138543362;
    v12 = a3;
    _os_log_error_impl(&dword_265602000, v9, OS_LOG_TYPE_ERROR, "Unable to find a bundle for %{public}@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (SRAuthorizationGroup)initWithBundle:(id)a3
{
  v6.receiver = self;
  v6.super_class = SRAuthorizationGroup;
  v4 = [(SRAuthorizationGroup *)&v6 init];
  if (v4)
  {
    v4->_bundle = a3;
  }

  return v4;
}

- (void)dealloc
{
  self->_bundle = 0;
  v3.receiver = self;
  v3.super_class = SRAuthorizationGroup;
  [(SRAuthorizationGroup *)&v3 dealloc];
}

- (NSArray)localizedCollectedData
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRCollectedData"];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v9];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        [(NSArray *)v4 addObject:v11];
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSArray)localizedNotCollectedData
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRNotCollectedData"];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v9];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        [(NSArray *)v4 addObject:v11];
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSArray)localizedWhenShared
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRWhenShared"];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v9];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        [(NSArray *)v4 addObject:v11];
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSArray)localizedWhatIsShared
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRWhatIsShared"];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v9];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        [(NSArray *)v4 addObject:v11];
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSString)localizedRequiredAuthAlertDetail
{
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRRequiredAuthAlertDetail"];
  result = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v3];
  if (!result)
  {
    return v3;
  }

  return result;
}

- (NSString)localizedRevokeRequiredAuthAlertDetail
{
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRRevokeRequiredAuthAlertDetail"];
  result = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v3];
  if (!result)
  {
    return v3;
  }

  return result;
}

- (NSString)localizedPlatforms
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [(SRAuthorizationGroup *)self platforms];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v2, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(NSArray *)v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if ([v8 isEqualToString:@"Phone"])
        {
          v9 = 42;
        }

        else if ([v8 isEqualToString:@"Watch"])
        {
          v9 = 43;
        }

        else
        {
          v9 = 0;
        }

        v10 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:v9];
        if (v10)
        {
          [v3 addObject:v10];
        }
      }

      v5 = [(NSArray *)v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  if ([v3 count] < 2)
  {
    if ([v3 count] != 1)
    {
      result = 0;
      goto LABEL_24;
    }

    v17 = 0;
    v12 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:45];
    v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:&v17, objc_msgSend(v3, "firstObject")];
    if (!v13)
    {
      v14 = _MergedGlobals_6;
      if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v23 = v17;
        _os_log_fault_impl(&dword_265602000, v14, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
      }
    }

    v11 = v13;
  }

  else
  {
    v11 = [v3 componentsJoinedByString:{objc_msgSend(MEMORY[0x277CCACA8], "srui_localizedStringForCode:", 44)}];
  }

  result = [v11 localizedUppercaseString];
LABEL_24:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSArray)platforms
{
  result = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRPlatforms"];
  if (!result)
  {
    return MEMORY[0x277CBEBF8];
  }

  return result;
}

- (NSArray)localizedSampleData
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRSampleData"];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [v4 addObject:{-[SRAuthorizationGroup localizedExampleDataValue:](self, "localizedExampleDataValue:", *(*(&v11 + 1) + 8 * v8++))}];
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  result = [MEMORY[0x277CBEA60] arrayWithArray:v4];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)localizedExampleDataValue:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a3 hasSuffix:@"<no loc>"])
    {
      v5 = *MEMORY[0x277D85DE8];

      return [a3 stringByReplacingOccurrencesOfString:@"<no loc>" withString:&stru_2876FBDF0];
    }

    else
    {
      bundle = self->_bundle;
      v10 = *MEMORY[0x277D85DE8];

      return [(NSBundle *)bundle objectForInfoDictionaryKey:a3];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = MEMORY[0x277CCABB8];
    v8 = *MEMORY[0x277D85DE8];

    return [v7 localizedStringFromNumber:a3 numberStyle:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277CCA968];
    v12 = *MEMORY[0x277D85DE8];

    return [v11 localizedStringFromDate:a3 dateStyle:1 timeStyle:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v14 = [a3 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (!v14)
    {
      goto LABEL_37;
    }

    v16 = v14;
    v17 = *v49;
    *&v15 = 138543618;
    v42 = v15;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(a3);
        }

        v19 = *(*(&v48 + 1) + 8 * v18);
        if ([v19 hasSuffix:{@"<no loc>", v42}])
        {
          v20 = [v19 stringByReplacingOccurrencesOfString:@"<no loc>" withString:&stru_2876FBDF0];
        }

        else
        {
          v20 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v19];
        }

        v21 = v20;
        if (!v20)
        {
          v23 = _MergedGlobals_6;
          if (!os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_32;
          }

          v24 = [(NSBundle *)self->_bundle bundlePath];
          *buf = v42;
          v54 = v19;
          v55 = 2114;
          v56 = v24;
          v25 = v23;
          v26 = "Failed to find key: %{public}@ in %{public}@/Info.plist";
          goto LABEL_35;
        }

        v22 = -[SRAuthorizationGroup localizedExampleDataValue:](self, "localizedExampleDataValue:", [a3 objectForKeyedSubscript:v19]);
        if (v22)
        {
          [v13 setObject:v22 forKeyedSubscript:v21];
          goto LABEL_32;
        }

        v27 = _MergedGlobals_6;
        if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_FAULT))
        {
          v28 = [a3 objectForKeyedSubscript:v19];
          v29 = [(NSBundle *)self->_bundle bundlePath];
          *buf = v42;
          v54 = v28;
          v55 = 2114;
          v56 = v29;
          v25 = v27;
          v26 = "Failed to find value: %{public}@ in %{public}@/Info.plist";
LABEL_35:
          _os_log_fault_impl(&dword_265602000, v25, OS_LOG_TYPE_FAULT, v26, buf, 0x16u);
        }

LABEL_32:
        ++v18;
      }

      while (v16 != v18);
      v30 = [a3 countByEnumeratingWithState:&v48 objects:v57 count:16];
      v16 = v30;
      if (!v30)
      {
LABEL_37:
        result = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v13];
        goto LABEL_52;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [MEMORY[0x277CBEB18] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v32 = [a3 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v32)
    {
      v34 = v32;
      v35 = *v45;
      *&v33 = 138543618;
      v43 = v33;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(a3);
          }

          v37 = *(*(&v44 + 1) + 8 * i);
          v38 = [(SRAuthorizationGroup *)self localizedExampleDataValue:v37, v43];
          if (v38)
          {
            [v31 addObject:v38];
          }

          else
          {
            v39 = _MergedGlobals_6;
            if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_FAULT))
            {
              v40 = [(NSBundle *)self->_bundle bundlePath];
              *buf = v43;
              v54 = v37;
              v55 = 2114;
              v56 = v40;
              _os_log_fault_impl(&dword_265602000, v39, OS_LOG_TYPE_FAULT, "Failed to find value: %{public}@ in %{public}@/Info.plist", buf, 0x16u);
            }
          }
        }

        v34 = [a3 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v34);
    }

    result = [MEMORY[0x277CBEA60] arrayWithArray:v31];
  }

  else
  {
    result = 0;
  }

LABEL_52:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

@end