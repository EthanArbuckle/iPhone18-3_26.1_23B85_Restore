@interface _TVListTemplateController
- (BOOL)setNeedsFocusUpdateToList;
- (CGSize)_backgroundImageProxySize;
- (id)_backgroundImageProxy;
- (id)impressionableElementsContainedInDocument:(id)a3;
- (id)preferredFocusEnvironments;
- (int64_t)_blurEffectStyle;
- (void)_configureWithBgElement:(id)a3;
- (void)_configureWithBgImage:(id)a3 backdropImage:(id)a4;
- (void)_configureWithListElement:(id)a3;
- (void)_updateView;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)listViewController:(id)a3 didScrollWithScrollView:(id)a4;
- (void)listViewController:(id)a3 updatePreviewViewController:(id)a4;
- (void)loadView;
- (void)updateWithViewElement:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _TVListTemplateController

- (void)updateWithViewElement:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19.receiver = self;
  v19.super_class = _TVListTemplateController;
  [(_TVBgImageLoadingViewController *)&v19 updateWithViewElement:v5];
  objc_storeStrong(&self->_templateElement, a3);
  v6 = [v5 appDocument];
  [v6 impressionThreshold];
  self->_impressionThreshold = v7;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v5 children];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [v13 tv_elementType];
        switch(v14)
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

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
  v3 = [(_TVListTemplateController *)self listViewController];
  [v3 setNeedsFocusUpdate];

  [(_TVListTemplateController *)self setNeedsFocusUpdate];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  v5 = [v4 focusedView];
  v6 = [(_TVListTemplateController *)self view];
  v7 = [v5 isDescendantOfView:v6];

  return v7;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = _TVListTemplateController;
  [(_TVBgImageLoadingViewController *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = _TVListTemplateController;
  [(_TVBgImageLoadingViewController *)&v3 viewDidAppear:a3];
}

- (void)loadView
{
  v3 = [[_TVListTemplateView alloc] initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_TVListTemplateController *)self setView:v3];
  [(_TVListTemplateController *)self _updateView];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v19.receiver = self;
  v19.super_class = _TVListTemplateController;
  v6 = a3;
  [(_TVListTemplateController *)&v19 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  v8 = [v7 focusedView];

  v9 = [(_TVListTemplateController *)self listViewController];
  v10 = [v9 view];
  v11 = [v8 isDescendantOfView:v10];

  if (v11)
  {
    v12 = [(_TVListTemplateController *)self listViewController];
LABEL_5:
    v16 = v12;
    [(_TVListTemplateController *)self setFocusedController:v12];

    goto LABEL_6;
  }

  v13 = [(_TVListTemplateController *)self previewViewController];
  v14 = [v13 view];
  v15 = [v8 isDescendantOfView:v14];

  if (v15)
  {
    v12 = [(_TVListTemplateController *)self previewViewController];
    goto LABEL_5;
  }

LABEL_6:
  v17 = [(_TVListTemplateController *)self listViewController];
  v18 = [v6 previouslyFocusedView];

  [v17 templateControllerDidUpdateFocusFromView:v18];
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
    v4 = [(_TVListTemplateController *)self view];
    [v4 layoutIfNeeded];

    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v5 = [(_TVListTemplateController *)self focusedController];

    if (v5)
    {
      v6 = [(_TVListTemplateController *)self focusedController];
      [v3 addObject:v6];
    }

    v7 = [(_TVListTemplateController *)self listViewController];

    if (v7)
    {
      v8 = [(_TVListTemplateController *)self listViewController];
      [v3 addObject:v8];
    }
  }

  return v3;
}

- (void)_updateView
{
  v29 = [(_TVListTemplateController *)self _listTemplateView];
  [v29 setSemanticContentAttribute:{-[IKViewElement tv_semanticContentAttribute](self->_templateElement, "tv_semanticContentAttribute")}];
  v3 = +[TVInterfaceFactory sharedInterfaceFactory];
  bannerElement = self->_bannerElement;
  v5 = [v29 bannerView];
  v6 = [v3 _viewFromElement:bannerElement existingView:v5];
  [v29 setBannerView:v6];

  v7 = [(IKViewElement *)self->_bannerElement attributes];
  v8 = [v7 objectForKeyedSubscript:@"floating"];

  if ([v8 length])
  {
    [v29 setFloatingBanner:{objc_msgSend(v8, "BOOLValue")}];
  }

  v9 = [(IKCollectionElement *)self->_listElement style];
  v10 = [v9 tv_backgroundColor];

  [v29 setBackdropEnabled:{objc_msgSend(v10, "colorType") == 2}];
  v11 = [(IKViewElement *)self->_templateElement style];
  v12 = [v11 tv_backgroundColor];
  v13 = [v12 color];

  if (v13)
  {
    v14 = [(IKViewElement *)self->_templateElement style];
    v15 = [v14 tv_backgroundColor];
    v16 = [v15 color];
    [v29 setBackgroundColor:v16];
  }

  else
  {
    v14 = [MEMORY[0x277D75348] clearColor];
    [v29 setBackgroundColor:v14];
  }

  v17 = [(_TVListTemplateController *)self listViewController];
  v18 = +[TVInterfaceFactory sharedInterfaceFactory];
  v19 = [v18 _viewControllerFromElement:self->_listElement existingController:v17];

  v20 = [(IKViewElement *)self->_templateElement elementName];
  [v19 setAlwaysSoftFocusEnabled:{objc_msgSend(v20, "isEqualToString:", @"catalogTemplate"}];

  if (v17 != v19)
  {
    [v17 willMoveToParentViewController:0];
    if (v19)
    {
      [(_TVListTemplateController *)self addChildViewController:v19];
      v21 = [v19 view];
      [v29 setListView:v21];
    }

    [v17 removeFromParentViewController];
    [v19 didMoveToParentViewController:self];
    [(_TVListTemplateController *)self setListViewController:v19];
    [v19 setDelegate:self];
  }

  v22 = [(IKViewElement *)self->_templateElement isDisabled];
  disabledTemplateFocusCaptureView = self->_disabledTemplateFocusCaptureView;
  if (v22)
  {
    if (!disabledTemplateFocusCaptureView)
    {
      v24 = [[_TVFocusCaptureView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
      v25 = self->_disabledTemplateFocusCaptureView;
      self->_disabledTemplateFocusCaptureView = v24;

      v26 = self->_disabledTemplateFocusCaptureView;
      v27 = [MEMORY[0x277D75348] clearColor];
      [(_TVFocusCaptureView *)v26 setBackgroundColor:v27];
    }

    v28 = [(_TVListTemplateController *)self view];
    [v28 addSubview:self->_disabledTemplateFocusCaptureView];
  }

  else
  {
    [(_TVFocusCaptureView *)disabledTemplateFocusCaptureView removeFromSuperview];
    v28 = self->_disabledTemplateFocusCaptureView;
    self->_disabledTemplateFocusCaptureView = 0;
  }
}

- (void)listViewController:(id)a3 updatePreviewViewController:(id)a4
{
  v13 = a4;
  v5 = [(_TVListTemplateController *)self previewViewController];
  if (v5 != v13)
  {
    v6 = [(_TVListTemplateController *)self focusedController];

    if (v6 == v5)
    {
      [(_TVListTemplateController *)self setFocusedController:0];
    }

    v7 = [(_TVListTemplateController *)self _listTemplateView];
    [v5 willMoveToParentViewController:0];
    v8 = v13;
    if (v13)
    {
      [(_TVListTemplateController *)self addChildViewController:v13];
      v8 = v13;
    }

    v9 = [v8 view];
    [v7 setPreviewView:v9];

    [v5 removeFromParentViewController];
    [v13 didMoveToParentViewController:self];
    [(_TVListTemplateController *)self setPreviewViewController:v13];
    if (self->_impressionThreshold > 0.0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 performSelector:sel__cancelImpressionsUpdate];
    }

    v10 = [v13 tv_associatedIKViewElement];
    v11 = [v10 tv_elementType] != 14;

    v12 = [(_TVListTemplateController *)self listViewController];
    [v12 setIndexDisplayEnabled:v11];
  }
}

- (void)listViewController:(id)a3 didScrollWithScrollView:(id)a4
{
  v5 = a4;
  v6 = [(_TVListTemplateController *)self _listTemplateView];
  [v6 adjustScrollForListView:v5];

  if (self->_impressionThreshold > 0.0)
  {
    v7 = [(_TVListTemplateController *)self previewViewController];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(_TVListTemplateController *)self previewViewController];
      [v9 performSelector:sel__cancelImpressionsUpdate];
    }
  }
}

- (void)_configureWithBgElement:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = a3;
  v4 = [v21 children];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
        objc_enumerationMutation(v4);
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

          v15 = v4;
          v16 = v7;
          bgAudioElement = v10;
          v17 = [(IKAudioElement *)bgAudioElement children];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            overlayView = self->_overlayView;
          }

          else
          {
            overlayView = 0;
          }

          v7 = [TVMLViewFactory organizerViewWithElements:v17 existingView:overlayView];

          [v7 setUserInteractionEnabled:0];
          v4 = v15;
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
    v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v6);
LABEL_25:

  [(UIView *)self->_overlayView removeFromSuperview];
  objc_storeStrong(&self->_overlayView, v7);
  if (v7)
  {
    v19 = [(_TVListTemplateController *)self view];
    [v19 addSubview:v7];

    v20 = [(_TVListTemplateController *)self view];
    [v20 bounds];
    [v7 setFrame:?];
  }
}

- (void)_configureWithListElement:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_listElement, a3);
  if (!self->_bgImageElement)
  {
    v22 = self;
    v23 = v5;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = [v5 children];
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          if ([v12 tv_elementType] == 43)
          {
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v13 = [v12 children];
            v14 = [v13 firstObject];
            v15 = [v14 children];

            v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v24 + 1) + 8 * j);
                  if ([v20 tv_elementType] == 16 && objc_msgSend(v20, "tv_imageType") == 3)
                  {
                    v21 = v20;

                    v9 = v21;
                    goto LABEL_19;
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

        v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    if (!v22->_heroImageElement)
    {
      objc_storeStrong(&v22->_heroImageElement, v9);
    }

    v5 = v23;
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
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 _graphicsQuality];

  if (v4 == 10)
  {
    goto LABEL_2;
  }

  if (self->_bgImageElement)
  {
    v6 = [(IKViewElement *)self->_templateElement appDocument];
    [v6 tv_adjustedWindowSize];
    v8 = v7;
    v10 = v9;

    v11 = objc_opt_new();
    [v11 setImageSize:{v8, v10}];
    v12 = [TVImageLayout layoutWithLayout:v11 element:self->_bgImageElement];
    v5 = [(IKImageElement *)self->_bgImageElement tv_imageProxyWithLayout:v11];
    v13 = [(IKImageElement *)self->_bgImageElement style];
    v14 = [v13 tv_imageTreatment];
    v15 = [v14 isEqualToString:@"blur"];

    if (v15)
    {
      v16 = objc_alloc_init(_TVUberBlurImageDecorator);
      v17 = [(IKImageElement *)self->_bgImageElement style];
      v18 = [v17 tv_tintColor];
      v19 = [v18 color];
      [(_TVUberBlurImageDecorator *)v16 setGradientColor:v19];

      [(_TVUberBlurImageDecorator *)v16 setBlurType:2];
      [v5 setDecorator:v16];
    }
  }

  else
  {
    heroImageElement = self->_heroImageElement;
    if (!heroImageElement)
    {
LABEL_2:
      v5 = 0;
      goto LABEL_9;
    }

    v5 = [(IKImageElement *)heroImageElement tv_imageProxy];
  }

LABEL_9:

  return v5;
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

- (void)_configureWithBgImage:(id)a3 backdropImage:(id)a4
{
  v12 = a3;
  v5 = [(_TVListTemplateController *)self view];
  if (v12)
  {
    v6 = [v5 bgImageView];

    if (!v6)
    {
      v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
      [v5 setBgImageView:v7];
      v8 = [(IKImageElement *)self->_bgImageElement style];
      v9 = [v8 tv_imageTreatment];
      v10 = [v9 isEqualToString:@"blurOverlay"];

      if (v10)
      {
        v11 = [(IKImageElement *)self->_bgImageElement style];
        [v11 tv_padding];
        [v5 setOverlayBlurOffset:?];
      }
    }
  }
}

- (id)impressionableElementsContainedInDocument:(id)a3
{
  v4 = a3;
  v5 = [(IKViewElement *)self->_templateElement appDocument];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [(_TVListTemplateController *)self listViewController];
    v9 = [v8 tv_impressionableElementsForDocument:v4];
    [v7 addObjectsFromArray:v9];

    v10 = [(_TVListTemplateController *)self _listTemplateView];
    v11 = [v10 tv_impressionableElementsForDocument:v4];
    [v7 addObjectsFromArray:v11];

    v12 = [(_TVListTemplateController *)self previewViewController];
    v13 = [v12 tv_impressionableElementsForDocument:v4];
    [v7 addObjectsFromArray:v13];

    if ([v7 count])
    {
      v14 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
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