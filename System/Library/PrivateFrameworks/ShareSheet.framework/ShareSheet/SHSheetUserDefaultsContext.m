@interface SHSheetUserDefaultsContext
- (SHSheetUserDefaultsContext)initWithApplicationActivityTypes:(id)a3 activitiesByUUID:(id)a4 favoritesProxies:(id)a5 suggestionProxies:(id)a6 orderedUUIDs:(id)a7 excludedActivityTypes:(id)a8 activityCategory:(int64_t)a9 isPresentedModally:(BOOL)a10;
- (id)description;
@end

@implementation SHSheetUserDefaultsContext

- (SHSheetUserDefaultsContext)initWithApplicationActivityTypes:(id)a3 activitiesByUUID:(id)a4 favoritesProxies:(id)a5 suggestionProxies:(id)a6 orderedUUIDs:(id)a7 excludedActivityTypes:(id)a8 activityCategory:(int64_t)a9 isPresentedModally:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v36.receiver = self;
  v36.super_class = SHSheetUserDefaultsContext;
  v22 = [(SHSheetUserDefaultsContext *)&v36 init];
  if (v22)
  {
    v23 = [v16 copy];
    applicationActivityTypes = v22->_applicationActivityTypes;
    v22->_applicationActivityTypes = v23;

    v25 = [v17 copy];
    activitiesByUUID = v22->_activitiesByUUID;
    v22->_activitiesByUUID = v25;

    v27 = [v18 copy];
    favoritesProxies = v22->_favoritesProxies;
    v22->_favoritesProxies = v27;

    v29 = [v19 copy];
    suggestionProxies = v22->_suggestionProxies;
    v22->_suggestionProxies = v29;

    v31 = [v20 copy];
    orderedUUIDs = v22->_orderedUUIDs;
    v22->_orderedUUIDs = v31;

    v33 = [v21 copy];
    excludedActivityTypes = v22->_excludedActivityTypes;
    v22->_excludedActivityTypes = v33;

    v22->_category = a9;
    v22->_isPresentedModally = a10;
  }

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = SHSheetUserDefaultsContext;
  v4 = [(SHSheetUserDefaultsContext *)&v12 description];
  v5 = [(SHSheetUserDefaultsContext *)self applicationActivityTypes];
  v6 = [(SHSheetUserDefaultsContext *)self activitiesByUUID];
  v7 = [(SHSheetUserDefaultsContext *)self favoritesProxies];
  v8 = [(SHSheetUserDefaultsContext *)self suggestionProxies];
  v9 = [(SHSheetUserDefaultsContext *)self orderedUUIDs];
  v10 = [v3 stringWithFormat:@"<%@ applicationActivityTypes:%@ activitiesByUUID:%@ favoritesProxies:%@ suggestionProxies:%@ orderedUUIDs:%@ category:%ld>", v4, v5, v6, v7, v8, v9, -[SHSheetUserDefaultsContext category](self, "category")];

  return v10;
}

@end