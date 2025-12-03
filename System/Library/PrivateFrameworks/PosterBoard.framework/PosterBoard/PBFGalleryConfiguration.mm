@interface PBFGalleryConfiguration
- (NSOrderedSet)sectionIdentifiers;
- (NSSet)posterPreviews;
- (PBFGalleryConfiguration)init;
- (PBFGalleryConfiguration)initWithSuggestedLayout:(id)layout dynamicDescriptorsByExtensionIdentifier:(id)identifier staticDescriptorsByExtensionIdentifier:(id)extensionIdentifier extensionsByIdentifier:(id)byIdentifier;
- (PFPosterExtensionProvider)extensionProvider;
- (id)_posterDescriptorLookupInfoForItem:(id)item;
- (id)_posterDescriptorLookupInfoForPreviewItem:(id)item;
- (id)complicationSnapshotRequests;
- (id)gallerySnapshotRequestsForDisplayContexts:(id)contexts;
- (id)itemsForSectionWithIdentifier:(id)identifier;
- (id)posterPreviewForUniqueIdentifier:(id)identifier;
- (id)posterSnapshotRequestsForContext:(id)context;
- (id)posterSnapshotRequestsForExtensionBundleIdentifier:(id)identifier context:(id)context;
- (id)posterSnapshotRequestsForPreview:(id)preview context:(id)context;
- (id)previewForItem:(id)item section:(id)section;
- (id)prewarmGallerySnapshotRequestsForDisplayContext:(id)context;
- (id)sectionForSectionIdentifier:(id)identifier;
- (void)_hydrateSectionIdentifiersIfNeeded;
- (void)dealloc;
- (void)enumeratePreviews:(id)previews;
- (void)trimComplicationsCache;
@end

@implementation PBFGalleryConfiguration

- (PBFGalleryConfiguration)init
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (result)
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138413314;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = @"PBFGalleryConfiguration.m";
    v16 = 1024;
    v17 = 121;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v8, 0x30u);
  }

  __break(0);
  return result;
}

- (PBFGalleryConfiguration)initWithSuggestedLayout:(id)layout dynamicDescriptorsByExtensionIdentifier:(id)identifier staticDescriptorsByExtensionIdentifier:(id)extensionIdentifier extensionsByIdentifier:(id)byIdentifier
{
  layoutCopy = layout;
  identifierCopy = identifier;
  extensionIdentifierCopy = extensionIdentifier;
  byIdentifierCopy = byIdentifier;
  v15 = layoutCopy;
  NSClassFromString(&cfstr_Prspostergalle.isa);
  if (!v15)
  {
    [PBFGalleryConfiguration initWithSuggestedLayout:a2 dynamicDescriptorsByExtensionIdentifier:? staticDescriptorsByExtensionIdentifier:? extensionsByIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFGalleryConfiguration initWithSuggestedLayout:a2 dynamicDescriptorsByExtensionIdentifier:? staticDescriptorsByExtensionIdentifier:? extensionsByIdentifier:?];
  }

  v16 = identifierCopy;
  NSClassFromString(&cfstr_Nsdictionary.isa);
  if (!v16)
  {
    [PBFGalleryConfiguration initWithSuggestedLayout:a2 dynamicDescriptorsByExtensionIdentifier:? staticDescriptorsByExtensionIdentifier:? extensionsByIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFGalleryConfiguration initWithSuggestedLayout:a2 dynamicDescriptorsByExtensionIdentifier:? staticDescriptorsByExtensionIdentifier:? extensionsByIdentifier:?];
  }

  v17 = extensionIdentifierCopy;
  NSClassFromString(&cfstr_Nsdictionary.isa);
  if (!v17)
  {
    [PBFGalleryConfiguration initWithSuggestedLayout:a2 dynamicDescriptorsByExtensionIdentifier:? staticDescriptorsByExtensionIdentifier:? extensionsByIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFGalleryConfiguration initWithSuggestedLayout:a2 dynamicDescriptorsByExtensionIdentifier:? staticDescriptorsByExtensionIdentifier:? extensionsByIdentifier:?];
  }

  v18 = byIdentifierCopy;
  NSClassFromString(&cfstr_Nsdictionary.isa);
  if (!v18)
  {
    [PBFGalleryConfiguration initWithSuggestedLayout:a2 dynamicDescriptorsByExtensionIdentifier:? staticDescriptorsByExtensionIdentifier:? extensionsByIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFGalleryConfiguration initWithSuggestedLayout:a2 dynamicDescriptorsByExtensionIdentifier:? staticDescriptorsByExtensionIdentifier:? extensionsByIdentifier:?];
  }

  v31.receiver = self;
  v31.super_class = PBFGalleryConfiguration;
  v19 = [(PBFGalleryConfiguration *)&v31 init];
  if (v19)
  {
    v20 = [v15 copy];
    suggestedLayout = v19->_suggestedLayout;
    v19->_suggestedLayout = v20;

    v22 = [v16 copy];
    dynamicDescriptorsByExtensionIdentifier = v19->_dynamicDescriptorsByExtensionIdentifier;
    v19->_dynamicDescriptorsByExtensionIdentifier = v22;

    v24 = [v17 copy];
    staticDescriptorsByExtensionIdentifier = v19->_staticDescriptorsByExtensionIdentifier;
    v19->_staticDescriptorsByExtensionIdentifier = v24;

    v26 = [v18 copy];
    extensionsByIdentifier = v19->_extensionsByIdentifier;
    v19->_extensionsByIdentifier = v26;

    v28 = objc_opt_new();
    posterDescriptorLookupInfoForItemIdentifier = v19->_posterDescriptorLookupInfoForItemIdentifier;
    v19->_posterDescriptorLookupInfoForItemIdentifier = v28;
  }

  return v19;
}

- (void)dealloc
{
  sectionIdentifiers = self->_sectionIdentifiers;
  self->_sectionIdentifiers = 0;

  sectionIdentifierToSectionMap = self->_sectionIdentifierToSectionMap;
  self->_sectionIdentifierToSectionMap = 0;

  sectionIdentifierToItems = self->_sectionIdentifierToItems;
  self->_sectionIdentifierToItems = 0;

  [(NSMutableDictionary *)self->_posterDescriptorLookupInfoForItemIdentifier removeAllObjects];
  posterDescriptorLookupInfoForItemIdentifier = self->_posterDescriptorLookupInfoForItemIdentifier;
  self->_posterDescriptorLookupInfoForItemIdentifier = 0;

  previewIdentifierToPreview = self->_previewIdentifierToPreview;
  self->_previewIdentifierToPreview = 0;

  previews = self->_previews;
  self->_previews = 0;

  suggestedLayout = self->_suggestedLayout;
  self->_suggestedLayout = 0;

  dynamicDescriptorsByExtensionIdentifier = self->_dynamicDescriptorsByExtensionIdentifier;
  self->_dynamicDescriptorsByExtensionIdentifier = 0;

  staticDescriptorsByExtensionIdentifier = self->_staticDescriptorsByExtensionIdentifier;
  self->_staticDescriptorsByExtensionIdentifier = 0;

  extensionsByIdentifier = self->_extensionsByIdentifier;
  self->_extensionsByIdentifier = 0;

  v13.receiver = self;
  v13.super_class = PBFGalleryConfiguration;
  [(PBFGalleryConfiguration *)&v13 dealloc];
}

- (NSSet)posterPreviews
{
  [(PBFGalleryConfiguration *)self _hydrateSectionIdentifiersIfNeeded];
  previews = self->_previews;

  return [(NSOrderedSet *)previews set];
}

- (NSOrderedSet)sectionIdentifiers
{
  [(PBFGalleryConfiguration *)self _hydrateSectionIdentifiersIfNeeded];
  sectionIdentifiers = self->_sectionIdentifiers;

  return sectionIdentifiers;
}

- (id)itemsForSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(PBFGalleryConfiguration *)self _hydrateSectionIdentifiersIfNeeded];
  v5 = [(NSDictionary *)self->_sectionIdentifierToItems objectForKey:identifierCopy];

  return v5;
}

- (id)posterPreviewForUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(PBFGalleryConfiguration *)self _hydrateSectionIdentifiersIfNeeded];
  v5 = [(NSDictionary *)self->_previewIdentifierToPreview objectForKey:identifierCopy];

  return v5;
}

- (id)sectionForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(PBFGalleryConfiguration *)self _hydrateSectionIdentifiersIfNeeded];
  v5 = [(NSDictionary *)self->_sectionIdentifierToSectionMap objectForKeyedSubscript:identifierCopy];

  return v5;
}

- (id)posterSnapshotRequestsForPreview:(id)preview context:(id)context
{
  v14[1] = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  contextCopy = context;
  v7 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:previewCopy];
  v8 = [PBFPosterSnapshotRequest snapshotRequestForPreview:previewCopy context:contextCopy definition:v7];

  [previewCopy galleryDisplayStyle];
  if (PRPosterGalleryDisplayStyleIsLive())
  {
    v9 = +[PBFPosterSnapshotDefinition gallerySnapshotKeyFrameDefinition];
    v10 = [PBFPosterSnapshotRequest snapshotRequestForPreview:previewCopy context:contextCopy definition:v9];

    v13[0] = v8;
    v13[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  }

  else
  {
    v14[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  return v11;
}

- (id)posterSnapshotRequestsForContext:(id)context
{
  contextCopy = context;
  [(PBFGalleryConfiguration *)self _hydrateSectionIdentifiersIfNeeded];
  array = [(NSOrderedSet *)self->_previews array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __60__PBFGalleryConfiguration_posterSnapshotRequestsForContext___block_invoke;
  v13 = &unk_2782C8348;
  selfCopy = self;
  v15 = contextCopy;
  v6 = contextCopy;
  v7 = [array bs_map:&v10];
  bs_flatten = [v7 bs_flatten];

  return bs_flatten;
}

- (id)complicationSnapshotRequests
{
  [(PBFGalleryConfiguration *)self _hydrateSectionIdentifiersIfNeeded];
  array = [(NSOrderedSet *)self->_previews array];
  v4 = [array bs_compactMap:&__block_literal_global_16];

  bs_flatten = [v4 bs_flatten];

  return bs_flatten;
}

- (void)trimComplicationsCache
{
  complicationSnapshotProvider = self->_complicationSnapshotProvider;
  v3 = MEMORY[0x277CBEB98];
  complicationSnapshotRequests = [(PBFGalleryConfiguration *)self complicationSnapshotRequests];
  v4 = [v3 setWithArray:complicationSnapshotRequests];
  [(PBFComplicationSnapshotProviding *)complicationSnapshotProvider trimCachedSnapshotsToRequests:v4];
}

- (id)posterSnapshotRequestsForExtensionBundleIdentifier:(id)identifier context:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  posterPreviews = [(PBFGalleryConfiguration *)self posterPreviews];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __86__PBFGalleryConfiguration_posterSnapshotRequestsForExtensionBundleIdentifier_context___block_invoke;
  v23[3] = &unk_2782C8370;
  v9 = identifierCopy;
  v24 = v9;
  v10 = [posterPreviews bs_filter:v23];

  v11 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(PBFGalleryConfiguration *)self posterSnapshotRequestsForPreview:*(*(&v19 + 1) + 8 * i) context:contextCopy, v19];
        [v11 addObjectsFromArray:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v14);
  }

  return v11;
}

uint64_t __86__PBFGalleryConfiguration_posterSnapshotRequestsForExtensionBundleIdentifier_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 posterDescriptorLookupInfo];
  v4 = [v3 posterDescriptorExtension];
  v5 = [v4 posterExtensionBundleIdentifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

- (id)gallerySnapshotRequestsForDisplayContexts:(id)contexts
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__PBFGalleryConfiguration_gallerySnapshotRequestsForDisplayContexts___block_invoke;
  v6[3] = &unk_2782C8398;
  v6[4] = self;
  v3 = [contexts bs_compactMap:v6];
  bs_flatten = [v3 bs_flatten];

  return bs_flatten;
}

- (id)prewarmGallerySnapshotRequestsForDisplayContext:(id)context
{
  v43 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  [(PBFGalleryConfiguration *)self _hydrateSectionIdentifiersIfNeeded];
  sectionIdentifiers = [(PBFGalleryConfiguration *)self sectionIdentifiers];
  if ([sectionIdentifiers count])
  {
    v29 = sectionIdentifiers;
    sectionIdentifiers2 = [(PBFGalleryConfiguration *)self sectionIdentifiers];
    v6 = [sectionIdentifiers2 mutableCopy];

    mEMORY[0x277D3EF28] = [MEMORY[0x277D3EF28] sharedHostConfigurationManager];
    galleryPrewarmPolicy = [mEMORY[0x277D3EF28] galleryPrewarmPolicy];

    if ([galleryPrewarmPolicy skipFirstSection])
    {
      [v6 removeObjectAtIndex:0];
    }

    maxPerSectionToPrewarm = [galleryPrewarmPolicy maxPerSectionToPrewarm];
    v28 = galleryPrewarmPolicy;
    maxTotalItemsToPrewarm = [galleryPrewarmPolicy maxTotalItemsToPrewarm];
    v9 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v6;
    v33 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v33)
    {
      v31 = *v39;
      selfCopy = self;
      v10 = 0x2782C4000uLL;
      v11 = 0x2782C4000uLL;
LABEL_6:
      v12 = 0;
      while (1)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v12;
        v13 = [(PBFGalleryConfiguration *)self itemsForSectionWithIdentifier:*(*(&v38 + 1) + 8 * v12)];
        v14 = [v13 count];
        if (maxPerSectionToPrewarm >= v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = maxPerSectionToPrewarm;
        }

        if (v15)
        {
          for (i = 0; i != v15; ++i)
          {
            v17 = [v13 objectAtIndexedSubscript:i];
            v18 = *(v10 + 1120);
            v19 = [*(v11 + 1096) defaultPreviewDefinitionForPreview:v17];
            v20 = [v18 snapshotRequestForPreview:v17 context:contextCopy definition:v19];

            [v9 bs_safeAddObject:v20];
            [v17 galleryDisplayStyle];
            if (PRPosterGalleryDisplayStyleIsLive())
            {
              v21 = *(v10 + 1120);
              [*(v11 + 1096) gallerySnapshotKeyFrameDefinition];
              v22 = v11;
              v24 = v23 = v10;
              v25 = [v21 snapshotRequestForPreview:v17 context:contextCopy definition:v24];

              v10 = v23;
              v11 = v22;
              [v9 bs_safeAddObject:v25];
            }
          }
        }

        v26 = [v9 count];

        self = selfCopy;
        if (v26 >= maxTotalItemsToPrewarm)
        {
          break;
        }

        v12 = v36 + 1;
        if (v36 + 1 == v33)
        {
          v33 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v33)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    sectionIdentifiers = v29;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (void)enumeratePreviews:(id)previews
{
  previewsCopy = previews;
  if (previewsCopy)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    sectionIdentifiers = [(PBFGalleryConfiguration *)self sectionIdentifiers];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__PBFGalleryConfiguration_enumeratePreviews___block_invoke;
    v6[3] = &unk_2782C83E8;
    v6[4] = self;
    v7 = previewsCopy;
    v8 = v9;
    [sectionIdentifiers enumerateObjectsUsingBlock:v6];

    _Block_object_dispose(v9, 8);
  }
}

void __45__PBFGalleryConfiguration_enumeratePreviews___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) itemsForSectionWithIdentifier:a2];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__PBFGalleryConfiguration_enumeratePreviews___block_invoke_2;
  v10[3] = &unk_2782C83C0;
  v13 = a3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = v8;
  v12 = v9;
  [v7 enumerateObjectsUsingBlock:v10];

  *a4 = *(*(*(a1 + 48) + 8) + 24);
}

void __45__PBFGalleryConfiguration_enumeratePreviews___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = MEMORY[0x277CCAA70];
  v8 = a1[6];
  v9 = a2;
  v10 = [v7 indexPathForItem:a3 inSection:v8];
  (*(a1[4] + 16))();

  *a4 = *(*(a1[5] + 8) + 24);
}

- (void)_hydrateSectionIdentifiersIfNeeded
{
  v50 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_sectionIdentifiers)
  {
    v33 = selfCopy;
    v37 = objc_opt_new();
    v30 = objc_opt_new();
    v31 = objc_opt_new();
    v3 = objc_opt_new();
    v32 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    suggestedLayout = [(PBFGalleryConfiguration *)selfCopy suggestedLayout];
    sections = [suggestedLayout sections];

    v36 = [sections countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v36)
    {
      v35 = *v45;
      obj = sections;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v7 = MEMORY[0x277CCACA8];
          v8 = *(*(&v44 + 1) + 8 * i);
          localizedTitle = [v8 localizedTitle];
          type = [v8 type];
          unityDescription = [v8 unityDescription];

          v12 = [v7 stringWithFormat:@"'%@'-%lu-'%@'", localizedTitle, type, unityDescription];

          if (([v37 containsObject:v12] & 1) == 0)
          {
            items = [v8 items];
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __61__PBFGalleryConfiguration__hydrateSectionIdentifiersIfNeeded__block_invoke;
            v43[3] = &unk_2782C8410;
            v43[4] = v33;
            v43[5] = v8;
            v38 = [items bs_mapNoNulls:v43];

            if ([v38 count])
            {
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v14 = v38;
              v15 = [v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
              if (v15)
              {
                v16 = *v40;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v40 != v16)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v18 = *(*(&v39 + 1) + 8 * j);
                    previewUniqueIdentifier = [v18 previewUniqueIdentifier];
                    [v3 setObject:v18 forKey:previewUniqueIdentifier];
                  }

                  v15 = [v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
                }

                while (v15);
              }

              [v32 addObjectsFromArray:v14];
              [v37 addObject:v12];
              [v31 setObject:v8 forKeyedSubscript:v12];
              [v30 setObject:v14 forKeyedSubscript:v12];
            }
          }
        }

        sections = obj;
        v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v36);
    }

    v20 = [v32 copy];
    previews = v33->_previews;
    v33->_previews = v20;

    v22 = [v37 copy];
    sectionIdentifiers = v33->_sectionIdentifiers;
    v33->_sectionIdentifiers = v22;

    v24 = [v31 copy];
    sectionIdentifierToSectionMap = v33->_sectionIdentifierToSectionMap;
    v33->_sectionIdentifierToSectionMap = v24;

    v26 = [v30 copy];
    sectionIdentifierToItems = v33->_sectionIdentifierToItems;
    v33->_sectionIdentifierToItems = v26;

    v28 = [v3 copy];
    previewIdentifierToPreview = v33->_previewIdentifierToPreview;
    v33->_previewIdentifierToPreview = v28;

    selfCopy = v33;
  }

  objc_sync_exit(selfCopy);
}

- (id)_posterDescriptorLookupInfoForItem:(id)item
{
  v39 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = self->_posterDescriptorLookupInfoForItemIdentifier;
  objc_sync_enter(v5);
  posterDescriptorLookupInfoForItemIdentifier = self->_posterDescriptorLookupInfoForItemIdentifier;
  identifier = [itemCopy identifier];
  v8 = [(NSMutableDictionary *)posterDescriptorLookupInfoForItemIdentifier objectForKey:identifier];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    extensionBundleIdentifier = [itemCopy extensionBundleIdentifier];
    v27 = [(NSDictionary *)self->_extensionsByIdentifier objectForKey:?];
    if (v27)
    {
      descriptorIdentifier = [itemCopy descriptorIdentifier];
      stringByDeletingPathExtension = [descriptorIdentifier stringByDeletingPathExtension];
      if (descriptorIdentifier)
      {
        pathExtension = [descriptorIdentifier pathExtension];
        v12 = [pathExtension isEqual:@"STATIC"];

        if (v12)
        {
          v35 = 0uLL;
          v36 = 0uLL;
          v33 = 0uLL;
          v34 = 0uLL;
          v13 = [(NSDictionary *)self->_staticDescriptorsByExtensionIdentifier objectForKey:extensionBundleIdentifier];
          v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v14)
          {
            v15 = *v34;
            while (2)
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v34 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = *(*(&v33 + 1) + 8 * i);
                descriptorIdentifier2 = [v17 descriptorIdentifier];
                if (descriptorIdentifier2 && [stringByDeletingPathExtension isEqualToString:descriptorIdentifier2])
                {
                  v14 = [PBFGenericPosterDescriptorLookupInfo posterDescriptorLookupInfoForPath:v17 extension:v27];
                  v22 = self->_posterDescriptorLookupInfoForItemIdentifier;
                  identifier2 = [itemCopy identifier];
                  [(NSMutableDictionary *)v22 setObject:v14 forKey:identifier2];
                  goto LABEL_30;
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          v31 = 0uLL;
          v32 = 0uLL;
          v29 = 0uLL;
          v30 = 0uLL;
          v13 = [(NSDictionary *)self->_dynamicDescriptorsByExtensionIdentifier objectForKey:extensionBundleIdentifier];
          v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v14)
          {
            v19 = *v30;
            while (2)
            {
              for (j = 0; j != v14; j = j + 1)
              {
                if (*v30 != v19)
                {
                  objc_enumerationMutation(v13);
                }

                v21 = *(*(&v29 + 1) + 8 * j);
                descriptorIdentifier2 = [v21 descriptorIdentifier];
                if (descriptorIdentifier2 && [stringByDeletingPathExtension isEqualToString:descriptorIdentifier2])
                {
                  v14 = [PBFGenericPosterDescriptorLookupInfo posterDescriptorLookupInfoForPath:v21 extension:v27];
                  v24 = self->_posterDescriptorLookupInfoForItemIdentifier;
                  identifier2 = [itemCopy identifier];
                  [(NSMutableDictionary *)v24 setObject:v14 forKey:identifier2];
LABEL_30:

                  goto LABEL_31;
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_31:

        v9 = v14;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  objc_sync_exit(v5);

  return v9;
}

- (id)_posterDescriptorLookupInfoForPreviewItem:(id)item
{
  posterDescriptorLookupInfoForItemIdentifier = self->_posterDescriptorLookupInfoForItemIdentifier;
  previewUniqueIdentifier = [item previewUniqueIdentifier];
  v5 = [(NSMutableDictionary *)posterDescriptorLookupInfoForItemIdentifier objectForKey:previewUniqueIdentifier];

  return v5;
}

- (id)previewForItem:(id)item section:(id)section
{
  v120 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  sectionCopy = section;
  v107 = [(PBFGalleryConfiguration *)self _posterDescriptorLookupInfoForItem:itemCopy];
  if (!v107)
  {
    v18 = 0;
    goto LABEL_70;
  }

  if (sectionCopy && [sectionCopy type] == 2)
  {
    unityDescription = [sectionCopy unityDescription];
  }

  else
  {
    unityDescription = 0;
  }

  modeUUID = [itemCopy modeUUID];
  if (modeUUID && (v8 = objc_alloc(MEMORY[0x277CCAD78]), [itemCopy modeUUID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "initWithUUIDString:", v9), v9, modeUUID, v10))
  {
    mEMORY[0x277D0A9E8] = [MEMORY[0x277D0A9E8] sharedActivityManager];
    availableActivities = [mEMORY[0x277D0A9E8] availableActivities];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __50__PBFGalleryConfiguration_previewForItem_section___block_invoke;
    v108[3] = &unk_2782C57D0;
    v92 = v10;
    v109 = v92;
    v13 = [availableActivities bs_firstObjectPassingTest:v108];

    activityIdentifier = [v13 activityIdentifier];
    activitySymbolImageName = [v13 activitySymbolImageName];

    v82 = 1;
  }

  else
  {
    v82 = 0;
    v92 = 0;
    activitySymbolImageName = 0;
    activityIdentifier = 0;
  }

  subtitleComplication = [itemCopy subtitleComplication];
  v98 = complicationLookupInfoForPBFComplication(subtitleComplication);

  complications = [itemCopy complications];
  v97 = [complications bs_mapNoNulls:&__block_literal_global_47];

  layoutType = [itemCopy layoutType];
  if ((layoutType - 1) > 2)
  {
    v17 = &PBFComplicationLayoutTypeEmpty;
  }

  else
  {
    v17 = off_2782C8468[layoutType - 1];
  }

  v96 = *v17;
  landscapeComplications = [itemCopy landscapeComplications];
  v95 = [landscapeComplications bs_mapNoNulls:&__block_literal_global_49];

  extensionBundleIdentifier = [itemCopy extensionBundleIdentifier];
  v102 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:extensionBundleIdentifier error:0];
  v105 = [v102 URL];
  if (v105)
  {
    displayNameLocalizationKey = [itemCopy displayNameLocalizationKey];
    if (displayNameLocalizationKey)
    {
      v20 = [MEMORY[0x277CCA8D8] pf_uniqueBundleWithURL:v105];
      localizedDisplayName = [v20 localizedStringForKey:displayNameLocalizationKey value:0 table:0];
    }

    else
    {
      localizedDisplayName = [itemCopy localizedDisplayName];
    }

    v21 = objc_alloc(MEMORY[0x277D3ED80]);
    posterDescriptorPath = [v107 posterDescriptorPath];
    v23 = [v21 _initWithPath:posterDescriptorPath];

    displayNameLocalizationKey2 = [v23 displayNameLocalizationKey];
    preferredTitleColors = [v23 preferredTitleColors];
    if (preferredTitleColors && [preferredTitleColors count])
    {
      firstObject = [preferredTitleColors firstObject];
      contentStyle = [firstObject contentStyle];
    }

    else
    {
      contentStyle = [MEMORY[0x277D3EE30] defaultTitleContentStyleForRole:*MEMORY[0x277D3EEF0]];
    }

    titleFontName = [itemCopy titleFontName];
    if (titleFontName && (PRTimeFontIdentifiers(), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 containsObject:titleFontName], v25, v26) && (v27 = objc_msgSend(objc_alloc(MEMORY[0x277D3EE68]), "initWithTimeFontIdentifier:", titleFontName)) != 0)
    {
      v81 = v27;
      v90 = v81;
      [MEMORY[0x277D3EE28] configurationWithTimeFontConfiguration:v81 extensionBundleURL:v105 systemItem:1];
    }

    else
    {
      v28 = [v23 preferredTimeFontConfigurationsWithExtensionBundleURL:v105];
      firstObject2 = [v28 firstObject];
      v30 = firstObject2;
      if (firstObject2)
      {
        v90 = firstObject2;
      }

      else
      {
        v90 = objc_alloc_init(MEMORY[0x277D3EE68]);
      }

      v81 = 0;
      [MEMORY[0x277D3EE28] configurationWithTimeFontConfiguration:v90 extensionBundleURL:v105 systemItem:1];
    }
    v88 = ;
    mEMORY[0x277D3EE40] = [MEMORY[0x277D3EE40] sharedPreferences];
    isAlternateCalendarEnabled = [mEMORY[0x277D3EE40] isAlternateCalendarEnabled];

    preferredGalleryOptions = [v23 preferredGalleryOptions];
    preferredTitleStyle = [preferredGalleryOptions preferredTitleStyle];

    v34 = objc_alloc(MEMORY[0x277D3EE30]);
    [preferredTitleStyle preferredTimeMaxYPortrait];
    v36 = v35;
    [preferredTitleStyle preferredTimeMaxYLandscape];
    v38 = v37;
    [v23 luminance];
    LOBYTE(v78) = isAlternateCalendarEnabled;
    v85 = [v34 initWithTimeFontConfiguration:v88 preferredTitleAlignment:0 preferredTitleLayout:0 titleContentStyle:contentStyle timeNumberingSystem:0 userConfigured:0 preferredTimeMaxYPortrait:v36 preferredTimeMaxYLandscape:v38 contentsLuminance:v39 alternateDateEnabled:v78 groupName:0];
    preferredHomeScreenConfiguration = [v23 preferredHomeScreenConfiguration];
    v41 = preferredHomeScreenConfiguration;
    if (preferredHomeScreenConfiguration)
    {
      allowsModifyingLegibilityBlur = [preferredHomeScreenConfiguration allowsModifyingLegibilityBlur];
      preferredStyle = [v41 preferredStyle];
      if (preferredStyle == 2)
      {
        v44 = 1;
      }

      else
      {
        v44 = 2 * (preferredStyle == 3);
      }

      v45 = objc_alloc(MEMORY[0x277D3EDB0]);
      v46 = [objc_alloc(MEMORY[0x277D3EDC8]) initWithLegibilityBlurEnabled:preferredStyle == 1 allowsModifyingLegibilityBlur:allowsModifyingLegibilityBlur];
      v47 = objc_alloc_init(MEMORY[0x277D3EE18]);
      v48 = objc_alloc_init(MEMORY[0x277D3EDA0]);
      v49 = objc_alloc_init(MEMORY[0x277D3EDA8]);
      v50 = objc_alloc_init(MEMORY[0x277D3EDB8]);
      v84 = [v45 initWithSelectedAppearanceType:v44 lockPosterAppearance:v46 solidColorAppearance:v47 gradientAppearance:v48 homePosterAppearance:v49 customizationConfiguration:v50];
    }

    else
    {
      v84 = [MEMORY[0x277D3EDB0] defaultHomeScreenConfigurationForProvider:extensionBundleIdentifier role:*MEMORY[0x277D3EEF0]];
    }

    v51 = v82 ^ 1;
    if (!activityIdentifier)
    {
      v51 = 1;
    }

    if (v51)
    {
      v83 = 0;
    }

    else
    {
      v83 = [objc_alloc(MEMORY[0x277D3ED98]) initWithActivityIdentifier:activityIdentifier activityUUID:v92];
    }

    preferredRenderingConfiguration = [v23 preferredRenderingConfiguration];
    v53 = PBFPreviewTypeDefault;
    if (sectionCopy && [sectionCopy type] == 3)
    {
      v54 = &PBFPreviewTypeHero;
    }

    else
    {
      if (![itemCopy shouldShowAsShuffleStack])
      {
        goto LABEL_48;
      }

      v54 = &PBFPreviewTypeSmartAlbum;
    }

    v55 = *v54;

    v53 = v55;
LABEL_48:
    v56 = objc_alloc_init(PBFGalleryOptions);
    proactiveRepresentation = [itemCopy proactiveRepresentation];
    [(PBFGalleryOptions *)v56 setSuggestedGalleryItem:proactiveRepresentation];

    if (activityIdentifier || ([itemCopy modeSemanticType], v58 = objc_claimAutoreleasedReturnValue(), v59 = v58 == 0, v58, v59))
    {
      if (activitySymbolImageName)
      {
        [(PBFGalleryOptions *)v56 setModeSymbolImageName:activitySymbolImageName];
      }
    }

    else
    {
      modeSemanticType = [itemCopy modeSemanticType];
      [(PBFGalleryOptions *)v56 setModeSemanticTypeToCreate:modeSemanticType];

      modeSemanticType2 = [itemCopy modeSemanticType];
      integerValue = [modeSemanticType2 integerValue];
      v110 = 0;
      v111 = &v110;
      v112 = 0x2020000000;
      v63 = getDNDSystemImageNameForModeSemanticTypeSymbolLoc_ptr;
      v113 = getDNDSystemImageNameForModeSemanticTypeSymbolLoc_ptr;
      if (!getDNDSystemImageNameForModeSemanticTypeSymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&v115 = 3221225472;
        *(&v115 + 1) = __getDNDSystemImageNameForModeSemanticTypeSymbolLoc_block_invoke;
        v116 = &unk_2782C5CB0;
        v117 = &v110;
        __getDNDSystemImageNameForModeSemanticTypeSymbolLoc_block_invoke(buf);
        v63 = v111[3];
      }

      _Block_object_dispose(&v110, 8);
      if (!v63)
      {
        [PBFGalleryConfiguration previewForItem:section:];
      }

      v64 = v63(integerValue);
      [(PBFGalleryOptions *)v56 setModeSymbolImageName:v64];
    }

    if (PFFeatureEnabled() && ((v65 = PFFeatureEnabled(), v53 != PBFPreviewTypeHero) ? (v66 = v65) : (v66 = 0), v66 == 1))
    {
      v67 = [extensionBundleIdentifier isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp.AegirPoster"];
      [preferredTitleStyle preferredTimeMaxYPortrait];
      v69 = v68;
      if (preferredRenderingConfiguration)
      {
        v70 = [preferredRenderingConfiguration isDepthEffectDisabled] ^ 1;
      }

      else
      {
        v70 = 0;
      }

      v72 = PBFLogGallery();
      v71 = (v67 ^ 1) & ((v69 > 0.0) | v70);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v80 = v69 > 0.0;
        [preferredTitleStyle preferredTimeMaxYPortrait];
        v74 = v73;
        identifier = [itemCopy identifier];
        *buf = 67110402;
        *&buf[4] = v71;
        LOWORD(v115) = 2048;
        *(&v115 + 2) = v74;
        WORD5(v115) = 1024;
        HIDWORD(v115) = v80;
        LOWORD(v116) = 1024;
        *(&v116 + 2) = v70;
        HIWORD(v116) = 2112;
        v117 = identifier;
        v118 = 2112;
        v119 = extensionBundleIdentifier;
        _os_log_impl(&dword_21B526000, v72, OS_LOG_TYPE_INFO, "Complications use bottom layout? %{BOOL}i, Time(%f): %{BOOL}i, Depth: %{BOOL}i, %@:%@", buf, 0x32u);
      }
    }

    else
    {
      LOBYTE(v71) = 0;
    }

    identifier2 = [itemCopy identifier];
    LOBYTE(v79) = v71;
    v18 = [PBFGenericPosterPreview posterPreviewWithUniqueIdentifier:identifier2 displayNameLocalizationKey:displayNameLocalizationKey2 galleryLocalizedTitle:localizedDisplayName galleryLocalizedDescription:unityDescription posterDescriptorLookupInfo:v107 titleStyleConfiguration:v85 focusConfiguration:v83 subtitleComplication:v98 suggestedComplications:v97 suggestedLandscapeComplications:v95 complicationLayoutType:v96 complicationsUseBottomLayout:v79 renderingConfiguration:preferredRenderingConfiguration homeScreenConfiguration:v84 previewType:v53 galleryOptions:v56];

    goto LABEL_69;
  }

  v18 = 0;
LABEL_69:

LABEL_70:

  return v18;
}

uint64_t __50__PBFGalleryConfiguration_previewForItem_section___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activityUniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (PFPosterExtensionProvider)extensionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionProvider);

  return WeakRetained;
}

- (void)initWithSuggestedLayout:(char *)a1 dynamicDescriptorsByExtensionIdentifier:staticDescriptorsByExtensionIdentifier:extensionsByIdentifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterGalleryLayoutClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSuggestedLayout:(char *)a1 dynamicDescriptorsByExtensionIdentifier:staticDescriptorsByExtensionIdentifier:extensionsByIdentifier:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSuggestedLayout:(char *)a1 dynamicDescriptorsByExtensionIdentifier:staticDescriptorsByExtensionIdentifier:extensionsByIdentifier:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSuggestedLayout:(char *)a1 dynamicDescriptorsByExtensionIdentifier:staticDescriptorsByExtensionIdentifier:extensionsByIdentifier:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSuggestedLayout:(char *)a1 dynamicDescriptorsByExtensionIdentifier:staticDescriptorsByExtensionIdentifier:extensionsByIdentifier:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSuggestedLayout:(char *)a1 dynamicDescriptorsByExtensionIdentifier:staticDescriptorsByExtensionIdentifier:extensionsByIdentifier:.cold.6(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSuggestedLayout:(char *)a1 dynamicDescriptorsByExtensionIdentifier:staticDescriptorsByExtensionIdentifier:extensionsByIdentifier:.cold.7(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSuggestedLayout:(char *)a1 dynamicDescriptorsByExtensionIdentifier:staticDescriptorsByExtensionIdentifier:extensionsByIdentifier:.cold.8(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)previewForItem:section:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *soft_DNDSystemImageNameForModeSemanticType(DNDModeSemanticType)"];
  [v0 handleFailureInFunction:v1 file:@"PBFGalleryConfiguration.m" lineNumber:53 description:{@"%s", dlerror()}];

  __break(1u);
}

@end