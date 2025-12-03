@interface SBUIContinuitySessionAppLaunchEvent
+ (id)eventWithData:(id)data error:(id *)error;
- (LSApplicationRecord)lsApplicationRecord;
- (SBUIContinuitySessionAppLaunchEvent)initWithBundleIdentifier:(id)identifier encodedRemoteAppIdentifier:(id)appIdentifier;
- (SBUIContinuitySessionAppLaunchEvent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)lsApplicationRecord;
@end

@implementation SBUIContinuitySessionAppLaunchEvent

- (SBUIContinuitySessionAppLaunchEvent)initWithBundleIdentifier:(id)identifier encodedRemoteAppIdentifier:(id)appIdentifier
{
  identifierCopy = identifier;
  appIdentifierCopy = appIdentifier;
  if (!(identifierCopy | appIdentifierCopy))
  {
    [SBUIContinuitySessionAppLaunchEvent initWithBundleIdentifier:a2 encodedRemoteAppIdentifier:self];
  }

  v13.receiver = self;
  v13.super_class = SBUIContinuitySessionAppLaunchEvent;
  v10 = [(SBUIContinuitySessionAppLaunchEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
    objc_storeStrong(&v11->_encodedRemoteAppIdentifier, appIdentifier);
  }

  return v11;
}

- (LSApplicationRecord)lsApplicationRecord
{
  lsApplicationRecord = self->_lsApplicationRecord;
  if (!lsApplicationRecord)
  {
    if (self->_encodedRemoteAppIdentifier)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2050000000;
      v4 = getAPSLaunchUtilClass_softClass;
      v17 = getAPSLaunchUtilClass_softClass;
      if (!getAPSLaunchUtilClass_softClass)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __getAPSLaunchUtilClass_block_invoke;
        v13[3] = &unk_1E789DA88;
        v13[4] = &v14;
        __getAPSLaunchUtilClass_block_invoke(v13);
        v4 = v15[3];
      }

      v5 = v4;
      _Block_object_dispose(&v14, 8);
      encodedRemoteAppIdentifier = self->_encodedRemoteAppIdentifier;
      v12 = 0;
      v7 = [v4 lsRecordForLaunchPayload:encodedRemoteAppIdentifier error:&v12];
      v8 = v12;
      v9 = self->_lsApplicationRecord;
      self->_lsApplicationRecord = v7;

      if (v8)
      {
        v10 = SBLogContinuitySessionService();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(SBUIContinuitySessionAppLaunchEvent *)v8 lsApplicationRecord];
        }
      }

      lsApplicationRecord = self->_lsApplicationRecord;
    }

    else
    {
      lsApplicationRecord = 0;
    }
  }

  return lsApplicationRecord;
}

+ (id)eventWithData:(id)data error:(id *)error
{
  v5 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:error];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_encodedRemoteAppIdentifier forKey:@"encodedRemoteAppIdentifier"];
}

- (SBUIContinuitySessionAppLaunchEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedRemoteAppIdentifier"];

  v7 = [(SBUIContinuitySessionAppLaunchEvent *)self initWithBundleIdentifier:v5 encodedRemoteAppIdentifier:v6];
  return v7;
}

- (void)initWithBundleIdentifier:(uint64_t)a1 encodedRemoteAppIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIContinuitySessionAppLaunchEvent.m" lineNumber:34 description:@"Must provide either a bundleIdentifier or a encodedRemoteAppIdentifier"];
}

- (void)lsApplicationRecord
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_ERROR, "Failed to decode encoded remote app identifier: %{public}@", &v2, 0xCu);
}

@end