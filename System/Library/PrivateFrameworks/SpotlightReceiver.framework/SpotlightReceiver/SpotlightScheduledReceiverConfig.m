@interface SpotlightScheduledReceiverConfig
- (NSArray)fetchAttributes;
- (SpotlightScheduledReceiverConfig)initWithConfigurationValues:(id)a3;
- (void)_updateAttributes;
@end

@implementation SpotlightScheduledReceiverConfig

- (SpotlightScheduledReceiverConfig)initWithConfigurationValues:(id)a3
{
  v4 = a3;
  v68.receiver = self;
  v68.super_class = SpotlightScheduledReceiverConfig;
  v5 = [(SpotlightScheduledReceiverConfig *)&v68 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigName];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigVersionName];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      versionName = v5->_versionName;
      v5->_versionName = v10;
    }

    else
    {
      v12 = MEMORY[0x277CCACA8];
      versionName = [(NSString *)v5->_name capitalizedString];
      v13 = [v12 stringWithFormat:@"_kMDItem%@Version", versionName];
      v14 = v5->_versionName;
      v5->_versionName = v13;
    }

    v15 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigVersionValue];
    if (v15)
    {
      v16 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigVersionValue];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigVersionValue];
      }

      else
      {
        v17 = &unk_284823048;
      }

      versionValue = v5->_versionValue;
      v5->_versionValue = v17;
    }

    else
    {
      v16 = v5->_versionValue;
      v5->_versionValue = &unk_284823048;
    }

    v19 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigProcesses];
    processes = v5->_processes;
    v5->_processes = v19;

    v21 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigPriority];
    priority = v5->_priority;
    v5->_priority = v21;

    v23 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigDonationAttributes];
    donationAttributes = v5->_donationAttributes;
    v5->_donationAttributes = v23;

    v25 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigRequiredAttributes];
    requiredAttributes = v5->_requiredAttributes;
    v5->_requiredAttributes = v25;

    v27 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigOptionalAttributes];
    optionalAttributes = v5->_optionalAttributes;
    v5->_optionalAttributes = v27;

    v29 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigExcludeAttributes];
    excludeAttributes = v5->_excludeAttributes;
    v5->_excludeAttributes = v29;

    defaultAttributes = v5->_defaultAttributes;
    v5->_defaultAttributes = &unk_284823090;

    if ([(NSArray *)v5->_requiredAttributes containsObject:@"kMDItemTextContent"])
    {
      v5->_needsText = 1;
    }

    if ([(NSArray *)v5->_requiredAttributes containsObject:@"kMDItemHTMLContentData"])
    {
      v5->_needsHTML = 1;
    }

    v32 = &SpotlightScheduledReceiverConfigIncludeLanguage;
    v33 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigIncludeLanguage];

    if (v33 || (v32 = &SpotlightScheduledReceiverConfigNeedsLanguage, [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigNeedsLanguage], v34 = objc_claimAutoreleasedReturnValue(), v34, v34))
    {
      v35 = [v4 objectForKeyedSubscript:*v32];
      v36 = [v35 BOOLValue];

      if (v36)
      {
        v37 = 17;
      }

      else
      {
        v37 = 1;
      }
    }

    else
    {
      v37 = 1;
    }

    v38 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigRequirePriorityItems];

    if (v38)
    {
      v39 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigRequirePriorityItems];
      v40 = [v39 BOOLValue];

      if (v40)
      {
        v37 |= 2uLL;
      }
    }

    v41 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigRequireBacklogItems];

    if (v41)
    {
      v42 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigRequireBacklogItems];
      v43 = [v42 BOOLValue];

      if (v43)
      {
        v37 |= 4uLL;
      }
    }

    v44 = &SpotlightScheduledReceiverConfigIncludeDeletedItems;
    v45 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigIncludeDeletedItems];

    if (v45 || (v44 = &SpotlightScheduledReceiverConfigNeedsDeletes, [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigNeedsDeletes], v46 = objc_claimAutoreleasedReturnValue(), v46, v46))
    {
      v47 = [v4 objectForKeyedSubscript:*v44];
      v48 = [v47 BOOLValue];

      if (v48)
      {
        v37 |= 8uLL;
      }
    }

    [(SpotlightScheduledReceiverConfig *)v5 setOptions:v37];
    v49 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigNeedsUserActivities];
    if (v49)
    {
      v50 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigNeedsUserActivities];
      v5->_needsUserActivities = [v50 BOOLValue];
    }

    else
    {
      v5->_needsUserActivities = 0;
    }

    v51 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigSupportedBundles];
    supportedBundles = v5->_supportedBundles;
    v5->_supportedBundles = v51;

    v53 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigUnsupportedBundles];
    unsupportedBundles = v5->_unsupportedBundles;
    v5->_unsupportedBundles = v53;

    v55 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigSupportedDomains];
    supportedDomainIdentifiers = v5->_supportedDomainIdentifiers;
    v5->_supportedDomainIdentifiers = v55;

    v57 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigUnsupportedDomains];
    unsupportedDomainIdentifiers = v5->_unsupportedDomainIdentifiers;
    v5->_unsupportedDomainIdentifiers = v57;

    v59 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigSupportedContentTypes];
    supportedContentTypes = v5->_supportedContentTypes;
    v5->_supportedContentTypes = v59;

    v61 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigUnsupportedContentTypes];
    unsupportedContentTypes = v5->_unsupportedContentTypes;
    v5->_unsupportedContentTypes = v61;

    v63 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigSupportedQuery];
    supportedQuery = v5->_supportedQuery;
    v5->_supportedQuery = v63;

    v65 = [v4 objectForKeyedSubscript:SpotlightScheduledReceiverConfigUnsupportedQuery];
    unsupportedQuery = v5->_unsupportedQuery;
    v5->_unsupportedQuery = v65;

    [(SpotlightScheduledReceiverConfig *)v5 _updateAttributes];
  }

  return v5;
}

- (void)_updateAttributes
{
  v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([(NSArray *)self->_requiredAttributes count])
  {
    [v24 addObjectsFromArray:self->_requiredAttributes];
  }

  if ([(NSArray *)self->_optionalAttributes count])
  {
    [v24 addObjectsFromArray:self->_optionalAttributes];
  }

  if ([(NSArray *)self->_excludeAttributes count])
  {
    [v24 addObjectsFromArray:self->_excludeAttributes];
  }

  if ([(NSArray *)self->_donationAttributes count])
  {
    [v24 addObjectsFromArray:self->_donationAttributes];
  }

  if ([(NSArray *)self->_defaultAttributes count])
  {
    [v24 addObjectsFromArray:self->_defaultAttributes];
  }

  if (self->_needsText)
  {
    [v24 addObjectsFromArray:&unk_2848230A8];
  }

  v3 = v24;
  if (self->_needsHTML)
  {
    [v24 addObject:@"kMDItemHTMLContentData"];
    v3 = v24;
  }

  if (self->_needsLanguage)
  {
    [v24 addObject:@"kMDItemTextContentLanguage"];
    v3 = v24;
  }

  v4 = [v3 allObjects];
  fetchAttributes = self->_fetchAttributes;
  self->_fetchAttributes = v4;

  processes = self->_processes;
  unsupportedContentTypes = MEMORY[0x277CBEBF8];
  if (!processes)
  {
    processes = MEMORY[0x277CBEBF8];
  }

  v8 = &stru_284821EC8;
  v9 = @"needsText";
  if (!self->_needsText)
  {
    v9 = &stru_284821EC8;
  }

  if (self->_needsHTML)
  {
    v10 = @"needsHTML";
  }

  else
  {
    v10 = &stru_284821EC8;
  }

  if (self->_needsLanguage)
  {
    v11 = @"needsLanguage";
  }

  else
  {
    v11 = &stru_284821EC8;
  }

  if (self->_needsUserActivities)
  {
    v12 = @"needsUserActivities";
  }

  else
  {
    v12 = &stru_284821EC8;
  }

  if (self->_needsDeletes)
  {
    v8 = @"needsDeletes";
  }

  donationAttributes = self->_donationAttributes;
  requiredAttributes = self->_requiredAttributes;
  if (!requiredAttributes)
  {
    requiredAttributes = MEMORY[0x277CBEBF8];
  }

  optionalAttributes = self->_optionalAttributes;
  excludeAttributes = self->_excludeAttributes;
  if (!optionalAttributes)
  {
    optionalAttributes = MEMORY[0x277CBEBF8];
  }

  if (!excludeAttributes)
  {
    excludeAttributes = MEMORY[0x277CBEBF8];
  }

  if (!donationAttributes)
  {
    donationAttributes = MEMORY[0x277CBEBF8];
  }

  supportedBundles = self->_supportedBundles;
  unsupportedBundles = self->_unsupportedBundles;
  if (!supportedBundles)
  {
    supportedBundles = MEMORY[0x277CBEBF8];
  }

  if (!unsupportedBundles)
  {
    unsupportedBundles = MEMORY[0x277CBEBF8];
  }

  supportedDomainIdentifiers = self->_supportedDomainIdentifiers;
  unsupportedDomainIdentifiers = self->_unsupportedDomainIdentifiers;
  if (!supportedDomainIdentifiers)
  {
    supportedDomainIdentifiers = MEMORY[0x277CBEBF8];
  }

  if (!unsupportedDomainIdentifiers)
  {
    unsupportedDomainIdentifiers = MEMORY[0x277CBEBF8];
  }

  supportedContentTypes = self->_supportedContentTypes;
  if (!supportedContentTypes)
  {
    supportedContentTypes = MEMORY[0x277CBEBF8];
  }

  if (self->_unsupportedContentTypes)
  {
    unsupportedContentTypes = self->_unsupportedContentTypes;
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@ %@ %@ %@ %@ %@ %@ %@\n\treq:%@\n\topt:%@\n\texc:%@\n\tdon:%@\n\tbundles:%@\n\tdisableBundles:%@\n\tdomains:%@\n\tdisableDomains:%@\n\tcontentTypes:%@\n\tdisableTypes:%@\n\tquery:%@\n\t", self, self->_name, self->_priority, processes, v9, v10, v11, v12, v8, requiredAttributes, optionalAttributes, excludeAttributes, donationAttributes, supportedBundles, unsupportedBundles, supportedDomainIdentifiers, unsupportedDomainIdentifiers, supportedContentTypes, unsupportedContentTypes, self->_supportedQuery];
  configDescription = self->_configDescription;
  self->_configDescription = v22;
}

- (NSArray)fetchAttributes
{
  fetchAttributes = self->_fetchAttributes;
  if (!fetchAttributes)
  {
    [(SpotlightScheduledReceiverConfig *)self _updateAttributes];
    fetchAttributes = self->_fetchAttributes;
  }

  return fetchAttributes;
}

@end