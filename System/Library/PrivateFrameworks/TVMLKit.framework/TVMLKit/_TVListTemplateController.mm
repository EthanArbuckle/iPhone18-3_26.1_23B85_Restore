@interface _TVListTemplateController
- (BOOL)setNeedsFocusUpdateToList;
- (CGSize)_backgroundImageProxySize;
- (id)_backgroundImageProxy;
- (id)impressionableElementsContainedInDocument:(id)document;
- (id)preferredFocusEnvironments;
- (int64_t)_blurEffectStyle;
- (void)_configureWithBgElement:(id)element;
- (void)_configureWithBgImage:(id)image backdropImage:(id)backdropImage;
- (void)_configureWithListElement:(id)element;
- (void)_updateView;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)listViewController:(id)controller didScrollWithScrollView:(id)view;
- (void)listViewController:(id)controller updatePreviewViewController:(id)viewController;
- (void)loadView;
- (void)updateWithViewElement:(id)element;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _TVListTemplateController

- (void)updateWithViewElement:(id)element
{
  v21 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v19.receiver = self;
  v19.super_class = _TVListTemplateController;
  [(_TVBgImageLoadingViewController *)&v19 updateWithViewElement:elementCopy];
  objc_storeStrong(&self->_templateElement, element);
  appDocument = [elementCopy appDocument];
  [appDocument impressionThreshold];
  self->_impressionThreshold = v7;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  children = [elementCopy children];
  v9 = [children countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(children);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        tv_elementType = [v13 tv_elementType];
        switch(tv_elementType)
        {
          case 22:
            [(_TVListTemplateController *)self _configureWithListElement:v13];
            break;
          case 12:
            objc_storeStrong(&self->_bannerElement, v13);
            break;
          case 4:
            [(_TVListTemplateController *)self _configureWithBgElement:v13];
            break;
        }
      }

      v10 = [children countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  if ([(_TVListTemplateController *)self isViewLoaded])
  {
    [(_TVListTemplateController *)self _updateView];
  }
}

- (BOOL)setNeedsFocusUpdateToList
{
  [(_TVListTemplateController *)self setFocusedController:0];
  listViewController = [(_TVListTemplateController *)self listViewController];
  [listViewController setNeedsFocusUpdate];

  [(_TVListTemplateController *)self setNeedsFocusUpdate];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  focusedView = [mainScreen focusedView];
  view = [(_TVListTemplateController *)self view];
  v7 = [focusedView isDescendantOfView:view];

  return v7;
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = _TVListTemplateController;
  [(_TVBgImageLoadingViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = _TVListTemplateController;
  [(_TVBgImageLoadingViewController *)&v3 viewDidAppear:appear];
}

- (void)loadView
{
  v3 = [[_TVListTemplateView alloc] initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_TVListTemplateController *)self setView:v3];
  [(_TVListTemplateController *)self _updateView];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v19.receiver = self;
  v19.super_class = _TVListTemplateController;
  contextCopy = context;
  [(_TVListTemplateController *)&v19 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  focusedView = [mainScreen focusedView];

  listViewController = [(_TVListTemplateController *)self listViewController];
  view = [listViewController view];
  v11 = [focusedView isDescendantOfView:view];

  if (v11)
  {
    listViewController2 = [(_TVListTemplateController *)self listViewController];
LABEL_5:
    v16 = listViewController2;
    [(_TVListTemplateController *)self setFocusedController:listViewController2];

    goto LABEL_6;
  }

  previewViewController = [(_TVListTemplateController *)self previewViewController];
  view2 = [previewViewController view];
  v15 = [focusedView isDescendantOfView:view2];

  if (v15)
  {
    listViewController2 = [(_TVListTemplateController *)self previewViewController];
    goto LABEL_5;
  }

LABEL_6:
  listViewController3 = [(_TVListTemplateController *)self listViewController];
  previouslyFocusedView = [contextCopy previouslyFocusedView];

  [listViewController3 templateControllerDidUpdateFocusFromView:previouslyFocusedView];
}

- (id)preferredFocusEnvironments
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([(IKViewElement *)self->_templateElement isDisabled])
  {
    if (self->_disabledTemplateFocusCaptureView)
    {
      v10[0] = self->_disabledTemplateFocusCaptureView;
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    }

    else
    {
      v3 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    view = [(_TVListTemplateController *)self view];
    [view layoutIfNeeded];

    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    focusedController = [(_TVListTemplateController *)self focusedController];

    if (focusedController)
    {
      focusedController2 = [(_TVListTemplateController *)self focusedController];
      [v3 addObject:focusedController2];
    }

    listViewController = [(_TVListTemplateController *)self listViewController];

    if (listViewController)
    {
      listViewController2 = [(_TVListTemplateController *)self listViewController];
      [v3 addObject:listViewController2];
    }
  }

  return v3;
}

- (void)_updateView
{
  _listTemplateView = [(_TVListTemplateController *)self _listTemplateView];
  [_listTemplateView setSemanticContentAttribute:{-[IKViewElement tv_semanticContentAttribute](self->_templateElement, "tv_semanticContentAttribute")}];
  v3 = +[TVInterfaceFactory sharedInterfaceFactory];
  bannerElement = self->_bannerElement;
  bannerView = [_listTemplateView bannerView];
  v6 = [v3 _viewFromElement:bannerElement existingView:bannerView];
  [_listTemplateView setBannerView:v6];

  attributes = [(IKViewElement *)self->_bannerElement attributes];
  v8 = [attributes objectForKeyedSubscript:@"floating"];

  if ([v8 length])
  {
    [_listTemplateView setFloatingBanner:{objc_msgSend(v8, "BOOLValue")}];
  }

  style = [(IKCollectionElement *)self->_listElement style];
  tv_backgroundColor = [style tv_backgroundColor];

  [_listTemplateView setBackdropEnabled:{objc_msgSend(tv_backgroundColor, "colorType") == 2}];
  style2 = [(IKViewElement *)self->_templateElement style];
  tv_backgroundColor2 = [style2 tv_backgroundColor];
  color = [tv_backgroundColor2 color];

  if (color)
  {
    style3 = [(IKViewElement *)self->_templateElement style];
    tv_backgroundColor3 = [style3 tv_backgroundColor];
    color2 = [tv_backgroundColor3 color];
    [_listTemplateView setBackgroundColor:color2];
  }

  else
  {
    style3 = [MEMORY[0x277D75348] clearColor];
    [_listTemplateView setBackgroundColor:style3];
  }

  listViewController = [(_TVListTemplateController *)self listViewController];
  v18 = +[TVInterfaceFactory sharedInterfaceFactory];
  v19 = [v18 _viewControllerFromElement:self->_listElement existingController:listViewController];

  elementName = [(IKViewElement *)self->_templateElement elementName];
  [v19 setAlwaysSoftFocusEnabled:{objc_msgSend(elementName, "isEqualToString:", @"catalogTemplate"}];

  if (listViewController != v19)
  {
    [listViewController willMoveToParentViewController:0];
    if (v19)
    {
      [(_TVListTemplateController *)self addChildViewController:v19];
      view = [v19 view];
      [_listTemplateView setListView:view];
    }

    [listViewController removeFromParentViewController];
    [v19 didMoveToParentViewController:self];
    [(_TVListTemplateController *)self setListViewController:v19];
    [v19 setDelegate:self];
  }

  isDisabled = [(IKViewElement *)self->_templateElement isDisabled];
  disabledTemplateFocusCaptureView = self->_disabledTemplateFocusCaptureView;
  if (isDisabled)
  {
    if (!disabledTemplateFocusCaptureView)
    {
      v24 = [[_TVFocusCaptureView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
      v25 = self->_disabledTemplateFocusCaptureView;
      self->_disabledTemplateFocusCaptureView = v24;

      v26 = self->_disabledTemplateFocusCaptureView;
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(_TVFocusCaptureView *)v26 setBackgroundColor:clearColor];
    }

    view2 = [(_TVListTemplateController *)self view];
    [view2 addSubview:self->_disabledTemplateFocusCaptureView];
  }

  else
  {
    [(_TVFocusCaptureView *)disabledTemplateFocusCaptureView removeFromSuperview];
    view2 = self->_disabledTemplateFocusCaptureView;
    self->_disabledTemplateFocusCaptureView = 0;
  }
}

- (void)listViewController:(id)controller updatePreviewViewController:(id)viewController
{
  viewControllerCopy = viewController;
  previewViewController = [(_TVListTemplateController *)self previewViewController];
  if (previewViewController != viewControllerCopy)
  {
    focusedController = [(_TVListTemplateController *)self focusedController];

    if (focusedController == previewViewController)
    {
      [(_TVListTemplateController *)self setFocusedController:0];
    }

    _listTemplateView = [(_TVListTemplateController *)self _listTemplateView];
    [previewViewController willMoveToParentViewController:0];
    v8 = viewControllerCopy;
    if (viewControllerCopy)
    {
      [(_TVListTemplateController *)self addChildViewController:viewControllerCopy];
      v8 = viewControllerCopy;
    }

    view = [v8 view];
    [_listTemplateView setPreviewView:view];

    [previewViewController removeFromParentViewController];
    [viewControllerCopy didMoveToParentViewController:self];
    [(_TVListTemplateController *)self setPreviewViewController:viewControllerCopy];
    if (self->_impressionThreshold > 0.0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [previewViewController performSelector:sel__cancelImpressionsUpdate];
    }

    tv_associatedIKViewElement = [viewControllerCopy tv_associatedIKViewElement];
    v11 = [tv_associatedIKViewElement tv_elementType] != 14;

    listViewController = [(_TVListTemplateController *)self listViewController];
    [listViewController setIndexDisplayEnabled:v11];
  }
}

- (void)listViewController:(id)controller didScrollWithScrollView:(id)view
{
  viewCopy = view;
  _listTemplateView = [(_TVListTemplateController *)self _listTemplateView];
  [_listTemplateView adjustScrollForListView:viewCopy];

  if (self->_impressionThreshold > 0.0)
  {
    previewViewController = [(_TVListTemplateController *)self previewViewController];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      previewViewController2 = [(_TVListTemplateController *)self previewViewController];
      [previewViewController2 performSelector:sel__cancelImpressionsUpdate];
    }
  }
}

- (void)_configureWithBgElement:(id)element
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  elementCopy = element;
  children = [elementCopy children];
  v5 = [children countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_25;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v25;
  v22 = *v25;
  do
  {
    v9 = 0;
    v23 = v6;
    do
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(children);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      v11 = 1064;
      if ((self->_bgImageElement || [*(*(&v24 + 1) + 8 * v9) tv_elementType] != 16 || objc_msgSend(v10, "tv_imageType")) && ((v11 = 1080, self->_heroImageElement) || objc_msgSend(v10, "tv_elementType") != 16 || objc_msgSend(v10, "tv_imageType") != 3))
      {
        if ([v10 tv_elementType] == 3)
        {
          v14 = v10;
          bgAudioElement = self->_bgAudioElement;
          self->_bgAudioElement = v14;
        }

        else
        {
          if ([v10 tv_elementType] != 35)
          {
            goto LABEL_21;
          }

          v15 = children;
          v16 = v7;
          bgAudioElement = v10;
          children2 = [(IKAudioElement *)bgAudioElement children];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            overlayView = self->_overlayView;
          }

          else
          {
            overlayView = 0;
          }

          v7 = [TVMLViewFactory organizerViewWithElements:children2 existingView:overlayView];

          [v7 setUserInteractionEnabled:0];
          children = v15;
          v8 = v22;
          v6 = v23;
        }
      }

      else
      {
        v12 = v10;
        bgAudioElement = *(&self->super.super.super.super.isa + v11);
        *(&self->super.super.super.super.isa + v11) = v12;
      }

LABEL_21:
      ++v9;
    }

    while (v6 != v9);
    v6 = [children countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v6);
LABEL_25:

  [(UIView *)self->_overlayView removeFromSuperview];
  objc_storeStrong(&self->_overlayView, v7);
  if (v7)
  {
    view = [(_TVListTemplateController *)self view];
    [view addSubview:v7];

    view2 = [(_TVListTemplateController *)self view];
    [view2 bounds];
    [v7 setFrame:?];
  }
}

- (void)_configureWithListElement:(id)element
{
  v34 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  objc_storeStrong(&self->_listElement, element);
  if (!self->_bgImageElement)
  {
    selfCopy = self;
    v23 = elementCopy;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    children = [elementCopy children];
    v7 = [children countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(children);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          if ([v12 tv_elementType] == 43)
          {
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            children2 = [v12 children];
            firstObject = [children2 firstObject];
            children3 = [firstObject children];

            v16 = [children3 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v25;
              while (2)
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v25 != v18)
                  {
                    objc_enumerationMutation(children3);
                  }

                  v20 = *(*(&v24 + 1) + 8 * j);
                  if ([v20 tv_elementType] == 16 && objc_msgSend(v20, "tv_imageType") == 3)
                  {
                    v21 = v20;

                    v9 = v21;
                    goto LABEL_19;
                  }
                }

                v17 = [children3 countByEnumeratingWithState:&v24 objects:v32 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

LABEL_19:
          }
        }

        v8 = [children countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    if (!selfCopy->_heroImageElement)
    {
      objc_storeStrong(&selfCopy->_heroImageElement, v9);
    }

    elementCopy = v23;
  }
}

- (CGSize)_backgroundImageProxySize
{
  bgImageElement = self->_bgImageElement;
  if (bgImageElement || (bgImageElement = self->_heroImageElement) != 0)
  {

    [(IKImageElement *)bgImageElement tv_imageScaleToSize];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v7.receiver = self;
    v7.super_class = _TVListTemplateController;
    [(_TVBgImageLoadingViewController *)&v7 _backgroundImageProxySize];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (id)_backgroundImageProxy
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  _graphicsQuality = [currentDevice _graphicsQuality];

  if (_graphicsQuality == 10)
  {
    goto LABEL_2;
  }

  if (self->_bgImageElement)
  {
    appDocument = [(IKViewElement *)self->_templateElement appDocument];
    [appDocument tv_adjustedWindowSize];
    v8 = v7;
    v10 = v9;

    v11 = objc_opt_new();
    [v11 setImageSize:{v8, v10}];
    v12 = [TVImageLayout layoutWithLayout:v11 element:self->_bgImageElement];
    tv_imageProxy = [(IKImageElement *)self->_bgImageElement tv_imageProxyWithLayout:v11];
    style = [(IKImageElement *)self->_bgImageElement style];
    tv_imageTreatment = [style tv_imageTreatment];
    v15 = [tv_imageTreatment isEqualToString:@"blur"];

    if (v15)
    {
      v16 = objc_alloc_init(_TVUberBlurImageDecorator);
      style2 = [(IKImageElement *)self->_bgImageElement style];
      tv_tintColor = [style2 tv_tintColor];
      color = [tv_tintColor color];
      [(_TVUberBlurImageDecorator *)v16 setGradientColor:color];

      [(_TVUberBlurImageDecorator *)v16 setBlurType:2];
      [tv_imageProxy setDecorator:v16];
    }
  }

  else
  {
    heroImageElement = self->_heroImageElement;
    if (!heroImageElement)
    {
LABEL_2:
      tv_imageProxy = 0;
      goto LABEL_9;
    }

    tv_imageProxy = [(IKImageElement *)heroImageElement tv_imageProxy];
  }

LABEL_9:

  return tv_imageProxy;
}

- (int64_t)_blurEffectStyle
{
  if ([TVMLUtilities interfaceStyleForTemplateElement:self->_templateElement]== 1)
  {
    return 4000;
  }

  else
  {
    return 4005;
  }
}

- (void)_configureWithBgImage:(id)image backdropImage:(id)backdropImage
{
  imageCopy = image;
  view = [(_TVListTemplateController *)self view];
  if (imageCopy)
  {
    bgImageView = [view bgImageView];

    if (!bgImageView)
    {
      v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:imageCopy];
      [view setBgImageView:v7];
      style = [(IKImageElement *)self->_bgImageElement style];
      tv_imageTreatment = [style tv_imageTreatment];
      v10 = [tv_imageTreatment isEqualToString:@"blurOverlay"];

      if (v10)
      {
        style2 = [(IKImageElement *)self->_bgImageElement style];
        [style2 tv_padding];
        [view setOverlayBlurOffset:?];
      }
    }
  }
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  documentCopy = document;
  appDocument = [(IKViewElement *)self->_templateElement appDocument];
  v6 = [appDocument isEqual:documentCopy];

  if (v6)
  {
    array = [MEMORY[0x277CBEB18] array];
    listViewController = [(_TVListTemplateController *)self listViewController];
    v9 = [listViewController tv_impressionableElementsForDocument:documentCopy];
    [array addObjectsFromArray:v9];

    _listTemplateView = [(_TVListTemplateController *)self _listTemplateView];
    v11 = [_listTemplateView tv_impressionableElementsForDocument:documentCopy];
    [array addObjectsFromArray:v11];

    previewViewController = [(_TVListTemplateController *)self previewViewController];
    v13 = [previewViewController tv_impressionableElementsForDocument:documentCopy];
    [array addObjectsFromArray:v13];

    if ([array count])
    {
      v14 = [MEMORY[0x277CBEA60] arrayWithArray:array];
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

  return v14;
}

@end