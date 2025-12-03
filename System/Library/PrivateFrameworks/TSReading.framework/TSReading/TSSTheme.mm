@interface TSSTheme
+ (TSSTheme)themeWithContext:(id)context alternate:(int)alternate;
+ (id)presetBootstrapOrder;
+ (id)presetSources;
+ (void)registerPresetSourceClass:(Class)class;
+ (void)registerPresetSourceClasses;
- (BOOL)containsCGColor:(CGColor *)color;
- (BOOL)isEqual:(id)equal;
- (TSSTheme)initWithContext:(id)context;
- (id)childEnumerator;
- (id)modelPathComponentForChild:(id)child;
- (id)presetOfKind:(id)kind index:(unint64_t)index;
- (id)presetsOfKind:(id)kind;
- (unint64_t)indexOfPreset:(id)preset;
- (void)addPreset:(id)preset ofKind:(id)kind;
- (void)bootstrapThemeAlternate:(int)alternate;
- (void)checkThemeStylesheetConsistency;
- (void)dealloc;
- (void)insertPreset:(id)preset ofKind:(id)kind atIndex:(unint64_t)index;
- (void)movePresetOfKind:(id)kind fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)removePreset:(id)preset;
- (void)setPresets:(id)presets ofKind:(id)kind;
@end

@implementation TSSTheme

+ (TSSTheme)themeWithContext:(id)context alternate:(int)alternate
{
  v4 = *&alternate;
  v5 = [[self alloc] initWithContext:context];
  [v5 bootstrapThemeAlternate:v4];

  return v5;
}

- (TSSTheme)initWithContext:(id)context
{
  v7.receiver = self;
  v7.super_class = TSSTheme;
  v4 = [(TSPObject *)&v7 initWithContext:?];
  if (v4)
  {
    v5 = [[TSSStylesheet alloc] initWithContext:context];
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
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

  [self registerPresetSourceClass:v3];
}

+ (void)registerPresetSourceClass:(Class)class
{
  presetKinds = [(objc_class *)class presetKinds];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__TSSTheme_registerPresetSourceClass___block_invoke;
  v6[3] = &unk_279D480A8;
  v6[4] = self;
  v6[5] = class;
  [presetKinds enumerateObjectsUsingBlock:v6];
}

uint64_t __38__TSSTheme_registerPresetSourceClass___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) presetSources];

  return [v4 setObject:v3 forKeyedSubscript:a2];
}

- (id)presetsOfKind:(id)kind
{
  if (kind)
  {
    return [(NSMutableDictionary *)self->mPresetsByKind objectForKeyedSubscript:?];
  }

  else
  {
    return 0;
  }
}

- (void)setPresets:(id)presets ofKind:(id)kind
{
  if (!kind)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSTheme setPresets:ofKind:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSTheme.m"), 210, @"invalid nil value for '%s'", "kind"}];
  }

  [(TSPObject *)self willModify];
  if (presets && [presets count])
  {
    v9 = [presets mutableCopy];
    mPresetsByKind = self->mPresetsByKind;

    [(NSMutableDictionary *)mPresetsByKind setObject:v9 forKeyedSubscript:kind];
  }

  else
  {
    v11 = self->mPresetsByKind;

    [(NSMutableDictionary *)v11 removeObjectForKey:kind];
  }
}

- (void)addPreset:(id)preset ofKind:(id)kind
{
  v7 = [(NSMutableDictionary *)self->mPresetsByKind objectForKeyedSubscript:kind];
  if (!v7 || ([v7 containsObject:preset] & 1) == 0)
  {

    [(TSSTheme *)self insertPreset:preset ofKind:kind atIndex:-1];
  }
}

- (void)insertPreset:(id)preset ofKind:(id)kind atIndex:(unint64_t)index
{
  [(TSPObject *)self willModify];
  array = [(NSMutableDictionary *)self->mPresetsByKind objectForKeyedSubscript:kind];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(NSMutableDictionary *)self->mPresetsByKind setObject:array forKeyedSubscript:kind];
  }

  if (index == -1 || [array count] <= index)
  {

    [array addObject:preset];
  }

  else
  {

    [array insertObject:preset atIndex:index];
  }
}

- (void)removePreset:(id)preset
{
  if (preset)
  {
    v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->mPresetsByKind, "objectForKeyedSubscript:", [preset presetKind]);
    if (v5)
    {
      v6 = v5;
      [(TSPObject *)self willModify];

      [v6 removeObject:preset];
    }
  }
}

- (void)movePresetOfKind:(id)kind fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  v9 = [-[TSSTheme presetsOfKind:](self "presetsOfKind:"mutableCopy"")];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v11 = v9;
  if ([v9 count] > index && objc_msgSend(v11, "count") > toIndex)
  {
    v10 = [(TSSTheme *)self presetOfKind:kind index:index];
    [v11 removeObject:v10];
    [v11 insertObject:v10 atIndex:toIndex];
    [(TSSTheme *)self setPresets:v11 ofKind:kind];
  }
}

- (id)presetOfKind:(id)kind index:(unint64_t)index
{
  v6 = [(TSSTheme *)self presetsOfKind:?];
  if ([v6 count] <= index)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSTheme presetOfKind:index:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSTheme.m"), 303, @"Attempt to request %@ preset for out of bounds index %lu.", kind, index}];
    return 0;
  }

  else
  {

    return [v6 objectAtIndexedSubscript:index];
  }
}

- (unint64_t)indexOfPreset:(id)preset
{
  presetKind = [preset presetKind];
  if (presetKind == String)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(NSMutableDictionary *)self->mPresetsByKind objectForKeyedSubscript:presetKind];
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6;
  if (![v6 count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v7 indexOfObjectIdenticalTo:preset];
}

- (BOOL)containsCGColor:(CGColor *)color
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  colors = [(TSSTheme *)self colors];
  v5 = [colors countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(colors);
        }

        if (CGColorEqualToColor(color, [*(*(&v10 + 1) + 8 * v8) CGColor]))
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [colors countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)modelPathComponentForChild:(id)child
{
  objc_opt_class();
  v5 = TSUClassAndProtocolCast();
  if (v5)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lu", String(objc_msgSend(v5, "presetKind", &unk_287E2B800)), -[TSSTheme indexOfPreset:](self, "indexOfPreset:", v5)];
  }

  else
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"?%s-%p?", object_getClassName(child), child];
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

- (void)bootstrapThemeAlternate:(int)alternate
{
  v3 = *&alternate;
  v16 = *MEMORY[0x277D85DE8];
  isLocked = [(TSSTheme *)self isLocked];
  [(TSSTheme *)self setIsLocked:0];
  if (([(TSSTheme *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    presetBootstrapOrder = [objc_opt_class() presetBootstrapOrder];
    v7 = [presetBootstrapOrder countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(presetBootstrapOrder);
          }

          [objc_msgSend(objc_msgSend(objc_opt_class() "presetSources")];
          ++v10;
        }

        while (v8 != v10);
        v8 = [presetBootstrapOrder countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  [(TSSTheme *)self setThemeIdentifier:[(TSSTheme *)self p_identifierForBootstrapTheme:v3]];
  [(TSSTheme *)self setIsLocked:isLocked];
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