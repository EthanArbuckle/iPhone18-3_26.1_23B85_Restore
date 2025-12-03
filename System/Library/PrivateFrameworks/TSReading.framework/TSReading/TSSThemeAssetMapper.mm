@interface TSSThemeAssetMapper
- (BOOL)p_hasCachedMappingsForPresetsOfKind:(id)kind;
- (TSSThemeAssetMapper)init;
- (TSSThemeAssetMapper)initWithFromTheme:(id)theme toTheme:(id)toTheme;
- (id)mapPresetsWithKindFromPreset:(id)preset;
- (id)mapStyle:(id)style;
- (id)mappedAssetForAsset:(id)asset;
- (void)dealloc;
@end

@implementation TSSThemeAssetMapper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSSThemeAssetMapper;
  [(TSSThemeAssetMapper *)&v3 dealloc];
}

- (TSSThemeAssetMapper)initWithFromTheme:(id)theme toTheme:(id)toTheme
{
  v8.receiver = self;
  v8.super_class = TSSThemeAssetMapper;
  v6 = [(TSSThemeAssetMapper *)&v8 init];
  if (v6)
  {
    v6->mFromTheme = theme;
    v6->mToTheme = toTheme;
    v6->mAssetMap = [objc_alloc(MEMORY[0x277D6C2B0]) initForThemeAssetMapperWithCapacity:0];
  }

  return v6;
}

- (TSSThemeAssetMapper)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSThemeAssetMapper init]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSThemeAssetMapper.m"), 76, @"-init not supported, call designated initializer instead."}];

  return 0;
}

- (id)mappedAssetForAsset:(id)asset
{
  v5 = [(TSUCustomCallBackDictionary *)self->mAssetMap objectForKeyedSubscript:?];
  if (v5)
  {
    return v5;
  }

  if ([asset conformsToProtocol:&unk_287E2B800])
  {
    presetKind = [asset presetKind];
    if (String != presetKind && ![(TSSThemeAssetMapper *)self p_hasCachedMappingsForPresetsOfKind:presetKind])
    {
      v8 = (objc_opt_respondsToSelector() & 1) != 0 ? [asset mapThemePresetsSelector] : sel_mapPresetsWithKindFromPreset_;
      v9 = [(TSSThemeAssetMapper *)self performSelector:v8 withObject:asset];
      [(TSSThemeAssetMapper *)self cacheAssetMappings:v9];
      v5 = [v9 objectForKeyedSubscript:asset];
      if (v5)
      {
        return v5;
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = -[TSSThemeAssetMapper performSelector:withObject:](self, "performSelector:withObject:", [asset mapThemeAssetSelector], asset);
  if (v6)
  {
    [(TSSThemeAssetMapper *)self cacheMappingFromAsset:asset toAsset:v6];
  }

  return v6;
}

- (id)mapPresetsWithKindFromPreset:(id)preset
{
  presetKind = [preset presetKind];
  if (String == presetKind)
  {
    goto LABEL_18;
  }

  v5 = presetKind;
  v6 = [[(TSSThemeAssetMapper *)self fromTheme] presetsOfKind:presetKind];
  v7 = [[(TSSThemeAssetMapper *)self toTheme] presetsOfKind:v5];
  v8 = v7;
  if (v6)
  {
    v9 = [v6 count];
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
LABEL_4:
      v10 = [v8 count] - 1;
      if (v9)
      {
        goto LABEL_5;
      }

LABEL_18:
      v11 = 0;
      goto LABEL_19;
    }
  }

  v10 = -1;
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_5:
  v11 = 0;
  v12 = 0;
  do
  {
    if (v8)
    {
      v13 = v12 >= v10 ? v10 : v12;
      v14 = [v8 objectAtIndexedSubscript:v13];
      if (v14)
      {
        v15 = v14;
        if (!v11)
        {
          v11 = [objc_alloc(MEMORY[0x277D6C2B0]) initWithCapacity:v9];
        }

        [v11 setObject:v15 forKeyedSubscript:{objc_msgSend(v6, "objectAtIndexedSubscript:", v12)}];
      }
    }

    ++v12;
    --v9;
  }

  while (v9);
LABEL_19:

  return v11;
}

- (id)mapStyle:(id)style
{
  stylesheet = [(TSSTheme *)self->mFromTheme stylesheet];
  if (stylesheet == [style stylesheet])
  {
    v8 = 0;
    v12 = 0;
    styleCopy = style;
    if (style)
    {
      goto LABEL_7;
    }

LABEL_11:
    v15 = TSUObjectReferenceDescription();
    NSLog(@"Failed to find original theme style when mapping style %@.", v15);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_22:
      v18 = TSUObjectReferenceDescription();
      NSLog(@"Failed to find mapped theme style when mapping style %@.", v18);
LABEL_23:
      v19 = TSUObjectReferenceDescription();
      NSLog(@"Failed to find mapped style for style %@.", v19);
      return 0;
    }

    styleCopy = 0;
    v8 = v12;
    goto LABEL_13;
  }

  styleCopy = [style parent];
  overridePropertyMap = [style overridePropertyMap];
  v8 = overridePropertyMap;
  if (!styleCopy)
  {
    v12 = overridePropertyMap;
    goto LABEL_11;
  }

  while (1)
  {
    stylesheet2 = [styleCopy stylesheet];
    if (stylesheet2 == [(TSSTheme *)self->mFromTheme stylesheet])
    {
      break;
    }

    v10 = TSUObjectReferenceDescription();
    v11 = TSUObjectReferenceDescription();
    NSLog(@"Mapping style %@ whose ancestor %@ is not in the original theme stylesheet.", v10, v11);
    v12 = [objc_msgSend(styleCopy "overridePropertyMap")];
    [v12 addValuesFromPropertyMap:v8];
    styleCopy = [styleCopy parent];
    v8 = v12;
    if (!styleCopy)
    {
      goto LABEL_11;
    }
  }

LABEL_7:
  if (objc_opt_respondsToSelector())
  {
LABEL_13:
    v14 = -[TSSThemeAssetMapper performSelector:withObject:](self, "performSelector:withObject:", [style mapThemeStyleSelector], styleCopy);
    goto LABEL_14;
  }

  styleIdentifier = [styleCopy styleIdentifier];
  if (!styleIdentifier)
  {
    v17 = TSUObjectReferenceDescription();
    NSLog(@"Original theme style %@ has no identifier.", v17);
    goto LABEL_22;
  }

  v14 = [(TSSStylesheet *)[[(TSSThemeAssetMapper *)self toTheme] stylesheet] styleWithIdentifier:styleIdentifier];
LABEL_14:
  v16 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

  if (v8 && [v8 count])
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = -[TSSThemeAssetMapper performSelector:withObject:](self, "performSelector:withObject:", [style mapThemePropertyMapSelector], v8);
    }

    v16 = [objc_msgSend(-[TSPObject documentRoot](self->mFromTheme "documentRoot")];
    if (!v16)
    {
      goto LABEL_23;
    }
  }

  return v16;
}

- (BOOL)p_hasCachedMappingsForPresetsOfKind:(id)kind
{
  v4 = [(TSSTheme *)self->mFromTheme presetOfKind:kind index:0];
  if (!v4 || (v5 = [(TSUCustomCallBackDictionary *)self->mAssetMap objectForKeyedSubscript:v4]) != 0)
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

@end