@interface SBSApplicationShortcutServiceFetchResult
- (BOOL)isEqual:(id)equal;
- (SBSApplicationShortcutServiceFetchResult)init;
- (SBSApplicationShortcutServiceFetchResult)initWithStaticApplicationShortcutItems:(id)items dynamicApplicationShortcutItems:(id)shortcutItems composedApplicationShortcutItems:(id)applicationShortcutItems;
- (SBSApplicationShortcutServiceFetchResult)initWithXPCDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSApplicationShortcutServiceFetchResult

- (SBSApplicationShortcutServiceFetchResult)initWithStaticApplicationShortcutItems:(id)items dynamicApplicationShortcutItems:(id)shortcutItems composedApplicationShortcutItems:(id)applicationShortcutItems
{
  itemsCopy = items;
  shortcutItemsCopy = shortcutItems;
  applicationShortcutItemsCopy = applicationShortcutItems;
  v19.receiver = self;
  v19.super_class = SBSApplicationShortcutServiceFetchResult;
  v11 = [(SBSApplicationShortcutServiceFetchResult *)&v19 init];
  if (v11)
  {
    v12 = [itemsCopy copy];
    staticApplicationShortcutItems = v11->_staticApplicationShortcutItems;
    v11->_staticApplicationShortcutItems = v12;

    v14 = [shortcutItemsCopy copy];
    dynamicApplicationShortcutItems = v11->_dynamicApplicationShortcutItems;
    v11->_dynamicApplicationShortcutItems = v14;

    v16 = [applicationShortcutItemsCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    staticApplicationShortcutItems = [(SBSApplicationShortcutServiceFetchResult *)self staticApplicationShortcutItems];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__SBSApplicationShortcutServiceFetchResult_isEqual___block_invoke;
    v20[3] = &unk_1E735F310;
    v7 = equalCopy;
    v21 = v7;
    v8 = [v5 appendObject:staticApplicationShortcutItems counterpart:v20];

    dynamicApplicationShortcutItems = [(SBSApplicationShortcutServiceFetchResult *)self dynamicApplicationShortcutItems];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__SBSApplicationShortcutServiceFetchResult_isEqual___block_invoke_2;
    v18[3] = &unk_1E735F310;
    v10 = v7;
    v19 = v10;
    v11 = [v5 appendObject:dynamicApplicationShortcutItems counterpart:v18];

    composedApplicationShortcutItems = [(SBSApplicationShortcutServiceFetchResult *)self composedApplicationShortcutItems];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__SBSApplicationShortcutServiceFetchResult_isEqual___block_invoke_3;
    v16[3] = &unk_1E735F310;
    v17 = v10;
    v13 = [v5 appendObject:composedApplicationShortcutItems counterpart:v16];

    v14 = [v5 isEqual];
  }

  return v14;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  staticApplicationShortcutItems = [(SBSApplicationShortcutServiceFetchResult *)self staticApplicationShortcutItems];
  v5 = [builder appendObject:staticApplicationShortcutItems];

  dynamicApplicationShortcutItems = [(SBSApplicationShortcutServiceFetchResult *)self dynamicApplicationShortcutItems];
  v7 = [builder appendObject:dynamicApplicationShortcutItems];

  composedApplicationShortcutItems = [(SBSApplicationShortcutServiceFetchResult *)self composedApplicationShortcutItems];
  v9 = [builder appendObject:composedApplicationShortcutItems];

  v10 = [builder hash];
  return v10;
}

- (SBSApplicationShortcutServiceFetchResult)initWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v5 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
    v6 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
    v7 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();

    self = [(SBSApplicationShortcutServiceFetchResult *)self initWithStaticApplicationShortcutItems:v5 dynamicApplicationShortcutItems:v6 composedApplicationShortcutItems:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    staticApplicationShortcutItems = [(SBSApplicationShortcutServiceFetchResult *)self staticApplicationShortcutItems];
    BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();

    dynamicApplicationShortcutItems = [(SBSApplicationShortcutServiceFetchResult *)self dynamicApplicationShortcutItems];
    BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();

    composedApplicationShortcutItems = [(SBSApplicationShortcutServiceFetchResult *)self composedApplicationShortcutItems];
    BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();
  }
}

@end