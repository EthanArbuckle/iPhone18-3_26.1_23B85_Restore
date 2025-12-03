@interface WFWorkflowReference(CSSearchableItem)
- (id)searchableItemRepresentationWithIconDrawerContext:()CSSearchableItem;
@end

@implementation WFWorkflowReference(CSSearchableItem)

- (id)searchableItemRepresentationWithIconDrawerContext:()CSSearchableItem
{
  v4 = MEMORY[0x277CC34B0];
  v5 = a3;
  v28 = objc_alloc_init(v4);
  attributeSet = [v28 attributeSet];
  name = [self name];
  [attributeSet setDisplayName:name];

  [attributeSet setContentDescription:&stru_2845DDD10];
  v8 = [objc_alloc(MEMORY[0x277CD3FE8]) initWithWorkflowReference:self includeIcon:1 iconDrawerContext:v5];

  [v8 configureAttributeSet:attributeSet includingData:0];
  [attributeSet setContentDescription:0];
  v9 = MEMORY[0x277CBEC38];
  [attributeSet setUserOwned:MEMORY[0x277CBEC38]];
  [attributeSet setUserCurated:v9];
  [attributeSet setUserCreated:v9];
  identifier = [self identifier];
  [attributeSet setUniqueIdentifier:identifier];

  [attributeSet setDomainIdentifier:*MEMORY[0x277D7A350]];
  creationDate = [self creationDate];
  [attributeSet setContentCreationDate:creationDate];

  modificationDate = [self modificationDate];
  [attributeSet setContentModificationDate:modificationDate];

  lastRunDate = [self lastRunDate];
  [attributeSet setLastUsedDate:lastRunDate];

  runEventsCount = [self runEventsCount];
  [attributeSet setPlayCount:runEventsCount];

  searchAttributionAppBundleIdentifier = [self searchAttributionAppBundleIdentifier];
  if (searchAttributionAppBundleIdentifier)
  {
    [attributeSet wf_associateWithBundleIdentifier:searchAttributionAppBundleIdentifier];
  }

  icon = [self icon];
  [icon glyphCharacter];

  v17 = WFSystemImageNameForGlyphCharacter();
  if (v17)
  {
    v18 = WFSpotlightResultRunnableAccessorySystemImageNameKey();
    [attributeSet setValue:v17 forCustomKey:v18];
  }

  v19 = objc_alloc(MEMORY[0x277D7A1D0]);
  identifier2 = [self identifier];
  name2 = [self name];
  color = [self color];
  glyphCharacter = [self glyphCharacter];
  associatedAppBundleIdentifier = [self associatedAppBundleIdentifier];
  searchAttributionAppBundleIdentifier2 = [self searchAttributionAppBundleIdentifier];
  v26 = [v19 initWithIdentifier:identifier2 name:name2 color:color glyphCharacter:glyphCharacter associatedAppBundleIdentifier:associatedAppBundleIdentifier searchAttributionAppBundleIdentifier:searchAttributionAppBundleIdentifier2];

  [attributeSet setWorkflowReferenceForDisplayRepresentation:v26];
  [attributeSet associateWithAppEntityForDescriptor:v26];

  return v28;
}

@end