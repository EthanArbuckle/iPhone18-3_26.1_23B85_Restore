@interface SBHIconGridSizeClassSizeMap
+ (SBHIconGridSizeClassSizeMap)allocWithZone:(_NSZone *)a3;
- (BOOL)gridSizesMatchDefault;
- (BOOL)hasGridSizeForGridSizeClass:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)largestGridSizeClass;
- (NSString)tallestGridSizeClass;
- (NSString)widestGridSizeClass;
- (SBHIconGridSize)gridSizeForGridSizeClass:(id)a3;
- (SBHIconGridSizeClassSizeMap)initWithGridSize:(SBHIconGridSize)a3 forGridSizeClass:(id)a4;
- (SBHIconGridSizeClassSizeMap)initWithGridSizeClassSizes:(id)a3;
- (SBHIconGridSizeClassSizeMap)initWithGridSizeClassesAndGridSizes:(id)a3;
- (SBHIconGridSizeClassSizeMap)initWithIconGridSizeClassSizeMap:(id)a3;
- (id)_sizesSortedByArea;
- (id)bestGridSizeClassForGridSize:(SBHIconGridSize)a3 allowedGridSizeClasses:(id)a4;
- (id)descriptionWithGridSizeClassDomain:(id)a3;
- (id)gridSizeClassLargerThanGridSizeClass:(id)a3 allowedGridSizeClasses:(id)a4;
- (id)gridSizeClassSmallerThanGridSizeClass:(id)a3 allowedGridSizeClasses:(id)a4;
- (id)gridSizeClassesSortedByGridAreaWithAllowedGridSizeClasses:(id)a3;
- (id)largestGridSizeClassWhichTilesInGridSize:(SBHIconGridSize)a3 allowedGridSizeClasses:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)shortestGridSizeClassWithWidth:(unsigned __int16)a3 allowedGridSizeClasses:(id)a4;
- (unint64_t)hash;
- (unsigned)gridSizeAreaForGridSizeClass:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3 gridSizeClassDomain:(id)a4;
- (void)enumerateGridSizesFilteringBySet:(id)a3 usingBlock:(id)a4;
- (void)enumerateGridSizesInSet:(id)a3 usingBlock:(id)a4;
- (void)enumerateGridSizesSortedByAreaWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateGridSizesUsingBlock:(id)a3;
@end

@implementation SBHIconGridSizeClassSizeMap

+ (SBHIconGridSizeClassSizeMap)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(SBHIconGridSizeClassSizeMap *)SBHImmutableIconGridSizeClassSizeMap allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SBHIconGridSizeClassSizeMap;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (SBHIconGridSizeClassSizeMap)initWithGridSize:(SBHIconGridSize)a3 forGridSizeClass:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696B098];
  v6 = a3;
  v7 = a4;
  v8 = [v5 sbh_valueWithSBHIconGridSize:v6];
  v12 = v7;
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = [(SBHIconGridSizeClassSizeMap *)self initWithGridSizeClassSizes:v9];
  return v10;
}

- (SBHIconGridSizeClassSizeMap)initWithGridSizeClassesAndGridSizes:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = &v13;
  if (v5)
  {
    do
    {
      v3 = v3 & 0xFFFFFFFF00000000 | *v12;
      v7 = [MEMORY[0x1E696B098] sbh_valueWithSBHIconGridSize:v3];
      [v6 setObject:v7 forKey:v5];
      v8 = (v12 + 2);
      v12 += 4;
      v9 = *v8;

      v5 = v9;
    }

    while (v9);
  }

  v10 = [(SBHIconGridSizeClassSizeMap *)self initWithGridSizeClassSizes:v6];

  return v10;
}

- (SBHIconGridSizeClassSizeMap)initWithGridSizeClassSizes:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBHIconGridSizeClassSizeMap;
  return [(SBHIconGridSizeClassSizeMap *)&v4 init];
}

- (SBHIconGridSizeClassSizeMap)initWithIconGridSizeClassSizeMap:(id)a3
{
  v4 = [a3 _sizes];
  v5 = [(SBHIconGridSizeClassSizeMap *)self initWithGridSizeClassSizes:v4];

  return v5;
}

- (SBHIconGridSize)gridSizeForGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconGridSizeClassSizeMap *)self _sizes];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 sbh_SBHIconGridSizeValue];
  }

  else
  {
    v7 = 65537;
  }

  return v7;
}

- (unsigned)gridSizeAreaForGridSizeClass:(id)a3
{
  v3 = [(SBHIconGridSizeClassSizeMap *)self gridSizeForGridSizeClass:a3];

  return SBHIconGridSizeGetArea(*&v3);
}

- (BOOL)hasGridSizeForGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconGridSizeClassSizeMap *)self _sizes];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

- (id)bestGridSizeClassForGridSize:(SBHIconGridSize)a3 allowedGridSizeClasses:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__SBHIconGridSizeClassSizeMap_bestGridSizeClassForGridSize_allowedGridSizeClasses___block_invoke;
  v10[3] = &unk_1E808BA20;
  v7 = v6;
  v13 = a3;
  v11 = v7;
  v12 = &v14;
  [(SBHIconGridSizeClassSizeMap *)self enumerateGridSizesUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __83__SBHIconGridSizeClassSizeMap_bestGridSizeClassForGridSize_allowedGridSizeClasses___block_invoke(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v9 = a2;
  v8 = *(a1 + 32);
  if ((!v8 || [v8 containsGridSizeClass:v9]) && SBHIconGridSizeEqualToIconGridSize(*(a1 + 48), a3))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (NSString)largestGridSizeClass
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  v13 = @"SBHIconGridSizeClassDefault";
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SBHIconGridSizeClassSizeMap_largestGridSizeClass__block_invoke;
  v5[3] = &unk_1E808BA48;
  v5[4] = v6;
  v5[5] = &v8;
  [(SBHIconGridSizeClassSizeMap *)self enumerateGridSizesUsingBlock:v5];
  v3 = v9[5];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);

  return v3;
}

void __51__SBHIconGridSizeClassSizeMap_largestGridSizeClass__block_invoke(uint64_t a1, void *a2, int a3)
{
  v8 = a2;
  Area = SBHIconGridSizeGetArea(a3);
  v7 = *(*(a1 + 32) + 8);
  if (Area > *(v7 + 24))
  {
    *(v7 + 24) = Area;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (NSString)widestGridSizeClass
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  v13 = @"SBHIconGridSizeClassDefault";
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SBHIconGridSizeClassSizeMap_widestGridSizeClass__block_invoke;
  v5[3] = &unk_1E808BA48;
  v5[4] = v6;
  v5[5] = &v8;
  [(SBHIconGridSizeClassSizeMap *)self enumerateGridSizesUsingBlock:v5];
  v3 = v9[5];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);

  return v3;
}

void __50__SBHIconGridSizeClassSizeMap_widestGridSizeClass__block_invoke(uint64_t a1, void *a2, unsigned __int16 a3)
{
  v6 = a2;
  v7 = *(*(a1 + 32) + 8);
  if (*(v7 + 24) < a3)
  {
    *(v7 + 24) = a3;
    v8 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = v8;
  }
}

- (NSString)tallestGridSizeClass
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  v13 = @"SBHIconGridSizeClassDefault";
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SBHIconGridSizeClassSizeMap_tallestGridSizeClass__block_invoke;
  v5[3] = &unk_1E808BA48;
  v5[4] = v6;
  v5[5] = &v8;
  [(SBHIconGridSizeClassSizeMap *)self enumerateGridSizesUsingBlock:v5];
  v3 = v9[5];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);

  return v3;
}

void __51__SBHIconGridSizeClassSizeMap_tallestGridSizeClass__block_invoke(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = a2;
  v7 = *(*(a1 + 32) + 8);
  if (*(v7 + 24) < HIWORD(a3))
  {
    *(v7 + 24) = HIWORD(a3);
    v8 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = v8;
  }
}

- (id)largestGridSizeClassWhichTilesInGridSize:(SBHIconGridSize)a3 allowedGridSizeClasses:(id)a4
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = @"SBHIconGridSizeClassDefault";
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__SBHIconGridSizeClassSizeMap_largestGridSizeClassWhichTilesInGridSize_allowedGridSizeClasses___block_invoke;
  v9[3] = &unk_1E808BA70;
  v10 = a3;
  v9[4] = v11;
  v9[5] = &v13;
  [(SBHIconGridSizeClassSizeMap *)self enumerateGridSizesFilteringBySet:v6 usingBlock:v9];
  v7 = v14[5];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __95__SBHIconGridSizeClassSizeMap_largestGridSizeClassWhichTilesInGridSize_allowedGridSizeClasses___block_invoke(uint64_t a1, void *a2, unsigned int a3)
{
  Area = a2;
  v7 = Area;
  if (a3 >= 0x10000)
  {
    if (a3)
    {
      v8 = *(a1 + 48);
      if (v8 == 0xFFFF || !(v8 % a3))
      {
        v9 = *(a1 + 50);
        if (v9 == 0xFFFF || !(v9 % HIWORD(a3)))
        {
          v12 = Area;
          Area = SBHIconGridSizeGetArea(a3);
          v7 = v12;
          v10 = *(*(a1 + 32) + 8);
          if (Area > *(v10 + 24))
          {
            *(v10 + 24) = Area;
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
            v7 = v12;
          }
        }
      }
    }
  }

  return MEMORY[0x1EEE66BB8](Area, v7);
}

- (id)shortestGridSizeClassWithWidth:(unsigned __int16)a3 allowedGridSizeClasses:(id)a4
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = @"SBHIconGridSizeClassDefault";
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = -1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__SBHIconGridSizeClassSizeMap_shortestGridSizeClassWithWidth_allowedGridSizeClasses___block_invoke;
  v9[3] = &unk_1E808BA98;
  v10 = a3;
  v9[4] = v11;
  v9[5] = &v13;
  [(SBHIconGridSizeClassSizeMap *)self enumerateGridSizesFilteringBySet:v6 usingBlock:v9];
  v7 = v14[5];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __85__SBHIconGridSizeClassSizeMap_shortestGridSizeClassWithWidth_allowedGridSizeClasses___block_invoke(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = a2;
  if (*(a1 + 48) == a3)
  {
    v7 = *(*(a1 + 32) + 8);
    if (*(v7 + 24) > HIWORD(a3))
    {
      *(v7 + 24) = HIWORD(a3);
      v8 = v6;
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      v6 = v8;
    }
  }
}

- (id)gridSizeClassLargerThanGridSizeClass:(id)a3 allowedGridSizeClasses:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SBHIconGridSizeClassSizeMap *)self gridSizeClassesSortedByGridAreaWithAllowedGridSizeClasses:a4];
  v8 = [v7 indexOfObject:v6];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(SBHIconGridSizeClassSizeMap *)self gridSizeAreaForGridSizeClass:v6];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if ([(SBHIconGridSizeClassSizeMap *)self gridSizeAreaForGridSizeClass:v15, v19]> v9)
          {
            v16 = v15;
            goto LABEL_14;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_14:
  }

  else
  {
    v17 = v8 + 1;
    if (v8 + 1 >= [v7 count])
    {
      v16 = 0;
    }

    else
    {
      v16 = [v7 objectAtIndex:v17];
    }
  }

  return v16;
}

- (id)gridSizeClassSmallerThanGridSizeClass:(id)a3 allowedGridSizeClasses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconGridSizeClassSizeMap *)self gridSizeClassesSortedByGridAreaWithAllowedGridSizeClasses:v7];
  v9 = [v8 indexOfObject:v6];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  if (v9)
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(SBHIconGridSizeClassSizeMap *)self gridSizeAreaForGridSizeClass:v6];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __92__SBHIconGridSizeClassSizeMap_gridSizeClassSmallerThanGridSizeClass_allowedGridSizeClasses___block_invoke;
      v15[3] = &unk_1E808BAC0;
      v16 = v10;
      v15[4] = self;
      v15[5] = &v17;
      [v8 enumerateObjectsWithOptions:2 usingBlock:v15];
    }

    else
    {
      v11 = [v8 objectAtIndex:v9 - 1];
      v12 = v18[5];
      v18[5] = v11;
    }
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v13;
}

void __92__SBHIconGridSizeClassSizeMap_gridSizeClassSmallerThanGridSizeClass_allowedGridSizeClasses___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) gridSizeAreaForGridSizeClass:?] < *(a1 + 48))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)gridSizeClassesSortedByGridAreaWithAllowedGridSizeClasses:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__SBHIconGridSizeClassSizeMap_gridSizeClassesSortedByGridAreaWithAllowedGridSizeClasses___block_invoke;
  v13[3] = &unk_1E808BAE8;
  v7 = v6;
  v14 = v7;
  [(SBHIconGridSizeClassSizeMap *)self enumerateGridSizesFilteringBySet:v5 usingBlock:v13];

  v8 = [v7 containsObject:@"SBHIconGridSizeClassDefault"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__SBHIconGridSizeClassSizeMap_gridSizeClassesSortedByGridAreaWithAllowedGridSizeClasses___block_invoke_2;
  v11[3] = &unk_1E808BB10;
  v11[4] = self;
  v12 = v8;
  [v7 sortUsingComparator:v11];
  v9 = v7;

  return v7;
}

uint64_t __89__SBHIconGridSizeClassSizeMap_gridSizeClassesSortedByGridAreaWithAllowedGridSizeClasses___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) gridSizeAreaForGridSizeClass:v5];
  v8 = [*(a1 + 32) gridSizeAreaForGridSizeClass:v6];
  if (v7 == v8)
  {
    if (*(a1 + 40) == 1)
    {
      if (!v5 || ([v5 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) != 0)
      {
        v9 = -1;
        goto LABEL_14;
      }

      if (*(a1 + 40) & 1) != 0 && (!v6 || ([v6 isEqualToString:@"SBHIconGridSizeClassDefault"]))
      {
        v9 = 1;
        goto LABEL_14;
      }
    }

    v9 = 0;
    goto LABEL_14;
  }

  if (v7 < v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (BOOL)gridSizesMatchDefault
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__SBHIconGridSizeClassSizeMap_gridSizesMatchDefault__block_invoke;
  v4[3] = &unk_1E808BB38;
  v4[4] = &v5;
  [(SBHIconGridSizeClassSizeMap *)self enumerateGridSizesUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

BOOL __52__SBHIconGridSizeClassSizeMap_gridSizesMatchDefault__block_invoke(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  result = SBHIconGridSizeEqualToIconGridSize(a3, 65537);
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (void)enumerateGridSizesUsingBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(SBHIconGridSizeClassSizeMap *)self _sizes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      v12 = [(SBHIconGridSizeClassSizeMap *)self gridSizeForGridSizeClass:v11];
      v13 = 0;
      v3 = v3 & 0xFFFFFFFF00000000 | *&v12;
      v5[2](v5, v11, v3, &v13);
      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateGridSizesSortedByAreaWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(SBHIconGridSizeClassSizeMap *)self _sizesSortedByArea];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__SBHIconGridSizeClassSizeMap_enumerateGridSizesSortedByAreaWithOptions_usingBlock___block_invoke;
  v9[3] = &unk_1E808A710;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 enumerateObjectsWithOptions:a3 usingBlock:v9];
}

void __84__SBHIconGridSizeClassSizeMap_enumerateGridSizesSortedByAreaWithOptions_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  (*(*(a1 + 40) + 16))(*(a1 + 40), v7, [v6 gridSizeForGridSizeClass:v7], a4);
}

- (void)enumerateGridSizesInSet:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__SBHIconGridSizeClassSizeMap_enumerateGridSizesInSet_usingBlock___block_invoke;
  v10[3] = &unk_1E808BB60;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(SBHIconGridSizeClassSizeMap *)self enumerateGridSizesUsingBlock:v10];
}

void __66__SBHIconGridSizeClassSizeMap_enumerateGridSizesInSet_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsGridSizeClass:?])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)enumerateGridSizesFilteringBySet:(id)a3 usingBlock:(id)a4
{
  if (a3)
  {
    [(SBHIconGridSizeClassSizeMap *)self enumerateGridSizesInSet:a3 usingBlock:a4];
  }

  else
  {
    [(SBHIconGridSizeClassSizeMap *)self enumerateGridSizesUsingBlock:a4];
  }
}

- (id)_sizesSortedByArea
{
  v3 = [(SBHIconGridSizeClassSizeMap *)self _sizes];
  v4 = [v3 allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SBHIconGridSizeClassSizeMap__sizesSortedByArea__block_invoke;
  v7[3] = &unk_1E808BB88;
  v7[4] = self;
  v5 = [v4 sortedArrayUsingComparator:v7];

  return v5;
}

uint64_t __49__SBHIconGridSizeClassSizeMap__sizesSortedByArea__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 gridSizeAreaForGridSizeClass:a2];
  v8 = [*(a1 + 32) gridSizeAreaForGridSizeClass:v6];

  if (v7 < v8)
  {
    return -1;
  }

  else
  {
    return v7 > v8;
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
      v8 = [(SBHIconGridSizeClassSizeMap *)self _sizes];
      v9 = [(SBHIconGridSizeClassSizeMap *)v7 _sizes];

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
  v2 = [(SBHIconGridSizeClassSizeMap *)self _sizes];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBHIconGridSizeClassSizeMap *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (id)descriptionWithGridSizeClassDomain:(id)a3
{
  v4 = MEMORY[0x1E698E688];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [(SBHIconGridSizeClassSizeMap *)self appendDescriptionToFormatter:v6 gridSizeClassDomain:v5];

  v7 = [v6 description];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(SBHIconGridSizeClassSizeMap *)SBHMutableIconGridSizeClassSizeMap allocWithZone:a3];

  return [(SBHIconGridSizeClassSizeMap *)v4 initWithIconGridSizeClassSizeMap:self];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v5 = +[SBHIconGridSizeClassDomain globalDomain];
  [(SBHIconGridSizeClassSizeMap *)self appendDescriptionToFormatter:v4 gridSizeClassDomain:v5];
}

- (void)appendDescriptionToFormatter:(id)a3 gridSizeClassDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__SBHIconGridSizeClassSizeMap_appendDescriptionToFormatter_gridSizeClassDomain___block_invoke;
  v10[3] = &unk_1E808BBB0;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(SBHIconGridSizeClassSizeMap *)self enumerateGridSizesUsingBlock:v10];
}

void __80__SBHIconGridSizeClassSizeMap_appendDescriptionToFormatter_gridSizeClassDomain___block_invoke(uint64_t a1, void *a2, int a3)
{
  v7 = a2;
  v5 = SBHStringForIconGridSize(a3);
  v6 = [*(a1 + 32) descriptionForGridSizeClass:v7];
  if (!v6)
  {
    v6 = v7;
  }

  [*(a1 + 40) appendString:v5 withName:v6 skipIfEmpty:0];
}

@end