@interface SBHIconGridSizeClassIconImageInfoMap
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)hasIconImageInfoForGridSizeClass:(id)class;
- (BOOL)isEqual:(id)equal;
- (CGSize)extraIconImageSizeForGridSizeClass:(id)class gridSizeClassSizes:(id)sizes iconSpacing:(CGSize)spacing;
- (CGSize)extraIconImageSizeForGridSizeClassSizes:(id)sizes iconSpacing:(CGSize)spacing;
- (CGSize)extraIconImageSizeForGridSizeClassSizes:(id)sizes iconSpacing:(CGSize)spacing inDomain:(id)domain;
- (NSString)description;
- (SBHIconGridSizeClassIconImageInfoMap)initWithGridSizeClassesAndIconImageInfos:(id)infos;
- (SBHIconGridSizeClassIconImageInfoMap)initWithIconGridSizeClassIconImageInfoMap:(id)map;
- (SBHIconGridSizeClassIconImageInfoMap)initWithIconImageInfo:(SBIconImageInfo *)info forGridSizeClass:(id)class;
- (SBHIconGridSizeClassIconImageInfoMap)initWithIconImageInfos:(id)infos;
- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)class;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)enumerateIconImageInfosUsingBlock:(id)block;
@end

@implementation SBHIconGridSizeClassIconImageInfoMap

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {

    return [(SBHIconGridSizeClassIconImageInfoMap *)SBHImmutableIconGridSizeClassIconImageInfoMap allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SBHIconGridSizeClassIconImageInfoMap;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (SBHIconGridSizeClassIconImageInfoMap)initWithIconImageInfo:(SBIconImageInfo *)info forGridSizeClass:(id)class
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v20[1] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E696B098];
  infoCopy = info;
  v15 = [v13 sbh_valueWithSBIconImageInfo:{v11, v10, v9, v8}];
  v19 = infoCopy;
  v20[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v17 = [(SBHIconGridSizeClassIconImageInfoMap *)self initWithIconImageInfos:v16];
  return v17;
}

- (SBHIconGridSizeClassIconImageInfoMap)initWithGridSizeClassesAndIconImageInfos:(id)infos
{
  infosCopy = infos;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = &v12;
  if (infosCopy)
  {
    do
    {
      v6 = [MEMORY[0x1E696B098] sbh_valueWithSBIconImageInfo:{*v11, v11[1], v11[2], v11[3]}];
      [v5 setObject:v6 forKey:infosCopy];
      v7 = (v11 + 4);
      v11 += 5;
      v8 = *v7;

      infosCopy = v8;
    }

    while (v8);
  }

  v9 = [(SBHIconGridSizeClassIconImageInfoMap *)self initWithIconImageInfos:v5];

  return v9;
}

- (SBHIconGridSizeClassIconImageInfoMap)initWithIconImageInfos:(id)infos
{
  v4.receiver = self;
  v4.super_class = SBHIconGridSizeClassIconImageInfoMap;
  return [(SBHIconGridSizeClassIconImageInfoMap *)&v4 init];
}

- (SBHIconGridSizeClassIconImageInfoMap)initWithIconGridSizeClassIconImageInfoMap:(id)map
{
  _iconImageInfos = [map _iconImageInfos];
  v5 = [(SBHIconGridSizeClassIconImageInfoMap *)self initWithIconImageInfos:_iconImageInfos];

  return v5;
}

- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)class
{
  v5 = a4;
  _iconImageInfos = [(SBHIconGridSizeClassIconImageInfoMap *)self _iconImageInfos];
  v7 = [_iconImageInfos objectForKey:v5];

  if (v7)
  {
    [v7 sbh_SBIconImageInfoValue];
  }

  return result;
}

- (BOOL)hasIconImageInfoForGridSizeClass:(id)class
{
  classCopy = class;
  _iconImageInfos = [(SBHIconGridSizeClassIconImageInfoMap *)self _iconImageInfos];
  v6 = [_iconImageInfos objectForKey:classCopy];

  return v6 != 0;
}

- (CGSize)extraIconImageSizeForGridSizeClass:(id)class gridSizeClassSizes:(id)sizes iconSpacing:(CGSize)spacing
{
  height = spacing.height;
  width = spacing.width;
  classCopy = class;
  sizesCopy = sizes;
  v11 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);
  if (@"SBHIconGridSizeClassDefault" != classCopy && ([(__CFString *)classCopy isEqualToString:@"SBHIconGridSizeClassDefault"]& 1) == 0)
  {
    v13 = [sizesCopy gridSizeForGridSizeClass:classCopy];
    v14 = v13;
    v15 = HIWORD(v13);
    [(SBHIconGridSizeClassIconImageInfoMap *)self iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassDefault"];
    v17 = v16;
    v19 = v18;
    [(SBHIconGridSizeClassIconImageInfoMap *)self iconImageInfoForGridSizeClass:classCopy];
    v11 = v20 - (width * (v14 - 1) + v17 * v14);
    v12 = v21 - (height * (v15 - 1) + v19 * v15);
  }

  v22 = v11;
  v23 = v12;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)extraIconImageSizeForGridSizeClassSizes:(id)sizes iconSpacing:(CGSize)spacing
{
  height = spacing.height;
  width = spacing.width;
  sizesCopy = sizes;
  v8 = +[SBHIconGridSizeClassDomain globalDomain];
  [(SBHIconGridSizeClassIconImageInfoMap *)self extraIconImageSizeForGridSizeClassSizes:sizesCopy iconSpacing:v8 inDomain:width, height];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)extraIconImageSizeForGridSizeClassSizes:(id)sizes iconSpacing:(CGSize)spacing inDomain:(id)domain
{
  height = spacing.height;
  width = spacing.width;
  sizesCopy = sizes;
  domainCopy = domain;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v24 = &unk_1BEECC529;
  v25 = *MEMORY[0x1E695F060];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__SBHIconGridSizeClassIconImageInfoMap_extraIconImageSizeForGridSizeClassSizes_iconSpacing_inDomain___block_invoke;
  v16[3] = &unk_1E8091610;
  v16[4] = self;
  v11 = sizesCopy;
  v19 = width;
  v20 = height;
  v17 = v11;
  v18 = &v21;
  [domainCopy enumerateGridSizeClassesUsingBlock:v16];
  v12 = v22[4];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);
  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

uint64_t __101__SBHIconGridSizeClassIconImageInfoMap_extraIconImageSizeForGridSizeClassSizes_iconSpacing_inDomain___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) extraIconImageSizeForGridSizeClass:a2 gridSizeClassSizes:*(a1 + 40) iconSpacing:{*(a1 + 56), *(a1 + 64)}];
  v6 = *(*(a1 + 48) + 8);
  if (v4 > *(v6 + 32))
  {
    *(v6 + 32) = v4;
    v6 = *(*(a1 + 48) + 8);
  }

  if (v5 > *(v6 + 40))
  {
    *(v6 + 40) = v5;
  }

  return result;
}

- (void)enumerateIconImageInfosUsingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  [(SBHIconGridSizeClassIconImageInfoMap *)self _iconImageInfos];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      [(SBHIconGridSizeClassIconImageInfoMap *)self iconImageInfoForGridSizeClass:v10];
      v11 = 0;
      blockCopy[2](blockCopy, v10, &v11);
      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      _iconImageInfos = [(SBHIconGridSizeClassIconImageInfoMap *)self _iconImageInfos];
      _iconImageInfos2 = [(SBHIconGridSizeClassIconImageInfoMap *)v7 _iconImageInfos];

      v10 = BSEqualDictionaries();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  _iconImageInfos = [(SBHIconGridSizeClassIconImageInfoMap *)self _iconImageInfos];
  v3 = [_iconImageInfos hash];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBHIconGridSizeClassIconImageInfoMap *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(SBHIconGridSizeClassIconImageInfoMap *)SBHMutableIconGridSizeClassIconImageInfoMap allocWithZone:zone];

  return [(SBHIconGridSizeClassIconImageInfoMap *)v4 initWithIconGridSizeClassIconImageInfoMap:self];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__SBHIconGridSizeClassIconImageInfoMap_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E8088F18;
  v6[4] = self;
  v7 = formatterCopy;
  v5 = formatterCopy;
  [v5 appendProem:self block:v6];
}

void __69__SBHIconGridSizeClassIconImageInfoMap_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__SBHIconGridSizeClassIconImageInfoMap_appendDescriptionToFormatter___block_invoke_2;
  v2[3] = &unk_1E8091638;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateIconImageInfosUsingBlock:v2];
}

void __69__SBHIconGridSizeClassIconImageInfoMap_appendDescriptionToFormatter___block_invoke_2(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v13 = SBHStringForIconImageInfo(a3, a4, a5, a6);
  v12 = SBHStringForIconGridSizeClass(v11);

  [*(a1 + 32) appendString:v13 withName:v12 skipIfEmpty:0];
}

@end