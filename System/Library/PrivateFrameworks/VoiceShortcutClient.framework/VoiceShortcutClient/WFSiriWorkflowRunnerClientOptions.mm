@interface WFSiriWorkflowRunnerClientOptions
- (WFSiriWorkflowRunnerClientOptions)initWithAirPlayRouteIDs:(id)ds executionContext:(int64_t)context originatingDeviceIDSIdentifier:(id)identifier originatingDeviceRapportEffectiveIdentifier:(id)effectiveIdentifier originatingDeviceRapportMediaSystemIdentifier:(id)systemIdentifier isOwnedByCurrentUser:(BOOL)user disableSiriBehavior:(BOOL)behavior;
- (WFSiriWorkflowRunnerClientOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriWorkflowRunnerClientOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  airPlayRouteIDs = [(WFSiriWorkflowRunnerClientOptions *)self airPlayRouteIDs];
  [coderCopy encodeObject:airPlayRouteIDs forKey:@"airPlayRouteIDs"];

  [coderCopy encodeInteger:-[WFSiriWorkflowRunnerClientOptions executionContext](self forKey:{"executionContext"), @"executionContext"}];
  originatingDeviceIDSIdentifier = [(WFSiriWorkflowRunnerClientOptions *)self originatingDeviceIDSIdentifier];
  [coderCopy encodeObject:originatingDeviceIDSIdentifier forKey:@"originatingDeviceIDSIdentifier"];

  originatingDeviceRapportEffectiveIdentifier = [(WFSiriWorkflowRunnerClientOptions *)self originatingDeviceRapportEffectiveIdentifier];
  [coderCopy encodeObject:originatingDeviceRapportEffectiveIdentifier forKey:@"originatingDeviceRapportEffectiveIdentifier"];

  originatingDeviceRapportMediaSystemIdentifier = [(WFSiriWorkflowRunnerClientOptions *)self originatingDeviceRapportMediaSystemIdentifier];
  [coderCopy encodeObject:originatingDeviceRapportMediaSystemIdentifier forKey:@"originatingDeviceRapportMediaSystemIdentifier"];

  [coderCopy encodeBool:-[WFSiriWorkflowRunnerClientOptions isOwnedByCurrentUser](self forKey:{"isOwnedByCurrentUser"), @"isOwnedByCurrentUser"}];
  [coderCopy encodeInteger:-[WFSiriWorkflowRunnerClientOptions currentDeviceIdiom](self forKey:{"currentDeviceIdiom"), @"currentDeviceIdiom"}];
  [coderCopy encodeBool:-[WFSiriWorkflowRunnerClientOptions disableSiriBehavior](self forKey:{"disableSiriBehavior"), @"disableSiriBehavior"}];
}

- (WFSiriWorkflowRunnerClientOptions)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"airPlayRouteIDs"];

  v9 = [coderCopy decodeIntegerForKey:@"executionContext"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingDeviceIDSIdentifier"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingDeviceRapportEffectiveIdentifier"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingDeviceRapportMediaSystemIdentifier"];
  v13 = [coderCopy decodeBoolForKey:@"isOwnedByCurrentUser"];
  v14 = [coderCopy decodeIntegerForKey:@"currentDeviceIdiom"];
  v15 = [coderCopy decodeBoolForKey:@"disableSiriBehavior"];

  LOBYTE(v18) = v15;
  v16 = [(WFSiriWorkflowRunnerClientOptions *)self initWithAirPlayRouteIDs:v8 executionContext:v9 originatingDeviceIDSIdentifier:v10 originatingDeviceRapportEffectiveIdentifier:v11 originatingDeviceRapportMediaSystemIdentifier:v12 isOwnedByCurrentUser:v13 disableSiriBehavior:v18];
  [(WFSiriWorkflowRunnerClientOptions *)v16 setCurrentDeviceIdiom:v14];

  return v16;
}

- (WFSiriWorkflowRunnerClientOptions)initWithAirPlayRouteIDs:(id)ds executionContext:(int64_t)context originatingDeviceIDSIdentifier:(id)identifier originatingDeviceRapportEffectiveIdentifier:(id)effectiveIdentifier originatingDeviceRapportMediaSystemIdentifier:(id)systemIdentifier isOwnedByCurrentUser:(BOOL)user disableSiriBehavior:(BOOL)behavior
{
  dsCopy = ds;
  identifierCopy = identifier;
  effectiveIdentifierCopy = effectiveIdentifier;
  systemIdentifierCopy = systemIdentifier;
  v30.receiver = self;
  v30.super_class = WFSiriWorkflowRunnerClientOptions;
  v19 = [(WFSiriWorkflowRunnerClientOptions *)&v30 init];
  if (v19)
  {
    v20 = [dsCopy copy];
    airPlayRouteIDs = v19->_airPlayRouteIDs;
    v19->_airPlayRouteIDs = v20;

    v19->_executionContext = context;
    v22 = [identifierCopy copy];
    originatingDeviceIDSIdentifier = v19->_originatingDeviceIDSIdentifier;
    v19->_originatingDeviceIDSIdentifier = v22;

    v24 = [effectiveIdentifierCopy copy];
    originatingDeviceRapportEffectiveIdentifier = v19->_originatingDeviceRapportEffectiveIdentifier;
    v19->_originatingDeviceRapportEffectiveIdentifier = v24;

    v26 = [systemIdentifierCopy copy];
    originatingDeviceRapportMediaSystemIdentifier = v19->_originatingDeviceRapportMediaSystemIdentifier;
    v19->_originatingDeviceRapportMediaSystemIdentifier = v26;

    v19->_isOwnedByCurrentUser = user;
    v19->_currentDeviceIdiom = 0;
    v19->_disableSiriBehavior = behavior;
    v28 = v19;
  }

  return v19;
}

@end