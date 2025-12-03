@interface PBFPosterSnapshotRequest
+ (BOOL)isRequestFulfilled:(id)fulfilled forDefinition:(id)definition modelCoordinatorProvider:(id)provider;
+ (BOOL)isRequestFulfilled:(id)fulfilled modelCoordinatorProvider:(id)provider;
+ (id)filterFulfilledSnapshotRequests:(id)requests modelCoordinatorProvider:(id)provider;
+ (id)snapshotRequestForConfiguration:(id)configuration context:(id)context;
+ (id)snapshotRequestForConfiguration:(id)configuration withinSwitcherConfiguration:(id)switcherConfiguration variant:(int64_t)variant snapshotDefinitions:(id)definitions displayContext:(id)context;
+ (id)snapshotRequestForPreview:(id)preview context:(id)context;
+ (id)snapshotRequestForPreview:(id)preview context:(id)context definition:(id)definition;
- (BOOL)_isEqualToRequest:(id)request allowingOtherDefinitionsAreSubset:(BOOL)subset;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidWithError:(id *)error;
- (PBFPosterSnapshotRequest)initWithConfiguration:(id)configuration definitions:(id)definitions context:(id)context;
- (PBFPosterSnapshotRequest)initWithDescriptor:(id)descriptor configuredProperties:(id)properties definitions:(id)definitions context:(id)context;
- (PBFPosterSnapshotRequest)initWithPath:(id)path provider:(id)provider configuredProperties:(id)properties definitions:(id)definitions context:(id)context;
- (PBFPosterSnapshotRequest)requestWithDefinitions:(id)definitions;
- (PBFPosterSnapshotRequest)requestWithDisplayContext:(id)context;
- (PBFPosterSnapshotRequest)requestWithIntention:(unint64_t)intention;
- (PBFPosterSnapshotRequest)requestWithLoadFromCacheIfAvailable:(BOOL)available;
- (PBFPosterSnapshotRequest)requestWithPowerLogReason:(int64_t)reason;
- (PBFPosterSnapshotRequest)requestWithSignificantEventsCounter:(unint64_t)counter;
- (id)_buildPUIPosterSnapshotRequests;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation PBFPosterSnapshotRequest

+ (id)snapshotRequestForPreview:(id)preview context:(id)context
{
  contextCopy = context;
  previewCopy = preview;
  v8 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:previewCopy];
  v9 = [self snapshotRequestForPreview:previewCopy context:contextCopy definition:v8];

  return v9;
}

+ (id)snapshotRequestForPreview:(id)preview context:(id)context definition:(id)definition
{
  v23[1] = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  contextCopy = context;
  definitionCopy = definition;
  v11 = previewCopy;
  if (!v11)
  {
    [PBFPosterSnapshotRequest snapshotRequestForPreview:a2 context:? definition:?];
  }

  v12 = v11;
  if (([v11 conformsToProtocol:&unk_282D42DD0] & 1) == 0)
  {
    [PBFPosterSnapshotRequest snapshotRequestForPreview:a2 context:? definition:?];
  }

  v13 = definitionCopy;
  NSClassFromString(&cfstr_Pbfpostersnaps_2.isa);
  if (!v13)
  {
    [PBFPosterSnapshotRequest snapshotRequestForPreview:a2 context:? definition:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotRequest snapshotRequestForPreview:a2 context:? definition:?];
  }

  posterDescriptorLookupInfo = [v12 posterDescriptorLookupInfo];
  posterDescriptorPath = [posterDescriptorLookupInfo posterDescriptorPath];

  posterDescriptorLookupInfo2 = [v12 posterDescriptorLookupInfo];
  posterDescriptorExtension = [posterDescriptorLookupInfo2 posterDescriptorExtension];
  posterExtensionBundleIdentifier = [posterDescriptorExtension posterExtensionBundleIdentifier];

  v19 = [MEMORY[0x277D3ED60] pbf_configuredPropertiesForPreview:v12];
  v23[0] = v13;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v21 = [[PBFPosterSnapshotRequest alloc] initWithPath:posterDescriptorPath provider:posterExtensionBundleIdentifier configuredProperties:v19 definitions:v20 context:contextCopy];

  return v21;
}

+ (id)snapshotRequestForConfiguration:(id)configuration context:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  v8 = configurationCopy;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!v8)
  {
    [PBFPosterSnapshotRequest snapshotRequestForConfiguration:a2 context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotRequest snapshotRequestForConfiguration:a2 context:?];
  }

  _path = [v8 _path];
  if (([_path isServerPosterPath] & 1) == 0)
  {
    [PBFPosterSnapshotRequest snapshotRequestForConfiguration:a2 context:?];
  }

  identity = [_path identity];
  type = [identity type];

  if (type != 3)
  {
    [PBFPosterSnapshotRequest snapshotRequestForConfiguration:a2 context:?];
  }

  v12 = [v8 loadConfiguredPropertiesWithError:0];
  v13 = [PBFPosterSnapshotRequest alloc];
  serverIdentity = [_path serverIdentity];
  provider = [serverIdentity provider];
  v16 = +[PBFPosterSnapshotDefinition defaultConfigurationDefinitions];
  v17 = [(PBFPosterSnapshotRequest *)v13 initWithPath:_path provider:provider configuredProperties:v12 definitions:v16 context:contextCopy];

  return v17;
}

+ (id)filterFulfilledSnapshotRequests:(id)requests modelCoordinatorProvider:(id)provider
{
  providerCopy = provider;
  v6 = MEMORY[0x277CBEB58];
  requestsCopy = requests;
  v8 = [v6 set];
  v9 = MEMORY[0x277CBEAC0];
  allObjects = [requestsCopy allObjects];

  v11 = [v9 pf_bucketizeArray:allObjects keyMaker:&__block_literal_global_9];
  v12 = [v11 mutableCopy];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__PBFPosterSnapshotRequest_filterFulfilledSnapshotRequests_modelCoordinatorProvider___block_invoke_2;
  v18[3] = &unk_2782C7C48;
  v19 = providerCopy;
  v13 = v8;
  v20 = v13;
  v14 = providerCopy;
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

+ (BOOL)isRequestFulfilled:(id)fulfilled modelCoordinatorProvider:(id)provider
{
  v21 = *MEMORY[0x277D85DE8];
  fulfilledCopy = fulfilled;
  providerCopy = provider;
  if (fulfilledCopy)
  {
    loadFromCacheIfAvailable = [fulfilledCopy loadFromCacheIfAvailable];
    v9 = 0;
    if (providerCopy && loadFromCacheIfAvailable)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      definitions = [fulfilledCopy definitions];
      v11 = [definitions countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(definitions);
            }

            if (![self isRequestFulfilled:fulfilledCopy forDefinition:*(*(&v16 + 1) + 8 * i) modelCoordinatorProvider:providerCopy])
            {
              v9 = 0;
              goto LABEL_15;
            }
          }

          v12 = [definitions countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (BOOL)isRequestFulfilled:(id)fulfilled forDefinition:(id)definition modelCoordinatorProvider:(id)provider
{
  fulfilledCopy = fulfilled;
  definitionCopy = definition;
  providerCopy = provider;
  if (fulfilledCopy)
  {
    loadFromCacheIfAvailable = [fulfilledCopy loadFromCacheIfAvailable];
    v11 = 0;
    if (providerCopy && loadFromCacheIfAvailable)
    {
      path = [fulfilledCopy path];
      serverIdentity = [path serverIdentity];
      v14 = [providerCopy pbf_posterSnapshotCoordinatorForIdentity:serverIdentity];

      displayContext = [fulfilledCopy displayContext];
      v16 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:displayContext definition:definitionCopy];

      v11 = [v14 snapshotExistsForContext:v16];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PBFPosterSnapshotRequest)initWithConfiguration:(id)configuration definitions:(id)definitions context:(id)context
{
  configurationCopy = configuration;
  definitionsCopy = definitions;
  contextCopy = context;
  _path = [configurationCopy _path];
  if (([_path isServerPosterPath] & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithConfiguration:a2 definitions:? context:?];
  }

  identity = [_path identity];
  type = [identity type];

  if (type != 3)
  {
    [PBFPosterSnapshotRequest initWithConfiguration:a2 definitions:? context:?];
  }

  v15 = [configurationCopy loadConfiguredPropertiesWithError:0];
  serverIdentity = [_path serverIdentity];
  provider = [serverIdentity provider];
  v18 = [(PBFPosterSnapshotRequest *)self initWithPath:_path provider:provider configuredProperties:v15 definitions:definitionsCopy context:contextCopy];

  return v18;
}

- (PBFPosterSnapshotRequest)initWithDescriptor:(id)descriptor configuredProperties:(id)properties definitions:(id)definitions context:(id)context
{
  descriptorCopy = descriptor;
  propertiesCopy = properties;
  definitionsCopy = definitions;
  contextCopy = context;
  _path = [descriptorCopy _path];
  if (([_path isServerPosterPath] & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithDescriptor:a2 configuredProperties:? definitions:? context:?];
  }

  identity = [_path identity];
  type = [identity type];

  if (type != 3)
  {
    [PBFPosterSnapshotRequest initWithDescriptor:a2 configuredProperties:? definitions:? context:?];
  }

  serverIdentity = [_path serverIdentity];
  provider = [serverIdentity provider];
  v20 = [(PBFPosterSnapshotRequest *)self initWithPath:_path provider:provider configuredProperties:propertiesCopy definitions:definitionsCopy context:contextCopy];

  return v20;
}

- (PBFPosterSnapshotRequest)initWithPath:(id)path provider:(id)provider configuredProperties:(id)properties definitions:(id)definitions context:(id)context
{
  pathCopy = path;
  providerCopy = provider;
  propertiesCopy = properties;
  definitionsCopy = definitions;
  contextCopy = context;
  v19 = PBFPosterSnapshotRequestIdentifierForPath(pathCopy);
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v19)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  v20 = providerCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v20)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  v21 = pathCopy;
  NSClassFromString(&cfstr_Pfserverposter_0.isa);
  if (!v21)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  v22 = propertiesCopy;
  if (v22)
  {
    NSClassFromString(&cfstr_Prposterconfig_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
    }
  }

  v23 = definitionsCopy;
  NSClassFromString(&cfstr_Nsarray.isa);
  if (!v23)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotRequest initWithPath:a2 provider:? configuredProperties:? definitions:? context:?];
  }

  v24 = contextCopy;
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

    objc_storeStrong(&v26->_path, path);
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

    objc_storeStrong(&v26->_displayContext, context);
    v26->_loadFromCacheIfAvailable = 1;
    v26->_significantEventsCounter = 0;
  }

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithPath:provider:configuredProperties:definitions:context:", self->_path, self->_provider, self->_configuredProperties, self->_definitions, self->_displayContext}];
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

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
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

- (BOOL)_isEqualToRequest:(id)request allowingOtherDefinitionsAreSubset:(BOOL)subset
{
  subsetCopy = subset;
  requestCopy = request;
  v7 = requestCopy;
  if (requestCopy == self)
  {
    LOBYTE(v23) = 1;
    goto LABEL_18;
  }

  if (!requestCopy)
  {
    goto LABEL_17;
  }

  identifier = [(PBFPosterSnapshotRequest *)self identifier];
  identifier2 = [(PBFPosterSnapshotRequest *)v7 identifier];
  v10 = BSEqualObjects();

  if (!v10)
  {
    goto LABEL_17;
  }

  path = [(PBFPosterSnapshotRequest *)self path];
  isServerPosterPath = [path isServerPosterPath];
  path2 = [(PBFPosterSnapshotRequest *)v7 path];
  isServerPosterPath2 = [path2 isServerPosterPath];

  if (isServerPosterPath != isServerPosterPath2)
  {
    goto LABEL_17;
  }

  path3 = [(PBFPosterSnapshotRequest *)self path];
  if (([path3 isServerPosterPath] & 1) == 0)
  {

LABEL_11:
    path4 = [(PBFPosterSnapshotRequest *)self path];
    contentsURL = [path4 contentsURL];
    path5 = [(PBFPosterSnapshotRequest *)v7 path];
    contentsURL2 = [path5 contentsURL];
    v28 = BSEqualObjects();

    if (!v28)
    {
LABEL_17:
      LOBYTE(v23) = 0;
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  path6 = [(PBFPosterSnapshotRequest *)v7 path];
  isServerPosterPath3 = [path6 isServerPosterPath];

  if (!isServerPosterPath3)
  {
    goto LABEL_11;
  }

  path7 = [(PBFPosterSnapshotRequest *)self path];
  identity = [path7 identity];
  path8 = [(PBFPosterSnapshotRequest *)v7 path];
  identity2 = [path8 identity];
  v22 = BSEqualObjects();

  if ((v22 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  displayContext = [(PBFPosterSnapshotRequest *)self displayContext];
  displayContext2 = [(PBFPosterSnapshotRequest *)v7 displayContext];
  v31 = BSEqualObjects();

  if (!v31)
  {
    goto LABEL_17;
  }

  significantEventsCounter = [(PBFPosterSnapshotRequest *)self significantEventsCounter];
  if (significantEventsCounter != [(PBFPosterSnapshotRequest *)v7 significantEventsCounter])
  {
    goto LABEL_17;
  }

  configuredProperties = [(PBFPosterSnapshotRequest *)self configuredProperties];
  configuredProperties2 = [(PBFPosterSnapshotRequest *)v7 configuredProperties];
  v35 = [configuredProperties isEqualToConfiguredProperties:configuredProperties2 comparingPropertiesAffectingSnapshotsOnly:1];

  if (!v35)
  {
    goto LABEL_17;
  }

  v36 = MEMORY[0x277CBEB98];
  definitions = [(PBFPosterSnapshotRequest *)self definitions];
  v38 = [v36 setWithArray:definitions];

  v39 = MEMORY[0x277CBEB98];
  definitions2 = [(PBFPosterSnapshotRequest *)v7 definitions];
  v41 = [v39 setWithArray:definitions2];

  if (subsetCopy)
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
    builder = [MEMORY[0x277CF0C40] builder];
    v5 = [builder appendString:self->_identifier];
    contentsURL = [(PFServerPosterPath *)self->_path contentsURL];
    v7 = [builder appendObject:contentsURL];

    v8 = [builder appendObject:self->_definitions];
    displayContext = [(PBFPosterSnapshotRequest *)self displayContext];
    v10 = [builder appendObject:displayContext];

    v11 = [builder appendObject:self->_provider];
    v12 = [builder appendInteger:self->_significantEventsCounter];
    cachedHash = [builder hash];
    self->_cachedHash = cachedHash;
  }

  return cachedHash;
}

- (BOOL)isValidWithError:(id *)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D3EF30];
  path = [(PBFPosterSnapshotRequest *)self path];
  role = [path role];
  v7 = [v4 snapshottingSupportedForRole:role];

  if (error && (v7 & 1) == 0)
  {
    v8 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA470];
    v12[0] = @"PBFPosterSnapshotManager only supports PFPosterRoleLockScreen currently.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *error = [v8 pbf_generalErrorWithCode:1 userInfo:v9];
  }

  return v7;
}

- (PBFPosterSnapshotRequest)requestWithPowerLogReason:(int64_t)reason
{
  if (self->_powerLogReason == reason)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(PBFPosterSnapshotRequest *)self copy];
    selfCopy->_powerLogReason = reason;
  }

  return selfCopy;
}

- (PBFPosterSnapshotRequest)requestWithIntention:(unint64_t)intention
{
  if (self->_intention == intention)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(PBFPosterSnapshotRequest *)self copy];
    selfCopy->_intention = intention;
  }

  return selfCopy;
}

- (PBFPosterSnapshotRequest)requestWithDisplayContext:(id)context
{
  contextCopy = context;
  if ([(PBFDisplayContext *)self->_displayContext isEqualToDisplayContext:contextCopy])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(PBFPosterSnapshotRequest *)self copy];
    objc_storeStrong(&selfCopy->_displayContext, context);
  }

  return selfCopy;
}

- (PBFPosterSnapshotRequest)requestWithDefinitions:(id)definitions
{
  definitionsCopy = definitions;
  v5 = [MEMORY[0x277CBEB98] setWithArray:self->_definitions];
  v6 = [MEMORY[0x277CBEB98] setWithArray:definitionsCopy];
  v7 = [v5 isEqualToSet:v6];

  if (v7)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(PBFPosterSnapshotRequest *)self copy];
    v9 = [definitionsCopy copy];
    definitions = selfCopy->_definitions;
    selfCopy->_definitions = v9;
  }

  return selfCopy;
}

- (PBFPosterSnapshotRequest)requestWithLoadFromCacheIfAvailable:(BOOL)available
{
  if (self->_loadFromCacheIfAvailable == available)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(PBFPosterSnapshotRequest *)self copy];
    selfCopy->_loadFromCacheIfAvailable = available;
  }

  return selfCopy;
}

- (PBFPosterSnapshotRequest)requestWithSignificantEventsCounter:(unint64_t)counter
{
  if (self->_significantEventsCounter == counter)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(PBFPosterSnapshotRequest *)self copy];
    selfCopy->_significantEventsCounter = counter;
  }

  return selfCopy;
}

- (id)_buildPUIPosterSnapshotRequests
{
  v112 = *MEMORY[0x277D85DE8];
  v73 = objc_opt_new();
  path = [(PBFPosterSnapshotRequest *)self path];
  configuredProperties = [(PBFPosterSnapshotRequest *)self configuredProperties];
  v3 = MEMORY[0x277CBEB58];
  definitions = [(PBFPosterSnapshotRequest *)self definitions];
  v5 = [v3 setWithArray:definitions];

  displayContext = [(PBFPosterSnapshotRequest *)self displayContext];
  significantEventsCounter = [(PBFPosterSnapshotRequest *)self significantEventsCounter];
  v88 = displayContext;
  v86 = [MEMORY[0x277D0ACE0] pbf_displayConfigurationForDisplayContext:displayContext];
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
        pbf_interfaceOrientation = [v88 pbf_interfaceOrientation];
        v84 = v12;
        if (pbf_interfaceOrientation)
        {
          if (PUIDynamicRotationIsActive())
          {
            v19 = 1;
          }

          else
          {
            v19 = pbf_interfaceOrientation;
          }

          v20 = pbf_interfaceOrientation;
        }

        else
        {
          role = [path role];
          v22 = [role isEqualToString:v69];

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
        renderingContent = [v9 renderingContent];
        renderingMode = [v9 renderingMode];
        isUnlocked = [v9 isUnlocked];
        v24 = 0.0;
        if (isUnlocked)
        {
          v24 = 1.0;
        }

        v78 = v24;
        includesHeaderElements = [v9 includesHeaderElements];
        complicationLayout = [configuredProperties complicationLayout];
        inlineComplication = [complicationLayout inlineComplication];

        complicationLayout2 = [configuredProperties complicationLayout];
        complications = [complicationLayout2 complications];
        v29 = [complications count];
        v30 = v29 != 0;

        complicationLayout3 = [configuredProperties complicationLayout];
        sidebarComplications = [complicationLayout3 sidebarComplications];
        v33 = [sidebarComplications count];

        titleStyleConfiguration = [configuredProperties titleStyleConfiguration];
        [titleStyleConfiguration prefersVerticalTitleLayout];

        includesComplications = [v9 includesComplications];
        v36 = includesComplications ^ 1;
        if (inlineComplication)
        {
          v36 = 1;
        }

        v37 = (v29 | v33) != 0;
        if (v36)
        {
          v37 = includesComplications;
        }

        v76 = v37;
        v77 = inlineComplication != 0;
        complicationLayout4 = [configuredProperties complicationLayout];
        complicationsUseBottomLayout = [complicationLayout4 complicationsUseBottomLayout];

        renderingConfiguration = [configuredProperties renderingConfiguration];
        BSInterfaceOrientationIsPortrait();
        v82 = renderingConfiguration;
        if (renderingConfiguration)
        {
          isDepthEffectDisabled = [renderingConfiguration isDepthEffectDisabled];
        }

        else
        {
          isDepthEffectDisabled = PRIsDepthEffectDisallowed();
        }

        v42 = isDepthEffectDisabled;
        isIdle = [v9 isIdle];
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
        v93 = significantEventsCounter;
        v94 = renderingMode;
        v95 = renderingContent;
        v96 = v78;
        v57 = configuredProperties;
        v92 = v57;
        v97 = v77;
        v98 = v30;
        v99 = v33 != 0;
        v100 = complicationsUseBottomLayout;
        v101 = v76;
        v102 = includesHeaderElements;
        v103 = v42;
        v104 = v30 & (complicationsUseBottomLayout ^ 1);
        v105 = isIdle;
        [v17 applySceneSettings:v91];
        v58 = [v17 buildWithPath:path configuredProperties:v57 snapshotDefinition:v9 sceneDescriptor:v56];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __59__PBFPosterSnapshotRequest__buildPUIPosterSnapshotRequests__block_invoke_2;
        aBlock[3] = &unk_2782C7CC0;
        v90 = v58;
        v59 = v58;
        v60 = _Block_copy(aBlock);
        levelSets = [v9 levelSets];
        v62 = [levelSets bs_map:&__block_literal_global_253];

        v63 = objc_alloc(MEMORY[0x277D3EFA8]);
        uniqueIdentifier = [v9 uniqueIdentifier];
        [v9 persistenceScale];
        v65 = [v63 initWithLevelSets:v62 snapshotDefinitionIdentifier:uniqueIdentifier persistenceScale:?];

        v66 = [objc_alloc(MEMORY[0x277D3EF98]) initWithOutputDescriptor:v65 sceneDescriptor:v56 attachments:0 analysis:0];
        v67 = [objc_alloc(MEMORY[0x277D3EFB0]) initWithPath:path sceneSettingsApplicator:v60 priority:0 snapshotDescriptor:v66 retryCount:0 timeout:20.0];
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

+ (id)snapshotRequestForConfiguration:(id)configuration withinSwitcherConfiguration:(id)switcherConfiguration variant:(int64_t)variant snapshotDefinitions:(id)definitions displayContext:(id)context
{
  configurationCopy = configuration;
  switcherConfigurationCopy = switcherConfiguration;
  definitionsCopy = definitions;
  contextCopy = context;
  if ((variant + 1) < 2)
  {
    v15 = configurationCopy;
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    v20 = [[PBFPosterSnapshotRequest alloc] initWithConfiguration:v15 definitions:definitionsCopy context:contextCopy];

    goto LABEL_14;
  }

  if (variant == 1)
  {
    v16 = [switcherConfigurationCopy configuredPropertiesForPoster:configurationCopy];
    homeScreenConfiguration = [v16 homeScreenConfiguration];

    selectedAppearanceType = [homeScreenConfiguration selectedAppearanceType];
    if (selectedAppearanceType == 3)
    {
      v19 = [switcherConfigurationCopy _childPosterConfigurationForConfiguration:configurationCopy];
    }

    else
    {
      if (selectedAppearanceType)
      {
        v15 = 0;
LABEL_11:

        if (v15)
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }

      v19 = configurationCopy;
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