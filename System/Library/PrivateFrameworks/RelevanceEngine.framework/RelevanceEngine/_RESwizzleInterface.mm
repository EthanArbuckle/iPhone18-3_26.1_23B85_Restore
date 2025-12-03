@interface _RESwizzleInterface
+ (id)_configuredObjects;
- (void)_re_runAfterEngineIsLoaded:(id)loaded;
- (void)_re_swizzled_availableRelevanceEngines:(id)engines;
- (void)_re_swizzled_fetchAllElementIdentifiersInRelevanceEngine:(id)engine completion:(id)completion;
- (void)_re_swizzled_fetchAllElementsInRelevanceEngine:(id)engine completion:(id)completion;
- (void)_re_swizzled_gatherDiagnosticLogsForRelevanceEngine:(id)engine completion:(id)completion;
- (void)_re_swizzled_relevanceEngine:(id)engine createElementFromDescription:(id)description completion:(id)completion;
- (void)_re_swizzled_relevanceEngine:(id)engine encodedObjectAtPath:(id)path completion:(id)completion;
- (void)_re_swizzled_relevanceEngine:(id)engine performCommand:(id)command withOptions:(id)options completion:(id)completion;
- (void)_re_swizzled_relevanceEngine:(id)engine runActionOfElementWithDescription1:(id)description1 completion:(id)completion;
@end

@implementation _RESwizzleInterface

+ (id)_configuredObjects
{
  if (_configuredObjects_onceToken != -1)
  {
    +[_RESwizzleInterface _configuredObjects];
  }

  v3 = _configuredObjects_ConfiguredObjects;

  return v3;
}

- (void)_re_runAfterEngineIsLoaded:(id)loaded
{
  loadedCopy = loaded;
  os_unfair_lock_lock(&_re_runAfterEngineIsLoaded__ConfigurationLock);
  _configuredObjects = [objc_opt_class() _configuredObjects];
  v6 = [_configuredObjects containsObject:self];

  os_unfair_lock_unlock(&_re_runAfterEngineIsLoaded__ConfigurationLock);
  if (v6)
  {
    loadedCopy[2](loadedCopy);
  }

  else
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __50___RESwizzleInterface__re_runAfterEngineIsLoaded___block_invoke;
    v11 = &unk_2785F9A40;
    selfCopy = self;
    v13 = loadedCopy;
    v7 = MEMORY[0x22AABC5E0](&v8);
    if (objc_opt_respondsToSelector())
    {
      [(_RESwizzleInterface *)self prepareRelevanceEngineWithCompletion:v7, v8, v9, v10, v11, selfCopy];
    }

    else
    {
      v7[2](v7);
    }
  }
}

- (void)_re_swizzled_relevanceEngine:(id)engine createElementFromDescription:(id)description completion:(id)completion
{
  engineCopy = engine;
  descriptionCopy = description;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __92___RESwizzleInterface__re_swizzled_relevanceEngine_createElementFromDescription_completion___block_invoke;
  v14[3] = &unk_2785F99C8;
  v15 = engineCopy;
  v16 = descriptionCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = descriptionCopy;
  v13 = engineCopy;
  [(_RESwizzleInterface *)self _re_runAfterEngineIsLoaded:v14];
}

- (void)_re_swizzled_relevanceEngine:(id)engine performCommand:(id)command withOptions:(id)options completion:(id)completion
{
  engineCopy = engine;
  commandCopy = command;
  optionsCopy = options;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90___RESwizzleInterface__re_swizzled_relevanceEngine_performCommand_withOptions_completion___block_invoke;
  v18[3] = &unk_2785FB0C0;
  v19 = engineCopy;
  v20 = commandCopy;
  v21 = optionsCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = optionsCopy;
  v16 = commandCopy;
  v17 = engineCopy;
  [(_RESwizzleInterface *)self _re_runAfterEngineIsLoaded:v18];
}

- (void)_re_swizzled_availableRelevanceEngines:(id)engines
{
  enginesCopy = engines;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62___RESwizzleInterface__re_swizzled_availableRelevanceEngines___block_invoke;
  v6[3] = &unk_2785FA040;
  v7 = enginesCopy;
  v5 = enginesCopy;
  [(_RESwizzleInterface *)self _re_runAfterEngineIsLoaded:v6];
}

- (void)_re_swizzled_fetchAllElementIdentifiersInRelevanceEngine:(id)engine completion:(id)completion
{
  engineCopy = engine;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91___RESwizzleInterface__re_swizzled_fetchAllElementIdentifiersInRelevanceEngine_completion___block_invoke;
  v10[3] = &unk_2785F9A40;
  v11 = engineCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = engineCopy;
  [(_RESwizzleInterface *)self _re_runAfterEngineIsLoaded:v10];
}

- (void)_re_swizzled_fetchAllElementsInRelevanceEngine:(id)engine completion:(id)completion
{
  engineCopy = engine;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81___RESwizzleInterface__re_swizzled_fetchAllElementsInRelevanceEngine_completion___block_invoke;
  v10[3] = &unk_2785F9A40;
  v11 = engineCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = engineCopy;
  [(_RESwizzleInterface *)self _re_runAfterEngineIsLoaded:v10];
}

- (void)_re_swizzled_gatherDiagnosticLogsForRelevanceEngine:(id)engine completion:(id)completion
{
  engineCopy = engine;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86___RESwizzleInterface__re_swizzled_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke;
  v10[3] = &unk_2785F9A40;
  v11 = engineCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = engineCopy;
  [(_RESwizzleInterface *)self _re_runAfterEngineIsLoaded:v10];
}

- (void)_re_swizzled_relevanceEngine:(id)engine runActionOfElementWithDescription1:(id)description1 completion:(id)completion
{
  engineCopy = engine;
  description1Copy = description1;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98___RESwizzleInterface__re_swizzled_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke;
  v14[3] = &unk_2785F99C8;
  v15 = engineCopy;
  v16 = description1Copy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = description1Copy;
  v13 = engineCopy;
  [(_RESwizzleInterface *)self _re_runAfterEngineIsLoaded:v14];
}

- (void)_re_swizzled_relevanceEngine:(id)engine encodedObjectAtPath:(id)path completion:(id)completion
{
  engineCopy = engine;
  pathCopy = path;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83___RESwizzleInterface__re_swizzled_relevanceEngine_encodedObjectAtPath_completion___block_invoke;
  v14[3] = &unk_2785F99C8;
  v15 = engineCopy;
  v16 = pathCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = pathCopy;
  v13 = engineCopy;
  [(_RESwizzleInterface *)self _re_runAfterEngineIsLoaded:v14];
}

@end