@interface SKUIContextActionsPresentationSource
- (CGRect)sourceRect;
- (SKUIContextActionsPresentationSource)initWithViewController:(id)controller;
- (void)presentViewController:(id)controller permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated;
@end

@implementation SKUIContextActionsPresentationSource

- (SKUIContextActionsPresentationSource)initWithViewController:(id)controller
{
  controllerCopy = controller;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIContextActionsPresentationSource initWithViewController:];
  }

  v9.receiver = self;
  v9.super_class = SKUIContextActionsPresentationSource;
  v6 = [(SKUIContextActionsPresentationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, controller);
  }

  return v7;
}

- (void)presentViewController:(id)controller permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewController = [(SKUIContextActionsPresentationSource *)self viewController];
  sourceView = [(SKUIContextActionsPresentationSource *)self sourceView];
  if (sourceView)
  {
    v10 = 1;
  }

  else
  {
    barButtonItem = [(SKUIContextActionsPresentationSource *)self barButtonItem];
    v10 = barButtonItem != 0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    traitCollection = [keyWindow traitCollection];
    v16 = [traitCollection horizontalSizeClass] == 2 && v10;

    if (v16 == 1)
    {
      [controllerCopy setModalPresentationStyle:7];
    }
  }

  else
  {
  }

  [viewController presentViewController:controllerCopy animated:animatedCopy completion:0];
  popoverPresentationController = [controllerCopy popoverPresentationController];
  v18 = popoverPresentationController != 0 && v10;

  if (v18 == 1)
  {
    if ([controllerCopy conformsToProtocol:&unk_28290F8C0])
    {
      presentationController = [controllerCopy presentationController];
      [presentationController setDelegate:controllerCopy];
    }

    popoverPresentationController2 = [controllerCopy popoverPresentationController];
    [popoverPresentationController2 setPermittedArrowDirections:directions];

    barButtonItem2 = [(SKUIContextActionsPresentationSource *)self barButtonItem];

    if (barButtonItem2)
    {
      barButtonItem3 = [(SKUIContextActionsPresentationSource *)self barButtonItem];
      popoverPresentationController3 = [controllerCopy popoverPresentationController];
      [popoverPresentationController3 setBarButtonItem:barButtonItem3];
    }

    else
    {
      sourceView2 = [(SKUIContextActionsPresentationSource *)self sourceView];

      if (!sourceView2)
      {
        goto LABEL_16;
      }

      sourceView3 = [(SKUIContextActionsPresentationSource *)self sourceView];
      popoverPresentationController4 = [controllerCopy popoverPresentationController];
      [popoverPresentationController4 setSourceView:sourceView3];

      [(SKUIContextActionsPresentationSource *)self sourceRect];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      barButtonItem3 = [controllerCopy popoverPresentationController];
      [barButtonItem3 setSourceRect:{v28, v30, v32, v34}];
    }
  }

LABEL_16:
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithViewController:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIContextActionsPresentationSource initWithViewController:]";
}

@end