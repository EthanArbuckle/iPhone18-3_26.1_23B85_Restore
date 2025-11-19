@interface TSSTheme
+ (TSSTheme)themeWithContext:(id)a3 alternate:(int)a4;
+ (id)presetBootstrapOrder;
+ (id)presetSources;
+ (void)registerPresetSourceClass:(Class)a3;
+ (void)registerPresetSourceClasses;
- (BOOL)containsCGColor:(CGColor *)a3;
- (BOOL)isEqual:(id)a3;
- (TSSTheme)initWithContext:(id)a3;
- (id)childEnumerator;
- (id)modelPathComponentForChild:(id)a3;
- (id)presetOfKind:(id)a3 index:(unint64_t)a4;
- (id)presetsOfKind:(id)a3;
- (unint64_t)indexOfPreset:(id)a3;
- (void)addPreset:(id)a3 ofKind:(id)a4;
- (void)bootstrapThemeAlternate:(int)a3;
- (void)checkThemeStylesheetConsistency;
- (void)dealloc;
- (void)insertPreset:(id)a3 ofKind:(id)a4 atIndex:(unint64_t)a5;
- (void)movePresetOfKind:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5;
- (void)removePreset:(id)a3;
- (void)setPresets:(id)a3 ofKind:(id)a4;
@end

@implementation TSSTheme

+ (TSSTheme)themeWithContext:(id)a3 alternate:(int)a4
{
  v4 = *&a4;
  v5 = [[a1 alloc] initWithContext:a3];
  [v5 bootstrapThemeAlternate:v4];

  return v5;
}

- (TSSTheme)initWithContext:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSSTheme;
  v4 = [(TSPObject *)&v7 initWithContext:?];
  if (v4)
  {
    v5 = [[TSSStylesheet alloc] initWithContext:a3];
    v4->mStylesheet = v5;
    [(TSSStylesheet *)v5 setIsLocked:1];
    v4->mPresetsByKind = objc_opt_new();
    [(TSSTheme *)v4 disablePresetValidation];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSSTheme;
  [(TSSTheme *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    if (v4)
    {
      v5 = v4;
      if ([v4 stylesheet] == self->mStylesheet || (LODWORD(v4) = objc_msgSend(objc_msgSend(v5, "stylesheet"), "isEqual:", self->mStylesheet), v4))
      {
        mPresetsByKind = self->mPresetsByKind;
        v7 = v5[8];

        LOBYTE(v4) = [(NSMutableDictionary *)mPresetsByKind isEqual:v7];
      }
    }
  }

  return v4;
}

+ (id)presetSources
{
  if (presetSources_onceToken != -1)
  {
    +[TSSTheme presetSources];
  }

  return presetSources_presetSources;
}

uint64_t __25__TSSTheme_presetSources__block_invoke()
{
  result = objc_opt_new();
  presetSources_presetSources = result;
  return result;
}

+ (void)registerPresetSourceClasses
{
  v3 = objc_opt_class();

  [a1 registerPresetSourceClass:v3];
}

+ (void)registerPresetSourceClass:(Class)a3
{
  v5 = [(objc_class *)a3 presetKinds];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__TSSTheme_registerPresetSourceClass___block_invoke;
  v6[3] = &unk_279D480A8;
  v6[4] = a1;
  v6[5] = a3;
  [v5 enumerateObjectsUsingBlock:v6];
}

uint64_t __38__TSSTheme_registerPresetSourceClass___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) presetSources];

  return [v4 setObject:v3 forKeyedSubscript:a2];
}

- (id)presetsOfKind:(id)a3
{
  if (a3)
  {
    return [(NSMutableDictionary *)self->mPresetsByKind objectForKeyedSubscript:?];
  }

  else
  {
    return 0;
  }
}

- (void)setPresets:(id)a3 ofKind:(id)a4
{
  if (!a4)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSTheme setPresets:ofKind:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSTheme.m"), 210, @"invalid nil value for '%s'", "kind"}];
  }

  [(TSPObject *)self willModify];
  if (a3 && [a3 count])
  {
    v9 = [a3 mutableCopy];
    mPresetsByKind = self->mPresetsByKind;

    [(NSMutableDictionary *)mPresetsByKind setObject:v9 forKeyedSubscript:a4];
  }

  else
  {
    v11 = self->mPresetsByKind;

    [(NSMutableDictionary *)v11 removeObjectForKey:a4];
  }
}

- (void)addPreset:(id)a3 ofKind:(id)a4
{
  v7 = [(NSMutableDictionary *)self->mPresetsByKind objectForKeyedSubscript:a4];
  if (!v7 || ([v7 containsObject:a3] & 1) == 0)
  {

    [(TSSTheme *)self insertPreset:a3 ofKind:a4 atIndex:-1];
  }
}

- (void)insertPreset:(id)a3 ofKind:(id)a4 atIndex:(unint64_t)a5
{
  [(TSPObject *)self willModify];
  v9 = [(NSMutableDictionary *)self->mPresetsByKind objectForKeyedSubscript:a4];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    [(NSMutableDictionary *)self->mPresetsByKind setObject:v9 forKeyedSubscript:a4];
  }

  if (a5 == -1 || [v9 count] <= a5)
  {

    [v9 addObject:a3];
  }

  else
  {

    [v9 insertObject:a3 atIndex:a5];
  }
}

- (void)removePreset:(id)a3
{
  if (a3)
  {
    v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->mPresetsByKind, "objectForKeyedSubscript:", [a3 presetKind]);
    if (v5)
    {
      v6 = v5;
      [(TSPObject *)self willModify];

      [v6 removeObject:a3];
    }
  }
}

- (void)movePresetOfKind:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5
{
  v9 = [-[TSSTheme presetsOfKind:](self "presetsOfKind:"mutableCopy"")];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v11 = v9;
  if ([v9 count] > a4 && objc_msgSend(v11, "count") > a5)
  {
    v10 = [(TSSTheme *)self presetOfKind:a3 index:a4];
    [v11 removeObject:v10];
    [v11 insertObject:v10 atIndex:a5];
    [(TSSTheme *)self setPresets:v11 ofKind:a3];
  }
}

- (id)presetOfKind:(id)a3 index:(unint64_t)a4
{
  v6 = [(TSSTheme *)self presetsOfKind:?];
  if ([v6 count] <= a4)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSTheme presetOfKind:index:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSTheme.m"), 303, @"Attempt to request %@ preset for out of bounds index %lu.", a3, a4}];
    return 0;
  }

  else
  {

    return [v6 objectAtIndexedSubscript:a4];
  }
}

- (unint64_t)indexOfPreset:(id)a3
{
  v5 = [a3 presetKind];
  if (v5 == String)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(NSMutableDictionary *)self->mPresetsByKind objectForKeyedSubscript:v5];
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6;
  if (![v6 count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v7 indexOfObjectIdenticalTo:a3];
}

- (BOOL)containsCGColor:(CGColor *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(TSSTheme *)self colors];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (CGColorEqualToColor(a3, [*(*(&v10 + 1) + 8 * v8) CGColor]))
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (id)childEnumerator
{
  v3 = objc_opt_new();
  mPresetsByKind = self->mPresetsByKind;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__TSSTheme_childEnumerator__block_invoke;
  v6[3] = &unk_279D480D0;
  v6[4] = v3;
  [(NSMutableDictionary *)mPresetsByKind enumerateKeysAndObjectsUsingBlock:v6];
  return v3;
}

uint64_t __27__TSSTheme_childEnumerator__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  if (result)
  {
    result = [objc_msgSend(a3 objectAtIndexedSubscript:{0), "conformsToProtocol:", &unk_287DE7978}];
    if (result)
    {
      v6 = *(a1 + 32);
      v7 = [a3 objectEnumerator];

      return [v6 addObject:v7];
    }
  }

  return result;
}

- (id)modelPathComponentForChild:(id)a3
{
  objc_opt_class();
  v5 = TSUClassAndProtocolCast();
  if (v5)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lu", String(objc_msgSend(v5, "presetKind", &unk_287E2B800)), -[TSSTheme indexOfPreset:](self, "indexOfPreset:", v5)];
  }

  else
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"?%s-%p?", object_getClassName(a3), a3];
  }
}

+ (id)presetBootstrapOrder
{
  v3[13] = *MEMORY[0x277D85DE8];
  v3[0] = String;
  v3[1] = String;
  v3[2] = String;
  v3[3] = String;
  v3[4] = String;
  v3[5] = String;
  v3[6] = String;
  v3[7] = String;
  v3[8] = String;
  v3[9] = String;
  v3[10] = String;
  v3[11] = String;
  v3[12] = String;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:13];
}

- (void)bootstrapThemeAlternate:(int)a3
{
  v3 = *&a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(TSSTheme *)self isLocked];
  [(TSSTheme *)self setIsLocked:0];
  if (([(TSSTheme *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [objc_opt_class() presetBootstrapOrder];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [objc_msgSend(objc_msgSend(objc_opt_class() "presetSources")];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  [(TSSTheme *)self setThemeIdentifier:[(TSSTheme *)self p_identifierForBootstrapTheme:v3]];
  [(TSSTheme *)self setIsLocked:v5];
}

- (void)checkThemeStylesheetConsistency
{
  v3 = [[TSKDocumentModelEnumerator alloc] initWithRootModelObject:self filter:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__TSSTheme_checkThemeStylesheetConsistency__block_invoke;
  v4[3] = &unk_279D48130;
  v4[4] = self;
  [(TSKDocumentModelEnumerator *)v3 enumerateReferencedStylesUsingBlock:v4];
}

uint64_t __43__TSSTheme_checkThemeStylesheetConsistency__block_invoke(uint64_t a1, void *a2)
{
  if (![objc_msgSend(*(a1 + 32) "stylesheet")] || (v4 = objc_msgSend(a2, "stylesheet"), result = objc_msgSend(*(a1 + 32), "stylesheet"), v4 != result))
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSTheme checkThemeStylesheetConsistency]_block_invoke"];
    return [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSTheme.m"), 440, @"theme content refers to a style %@ not in the theme stylesheet", a2}];
  }

  return result;
}

@end