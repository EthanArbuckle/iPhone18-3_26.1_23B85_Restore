@interface RUIElement
- (BOOL)_isAppInstalledWithIdentifier:(id)identifier;
- (BOOL)_loadSystemImageFromIconServicesWithName:(id)name symbolColor:(id)color enclosureColor:(id)enclosureColor;
- (BOOL)hasImage;
- (BOOL)isDeprecatedForInternalAnalytics;
- (BOOL)loadImage;
- (BOOL)loadImageFromBundleIdentifier;
- (BOOL)loadImageFromImageURL;
- (BOOL)loadImageFromTypeIdentifier;
- (BOOL)loadSystemImage;
- (CGSize)_systemImageSize;
- (OpaqueJSClass)_JSClass;
- (OpaqueJSValue)JSValueForContext:(OpaqueJSContext *)context;
- (RUIElement)init;
- (RUIElement)initWithAttributes:(id)attributes parent:(id)parent;
- (RUIElement)parent;
- (RUIStyle)style;
- (id)URLAttributeForImageName:(id)name getScale:(double *)scale;
- (id)_imageDescriptor;
- (id)_ruielement_staticFunctions;
- (id)_ruielement_staticValues;
- (id)_symbolConfigurationWithRenderingMode:(id)mode tintColor:(id)color;
- (id)customSymbolImageNamed:(id)named symbolRenderingMode:(id)mode tintColor:(id)color;
- (id)image:(id)image size:(CGSize)size;
- (id)mutableAttributes;
- (id)pageElement;
- (id)sourceURL;
- (id)systemImageNamed:(id)named symbolRenderingMode:(id)mode tintColor:(id)color;
- (id)textStyleWithString:(id)string;
- (unint64_t)_horizontalAlignmentForString:(id)string;
- (void)_loadImageWithIcon:(id)icon descriptor:(id)descriptor;
- (void)configureAccessiblityWithTarget:(id)target;
- (void)dealloc;
- (void)imageLoaded:(id)loaded;
- (void)performAction:(int)action forElement:(id)element completion:(id)completion;
- (void)reportInternalRenderEvent;
- (void)reportInternalRenderEventWithElementName:(id)name;
- (void)reportInternalRenderEventWithElementName:(id)name deprecated:(BOOL)deprecated;
- (void)setAttributes:(id)attributes;
@end

@implementation RUIElement

- (OpaqueJSClass)_JSClass
{
  v3 = _JSClass_cache;
  if (!_JSClass_cache)
  {
    v4 = objc_opt_new();
    v5 = _JSClass_cache;
    _JSClass_cache = v4;

    v3 = _JSClass_cache;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 objectForKeyedSubscript:v7];

  if (v8)
  {
    pointerValue = [v8 pointerValue];
  }

  else
  {
    v10 = [(RUIElement *)self _ruielement_staticValues:*MEMORY[0x277CD4678]];
    v11 = [v10 mutableCopy];

    staticValues = [(RUIElement *)self staticValues];
    [v11 addObjectsFromArray:staticValues];

    v13 = malloc_type_malloc(32 * [v11 count] + 32, 0x10D004053594A2BuLL);
    if ([v11 count])
    {
      v14 = 0;
      p_setProperty = &v13->setProperty;
      do
      {
        v16 = [v11 objectAtIndexedSubscript:v14];
        *(p_setProperty - 2) = [v16 identifier];

        v17 = [v11 objectAtIndexedSubscript:v14];
        *(p_setProperty - 1) = [v17 getter];

        v18 = [v11 objectAtIndexedSubscript:v14];
        *p_setProperty = [v18 setter];

        v19 = [v11 objectAtIndexedSubscript:v14];
        *(p_setProperty + 2) = [v19 JSPropertyAttributes];

        ++v14;
        p_setProperty += 4;
      }

      while (v14 < [v11 count]);
    }

    v20 = &v13[[v11 count]];
    *&v20->name = 0u;
    *&v20->setProperty = 0u;
    v36.staticValues = v13;
    _ruielement_staticFunctions = [(RUIElement *)self _ruielement_staticFunctions];
    v22 = [_ruielement_staticFunctions mutableCopy];

    staticFunctions = [(RUIElement *)self staticFunctions];
    [v22 addObjectsFromArray:staticFunctions];

    v24 = malloc_type_malloc(24 * [v22 count] + 24, 0x10D00402EF37E45uLL);
    if ([v22 count])
    {
      v25 = 0;
      p_attributes = &v24->attributes;
      do
      {
        v27 = [v22 objectAtIndexedSubscript:v25];
        *(p_attributes - 2) = [v27 identifier];

        v28 = [v22 objectAtIndexedSubscript:v25];
        *(p_attributes - 1) = [v28 function];

        v29 = [v22 objectAtIndexedSubscript:v25];
        *p_attributes = [v29 JSPropertyAttributes];
        p_attributes += 6;

        ++v25;
      }

      while (v25 < [v22 count]);
    }

    v30 = &v24[[v22 count]];
    v30->callAsFunction = 0;
    *&v30->attributes = 0;
    v30->name = 0;
    v36.staticFunctions = v24;
    v36.initialize = RUIJSElement_initialize;
    v36.finalize = RUIJSElement_finalize;
    pointerValue = JSClassCreate(&v36);
    v31 = [MEMORY[0x277CCAE60] valueWithPointer:pointerValue];
    v32 = _JSClass_cache;
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    [v32 setObject:v31 forKeyedSubscript:v34];

    free(v13);
    free(v24);
  }

  return pointerValue;
}

- (OpaqueJSValue)JSValueForContext:(OpaqueJSContext *)context
{
  selfCopy = self;
  _JSClass = [(RUIElement *)selfCopy _JSClass];

  return JSObjectMake(context, _JSClass, selfCopy);
}

- (id)_ruielement_staticValues
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setIdentifier:"identifier"];
  [v2 setGetter:RUIJSElement_getProperty];
  [v2 setSetter:0];
  [v2 setJSPropertyAttributes:10];
  v3 = objc_opt_new();
  [v3 setIdentifier:"page"];
  [v3 setGetter:RUIJSElement_getProperty];
  [v3 setSetter:0];
  [v3 setJSPropertyAttributes:10];
  v4 = objc_opt_new();
  [v4 setIdentifier:"body"];
  [v4 setGetter:RUIJSElement_getProperty];
  [v4 setSetter:RUIJSElement_setProperty];
  [v4 setJSPropertyAttributes:8];
  v5 = objc_opt_new();
  [v5 setIdentifier:"enabled"];
  [v5 setGetter:RUIJSElement_getProperty];
  [v5 setSetter:RUIJSElement_setProperty];
  [v5 setJSPropertyAttributes:8];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];

  return v6;
}

- (id)_ruielement_staticFunctions
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setIdentifier:"activate"];
  [v2 setFunction:RUIJSElement_activate];
  [v2 setJSPropertyAttributes:0];
  v3 = objc_opt_new();
  [v3 setIdentifier:"getAttribute"];
  [v3 setFunction:RUIJSElement_getAttribute];
  [v3 setJSPropertyAttributes:0];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (RUIElement)initWithAttributes:(id)attributes parent:(id)parent
{
  attributesCopy = attributes;
  parentCopy = parent;
  v12.receiver = self;
  v12.super_class = RUIElement;
  v8 = [(RUIElement *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_enabled = 1;
    objc_storeWeak(&v8->_parent, parentCopy);
    v10 = [attributesCopy objectForKeyedSubscript:@"disabled"];
    -[RUIElement setEnabled:](v9, "setEnabled:", [v10 BOOLValue] ^ 1);

    [(RUIElement *)v9 setAttributes:attributesCopy];
  }

  return v9;
}

- (RUIElement)init
{
  v3.receiver = self;
  v3.super_class = RUIElement;
  result = [(RUIElement *)&v3 init];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

- (void)performAction:(int)action forElement:(id)element completion:(id)completion
{
  v6 = *&action;
  v17 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  completionCopy = completion;
  parent = [(RUIElement *)self parent];

  if (parent)
  {
    parent2 = [(RUIElement *)self parent];
    [parent2 performAction:v6 forElement:elementCopy completion:completionCopy];
  }

  else
  {
    if (_isInternalInstall())
    {
      v12 = _RUILoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14[0] = 67109378;
        v14[1] = v6;
        v15 = 2112;
        v16 = elementCopy;
        _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "Dropping action %i on the floor for element %@", v14, 0x12u);
      }
    }

    if (completionCopy)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.RemoteUI" code:2 userInfo:0];
      completionCopy[2](completionCopy, 0, v13);
    }
  }
}

- (void)setAttributes:(id)attributes
{
  if (self->_attributes != attributes)
  {
    v5 = [attributes mutableCopy];
    attributes = self->_attributes;
    self->_attributes = v5;

    v7 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:@"id"];
    [(RUIElement *)self setIdentifier:v7];
  }
}

- (id)mutableAttributes
{
  attributes = self->_attributes;
  if (!attributes)
  {
    v4 = objc_opt_new();
    v5 = self->_attributes;
    self->_attributes = v4;

    attributes = self->_attributes;
  }

  return attributes;
}

- (void)dealloc
{
  v3 = +[RUIImageLoader sharedImageLoader];
  notificationCenter = [v3 notificationCenter];
  [notificationCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = RUIElement;
  [(RUIElement *)&v5 dealloc];
}

- (id)sourceURL
{
  parent = [(RUIElement *)self parent];
  sourceURL = [parent sourceURL];

  return sourceURL;
}

- (id)pageElement
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    parent = [(RUIElement *)self parent];
    selfCopy = [parent pageElement];
  }

  return selfCopy;
}

- (RUIStyle)style
{
  style = self->_style;
  if (style)
  {
    style = style;
  }

  else
  {
    parent = [(RUIElement *)self parent];
    style = [parent style];
  }

  return style;
}

- (id)URLAttributeForImageName:(id)name getScale:(double *)scale
{
  v39[3] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = v8;

  v38[0] = &unk_282D7AD58;
  v38[1] = &unk_282D7AD68;
  v39[0] = @"3x";
  v39[1] = @"2x";
  v38[2] = &unk_282D7AD78;
  v39[2] = &stru_282D68F58;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (!v12)
  {
LABEL_6:
    allKeys = [v10 allKeys];
    v17 = [allKeys sortedArrayUsingComparator:&__block_literal_global_8];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v17;
    v18 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      scaleCopy = scale;
      v32 = v12;
      v20 = *v34;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v13);
          }

          v22 = *(*(&v33 + 1) + 8 * i);
          v23 = [v10 objectForKeyedSubscript:{v22, scaleCopy}];
          v24 = [nameCopy stringByAppendingString:v23];

          v25 = [(NSMutableDictionary *)self->_attributes objectForKey:v24];
          if (v25)
          {
            v15 = v25;
            if (scaleCopy)
            {
              [v22 doubleValue];
              *scaleCopy = v26;
            }

            goto LABEL_18;
          }
        }

        v19 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      v15 = 0;
LABEL_18:
      v12 = v32;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_21;
  }

  v13 = [nameCopy stringByAppendingString:v12];
  v14 = [(NSMutableDictionary *)self->_attributes objectForKey:v13];
  v15 = v14;
  if (!scale || !v14)
  {

    if (v15)
    {
      goto LABEL_22;
    }

    goto LABEL_6;
  }

  *scale = v9;
LABEL_21:

LABEL_22:
  if ([v15 length])
  {
    v27 = [v15 stringByAddingPercentEscapesUsingEncoding:4];

    sourceURL = [(RUIElement *)self sourceURL];
    if (sourceURL)
    {
      [MEMORY[0x277CBEBC0] URLWithString:v27 relativeToURL:sourceURL];
    }

    else
    {
      [MEMORY[0x277CBEBC0] URLWithString:v27];
    }
    v29 = ;
  }

  else
  {
    v29 = 0;
    v27 = v15;
  }

  return v29;
}

- (unint64_t)_horizontalAlignmentForString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    lowercaseString = [stringCopy lowercaseString];
    if ([lowercaseString isEqualToString:@"left"])
    {
      v5 = 1;
    }

    else if ([lowercaseString isEqualToString:@"center"])
    {
      v5 = 2;
    }

    else if ([lowercaseString isEqualToString:@"right"])
    {
      v5 = 3;
    }

    else
    {
      NSLog(&cfstr_WarningUnrecog.isa, stringCopy);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)imageLoaded:(id)loaded
{
  v12 = -1.0;
  v4 = [(RUIElement *)self URLAttributeForImageName:@"image" getScale:&v12];
  if (v4)
  {
    v5 = +[RUIImageLoader sharedImageLoader];
    v6 = [v5 imageForURL:v4 loadIfAbsent:0];
    if (v6)
    {
      v7 = [MEMORY[0x277D755B8] imageWithCGImage:v6 scale:0 orientation:v12];
      [(RUIElement *)self setImage:v7];
    }

    notificationCenter = [v5 notificationCenter];
    v9 = RUIImageLoaderDidLoadImageNotification;
    absoluteString = [v4 absoluteString];
    v11 = [(__CFString *)v9 stringByAppendingString:absoluteString];
    [notificationCenter removeObserver:self name:v11 object:0];
  }
}

- (BOOL)hasImage
{
  v3 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:@"imageBundleIdentifier"];
  if (v3 && [(RUIElement *)self _isAppInstalledWithIdentifier:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:@"imageTypeIdentifier"];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:@"systemImage"];
      if (v6)
      {
        v4 = 1;
      }

      else
      {
        v7 = [(RUIElement *)self URLAttributeForImageName:@"image" getScale:0];
        v4 = v7 != 0;
      }
    }
  }

  return v4;
}

- (BOOL)_isAppInstalledWithIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  v3 = MEMORY[0x277CC1E80];
  identifierCopy = identifier;
  defaultWorkspace = [v3 defaultWorkspace];
  v6 = [defaultWorkspace applicationIsInstalled:identifierCopy];

  return v6;
}

- (BOOL)loadImage
{
  if ([(RUIElement *)self loadImageFromBundleIdentifier]|| [(RUIElement *)self loadImageFromTypeIdentifier]|| [(RUIElement *)self loadSystemImage])
  {
    return 1;
  }

  return [(RUIElement *)self loadImageFromImageURL];
}

- (id)_symbolConfigurationWithRenderingMode:(id)mode tintColor:(id)color
{
  v12[1] = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  colorCopy = color;
  if ([modeCopy isEqualToString:@"hierarchical"])
  {
    v7 = [MEMORY[0x277D755D0] configurationWithHierarchicalColor:colorCopy];
LABEL_3:
    v8 = v7;
    goto LABEL_6;
  }

  if (![modeCopy isEqualToString:@"palette"])
  {
    if ([modeCopy isEqualToString:@"monochrome"])
    {
      [MEMORY[0x277D755D0] configurationPreferringMonochrome];
    }

    else
    {
      [MEMORY[0x277D755D0] unspecifiedConfiguration];
    }
    v7 = ;
    goto LABEL_3;
  }

  v9 = MEMORY[0x277D755D0];
  v12[0] = colorCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v9 configurationWithPaletteColors:v10];

LABEL_6:

  return v8;
}

- (id)systemImageNamed:(id)named symbolRenderingMode:(id)mode tintColor:(id)color
{
  v7 = MEMORY[0x277D755B8];
  if (color)
  {
    modeCopy = mode;
    namedCopy = named;
    tintColor = [(RUIElement *)self _symbolConfigurationWithRenderingMode:modeCopy tintColor:color];

    v12 = [v7 _systemImageNamed:namedCopy withConfiguration:tintColor];
  }

  else
  {
    v13 = MEMORY[0x277D75348];
    modeCopy2 = mode;
    namedCopy2 = named;
    tintColor = [v13 tintColor];
    namedCopy = [(RUIElement *)self _symbolConfigurationWithRenderingMode:modeCopy2 tintColor:tintColor];

    v12 = [v7 _systemImageNamed:namedCopy2 withConfiguration:namedCopy];
  }

  return v12;
}

- (id)customSymbolImageNamed:(id)named symbolRenderingMode:(id)mode tintColor:(id)color
{
  colorCopy = color;
  v8 = MEMORY[0x277D755B8];
  v9 = MEMORY[0x277CCA8D8];
  namedCopy = named;
  v11 = [v9 bundleForClass:objc_opt_class()];
  v12 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:@"symbolRenderingMode"];
  if (colorCopy)
  {
    tintColor = [(RUIElement *)self _symbolConfigurationWithRenderingMode:v12 tintColor:colorCopy];
    v14 = [v8 imageNamed:namedCopy inBundle:v11 withConfiguration:tintColor];
  }

  else
  {
    tintColor = [MEMORY[0x277D75348] tintColor];
    v15 = [(RUIElement *)self _symbolConfigurationWithRenderingMode:v12 tintColor:tintColor];
    v14 = [v8 imageNamed:namedCopy inBundle:v11 withConfiguration:v15];

    namedCopy = v15;
  }

  return v14;
}

- (BOOL)loadImageFromBundleIdentifier
{
  v3 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:@"imageBundleIdentifier"];
  if (v3 && [(RUIElement *)self _isAppInstalledWithIdentifier:v3])
  {
    v4 = [objc_alloc(MEMORY[0x277D1B1B0]) initWithBundleIdentifier:v3];
    _imageDescriptor = [(RUIElement *)self _imageDescriptor];
    [(RUIElement *)self _loadImageWithIcon:v4 descriptor:_imageDescriptor];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)loadImageFromTypeIdentifier
{
  v3 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:@"imageTypeIdentifier"];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D1B1B0]) initWithType:v3];
    _imageDescriptor = [(RUIElement *)self _imageDescriptor];
    [(RUIElement *)self _loadImageWithIcon:v4 descriptor:_imageDescriptor];
  }

  return v3 != 0;
}

- (void)_loadImageWithIcon:(id)icon descriptor:(id)descriptor
{
  iconCopy = icon;
  descriptorCopy = descriptor;
  v8 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RUIElement__loadImageWithIcon_descriptor___block_invoke;
  block[3] = &unk_2782E8B08;
  v12 = iconCopy;
  v13 = descriptorCopy;
  selfCopy = self;
  v9 = descriptorCopy;
  v10 = iconCopy;
  dispatch_async(v8, block);
}

void __44__RUIElement__loadImageWithIcon_descriptor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) prepareImageForDescriptor:*(a1 + 40)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RUIElement__loadImageWithIcon_descriptor___block_invoke_2;
  block[3] = &unk_2782E8B08;
  v7 = v2;
  v5 = *(a1 + 40);
  v3 = v5.i64[0];
  v8 = vextq_s8(v5, v5, 8uLL);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__RUIElement__loadImageWithIcon_descriptor___block_invoke_2(id *a1)
{
  v6 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:{objc_msgSend(a1[4], "CGImage")}];
  [a1[5] setImage:?];
  v2 = a1[5];
  [a1[6] size];
  [v2 setImageSize:?];
  v3 = [*(a1[5] + 1) objectForKey:@"imageAlign"];

  if (v3)
  {
    v4 = a1[5];
    v5 = [v4[1] objectForKey:@"imageAlign"];
    [v4 setImageAlignment:{objc_msgSend(v4, "_horizontalAlignmentForString:", v5)}];
  }
}

- (id)_imageDescriptor
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageWidth"];
  if ([v5 length])
  {
    v6 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageHeight"];
    v7 = [v6 length];

    v8 = v4;
    v9 = v3;
    if (!v7)
    {
      goto LABEL_6;
    }

    v10 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageWidth"];
    [v10 floatValue];
    v9 = v11;

    v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageHeight"];
    [v5 floatValue];
    v8 = v12;
  }

  else
  {
    v8 = v4;
    v9 = v3;
  }

LABEL_6:
  if (v9 == v3 && v8 == v4)
  {
    v17 = objc_alloc_init(MEMORY[0x277D1B1D0]);
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v16 = v15;

    v17 = [objc_alloc(MEMORY[0x277D1B1D0]) initWithSize:v9 scale:{v8, v16}];
  }

  return v17;
}

- (BOOL)loadSystemImage
{
  v3 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:@"systemImage"];
  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:@"imageTintColor"];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:@"tintColor"];
    }

    v8 = v6;

    if ([v8 length])
    {
      v9 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v8];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(NSMutableDictionary *)self->_attributes objectForKey:@"symbolColor"];
    if ([v10 length])
    {
      v11 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v10];
    }

    else
    {
      v11 = 0;
    }

    v12 = [(NSMutableDictionary *)self->_attributes objectForKey:@"enclosureColor"];
    if ([v12 length])
    {
      v13 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v12];
    }

    else
    {
      v13 = 0;
    }

    if (v11 | v13)
    {
      v7 = [(RUIElement *)self _loadSystemImageFromIconServicesWithName:v3 symbolColor:v11 enclosureColor:v13];
LABEL_33:

      goto LABEL_34;
    }

    v33 = v8;
    v14 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:@"symbolRenderingMode"];
    v15 = [(RUIElement *)self systemImageNamed:v3 symbolRenderingMode:v14 tintColor:v9];

    if (!v15)
    {
      v16 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:@"symbolRenderingMode"];
      v15 = [(RUIElement *)self customSymbolImageNamed:v3 symbolRenderingMode:v16 tintColor:v9];

      if (!v15)
      {
        v7 = 0;
LABEL_32:
        v8 = v33;
        goto LABEL_33;
      }
    }

    v18 = *MEMORY[0x277CBF3A8];
    v17 = *(MEMORY[0x277CBF3A8] + 8);
    v19 = [(NSMutableDictionary *)self->_attributes objectForKey:@"systemImageWidth", v10];
    if ([v19 length])
    {
      [(NSMutableDictionary *)self->_attributes objectForKey:@"systemImageHeight"];
      v21 = v20 = v9;
      v22 = [v21 length];

      v9 = v20;
      v23 = v18;
      v24 = v17;
      if (!v22)
      {
        goto LABEL_24;
      }

      v25 = [(NSMutableDictionary *)self->_attributes objectForKey:@"systemImageWidth"];
      [v25 floatValue];
      v23 = v26;

      v19 = [(NSMutableDictionary *)self->_attributes objectForKey:@"systemImageHeight"];
      [v19 floatValue];
      v24 = v27;
    }

    else
    {
      v23 = v18;
      v24 = v17;
    }

LABEL_24:
    if (v23 != v18 || v24 != v17)
    {
      v28 = [(RUIElement *)self image:v15 size:v23, v24];

      [(RUIElement *)self setImageSize:v23, v24];
      v15 = v28;
    }

    v10 = v32;
    [(RUIElement *)self setImage:v15];
    if (v9)
    {
      [(RUIElement *)self setTintColor:v9];
    }

    v29 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageAlign"];

    if (v29)
    {
      v30 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageAlign"];
      [(RUIElement *)self setImageAlignment:[(RUIElement *)self _horizontalAlignmentForString:v30]];
    }

    [(RUIElement *)self setImage:v15];

    v7 = 1;
    goto LABEL_32;
  }

  v7 = 0;
LABEL_34:

  return v7;
}

- (BOOL)_loadSystemImageFromIconServicesWithName:(id)name symbolColor:(id)color enclosureColor:(id)enclosureColor
{
  v28[1] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  enclosureColorCopy = enclosureColor;
  v10 = MEMORY[0x277D1B198];
  nameCopy = name;
  v12 = objc_alloc_init(v10);
  if (colorCopy)
  {
    v13 = [objc_alloc(MEMORY[0x277D1B148]) initWithCGColor:{objc_msgSend(colorCopy, "CGColor")}];
    v28[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    [v12 setSymbolColors:v14];
  }

  if (enclosureColorCopy)
  {
    v15 = [objc_alloc(MEMORY[0x277D1B148]) initWithCGColor:{objc_msgSend(enclosureColorCopy, "CGColor")}];
    v27 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    [v12 setEnclosureColors:v16];
  }

  v17 = [objc_alloc(MEMORY[0x277D1B1B0]) initWithSymbolName:nameCopy configuration:v12];

  v18 = objc_alloc(MEMORY[0x277D1B1D0]);
  [(RUIElement *)self _systemImageSize];
  v20 = v19;
  v22 = v21;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v25 = [v18 initWithSize:v20 scale:{v22, v24}];

  [(RUIElement *)self _loadImageWithIcon:v17 descriptor:v25];
  return 1;
}

- (CGSize)_systemImageSize
{
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"systemImageWidth"];
  if (![(__CFString *)v3 length])
  {
    v4 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageWidth"];

    v3 = v4;
  }

  if (![(__CFString *)v3 length])
  {

    v3 = @"0";
  }

  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"systemImageHeight"];
  if (![(__CFString *)v5 length])
  {
    v6 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageHeight"];

    v5 = v6;
  }

  if (![(__CFString *)v5 length])
  {

    v5 = @"0";
  }

  [(__CFString *)v3 floatValue];
  v8 = v7;
  [(__CFString *)v5 floatValue];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)image:(id)image size:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  if (!imageCopy || (width == *MEMORY[0x277CBF3A8] ? (v7 = height == *(MEMORY[0x277CBF3A8] + 8)) : (v7 = 0), v7))
  {
    v10 = 0;
  }

  else
  {
    v13.width = width;
    v13.height = height;
    UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
    [imageCopy drawInRect:{0.0, 0.0, width, height}];
    v8 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v9 = [v8 imageWithRenderingMode:2];

    imageCopy = v9;
    v10 = imageCopy;
  }

  return v10;
}

- (BOOL)loadImageFromImageURL
{
  v31 = -1.0;
  v3 = [(RUIElement *)self URLAttributeForImageName:@"image" getScale:&v31];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = +[RUIImageLoader sharedImageLoader];
  v5 = [v4 imageForURL:v3 loadIfAbsent:1];
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  if (v5)
  {
    v8 = [MEMORY[0x277D755B8] imageWithCGImage:v5 scale:0 orientation:v31];
LABEL_9:
    v19 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageWidth"];
    [v19 floatValue];
    v18 = v20;

    v21 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageHeight"];
    [v21 floatValue];
    v17 = v22;

    goto LABEL_10;
  }

  v9 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageWidth"];
  if ([v9 length])
  {

LABEL_7:
    v8 = 0;
    v12 = 1;
    goto LABEL_8;
  }

  v10 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageHeight"];
  v11 = [v10 length];

  if (v11)
  {
    goto LABEL_7;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v28 = v27;

  v29 = LICreateDefaultIcon();
  if (v29)
  {
    v30 = v29;
    v8 = [MEMORY[0x277D755B8] imageWithCGImage:v29 scale:0 orientation:v28];
    CFRelease(v30);
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v8 = 0;
  }

LABEL_8:
  notificationCenter = [v4 notificationCenter];
  v14 = RUIImageLoaderDidLoadImageNotification;
  absoluteString = [v3 absoluteString];
  v16 = [(__CFString *)v14 stringByAppendingString:absoluteString];
  [notificationCenter addObserver:self selector:sel_imageLoaded_ name:v16 object:0];

  v17 = v7;
  v18 = v6;
  if (v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  [(RUIElement *)self setImage:v8];
  if (v18 != v6 || v17 != v7)
  {
    [(RUIElement *)self setImageSize:v18, v17];
  }

  v24 = [(NSMutableDictionary *)self->_attributes objectForKey:@"imageAlign"];
  [(RUIElement *)self setImageAlignment:[(RUIElement *)self _horizontalAlignmentForString:v24]];

LABEL_16:
  return v3 != 0;
}

- (id)textStyleWithString:(id)string
{
  v19[11] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D769A8];
  v18[0] = @"largeTitle";
  v18[1] = @"title1";
  v4 = *MEMORY[0x277D76A08];
  v19[0] = v3;
  v19[1] = v4;
  v5 = *MEMORY[0x277D76A20];
  v18[2] = @"title2";
  v18[3] = @"title3";
  v6 = *MEMORY[0x277D76A28];
  v19[2] = v5;
  v19[3] = v6;
  v7 = *MEMORY[0x277D76988];
  v18[4] = @"headline";
  v18[5] = @"subheadline";
  v8 = *MEMORY[0x277D769D0];
  v19[4] = v7;
  v19[5] = v8;
  v9 = *MEMORY[0x277D76918];
  v18[6] = @"body";
  v18[7] = @"callout";
  v10 = *MEMORY[0x277D76920];
  v19[6] = v9;
  v19[7] = v10;
  v11 = *MEMORY[0x277D76968];
  v18[8] = @"footnote";
  v18[9] = @"caption1";
  v12 = *MEMORY[0x277D76938];
  v19[8] = v11;
  v19[9] = v12;
  v18[10] = @"caption2";
  v19[10] = *MEMORY[0x277D76940];
  v13 = MEMORY[0x277CBEAC0];
  stringCopy = string;
  v15 = [v13 dictionaryWithObjects:v19 forKeys:v18 count:11];
  v16 = [v15 objectForKeyedSubscript:stringCopy];

  return v16;
}

- (void)configureAccessiblityWithTarget:(id)target
{
  targetCopy = target;
  attributes = [(RUIElement *)self attributes];
  v6 = [attributes objectForKeyedSubscript:@"accessibilityIdentifier"];
  v7 = v6;
  if (v6)
  {
    identifier = v6;
  }

  else
  {
    identifier = [(RUIElement *)self identifier];
  }

  v9 = identifier;

  [targetCopy setAccessibilityIdentifier:v9];
}

- (RUIElement)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)reportInternalRenderEvent
{
  selfCopy = self;
  sourceXMLElement = [(RUIElement *)selfCopy sourceXMLElement];
  if (sourceXMLElement)
  {
    v4 = sourceXMLElement;
    name = [(RUIXMLElement *)sourceXMLElement name];

    sub_21BA87CBC();
  }

  else
  {
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED20);
    sub_21BA87D4C();
  }

  v6 = sub_21BA87C8C();

  [(RUIElement *)selfCopy reportInternalRenderEventWithElementName:v6 deprecated:[(RUIElement *)selfCopy isDeprecatedForInternalAnalytics]];
}

- (BOOL)isDeprecatedForInternalAnalytics
{
  selfCopy = self;
  sourceXMLElement = [(RUIElement *)selfCopy sourceXMLElement];
  if (sourceXMLElement)
  {
    v4 = sourceXMLElement;
    name = [(RUIXMLElement *)sourceXMLElement name];

    sub_21BA87CBC();
  }

  else
  {
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ED20);
    sub_21BA87D4C();
  }

  sub_21BA87D3C();

  sub_21B9BAB9C();
  v6 = sub_21BA8840C();

  return v6 & 1;
}

- (void)reportInternalRenderEventWithElementName:(id)name
{
  v4 = sub_21BA87CBC();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  RUIElement.reportInternalRenderEvent(with:)(v8);
}

- (void)reportInternalRenderEventWithElementName:(id)name deprecated:(BOOL)deprecated
{
  v6 = sub_21BA87CBC();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  RUIElement.reportInternalRenderEvent(with:deprecated:)(v10, deprecated);
}

@end