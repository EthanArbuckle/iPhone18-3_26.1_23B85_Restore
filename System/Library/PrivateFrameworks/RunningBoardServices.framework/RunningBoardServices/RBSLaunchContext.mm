@interface RBSLaunchContext
+ (id)context;
+ (id)contextWithIdentity:(id)identity;
+ (id)contextWithLSAppID:(id)d;
- (BOOL)isEqual:(id)equal;
- (RBSLaunchContext)initWithRBSXPCCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithRBSXPCCoder:(id)coder;
- (void)setBundleIdentifier:(id)identifier;
- (void)setIdentity:(id)identity;
- (void)setLaunchAssertionIdentifier:(id)identifier;
@end

@implementation RBSLaunchContext

+ (id)context
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)contextWithIdentity:(id)identity
{
  identityCopy = identity;
  context = [self context];
  [context setIdentity:identityCopy];

  return context;
}

+ (id)contextWithLSAppID:(id)d
{
  dCopy = d;
  context = [self context];
  [context setAppID:dCopy];

  return context;
}

- (void)setIdentity:(id)identity
{
  identityCopy = identity;
  objc_storeStrong(&self->_identity, identity);
  embeddedApplicationIdentifier = [(RBSProcessIdentity *)self->_identity embeddedApplicationIdentifier];

  if (embeddedApplicationIdentifier)
  {
    embeddedApplicationIdentifier2 = [(RBSProcessIdentity *)self->_identity embeddedApplicationIdentifier];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = embeddedApplicationIdentifier2;
  }
}

- (void)setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  embeddedApplicationIdentifier = [(RBSProcessIdentity *)self->_identity embeddedApplicationIdentifier];

  if (!embeddedApplicationIdentifier)
  {
    objc_storeStrong(&self->_bundleIdentifier, identifier);
  }
}

- (void)setLaunchAssertionIdentifier:(id)identifier
{
  v4 = [identifier copy];
  launchAssertionIdentifier = self->_launchAssertionIdentifier;
  self->_launchAssertionIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_71;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  identity = self->_identity;
  if (identity != equalCopy->_identity && ![(RBSProcessIdentity *)identity isEqual:?])
  {
    goto LABEL_3;
  }

  appID = self->_appID;
  if (appID != equalCopy->_appID && ![(LSApplicationIdentity *)appID isEqual:?])
  {
    goto LABEL_3;
  }

  overrideExecutablePath = self->__overrideExecutablePath;
  if (overrideExecutablePath != equalCopy->__overrideExecutablePath && ![(NSString *)overrideExecutablePath isEqualToString:?])
  {
    goto LABEL_3;
  }

  arguments = self->_arguments;
  if (arguments != equalCopy->_arguments && ![(NSArray *)arguments isEqualToArray:?])
  {
    goto LABEL_3;
  }

  additionalMachServices = self->__additionalMachServices;
  if (additionalMachServices != equalCopy->__additionalMachServices && ![(NSArray *)additionalMachServices isEqualToArray:?])
  {
    goto LABEL_3;
  }

  if (self->_executionOptions != equalCopy->_executionOptions)
  {
    goto LABEL_3;
  }

  additionalEnvironment = self->__additionalEnvironment;
  if (additionalEnvironment != equalCopy->__additionalEnvironment && ![(NSDictionary *)additionalEnvironment isEqualToDictionary:?])
  {
    goto LABEL_3;
  }

  standardOutputPath = self->_standardOutputPath;
  if (standardOutputPath != equalCopy->_standardOutputPath && ![(NSString *)standardOutputPath isEqualToString:?])
  {
    goto LABEL_3;
  }

  standardErrorPath = self->_standardErrorPath;
  if (standardErrorPath != equalCopy->_standardErrorPath && ![(NSString *)standardErrorPath isEqualToString:?])
  {
    goto LABEL_3;
  }

  standardInPath = self->_standardInPath;
  if (standardInPath != equalCopy->_standardInPath && ![(NSString *)standardInPath isEqualToString:?])
  {
    goto LABEL_3;
  }

  managedPersona = self->_managedPersona;
  if (managedPersona != equalCopy->_managedPersona && ![(NSString *)managedPersona isEqualToString:?])
  {
    goto LABEL_3;
  }

  if (self->_spawnType != equalCopy->_spawnType)
  {
    goto LABEL_3;
  }

  attributes = self->_attributes;
  if (attributes != equalCopy->_attributes && ![(NSArray *)attributes isEqualToArray:?])
  {
    goto LABEL_3;
  }

  managedEndpointLaunchIdentifiers = self->_managedEndpointLaunchIdentifiers;
  if (managedEndpointLaunchIdentifiers != equalCopy->_managedEndpointLaunchIdentifiers && ![(NSSet *)managedEndpointLaunchIdentifiers isEqualToSet:?])
  {
    goto LABEL_3;
  }

  explanation = self->_explanation;
  if (explanation != equalCopy->_explanation && ![(NSString *)explanation isEqualToString:?])
  {
    goto LABEL_3;
  }

  if (self->_lsManageRoleOnly != equalCopy->_lsManageRoleOnly || self->_lsSpawnFlags != equalCopy->_lsSpawnFlags || self->_lsUMask != equalCopy->_lsUMask)
  {
    goto LABEL_3;
  }

  lsBinpref = self->_lsBinpref;
  v21 = equalCopy->_lsBinpref;
  if (lsBinpref != v21)
  {
    v6 = 0;
    if (!lsBinpref || !v21)
    {
      goto LABEL_72;
    }

    if (![(NSArray *)lsBinpref isEqual:?])
    {
      goto LABEL_3;
    }
  }

  lsBinprefSubtype = self->_lsBinprefSubtype;
  v23 = equalCopy->_lsBinprefSubtype;
  if (lsBinprefSubtype != v23)
  {
    v6 = 0;
    if (!lsBinprefSubtype || !v23)
    {
      goto LABEL_72;
    }

    if (![(NSArray *)lsBinprefSubtype isEqual:?])
    {
      goto LABEL_3;
    }
  }

  if (self->_initialRole != equalCopy->_initialRole)
  {
    goto LABEL_3;
  }

  if (self->_lsPersona != equalCopy->_lsPersona)
  {
    goto LABEL_3;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier != equalCopy->_bundleIdentifier && ![(NSString *)bundleIdentifier isEqualToString:?])
  {
    goto LABEL_3;
  }

  if (self->_hostPid != equalCopy->_hostPid)
  {
    goto LABEL_3;
  }

  extensionOverlay = self->_extensionOverlay;
  if (extensionOverlay != equalCopy->_extensionOverlay && ![(NSDictionary *)extensionOverlay isEqualToDictionary:?])
  {
    goto LABEL_3;
  }

  oneShotUUID = self->_oneShotUUID;
  if (oneShotUUID != equalCopy->_oneShotUUID && ![(NSUUID *)oneShotUUID isEqual:?])
  {
    goto LABEL_3;
  }

  if (self->_forceSubmit != equalCopy->_forceSubmit)
  {
    goto LABEL_3;
  }

  beforeTranslocationBundlePath = self->_beforeTranslocationBundlePath;
  if (beforeTranslocationBundlePath != equalCopy->_beforeTranslocationBundlePath && ![(NSString *)beforeTranslocationBundlePath isEqualToString:?])
  {
    goto LABEL_3;
  }

  homeDirectory = self->_homeDirectory;
  if (homeDirectory != equalCopy->_homeDirectory && ![(NSString *)homeDirectory isEqualToString:?])
  {
    goto LABEL_3;
  }

  tmpDirectory = self->_tmpDirectory;
  if (tmpDirectory != equalCopy->_tmpDirectory && ![(NSString *)tmpDirectory isEqualToString:?])
  {
    goto LABEL_3;
  }

  requiredExistingProcess = self->_requiredExistingProcess;
  if (requiredExistingProcess != equalCopy->_requiredExistingProcess && ![(RBSProcessIdentifier *)requiredExistingProcess isEqual:?])
  {
    goto LABEL_3;
  }

  preventContainerization = self->_preventContainerization;
  if (preventContainerization != equalCopy->_preventContainerization && ![(NSNumber *)preventContainerization isEqual:?])
  {
    goto LABEL_3;
  }

  containerIdentifier = self->_containerIdentifier;
  if (containerIdentifier != equalCopy->_containerIdentifier && ![(NSString *)containerIdentifier isEqual:?])
  {
    goto LABEL_3;
  }

  dextCheckInPort = self->_dextCheckInPort;
  v34 = equalCopy->_dextCheckInPort;
  if (dextCheckInPort == v34)
  {
LABEL_69:
    spawnConstraint = self->_spawnConstraint;
    if (spawnConstraint == equalCopy->_spawnConstraint || [(NSDictionary *)spawnConstraint isEqualToDictionary:?])
    {
LABEL_71:
      v6 = 1;
      goto LABEL_72;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (dextCheckInPort && v34)
  {
    if ([(RBSMachPort *)dextCheckInPort isEqual:?])
    {
      goto LABEL_69;
    }

LABEL_3:
    v6 = 0;
  }

LABEL_72:

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identity = [(RBSLaunchContext *)self identity];
  [coderCopy encodeObject:identity forKey:@"_identity"];

  arguments = [(RBSLaunchContext *)self arguments];
  [coderCopy encodeCollection:arguments forKey:@"_arguments"];

  [coderCopy encodeUInt64:-[RBSLaunchContext executionOptions](self forKey:{"executionOptions"), @"_executionOptions"}];
  _overrideExecutablePath = [(RBSLaunchContext *)self _overrideExecutablePath];
  [coderCopy encodeObject:_overrideExecutablePath forKey:@"__overrideExecutablePath"];

  _additionalMachServices = [(RBSLaunchContext *)self _additionalMachServices];
  [coderCopy encodeCollection:_additionalMachServices forKey:@"__additionalMachServices"];

  _additionalEnvironment = [(RBSLaunchContext *)self _additionalEnvironment];
  [coderCopy encodeObject:_additionalEnvironment forKey:@"__additionalEnvironment"];

  standardOutputPath = [(RBSLaunchContext *)self standardOutputPath];
  [coderCopy encodeObject:standardOutputPath forKey:@"_standardOutputPath"];

  standardErrorPath = [(RBSLaunchContext *)self standardErrorPath];
  [coderCopy encodeObject:standardErrorPath forKey:@"_standardErrorPath"];

  standardInPath = [(RBSLaunchContext *)self standardInPath];
  [coderCopy encodeObject:standardInPath forKey:@"_standardInPath"];

  attributes = [(RBSLaunchContext *)self attributes];
  [coderCopy encodeCollection:attributes forKey:@"_attributes"];

  managedEndpointLaunchIdentifiers = [(RBSLaunchContext *)self managedEndpointLaunchIdentifiers];
  [coderCopy encodeCollection:managedEndpointLaunchIdentifiers forKey:@"_managedEndpointLaunchIdentifiers"];

  explanation = [(RBSLaunchContext *)self explanation];
  [coderCopy encodeObject:explanation forKey:@"_explanation"];

  managedPersona = [(RBSLaunchContext *)self managedPersona];
  [coderCopy encodeObject:managedPersona forKey:@"_managedPersona"];

  [coderCopy encodeUInt64:-[RBSLaunchContext spawnType](self forKey:{"spawnType"), @"_spawnType"}];
  [coderCopy encodeUInt64:-[RBSLaunchContext lsManageRoleOnly](self forKey:{"lsManageRoleOnly"), @"_lsManageRoleOnly"}];
  [coderCopy encodeUInt64:-[RBSLaunchContext lsSpawnFlags](self forKey:{"lsSpawnFlags"), @"_lsSpawnFlags"}];
  [coderCopy encodeUInt64:-[RBSLaunchContext lsUMask](self forKey:{"lsUMask"), @"_lsUMask"}];
  lsBinpref = [(RBSLaunchContext *)self lsBinpref];
  [coderCopy encodeCollection:lsBinpref forKey:@"_lsBinpref"];

  lsBinprefSubtype = [(RBSLaunchContext *)self lsBinprefSubtype];
  [coderCopy encodeCollection:lsBinprefSubtype forKey:@"_lsBinprefSubtype"];

  [coderCopy encodeUInt64:-[RBSLaunchContext initialRole](self forKey:{"initialRole"), @"_initialRole"}];
  [coderCopy encodeUInt64:-[RBSLaunchContext lsPersona](self forKey:{"lsPersona"), @"_lsPersona"}];
  bundleIdentifier = [(RBSLaunchContext *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"_bundleIdentifier"];

  [coderCopy encodeUInt64:-[RBSLaunchContext hostPid](self forKey:{"hostPid"), @"_hostPid"}];
  extensionOverlay = [(RBSLaunchContext *)self extensionOverlay];
  [coderCopy encodeObject:extensionOverlay forKey:@"_extensionOverlay"];

  oneShotUUID = [(RBSLaunchContext *)self oneShotUUID];
  [coderCopy encodeObject:oneShotUUID forKey:@"_oneShotUUID"];

  [coderCopy encodeUInt64:-[RBSLaunchContext forceSubmit](self forKey:{"forceSubmit"), @"_forceSubmit"}];
  beforeTranslocationBundlePath = [(RBSLaunchContext *)self beforeTranslocationBundlePath];
  [coderCopy encodeObject:beforeTranslocationBundlePath forKey:@"_beforeTranslocationBundlePath"];

  homeDirectory = [(RBSLaunchContext *)self homeDirectory];
  [coderCopy encodeObject:homeDirectory forKey:@"_homeDirectory"];

  tmpDirectory = [(RBSLaunchContext *)self tmpDirectory];
  [coderCopy encodeObject:tmpDirectory forKey:@"_tmpDirectory"];

  requiredExistingProcess = [(RBSLaunchContext *)self requiredExistingProcess];
  [coderCopy encodeObject:requiredExistingProcess forKey:@"_requiredExistingProcess"];

  preventContainerization = [(RBSLaunchContext *)self preventContainerization];
  [coderCopy encodeObject:preventContainerization forKey:@"_preventContainerization"];

  containerIdentifier = [(RBSLaunchContext *)self containerIdentifier];
  [coderCopy encodeObject:containerIdentifier forKey:@"_containerIdentifier"];

  appID = [(RBSLaunchContext *)self appID];
  [coderCopy encodeObject:appID forKey:@"_appID"];

  [coderCopy encodeObject:self->_dextCheckInPort forKey:@"_dextCheckInPort"];
  spawnConstraint = [(RBSLaunchContext *)self spawnConstraint];
  [coderCopy encodeObject:spawnConstraint forKey:@"_spawnConstraint"];
}

- (RBSLaunchContext)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = RBSLaunchContext;
  v5 = [(RBSLaunchContext *)&v40 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identity"];
    [(RBSLaunchContext *)v5 setIdentity:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_appID"];
    [(RBSLaunchContext *)v5 setAppID:v7];

    v8 = objc_opt_class();
    v9 = [coderCopy decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"_arguments"];
    [(RBSLaunchContext *)v5 setArguments:v9];

    -[RBSLaunchContext setExecutionOptions:](v5, "setExecutionOptions:", [coderCopy decodeUInt64ForKey:@"_executionOptions"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__overrideExecutablePath"];
    [(RBSLaunchContext *)v5 _setOverrideExecutablePath:v10];

    v11 = objc_opt_class();
    v12 = [coderCopy decodeCollectionOfClass:v11 containingClass:objc_opt_class() forKey:@"__additionalMachServices"];
    [(RBSLaunchContext *)v5 _setAdditionalMachServices:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__additionalEnvironment"];
    [(RBSLaunchContext *)v5 _setAdditionalEnvironment:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_standardOutputPath"];
    [(RBSLaunchContext *)v5 setStandardOutputPath:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_standardErrorPath"];
    [(RBSLaunchContext *)v5 setStandardErrorPath:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_standardInPath"];
    [(RBSLaunchContext *)v5 setStandardInPath:v16];

    v17 = objc_opt_class();
    v18 = [coderCopy decodeCollectionOfClass:v17 containingClass:objc_opt_class() forKey:@"_attributes"];
    [(RBSLaunchContext *)v5 setAttributes:v18];

    v19 = objc_opt_class();
    v20 = [coderCopy decodeCollectionOfClass:v19 containingClass:objc_opt_class() forKey:@"_managedEndpointLaunchIdentifiers"];
    [(RBSLaunchContext *)v5 setManagedEndpointLaunchIdentifiers:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_explanation"];
    [(RBSLaunchContext *)v5 setExplanation:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_managedPersona"];
    [(RBSLaunchContext *)v5 setManagedPersona:v22];

    -[RBSLaunchContext setSpawnType:](v5, "setSpawnType:", [coderCopy decodeUInt64ForKey:@"_spawnType"]);
    -[RBSLaunchContext setLsManageRoleOnly:](v5, "setLsManageRoleOnly:", [coderCopy decodeUInt64ForKey:@"_lsManageRoleOnly"] != 0);
    -[RBSLaunchContext setLsSpawnFlags:](v5, "setLsSpawnFlags:", [coderCopy decodeUInt64ForKey:@"_lsSpawnFlags"]);
    -[RBSLaunchContext setLsUMask:](v5, "setLsUMask:", [coderCopy decodeUInt64ForKey:@"_lsUMask"]);
    v23 = objc_opt_class();
    v24 = [coderCopy decodeCollectionOfClass:v23 containingClass:objc_opt_class() forKey:@"_lsBinpref"];
    [(RBSLaunchContext *)v5 setLsBinpref:v24];

    v25 = objc_opt_class();
    v26 = [coderCopy decodeCollectionOfClass:v25 containingClass:objc_opt_class() forKey:@"_lsBinprefSubtype"];
    [(RBSLaunchContext *)v5 setLsBinprefSubtype:v26];

    -[RBSLaunchContext setInitialRole:](v5, "setInitialRole:", [coderCopy decodeUInt64ForKey:@"_initialRole"]);
    -[RBSLaunchContext setLsPersona:](v5, "setLsPersona:", [coderCopy decodeUInt64ForKey:@"_lsPersona"]);
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    [(RBSLaunchContext *)v5 setBundleIdentifier:v27];

    -[RBSLaunchContext setHostPid:](v5, "setHostPid:", [coderCopy decodeUInt64ForKey:@"_hostPid"]);
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_extensionOverlay"];
    [(RBSLaunchContext *)v5 setExtensionOverlay:v28];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_oneShotUUID"];
    [(RBSLaunchContext *)v5 setOneShotUUID:v29];

    -[RBSLaunchContext setForceSubmit:](v5, "setForceSubmit:", [coderCopy decodeUInt64ForKey:@"_forceSubmit"] != 0);
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_beforeTranslocationBundlePath"];
    [(RBSLaunchContext *)v5 setBeforeTranslocationBundlePath:v30];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeDirectory"];
    [(RBSLaunchContext *)v5 setHomeDirectory:v31];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_tmpDirectory"];
    [(RBSLaunchContext *)v5 setTmpDirectory:v32];

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_requiredExistingProcess"];
    [(RBSLaunchContext *)v5 setRequiredExistingProcess:v33];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preventContainerization"];
    [(RBSLaunchContext *)v5 setPreventContainerization:v34];

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_containerIdentifier"];
    [(RBSLaunchContext *)v5 setContainerIdentifier:v35];

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dextCheckInPort"];
    dextCheckInPort = v5->_dextCheckInPort;
    v5->_dextCheckInPort = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_spawnConstraint"];
    [(RBSLaunchContext *)v5 setSpawnConstraint:v38];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[RBSLaunchContext allocWithZone:?]];
  identity = [(RBSLaunchContext *)self identity];
  [(RBSLaunchContext *)v4 setIdentity:identity];

  appID = [(RBSLaunchContext *)self appID];
  [(RBSLaunchContext *)v4 setAppID:appID];

  arguments = [(RBSLaunchContext *)self arguments];
  [(RBSLaunchContext *)v4 setArguments:arguments];

  [(RBSLaunchContext *)v4 setExecutionOptions:[(RBSLaunchContext *)self executionOptions]];
  _overrideExecutablePath = [(RBSLaunchContext *)self _overrideExecutablePath];
  [(RBSLaunchContext *)v4 _setOverrideExecutablePath:_overrideExecutablePath];

  _additionalMachServices = [(RBSLaunchContext *)self _additionalMachServices];
  [(RBSLaunchContext *)v4 _setAdditionalMachServices:_additionalMachServices];

  _additionalEnvironment = [(RBSLaunchContext *)self _additionalEnvironment];
  [(RBSLaunchContext *)v4 _setAdditionalEnvironment:_additionalEnvironment];

  standardOutputPath = [(RBSLaunchContext *)self standardOutputPath];
  [(RBSLaunchContext *)v4 setStandardOutputPath:standardOutputPath];

  standardErrorPath = [(RBSLaunchContext *)self standardErrorPath];
  [(RBSLaunchContext *)v4 setStandardErrorPath:standardErrorPath];

  standardInPath = [(RBSLaunchContext *)self standardInPath];
  [(RBSLaunchContext *)v4 setStandardInPath:standardInPath];

  attributes = [(RBSLaunchContext *)self attributes];
  [(RBSLaunchContext *)v4 setAttributes:attributes];

  managedEndpointLaunchIdentifiers = [(RBSLaunchContext *)self managedEndpointLaunchIdentifiers];
  [(RBSLaunchContext *)v4 setManagedEndpointLaunchIdentifiers:managedEndpointLaunchIdentifiers];

  launchRequestIdentifierToMachNameMap = [(RBSLaunchContext *)self launchRequestIdentifierToMachNameMap];
  [(RBSLaunchContext *)v4 setLaunchRequestIdentifierToMachNameMap:launchRequestIdentifierToMachNameMap];

  explanation = [(RBSLaunchContext *)self explanation];
  [(RBSLaunchContext *)v4 setExplanation:explanation];

  managedPersona = [(RBSLaunchContext *)self managedPersona];
  [(RBSLaunchContext *)v4 setManagedPersona:managedPersona];

  [(RBSLaunchContext *)v4 setSpawnType:[(RBSLaunchContext *)self spawnType]];
  [(RBSLaunchContext *)v4 setLsManageRoleOnly:[(RBSLaunchContext *)self lsManageRoleOnly]];
  [(RBSLaunchContext *)v4 setLsSpawnFlags:[(RBSLaunchContext *)self lsSpawnFlags]];
  [(RBSLaunchContext *)v4 setLsUMask:[(RBSLaunchContext *)self lsUMask]];
  lsBinpref = [(RBSLaunchContext *)self lsBinpref];
  [(RBSLaunchContext *)v4 setLsBinpref:lsBinpref];

  lsBinprefSubtype = [(RBSLaunchContext *)self lsBinprefSubtype];
  [(RBSLaunchContext *)v4 setLsBinprefSubtype:lsBinprefSubtype];

  [(RBSLaunchContext *)v4 setInitialRole:[(RBSLaunchContext *)self initialRole]];
  [(RBSLaunchContext *)v4 setLsPersona:[(RBSLaunchContext *)self lsPersona]];
  bundleIdentifier = [(RBSLaunchContext *)self bundleIdentifier];
  [(RBSLaunchContext *)v4 setBundleIdentifier:bundleIdentifier];

  [(RBSLaunchContext *)v4 setHostPid:[(RBSLaunchContext *)self hostPid]];
  extensionOverlay = [(RBSLaunchContext *)self extensionOverlay];
  [(RBSLaunchContext *)v4 setExtensionOverlay:extensionOverlay];

  oneShotUUID = [(RBSLaunchContext *)self oneShotUUID];
  [(RBSLaunchContext *)v4 setOneShotUUID:oneShotUUID];

  [(RBSLaunchContext *)v4 setForceSubmit:[(RBSLaunchContext *)self forceSubmit]];
  beforeTranslocationBundlePath = [(RBSLaunchContext *)self beforeTranslocationBundlePath];
  [(RBSLaunchContext *)v4 setBeforeTranslocationBundlePath:beforeTranslocationBundlePath];

  homeDirectory = [(RBSLaunchContext *)self homeDirectory];
  [(RBSLaunchContext *)v4 setHomeDirectory:homeDirectory];

  tmpDirectory = [(RBSLaunchContext *)self tmpDirectory];
  [(RBSLaunchContext *)v4 setTmpDirectory:tmpDirectory];

  requiredExistingProcess = [(RBSLaunchContext *)self requiredExistingProcess];
  [(RBSLaunchContext *)v4 setRequiredExistingProcess:requiredExistingProcess];

  preventContainerization = [(RBSLaunchContext *)self preventContainerization];
  [(RBSLaunchContext *)v4 setPreventContainerization:preventContainerization];

  containerIdentifier = [(RBSLaunchContext *)self containerIdentifier];
  [(RBSLaunchContext *)v4 setContainerIdentifier:containerIdentifier];

  v30 = [(RBSMachPort *)self->_dextCheckInPort copy];
  dextCheckInPort = v4->_dextCheckInPort;
  v4->_dextCheckInPort = v30;

  spawnConstraint = [(RBSLaunchContext *)self spawnConstraint];
  [(RBSLaunchContext *)v4 setSpawnConstraint:spawnConstraint];

  launchdJobProperties = [(RBSLaunchContext *)self launchdJobProperties];
  [(RBSLaunchContext *)v4 setLaunchdJobProperties:launchdJobProperties];

  clientRestriction = [(RBSLaunchContext *)self clientRestriction];
  [(RBSLaunchContext *)v4 setClientRestriction:clientRestriction];

  return v4;
}

@end