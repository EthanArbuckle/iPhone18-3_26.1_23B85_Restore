@interface RBSLaunchContext
+ (id)context;
+ (id)contextWithIdentity:(id)a3;
+ (id)contextWithLSAppID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (RBSLaunchContext)initWithRBSXPCCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithRBSXPCCoder:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setIdentity:(id)a3;
- (void)setLaunchAssertionIdentifier:(id)a3;
@end

@implementation RBSLaunchContext

+ (id)context
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)contextWithIdentity:(id)a3
{
  v4 = a3;
  v5 = [a1 context];
  [v5 setIdentity:v4];

  return v5;
}

+ (id)contextWithLSAppID:(id)a3
{
  v4 = a3;
  v5 = [a1 context];
  [v5 setAppID:v4];

  return v5;
}

- (void)setIdentity:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_identity, a3);
  v5 = [(RBSProcessIdentity *)self->_identity embeddedApplicationIdentifier];

  if (v5)
  {
    v6 = [(RBSProcessIdentity *)self->_identity embeddedApplicationIdentifier];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v6;
  }
}

- (void)setBundleIdentifier:(id)a3
{
  v6 = a3;
  v5 = [(RBSProcessIdentity *)self->_identity embeddedApplicationIdentifier];

  if (!v5)
  {
    objc_storeStrong(&self->_bundleIdentifier, a3);
  }
}

- (void)setLaunchAssertionIdentifier:(id)a3
{
  v4 = [a3 copy];
  launchAssertionIdentifier = self->_launchAssertionIdentifier;
  self->_launchAssertionIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_71;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  identity = self->_identity;
  if (identity != v4->_identity && ![(RBSProcessIdentity *)identity isEqual:?])
  {
    goto LABEL_3;
  }

  appID = self->_appID;
  if (appID != v4->_appID && ![(LSApplicationIdentity *)appID isEqual:?])
  {
    goto LABEL_3;
  }

  overrideExecutablePath = self->__overrideExecutablePath;
  if (overrideExecutablePath != v4->__overrideExecutablePath && ![(NSString *)overrideExecutablePath isEqualToString:?])
  {
    goto LABEL_3;
  }

  arguments = self->_arguments;
  if (arguments != v4->_arguments && ![(NSArray *)arguments isEqualToArray:?])
  {
    goto LABEL_3;
  }

  additionalMachServices = self->__additionalMachServices;
  if (additionalMachServices != v4->__additionalMachServices && ![(NSArray *)additionalMachServices isEqualToArray:?])
  {
    goto LABEL_3;
  }

  if (self->_executionOptions != v4->_executionOptions)
  {
    goto LABEL_3;
  }

  additionalEnvironment = self->__additionalEnvironment;
  if (additionalEnvironment != v4->__additionalEnvironment && ![(NSDictionary *)additionalEnvironment isEqualToDictionary:?])
  {
    goto LABEL_3;
  }

  standardOutputPath = self->_standardOutputPath;
  if (standardOutputPath != v4->_standardOutputPath && ![(NSString *)standardOutputPath isEqualToString:?])
  {
    goto LABEL_3;
  }

  standardErrorPath = self->_standardErrorPath;
  if (standardErrorPath != v4->_standardErrorPath && ![(NSString *)standardErrorPath isEqualToString:?])
  {
    goto LABEL_3;
  }

  standardInPath = self->_standardInPath;
  if (standardInPath != v4->_standardInPath && ![(NSString *)standardInPath isEqualToString:?])
  {
    goto LABEL_3;
  }

  managedPersona = self->_managedPersona;
  if (managedPersona != v4->_managedPersona && ![(NSString *)managedPersona isEqualToString:?])
  {
    goto LABEL_3;
  }

  if (self->_spawnType != v4->_spawnType)
  {
    goto LABEL_3;
  }

  attributes = self->_attributes;
  if (attributes != v4->_attributes && ![(NSArray *)attributes isEqualToArray:?])
  {
    goto LABEL_3;
  }

  managedEndpointLaunchIdentifiers = self->_managedEndpointLaunchIdentifiers;
  if (managedEndpointLaunchIdentifiers != v4->_managedEndpointLaunchIdentifiers && ![(NSSet *)managedEndpointLaunchIdentifiers isEqualToSet:?])
  {
    goto LABEL_3;
  }

  explanation = self->_explanation;
  if (explanation != v4->_explanation && ![(NSString *)explanation isEqualToString:?])
  {
    goto LABEL_3;
  }

  if (self->_lsManageRoleOnly != v4->_lsManageRoleOnly || self->_lsSpawnFlags != v4->_lsSpawnFlags || self->_lsUMask != v4->_lsUMask)
  {
    goto LABEL_3;
  }

  lsBinpref = self->_lsBinpref;
  v21 = v4->_lsBinpref;
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
  v23 = v4->_lsBinprefSubtype;
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

  if (self->_initialRole != v4->_initialRole)
  {
    goto LABEL_3;
  }

  if (self->_lsPersona != v4->_lsPersona)
  {
    goto LABEL_3;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier != v4->_bundleIdentifier && ![(NSString *)bundleIdentifier isEqualToString:?])
  {
    goto LABEL_3;
  }

  if (self->_hostPid != v4->_hostPid)
  {
    goto LABEL_3;
  }

  extensionOverlay = self->_extensionOverlay;
  if (extensionOverlay != v4->_extensionOverlay && ![(NSDictionary *)extensionOverlay isEqualToDictionary:?])
  {
    goto LABEL_3;
  }

  oneShotUUID = self->_oneShotUUID;
  if (oneShotUUID != v4->_oneShotUUID && ![(NSUUID *)oneShotUUID isEqual:?])
  {
    goto LABEL_3;
  }

  if (self->_forceSubmit != v4->_forceSubmit)
  {
    goto LABEL_3;
  }

  beforeTranslocationBundlePath = self->_beforeTranslocationBundlePath;
  if (beforeTranslocationBundlePath != v4->_beforeTranslocationBundlePath && ![(NSString *)beforeTranslocationBundlePath isEqualToString:?])
  {
    goto LABEL_3;
  }

  homeDirectory = self->_homeDirectory;
  if (homeDirectory != v4->_homeDirectory && ![(NSString *)homeDirectory isEqualToString:?])
  {
    goto LABEL_3;
  }

  tmpDirectory = self->_tmpDirectory;
  if (tmpDirectory != v4->_tmpDirectory && ![(NSString *)tmpDirectory isEqualToString:?])
  {
    goto LABEL_3;
  }

  requiredExistingProcess = self->_requiredExistingProcess;
  if (requiredExistingProcess != v4->_requiredExistingProcess && ![(RBSProcessIdentifier *)requiredExistingProcess isEqual:?])
  {
    goto LABEL_3;
  }

  preventContainerization = self->_preventContainerization;
  if (preventContainerization != v4->_preventContainerization && ![(NSNumber *)preventContainerization isEqual:?])
  {
    goto LABEL_3;
  }

  containerIdentifier = self->_containerIdentifier;
  if (containerIdentifier != v4->_containerIdentifier && ![(NSString *)containerIdentifier isEqual:?])
  {
    goto LABEL_3;
  }

  dextCheckInPort = self->_dextCheckInPort;
  v34 = v4->_dextCheckInPort;
  if (dextCheckInPort == v34)
  {
LABEL_69:
    spawnConstraint = self->_spawnConstraint;
    if (spawnConstraint == v4->_spawnConstraint || [(NSDictionary *)spawnConstraint isEqualToDictionary:?])
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

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(RBSLaunchContext *)self identity];
  [v4 encodeObject:v5 forKey:@"_identity"];

  v6 = [(RBSLaunchContext *)self arguments];
  [v4 encodeCollection:v6 forKey:@"_arguments"];

  [v4 encodeUInt64:-[RBSLaunchContext executionOptions](self forKey:{"executionOptions"), @"_executionOptions"}];
  v7 = [(RBSLaunchContext *)self _overrideExecutablePath];
  [v4 encodeObject:v7 forKey:@"__overrideExecutablePath"];

  v8 = [(RBSLaunchContext *)self _additionalMachServices];
  [v4 encodeCollection:v8 forKey:@"__additionalMachServices"];

  v9 = [(RBSLaunchContext *)self _additionalEnvironment];
  [v4 encodeObject:v9 forKey:@"__additionalEnvironment"];

  v10 = [(RBSLaunchContext *)self standardOutputPath];
  [v4 encodeObject:v10 forKey:@"_standardOutputPath"];

  v11 = [(RBSLaunchContext *)self standardErrorPath];
  [v4 encodeObject:v11 forKey:@"_standardErrorPath"];

  v12 = [(RBSLaunchContext *)self standardInPath];
  [v4 encodeObject:v12 forKey:@"_standardInPath"];

  v13 = [(RBSLaunchContext *)self attributes];
  [v4 encodeCollection:v13 forKey:@"_attributes"];

  v14 = [(RBSLaunchContext *)self managedEndpointLaunchIdentifiers];
  [v4 encodeCollection:v14 forKey:@"_managedEndpointLaunchIdentifiers"];

  v15 = [(RBSLaunchContext *)self explanation];
  [v4 encodeObject:v15 forKey:@"_explanation"];

  v16 = [(RBSLaunchContext *)self managedPersona];
  [v4 encodeObject:v16 forKey:@"_managedPersona"];

  [v4 encodeUInt64:-[RBSLaunchContext spawnType](self forKey:{"spawnType"), @"_spawnType"}];
  [v4 encodeUInt64:-[RBSLaunchContext lsManageRoleOnly](self forKey:{"lsManageRoleOnly"), @"_lsManageRoleOnly"}];
  [v4 encodeUInt64:-[RBSLaunchContext lsSpawnFlags](self forKey:{"lsSpawnFlags"), @"_lsSpawnFlags"}];
  [v4 encodeUInt64:-[RBSLaunchContext lsUMask](self forKey:{"lsUMask"), @"_lsUMask"}];
  v17 = [(RBSLaunchContext *)self lsBinpref];
  [v4 encodeCollection:v17 forKey:@"_lsBinpref"];

  v18 = [(RBSLaunchContext *)self lsBinprefSubtype];
  [v4 encodeCollection:v18 forKey:@"_lsBinprefSubtype"];

  [v4 encodeUInt64:-[RBSLaunchContext initialRole](self forKey:{"initialRole"), @"_initialRole"}];
  [v4 encodeUInt64:-[RBSLaunchContext lsPersona](self forKey:{"lsPersona"), @"_lsPersona"}];
  v19 = [(RBSLaunchContext *)self bundleIdentifier];
  [v4 encodeObject:v19 forKey:@"_bundleIdentifier"];

  [v4 encodeUInt64:-[RBSLaunchContext hostPid](self forKey:{"hostPid"), @"_hostPid"}];
  v20 = [(RBSLaunchContext *)self extensionOverlay];
  [v4 encodeObject:v20 forKey:@"_extensionOverlay"];

  v21 = [(RBSLaunchContext *)self oneShotUUID];
  [v4 encodeObject:v21 forKey:@"_oneShotUUID"];

  [v4 encodeUInt64:-[RBSLaunchContext forceSubmit](self forKey:{"forceSubmit"), @"_forceSubmit"}];
  v22 = [(RBSLaunchContext *)self beforeTranslocationBundlePath];
  [v4 encodeObject:v22 forKey:@"_beforeTranslocationBundlePath"];

  v23 = [(RBSLaunchContext *)self homeDirectory];
  [v4 encodeObject:v23 forKey:@"_homeDirectory"];

  v24 = [(RBSLaunchContext *)self tmpDirectory];
  [v4 encodeObject:v24 forKey:@"_tmpDirectory"];

  v25 = [(RBSLaunchContext *)self requiredExistingProcess];
  [v4 encodeObject:v25 forKey:@"_requiredExistingProcess"];

  v26 = [(RBSLaunchContext *)self preventContainerization];
  [v4 encodeObject:v26 forKey:@"_preventContainerization"];

  v27 = [(RBSLaunchContext *)self containerIdentifier];
  [v4 encodeObject:v27 forKey:@"_containerIdentifier"];

  v28 = [(RBSLaunchContext *)self appID];
  [v4 encodeObject:v28 forKey:@"_appID"];

  [v4 encodeObject:self->_dextCheckInPort forKey:@"_dextCheckInPort"];
  v29 = [(RBSLaunchContext *)self spawnConstraint];
  [v4 encodeObject:v29 forKey:@"_spawnConstraint"];
}

- (RBSLaunchContext)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = RBSLaunchContext;
  v5 = [(RBSLaunchContext *)&v40 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identity"];
    [(RBSLaunchContext *)v5 setIdentity:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_appID"];
    [(RBSLaunchContext *)v5 setAppID:v7];

    v8 = objc_opt_class();
    v9 = [v4 decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"_arguments"];
    [(RBSLaunchContext *)v5 setArguments:v9];

    -[RBSLaunchContext setExecutionOptions:](v5, "setExecutionOptions:", [v4 decodeUInt64ForKey:@"_executionOptions"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__overrideExecutablePath"];
    [(RBSLaunchContext *)v5 _setOverrideExecutablePath:v10];

    v11 = objc_opt_class();
    v12 = [v4 decodeCollectionOfClass:v11 containingClass:objc_opt_class() forKey:@"__additionalMachServices"];
    [(RBSLaunchContext *)v5 _setAdditionalMachServices:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__additionalEnvironment"];
    [(RBSLaunchContext *)v5 _setAdditionalEnvironment:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_standardOutputPath"];
    [(RBSLaunchContext *)v5 setStandardOutputPath:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_standardErrorPath"];
    [(RBSLaunchContext *)v5 setStandardErrorPath:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_standardInPath"];
    [(RBSLaunchContext *)v5 setStandardInPath:v16];

    v17 = objc_opt_class();
    v18 = [v4 decodeCollectionOfClass:v17 containingClass:objc_opt_class() forKey:@"_attributes"];
    [(RBSLaunchContext *)v5 setAttributes:v18];

    v19 = objc_opt_class();
    v20 = [v4 decodeCollectionOfClass:v19 containingClass:objc_opt_class() forKey:@"_managedEndpointLaunchIdentifiers"];
    [(RBSLaunchContext *)v5 setManagedEndpointLaunchIdentifiers:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_explanation"];
    [(RBSLaunchContext *)v5 setExplanation:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_managedPersona"];
    [(RBSLaunchContext *)v5 setManagedPersona:v22];

    -[RBSLaunchContext setSpawnType:](v5, "setSpawnType:", [v4 decodeUInt64ForKey:@"_spawnType"]);
    -[RBSLaunchContext setLsManageRoleOnly:](v5, "setLsManageRoleOnly:", [v4 decodeUInt64ForKey:@"_lsManageRoleOnly"] != 0);
    -[RBSLaunchContext setLsSpawnFlags:](v5, "setLsSpawnFlags:", [v4 decodeUInt64ForKey:@"_lsSpawnFlags"]);
    -[RBSLaunchContext setLsUMask:](v5, "setLsUMask:", [v4 decodeUInt64ForKey:@"_lsUMask"]);
    v23 = objc_opt_class();
    v24 = [v4 decodeCollectionOfClass:v23 containingClass:objc_opt_class() forKey:@"_lsBinpref"];
    [(RBSLaunchContext *)v5 setLsBinpref:v24];

    v25 = objc_opt_class();
    v26 = [v4 decodeCollectionOfClass:v25 containingClass:objc_opt_class() forKey:@"_lsBinprefSubtype"];
    [(RBSLaunchContext *)v5 setLsBinprefSubtype:v26];

    -[RBSLaunchContext setInitialRole:](v5, "setInitialRole:", [v4 decodeUInt64ForKey:@"_initialRole"]);
    -[RBSLaunchContext setLsPersona:](v5, "setLsPersona:", [v4 decodeUInt64ForKey:@"_lsPersona"]);
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    [(RBSLaunchContext *)v5 setBundleIdentifier:v27];

    -[RBSLaunchContext setHostPid:](v5, "setHostPid:", [v4 decodeUInt64ForKey:@"_hostPid"]);
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_extensionOverlay"];
    [(RBSLaunchContext *)v5 setExtensionOverlay:v28];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_oneShotUUID"];
    [(RBSLaunchContext *)v5 setOneShotUUID:v29];

    -[RBSLaunchContext setForceSubmit:](v5, "setForceSubmit:", [v4 decodeUInt64ForKey:@"_forceSubmit"] != 0);
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_beforeTranslocationBundlePath"];
    [(RBSLaunchContext *)v5 setBeforeTranslocationBundlePath:v30];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeDirectory"];
    [(RBSLaunchContext *)v5 setHomeDirectory:v31];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tmpDirectory"];
    [(RBSLaunchContext *)v5 setTmpDirectory:v32];

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_requiredExistingProcess"];
    [(RBSLaunchContext *)v5 setRequiredExistingProcess:v33];

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preventContainerization"];
    [(RBSLaunchContext *)v5 setPreventContainerization:v34];

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_containerIdentifier"];
    [(RBSLaunchContext *)v5 setContainerIdentifier:v35];

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dextCheckInPort"];
    dextCheckInPort = v5->_dextCheckInPort;
    v5->_dextCheckInPort = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_spawnConstraint"];
    [(RBSLaunchContext *)v5 setSpawnConstraint:v38];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[RBSLaunchContext allocWithZone:?]];
  v5 = [(RBSLaunchContext *)self identity];
  [(RBSLaunchContext *)v4 setIdentity:v5];

  v6 = [(RBSLaunchContext *)self appID];
  [(RBSLaunchContext *)v4 setAppID:v6];

  v7 = [(RBSLaunchContext *)self arguments];
  [(RBSLaunchContext *)v4 setArguments:v7];

  [(RBSLaunchContext *)v4 setExecutionOptions:[(RBSLaunchContext *)self executionOptions]];
  v8 = [(RBSLaunchContext *)self _overrideExecutablePath];
  [(RBSLaunchContext *)v4 _setOverrideExecutablePath:v8];

  v9 = [(RBSLaunchContext *)self _additionalMachServices];
  [(RBSLaunchContext *)v4 _setAdditionalMachServices:v9];

  v10 = [(RBSLaunchContext *)self _additionalEnvironment];
  [(RBSLaunchContext *)v4 _setAdditionalEnvironment:v10];

  v11 = [(RBSLaunchContext *)self standardOutputPath];
  [(RBSLaunchContext *)v4 setStandardOutputPath:v11];

  v12 = [(RBSLaunchContext *)self standardErrorPath];
  [(RBSLaunchContext *)v4 setStandardErrorPath:v12];

  v13 = [(RBSLaunchContext *)self standardInPath];
  [(RBSLaunchContext *)v4 setStandardInPath:v13];

  v14 = [(RBSLaunchContext *)self attributes];
  [(RBSLaunchContext *)v4 setAttributes:v14];

  v15 = [(RBSLaunchContext *)self managedEndpointLaunchIdentifiers];
  [(RBSLaunchContext *)v4 setManagedEndpointLaunchIdentifiers:v15];

  v16 = [(RBSLaunchContext *)self launchRequestIdentifierToMachNameMap];
  [(RBSLaunchContext *)v4 setLaunchRequestIdentifierToMachNameMap:v16];

  v17 = [(RBSLaunchContext *)self explanation];
  [(RBSLaunchContext *)v4 setExplanation:v17];

  v18 = [(RBSLaunchContext *)self managedPersona];
  [(RBSLaunchContext *)v4 setManagedPersona:v18];

  [(RBSLaunchContext *)v4 setSpawnType:[(RBSLaunchContext *)self spawnType]];
  [(RBSLaunchContext *)v4 setLsManageRoleOnly:[(RBSLaunchContext *)self lsManageRoleOnly]];
  [(RBSLaunchContext *)v4 setLsSpawnFlags:[(RBSLaunchContext *)self lsSpawnFlags]];
  [(RBSLaunchContext *)v4 setLsUMask:[(RBSLaunchContext *)self lsUMask]];
  v19 = [(RBSLaunchContext *)self lsBinpref];
  [(RBSLaunchContext *)v4 setLsBinpref:v19];

  v20 = [(RBSLaunchContext *)self lsBinprefSubtype];
  [(RBSLaunchContext *)v4 setLsBinprefSubtype:v20];

  [(RBSLaunchContext *)v4 setInitialRole:[(RBSLaunchContext *)self initialRole]];
  [(RBSLaunchContext *)v4 setLsPersona:[(RBSLaunchContext *)self lsPersona]];
  v21 = [(RBSLaunchContext *)self bundleIdentifier];
  [(RBSLaunchContext *)v4 setBundleIdentifier:v21];

  [(RBSLaunchContext *)v4 setHostPid:[(RBSLaunchContext *)self hostPid]];
  v22 = [(RBSLaunchContext *)self extensionOverlay];
  [(RBSLaunchContext *)v4 setExtensionOverlay:v22];

  v23 = [(RBSLaunchContext *)self oneShotUUID];
  [(RBSLaunchContext *)v4 setOneShotUUID:v23];

  [(RBSLaunchContext *)v4 setForceSubmit:[(RBSLaunchContext *)self forceSubmit]];
  v24 = [(RBSLaunchContext *)self beforeTranslocationBundlePath];
  [(RBSLaunchContext *)v4 setBeforeTranslocationBundlePath:v24];

  v25 = [(RBSLaunchContext *)self homeDirectory];
  [(RBSLaunchContext *)v4 setHomeDirectory:v25];

  v26 = [(RBSLaunchContext *)self tmpDirectory];
  [(RBSLaunchContext *)v4 setTmpDirectory:v26];

  v27 = [(RBSLaunchContext *)self requiredExistingProcess];
  [(RBSLaunchContext *)v4 setRequiredExistingProcess:v27];

  v28 = [(RBSLaunchContext *)self preventContainerization];
  [(RBSLaunchContext *)v4 setPreventContainerization:v28];

  v29 = [(RBSLaunchContext *)self containerIdentifier];
  [(RBSLaunchContext *)v4 setContainerIdentifier:v29];

  v30 = [(RBSMachPort *)self->_dextCheckInPort copy];
  dextCheckInPort = v4->_dextCheckInPort;
  v4->_dextCheckInPort = v30;

  v32 = [(RBSLaunchContext *)self spawnConstraint];
  [(RBSLaunchContext *)v4 setSpawnConstraint:v32];

  v33 = [(RBSLaunchContext *)self launchdJobProperties];
  [(RBSLaunchContext *)v4 setLaunchdJobProperties:v33];

  v34 = [(RBSLaunchContext *)self clientRestriction];
  [(RBSLaunchContext *)v4 setClientRestriction:v34];

  return v4;
}

@end