@interface PXMemoriesFontsSpec
+ (double)baselineDistanceForFontSet:(int64_t)a3 specSet:(int64_t)a4 variant:(int64_t)a5 size:(CGSize)a6 shouldScale:(BOOL)a7;
+ (id)_fontSetByTitleFontName;
+ (id)_fontSpecCache;
+ (id)_titleFontNameByFontSet;
+ (id)memoriesFontsSpecForDescriptor:(PXViewSpecDescriptor *)a3 extendedTraitCollection:(id)a4;
+ (id)supportedTitleFontNames;
+ (id)textAttributesForFontName:(id)a3 fontSize:(double)a4 lineHeight:(double)a5 tracking:(double)a6 stroke:(double)a7 shadow:(id)a8 capitalizationStyle:(int64_t)a9;
+ (id)textAttributesForFontSet:(int64_t)a3 specSet:(int64_t)a4 labelKind:(int64_t)a5 variant:(int64_t)a6 size:(CGSize)a7 shouldScale:(BOOL)a8;
+ (int64_t)capitalizationStyleForLabelKind:(int64_t)a3;
+ (int64_t)numberOfLinesForLabelKind:(int64_t)a3;
+ (void)_getSpecSet:(int64_t *)a3 variant:(int64_t *)a4 forDescriptor:(PXViewSpecDescriptor *)a5 extendedTraitCollection:(id)a6;
+ (void)preloadFontsSpecsForExtendedTraitCollection:(id)a3;
- (UIEdgeInsets)padding;
- (id)_initWithIdentifier:(PXMemoryFontsSpecIdentifier *)a3;
@end

@implementation PXMemoriesFontsSpec

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_initWithIdentifier:(PXMemoryFontsSpecIdentifier *)a3
{
  v19.receiver = self;
  v19.super_class = PXMemoriesFontsSpec;
  v4 = [(PXMemoriesFontsSpec *)&v19 init];
  if (v4)
  {
    var0 = a3->var0;
    var1 = a3->var1;
    var2 = a3->var2;
    width = a3->var3.width;
    height = a3->var3.height;
    var5 = a3->var5;
    v11 = [objc_opt_class() textAttributesForFontSet:a3->var0 specSet:var1 labelKind:0 variant:var2 size:var5 shouldScale:{width, height}];
    titleTextAttributes = v4->_titleTextAttributes;
    v4->_titleTextAttributes = v11;

    v13 = [objc_opt_class() textAttributesForFontSet:1 specSet:var1 labelKind:0 variant:var2 size:var5 shouldScale:{width, height}];
    fallbackTitleTextAttributes = v4->_fallbackTitleTextAttributes;
    v4->_fallbackTitleTextAttributes = v13;

    v15 = [objc_opt_class() textAttributesForFontSet:var0 specSet:var1 labelKind:1 variant:var2 size:var5 shouldScale:{width, height}];
    subtitleTextAttributes = v4->_subtitleTextAttributes;
    v4->_subtitleTextAttributes = v15;

    [objc_opt_class() baselineDistanceForFontSet:var0 specSet:var1 variant:var2 size:var5 shouldScale:{width, height}];
    v4->_baselineDistance = v17;
    PXEdgeInsetsMake();
  }

  return 0;
}

+ (void)_getSpecSet:(int64_t *)a3 variant:(int64_t *)a4 forDescriptor:(PXViewSpecDescriptor *)a5 extendedTraitCollection:(id)a6
{
  v6 = a6;
  [v6 userInterfaceIdiom];
  [v6 layoutSizeClass];
  [v6 layoutOrientation];

  PXMemoryTileKindForViewSpecContext();
}

+ (id)supportedTitleFontNames
{
  if (supportedTitleFontNames_onceToken != -1)
  {
    dispatch_once(&supportedTitleFontNames_onceToken, &__block_literal_global_58);
  }

  v3 = supportedTitleFontNames_supportedFontNames;

  return v3;
}

void __46__PXMemoriesFontsSpec_supportedTitleFontNames__block_invoke()
{
  v3 = +[PXMemoriesFontsSpec _fontSetByTitleFontName];
  v0 = [v3 allKeys];
  v1 = [v0 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v2 = supportedTitleFontNames_supportedFontNames;
  supportedTitleFontNames_supportedFontNames = v1;
}

+ (id)_titleFontNameByFontSet
{
  if (_titleFontNameByFontSet_onceToken != -1)
  {
    dispatch_once(&_titleFontNameByFontSet_onceToken, &__block_literal_global_55_155536);
  }

  v3 = _titleFontNameByFontSet_titleFontNameByFontSet;

  return v3;
}

void __46__PXMemoriesFontsSpec__titleFontNameByFontSet__block_invoke()
{
  v0 = +[PXMemoriesFontsSpec _fontSetByTitleFontName];
  v1 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v0, "count")}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PXMemoriesFontsSpec__titleFontNameByFontSet__block_invoke_2;
  v5[3] = &unk_1E7745258;
  v6 = v1;
  v2 = v1;
  [v0 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = [v2 copy];
  v4 = _titleFontNameByFontSet_titleFontNameByFontSet;
  _titleFontNameByFontSet_titleFontNameByFontSet = v3;
}

+ (id)_fontSetByTitleFontName
{
  if (_fontSetByTitleFontName_onceToken != -1)
  {
    dispatch_once(&_fontSetByTitleFontName_onceToken, &__block_literal_global_49);
  }

  v3 = _fontSetByTitleFontName_fontSets;

  return v3;
}

void __46__PXMemoriesFontsSpec__fontSetByTitleFontName__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *off_1E7722200;
  v3[0] = *off_1E7722208;
  v3[1] = v0;
  v4[0] = &unk_1F190CCD0;
  v4[1] = &unk_1F190CCE8;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = _fontSetByTitleFontName_fontSets;
  _fontSetByTitleFontName_fontSets = v1;
}

+ (id)memoriesFontsSpecForDescriptor:(PXViewSpecDescriptor *)a3 extendedTraitCollection:(id)a4
{
  v6 = a4;
  memset(&v27[8], 0, 48);
  *v27 = 2;
  var2 = a3->var2;
  v23 = *&a3->var0;
  v24 = var2;
  [a1 _getSpecSet:&v27[8] variant:&v27[16] forDescriptor:&v23 extendedTraitCollection:v6];
  *&v27[24] = a3->var2;
  [v6 layoutMargins];
  v9 = v8;
  v10 = +[PXMemoriesRelatedSettings sharedInstance];
  v11 = [v10 enableIPadWideHeader];
  v12 = *&v27[8] == 0;

  v13 = fmin(v9, 20.0);
  if ((v11 & v12) != 0)
  {
    v13 = v9;
  }

  if (v13 == 0.0)
  {
    v14 = *&v27[16] == 4 && *&v27[8] == 0;
    v13 = 24.0;
    if (!v14)
    {
      v13 = 20.0;
    }
  }

  *&v27[40] = v13;
  v15 = 1;
  if (v6 && (a3->var1 & 0x1000) == 0 && !*&v27[8])
  {
    v16 = [v6 userInterfaceIdiom];
    v17 = [v6 userInterfaceIdiom] == 1 && objc_msgSend(v6, "layoutOrientation") == 2;
    v15 = v16 != 2 && !v17;
  }

  v27[48] = v15;
  v18 = +[PXMemoriesFontsSpec _fontSpecCache];
  v23 = *v27;
  v24 = *&v27[16];
  v25 = *&v27[32];
  v26 = *&v27[48];
  v19 = [MEMORY[0x1E696B098] px_valueWithMemoryFontsSpecIdentifier:&v23];
  v20 = [v18 objectForKey:v19];
  if (!v20)
  {
    v21 = [a1 alloc];
    v23 = *v27;
    v24 = *&v27[16];
    v25 = *&v27[32];
    v26 = *&v27[48];
    v20 = [v21 _initWithIdentifier:&v23];
    [v18 setObject:v20 forKey:v19];
  }

  return v20;
}

+ (double)baselineDistanceForFontSet:(int64_t)a3 specSet:(int64_t)a4 variant:(int64_t)a5 size:(CGSize)a6 shouldScale:(BOOL)a7
{
  v7 = a7;
  width = a6.width;
  result = _BaselineDistanceForFontSetSpecSetVariant(a3, a4);
  if (v7)
  {
    v12 = round(width);
    v13 = 0.913999975;
    if (a5 != 4)
    {
      v13 = 1.0;
    }

    if (v12 <= 0.0)
    {
      return round(result * v13);
    }

    if (a4 == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = a4;
    }

    if (v14 == 1)
    {
      v16 = a5 == 2;
      v17 = &unk_1A53810A0;
    }

    else
    {
      v15 = 0.0;
      if (v14)
      {
LABEL_13:
        v13 = v13 * (v12 / v15);
        return round(result * v13);
      }

      v16 = a5 == 4;
      v17 = &unk_1A53810B0;
    }

    v15 = v17[v16];
    goto LABEL_13;
  }

  return result;
}

+ (id)textAttributesForFontSet:(int64_t)a3 specSet:(int64_t)a4 labelKind:(int64_t)a5 variant:(int64_t)a6 size:(CGSize)a7 shouldScale:(BOOL)a8
{
  v8 = a8;
  width = a7.width;
  v15 = _FontNameForFontSetSpecSetVariant(a5, a3);
  v16 = [a1 capitalizationStyleForLabelKind:a5];
  v17 = _FontSizeForFontSetSpecSetVariant(a5, a3, a4, a6);
  v18 = _TrackingForSpecSet(a5, a3);
  v19 = _LineHeightForSpecSet(a5, a3, a4, a6);
  if (a3 && v8)
  {
    v20 = 0.913999975;
    if (a6 != 4)
    {
      v20 = 1.0;
    }

    if (width <= 0.0)
    {
      goto LABEL_15;
    }

    if (a4 == 2)
    {
      v21 = 1;
    }

    else
    {
      v21 = a4;
    }

    if (v21 == 1)
    {
      v23 = a6 == 2;
      v24 = &unk_1A53810A0;
    }

    else
    {
      v22 = 0.0;
      if (v21)
      {
LABEL_14:
        v20 = v20 * (width / v22);
LABEL_15:
        v19 = round(v19 * v20);
        v17 = round(v20 * v17);
        goto LABEL_16;
      }

      v23 = a6 == 4;
      v24 = &unk_1A53810B0;
    }

    v22 = v24[v23];
    goto LABEL_14;
  }

LABEL_16:
  v25 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
  [v25 setShadowBlurRadius:5.0];
  v26 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.100000001];
  [v25 setShadowColor:v26];

  [v25 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v27 = [a1 textAttributesForFontName:v15 fontSize:v25 lineHeight:v16 tracking:v17 stroke:v19 shadow:v18 capitalizationStyle:0.0];

  return v27;
}

+ (id)textAttributesForFontName:(id)a3 fontSize:(double)a4 lineHeight:(double)a5 tracking:(double)a6 stroke:(double)a7 shadow:(id)a8 capitalizationStyle:(int64_t)a9
{
  v10 = a3;
  v11 = a8;
  [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  objc_claimAutoreleasedReturnValue();
  if (v10)
  {
    PXFontCreate();
  }

  PXFloatApproximatelyEqualToFloat();
}

+ (int64_t)numberOfLinesForLabelKind:(int64_t)a3
{
  if (!a3)
  {
    return 2;
  }

  if (a3 != 1)
  {
    v13 = v4;
    v14 = v3;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXMemoriesFontsSpec.m" lineNumber:418 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 1;
}

+ (int64_t)capitalizationStyleForLabelKind:(int64_t)a3
{
  if (!a3)
  {
    return 1;
  }

  if (a3 != 1)
  {
    v13 = v4;
    v14 = v3;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXMemoriesFontsSpec.m" lineNumber:408 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 3;
}

+ (id)_fontSpecCache
{
  if (_fontSpecCache_onceToken != -1)
  {
    dispatch_once(&_fontSpecCache_onceToken, &__block_literal_global_155552);
  }

  v3 = _fontSpecCache_cache;

  return v3;
}

void __37__PXMemoriesFontsSpec__fontSpecCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _fontSpecCache_cache;
  _fontSpecCache_cache = v0;
}

+ (void)preloadFontsSpecsForExtendedTraitCollection:(id)a3
{
  if (a3)
  {
    v4 = [off_1E7721858 sharedScheduler];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__PXMemoriesFontsSpec_preloadFontsSpecsForExtendedTraitCollection___block_invoke;
    v6[3] = &unk_1E77498A0;
    v7 = v4;
    v8 = a1;
    v5 = v4;
    [v5 scheduleTaskWithQoS:1 block:v6];
  }
}

void __67__PXMemoriesFontsSpec_preloadFontsSpecsForExtendedTraitCollection___block_invoke(uint64_t a1)
{
  v2 = +[PXMemoriesFontsSpec _fontSpecCache];
  v3 = 0;
  v4 = 1;
  v13 = *MEMORY[0x1E695F060];
  do
  {
    v5 = 0;
    v12 = v4;
    v6 = *(&xmmword_1A5344DD0 + v3);
    v7 = 1;
    do
    {
      v8 = v5;
      v18 = v7;
      v19 = v6;
      v20 = 0;
      v21 = v13;
      v22 = 0;
      v23 = 0;
      v9 = [MEMORY[0x1E696B098] px_valueWithMemoryFontsSpecIdentifier:&v18];
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      *&v21 = __Block_byref_object_copy__155556;
      *(&v21 + 1) = __Block_byref_object_dispose__155557;
      v22 = [v2 objectForKey:v9];
      if (!v19[5])
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __67__PXMemoriesFontsSpec_preloadFontsSpecsForExtendedTraitCollection___block_invoke_39;
        v14[3] = &unk_1E773E140;
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        v14[4] = &v18;
        v14[5] = v11;
        v14[6] = v7;
        v14[7] = v6;
        v14[8] = 0;
        v15 = v13;
        v16 = 0;
        v17 = 0;
        [v10 scheduleMainQueueTaskAndWait:v14];
        [v2 setObject:v19[5] forKey:v9];
      }

      _Block_object_dispose(&v18, 8);

      v5 = 1;
      v7 = 2;
    }

    while ((v8 & 1) == 0);
    v4 = 0;
    v3 = 1;
  }

  while ((v12 & 1) != 0);
}

void __67__PXMemoriesFontsSpec_preloadFontsSpecsForExtendedTraitCollection___block_invoke_39(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 40));
  v3 = *(a1 + 64);
  v7[0] = *(a1 + 48);
  v7[1] = v3;
  v7[2] = *(a1 + 80);
  v8 = *(a1 + 96);
  v4 = [v2 _initWithIdentifier:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end