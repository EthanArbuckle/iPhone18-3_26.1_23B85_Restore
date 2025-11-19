@interface SKUIImageViewElement
- (BOOL)isEnabled;
- (BOOL)rendersWithParallax;
- (BOOL)rendersWithPerspective;
- (CGSize)layerShadowOffset;
- (CGSize)shadowOffset;
- (CGSize)size;
- (NSString)resourceName;
- (NSURL)URL;
- (SKUIImageViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)accessibilityText;
- (id)applyUpdatesWithElement:(id)a3;
- (id)entityValueProperties;
- (id)resourceCacheKey;
- (id)uniquingMapKey;
- (void)_loadEntityValuesIfNeeded;
- (void)entityValueProviderDidChange;
@end

@implementation SKUIImageViewElement

- (SKUIImageViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        [(SKUIImageViewElement *)v11 initWithDOMElement:v12 parent:v13 elementFactory:v14, v15, v16, v17, v18];
      }
    }
  }

  v54.receiver = self;
  v54.super_class = SKUIImageViewElement;
  v19 = [(SKUIViewElement *)&v54 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v19)
  {
    if (initWithDOMElement_parent_elementFactory__sOnce != -1)
    {
      [SKUIImageViewElement initWithDOMElement:parent:elementFactory:];
    }

    v20 = [v8 getAttribute:@"srcset"];
    v21 = [v8 getAttribute:@"src"];
    if ([v21 length])
    {
      v22 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v21];
      url = v19->_url;
      v19->_url = v22;
    }

    else if ([v20 length])
    {
      v53[0] = 0;
      v53[1] = v53;
      v53[2] = 0x2020000000;
      v53[3] = 0;
      v47 = 0;
      v48 = &v47;
      v49 = 0x3032000000;
      v50 = __Block_byref_object_copy__9;
      v51 = __Block_byref_object_dispose__9;
      v52 = 0;
      v24 = initWithDOMElement_parent_elementFactory__sSrcSetRegularExpression;
      v25 = [v20 length];
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = __65__SKUIImageViewElement_initWithDOMElement_parent_elementFactory___block_invoke_13;
      v43 = &unk_2781FA420;
      v44 = v20;
      v45 = v53;
      v46 = &v47;
      [v24 enumerateMatchesInString:v44 options:0 range:0 usingBlock:{v25, &v40}];
      objc_storeStrong(&v19->_url, v48[5]);

      _Block_object_dispose(&v47, 8);
      _Block_object_dispose(v53, 8);
    }

    v26 = [(NSURL *)v19->_url scheme:v40];
    v27 = [v26 isEqualToString:@"resource"];

    if (v27)
    {
      v28 = [(NSURL *)v19->_url host];
      resourceName = v19->_resourceName;
      v19->_resourceName = v28;

      v30 = v19->_url;
      v19->_url = 0;
    }

    v31 = [v8 getAttribute:@"height"];
    v32 = [v8 getAttribute:@"width"];
    if ([v31 length] && objc_msgSend(v32, "length"))
    {
      [v31 doubleValue];
      v19->_size.height = v33;
      [v32 doubleValue];
      v19->_size.width = v34;
    }

    v35 = [v8 getAttribute:@"alt"];
    alt = v19->_alt;
    v19->_alt = v35;

    v37 = [v8 getAttribute:@"disabled"];
    if ([v37 length])
    {
      v38 = [v37 BOOLValue] ^ 1;
    }

    else
    {
      v38 = -1;
    }

    v19->_enabled = v38;
  }

  return v19;
}

uint64_t __65__SKUIImageViewElement_initWithDOMElement_parent_elementFactory___block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 scale];
  initWithDOMElement_parent_elementFactory__sScreenScale = v1;

  v2 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"([^ options:]+) +([^ error:{]+)", 0, 0}];
  v3 = initWithDOMElement_parent_elementFactory__sSrcSetRegularExpression;
  initWithDOMElement_parent_elementFactory__sSrcSetRegularExpression = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void __65__SKUIImageViewElement_initWithDOMElement_parent_elementFactory___block_invoke_13(void *a1, void *a2, uint64_t a3, BOOL *a4)
{
  v20 = a2;
  v6 = [v20 numberOfRanges] == 3;
  v7 = v20;
  if (v6)
  {
    v8 = a1[4];
    v9 = [v20 rangeAtIndex:2];
    v11 = [v8 substringWithRange:{v9, v10}];
    v12 = [v11 integerValue];

    v13 = objc_alloc(MEMORY[0x277CBEBC0]);
    v14 = a1[4];
    v15 = [v20 rangeAtIndex:1];
    v17 = [v14 substringWithRange:{v15, v16}];
    v18 = [v13 initWithString:v17];

    if (v18)
    {
      v19 = *(a1[5] + 8);
      if (v12 > *(v19 + 24))
      {
        *(v19 + 24) = v12;
        objc_storeStrong((*(a1[6] + 8) + 40), v18);
        *a4 = v12 == initWithDOMElement_parent_elementFactory__sScreenScale;
      }
    }

    v7 = v20;
  }
}

- (id)resourceCacheKey
{
  resourceCacheKey = self->_resourceCacheKey;
  if (!resourceCacheKey)
  {
    v4 = [SKUIImageViewElementCacheKey alloc];
    v5 = [(SKUIImageViewElement *)self URL];
    [(SKUIImageViewElement *)self size];
    v7 = v6;
    v9 = v8;
    v10 = [(SKUIImageViewElement *)self style];
    v11 = [v10 imageTreatment];
    v12 = [(SKUIImageViewElementCacheKey *)v4 initWithURL:v5 size:v11 imageTreatment:v7, v9];
    v13 = self->_resourceCacheKey;
    self->_resourceCacheKey = v12;

    resourceCacheKey = self->_resourceCacheKey;
  }

  return resourceCacheKey;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  v4 = [(SKUIImageViewElement *)self style];
  v5 = [v4 maxHeight];
  v6 = [v4 maxWidth];
  v7 = v6;
  if (v5 && v6)
  {
    [v5 floatValue];
    height = v8;
    [v7 floatValue];
    width = v9;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)accessibilityText
{
  alt = self->_alt;
  if (alt)
  {
    v3 = alt;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SKUIImageViewElement;
    v3 = [(SKUIImageViewElement *)&v5 accessibilityText];
  }

  return v3;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SKUIImageViewElement;
  v5 = [(SKUIViewElement *)&v23 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v5 != self)
  {
    if (([(NSURL *)v5->_url isEqual:self->_url]& 1) != 0)
    {
      goto LABEL_8;
    }

    v7 = [SKUIImageViewElementCacheKey alloc];
    url = self->_url;
    p_size = &self->_size;
    v10 = [(SKUIImageViewElement *)self style];
    v11 = [v10 imageTreatment];
    v12 = [(SKUIImageViewElementCacheKey *)v7 initWithURL:url size:v11 imageTreatment:p_size->width, p_size->height];
    transientResourceCacheKey = v6->_transientResourceCacheKey;
    v6->_transientResourceCacheKey = v12;

    goto LABEL_7;
  }

  if (v4 != self && v4)
  {
    v14 = [(NSString *)v4->_alt copy];
    alt = self->_alt;
    self->_alt = v14;

    resourceCacheKey = self->_resourceCacheKey;
    self->_resourceCacheKey = 0;

    v17 = [(SKUIImageViewElement *)v4 resourceName];
    resourceName = self->_resourceName;
    self->_resourceName = v17;

    [(SKUIImageViewElement *)v4 size];
    self->_size.width = v19;
    self->_size.height = v20;
    v21 = [(SKUIImageViewElement *)v4 URL];
    v10 = self->_url;
    self->_url = v21;
LABEL_7:
  }

LABEL_8:

  return v6;
}

- (id)entityValueProperties
{
  v2 = [(SKUIImageViewElement *)self attributes];
  v3 = [v2 objectForKey:@"valueProperty"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)entityValueProviderDidChange
{
  v5.receiver = self;
  v5.super_class = SKUIImageViewElement;
  [(SKUIViewElement *)&v5 entityValueProviderDidChange];
  self->_hasValidEntityValues = 0;
  entityResourceName = self->_entityResourceName;
  self->_entityResourceName = 0;

  entityURL = self->_entityURL;
  self->_entityURL = 0;
}

- (BOOL)isEnabled
{
  enabled = self->_enabled;
  if (enabled != 255)
  {
    return enabled != 0;
  }

  v14 = v2;
  v15 = v3;
  v6 = [(SKUIImageViewElement *)self style];
  v7 = [v6 imageTreatment];
  v8 = SKUIImageTreatmentForString(v7);

  if (v8 == 8)
  {
    return 0;
  }

  v9 = [(SKUIImageViewElement *)self style];
  v10 = [v9 imageTreatment];
  v11 = SKUIImageTreatmentForString(v10);

  if (v11 == 9)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = SKUIImageViewElement;
  return [(SKUIViewElement *)&v13 isEnabled];
}

- (BOOL)rendersWithPerspective
{
  v2 = [(SKUIImageViewElement *)self style];
  v3 = [v2 imageTreatment];
  v4 = SKUIImageTreatmentForString(v3);

  return v4 == 7;
}

- (BOOL)rendersWithParallax
{
  v2 = [(SKUIImageViewElement *)self style];
  v3 = [v2 imageTreatment];
  v4 = SKUIImageTreatmentForString(v3);

  return v4 == 13;
}

- (id)uniquingMapKey
{
  [(SKUIImageViewElement *)self _loadEntityValuesIfNeeded];
  entityURL = self->_entityURL;
  if (entityURL || (entityURL = self->_entityResourceName) != 0)
  {
    v4 = entityURL;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SKUIImageViewElement;
    v4 = [(SKUIViewElement *)&v6 uniquingMapKey];
  }

  return v4;
}

- (NSString)resourceName
{
  [(SKUIImageViewElement *)self _loadEntityValuesIfNeeded];
  entityResourceName = self->_entityResourceName;
  if (!entityResourceName)
  {
    entityResourceName = self->_resourceName;
  }

  return entityResourceName;
}

- (NSURL)URL
{
  [(SKUIImageViewElement *)self _loadEntityValuesIfNeeded];
  entityURL = self->_entityURL;
  if (!entityURL)
  {
    entityURL = self->_url;
  }

  return entityURL;
}

- (void)_loadEntityValuesIfNeeded
{
  if (!self->_hasValidEntityValues)
  {
    self->_hasValidEntityValues = 1;
    v4 = [(SKUIViewElement *)self entityValueProvider];
    if (v4)
    {
      v5 = [(SKUIImageViewElement *)self attributes];
      v6 = [v5 objectForKey:@"valueProperty"];

      if (v6)
      {
        v7 = [MEMORY[0x277D759A0] mainScreen];
        [v7 scale];
        v9 = [v4 imageURLForEntityArtworkProperty:v6 fittingSize:self->_size.width destinationScale:{self->_size.height, v8}];

        v10 = [(NSURL *)v9 scheme];
        v11 = [v10 isEqualToString:@"resource"];

        if (v11)
        {
          v12 = [(NSURL *)v9 host];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
        v9 = 0;
      }
    }

    else
    {
      v12 = 0;
      v9 = 0;
    }

    entityURL = self->_entityURL;
    self->_entityURL = v9;
    v17 = v9;

    entityResourceName = self->_entityResourceName;
    self->_entityResourceName = v12;
    v15 = v12;

    resourceCacheKey = self->_resourceCacheKey;
    self->_resourceCacheKey = 0;
  }
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)layerShadowOffset
{
  width = self->_layerShadowOffset.width;
  height = self->_layerShadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end