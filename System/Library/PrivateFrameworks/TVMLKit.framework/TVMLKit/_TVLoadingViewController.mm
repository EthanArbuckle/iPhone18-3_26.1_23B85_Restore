@interface _TVLoadingViewController
- (CGSize)_backgroundImageProxySize;
- (_TVLoadingViewController)init;
- (id)_backgroundImageProxy;
- (int64_t)_blurEffectStyle;
- (void)_configureWithBgImage:(id)image backdropImage:(id)backdropImage;
- (void)loadView;
- (void)setSpinnerDelay:(double)delay;
- (void)updateWithViewElement:(id)element;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _TVLoadingViewController

- (_TVLoadingViewController)init
{
  v3.receiver = self;
  v3.super_class = _TVLoadingViewController;
  result = [(_TVLoadingViewController *)&v3 init];
  if (result)
  {
    result->_spinnerDelay = 0.0;
  }

  return result;
}

- (void)updateWithViewElement:(id)element
{
  v60 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v55.receiver = self;
  v55.super_class = _TVLoadingViewController;
  [(_TVBgImageLoadingViewController *)&v55 updateWithViewElement:elementCopy];
  objc_storeStrong(&self->_loadingTemplateElement, element);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v34 = elementCopy;
  obj = [elementCopy children];
  v6 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_41;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v52;
  v36 = *v52;
  do
  {
    v10 = 0;
    v37 = v7;
    do
    {
      if (*v52 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v51 + 1) + 8 * v10);
      tv_elementType = [v11 tv_elementType];
      switch(tv_elementType)
      {
        case 12:
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          children = [v11 children];
          v21 = [children countByEnumeratingWithState:&v43 objects:v57 count:16];
          if (!v21)
          {
            break;
          }

          v22 = v21;
          v23 = *v44;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v44 != v23)
              {
                objc_enumerationMutation(children);
              }

              v25 = *(*(&v43 + 1) + 8 * i);
              if ([v25 tv_elementType] == 16 && objc_msgSend(v25, "tv_imageType") == 3)
              {
                objc_storeStrong(&self->_heroImgElement, v25);
              }
            }

            v22 = [children countByEnumeratingWithState:&v43 objects:v57 count:16];
          }

          while (v22);
LABEL_35:
          v9 = v36;
          v7 = v37;
          break;
        case 4:
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          children = [v11 children];
          v15 = [children countByEnumeratingWithState:&v47 objects:v58 count:16];
          if (v15)
          {
            v16 = v15;
            v35 = v8;
            v17 = *v48;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v48 != v17)
                {
                  objc_enumerationMutation(children);
                }

                v19 = *(*(&v47 + 1) + 8 * j);
                p_bgImageElement = &self->_bgImageElement;
                if (self->_bgImageElement || [*(*(&v47 + 1) + 8 * j) tv_elementType] != 16 || objc_msgSend(v19, "tv_imageType"))
                {
                  p_bgImageElement = &self->_heroImgElement;
                  if (self->_heroImgElement || [v19 tv_elementType] != 16 || objc_msgSend(v19, "tv_imageType") != 3)
                  {
                    continue;
                  }
                }

                objc_storeStrong(p_bgImageElement, v19);
              }

              v16 = [children countByEnumeratingWithState:&v47 objects:v58 count:16];
            }

            while (v16);
            v8 = v35;
            goto LABEL_35;
          }

          break;
        case 1:
          v13 = v11;
          children = v8;
          v8 = v13;
          break;
        default:
          goto LABEL_37;
      }

LABEL_37:
      ++v10;
    }

    while (v10 != v7);
    v7 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  }

  while (v7);
LABEL_41:

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  children2 = [v8 children];
  v27 = [children2 countByEnumeratingWithState:&v39 objects:v56 count:16];
  if (v27)
  {
    v28 = *v40;
    while (2)
    {
      for (k = 0; k != v27; k = k + 1)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(children2);
        }

        v30 = *(*(&v39 + 1) + 8 * k);
        if ([v30 tv_elementType] == 55)
        {
          v27 = v30;
          goto LABEL_51;
        }
      }

      v27 = [children2 countByEnumeratingWithState:&v39 objects:v56 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

LABEL_51:

  [(_TVLoadingViewController *)self loadViewIfNeeded];
  v31 = +[TVInterfaceFactory sharedInterfaceFactory];
  v32 = [v31 _viewFromElement:v27 existingView:0];

  view = [(_TVLoadingViewController *)self view];
  [view setLoadingTitleLabel:v32];
}

- (id)_backgroundImageProxy
{
  if (self->_bgImageElement)
  {
    appDocument = [(IKViewElement *)self->_loadingTemplateElement appDocument];
    [appDocument tv_adjustedWindowSize];
    v5 = v4;
    v7 = v6;

    v8 = objc_opt_new();
    [v8 setImageSize:{v5, v7}];
    v9 = [TVImageLayout layoutWithLayout:v8 element:self->_bgImageElement];
    tv_imageProxy = [(IKImageElement *)self->_bgImageElement tv_imageProxyWithLayout:v8];
  }

  else
  {
    heroImgElement = self->_heroImgElement;
    if (heroImgElement)
    {
      tv_imageProxy = [(IKImageElement *)heroImgElement tv_imageProxy];
    }

    else
    {
      tv_imageProxy = 0;
    }
  }

  return tv_imageProxy;
}

- (int64_t)_blurEffectStyle
{
  if ([TVMLUtilities interfaceStyleForTemplateElement:self->_loadingTemplateElement]== 1)
  {
    return 4000;
  }

  else
  {
    return 4005;
  }
}

- (CGSize)_backgroundImageProxySize
{
  bgImageElement = self->_bgImageElement;
  if (bgImageElement || (bgImageElement = self->_heroImgElement) != 0)
  {

    [(IKImageElement *)bgImageElement tv_imageScaleToSize];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v7.receiver = self;
    v7.super_class = _TVLoadingViewController;
    [(_TVBgImageLoadingViewController *)&v7 _backgroundImageProxySize];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_configureWithBgImage:(id)image backdropImage:(id)backdropImage
{
  imageCopy = image;
  view = [(_TVLoadingViewController *)self view];
  backgroundImageView = [view backgroundImageView];
  [backgroundImageView setImage:imageCopy];
}

- (void)loadView
{
  v3 = [_TVLoadingView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = [(_TVLoadingView *)v3 initWithFrame:?];

  [(_TVLoadingView *)v5 setAutoresizingMask:45];
  [(_TVLoadingViewController *)self setView:v5];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = _TVLoadingViewController;
  [(_TVBgImageLoadingViewController *)&v5 viewDidAppear:appear];
  view = [(_TVLoadingViewController *)self view];
  [view performSelector:sel__showSpinner withObject:0 afterDelay:self->_spinnerDelay];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = _TVLoadingViewController;
  [(_TVBgImageLoadingViewController *)&v12 viewWillAppear:appear];
  view = [(_TVLoadingViewController *)self view];
  loadingTitleLabel = [view loadingTitleLabel];
  [loadingTitleLabel setAlpha:0.0];

  loadingTitleLabel2 = [view loadingTitleLabel];
  CGAffineTransformMakeScale(&v11, 0.85, 0.85);
  [loadingTitleLabel2 setTransform:&v11];

  v7 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43___TVLoadingViewController_viewWillAppear___block_invoke;
  v9[3] = &unk_279D6E7F8;
  v10 = view;
  v8 = view;
  [v7 animateWithDuration:v9 animations:0 completion:0.4];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = _TVLoadingViewController;
  [(_TVLoadingViewController *)&v9 viewWillDisappear:disappear];
  view = [(_TVLoadingViewController *)self view];
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46___TVLoadingViewController_viewWillDisappear___block_invoke;
  v7[3] = &unk_279D6E7F8;
  v8 = view;
  v6 = view;
  [v5 animateWithDuration:v7 animations:0 completion:0.4];
}

- (void)setSpinnerDelay:(double)delay
{
  self->_spinnerDelay = delay;
  view = [(_TVLoadingViewController *)self view];
  spinnerView = [view spinnerView];
  [spinnerView alpha];
  v7 = v6;

  if (v7 < 1.0)
  {
    v8 = MEMORY[0x277D82BB8];
    view2 = [(_TVLoadingViewController *)self view];
    [v8 cancelPreviousPerformRequestsWithTarget:view2 selector:sel__showSpinner object:0];

    view3 = [(_TVLoadingViewController *)self view];
    [view3 performSelector:sel__showSpinner withObject:0 afterDelay:self->_spinnerDelay];
  }
}

@end