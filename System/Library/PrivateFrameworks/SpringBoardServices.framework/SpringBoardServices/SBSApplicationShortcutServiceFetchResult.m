@interface SBSApplicationShortcutServiceFetchResult
- (BOOL)isEqual:(id)a3;
- (SBSApplicationShortcutServiceFetchResult)init;
- (SBSApplicationShortcutServiceFetchResult)initWithStaticApplicationShortcutItems:(id)a3 dynamicApplicationShortcutItems:(id)a4 composedApplicationShortcutItems:(id)a5;
- (SBSApplicationShortcutServiceFetchResult)initWithXPCDictionary:(id)a3;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBSApplicationShortcutServiceFetchResult

- (SBSApplicationShortcutServiceFetchResult)initWithStaticApplicationShortcutItems:(id)a3 dynamicApplicationShortcutItems:(id)a4 composedApplicationShortcutItems:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SBSApplicationShortcutServiceFetchResult;
  v11 = [(SBSApplicationShortcutServiceFetchResult *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    staticApplicationShortcutItems = v11->_staticApplicationShortcutItems;
    v11->_staticApplicationShortcutItems = v12;

    v14 = [v9 copy];
    dynamicApplicationShortcutItems = v11->_dynamicApplicationShortcutItems;
    v11->_dynamicApplicationShortcutItems = v14;

    v16 = [v10 copy];
    composedApplicationShortcutItems = v11->_composedApplicationShortcutItems;
    v11->_composedApplicationShortcutItems = v16;
  }

  return v11;
}

- (SBSApplicationShortcutServiceFetchResult)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"%s may only be called from SpringBoard.app.", "-[SBSApplicationShortcutServiceFetchResult init]"}];

  return [(SBSApplicationShortcutServiceFetchResult *)self initWithStaticApplicationShortcutItems:0 dynamicApplicationShortcutItems:0 composedApplicationShortcutItems:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
    v6 = [(SBSApplicationShortcutServiceFetchResult *)self staticApplicationShortcutItems];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__SBSApplicationShortcutServiceFetchResult_isEqual___block_invoke;
    v20[3] = &unk_1E735F310;
    v7 = v4;
    v21 = v7;
    v8 = [v5 appendObject:v6 counterpart:v20];

    v9 = [(SBSApplicationShortcutServiceFetchResult *)self dynamicApplicationShortcutItems];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__SBSApplicationShortcutServiceFetchResult_isEqual___block_invoke_2;
    v18[3] = &unk_1E735F310;
    v10 = v7;
    v19 = v10;
    v11 = [v5 appendObject:v9 counterpart:v18];

    v12 = [(SBSApplicationShortcutServiceFetchResult *)self composedApplicationShortcutItems];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__SBSApplicationShortcutServiceFetchResult_isEqual___block_invoke_3;
    v16[3] = &unk_1E735F310;
    v17 = v10;
    v13 = [v5 appendObject:v12 counterpart:v16];

    v14 = [v5 isEqual];
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(SBSApplicationShortcutServiceFetchResult *)self staticApplicationShortcutItems];
  v5 = [v3 appendObject:v4];

  v6 = [(SBSApplicationShortcutServiceFetchResult *)self dynamicApplicationShortcutItems];
  v7 = [v3 appendObject:v6];

  v8 = [(SBSApplicationShortcutServiceFetchResult *)self composedApplicationShortcutItems];
  v9 = [v3 appendObject:v8];

  v10 = [v3 hash];
  return v10;
}

- (SBSApplicationShortcutServiceFetchResult)initWithXPCDictionary:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
    v6 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
    v7 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();

    self = [(SBSApplicationShortcutServiceFetchResult *)self initWithStaticApplicationShortcutItems:v5 dynamicApplicationShortcutItems:v6 composedApplicationShortcutItems:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SBSApplicationShortcutServiceFetchResult *)self staticApplicationShortcutItems];
    BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();

    v6 = [(SBSApplicationShortcutServiceFetchResult *)self dynamicApplicationShortcutItems];
    BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();

    v7 = [(SBSApplicationShortcutServiceFetchResult *)self composedApplicationShortcutItems];
    BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();
  }
}

@end