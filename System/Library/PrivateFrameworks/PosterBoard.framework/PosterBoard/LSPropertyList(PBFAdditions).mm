@interface LSPropertyList(PBFAdditions)
- (BOOL)pbf_refreshDescriptorsFrequency;
- (id)_infoForStaticDescriptorIdentifier:()PBFAdditions;
- (id)pbf_displayNameLocalizationKeyForStaticDescriptorIdentifier:()PBFAdditions;
- (id)pbf_posterBoardPosterDescriptorGalleryOptionsForStaticDescriptorIdentifier:()PBFAdditions;
- (id)pbf_posterBoardPosterDescriptorHeroGalleryOptionsForStaticDescriptorIdentifier:()PBFAdditions;
- (id)pbf_posterBoardPosterDescriptorRenderingConfigurationForStaticDescriptorIdentifier:()PBFAdditions;
- (id)pbf_proactivePosterDescriptorGalleryOptionsForStaticDescriptorIdentifier:()PBFAdditions;
- (id)pbf_roleForDynamicDescriptorIdentifier:()PBFAdditions;
- (id)pbf_roleForStaticDescriptorIdentifier:()PBFAdditions;
- (id)pbf_staticDescriptorIdentifiers;
- (id)pbf_staticDescriptorsDictionary;
- (id)pbf_staticSnapshotKeyForIdentifier:()PBFAdditions definition:;
- (id)pbf_userInfoForStaticDescriptorIdentifier:()PBFAdditions;
- (uint64_t)pbf_hasStaticSnapshotMapping;
- (uint64_t)pbf_posterBoardPosterDescriptorGalleryDisplayBehaviorForStaticDescriptorIdentifier:()PBFAdditions;
- (uint64_t)pbf_supportsDynamicDescriptors;
- (uint64_t)pbf_supportsGallery;
@end

@implementation LSPropertyList(PBFAdditions)

- (uint64_t)pbf_supportsGallery
{
  v2 = *MEMORY[0x277D3EC30];
  v3 = objc_opt_self();
  v4 = [a1 objectForKey:v2 ofClass:v3];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (uint64_t)pbf_supportsDynamicDescriptors
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = PBFPosterRolesSupportedForDataStoreCurrentDeviceClass();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 pf_supportedRoles];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (PFPosterRoleSupportsDynamicDescriptors() && ([v2 containsObject:v8] & 1) != 0)
        {

          v10 = *MEMORY[0x277D3EBF8];
          v11 = objc_opt_self();
          v3 = [a1 objectForKey:v10 ofClass:v11];

          if (objc_opt_respondsToSelector())
          {
            v9 = [v3 BOOLValue];
          }

          else
          {
            v9 = 1;
          }

          goto LABEL_14;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (BOOL)pbf_refreshDescriptorsFrequency
{
  if (([MEMORY[0x277CBEBD0] pbf_keynoteModeEnabled] & 1) != 0 || !objc_msgSend(a1, "pbf_supportsDynamicDescriptors"))
  {
    return 0;
  }

  v2 = *MEMORY[0x277D3EBF0];
  v3 = objc_opt_self();
  v4 = [a1 objectForKey:v2 ofClass:v3];

  v5 = ![v4 length] || objc_msgSend(v4, "caseInsensitiveCompare:", @"NEVER");
  return v5;
}

- (id)pbf_staticDescriptorsDictionary
{
  v2 = *MEMORY[0x277D3EC28];
  v3 = objc_opt_self();
  v4 = [a1 objectForKey:v2 ofClass:v3];

  return v4;
}

- (id)pbf_staticDescriptorIdentifiers
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = [a1 pbf_staticDescriptorsDictionary];
  v2 = [v1 allKeys];
  v3 = v2;
  if (!v2)
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  v4 = [v2 sortedArrayUsingComparator:&__block_literal_global_131];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v1 objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) objectForKey:@"sort_relative_index"];

        if (v10)
        {

          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __63__LSPropertyList_PBFAdditions__pbf_staticDescriptorIdentifiers__block_invoke_2;
          v12[3] = &unk_2782C8D50;
          v13 = v1;
          v14 = v4;
          v5 = v4;
          v4 = [v5 sortedArrayUsingComparator:v12];

          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v4;
}

- (id)pbf_displayNameLocalizationKeyForStaticDescriptorIdentifier:()PBFAdditions
{
  v1 = [a1 _infoForStaticDescriptorIdentifier:?];
  v2 = [v1 bs_safeStringForKey:*MEMORY[0x277D3EC00]];

  return v2;
}

- (id)pbf_proactivePosterDescriptorGalleryOptionsForStaticDescriptorIdentifier:()PBFAdditions
{
  v4 = a3;
  v5 = [a1 _infoForStaticDescriptorIdentifier:v4];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3EC10]];
  v11 = 0;
  v7 = [MEMORY[0x277CEB7B0] galleryOptionsFromDictionaryRepresentation:v6 error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = PBFLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(LSPropertyList(PBFAdditions) *)v4 pbf_proactivePosterDescriptorGalleryOptionsForStaticDescriptorIdentifier:v8, v9];
    }
  }

  return v7;
}

- (id)pbf_posterBoardPosterDescriptorRenderingConfigurationForStaticDescriptorIdentifier:()PBFAdditions
{
  v1 = [a1 _infoForStaticDescriptorIdentifier:?];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277D3EC18]];
  if (v2)
  {
    v3 = [MEMORY[0x277D3EDF8] renderingConfigurationFromDictionaryRepresentation:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pbf_posterBoardPosterDescriptorGalleryOptionsForStaticDescriptorIdentifier:()PBFAdditions
{
  v1 = [a1 _infoForStaticDescriptorIdentifier:?];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277D3EC10]];
  v3 = [MEMORY[0x277D3ED90] galleryOptionsFromDictionaryRepresentation:v2];

  return v3;
}

- (uint64_t)pbf_posterBoardPosterDescriptorGalleryDisplayBehaviorForStaticDescriptorIdentifier:()PBFAdditions
{
  v1 = [a1 _infoForStaticDescriptorIdentifier:?];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277D3EC08]];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = PRAmbientGalleryDisplayBehaviorFromString();
  return v7;
}

- (id)pbf_posterBoardPosterDescriptorHeroGalleryOptionsForStaticDescriptorIdentifier:()PBFAdditions
{
  v1 = [a1 _infoForStaticDescriptorIdentifier:?];
  v2 = [v1 objectForKeyedSubscript:@"PRStaticDescriptorSnapshot"];
  v3 = [v2 objectForKey:@"Hero"];

  if (PUIFeatureEnabled())
  {
    v4 = [v1 objectForKeyedSubscript:@"PRStaticDescriptorSnapshot"];
    v5 = [v4 objectForKey:@"Hero-Mica"];
  }

  else
  {
    v5 = 0;
  }

  if (v3 | v5)
  {
    v6 = [v1 objectForKeyedSubscript:*MEMORY[0x277D3EC10]];
    v7 = [v6 mutableCopy];

    if (v5)
    {
      [MEMORY[0x277D3ED88] lookUpInfoForMicaAsset:v5];
    }

    else
    {
      [MEMORY[0x277D3ED88] lookUpInfoForAssetCatalogIdentifier:v3];
    }
    v9 = ;
    v10 = [MEMORY[0x277D3ED90] galleryOptionsFromDictionaryRepresentation:v7];
    v8 = [MEMORY[0x277D3ED90] galleryOptionsWithAssetLookupInfo:v9 galleryPresentationStyle:{objc_msgSend(v10, "presentationStyle")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pbf_userInfoForStaticDescriptorIdentifier:()PBFAdditions
{
  v1 = [a1 _infoForStaticDescriptorIdentifier:?];
  v2 = [v1 bs_safeDictionaryForKey:*MEMORY[0x277D3EC20]];

  return v2;
}

- (id)pbf_roleForStaticDescriptorIdentifier:()PBFAdditions
{
  v4 = a3;
  v5 = [a1 pf_supportedRoles];
  if ([v5 count] == 1)
  {
    v6 = [v5 anyObject];
  }

  else
  {
    v7 = [a1 _infoForStaticDescriptorIdentifier:v4];
    v8 = [v7 objectForKeyedSubscript:@"PRStaticDescriptorRole"];
    if (PFPosterRoleIsValid() && [v5 containsObject:v8])
    {
      v6 = v8;
    }

    else
    {
      v9 = *MEMORY[0x277CBED38];
      v10 = objc_opt_self();
      v11 = [a1 objectForKey:v9 ofClass:v10];

      v6 = PRPosterRoleLookupForExtensionBundleIdentifier(v11, v4);
    }
  }

  return v6;
}

- (id)pbf_roleForDynamicDescriptorIdentifier:()PBFAdditions
{
  v4 = a3;
  v5 = [a1 pf_supportedRoles];
  if ([v5 count] == 1)
  {
    v6 = [v5 anyObject];
  }

  else
  {
    v7 = *MEMORY[0x277CBED38];
    v8 = objc_opt_self();
    v9 = [a1 objectForKey:v7 ofClass:v8];

    v6 = PRPosterRoleLookupForExtensionBundleIdentifier(v9, v4);
  }

  return v6;
}

- (id)_infoForStaticDescriptorIdentifier:()PBFAdditions
{
  v4 = *MEMORY[0x277D3EC28];
  v5 = a3;
  v6 = objc_opt_self();
  v7 = [a1 objectForKey:v4 ofClass:v6];
  v8 = [v7 objectForKey:v5];

  return v8;
}

- (uint64_t)pbf_hasStaticSnapshotMapping
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [a1 pbf_staticDescriptorIdentifiers];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [a1 pbf_staticDescriptorsDictionary];
        v9 = [v8 objectForKey:v7];

        v10 = [v9 objectForKey:@"PRStaticDescriptorSnapshot"];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)pbf_staticSnapshotKeyForIdentifier:()PBFAdditions definition:
{
  v6 = a3;
  v7 = a4;
  if ([a1 pbf_hasStaticSnapshotMapping])
  {
    v8 = [a1 pbf_staticDescriptorsDictionary];
    v9 = [v8 objectForKey:v6];

    v10 = [v9 objectForKey:@"PRStaticDescriptorSnapshot"];
    if (v10)
    {
      v11 = [v7 uniqueIdentifier];
      v12 = PBFPlistKeyForSnapshotDefinitionIdentifier(v11);

      v13 = [v10 objectForKey:v12];
      v14 = objc_opt_class();
      v15 = v13;
      if (v14)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)pbf_proactivePosterDescriptorGalleryOptionsForStaticDescriptorIdentifier:()PBFAdditions .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21B526000, log, OS_LOG_TYPE_ERROR, "error converting gallery options dictionary for descriptor identifier (%@) to proactive gallery options: %@", &v3, 0x16u);
}

@end