@interface _SBDisplayScaleMappingCache
+ (id)sharedInstance;
- (_SBDisplayScaleMappingCache)init;
- (void)cacheMapping:(id)mapping;
- (void)dealloc;
- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity;
@end

@implementation _SBDisplayScaleMappingCache

- (_SBDisplayScaleMappingCache)init
{
  v8.receiver = self;
  v8.super_class = _SBDisplayScaleMappingCache;
  v2 = [(_SBDisplayScaleMappingCache *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    hardwareIdentifierToMappings = v2->_hardwareIdentifierToMappings;
    v2->_hardwareIdentifierToMappings = dictionary;

    mEMORY[0x1E699F7A8] = [MEMORY[0x1E699F7A8] sharedInstance];
    displayManager = v2->_displayManager;
    v2->_displayManager = mEMORY[0x1E699F7A8];

    [(FBDisplayManager *)v2->_displayManager addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(FBDisplayManager *)self->_displayManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = _SBDisplayScaleMappingCache;
  [(_SBDisplayScaleMappingCache *)&v3 dealloc];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___SBDisplayScaleMappingCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_7 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7, block);
  }

  v2 = sharedInstance___result;

  return v2;
}

- (void)cacheMapping:(id)mapping
{
  mappingCopy = mapping;
  displayHardwareIdentifier = [mappingCopy displayHardwareIdentifier];

  if (!displayHardwareIdentifier)
  {
    [(_SBDisplayScaleMappingCache *)a2 cacheMapping:?];
  }

  hardwareIdentifierToMappings = self->_hardwareIdentifierToMappings;
  displayHardwareIdentifier2 = [mappingCopy displayHardwareIdentifier];
  [(NSMutableDictionary *)hardwareIdentifierToMappings setObject:mappingCopy forKey:displayHardwareIdentifier2];
}

- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity
{
  v8 = [monitor configurationForIdentity:identity];
  hardwareIdentifier = [v8 hardwareIdentifier];

  if (hardwareIdentifier)
  {
    hardwareIdentifierToMappings = self->_hardwareIdentifierToMappings;
    hardwareIdentifier2 = [v8 hardwareIdentifier];
    [(NSMutableDictionary *)hardwareIdentifierToMappings removeObjectForKey:hardwareIdentifier2];
  }
}

- (void)cacheMapping:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayScaleMapping.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"[mapping displayHardwareIdentifier] != nil"}];
}

@end