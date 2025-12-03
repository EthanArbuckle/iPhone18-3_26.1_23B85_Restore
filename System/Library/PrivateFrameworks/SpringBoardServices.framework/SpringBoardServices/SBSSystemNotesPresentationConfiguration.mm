@interface SBSSystemNotesPresentationConfiguration
- (BOOL)isEqual:(id)equal;
- (SBSSystemNotesPresentationConfiguration)initWithCoder:(id)coder;
- (SBSSystemNotesPresentationConfiguration)initWithSceneBundleIdentifier:(id)identifier userActivity:(id)activity preferredPresentationMode:(int64_t)mode;
- (SBSSystemNotesPresentationConfiguration)initWithSceneBundleIdentifier:(id)identifier userActivity:(id)activity preferredPresentationMode:(int64_t)mode identifier:(id)a6;
- (SBSSystemNotesPresentationConfiguration)presentationConfigurationWithPreferredPresentationMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)coder;
- (void)prepareForXPCCall:(id)call;
@end

@implementation SBSSystemNotesPresentationConfiguration

- (SBSSystemNotesPresentationConfiguration)initWithSceneBundleIdentifier:(id)identifier userActivity:(id)activity preferredPresentationMode:(int64_t)mode
{
  v8 = MEMORY[0x1E696AFB0];
  activityCopy = activity;
  identifierCopy = identifier;
  uUID = [v8 UUID];
  v12 = [(SBSSystemNotesPresentationConfiguration *)self initWithSceneBundleIdentifier:identifierCopy userActivity:activityCopy preferredPresentationMode:mode identifier:uUID];

  return v12;
}

- (SBSSystemNotesPresentationConfiguration)initWithSceneBundleIdentifier:(id)identifier userActivity:(id)activity preferredPresentationMode:(int64_t)mode identifier:(id)a6
{
  identifierCopy = identifier;
  activityCopy = activity;
  v13 = a6;
  if (!SBSSystemNotesPresentationModeIsValid(mode))
  {
    [SBSSystemNotesPresentationConfiguration initWithSceneBundleIdentifier:a2 userActivity:self preferredPresentationMode:? identifier:?];
  }

  v18.receiver = self;
  v18.super_class = SBSSystemNotesPresentationConfiguration;
  v14 = [(SBSSystemNotesPresentationConfiguration *)&v18 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    sceneBundleIdentifier = v14->_sceneBundleIdentifier;
    v14->_sceneBundleIdentifier = v15;

    objc_storeStrong(&v14->_userActivity, activity);
    v14->_preferredPresentationMode = mode;
    objc_storeStrong(&v14->_identifier, a6);
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SBSSystemNotesPresentationConfiguration *)self isEqualToSystemNotesPresentationConfiguration:equalCopy];
  }

  return v5;
}

- (SBSSystemNotesPresentationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneBundleIdentifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivityData"];
    v7 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityData:v6];
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      selfCopy = 0;
    }

    else
    {
      v10 = [coderCopy decodeIntegerForKey:@"preferredPresentationMode"];
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      v12 = [(SBSSystemNotesPresentationConfiguration *)self initWithSceneBundleIdentifier:v5 userActivity:v8 preferredPresentationMode:v10 identifier:v11];
      v13 = v12;
      if (v12)
      {
        objc_storeStrong(&v12->_userActivityData, v6);
      }

      self = v13;

      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = coderCopy;
  if ((self->_userActivity == 0) != (self->_userActivityData == 0))
  {
    [(SBSSystemNotesPresentationConfiguration *)&self->_userActivity encodeWithCoder:a2, self];
    coderCopy = v6;
  }

  [coderCopy encodeObject:self->_sceneBundleIdentifier forKey:@"sceneBundleIdentifier"];
  [v6 encodeInteger:self->_preferredPresentationMode forKey:@"preferredPresentationMode"];
  if (self->_userActivity)
  {
    [v6 encodeObject:self->_userActivityData forKey:@"userActivityData"];
  }

  [v6 encodeObject:self->_identifier forKey:@"identifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithSceneBundleIdentifier:self->_sceneBundleIdentifier userActivity:self->_userActivity preferredPresentationMode:self->_preferredPresentationMode identifier:self->_identifier];
  objc_storeStrong(v4 + 1, self->_userActivityData);
  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSSystemNotesPresentationConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  [v3 appendString:uUIDString withName:@"identifier"];

  [v3 appendString:self->_sceneBundleIdentifier withName:@"sceneBundleIdentifier"];
  v5 = SBSSystemNotesPresentationModeDescription(self->_preferredPresentationMode);
  [v3 appendString:v5 withName:@"preferredPresentationMode"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSSystemNotesPresentationConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSSystemNotesPresentationConfiguration *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_userActivity withName:@"userActivity" skipIfNil:1];

  return succinctDescriptionBuilder;
}

- (SBSSystemNotesPresentationConfiguration)presentationConfigurationWithPreferredPresentationMode:(int64_t)mode
{
  v4 = [objc_alloc(objc_opt_class()) initWithSceneBundleIdentifier:self->_sceneBundleIdentifier userActivity:self->_userActivity preferredPresentationMode:mode identifier:self->_identifier];
  objc_storeStrong(v4 + 1, self->_userActivityData);

  return v4;
}

- (void)prepareForXPCCall:(id)call
{
  callCopy = call;
  v5 = callCopy;
  userActivity = self->_userActivity;
  if (userActivity && !self->_userActivityData)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__SBSSystemNotesPresentationConfiguration_prepareForXPCCall___block_invoke;
    v7[3] = &unk_1E7360928;
    v7[4] = self;
    v8 = callCopy;
    [(NSUserActivity *)userActivity _createUserActivityDataWithOptions:MEMORY[0x1E695E0F8] completionHandler:v7];
  }

  else
  {
    (*(callCopy + 2))(callCopy, 0);
  }
}

void __61__SBSSystemNotesPresentationConfiguration_prepareForXPCCall___block_invoke(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(a1 + 32) + 8), a2);
  v6 = a2;
  v7 = a3;
  (*(*(a1 + 40) + 16))();
}

- (void)initWithSceneBundleIdentifier:(uint64_t)a1 userActivity:(uint64_t)a2 preferredPresentationMode:identifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSSystemNotesPresentationConfiguration.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"SBSSystemNotesPresentationModeIsValid(preferredPresentationMode)"}];
}

- (void)encodeWithCoder:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a3 object:a4 file:@"SBSSystemNotesPresentationConfiguration.m" lineNumber:112 description:{@"attempting to encode an SBSSystemNotesPresentationConfiguration object with invalid NSUserActivity or its NSData representation. activity: %@; data: %@", *a1, *a2}];
}

@end