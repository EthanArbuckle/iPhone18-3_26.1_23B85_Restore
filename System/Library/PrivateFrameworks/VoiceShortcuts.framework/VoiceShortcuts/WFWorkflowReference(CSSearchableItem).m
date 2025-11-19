@interface WFWorkflowReference(CSSearchableItem)
- (id)searchableItemRepresentationWithIconDrawerContext:()CSSearchableItem;
@end

@implementation WFWorkflowReference(CSSearchableItem)

- (id)searchableItemRepresentationWithIconDrawerContext:()CSSearchableItem
{
  v4 = MEMORY[0x277CC34B0];
  v5 = a3;
  v28 = objc_alloc_init(v4);
  v6 = [v28 attributeSet];
  v7 = [a1 name];
  [v6 setDisplayName:v7];

  [v6 setContentDescription:&stru_2845DDD10];
  v8 = [objc_alloc(MEMORY[0x277CD3FE8]) initWithWorkflowReference:a1 includeIcon:1 iconDrawerContext:v5];

  [v8 configureAttributeSet:v6 includingData:0];
  [v6 setContentDescription:0];
  v9 = MEMORY[0x277CBEC38];
  [v6 setUserOwned:MEMORY[0x277CBEC38]];
  [v6 setUserCurated:v9];
  [v6 setUserCreated:v9];
  v10 = [a1 identifier];
  [v6 setUniqueIdentifier:v10];

  [v6 setDomainIdentifier:*MEMORY[0x277D7A350]];
  v11 = [a1 creationDate];
  [v6 setContentCreationDate:v11];

  v12 = [a1 modificationDate];
  [v6 setContentModificationDate:v12];

  v13 = [a1 lastRunDate];
  [v6 setLastUsedDate:v13];

  v14 = [a1 runEventsCount];
  [v6 setPlayCount:v14];

  v15 = [a1 searchAttributionAppBundleIdentifier];
  if (v15)
  {
    [v6 wf_associateWithBundleIdentifier:v15];
  }

  v16 = [a1 icon];
  [v16 glyphCharacter];

  v17 = WFSystemImageNameForGlyphCharacter();
  if (v17)
  {
    v18 = WFSpotlightResultRunnableAccessorySystemImageNameKey();
    [v6 setValue:v17 forCustomKey:v18];
  }

  v19 = objc_alloc(MEMORY[0x277D7A1D0]);
  v20 = [a1 identifier];
  v21 = [a1 name];
  v22 = [a1 color];
  v23 = [a1 glyphCharacter];
  v24 = [a1 associatedAppBundleIdentifier];
  v25 = [a1 searchAttributionAppBundleIdentifier];
  v26 = [v19 initWithIdentifier:v20 name:v21 color:v22 glyphCharacter:v23 associatedAppBundleIdentifier:v24 searchAttributionAppBundleIdentifier:v25];

  [v6 setWorkflowReferenceForDisplayRepresentation:v26];
  [v6 associateWithAppEntityForDescriptor:v26];

  return v28;
}

@end