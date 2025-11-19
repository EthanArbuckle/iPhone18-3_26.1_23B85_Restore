@interface PBFPosterSnapshotRequest
+ (BOOL)isRequestFulfilled:(id)a3 forDefinition:(id)a4 modelCoordinatorProvider:(id)a5;
+ (BOOL)isRequestFulfilled:(id)a3 modelCoordinatorProvider:(id)a4;
+ (id)filterFulfilledSnapshotRequests:(id)a3 modelCoordinatorProvider:(id)a4;
+ (id)snapshotRequestForConfiguration:(id)a3 context:(id)a4;
+ (id)snapshotRequestForConfiguration:(id)a3 withinSwitcherConfiguration:(id)a4 variant:(int64_t)a5 snapshotDefinitions:(id)a6 displayContext:(id)a7;
+ (id)snapshotRequestForPreview:(id)a3 context:(id)a4;
+ (id)snapshotRequestForPreview:(id)a3 context:(id)a4 definition:(id)a5;
- (BOOL)_isEqualToRequest:(id)a3 allowingOtherDefinitionsAreSubset:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidWithError:(id *)a3;
- (PBFPosterSnapshotRequest)initWithConfiguration:(id)a3 definitions:(id)a4 context:(id)a5;
- (PBFPosterSnapshotRequest)initWithDescriptor:(id)a3 configuredProperties:(id)a4 definitions:(id)a5 context:(id)a6;
- (PBFPosterSnapshotRequest)initWithPath:(id)a3 provider:(id)a4 configuredProperties:(id)a5 definitions:(id)a6 context:(id)a7;
- (PBFPosterSnapshotRequest)requestWithDefinitions:(id)a3;
- (PBFPosterSnapshotRequest)requestWithDisplayContext:(id)a3;
- (PBFPosterSnapshotRequest)requestWithIntention:(unint64_t)a3;
- (PBFPosterSnapshotRequest)requestWithLoadFromCacheIfAvailable:(BOOL)a3;
- (PBFPosterSnapshotRequest)requestWithPowerLogReason:(int64_t)a3;
- (PBFPosterSnapshotRequest)requestWithSignificantEventsCounter:(unint64_t)a3;
- (id)_buildPUIPosterSnapshotRequests;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PBFPosterSnapshotRequest

+ (id)snapshotRequestForPreview:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:v7];
  v9 = [a1 snapshotRequestForPreview:v7 context:v6 definition:v8];

  return v9;
}

+ (id)snapshotRequestForPreview:(id)a3 context:(id)a4 definition:(id)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  if (!v11)
  {
    [PBFPosterSnapshotRequest snapshotRequestForPreview:a2 context:? definition:?];
  }

  v12 = v11;
  if (([v11 conformsToProtocol:&unk_282D42DD0] & 1) == 0)
  {
    [PBFPosterSnapshotRequest snapshotRequestForPreview:a2 context:? definition:?];
  }

  v13 = v10;
  NSClassFromString(&cfstr_Pbfpostersnaps_2.isa);
  if (!v13)
  {
    [PBFPosterSnapshotRequest snapshotRequestForPreview:a2 context:? definition:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotRequest snapshotRequestForPreview:a2 context:? definition:?];
  }

  v14 = [v12 posterDescriptorLookupInfo];
  v15 = [v14 posterDescriptorPath];

  v16 = [v12 posterDescriptorLookupInfo];
  v17 = [v16 posterDescriptorExtension];
  v18 = [v17 posterExtensionBundleIdentifier];

  v19 = [MEMORY[0x277D3ED60] pbf_configuredPropertiesForPreview:v12];
  v23[0] = v13;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v21 = [[PBFPosterSnapshotRequest alloc] initWithPath:v15 provider:v18 configuredProperties:v19 definitions:v20 context:v9];

  return v21;
}

+ (id)snapshotRequestForConfiguration:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!v8)
  {
    [PBFPosterSnapshotRequest snapshotRequestForConfiguration:a2 context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotRequest snapshotRequestForConfiguration:a2 context:?];
  }

  v9 = [v8 _path];
  if (([v9 isServerPosterPath] & 1) == 0)
  {
    [PBFPosterSnapshotRequest snapshotRequestForConfiguration:a2 context:?];
  }

  v10 = [v9 identity];
  v11 = [v10 type];

  if (v11 != 3)
  {
    [PBFPosterSnapshotRequest snapshotRequestForConfiguration:a2 context:?];
  }

  v12 = [v8 loadConfiguredPropertiesWithError:0];
  v13 = [PBFPosterSnapshotRequest alloc];
  v14 = [v9 serverIdentity];
  v15 = [v14 provider];
  v16 = +[PBFPosterSnapshotDefinition defaultConfigurationDefinitions];
  v17 = [(PBFPosterSnapshotRequest *)v13 initWithPath:v9 provider:v15 configuredProperties:v12 definitions:v16 context:v7];

  return v17;
}

+ (id)filterFulfilledSnapshotRequests:(id)a3 modelCoordinatorProvider:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB58];
  v7 = a3;
  v8 = [v6 set];
  v9 = MEMORY[0x277CBEAC0];
  v10 = [v7 allObjects];

  v11 = [v9 pf_bucketizeArray:v10 keyMaker:&__block_literal_global_9];
  v12 = [v11 mutableCopy];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__PBFPosterSnapshotRequest_filterFulfilledSnapshotRequests_modelCoordinatorProvider___block_invoke_2;
  v18[3] = &unk_2782C7C48;
  v19 = v5;
  v13 = v8;
  v20 = v13;
  v14 = v5;
  [v12 enumerateKeysAndObjectsWithOptions:0 usingBlock:v18];
  v15 = v20;
  v16 = v13;

  return v13;
}

id __85__PBFPosterSnapshotRequest_filterFulfilledSnapshotRequests_modelCoordinatorProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 path];
  v3 = [v2 serverIdentity];

  return v3;
}

void __85__PBFPosterSnapshotRequest_filterFulfilledSnapshotRequests_modelCoordinatorProvider___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) pbf_posterSnapshotCoordinatorForIdentity:a2];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (([v6 snapshotFulfilledForRequest:v12] & 1) == 0)
        {
          [*(a1 + 40) addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

+ (BOOL)isRequestFulfilled:(id)a3 modelCoordinatorProvider:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 loadFromCacheIfAvailable];
    v9 = 0;
    if (v7 && v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = [v6 definitions];
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            if (![a1 isRequestFulfilled:v6 forDefinition:*(*(&v16 + 1) + 8 * i) modelCoordinatorProvider:v7])
            {
              v9 = 0;
              goto LABEL_15;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v9 = 1;
LABEL_15:
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isRequestFulfilled:(id)a3 forDefinition:(id)a4 modelCoordinatorProvider:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 loadFromCacheIfAvailable];
    v11 = 0;
    if (v9 && v10)
    {
      v12 = [v7 path];
      v13 = [v12 serverIdentity];
      v14 = [v9 pbf_posterSnapshotCoordinatorForIdentity:v13];

      v15 = [v7 displayContext];
      v16 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:v15 definition:v8];

      v11 = [v14 snapshotExistsForContext:v16];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PBFPosterSnapshotRequest)initWithConfiguration:(id)a3 definitions:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 _path];
  if (([v12 isServerPosterPath] & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithConfiguration:a2 definitions:? context:?];
  }

  v13 = [v12 identity];
  v14 = [v13 type];

  if (v14 != 3)
  {
    [PBFPosterSnapshotRequest initWithConfiguration:a2 definitions:? context:?];
  }

  v15 = [v9 loadConfiguredPropertiesWithError:0];
  v16 = [v12 serverIdentity];
  v17 = [v16 provider];
  v18 = [(PBFPosterSnapshotRequest *)self initWithPath:v12 provider:v17 configuredProperties:v15 definitions:v10 context:v11];

  return v18;
}

- (PBFPosterSnapshotRequest)initWithDescriptor:(id)a3 configuredProperties:(id)a4 definitions:(id)a5 context:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 _path];
  if (([v15 isServerPosterPath] & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithDescriptor:a2 configuredProperties:? definitions:? context:?];
  }

  v16 = [v15 identity];
  v17 = [v16 type];

  if (v17 != 3)
  {
    [PBFPosterSnapshotRequest initWithDescriptor:a2 configuredProperties:? definitions:? context:?];
  }

  v18 = [v15 serverIdentity];
  v19 = [v18 provider];
  v20 = [(PBFPosterSnapshotRequest *)self initWithPath:v15 provider:v19 configuredProperties:v12 definitions:v13 context:v14];

  return v20;
}

- (PBFPosterSnapshotRequest)initWithPath:(id)a3 provider:(id)a4 configuredProperties:(id)a5 definitions:(id)a6 context:(id)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = PBFPosterSnapshotRequestIdentifierForPath(v14);
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v19)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  v20 = v15;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v20)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  v21 = v14;
  NSClassFromString(&cfstr_Pfserverposter_0.isa);
  if (!v21)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  v22 = v16;
  if (v22)
  {
    NSClassFromString(&cfstr_Prposterconfig_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
    }
  }

  v23 = v17;
  NSClassFromString(&cfstr_Nsarray.isa);
  if (!v23)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  v24 = v18;
  if (!v24)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  v25 = v24;
  if (([v24 conformsToProtocol:&unk_282D481D8] & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  v36.receiver = self;
  v36.super_class = PBFPosterSnapshotRequest;
  v26 = [(PBFPosterSnapshotRequest *)&v36 init];
  if (v26)
  {
    v27 = PBFPosterSnapshotRequestIdentifierForPath(v21);
    identifier = v26->_identifier;
    v26->_identifier = v27;

    objc_storeStrong(&v26->_path, a3);
    v29 = [v22 copy];
    configuredProperties = v26->_configuredProperties;
    v26->_configuredProperties = v29;

    v31 = [v23 copy];
    definitions = v26->_definitions;
    v26->_definitions = v31;

    v26->_cachedHash = 0x7FFFFFFFFFFFFFFFLL;
    v26->_intention = 2;
    v26->_powerLogReason = 0;
    v33 = [v20 copy];
    provider = v26->_provider;
    v26->_provider = v33;

    objc_storeStrong(&v26->_displayContext, a7);
    v26->_loadFromCacheIfAvailable = 1;
    v26->_significantEventsCounter = 0;
  }

  return v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithPath:provider:configuredProperties:definitions:context:", self->_path, self->_provider, self->_configuredProperties, self->_definitions, self->_displayContext}];
  *(result + 8) = self->_intention;
  *(result + 10) = self->_powerLogReason;
  *(result + 24) = self->_loadFromCacheIfAvailable;
  *(result + 9) = self->_significantEventsCounter;
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_identifier withName:@"identifier"];
  v4 = [v3 appendObject:self->_path withName:@"path"];
  v5 = [v3 appendObject:self->_definitions withName:@"definitions"];
  v6 = [v3 appendBool:self->_loadFromCacheIfAvailable withName:@"loadFromCacheIfAvailable"];
  significantEventsCounter = self->_significantEventsCounter;
  if (significantEventsCounter)
  {
    v8 = [v3 appendUnsignedInteger:significantEventsCounter withName:@"_significantEventsCounter"];
  }

  v9 = NSStringFromPBFPosterSnapshotRequestIntention(self->_intention);
  [v3 appendString:v9 withName:@"intention"];

  v10 = [v3 build];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PBFPosterSnapshotRequest *)self isEqualToRequest:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)_isEqualToRequest:(id)a3 allowingOtherDefinitionsAreSubset:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6 == self)
  {
    LOBYTE(v23) = 1;
    goto LABEL_18;
  }

  if (!v6)
  {
    goto LABEL_17;
  }

  v8 = [(PBFPosterSnapshotRequest *)self identifier];
  v9 = [(PBFPosterSnapshotRequest *)v7 identifier];
  v10 = BSEqualObjects();

  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = [(PBFPosterSnapshotRequest *)self path];
  v12 = [v11 isServerPosterPath];
  v13 = [(PBFPosterSnapshotRequest *)v7 path];
  v14 = [v13 isServerPosterPath];

  if (v12 != v14)
  {
    goto LABEL_17;
  }

  v15 = [(PBFPosterSnapshotRequest *)self path];
  if (([v15 isServerPosterPath] & 1) == 0)
  {

LABEL_11:
    v24 = [(PBFPosterSnapshotRequest *)self path];
    v25 = [v24 contentsURL];
    v26 = [(PBFPosterSnapshotRequest *)v7 path];
    v27 = [v26 contentsURL];
    v28 = BSEqualObjects();

    if (!v28)
    {
LABEL_17:
      LOBYTE(v23) = 0;
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v16 = [(PBFPosterSnapshotRequest *)v7 path];
  v17 = [v16 isServerPosterPath];

  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = [(PBFPosterSnapshotRequest *)self path];
  v19 = [v18 identity];
  v20 = [(PBFPosterSnapshotRequest *)v7 path];
  v21 = [v20 identity];
  v22 = BSEqualObjects();

  if ((v22 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  v29 = [(PBFPosterSnapshotRequest *)self displayContext];
  v30 = [(PBFPosterSnapshotRequest *)v7 displayContext];
  v31 = BSEqualObjects();

  if (!v31)
  {
    goto LABEL_17;
  }

  v32 = [(PBFPosterSnapshotRequest *)self significantEventsCounter];
  if (v32 != [(PBFPosterSnapshotRequest *)v7 significantEventsCounter])
  {
    goto LABEL_17;
  }

  v33 = [(PBFPosterSnapshotRequest *)self configuredProperties];
  v34 = [(PBFPosterSnapshotRequest *)v7 configuredProperties];
  v35 = [v33 isEqualToConfiguredProperties:v34 comparingPropertiesAffectingSnapshotsOnly:1];

  if (!v35)
  {
    goto LABEL_17;
  }

  v36 = MEMORY[0x277CBEB98];
  v37 = [(PBFPosterSnapshotRequest *)self definitions];
  v38 = [v36 setWithArray:v37];

  v39 = MEMORY[0x277CBEB98];
  v40 = [(PBFPosterSnapshotRequest *)v7 definitions];
  v41 = [v39 setWithArray:v40];

  if (v4)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __80__PBFPosterSnapshotRequest__isEqualToRequest_allowingOtherDefinitionsAreSubset___block_invoke;
    v43[3] = &unk_2782C7C70;
    v44 = v38;
    v23 = [v41 bs_containsObjectPassingTest:v43] ^ 1;
  }

  else
  {
    v23 = BSEqualObjects();
  }

LABEL_18:
  return v23;
}

- (unint64_t)hash
{
  cachedHash = self->_cachedHash;
  if (cachedHash == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [MEMORY[0x277CF0C40] builder];
    v5 = [v4 appendString:self->_identifier];
    v6 = [(PFServerPosterPath *)self->_path contentsURL];
    v7 = [v4 appendObject:v6];

    v8 = [v4 appendObject:self->_definitions];
    v9 = [(PBFPosterSnapshotRequest *)self displayContext];
    v10 = [v4 appendObject:v9];

    v11 = [v4 appendObject:self->_provider];
    v12 = [v4 appendInteger:self->_significantEventsCounter];
    cachedHash = [v4 hash];
    self->_cachedHash = cachedHash;
  }

  return cachedHash;
}

- (BOOL)isValidWithError:(id *)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D3EF30];
  v5 = [(PBFPosterSnapshotRequest *)self path];
  v6 = [v5 role];
  v7 = [v4 snapshottingSupportedForRole:v6];

  if (a3 && (v7 & 1) == 0)
  {
    v8 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA470];
    v12[0] = @"PBFPosterSnapshotManager only supports PFPosterRoleLockScreen currently.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a3 = [v8 pbf_generalErrorWithCode:1 userInfo:v9];
  }

  return v7;
}

- (PBFPosterSnapshotRequest)requestWithPowerLogReason:(int64_t)a3
{
  if (self->_powerLogReason == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [(PBFPosterSnapshotRequest *)self copy];
    v3->_powerLogReason = a3;
  }

  return v3;
}

- (PBFPosterSnapshotRequest)requestWithIntention:(unint64_t)a3
{
  if (self->_intention == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [(PBFPosterSnapshotRequest *)self copy];
    v3->_intention = a3;
  }

  return v3;
}

- (PBFPosterSnapshotRequest)requestWithDisplayContext:(id)a3
{
  v5 = a3;
  if ([(PBFDisplayContext *)self->_displayContext isEqualToDisplayContext:v5])
  {
    v6 = self;
  }

  else
  {
    v6 = [(PBFPosterSnapshotRequest *)self copy];
    objc_storeStrong(&v6->_displayContext, a3);
  }

  return v6;
}

- (PBFPosterSnapshotRequest)requestWithDefinitions:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] setWithArray:self->_definitions];
  v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v7 = [v5 isEqualToSet:v6];

  if (v7)
  {
    v8 = self;
  }

  else
  {
    v8 = [(PBFPosterSnapshotRequest *)self copy];
    v9 = [v4 copy];
    definitions = v8->_definitions;
    v8->_definitions = v9;
  }

  return v8;
}

- (PBFPosterSnapshotRequest)requestWithLoadFromCacheIfAvailable:(BOOL)a3
{
  if (self->_loadFromCacheIfAvailable == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [(PBFPosterSnapshotRequest *)self copy];
    v3->_loadFromCacheIfAvailable = a3;
  }

  return v3;
}

- (PBFPosterSnapshotRequest)requestWithSignificantEventsCounter:(unint64_t)a3
{
  if (self->_significantEventsCounter == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [(PBFPosterSnapshotRequest *)self copy];
    v3->_significantEventsCounter = a3;
  }

  return v3;
}

- (id)_buildPUIPosterSnapshotRequests
{
  v112 = *MEMORY[0x277D85DE8];
  v73 = objc_opt_new();
  v75 = [(PBFPosterSnapshotRequest *)self path];
  v87 = [(PBFPosterSnapshotRequest *)self configuredProperties];
  v3 = MEMORY[0x277CBEB58];
  v4 = [(PBFPosterSnapshotRequest *)self definitions];
  v5 = [v3 setWithArray:v4];

  v6 = [(PBFPosterSnapshotRequest *)self displayContext];
  v72 = [(PBFPosterSnapshotRequest *)self significantEventsCounter];
  v88 = v6;
  v86 = [MEMORY[0x277D0ACE0] pbf_displayConfigurationForDisplayContext:v6];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v5;
  v74 = [obj countByEnumeratingWithState:&v106 objects:v111 count:16];
  if (v74)
  {
    v69 = *MEMORY[0x277D3EE98];
    v71 = *v107;
    v7 = 0x277D75000uLL;
    do
    {
      v8 = 0;
      do
      {
        if (*v107 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v85 = v8;
        v9 = *(*(&v106 + 1) + 8 * v8);
        v10 = UIAccessibilityContrastFromPBFAccessibilityContrast([v88 pbf_accessibilityContrast]);
        v11 = [*(v7 + 3200) traitCollectionWithUserInterfaceStyle:{objc_msgSend(v88, "pbf_userInterfaceStyle")}];
        v12 = v11;
        v83 = v10;
        if (v10 != -1)
        {
          v13 = *(v7 + 3200);
          v110[0] = v11;
          v14 = [v13 traitCollectionWithAccessibilityContrast:v10];
          v110[1] = v14;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
          v16 = [v13 traitCollectionWithTraitsFromCollections:v15];

          v12 = v16;
        }

        v17 = objc_alloc_init(MEMORY[0x277D3EB10]);
        [v17 setSnapshotOptions:{objc_msgSend(MEMORY[0x277D3EE10], "snapshotOptionsForDefinition:", v9)}];
        [v17 setTraitCollection:v12];
        [v17 setDisplayConfiguration:v86];
        v18 = [v88 pbf_interfaceOrientation];
        v84 = v12;
        if (v18)
        {
          if (PUIDynamicRotationIsActive())
          {
            v19 = 1;
          }

          else
          {
            v19 = v18;
          }

          v20 = v18;
        }

        else
        {
          v21 = [v75 role];
          v22 = [v21 isEqualToString:v69];

          if (v22)
          {
            v19 = 4;
          }

          else
          {
            v19 = 1;
          }

          v20 = v19;
        }

        [v17 setInterfaceOrientation:v19];
        [v17 setDeviceOrientation:v20];
        v81 = [v9 renderingContent];
        v79 = [v9 renderingMode];
        v23 = [v9 isUnlocked];
        v24 = 0.0;
        if (v23)
        {
          v24 = 1.0;
        }

        v78 = v24;
        v80 = [v9 includesHeaderElements];
        v25 = [v87 complicationLayout];
        v26 = [v25 inlineComplication];

        v27 = [v87 complicationLayout];
        v28 = [v27 complications];
        v29 = [v28 count];
        v30 = v29 != 0;

        v31 = [v87 complicationLayout];
        v32 = [v31 sidebarComplications];
        v33 = [v32 count];

        v34 = [v87 titleStyleConfiguration];
        [v34 prefersVerticalTitleLayout];

        v35 = [v9 includesComplications];
        v36 = v35 ^ 1;
        if (v26)
        {
          v36 = 1;
        }

        v37 = (v29 | v33) != 0;
        if (v36)
        {
          v37 = v35;
        }

        v76 = v37;
        v77 = v26 != 0;
        v38 = [v87 complicationLayout];
        v39 = [v38 complicationsUseBottomLayout];

        v40 = [v87 renderingConfiguration];
        BSInterfaceOrientationIsPortrait();
        v82 = v40;
        if (v40)
        {
          v41 = [v40 isDepthEffectDisabled];
        }

        else
        {
          v41 = PRIsDepthEffectDisallowed();
        }

        v42 = v41;
        v43 = [v9 isIdle];
        [v86 bounds];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        [MEMORY[0x277D02CF0] pr_defaultSalientContentRectForBounds:objc_msgSend(v17 interfaceOrientation:{"deviceOrientation"), v44, v46, v48, v50}];
        v56 = [objc_alloc(MEMORY[0x277D3EFC0]) initWithDisplayConfiguration:v86 canvasBounds:objc_msgSend(v17 interfaceOrientation:"interfaceOrientation") deviceOrientation:objc_msgSend(v17 userInterfaceStyle:"deviceOrientation") accessibilityContrast:objc_msgSend(v88 salientContentRectangle:"pbf_userInterfaceStyle") contentOcclusionRectangles:{v83, 0, v45, v47, v49, v51, v52, v53, v54, v55}];
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = __59__PBFPosterSnapshotRequest__buildPUIPosterSnapshotRequests__block_invoke;
        v91[3] = &unk_2782C7C98;
        v91[4] = v9;
        v93 = v72;
        v94 = v79;
        v95 = v81;
        v96 = v78;
        v57 = v87;
        v92 = v57;
        v97 = v77;
        v98 = v30;
        v99 = v33 != 0;
        v100 = v39;
        v101 = v76;
        v102 = v80;
        v103 = v42;
        v104 = v30 & (v39 ^ 1);
        v105 = v43;
        [v17 applySceneSettings:v91];
        v58 = [v17 buildWithPath:v75 configuredProperties:v57 snapshotDefinition:v9 sceneDescriptor:v56];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __59__PBFPosterSnapshotRequest__buildPUIPosterSnapshotRequests__block_invoke_2;
        aBlock[3] = &unk_2782C7CC0;
        v90 = v58;
        v59 = v58;
        v60 = _Block_copy(aBlock);
        v61 = [v9 levelSets];
        v62 = [v61 bs_map:&__block_literal_global_253];

        v63 = objc_alloc(MEMORY[0x277D3EFA8]);
        v64 = [v9 uniqueIdentifier];
        [v9 persistenceScale];
        v65 = [v63 initWithLevelSets:v62 snapshotDefinitionIdentifier:v64 persistenceScale:?];

        v66 = [objc_alloc(MEMORY[0x277D3EF98]) initWithOutputDescriptor:v65 sceneDescriptor:v56 attachments:0 analysis:0];
        v67 = [objc_alloc(MEMORY[0x277D3EFB0]) initWithPath:v75 sceneSettingsApplicator:v60 priority:0 snapshotDescriptor:v66 retryCount:0 timeout:20.0];
        [v73 setObject:v67 forKey:v9];

        v8 = v85 + 1;
        v7 = 0x277D75000;
      }

      while (v74 != v85 + 1);
      v74 = [obj countByEnumeratingWithState:&v106 objects:v111 count:16];
    }

    while (v74);
  }

  return v73;
}

void __59__PBFPosterSnapshotRequest__buildPUIPosterSnapshotRequests__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  [v7 pui_setPosterBoundingShape:{objc_msgSend(v3, "boundingShape")}];
  [v7 pui_setSignificantEventsCounter:*(a1 + 48)];
  [v7 pui_setSnapshot:1];
  [v7 pui_setMode:*(a1 + 56)];
  [v7 pui_setContent:*(a1 + 64)];
  [v7 pr_setUnlockProgress:*(a1 + 72)];
  v4 = [*(a1 + 32) uniqueIdentifier];
  [v7 pui_setPreviewIdentifier:v4];

  v5 = [*(a1 + 40) titleStyleConfiguration];
  [v7 pr_setPosterTitleStyleConfiguration:v5];

  v6 = [*(a1 + 40) ambientConfiguration];
  [v7 pr_setPosterAmbientConfiguration:v6];

  [v7 pui_setInlineComplicationConfigured:*(a1 + 80)];
  [v7 pui_setComplicationRowConfigured:*(a1 + 81)];
  [v7 pui_setComplicationSidebarConfigured:*(a1 + 82)];
  [v7 pui_setComplicationRowAtBottom:*(a1 + 83)];
  [v7 pui_setShowsComplications:*(a1 + 84)];
  [v7 pui_setShowsHeaderElements:*(a1 + 85)];
  [v7 pr_setDepthEffectDisallowed:*(a1 + 86)];
  [v7 pui_setAdaptiveTimeDisabled:*(a1 + 87)];
  [v7 pui_setIdle:*(a1 + 88)];
}

id __59__PBFPosterSnapshotRequest__buildPUIPosterSnapshotRequests__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D3EF70];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 levels];

  v6 = [v4 initWithSet:v5];

  return v6;
}

+ (id)snapshotRequestForConfiguration:(id)a3 withinSwitcherConfiguration:(id)a4 variant:(int64_t)a5 snapshotDefinitions:(id)a6 displayContext:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  if ((a5 + 1) < 2)
  {
    v15 = v11;
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    v20 = [[PBFPosterSnapshotRequest alloc] initWithConfiguration:v15 definitions:v13 context:v14];

    goto LABEL_14;
  }

  if (a5 == 1)
  {
    v16 = [v12 configuredPropertiesForPoster:v11];
    v17 = [v16 homeScreenConfiguration];

    v18 = [v17 selectedAppearanceType];
    if (v18 == 3)
    {
      v19 = [v12 _childPosterConfigurationForConfiguration:v11];
    }

    else
    {
      if (v18)
      {
        v15 = 0;
LABEL_11:

        if (v15)
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }

      v19 = v11;
    }

    v15 = v19;
    goto LABEL_11;
  }

LABEL_13:
  v20 = 0;
LABEL_14:

  return v20;
}

+ (void)snapshotRequestForPreview:(char *)a1 context:definition:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFPosterPreview)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)snapshotRequestForPreview:(char *)a1 context:definition:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFPosterSnapshotDefinitionClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)snapshotRequestForPreview:(char *)a1 context:definition:.cold.3(char *a1)
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

+ (void)snapshotRequestForPreview:(char *)a1 context:definition:.cold.4(char *a1)
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

+ (void)snapshotRequestForConfiguration:(char *)a1 context:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)snapshotRequestForConfiguration:(char *)a1 context:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[path isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)snapshotRequestForConfiguration:(char *)a1 context:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[path identity] type] == PFServerPosterTypeConfiguration", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)snapshotRequestForConfiguration:(char *)a1 context:.cold.4(char *a1)
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

- (void)initWithConfiguration:(char *)a1 definitions:context:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[path isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(char *)a1 definitions:context:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[path identity] type] == PFServerPosterTypeConfiguration", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDescriptor:(char *)a1 configuredProperties:definitions:context:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[path isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDescriptor:(char *)a1 configuredProperties:definitions:context:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[path identity] type] == PFServerPosterTypeConfiguration", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 provider:configuredProperties:definitions:context:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 provider:configuredProperties:definitions:context:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 provider:configuredProperties:definitions:context:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 provider:configuredProperties:definitions:context:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfiguredPropertiesClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 provider:configuredProperties:definitions:context:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 provider:configuredProperties:definitions:context:.cold.6(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFDisplayContext)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 provider:configuredProperties:definitions:context:.cold.7(char *a1)
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

- (void)initWithPath:(char *)a1 provider:configuredProperties:definitions:context:.cold.8(char *a1)
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

- (void)initWithPath:(char *)a1 provider:configuredProperties:definitions:context:.cold.9(char *a1)
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

- (void)initWithPath:(char *)a1 provider:configuredProperties:definitions:context:.cold.10(char *a1)
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

- (void)initWithPath:(char *)a1 provider:configuredProperties:definitions:context:.cold.11(char *a1)
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

@end