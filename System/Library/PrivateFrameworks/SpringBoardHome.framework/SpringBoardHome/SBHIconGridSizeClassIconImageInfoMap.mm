@interface SBHIconGridSizeClassIconImageInfoMap
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)hasIconImageInfoForGridSizeClass:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)extraIconImageSizeForGridSizeClass:(id)a3 gridSizeClassSizes:(id)a4 iconSpacing:(CGSize)a5;
- (CGSize)extraIconImageSizeForGridSizeClassSizes:(id)a3 iconSpacing:(CGSize)a4;
- (CGSize)extraIconImageSizeForGridSizeClassSizes:(id)a3 iconSpacing:(CGSize)a4 inDomain:(id)a5;
- (NSString)description;
- (SBHIconGridSizeClassIconImageInfoMap)initWithGridSizeClassesAndIconImageInfos:(id)a3;
- (SBHIconGridSizeClassIconImageInfoMap)initWithIconGridSizeClassIconImageInfoMap:(id)a3;
- (SBHIconGridSizeClassIconImageInfoMap)initWithIconImageInfo:(SBIconImageInfo *)a3 forGridSizeClass:(id)a4;
- (SBHIconGridSizeClassIconImageInfoMap)initWithIconImageInfos:(id)a3;
- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)enumerateIconImageInfosUsingBlock:(id)a3;
@end

@implementation SBHIconGridSizeClassIconImageInfoMap

+ (id)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(SBHIconGridSizeClassIconImageInfoMap *)SBHImmutableIconGridSizeClassIconImageInfoMap allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SBHIconGridSizeClassIconImageInfoMap;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (SBHIconGridSizeClassIconImageInfoMap)initWithIconImageInfo:(SBIconImageInfo *)a3 forGridSizeClass:(id)a4
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v20[1] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E696B098];
  v14 = a3;
  v15 = [v13 sbh_valueWithSBIconImageInfo:{v11, v10, v9, v8}];
  v19 = v14;
  v20[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v17 = [(SBHIconGridSizeClassIconImageInfoMap *)self initWithIconImageInfos:v16];
  return v17;
}

- (SBHIconGridSizeClassIconImageInfoMap)initWithGridSizeClassesAndIconImageInfos:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = &v12;
  if (v4)
  {
    do
    {
      v6 = [MEMORY[0x1E696B098] sbh_valueWithSBIconImageInfo:{*v11, v11[1], v11[2], v11[3]}];
      [v5 setObject:v6 forKey:v4];
      v7 = (v11 + 4);
      v11 += 5;
      v8 = *v7;

      v4 = v8;
    }

    while (v8);
  }

  v9 = [(SBHIconGridSizeClassIconImageInfoMap *)self initWithIconImageInfos:v5];

  return v9;
}

- (SBHIconGridSizeClassIconImageInfoMap)initWithIconImageInfos:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBHIconGridSizeClassIconImageInfoMap;
  return [(SBHIconGridSizeClassIconImageInfoMap *)&v4 init];
}

- (SBHIconGridSizeClassIconImageInfoMap)initWithIconGridSizeClassIconImageInfoMap:(id)a3
{
  v4 = [a3 _iconImageInfos];
  v5 = [(SBHIconGridSizeClassIconImageInfoMap *)self initWithIconImageInfos:v4];

  return v5;
}

- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3
{
  v5 = a4;
  v6 = [(SBHIconGridSizeClassIconImageInfoMap *)self _iconImageInfos];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    [v7 sbh_SBIconImageInfoValue];
  }

  return result;
}

- (BOOL)hasIconImageInfoForGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconGridSizeClassIconImageInfoMap *)self _iconImageInfos];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

- (CGSize)extraIconImageSizeForGridSizeClass:(id)a3 gridSizeClassSizes:(id)a4 iconSpacing:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = a4;
  v11 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);
  if (@"SBHIconGridSizeClassDefault" != v9 && ([(__CFString *)v9 isEqualToString:@"SBHIconGridSizeClassDefault"]& 1) == 0)
  {
    v13 = [v10 gridSizeForGridSizeClass:v9];
    v14 = v13;
    v15 = HIWORD(v13);
    [(SBHIconGridSizeClassIconImageInfoMap *)self iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassDefault"];
    v17 = v16;
    v19 = v18;
    [(SBHIconGridSizeClassIconImageInfoMap *)self iconImageInfoForGridSizeClass:v9];
    v11 = v20 - (width * (v14 - 1) + v17 * v14);
    v12 = v21 - (height * (v15 - 1) + v19 * v15);
  }

  v22 = v11;
  v23 = v12;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)extraIconImageSizeForGridSizeClassSizes:(id)a3 iconSpacing:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = +[SBHIconGridSizeClassDomain globalDomain];
  [(SBHIconGridSizeClassIconImageInfoMap *)self extraIconImageSizeForGridSizeClassSizes:v7 iconSpacing:v8 inDomain:width, height];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)extraIconImageSizeForGridSizeClassSizes:(id)a3 iconSpacing:(CGSize)a4 inDomain:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
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
  v11 = v9;
  v19 = width;
  v20 = height;
  v17 = v11;
  v18 = &v21;
  [v10 enumerateGridSizeClassesUsingBlock:v16];
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

- (void)enumerateIconImageInfosUsingBlock:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v4[2](v4, v10, &v11);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(SBHIconGridSizeClassIconImageInfoMap *)self _iconImageInfos];
      v9 = [(SBHIconGridSizeClassIconImageInfoMap *)v7 _iconImageInfos];

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
  v2 = [(SBHIconGridSizeClassIconImageInfoMap *)self _iconImageInfos];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBHIconGridSizeClassIconImageInfoMap *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(SBHIconGridSizeClassIconImageInfoMap *)SBHMutableIconGridSizeClassIconImageInfoMap allocWithZone:a3];

  return [(SBHIconGridSizeClassIconImageInfoMap *)v4 initWithIconGridSizeClassIconImageInfoMap:self];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__SBHIconGridSizeClassIconImageInfoMap_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E8088F18;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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