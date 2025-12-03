@interface UIPrintActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)canPerformWithActivityItems:(id)items;
- (UIPrintInteractionController)printInteractionController;
- (id)_embeddedActivityViewController;
- (id)activityTitle;
- (id)printInteractionControllerWindowForPresentation:(id)presentation;
- (void)activityDidFinish:(BOOL)finish;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation UIPrintActivity

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"Print[Activity]" value:@"Print" table:@"Localizable"];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v15 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (![MEMORY[0x1E69C5A18] isPrintingAvailable] || (_UIActivityItemTypes() & 0x40) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else if ((_UIActivityItemTypes() & 0xA2) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = itemsCopy;
    v4 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([MEMORY[0x1E69C5A18] canPrintData:{v9, v10}] & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 isFileURL] || (objc_msgSend(MEMORY[0x1E69C5A18], "canPrintURL:", v9) & 1) == 0)
            {
              continue;
            }
          }

          LOBYTE(v4) = 1;
          goto LABEL_21;
        }

        v4 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

  return v4;
}

- (void)prepareWithActivityItems:(id)items
{
  v42 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  v39 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = *v35;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v35 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v34 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        printInteractionController = [(UIPrintActivity *)self printInteractionController];
        [printInteractionController setPrintPageRenderer:v11];
LABEL_13:

        array = 0;
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        printInteractionController = [(UIPrintActivity *)self printInteractionController];
        [printInteractionController setPrintFormatter:v11];
        goto LABEL_13;
      }

      ScanForPrintingItems(v11, array, &v39 + 1, &v39, &v38);
    }

    v8 = [v6 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_14:

  if ([array count] >= 2)
  {
    printInteractionController2 = [(UIPrintActivity *)self printInteractionController];
    [printInteractionController2 setPrintingItems:array];
    goto LABEL_18;
  }

  if ([array count] == 1)
  {
    printInteractionController2 = [array lastObject];
    printInteractionController3 = [(UIPrintActivity *)self printInteractionController];
    [printInteractionController3 setPrintingItem:printInteractionController2];

LABEL_18:
  }

  printInteractionController4 = [(UIPrintActivity *)self printInteractionController];
  [printInteractionController4 setPrintInfo:0];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v30 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          printInteractionController5 = [(UIPrintActivity *)self printInteractionController];
          [printInteractionController5 setPrintInfo:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v18);
  }

  if ([array count])
  {
    printInteractionController6 = [(UIPrintActivity *)self printInteractionController];
    printInfo = [printInteractionController6 printInfo];
    if (printInfo || HIBYTE(v39) != 1)
    {
LABEL_33:
    }

    else
    {
      v25 = v39;

      if ((v25 & 1) == 0)
      {
        printInteractionController6 = [MEMORY[0x1E69C5A10] printInfo];
        [printInteractionController6 setOutputType:1];
        printInfo = [(UIPrintActivity *)self printInteractionController];
        [printInfo setPrintInfo:printInteractionController6];
        goto LABEL_33;
      }
    }
  }

  printInteractionController7 = [(UIPrintActivity *)self printInteractionController];
  [printInteractionController7 setShowsPaperSelectionForLoadedPapers:1];

  isContentManaged = [(UIPrintActivity *)self isContentManaged];
  printInteractionController8 = [(UIPrintActivity *)self printInteractionController];
  [printInteractionController8 setIsContentManaged:isContentManaged];

  printInteractionController9 = [(UIPrintActivity *)self printInteractionController];
  [printInteractionController9 setPrintActivityDelegate:self];
}

- (id)_embeddedActivityViewController
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {

    goto LABEL_13;
  }

  printInteractionController = [(UIPrintActivity *)self printInteractionController];
  _canShowPreview = [printInteractionController _canShowPreview];

  if (_canShowPreview)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  printInteractionController2 = [(UIPrintActivity *)self printInteractionController];
  printPageRenderer = [printInteractionController2 printPageRenderer];
  if (!printPageRenderer)
  {
    printPageRenderer = [(UIPrintActivity *)self printInteractionController];
    printFormatter = [printPageRenderer printFormatter];
    if (printFormatter)
    {
LABEL_7:

      goto LABEL_8;
    }

    printFormatter = [(UIPrintActivity *)self printInteractionController];
    printingItem = [printFormatter printingItem];
    if (printingItem)
    {

      goto LABEL_7;
    }

    printInteractionController3 = [(UIPrintActivity *)self printInteractionController];
    printingItems = [printInteractionController3 printingItems];
    v19 = [printingItems count];

    if (v19)
    {
      goto LABEL_9;
    }

    if (self->_wrapperViewController)
    {
      [(UIPrintActivity *)self activityDidFinish:0];
    }

    goto LABEL_13;
  }

LABEL_8:

LABEL_9:
  wrapperViewController = self->_wrapperViewController;
  if (!wrapperViewController)
  {
    v11 = [UIPrintActivityWrapperNavigationController alloc];
    printInteractionController4 = [(UIPrintActivity *)self printInteractionController];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __50__UIPrintActivity__embeddedActivityViewController__block_invoke;
    v20[3] = &unk_1E71FADB0;
    v20[4] = self;
    v13 = [(UIPrintActivityWrapperNavigationController *)v11 initWithPrintInteractionController:printInteractionController4 completion:v20];
    v14 = self->_wrapperViewController;
    self->_wrapperViewController = v13;

    wrapperViewController = self->_wrapperViewController;
  }

  v15 = wrapperViewController;
LABEL_14:

  return v15;
}

- (void)performActivity
{
  printInteractionController = [(UIPrintActivity *)self printInteractionController];
  printPageRenderer = [printInteractionController printPageRenderer];
  if (printPageRenderer)
  {
    goto LABEL_6;
  }

  printPageRenderer = [(UIPrintActivity *)self printInteractionController];
  printFormatter = [printPageRenderer printFormatter];
  if (printFormatter)
  {
LABEL_5:

LABEL_6:
LABEL_7:
    printInteractionController2 = [(UIPrintActivity *)self printInteractionController];
    windowScene = [(UIWindow *)self->_windowHoldingActivityViewController windowScene];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__UIPrintActivity_performActivity__block_invoke;
    v12[3] = &unk_1E71FAD88;
    v12[4] = self;
    [printInteractionController2 _presentAnimated:1 hostingScene:windowScene completionHandler:v12];

    return;
  }

  printFormatter = [(UIPrintActivity *)self printInteractionController];
  printingItem = [printFormatter printingItem];
  if (printingItem)
  {

    goto LABEL_5;
  }

  printInteractionController3 = [(UIPrintActivity *)self printInteractionController];
  printingItems = [printInteractionController3 printingItems];
  v11 = [printingItems count];

  if (v11)
  {
    goto LABEL_7;
  }

  [(UIPrintActivity *)self activityDidFinish:0];
}

- (UIPrintInteractionController)printInteractionController
{
  printInteractionController = self->_printInteractionController;
  if (!printInteractionController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C5A18]);
    v5 = self->_printInteractionController;
    self->_printInteractionController = v4;

    printInteractionController = self->_printInteractionController;
  }

  return printInteractionController;
}

- (void)activityDidFinish:(BOOL)finish
{
  v4.receiver = self;
  v4.super_class = UIPrintActivity;
  [(UIActivity *)&v4 activityDidFinish:finish];
  [(UIPrintActivity *)self setWrapperViewController:0];
}

- (id)printInteractionControllerWindowForPresentation:(id)presentation
{
  windowHoldingActivityViewController = [(UIPrintActivity *)self windowHoldingActivityViewController];
  if (windowHoldingActivityViewController)
  {
    v5 = windowHoldingActivityViewController;
    windowHoldingActivityViewController2 = [(UIPrintActivity *)self windowHoldingActivityViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      windowHoldingActivityViewController = [(UIPrintActivity *)self windowHoldingActivityViewController];
    }

    else
    {
      windowHoldingActivityViewController = 0;
    }
  }

  return windowHoldingActivityViewController;
}

@end