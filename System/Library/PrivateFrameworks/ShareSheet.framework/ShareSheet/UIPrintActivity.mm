@interface UIPrintActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (UIPrintInteractionController)printInteractionController;
- (id)_embeddedActivityViewController;
- (id)activityTitle;
- (id)printInteractionControllerWindowForPresentation:(id)a3;
- (void)activityDidFinish:(BOOL)a3;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)a3;
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

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
    v6 = v3;
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

- (void)prepareWithActivityItems:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v39 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v4;
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
        v12 = [(UIPrintActivity *)self printInteractionController];
        [v12 setPrintPageRenderer:v11];
LABEL_13:

        v5 = 0;
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(UIPrintActivity *)self printInteractionController];
        [v12 setPrintFormatter:v11];
        goto LABEL_13;
      }

      ScanForPrintingItems(v11, v5, &v39 + 1, &v39, &v38);
    }

    v8 = [v6 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_14:

  if ([v5 count] >= 2)
  {
    v13 = [(UIPrintActivity *)self printInteractionController];
    [v13 setPrintingItems:v5];
    goto LABEL_18;
  }

  if ([v5 count] == 1)
  {
    v13 = [v5 lastObject];
    v14 = [(UIPrintActivity *)self printInteractionController];
    [v14 setPrintingItem:v13];

LABEL_18:
  }

  v15 = [(UIPrintActivity *)self printInteractionController];
  [v15 setPrintInfo:0];

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
          v22 = [(UIPrintActivity *)self printInteractionController];
          [v22 setPrintInfo:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v18);
  }

  if ([v5 count])
  {
    v23 = [(UIPrintActivity *)self printInteractionController];
    v24 = [v23 printInfo];
    if (v24 || HIBYTE(v39) != 1)
    {
LABEL_33:
    }

    else
    {
      v25 = v39;

      if ((v25 & 1) == 0)
      {
        v23 = [MEMORY[0x1E69C5A10] printInfo];
        [v23 setOutputType:1];
        v24 = [(UIPrintActivity *)self printInteractionController];
        [v24 setPrintInfo:v23];
        goto LABEL_33;
      }
    }
  }

  v26 = [(UIPrintActivity *)self printInteractionController];
  [v26 setShowsPaperSelectionForLoadedPapers:1];

  v27 = [(UIPrintActivity *)self isContentManaged];
  v28 = [(UIPrintActivity *)self printInteractionController];
  [v28 setIsContentManaged:v27];

  v29 = [(UIPrintActivity *)self printInteractionController];
  [v29 setPrintActivityDelegate:self];
}

- (id)_embeddedActivityViewController
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  if (![v3 userInterfaceIdiom])
  {

    goto LABEL_13;
  }

  v4 = [(UIPrintActivity *)self printInteractionController];
  v5 = [v4 _canShowPreview];

  if (v5)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v6 = [(UIPrintActivity *)self printInteractionController];
  v7 = [v6 printPageRenderer];
  if (!v7)
  {
    v7 = [(UIPrintActivity *)self printInteractionController];
    v8 = [v7 printFormatter];
    if (v8)
    {
LABEL_7:

      goto LABEL_8;
    }

    v8 = [(UIPrintActivity *)self printInteractionController];
    v9 = [v8 printingItem];
    if (v9)
    {

      goto LABEL_7;
    }

    v17 = [(UIPrintActivity *)self printInteractionController];
    v18 = [v17 printingItems];
    v19 = [v18 count];

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
    v12 = [(UIPrintActivity *)self printInteractionController];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __50__UIPrintActivity__embeddedActivityViewController__block_invoke;
    v20[3] = &unk_1E71FADB0;
    v20[4] = self;
    v13 = [(UIPrintActivityWrapperNavigationController *)v11 initWithPrintInteractionController:v12 completion:v20];
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
  v3 = [(UIPrintActivity *)self printInteractionController];
  v4 = [v3 printPageRenderer];
  if (v4)
  {
    goto LABEL_6;
  }

  v4 = [(UIPrintActivity *)self printInteractionController];
  v5 = [v4 printFormatter];
  if (v5)
  {
LABEL_5:

LABEL_6:
LABEL_7:
    v7 = [(UIPrintActivity *)self printInteractionController];
    v8 = [(UIWindow *)self->_windowHoldingActivityViewController windowScene];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__UIPrintActivity_performActivity__block_invoke;
    v12[3] = &unk_1E71FAD88;
    v12[4] = self;
    [v7 _presentAnimated:1 hostingScene:v8 completionHandler:v12];

    return;
  }

  v5 = [(UIPrintActivity *)self printInteractionController];
  v6 = [v5 printingItem];
  if (v6)
  {

    goto LABEL_5;
  }

  v9 = [(UIPrintActivity *)self printInteractionController];
  v10 = [v9 printingItems];
  v11 = [v10 count];

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

- (void)activityDidFinish:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIPrintActivity;
  [(UIActivity *)&v4 activityDidFinish:a3];
  [(UIPrintActivity *)self setWrapperViewController:0];
}

- (id)printInteractionControllerWindowForPresentation:(id)a3
{
  v4 = [(UIPrintActivity *)self windowHoldingActivityViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [(UIPrintActivity *)self windowHoldingActivityViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v4 = [(UIPrintActivity *)self windowHoldingActivityViewController];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end