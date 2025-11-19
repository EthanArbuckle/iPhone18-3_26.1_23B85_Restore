@interface _SBDisplayScaleMappingCache
+ (id)sharedInstance;
- (_SBDisplayScaleMappingCache)init;
- (void)cacheMapping:(id)a3;
- (void)dealloc;
- (void)displayMonitor:(id)a3 willDisconnectIdentity:(id)a4;
@end

@implementation _SBDisplayScaleMappingCache

- (_SBDisplayScaleMappingCache)init
{
  v8.receiver = self;
  v8.super_class = _SBDisplayScaleMappingCache;
  v2 = [(_SBDisplayScaleMappingCache *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    hardwareIdentifierToMappings = v2->_hardwareIdentifierToMappings;
    v2->_hardwareIdentifierToMappings = v3;

    v5 = [MEMORY[0x1E699F7A8] sharedInstance];
    displayManager = v2->_displayManager;
    v2->_displayManager = v5;

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
  block[4] = a1;
  if (sharedInstance_onceToken_7 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7, block);
  }

  v2 = sharedInstance___result;

  return v2;
}

- (void)cacheMapping:(id)a3
{
  v5 = a3;
  v6 = [v5 displayHardwareIdentifier];

  if (!v6)
  {
    [(_SBDisplayScaleMappingCache *)a2 cacheMapping:?];
  }

  hardwareIdentifierToMappings = self->_hardwareIdentifierToMappings;
  v8 = [v5 displayHardwareIdentifier];
  [(NSMutableDictionary *)hardwareIdentifierToMappings setObject:v5 forKey:v8];
}

- (void)displayMonitor:(id)a3 willDisconnectIdentity:(id)a4
{
  v8 = [a3 configurationForIdentity:a4];
  v5 = [v8 hardwareIdentifier];

  if (v5)
  {
    hardwareIdentifierToMappings = self->_hardwareIdentifierToMappings;
    v7 = [v8 hardwareIdentifier];
    [(NSMutableDictionary *)hardwareIdentifierToMappings removeObjectForKey:v7];
  }
}

- (void)cacheMapping:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayScaleMapping.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"[mapping displayHardwareIdentifier] != nil"}];
}

@end