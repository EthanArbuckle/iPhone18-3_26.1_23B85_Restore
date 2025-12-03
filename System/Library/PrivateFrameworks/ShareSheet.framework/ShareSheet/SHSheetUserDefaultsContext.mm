@interface SHSheetUserDefaultsContext
- (SHSheetUserDefaultsContext)initWithApplicationActivityTypes:(id)types activitiesByUUID:(id)d favoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds excludedActivityTypes:(id)activityTypes activityCategory:(int64_t)category isPresentedModally:(BOOL)self0;
- (id)description;
@end

@implementation SHSheetUserDefaultsContext

- (SHSheetUserDefaultsContext)initWithApplicationActivityTypes:(id)types activitiesByUUID:(id)d favoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds excludedActivityTypes:(id)activityTypes activityCategory:(int64_t)category isPresentedModally:(BOOL)self0
{
  typesCopy = types;
  dCopy = d;
  proxiesCopy = proxies;
  suggestionProxiesCopy = suggestionProxies;
  dsCopy = ds;
  activityTypesCopy = activityTypes;
  v36.receiver = self;
  v36.super_class = SHSheetUserDefaultsContext;
  v22 = [(SHSheetUserDefaultsContext *)&v36 init];
  if (v22)
  {
    v23 = [typesCopy copy];
    applicationActivityTypes = v22->_applicationActivityTypes;
    v22->_applicationActivityTypes = v23;

    v25 = [dCopy copy];
    activitiesByUUID = v22->_activitiesByUUID;
    v22->_activitiesByUUID = v25;

    v27 = [proxiesCopy copy];
    favoritesProxies = v22->_favoritesProxies;
    v22->_favoritesProxies = v27;

    v29 = [suggestionProxiesCopy copy];
    suggestionProxies = v22->_suggestionProxies;
    v22->_suggestionProxies = v29;

    v31 = [dsCopy copy];
    orderedUUIDs = v22->_orderedUUIDs;
    v22->_orderedUUIDs = v31;

    v33 = [activityTypesCopy copy];
    excludedActivityTypes = v22->_excludedActivityTypes;
    v22->_excludedActivityTypes = v33;

    v22->_category = category;
    v22->_isPresentedModally = modally;
  }

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = SHSheetUserDefaultsContext;
  v4 = [(SHSheetUserDefaultsContext *)&v12 description];
  applicationActivityTypes = [(SHSheetUserDefaultsContext *)self applicationActivityTypes];
  activitiesByUUID = [(SHSheetUserDefaultsContext *)self activitiesByUUID];
  favoritesProxies = [(SHSheetUserDefaultsContext *)self favoritesProxies];
  suggestionProxies = [(SHSheetUserDefaultsContext *)self suggestionProxies];
  orderedUUIDs = [(SHSheetUserDefaultsContext *)self orderedUUIDs];
  v10 = [v3 stringWithFormat:@"<%@ applicationActivityTypes:%@ activitiesByUUID:%@ favoritesProxies:%@ suggestionProxies:%@ orderedUUIDs:%@ category:%ld>", v4, applicationActivityTypes, activitiesByUUID, favoritesProxies, suggestionProxies, orderedUUIDs, -[SHSheetUserDefaultsContext category](self, "category")];

  return v10;
}

@end