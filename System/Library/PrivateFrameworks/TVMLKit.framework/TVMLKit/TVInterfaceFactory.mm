@interface TVInterfaceFactory
+ (id)_URLForResource:(id)resource bundle:(id)bundle;
+ (id)_tvmlResourceMap;
+ (id)sharedInterfaceFactory;
+ (void)initialize;
- (Class)_collectionViewCellClassForElement:(id)element;
- (Class)_extendedCollectionViewCellClassForIKElement:(id)element;
- (Class)collectionViewCellClassForElement:(id)element;
- (TVInterfaceFactory)init;
- (id)URLForResource:(id)resource;
- (id)_controllerTransitionFromElement:(id)element toElement:(id)toElement forNavigationControllerOperation:(int64_t)operation relativeToFrom:(BOOL)from;
- (id)_getImageFromURLorBundle:(id)bundle;
- (id)_imageProxyForResourceURL:(id)l scaleToSize:(CGSize)size;
- (id)_imageProxyForSymbolURL:(id)l imageSymbolConfiguration:(id)configuration scaleToSize:(CGSize)size;
- (id)_imageProxyFromElement:(id)element withLayout:(id)layout;
- (id)_navigationControllerForTabIdentifier:(id)identifier;
- (id)_resourceImageNamed:(id)named;
- (id)_styleSheetURLForTemplate:(id)template;
- (id)_viewControllerFromElement:(id)element layout:(id)layout existingController:(id)controller;
- (id)_viewFromElement:(id)element layout:(id)layout existingView:(id)view;
- (id)imageForResource:(id)resource;
- (id)playerViewControllerForPlayer:(id)player;
- (id)viewControllerForElement:(id)element existingViewController:(id)controller;
- (id)viewForElement:(id)element existingView:(id)view;
- (void)_darkerSystemColorStatusChanged:(id)changed;
- (void)_registerControllerTransitioningCreator:(id)creator withType:(unint64_t)type;
- (void)_registerViewControllerCreator:(id)creator withType:(unint64_t)type;
- (void)_registerViewControllerCreatorEx:(id)ex withType:(unint64_t)type;
- (void)_registerViewCreator:(id)creator withType:(unint64_t)type;
- (void)_registerViewCreatorEx:(id)ex withType:(unint64_t)type;
- (void)_willParseAppDocument:(id)document forImplicitUpdates:(BOOL)updates;
- (void)dealloc;
- (void)setExtendedInterfaceCreator:(id)creator;
- (void)setup;
@end

@implementation TVInterfaceFactory

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = +[TVInterfaceFactory sharedInterfaceFactory];
    [v2 setup];
  }
}

+ (id)sharedInterfaceFactory
{
  if (sharedInterfaceFactory_onceToken != -1)
  {
    +[TVInterfaceFactory sharedInterfaceFactory];
  }

  v3 = sharedInterfaceFactory_sSharedInstance;

  return v3;
}

uint64_t __44__TVInterfaceFactory_sharedInterfaceFactory__block_invoke()
{
  sharedInterfaceFactory_sSharedInstance = objc_alloc_init(TVInterfaceFactory);

  return MEMORY[0x2821F96F8]();
}

- (TVInterfaceFactory)init
{
  v10.receiver = self;
  v10.super_class = TVInterfaceFactory;
  v2 = [(TVInterfaceFactory *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    viewCreatorsByKey = v2->_viewCreatorsByKey;
    v2->_viewCreatorsByKey = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    viewControllerCreatorsByKey = v2->_viewControllerCreatorsByKey;
    v2->_viewControllerCreatorsByKey = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    controllerTransitionCreatorsByKey = v2->_controllerTransitionCreatorsByKey;
    v2->_controllerTransitionCreatorsByKey = v7;
  }

  return v2;
}

- (void)setup
{
  v3 = objc_alloc_init(TVMLViewFactory);
  viewFactory = self->_viewFactory;
  self->_viewFactory = v3;

  v5 = objc_alloc_init(_TVLockupFactory);
  lockupFactory = self->_lockupFactory;
  self->_lockupFactory = v5;

  v7 = objc_alloc_init(_TVControllerFactory);
  controllerFactory = self->_controllerFactory;
  self->_controllerFactory = v7;

  v9 = objc_alloc_init(_TVTemplateFactory);
  templateFactory = self->_templateFactory;
  self->_templateFactory = v9;

  v11 = objc_alloc_init(TVStyleSheetRegistry);
  styleSheetRegistry = self->_styleSheetRegistry;
  self->_styleSheetRegistry = v11;

  v35 = MEMORY[0x277CBEAC0];
  systemTealColor = [MEMORY[0x277D75348] systemTealColor];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  systemMidGrayColor = [MEMORY[0x277D75348] systemMidGrayColor];
  tvmlkit_keyColor = [MEMORY[0x277D75348] tvmlkit_keyColor];
  tvmlkit_keyColor2 = [MEMORY[0x277D75348] tvmlkit_keyColor];
  v28 = [tvmlkit_keyColor2 colorWithAlphaComponent:0.8];
  v27 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.37254902 blue:0.411764706 alpha:1.0];
  v26 = [MEMORY[0x277D75348] colorWithRed:0.921568627 green:0.0431372549 blue:0.333333333 alpha:1.0];
  v25 = [MEMORY[0x277D75348] colorWithRed:0.968627451 green:0.568627451 blue:0.282352941 alpha:1.0];
  v24 = [MEMORY[0x277D75348] colorWithRed:0.968627451 green:0.709803922 blue:0.11372549 alpha:1.0];
  v38 = [MEMORY[0x277D75348] colorWithRed:0.905882353 green:0.788235294 blue:0.243137255 alpha:1.0];
  v37 = [MEMORY[0x277D75348] colorWithRed:0.823529412 green:0.839215686 blue:0.352941176 alpha:1.0];
  v34 = [MEMORY[0x277D75348] colorWithRed:0.603921569 green:0.819607843 blue:0.356862745 alpha:1.0];
  v23 = [MEMORY[0x277D75348] colorWithRed:0.419607843 green:0.796078431 blue:0.403921569 alpha:1.0];
  v22 = [MEMORY[0x277D75348] colorWithRed:0.368627451 green:0.776470588 blue:0.541176471 alpha:1.0];
  v21 = [MEMORY[0x277D75348] colorWithRed:0.360784314 green:0.749019608 blue:0.725490196 alpha:1.0];
  v20 = [MEMORY[0x277D75348] colorWithRed:0.196078431 green:0.694117647 blue:0.780392157 alpha:1.0];
  v19 = [MEMORY[0x277D75348] colorWithRed:0.298039216 green:0.678431373 blue:0.878431373 alpha:1.0];
  v18 = [MEMORY[0x277D75348] colorWithRed:0.423529412 green:0.705882353 blue:1.0 alpha:1.0];
  v17 = [MEMORY[0x277D75348] colorWithRed:0.552941176 green:0.596078431 blue:1.0 alpha:1.0];
  v16 = [MEMORY[0x277D75348] colorWithRed:0.674509804 green:0.541176471 blue:1.0 alpha:1.0];
  v15 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.384313725 blue:0.698039216 alpha:1.0];
  v13 = [MEMORY[0x277D75348] colorWithRed:0.929411765 green:0.4 blue:0.509803922 alpha:1.0];
  v36 = [v35 dictionaryWithObjectsAndKeys:{systemTealColor, @"systemteal", systemGrayColor, @"systemgray", systemMidGrayColor, @"systemmidgray", tvmlkit_keyColor, @"keyblue", v28, @"keyblue-highlighted", v27, @"orange1", v26, @"orange2", v25, @"orange3", v24, @"yellow1", v38, @"yellow2", v37, @"yellow3", v34, @"green1", v23, @"green2", v22, @"green3", v21, @"blue1", v20, @"blue2", v19, @"blue3", v18, @"blue4", v17, @"purple1", v16, @"purple2", v15, @"pink", v13, @"coral", 0}];

  [MEMORY[0x277D1B070] registerColorNameMap:v36];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__darkerSystemColorStatusChanged_ name:*MEMORY[0x277D76460] object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVInterfaceFactory;
  [(TVInterfaceFactory *)&v4 dealloc];
}

- (void)_darkerSystemColorStatusChanged:(id)changed
{
  v3 = MEMORY[0x277CBEAC0];
  tvmlkit_keyColor = [MEMORY[0x277D75348] tvmlkit_keyColor];
  tvmlkit_keyColor2 = [MEMORY[0x277D75348] tvmlkit_keyColor];
  v6 = [tvmlkit_keyColor2 colorWithAlphaComponent:0.8];
  v7 = [v3 dictionaryWithObjectsAndKeys:{tvmlkit_keyColor, @"keyblue", v6, @"keyblue-highlighted", 0}];

  [MEMORY[0x277D1B070] registerColorNameMap:v7];
}

- (void)setExtendedInterfaceCreator:(id)creator
{
  creatorCopy = creator;
  p_extendedInterfaceCreator = &self->_extendedInterfaceCreator;
  if (self->_extendedInterfaceCreator != creatorCopy)
  {
    v23 = creatorCopy;
    objc_storeStrong(p_extendedInterfaceCreator, creator);
    *&self->_extenderFlags = *&self->_extenderFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xFFFD | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xFFFB | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xFFF7 | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xFFEF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xFFDF | v11;
    v12 = [(TVInterfaceCreating *)v23 conformsToProtocol:&unk_287EADB18];
    v13 = 0;
    if (v12)
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = 64;
      }

      else
      {
        v13 = 0;
      }
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xFFBF | v13;
    if ([(TVInterfaceCreating *)v23 conformsToProtocol:&unk_287EADB18])
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = 128;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xFF7F | v14;
    if ([(TVInterfaceCreating *)v23 conformsToProtocol:&unk_287EADB18])
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = 1024;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xFBFF | v15;
    if ([(TVInterfaceCreating *)v23 conformsToProtocol:&unk_287EADB18])
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = 256;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xFEFF | v16;
    if ([(TVInterfaceCreating *)v23 conformsToProtocol:&unk_287EADB18])
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = 2048;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xF7FF | v17;
    if ([(TVInterfaceCreating *)v23 conformsToProtocol:&unk_287EADB18])
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = 512;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xFDFF | v18;
    if ([(TVInterfaceCreating *)v23 conformsToProtocol:&unk_287EADB18])
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = 4096;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xEFFF | v19;
    if ([(TVInterfaceCreating *)v23 conformsToProtocol:&unk_287EADB18])
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = 0x4000;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    extenderFlags = self->_extenderFlags;
    *&self->_extenderFlags = extenderFlags & 0xBFFF | v20;
    p_extendedInterfaceCreator = [(TVInterfaceCreating *)v23 conformsToProtocol:&unk_287EADB18];
    if (p_extendedInterfaceCreator)
    {
      p_extendedInterfaceCreator = objc_opt_respondsToSelector();
      if (p_extendedInterfaceCreator)
      {
        v22 = 0x2000;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    *&self->_extenderFlags = *&self->_extenderFlags & 0xDFFF | v22;
    creatorCopy = v23;
    if (v22 | extenderFlags & 0x2000)
    {
      p_extendedInterfaceCreator = [(TVStyleSheetRegistry *)self->_styleSheetRegistry commitStyleSheets];
      creatorCopy = v23;
    }
  }

  MEMORY[0x2821F96F8](p_extendedInterfaceCreator, creatorCopy);
}

- (id)viewForElement:(id)element existingView:(id)view
{
  viewCopy = view;
  element = [element element];
  v8 = [(TVInterfaceFactory *)self _viewFromElement:element existingView:viewCopy];

  return v8;
}

- (id)viewControllerForElement:(id)element existingViewController:(id)controller
{
  controllerCopy = controller;
  element = [element element];
  v8 = [(TVInterfaceFactory *)self _viewControllerFromElement:element existingController:controllerCopy];

  return v8;
}

- (id)URLForResource:(id)resource
{
  resourceCopy = resource;
  if ((*&self->_extenderFlags & 4) == 0 || (-[TVInterfaceFactory extendedInterfaceCreator](self, "extendedInterfaceCreator"), v5 = objc_claimAutoreleasedReturnValue(), [v5 URLForResource:resourceCopy], v6 = objc_claimAutoreleasedReturnValue(), v5, _TVMLMetricsLogPublicAPIUsage(sel_URLForResource_), !v6))
  {
    v7 = +[TVInterfaceFactory _tvmlResourceMap];
    v8 = [v7 objectForKeyedSubscript:resourceCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = resourceCopy;
    }

    v11 = v10;

    v12 = +[TVMLUtilities TVMLKitBundle];
    v6 = [TVInterfaceFactory _URLForResource:v11 bundle:v12];

    if (!v6)
    {
      v13 = +[TVMLUtilities TVUIKitBundle];
      v6 = [TVInterfaceFactory _URLForResource:resourceCopy bundle:v13];

      if (!v6)
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v6 = [TVInterfaceFactory _URLForResource:resourceCopy bundle:mainBundle];
      }
    }
  }

  return v6;
}

- (id)imageForResource:(id)resource
{
  resourceCopy = resource;
  if ((*&self->_extenderFlags & 8) == 0 || (-[TVInterfaceFactory extendedInterfaceCreator](self, "extendedInterfaceCreator"), v5 = objc_claimAutoreleasedReturnValue(), [v5 imageForResource:resourceCopy], v6 = objc_claimAutoreleasedReturnValue(), v5, _TVMLMetricsLogPublicAPIUsage(sel_imageForResource_), !v6))
  {
    v7 = [(TVInterfaceFactory *)self _getImageFromURLorBundle:resourceCopy];
    if (!v7)
    {
      v7 = [MEMORY[0x277D755B8] systemImageNamed:resourceCopy];
    }

    v6 = v7;
  }

  return v6;
}

- (Class)collectionViewCellClassForElement:(id)element
{
  element = [element element];
  v5 = [(TVInterfaceFactory *)self _collectionViewCellClassForElement:element];

  return v5;
}

- (id)playerViewControllerForPlayer:(id)player
{
  if ((*&self->_extenderFlags & 0x20) != 0)
  {
    playerCopy = player;
    _TVMLMetricsLogPublicAPIUsage(sel_playerViewControllerForPlayer_);
    extendedInterfaceCreator = [(TVInterfaceFactory *)self extendedInterfaceCreator];
    v3 = [extendedInterfaceCreator playerViewControllerForPlayer:playerCopy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_registerViewCreator:(id)creator withType:(unint64_t)type
{
  creatorCopy = creator;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__TVInterfaceFactory__registerViewCreator_withType___block_invoke;
  v8[3] = &unk_279D6FC58;
  v9 = creatorCopy;
  v7 = creatorCopy;
  [(TVInterfaceFactory *)self _registerViewCreatorEx:v8 withType:type];
}

id __52__TVInterfaceFactory__registerViewCreator_withType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 32) + 16))();
  if ([v5 tv_elementType] == 33)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    if (v6)
    {
      [v7 tv_setLayout:v6];
      goto LABEL_7;
    }

    v8 = objc_opt_new();
  }

  else
  {
    v8 = [(objc_class *)[TVViewLayout layoutClassForElement:?]element:"layoutWithLayout:element:", v6, v5];
  }

  v9 = v8;
  [v7 tv_setLayout:v8];

LABEL_7:

  return v7;
}

- (void)_registerViewCreatorEx:(id)ex withType:(unint64_t)type
{
  if (ex)
  {
    v8 = [ex copy];
    viewCreatorsByKey = self->_viewCreatorsByKey;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    [(NSMutableDictionary *)viewCreatorsByKey setObject:v8 forKeyedSubscript:v7];
  }
}

- (void)_registerViewControllerCreator:(id)creator withType:(unint64_t)type
{
  creatorCopy = creator;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__TVInterfaceFactory__registerViewControllerCreator_withType___block_invoke;
  v8[3] = &unk_279D6FC80;
  v9 = creatorCopy;
  v7 = creatorCopy;
  [(TVInterfaceFactory *)self _registerViewControllerCreatorEx:v8 withType:type];
}

- (void)_registerViewControllerCreatorEx:(id)ex withType:(unint64_t)type
{
  if (ex)
  {
    v8 = [ex copy];
    viewControllerCreatorsByKey = self->_viewControllerCreatorsByKey;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    [(NSMutableDictionary *)viewControllerCreatorsByKey setObject:v8 forKeyedSubscript:v7];
  }
}

- (id)_viewFromElement:(id)element layout:(id)layout existingView:(id)view
{
  elementCopy = element;
  layoutCopy = layout;
  viewCopy = view;
  if (!elementCopy)
  {
    v14 = 0;
    goto LABEL_29;
  }

  extenderFlags = self->_extenderFlags;
  if ((extenderFlags & 0x40) == 0)
  {
    if (extenderFlags)
    {
      extendedInterfaceCreator = [(TVInterfaceFactory *)self extendedInterfaceCreator];
      tv_associatedViewElement = [elementCopy tv_associatedViewElement];
      v14 = [extendedInterfaceCreator viewForElement:tv_associatedViewElement existingView:viewCopy];

      elementCopy = [(objc_class *)[TVViewLayout layoutClassForElement:?]element:"layoutWithLayout:element:", layoutCopy, elementCopy];
      [v14 tv_setLayout:elementCopy];

      _TVMLMetricsLogPublicAPIUsage(sel_viewForElement_existingView_);
      if (v14)
      {
        goto LABEL_21;
      }
    }

LABEL_8:
    viewCreatorsByKey = self->_viewCreatorsByKey;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(elementCopy, "tv_elementType")}];
    v20 = [(NSMutableDictionary *)viewCreatorsByKey objectForKeyedSubscript:v19];

    if (v20)
    {
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = &unk_287E47F28;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_32:
        v14 = 0;
        goto LABEL_21;
      }

      v21 = &unk_287E47F40;
    }

    v22 = [(NSMutableDictionary *)self->_viewCreatorsByKey objectForKeyedSubscript:v21];
    if (v22)
    {
      v20 = v22;
LABEL_15:
      tv_associatedIKViewElement = [viewCopy tv_associatedIKViewElement];
      v24 = tv_associatedIKViewElement;
      if (viewCopy && tv_associatedIKViewElement == elementCopy && ![elementCopy updateType] && (objc_msgSend(elementCopy, "objectForKeyedSubscript:", @"TVForceUpdate"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "BOOLValue"), v25, (v26 & 1) == 0))
      {
        v27 = viewCopy;
      }

      else
      {
        v27 = (v20)[2](v20, elementCopy, layoutCopy, viewCopy);
      }

      v14 = v27;

      goto LABEL_21;
    }

    goto LABEL_32;
  }

  extendedInterfaceCreator2 = [(TVInterfaceFactory *)self extendedInterfaceCreator];
  v14 = [extendedInterfaceCreator2 _viewForIKElement:elementCopy existingView:viewCopy];

  elementCopy2 = [(objc_class *)[TVViewLayout layoutClassForElement:?]element:"layoutWithLayout:element:", layoutCopy, elementCopy];
  [v14 tv_setLayout:elementCopy2];

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_21:
  [v14 _transferAttributesFromElement:elementCopy];
  attributes = [elementCopy attributes];
  v29 = [attributes objectForKeyedSubscript:@"accessibilityText"];

  if ([v29 length])
  {
    [v14 tv_setAccessibilityText:v29];
  }

  attributes2 = [elementCopy attributes];
  v31 = [attributes2 objectForKeyedSubscript:@"data-siri"];
  [v14 tv_setSiriData:v31];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    appDocument = [elementCopy appDocument];
    templateElement = [appDocument templateElement];
    tv_elementType = [templateElement tv_elementType];

    if (tv_elementType == 71)
    {
      [v14 tv_disableAnimation:1 forProperty:@"position"];
    }
  }

  [v14 tv_setAssociatedIKViewElement:elementCopy];
  style = [elementCopy style];
  tv_layerFlipMode = [style tv_layerFlipMode];

  v37 = [tv_layerFlipMode isEqualToString:@"horizontal"];
  if (tv_layerFlipMode)
  {
    v38 = v37;
    layer = [v14 layer];
    [layer setFlipsHorizontalAxis:v38];
  }

  [elementCopy tv_setProxyView:v14];
  [elementCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"TVForceUpdate"];
  elementName = [elementCopy elementName];
  _TVMLMetricsLogElementUsage();

LABEL_29:

  return v14;
}

- (id)_viewControllerFromElement:(id)element layout:(id)layout existingController:(id)controller
{
  elementCopy = element;
  layoutCopy = layout;
  controllerCopy = controller;
  if (!elementCopy)
  {
    v14 = 0;
    goto LABEL_18;
  }

  extenderFlags = self->_extenderFlags;
  if ((extenderFlags & 0x80) != 0)
  {
    extendedInterfaceCreator = [(TVInterfaceFactory *)self extendedInterfaceCreator];
    v14 = [extendedInterfaceCreator _viewControllerForIKElement:elementCopy existingViewController:controllerCopy];

    if (!v14)
    {
LABEL_8:
      viewControllerCreatorsByKey = self->_viewControllerCreatorsByKey;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(elementCopy, "tv_elementType")}];
      v18 = [(NSMutableDictionary *)viewControllerCreatorsByKey objectForKeyedSubscript:v17];

      if (v18)
      {
        tv_associatedIKViewElement = [controllerCopy tv_associatedIKViewElement];
        v20 = tv_associatedIKViewElement;
        if (controllerCopy && tv_associatedIKViewElement == elementCopy && ![elementCopy updateType] && (objc_msgSend(elementCopy, "objectForKeyedSubscript:", @"TVForceUpdate"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "BOOLValue"), v21, (v22 & 1) == 0))
        {
          v23 = controllerCopy;
        }

        else
        {
          v23 = (v18)[2](v18, elementCopy, layoutCopy, controllerCopy);
        }

        v14 = v23;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    if ((extenderFlags & 2) == 0)
    {
      goto LABEL_8;
    }

    extendedInterfaceCreator2 = [(TVInterfaceFactory *)self extendedInterfaceCreator];
    tv_associatedViewElement = [elementCopy tv_associatedViewElement];
    v14 = [extendedInterfaceCreator2 viewControllerForElement:tv_associatedViewElement existingViewController:controllerCopy];

    _TVMLMetricsLogPublicAPIUsage(sel_viewControllerForElement_existingViewController_);
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  [v14 tv_setAssociatedIKViewElement:elementCopy];
  [elementCopy tv_setProxyView:v14];
  [elementCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"TVForceUpdate"];
  elementName = [elementCopy elementName];
  _TVMLMetricsLogElementUsage();

LABEL_18:

  return v14;
}

- (Class)_extendedCollectionViewCellClassForIKElement:(id)element
{
  elementCopy = element;
  extenderFlags = self->_extenderFlags;
  if ((extenderFlags & 0x100) != 0)
  {
    extendedInterfaceCreator = [(TVInterfaceFactory *)self extendedInterfaceCreator];
    v6 = [extendedInterfaceCreator _collectionViewCellClassForIKElement:elementCopy];
  }

  else
  {
    if ((extenderFlags & 0x10) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    _TVMLMetricsLogPublicAPIUsage(sel_collectionViewCellClassForElement_);
    extendedInterfaceCreator = [(TVInterfaceFactory *)self extendedInterfaceCreator];
    tv_associatedViewElement = [elementCopy tv_associatedViewElement];
    v6 = [extendedInterfaceCreator collectionViewCellClassForElement:tv_associatedViewElement];
  }

LABEL_7:

  return v6;
}

- (Class)_collectionViewCellClassForElement:(id)element
{
  elementCopy = element;
  v5 = [(TVInterfaceFactory *)self _extendedCollectionViewCellClassForIKElement:elementCopy];
  if (!v5)
  {
    parent = [elementCopy parent];
    v6Parent = [parent parent];
    tv_elementType = [v6Parent tv_elementType];

    if (tv_elementType != 9 || (v5 = objc_opt_class()) == 0)
    {
      tv_elementType2 = [elementCopy tv_elementType];
      if (tv_elementType2 != 8 && tv_elementType2 != 24 && tv_elementType2 != 23)
      {
        v10 = 0;
        goto LABEL_9;
      }

      v5 = objc_opt_class();
    }
  }

  v10 = v5;
LABEL_9:
  v11 = v10;

  return v10;
}

- (id)_imageProxyFromElement:(id)element withLayout:(id)layout
{
  elementCopy = element;
  layoutCopy = layout;
  if ((*&self->_extenderFlags & 0x800) != 0)
  {
    extendedInterfaceCreator = [(TVInterfaceFactory *)self extendedInterfaceCreator];
    v8 = [extendedInterfaceCreator _imageProxyForIKElement:elementCopy withLayout:layoutCopy];
  }

  else
  {
    if ((*&self->_extenderFlags & 0x1000) == 0)
    {
      v8 = 0;
      goto LABEL_7;
    }

    extendedInterfaceCreator = [(TVInterfaceFactory *)self extendedInterfaceCreator];
    tv_associatedViewElement = [elementCopy tv_associatedViewElement];
    v8 = [extendedInterfaceCreator _imageProxyForElement:tv_associatedViewElement];
  }

  appDocument = [elementCopy appDocument];
  requestLoader = [appDocument requestLoader];
  [v8 setRequestLoader:requestLoader];

LABEL_7:

  return v8;
}

- (id)_imageProxyForResourceURL:(id)l scaleToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  tv_resourceName = [l tv_resourceName];
  v8 = [TVImageProxy alloc];
  v9 = +[_TVResourceImageLoader sharedInstance];
  v10 = [(TVImageProxy *)v8 initWithObject:tv_resourceName imageLoader:v9 groupType:0];

  [(TVImageProxy *)v10 setCacheOnLoad:+[TVMLUtilities canHandleDecodingOnRenderThread]^ 1];
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v12 = [(TVInterfaceFactory *)self imageForResource:tv_resourceName];
    if (!v12)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)_imageProxyForSymbolURL:(id)l imageSymbolConfiguration:(id)configuration scaleToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  configurationCopy = configuration;
  tv_symbolName = [l tv_symbolName];
  v10 = [[_TVImageSymbolDescription alloc] initWithSymbolName:tv_symbolName imageSymbolConfiguration:configurationCopy];
  v11 = [TVImageProxy alloc];
  v12 = +[_TVSymbolImageLoader sharedInstance];
  v13 = [(TVImageProxy *)v11 initWithObject:v10 imageLoader:v12 groupType:0];

  [(TVImageProxy *)v13 setCacheOnLoad:+[TVMLUtilities canHandleDecodingOnRenderThread]^ 1];
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v15 = [MEMORY[0x277D755B8] systemImageNamed:tv_symbolName withConfiguration:configurationCopy];
    if (!v15)
    {

      v13 = 0;
    }
  }

  return v13;
}

- (id)_navigationControllerForTabIdentifier:(id)identifier
{
  if ((*&self->_extenderFlags & 0x4000) != 0)
  {
    identifierCopy = identifier;
    extendedInterfaceCreator = [(TVInterfaceFactory *)self extendedInterfaceCreator];
    v3 = [extendedInterfaceCreator _navigationControllerForTabIdentifier:identifierCopy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_registerControllerTransitioningCreator:(id)creator withType:(unint64_t)type
{
  if (creator)
  {
    v8 = [creator copy];
    controllerTransitionCreatorsByKey = self->_controllerTransitionCreatorsByKey;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    [(NSMutableDictionary *)controllerTransitionCreatorsByKey setObject:v8 forKeyedSubscript:v7];
  }
}

- (id)_controllerTransitionFromElement:(id)element toElement:(id)toElement forNavigationControllerOperation:(int64_t)operation relativeToFrom:(BOOL)from
{
  fromCopy = from;
  elementCopy = element;
  toElementCopy = toElement;
  controllerTransitionCreatorsByKey = self->_controllerTransitionCreatorsByKey;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(elementCopy, "tv_elementType")}];
  v14 = [(NSMutableDictionary *)controllerTransitionCreatorsByKey objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = (v14)[2](v14, elementCopy, toElementCopy, operation, fromCopy);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_styleSheetURLForTemplate:(id)template
{
  if ((*&self->_extenderFlags & 0x2000) != 0)
  {
    templateCopy = template;
    extendedInterfaceCreator = [(TVInterfaceFactory *)self extendedInterfaceCreator];
    v3 = [extendedInterfaceCreator _styleSheetURLForTemplate:templateCopy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_resourceImageNamed:(id)named
{
  namedCopy = named;
  v4 = +[TVInterfaceFactory _tvmlResourceMap];
  v5 = [v4 objectForKeyedSubscript:namedCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = namedCopy;
  }

  v8 = v7;

  v9 = MEMORY[0x277D755B8];
  v10 = +[TVMLUtilities TVMLKitBundle];
  v11 = [v9 imageNamed:v8 inBundle:v10];

  return v11;
}

+ (id)_tvmlResourceMap
{
  if (_tvmlResourceMap_onceToken != -1)
  {
    +[TVInterfaceFactory _tvmlResourceMap];
  }

  v3 = _tvmlResourceMap_sDict;

  return v3;
}

uint64_t __38__TVInterfaceFactory__tvmlResourceMap__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _tvmlResourceMap_sDict;
  _tvmlResourceMap_sDict = v0;

  [_tvmlResourceMap_sDict setObject:@"button-cloud" forKeyedSubscript:@"button-cloud"];
  [_tvmlResourceMap_sDict setObject:@"button-play" forKeyedSubscript:@"button-play"];
  [_tvmlResourceMap_sDict setObject:@"button-preview" forKeyedSubscript:@"button-preview"];
  [_tvmlResourceMap_sDict setObject:@"button-add" forKeyedSubscript:@"button-add"];
  [_tvmlResourceMap_sDict setObject:@"button-remove" forKeyedSubscript:@"button-remove"];
  [_tvmlResourceMap_sDict setObject:@"button-add-alt" forKeyedSubscript:@"button-add-alt"];
  [_tvmlResourceMap_sDict setObject:@"button-artist" forKeyedSubscript:@"button-artist"];
  [_tvmlResourceMap_sDict setObject:@"button-curator" forKeyedSubscript:@"button-curator"];
  [_tvmlResourceMap_sDict setObject:@"button-follow" forKeyedSubscript:@"button-follow"];
  [_tvmlResourceMap_sDict setObject:@"button-checkmark" forKeyedSubscript:@"button-checkmark"];
  [_tvmlResourceMap_sDict setObject:@"button-more" forKeyedSubscript:@"button-more"];
  [_tvmlResourceMap_sDict setObject:@"button-rate" forKeyedSubscript:@"button-rate"];
  [_tvmlResourceMap_sDict setObject:@"button-rated" forKeyedSubscript:@"button-rated"];
  [_tvmlResourceMap_sDict setObject:@"button-radio" forKeyedSubscript:@"button-radio"];
  [_tvmlResourceMap_sDict setObject:@"button-shuffle" forKeyedSubscript:@"button-shuffle"];
  [_tvmlResourceMap_sDict setObject:@"icon_dropdown" forKeyedSubscript:@"button-dropdown"];
  [_tvmlResourceMap_sDict setObject:@"button-open" forKeyedSubscript:@"button-open"];
  [_tvmlResourceMap_sDict setObject:@"cs_logo_white" forKeyedSubscript:@"common-sense-logo-white"];
  [_tvmlResourceMap_sDict setObject:@"cs_logo_black" forKeyedSubscript:@"common-sense-logo-black"];
  [_tvmlResourceMap_sDict setObject:@"cs_badge_white_l" forKeyedSubscript:@"common-sense-badge-white-l"];
  [_tvmlResourceMap_sDict setObject:@"cs_badge_white_m" forKeyedSubscript:@"common-sense-badge-white-m"];
  [_tvmlResourceMap_sDict setObject:@"cs_badge_white_s" forKeyedSubscript:@"common-sense-badge-white-s"];
  [_tvmlResourceMap_sDict setObject:@"cs_badge_black_s" forKeyedSubscript:@"common-sense-badge-black-s"];
  [_tvmlResourceMap_sDict setObject:@"cs_badge_black_m" forKeyedSubscript:@"common-sense-badge-black-m"];
  [_tvmlResourceMap_sDict setObject:@"cs_badge_black_l" forKeyedSubscript:@"common-sense-badge-black-l"];
  [_tvmlResourceMap_sDict setObject:@"icon_chevron" forKeyedSubscript:@"chevron"];
  [_tvmlResourceMap_sDict setObject:@"list-chevron" forKeyedSubscript:@"list-chevron"];
  [_tvmlResourceMap_sDict setObject:@"game_center" forKeyedSubscript:@"game_center"];
  [_tvmlResourceMap_sDict setObject:@"game_controller" forKeyedSubscript:@"game_controller"];
  [_tvmlResourceMap_sDict setObject:@"bluetooth_accessory_mask" forKeyedSubscript:@"bluetooth_accessory"];
  [_tvmlResourceMap_sDict setObject:@"watched-checkmark" forKeyedSubscript:@"overlay-checkmark"];
  [_tvmlResourceMap_sDict setObject:@"icon_radio_small_mask" forKeyedSubscript:@"radio-s"];
  [_tvmlResourceMap_sDict setObject:@"icon_cloud_mask" forKeyedSubscript:@"cloud-s"];
  [_tvmlResourceMap_sDict setObject:@"extras_lockup_badge" forKeyedSubscript:@"extras-lockup-badge"];
  [_tvmlResourceMap_sDict setObject:@"extras_preview_stamp" forKeyedSubscript:@"extras-preview-stamp"];
  [_tvmlResourceMap_sDict setObject:@"extras_lockup_badge_zh" forKeyedSubscript:@"extras-lockup-badge_zh"];
  [_tvmlResourceMap_sDict setObject:@"extras_preview_stamp_zh" forKeyedSubscript:@"extras-preview-stamp_zh"];
  [_tvmlResourceMap_sDict setObject:@"ghost_episode_light" forKeyedSubscript:@"episode-placeholder-light"];
  [_tvmlResourceMap_sDict setObject:@"ghost_episode_dark" forKeyedSubscript:@"episode-placeholder-dark"];
  [_tvmlResourceMap_sDict setObject:@"content-gradient-brick" forKeyedSubscript:@"content-gradient-brick"];
  [_tvmlResourceMap_sDict setObject:@"content-gradient-flowcase" forKeyedSubscript:@"content-gradient-flowcase"];
  [_tvmlResourceMap_sDict setObject:@"content-gradient-genre-brick" forKeyedSubscript:@"content-gradient-genre-brick"];
  [_tvmlResourceMap_sDict setObject:@"content-gradient-genre-brick-4" forKeyedSubscript:@"content-gradient-genre-brick-4"];
  [_tvmlResourceMap_sDict setObject:@"content-gradient-list-keyframe" forKeyedSubscript:@"content-gradient-list-keyframe"];
  [_tvmlResourceMap_sDict setObject:@"cc_mask" forKeyedSubscript:@"cc"];
  [_tvmlResourceMap_sDict setObject:@"hd_mask" forKeyedSubscript:@"hd"];
  [_tvmlResourceMap_sDict setObject:@"RTRotten" forKeyedSubscript:@"tomato-splat"];
  [_tvmlResourceMap_sDict setObject:@"RTFresh" forKeyedSubscript:@"tomato-fresh"];
  [_tvmlResourceMap_sDict setObject:@"RTCertified" forKeyedSubscript:@"tomato-certified"];
  [_tvmlResourceMap_sDict setObject:@"RTLargeRotten" forKeyedSubscript:@"tomato-splat-m"];
  [_tvmlResourceMap_sDict setObject:@"RTLargeFresh" forKeyedSubscript:@"tomato-fresh-m"];
  [_tvmlResourceMap_sDict setObject:@"RTLargeCertified" forKeyedSubscript:@"tomato-certified-m"];
  [_tvmlResourceMap_sDict setObject:@"confirmation-checkmark" forKeyedSubscript:@"confirmation-checkmark"];
  [_tvmlResourceMap_sDict setObject:@"cloud-download-icon" forKeyedSubscript:@"cloud-download-icon"];
  [_tvmlResourceMap_sDict setObject:@"download-checkmark" forKeyedSubscript:@"download-checkmark"];
  [_tvmlResourceMap_sDict setObject:@"popover-add" forKeyedSubscript:@"popover-add"];
  [_tvmlResourceMap_sDict setObject:@"popover-chevron-up" forKeyedSubscript:@"popover-chevron-up"];
  [_tvmlResourceMap_sDict setObject:@"popover-chevron-down" forKeyedSubscript:@"popover-chevron-down"];
  [_tvmlResourceMap_sDict setObject:@"popover-share" forKeyedSubscript:@"popover-share"];
  [_tvmlResourceMap_sDict setObject:@"popover-more" forKeyedSubscript:@"popover-more"];
  [_tvmlResourceMap_sDict setObject:@"ActionMenu-Add" forKeyedSubscript:@"ActionMenu-Add"];
  [_tvmlResourceMap_sDict setObject:@"ActionMenu-circleMask" forKeyedSubscript:@"ActionMenu-circleMask"];
  [_tvmlResourceMap_sDict setObject:@"ActionMenu-ClearHistory" forKeyedSubscript:@"ActionMenu-ClearHistory"];
  [_tvmlResourceMap_sDict setObject:@"ActionMenu-ClearPlayHistory" forKeyedSubscript:@"ActionMenu-ClearPlayHistory"];
  [_tvmlResourceMap_sDict setObject:@"ActionMenu-Mark" forKeyedSubscript:@"ActionMenu-Mark"];
  [_tvmlResourceMap_sDict setObject:@"ActionMenu-MarkAll" forKeyedSubscript:@"ActionMenu-MarkAll"];
  [_tvmlResourceMap_sDict setObject:@"ActionMenu-Play" forKeyedSubscript:@"ActionMenu-Play"];
  [_tvmlResourceMap_sDict setObject:@"ActionMenu-Remove" forKeyedSubscript:@"ActionMenu-Remove"];
  [_tvmlResourceMap_sDict setObject:@"ActionMenu-RemoveFromUpNext" forKeyedSubscript:@"ActionMenu-RemoveFromUpNext"];
  [_tvmlResourceMap_sDict setObject:@"ActionMenu-Share" forKeyedSubscript:@"ActionMenu-Share"];
  [_tvmlResourceMap_sDict setObject:@"Actions_CheckGlyph" forKeyedSubscript:@"Actions-Check"];
  [_tvmlResourceMap_sDict setObject:@"Actions_AddGlyph" forKeyedSubscript:@"Actions-Add"];
  [_tvmlResourceMap_sDict setObject:@"itunes-extras-badge" forKeyedSubscript:@"extras-badge"];
  [_tvmlResourceMap_sDict setObject:@"guided-tour-play" forKeyedSubscript:@"guided-tour-play"];
  [_tvmlResourceMap_sDict setObject:@"OnboardingPlayLarge" forKeyedSubscript:@"onboarding-play-large"];
  [_tvmlResourceMap_sDict setObject:@"OnboardingPlaySmall" forKeyedSubscript:@"onboarding-play-small"];
  [_tvmlResourceMap_sDict setObject:@"onboarding-hero" forKeyedSubscript:@"onboarding-hero"];
  [_tvmlResourceMap_sDict setObject:@"onboarding-appicon" forKeyedSubscript:@"onboarding-appicon"];
  [_tvmlResourceMap_sDict setObject:@"library-dropdown" forKeyedSubscript:@"library-dropdown"];
  [_tvmlResourceMap_sDict setObject:@"metadata-ad" forKeyedSubscript:@"metadata-ad"];
  [_tvmlResourceMap_sDict setObject:@"metadata-sdh" forKeyedSubscript:@"metadata-sdh"];
  [_tvmlResourceMap_sDict setObject:@"hdr_mask" forKeyedSubscript:@"hdr"];
  [_tvmlResourceMap_sDict setObject:@"4k_mask" forKeyedSubscript:@"4k"];
  [_tvmlResourceMap_sDict setObject:@"dolbyvision_mask" forKeyedSubscript:@"dolby-vision"];
  v2 = _tvmlResourceMap_sDict;

  return [v2 setObject:@"dolbyatmos_mask" forKeyedSubscript:@"dolby-atmos"];
}

- (id)_getImageFromURLorBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = +[TVInterfaceFactory _tvmlResourceMap];
  v6 = [v5 objectForKeyedSubscript:bundleCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = bundleCopy;
  }

  v9 = v8;

  v10 = MEMORY[0x277D755B8];
  v11 = +[TVMLUtilities TVMLKitBundle];
  v12 = [v10 imageNamed:v9 inBundle:v11];

  if (!v12)
  {
    v13 = MEMORY[0x277D755B8];
    v14 = +[TVMLUtilities TVUIKitBundle];
    v12 = [v13 imageNamed:bundleCopy inBundle:v14];

    if (!v12)
    {
      v15 = MEMORY[0x277D755B8];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v12 = [v15 imageNamed:bundleCopy inBundle:mainBundle];
    }
  }

  v17 = [(TVInterfaceFactory *)self URLForResource:bundleCopy];
  v18 = v17;
  if (v17 && [v17 isFileURL])
  {
    v19 = MEMORY[0x277D755B8];
    path = [v18 path];
    v21 = [v19 imageWithContentsOfFile:path];

    v12 = v21;
  }

  if (!v12)
  {
    v22 = TVMLKitImageLogObject;
    if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_ERROR))
    {
      [(TVInterfaceFactory *)bundleCopy _getImageFromURLorBundle:v22];
    }
  }

  return v12;
}

+ (id)_URLForResource:(id)resource bundle:(id)bundle
{
  resourceCopy = resource;
  bundleCopy = bundle;
  if ([resourceCopy length])
  {
    v7 = [bundleCopy pathForResource:resourceCopy ofType:@"png"];
    if (!v7)
    {
      v7 = [bundleCopy pathForResource:resourceCopy ofType:@"jpg"];
      if (!v7)
      {
        v7 = [bundleCopy pathForResource:resourceCopy ofType:@"lsr"];
      }
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([v8 length])
  {
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_willParseAppDocument:(id)document forImplicitUpdates:(BOOL)updates
{
  updatesCopy = updates;
  documentCopy = document;
  templateElement = [documentCopy templateElement];

  if (templateElement && (*&self->_extenderFlags & 0x600) != 0)
  {
    v7 = MEMORY[0x277CBEB18];
    templateElement2 = [documentCopy templateElement];
    v9 = [v7 arrayWithObject:templateElement2];
    while (1)
    {

      if (![v9 count])
      {

        goto LABEL_37;
      }

      templateElement2 = [v9 firstObject];
      [v9 removeObjectAtIndex:0];
      v10 = updatesCopy ? [templateElement2 implicitUpdateType] : objc_msgSend(templateElement2, "updateType");
      v11 = v10;
      if (v10 >= 2)
      {
        break;
      }

      tv_isParsedOnce = [templateElement2 tv_isParsedOnce];
      if (v11 || (tv_isParsedOnce & 1) == 0)
      {
LABEL_10:
        if (([templateElement2 tv_isParsedOnce] & 1) == 0)
        {
          extenderFlags = self->_extenderFlags;
          extendedInterfaceCreator = [(TVInterfaceFactory *)self extendedInterfaceCreator];
          v14 = extendedInterfaceCreator;
          if ((extenderFlags & 0x200) != 0)
          {
            tv_associatedViewElement = [templateElement2 tv_associatedViewElement];
            [v14 _parseAppConfigurationForElement:tv_associatedViewElement];
          }

          else
          {
            [extendedInterfaceCreator _parseAppConfigurationForIKElement:templateElement2];
          }

          [templateElement2 tv_setParsedOnce:1];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          masterPrototypes = [templateElement2 masterPrototypes];
          if ([masterPrototypes count])
          {
            v18 = 0;
            do
            {
              v19 = [masterPrototypes objectAtIndexedSubscript:v18];
              [v9 insertObject:v19 atIndex:v18];

              ++v18;
            }

            while (v18 < [masterPrototypes count]);
          }

          proxiedItemElements = [templateElement2 proxiedItemElements];
          if ([proxiedItemElements count])
          {
            v21 = 0;
            do
            {
              v22 = [proxiedItemElements objectAtIndexedSubscript:v21];
              [v9 insertObject:v22 atIndex:v21];

              ++v21;
            }

            while (v21 < [proxiedItemElements count]);
          }
        }

        v23 = [MEMORY[0x277CBEB18] arrayWithObject:templateElement2];
        v24 = v23;
        while ([v23 count])
        {
          firstObject = [v24 firstObject];
          [v24 removeObjectAtIndex:0];
          aliases = [firstObject aliases];
          [v24 addObjectsFromArray:aliases];
          if ([aliases count])
          {
            v27 = 0;
            do
            {
              v28 = [aliases objectAtIndexedSubscript:v27];
              [v9 insertObject:v28 atIndex:v27];

              ++v27;
            }

            while (v27 < [aliases count]);
          }

          v23 = v24;
        }

        children = [templateElement2 children];
        if ([children count])
        {
          v30 = 0;
          do
          {
            v31 = [children objectAtIndexedSubscript:v30];
            [v9 insertObject:v31 atIndex:v30];

            ++v30;
          }

          while (v30 < [children count]);
        }
      }
    }

    [templateElement2 tv_setParsedOnce:0];
    [templateElement2 tv_isParsedOnce];
    goto LABEL_10;
  }

LABEL_37:
}

- (void)_getImageFromURLorBundle:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26CD9A000, a2, OS_LOG_TYPE_ERROR, "resource not found: %@", &v2, 0xCu);
}

@end