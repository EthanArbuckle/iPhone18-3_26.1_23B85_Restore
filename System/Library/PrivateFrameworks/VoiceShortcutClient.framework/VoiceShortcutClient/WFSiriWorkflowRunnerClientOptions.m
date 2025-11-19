@interface WFSiriWorkflowRunnerClientOptions
- (WFSiriWorkflowRunnerClientOptions)initWithAirPlayRouteIDs:(id)a3 executionContext:(int64_t)a4 originatingDeviceIDSIdentifier:(id)a5 originatingDeviceRapportEffectiveIdentifier:(id)a6 originatingDeviceRapportMediaSystemIdentifier:(id)a7 isOwnedByCurrentUser:(BOOL)a8 disableSiriBehavior:(BOOL)a9;
- (WFSiriWorkflowRunnerClientOptions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSiriWorkflowRunnerClientOptions

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(WFSiriWorkflowRunnerClientOptions *)self airPlayRouteIDs];
  [v8 encodeObject:v4 forKey:@"airPlayRouteIDs"];

  [v8 encodeInteger:-[WFSiriWorkflowRunnerClientOptions executionContext](self forKey:{"executionContext"), @"executionContext"}];
  v5 = [(WFSiriWorkflowRunnerClientOptions *)self originatingDeviceIDSIdentifier];
  [v8 encodeObject:v5 forKey:@"originatingDeviceIDSIdentifier"];

  v6 = [(WFSiriWorkflowRunnerClientOptions *)self originatingDeviceRapportEffectiveIdentifier];
  [v8 encodeObject:v6 forKey:@"originatingDeviceRapportEffectiveIdentifier"];

  v7 = [(WFSiriWorkflowRunnerClientOptions *)self originatingDeviceRapportMediaSystemIdentifier];
  [v8 encodeObject:v7 forKey:@"originatingDeviceRapportMediaSystemIdentifier"];

  [v8 encodeBool:-[WFSiriWorkflowRunnerClientOptions isOwnedByCurrentUser](self forKey:{"isOwnedByCurrentUser"), @"isOwnedByCurrentUser"}];
  [v8 encodeInteger:-[WFSiriWorkflowRunnerClientOptions currentDeviceIdiom](self forKey:{"currentDeviceIdiom"), @"currentDeviceIdiom"}];
  [v8 encodeBool:-[WFSiriWorkflowRunnerClientOptions disableSiriBehavior](self forKey:{"disableSiriBehavior"), @"disableSiriBehavior"}];
}

- (WFSiriWorkflowRunnerClientOptions)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"airPlayRouteIDs"];

  v9 = [v5 decodeIntegerForKey:@"executionContext"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"originatingDeviceIDSIdentifier"];
  v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"originatingDeviceRapportEffectiveIdentifier"];
  v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"originatingDeviceRapportMediaSystemIdentifier"];
  v13 = [v5 decodeBoolForKey:@"isOwnedByCurrentUser"];
  v14 = [v5 decodeIntegerForKey:@"currentDeviceIdiom"];
  v15 = [v5 decodeBoolForKey:@"disableSiriBehavior"];

  LOBYTE(v18) = v15;
  v16 = [(WFSiriWorkflowRunnerClientOptions *)self initWithAirPlayRouteIDs:v8 executionContext:v9 originatingDeviceIDSIdentifier:v10 originatingDeviceRapportEffectiveIdentifier:v11 originatingDeviceRapportMediaSystemIdentifier:v12 isOwnedByCurrentUser:v13 disableSiriBehavior:v18];
  [(WFSiriWorkflowRunnerClientOptions *)v16 setCurrentDeviceIdiom:v14];

  return v16;
}

- (WFSiriWorkflowRunnerClientOptions)initWithAirPlayRouteIDs:(id)a3 executionContext:(int64_t)a4 originatingDeviceIDSIdentifier:(id)a5 originatingDeviceRapportEffectiveIdentifier:(id)a6 originatingDeviceRapportMediaSystemIdentifier:(id)a7 isOwnedByCurrentUser:(BOOL)a8 disableSiriBehavior:(BOOL)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v30.receiver = self;
  v30.super_class = WFSiriWorkflowRunnerClientOptions;
  v19 = [(WFSiriWorkflowRunnerClientOptions *)&v30 init];
  if (v19)
  {
    v20 = [v15 copy];
    airPlayRouteIDs = v19->_airPlayRouteIDs;
    v19->_airPlayRouteIDs = v20;

    v19->_executionContext = a4;
    v22 = [v16 copy];
    originatingDeviceIDSIdentifier = v19->_originatingDeviceIDSIdentifier;
    v19->_originatingDeviceIDSIdentifier = v22;

    v24 = [v17 copy];
    originatingDeviceRapportEffectiveIdentifier = v19->_originatingDeviceRapportEffectiveIdentifier;
    v19->_originatingDeviceRapportEffectiveIdentifier = v24;

    v26 = [v18 copy];
    originatingDeviceRapportMediaSystemIdentifier = v19->_originatingDeviceRapportMediaSystemIdentifier;
    v19->_originatingDeviceRapportMediaSystemIdentifier = v26;

    v19->_isOwnedByCurrentUser = a8;
    v19->_currentDeviceIdiom = 0;
    v19->_disableSiriBehavior = a9;
    v28 = v19;
  }

  return v19;
}

@end