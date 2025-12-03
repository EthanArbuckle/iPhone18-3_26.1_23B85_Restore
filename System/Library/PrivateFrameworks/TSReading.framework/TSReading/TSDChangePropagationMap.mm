@interface TSDChangePropagationMap
- (BOOL)hasAnyChangesForPrototypesOfClasses:(id)classes;
- (TSDChangePropagationMap)init;
- (id)prototypeChangeForPrototype:(id)prototype;
- (id)prototypePassingTest:(id)test;
- (void)dealloc;
- (void)p_addClassesForPrototype:(id)prototype;
- (void)recordDeleteChangeForPrototype:(id)prototype replacement:(id)replacement;
- (void)recordModifyChangeForPrototype:(id)prototype property:(int)property oldBoxedValue:(id)value newBoxedValue:(id)boxedValue;
- (void)recordNewValueForModifyChangeForPrototype:(id)prototype property:(int)property newBoxedValue:(id)value;
- (void)recordOldValueForModifyChangeForPrototype:(id)prototype property:(int)property oldBoxedValue:(id)value;
- (void)recordReplacementChangeForPrototype:(id)prototype replacement:(id)replacement;
@end

@implementation TSDChangePropagationMap

- (TSDChangePropagationMap)init
{
  v4.receiver = self;
  v4.super_class = TSDChangePropagationMap;
  v2 = [(TSDChangePropagationMap *)&v4 init];
  if (v2)
  {
    v2->mDictionary = objc_alloc_init(MEMORY[0x277D6C320]);
    v2->mClassesOfChangedPrototypes = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDChangePropagationMap;
  [(TSDChangePropagationMap *)&v3 dealloc];
}

- (void)recordReplacementChangeForPrototype:(id)prototype replacement:(id)replacement
{
  if (prototype)
  {
    if (replacement)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordReplacementChangeForPrototype:replacement:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 44, @"invalid nil value for '%s'", "replacement"}];
    if (!prototype)
    {
      return;
    }

    goto LABEL_7;
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordReplacementChangeForPrototype:replacement:]"];
  [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 43, @"invalid nil value for '%s'", "prototype"}];
  if (!replacement)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!prototype)
  {
    return;
  }

LABEL_7:
  [(TSDChangePropagationMap *)self p_addClassesForPrototype:prototype];
  v11 = [(TSUNoCopyDictionary *)self->mDictionary objectForKey:prototype];
  if (v11)
  {
    v12 = v11;
    if (![v11 prototypeIsBeingReplaced] || (objc_msgSend(v12, "prototypeIsBeingDeleted") & 1) != 0 || objc_msgSend(v12, "replacement") != replacement)
    {
      currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordReplacementChangeForPrototype:replacement:]"];
      [currentHandler3 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 53, @"already have a prototypeChange for %@; can't combine replacement changes with any other changes", prototype}];
    }
  }

  else
  {
    v15 = [[TSDReplaceDeletePrototypeChange alloc] initReplacePrototypeChangeForPrototype:prototype toReplacement:replacement];
    [(TSUNoCopyDictionary *)self->mDictionary setObject:v15 forUncopiedKey:prototype];
  }
}

- (void)recordModifyChangeForPrototype:(id)prototype property:(int)property oldBoxedValue:(id)value newBoxedValue:(id)boxedValue
{
  if (prototype)
  {
    v7 = *&property;
    [(TSDChangePropagationMap *)self recordOldValueForModifyChangeForPrototype:prototype property:*&property oldBoxedValue:value];

    [(TSDChangePropagationMap *)self recordNewValueForModifyChangeForPrototype:prototype property:v7 newBoxedValue:boxedValue];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordModifyChangeForPrototype:property:oldBoxedValue:newBoxedValue:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 68, @"invalid nil value for '%s'", "prototype"}];
  }
}

- (void)recordOldValueForModifyChangeForPrototype:(id)prototype property:(int)property oldBoxedValue:(id)value
{
  if (prototype)
  {
    v6 = *&property;
    [(TSDChangePropagationMap *)self p_addClassesForPrototype:?];
    v9 = [(TSUNoCopyDictionary *)self->mDictionary objectForKey:prototype];
    if (v9)
    {
      v10 = v9;
      if (([v9 prototypeIsBeingModified] & 1) == 0)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordOldValueForModifyChangeForPrototype:property:oldBoxedValue:]"];
        [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 100, @"can only combine modification changes"}];
      }
    }

    else
    {
      v10 = [[TSDModifyPrototypeChange alloc] initModifyPrototypeChangeForPrototype:prototype];
      [(TSUNoCopyDictionary *)self->mDictionary setObject:v10 forUncopiedKey:prototype];
    }

    if (([objc_msgSend(v10 "changedPropertySet")] & 1) == 0)
    {
      [objc_msgSend(v10 "changedPropertySet")];
      [objc_msgSend(v10 "i_propertiesWithOldValuesRecordedButNotNewValues")];
      if (value)
      {
        changedPropertyMapBeforeChange = [v10 changedPropertyMapBeforeChange];

        [changedPropertyMapBeforeChange setBoxedObject:value forProperty:v6];
      }
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordOldValueForModifyChangeForPrototype:property:oldBoxedValue:]"];
    [currentHandler2 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 84, @"invalid nil value for '%s'", "prototype"}];
  }
}

- (void)recordNewValueForModifyChangeForPrototype:(id)prototype property:(int)property newBoxedValue:(id)value
{
  if (prototype)
  {
    v6 = *&property;
    v7 = [(TSUNoCopyDictionary *)self->mDictionary objectForKey:?];
    v8 = v7;
    if (!v7 || ([objc_msgSend(v7 "changedPropertySet")] & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordNewValueForModifyChangeForPrototype:property:newBoxedValue:]"];
      [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 125, @"must record an old value before recording a new value"}];
    }

    [objc_msgSend(v8 "i_propertiesWithOldValuesRecordedButNotNewValues")];
    if (value)
    {
      changedPropertyMapAfterChange = [v8 changedPropertyMapAfterChange];

      [changedPropertyMapAfterChange setBoxedObject:value forProperty:v6];
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordNewValueForModifyChangeForPrototype:property:newBoxedValue:]"];
    [currentHandler2 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 117, @"invalid nil value for '%s'", "prototype"}];
  }
}

- (void)recordDeleteChangeForPrototype:(id)prototype replacement:(id)replacement
{
  if (prototype)
  {
    v7 = [(TSUNoCopyDictionary *)self->mDictionary objectForKey:?];
    if (v7)
    {
      v8 = v7;
      if (![v7 prototypeIsBeingDeleted] || objc_msgSend(v8, "replacement") != replacement)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordDeleteChangeForPrototype:replacement:]"];
        [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 144, @"already have a prototypeChange for %@; can't combine delete changes with any other changes", prototype}];
      }
    }

    else
    {
      [(TSDChangePropagationMap *)self p_addClassesForPrototype:prototype];
      v13 = [[TSDReplaceDeletePrototypeChange alloc] initDeletePrototypeChangeForPrototype:prototype replacement:replacement];
      [(TSUNoCopyDictionary *)self->mDictionary setObject:v13 forUncopiedKey:prototype];
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordDeleteChangeForPrototype:replacement:]"];
    [currentHandler2 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 136, @"invalid nil value for '%s'", "prototype"}];
  }
}

- (BOOL)hasAnyChangesForPrototypesOfClasses:(id)classes
{
  mClassesOfChangedPrototypes = self->mClassesOfChangedPrototypes;
  v4 = [MEMORY[0x277CBEB98] setWithArray:classes];

  return [(NSMutableSet *)mClassesOfChangedPrototypes intersectsSet:v4];
}

- (void)p_addClassesForPrototype:(id)prototype
{
  for (i = objc_opt_class(); i != objc_opt_class(); i = [i superclass])
  {
    [(NSMutableSet *)self->mClassesOfChangedPrototypes addObject:i];
  }
}

- (id)prototypeChangeForPrototype:(id)prototype
{
  v3 = [(TSUNoCopyDictionary *)self->mDictionary objectForKey:prototype];
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    if ([objc_msgSend(v4 "i_propertiesWithOldValuesRecordedButNotNewValues")])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap prototypeChangeForPrototype:]"];
      [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 180, @"PrototypeChange for prototype %@ was accessed before new values were recorded for these properties with old values recorded: %@", objc_msgSend(v3, "prototype"), objc_msgSend(v5, "i_propertiesWithOldValuesRecordedButNotNewValues")}];
    }
  }

  return v3;
}

- (id)prototypePassingTest:(id)test
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  keyEnumerator = [(TSUNoCopyDictionary *)self->mDictionary keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(keyEnumerator);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ((*(test + 2))(test, v9))
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end