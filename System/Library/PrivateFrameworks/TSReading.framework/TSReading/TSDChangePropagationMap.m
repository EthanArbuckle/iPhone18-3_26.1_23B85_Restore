@interface TSDChangePropagationMap
- (BOOL)hasAnyChangesForPrototypesOfClasses:(id)a3;
- (TSDChangePropagationMap)init;
- (id)prototypeChangeForPrototype:(id)a3;
- (id)prototypePassingTest:(id)a3;
- (void)dealloc;
- (void)p_addClassesForPrototype:(id)a3;
- (void)recordDeleteChangeForPrototype:(id)a3 replacement:(id)a4;
- (void)recordModifyChangeForPrototype:(id)a3 property:(int)a4 oldBoxedValue:(id)a5 newBoxedValue:(id)a6;
- (void)recordNewValueForModifyChangeForPrototype:(id)a3 property:(int)a4 newBoxedValue:(id)a5;
- (void)recordOldValueForModifyChangeForPrototype:(id)a3 property:(int)a4 oldBoxedValue:(id)a5;
- (void)recordReplacementChangeForPrototype:(id)a3 replacement:(id)a4;
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

- (void)recordReplacementChangeForPrototype:(id)a3 replacement:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordReplacementChangeForPrototype:replacement:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 44, @"invalid nil value for '%s'", "replacement"}];
    if (!a3)
    {
      return;
    }

    goto LABEL_7;
  }

  v7 = [MEMORY[0x277D6C290] currentHandler];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordReplacementChangeForPrototype:replacement:]"];
  [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 43, @"invalid nil value for '%s'", "prototype"}];
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a3)
  {
    return;
  }

LABEL_7:
  [(TSDChangePropagationMap *)self p_addClassesForPrototype:a3];
  v11 = [(TSUNoCopyDictionary *)self->mDictionary objectForKey:a3];
  if (v11)
  {
    v12 = v11;
    if (![v11 prototypeIsBeingReplaced] || (objc_msgSend(v12, "prototypeIsBeingDeleted") & 1) != 0 || objc_msgSend(v12, "replacement") != a4)
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordReplacementChangeForPrototype:replacement:]"];
      [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 53, @"already have a prototypeChange for %@; can't combine replacement changes with any other changes", a3}];
    }
  }

  else
  {
    v15 = [[TSDReplaceDeletePrototypeChange alloc] initReplacePrototypeChangeForPrototype:a3 toReplacement:a4];
    [(TSUNoCopyDictionary *)self->mDictionary setObject:v15 forUncopiedKey:a3];
  }
}

- (void)recordModifyChangeForPrototype:(id)a3 property:(int)a4 oldBoxedValue:(id)a5 newBoxedValue:(id)a6
{
  if (a3)
  {
    v7 = *&a4;
    [(TSDChangePropagationMap *)self recordOldValueForModifyChangeForPrototype:a3 property:*&a4 oldBoxedValue:a5];

    [(TSDChangePropagationMap *)self recordNewValueForModifyChangeForPrototype:a3 property:v7 newBoxedValue:a6];
  }

  else
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordModifyChangeForPrototype:property:oldBoxedValue:newBoxedValue:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 68, @"invalid nil value for '%s'", "prototype"}];
  }
}

- (void)recordOldValueForModifyChangeForPrototype:(id)a3 property:(int)a4 oldBoxedValue:(id)a5
{
  if (a3)
  {
    v6 = *&a4;
    [(TSDChangePropagationMap *)self p_addClassesForPrototype:?];
    v9 = [(TSUNoCopyDictionary *)self->mDictionary objectForKey:a3];
    if (v9)
    {
      v10 = v9;
      if (([v9 prototypeIsBeingModified] & 1) == 0)
      {
        v11 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordOldValueForModifyChangeForPrototype:property:oldBoxedValue:]"];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 100, @"can only combine modification changes"}];
      }
    }

    else
    {
      v10 = [[TSDModifyPrototypeChange alloc] initModifyPrototypeChangeForPrototype:a3];
      [(TSUNoCopyDictionary *)self->mDictionary setObject:v10 forUncopiedKey:a3];
    }

    if (([objc_msgSend(v10 "changedPropertySet")] & 1) == 0)
    {
      [objc_msgSend(v10 "changedPropertySet")];
      [objc_msgSend(v10 "i_propertiesWithOldValuesRecordedButNotNewValues")];
      if (a5)
      {
        v15 = [v10 changedPropertyMapBeforeChange];

        [v15 setBoxedObject:a5 forProperty:v6];
      }
    }
  }

  else
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordOldValueForModifyChangeForPrototype:property:oldBoxedValue:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 84, @"invalid nil value for '%s'", "prototype"}];
  }
}

- (void)recordNewValueForModifyChangeForPrototype:(id)a3 property:(int)a4 newBoxedValue:(id)a5
{
  if (a3)
  {
    v6 = *&a4;
    v7 = [(TSUNoCopyDictionary *)self->mDictionary objectForKey:?];
    v8 = v7;
    if (!v7 || ([objc_msgSend(v7 "changedPropertySet")] & 1) == 0)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordNewValueForModifyChangeForPrototype:property:newBoxedValue:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 125, @"must record an old value before recording a new value"}];
    }

    [objc_msgSend(v8 "i_propertiesWithOldValuesRecordedButNotNewValues")];
    if (a5)
    {
      v11 = [v8 changedPropertyMapAfterChange];

      [v11 setBoxedObject:a5 forProperty:v6];
    }
  }

  else
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordNewValueForModifyChangeForPrototype:property:newBoxedValue:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 117, @"invalid nil value for '%s'", "prototype"}];
  }
}

- (void)recordDeleteChangeForPrototype:(id)a3 replacement:(id)a4
{
  if (a3)
  {
    v7 = [(TSUNoCopyDictionary *)self->mDictionary objectForKey:?];
    if (v7)
    {
      v8 = v7;
      if (![v7 prototypeIsBeingDeleted] || objc_msgSend(v8, "replacement") != a4)
      {
        v9 = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordDeleteChangeForPrototype:replacement:]"];
        [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 144, @"already have a prototypeChange for %@; can't combine delete changes with any other changes", a3}];
      }
    }

    else
    {
      [(TSDChangePropagationMap *)self p_addClassesForPrototype:a3];
      v13 = [[TSDReplaceDeletePrototypeChange alloc] initDeletePrototypeChangeForPrototype:a3 replacement:a4];
      [(TSUNoCopyDictionary *)self->mDictionary setObject:v13 forUncopiedKey:a3];
    }
  }

  else
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap recordDeleteChangeForPrototype:replacement:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 136, @"invalid nil value for '%s'", "prototype"}];
  }
}

- (BOOL)hasAnyChangesForPrototypesOfClasses:(id)a3
{
  mClassesOfChangedPrototypes = self->mClassesOfChangedPrototypes;
  v4 = [MEMORY[0x277CBEB98] setWithArray:a3];

  return [(NSMutableSet *)mClassesOfChangedPrototypes intersectsSet:v4];
}

- (void)p_addClassesForPrototype:(id)a3
{
  for (i = objc_opt_class(); i != objc_opt_class(); i = [i superclass])
  {
    [(NSMutableSet *)self->mClassesOfChangedPrototypes addObject:i];
  }
}

- (id)prototypeChangeForPrototype:(id)a3
{
  v3 = [(TSUNoCopyDictionary *)self->mDictionary objectForKey:a3];
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    if ([objc_msgSend(v4 "i_propertiesWithOldValuesRecordedButNotNewValues")])
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDChangePropagationMap prototypeChangeForPrototype:]"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDChangePropagationMap.m"), 180, @"PrototypeChange for prototype %@ was accessed before new values were recorded for these properties with old values recorded: %@", objc_msgSend(v3, "prototype"), objc_msgSend(v5, "i_propertiesWithOldValuesRecordedButNotNewValues")}];
    }
  }

  return v3;
}

- (id)prototypePassingTest:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(TSUNoCopyDictionary *)self->mDictionary keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ((*(a3 + 2))(a3, v9))
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end