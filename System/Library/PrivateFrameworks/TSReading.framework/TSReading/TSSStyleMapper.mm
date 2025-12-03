@interface TSSStyleMapper
- (TSSStyleMapper)initWithTargetStylesheet:(id)stylesheet newStyleDOLCContext:(id)context;
- (TSSStylesheet)targetStylesheet;
- (id)_mappedStyleForStyle:(id)style depth:(unint64_t)depth;
- (id)createStyleForStyle:(id)style withPropertyMap:(id)map;
- (id)mappedStyleForStyle:(id)style inThemeStylesheet:(BOOL)stylesheet;
- (id)pCascadedFindExistingRootlessStyle:(id)style propertyMap:(id)map;
- (id)pTargetParentForStyle:(id)style withParentIdentifier:(id)identifier;
- (void)dealloc;
- (void)popMappingContext:(id)context;
- (void)pushMappingContext:(id)context;
- (void)varyInThemeStylesheetForDurationOfBlock:(id)block;
- (void)varyInThemeStylesheetIf:(BOOL)if forDurationOfBlock:(id)block;
@end

@implementation TSSStyleMapper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSSStyleMapper;
  [(TSSStyleMapper *)&v3 dealloc];
}

- (TSSStyleMapper)initWithTargetStylesheet:(id)stylesheet newStyleDOLCContext:(id)context
{
  v6 = [(TSSStyleMapper *)self init];
  if (v6)
  {
    v6->_targetStylesheet = stylesheet;
    v6->_targetThemeStylesheet = [stylesheet parent];
    v6->_dolcContext = context;
    v6->_forceMatchStyle = 0;
  }

  return v6;
}

- (TSSStylesheet)targetStylesheet
{
  v2 = 8;
  if (self->_varyInThemeStylesheet)
  {
    v2 = 16;
  }

  return *(&self->super.isa + v2);
}

- (void)pushMappingContext:(id)context
{
  mappingContext = self->_mappingContext;
  if (!mappingContext)
  {
    mappingContext = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_mappingContext = mappingContext;
  }

  [(NSMutableArray *)mappingContext addObject:context];
}

- (void)popMappingContext:(id)context
{
  mappingContext = self->_mappingContext;
  if (mappingContext && [(NSMutableArray *)mappingContext count])
  {
    v5 = self->_mappingContext;

    [(NSMutableArray *)v5 removeLastObject];
  }
}

- (id)pCascadedFindExistingRootlessStyle:(id)style propertyMap:(id)map
{
  result = [(TSSStylesheet *)self->_targetStylesheet firstRootlessStyleOfClass:objc_opt_class() withOverridePropertyMap:map];
  if (!result)
  {
    targetThemeStylesheet = self->_targetThemeStylesheet;
    if (targetThemeStylesheet)
    {
      v8 = objc_opt_class();

      return [(TSSStylesheet *)targetThemeStylesheet firstRootlessStyleOfClass:v8 withOverridePropertyMap:map];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)createStyleForStyle:(id)style withPropertyMap:(id)map
{
  v5 = [objc_alloc(objc_opt_class()) initWithContext:-[TSPObject context](self->_targetStylesheet name:"context") overridePropertyMap:0 isVariation:{map, 0}];
  [(TSSStylesheet *)self->_targetStylesheet addStyle:v5];

  return v5;
}

- (id)pTargetParentForStyle:(id)style withParentIdentifier:(id)identifier
{
  result = [(TSSStylesheet *)self->_targetStylesheet cascadedStyleWithIdentifier:identifier];
  if (!result)
  {
    if ([String(identifier) isEqualToString:@"imported"])
    {
      return 0;
    }

    else
    {
      result = String(identifier);
      if (result)
      {
        v7 = result;
        result = String(identifier);
        if (result)
        {
          targetStylesheet = self->_targetStylesheet;
          v9 = String(v7, 0, result);

          return [(TSSStylesheet *)targetStylesheet cascadedStyleWithIdentifier:v9 componentMask:7];
        }
      }
    }
  }

  return result;
}

- (id)_mappedStyleForStyle:(id)style depth:(unint64_t)depth
{
  v29 = *MEMORY[0x277D85DE8];
  if (!style)
  {
    return 0;
  }

  styleMap = self->_styleMap;
  if (!styleMap)
  {
    styleMap = objc_alloc_init(MEMORY[0x277D6C368]);
  }

  self->_styleMap = styleMap;
  stylesheet = [style stylesheet];
  if (stylesheet == self->_targetStylesheet && !self->_varyInThemeStylesheet || stylesheet == self->_targetThemeStylesheet)
  {
    return style;
  }

  v9 = [(TSURetainedPointerKeyDictionary *)self->_styleMap objectForKeyedSubscript:style];
  if (!v9)
  {
    v10 = [TSSStylePromise promiseForStyle:style];
    [(TSURetainedPointerKeyDictionary *)self->_styleMap setObject:v10 forKeyedSubscript:style];
    v11 = objc_opt_new();
    propertyMap = [style propertyMap];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __45__TSSStyleMapper__mappedStyleForStyle_depth___block_invoke;
    v27[3] = &unk_279D481A8;
    v27[4] = self;
    v27[5] = v11;
    v27[6] = propertyMap;
    v27[7] = depth;
    [propertyMap enumeratePropertiesAndObjectsUsingBlock:v27];
    v13 = [objc_msgSend(style "rootIdentifiedAncestor")];
    if (v13 && (v14 = [(TSSStyleMapper *)self pTargetParentForStyle:style withParentIdentifier:v13]) != 0)
    {
      v9 = v14;
      if (self->_forceMatchStyle)
      {
        goto LABEL_19;
      }

      v15 = 8;
      if (self->_varyInThemeStylesheet)
      {
        v15 = 16;
      }

      v16 = *(&self->super.isa + v15);
      [propertyMap filterWithProperties:{objc_msgSend(objc_opt_class(), "properties")}];
      v17 = [v16 variationOfStyle:v9 propertyMap:propertyMap];
    }

    else
    {
      v9 = [(TSSStyleMapper *)self pCascadedFindExistingRootlessStyle:style propertyMap:propertyMap];
      if (v9)
      {
        goto LABEL_19;
      }

      v17 = [(TSSStyleMapper *)self createStyleForStyle:style withPropertyMap:propertyMap];
    }

    v9 = v17;
    if (!v17)
    {
LABEL_27:

      return v9;
    }

LABEL_19:
    [(TSURetainedPointerKeyDictionary *)self->_styleMap setObject:v9 forKeyedSubscript:style];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v23 + 1) + 8 * i) addPromisee:v9];
        }

        v19 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v19);
    }

    [v10 fulfillWithStyle:v9];
    goto LABEL_27;
  }

  return v9;
}

uint64_t __45__TSSStyleMapper__mappedStyleForStyle_depth___block_invoke(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (!a3)
  {
    v6 = result;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v7 = [*(v6 + 32) _mappedStyleForStyle:a4 depth:*(v6 + 56) + 1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(v6 + 40) addObject:v7];
      }

      v8 = *(v6 + 48);

      return [v8 setObject:v7 forProperty:a2];
    }
  }

  return result;
}

- (id)mappedStyleForStyle:(id)style inThemeStylesheet:(BOOL)stylesheet
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  if (stylesheet)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__TSSStyleMapper_mappedStyleForStyle_inThemeStylesheet___block_invoke;
    v6[3] = &unk_279D481D0;
    v6[5] = style;
    v6[6] = &v7;
    v6[4] = self;
    [(TSSStyleMapper *)self varyInThemeStylesheetForDurationOfBlock:v6];
    v4 = v8[5];
  }

  else
  {
    v4 = [(TSSStyleMapper *)self mappedStyleForStyle:style];
    v8[5] = v4;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __56__TSSStyleMapper_mappedStyleForStyle_inThemeStylesheet___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) mappedStyleForStyle:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (void)varyInThemeStylesheetForDurationOfBlock:(id)block
{
  if (self->_varyInThemeStylesheet)
  {
    v4 = *(block + 2);

    v4(block);
  }

  else
  {
    self->_varyInThemeStylesheet = 1;
    [(TSSStylesheet *)self->_targetThemeStylesheet setIsLocked:0];
    (*(block + 2))(block);
    [(TSSStylesheet *)self->_targetThemeStylesheet setIsLocked:1];
    self->_varyInThemeStylesheet = 0;
  }
}

- (void)varyInThemeStylesheetIf:(BOOL)if forDurationOfBlock:(id)block
{
  if (if)
  {
    [(TSSStyleMapper *)self varyInThemeStylesheetForDurationOfBlock:block];
  }

  else
  {
    (*(block + 2))(block);
  }
}

@end