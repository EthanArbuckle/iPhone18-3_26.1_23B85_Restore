@interface UICreatePDFActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityTitle;
- (id)dismissActionsForPreviewController:(id)controller;
- (id)excludedActivityTypesForPreviewController:(id)controller;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (void)_cleanup;
- (void)_setupQuickLookWithURL:(id)l activityItems:(id)items isPreview:(BOOL)preview;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation UICreatePDFActivity

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
  v3 = [v2 localizedStringForKey:@"Markup[Markup]" value:@"Markup" table:@"Localizable"];

  return v3;
}

- (void)_setupQuickLookWithURL:(id)l activityItems:(id)items isPreview:(BOOL)preview
{
  previewCopy = preview;
  v50 = *MEMORY[0x1E69E9840];
  lCopy = l;
  itemsCopy = items;
  v10 = objc_alloc_init(UICreatePDFActivityItem);
  previewURLItem = self->_previewURLItem;
  self->_previewURLItem = v10;

  [(UICreatePDFActivityItem *)self->_previewURLItem setPreviewItemURL:lCopy];
  if (previewCopy)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = itemsCopy;
    v13 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v46;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v45 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      jobName = [v17 jobName];

      if (jobName)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_10:
    }

    v19 = MEMORY[0x1E696AEC0];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    localizedInfoDictionary = [mainBundle localizedInfoDictionary];
    v22 = [localizedInfoDictionary objectForKey:@"CFBundleDisplayName"];

    if (!v22)
    {
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      infoDictionary = [mainBundle2 infoDictionary];
      v22 = [infoDictionary objectForKey:@"CFBundleDisplayName"];

      if (!v22)
      {
        mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
        infoDictionary2 = [mainBundle3 infoDictionary];
        v22 = [infoDictionary2 objectForKey:@"CFBundleName"];

        if (!v22)
        {
          v27 = _ShareSheetBundle();
          v22 = [v27 localizedStringForKey:@"Untitled[Markup]" value:@"Untitled" table:@"Localizable"];
        }
      }
    }

    v28 = MEMORY[0x1E696AB78];
    date = [MEMORY[0x1E695DF00] date];
    v30 = [v28 localizedStringFromDate:date dateStyle:2 timeStyle:1];
    jobName = [v19 stringWithFormat:@"%@ - %@", v22, v30, v45];

LABEL_17:
    if ([jobName length] >= 0x81)
    {
      v31 = [jobName rangeOfComposedCharacterSequenceAtIndex:128];
      v33 = [jobName substringToIndex:v31 + v32];

      jobName = v33;
    }

    v34 = SanitizeStringForUseAsFileName_onceToken;
    v35 = jobName;
    if (v34 != -1)
    {
      [UICreatePDFActivity _setupQuickLookWithURL:activityItems:isPreview:];
    }

    v36 = [v35 componentsSeparatedByCharactersInSet:SanitizeStringForUseAsFileName___illegalFileNameCharacters];

    v37 = [v36 componentsJoinedByString:@" | "];

    pathExtension = [lCopy pathExtension];
    v39 = [v37 stringByAppendingPathExtension:pathExtension];

    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    v41 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v39];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v41 error:0];

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v44 = [defaultManager2 moveItemAtURL:lCopy toURL:v41 error:0];

    if (v44)
    {
      [(UICreatePDFActivityItem *)self->_previewURLItem setPreviewItemURL:v41];
    }
  }
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemsCopy = items;
  v7.receiver = self;
  v7.super_class = UICreatePDFActivity;
  if ([(UIPrintActivity *)&v7 canPerformWithActivityItems:itemsCopy]&& ![(UIPrintActivity *)self isContentManaged]&& (_UIActivityItemTypes() & 0xA0) != 0)
  {
    v5 = !_UIActivityHasAtMoreThan(itemsCopy, 128, 1);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)prepareWithActivityItems:(id)items
{
  v43 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = objc_alloc_init(getQLPreviewControllerClass());
  previewController = self->_previewController;
  self->_previewController = v5;

  [(QLPreviewController *)self->_previewController setAppearanceActions:4];
  _UIShimSetIsContentManaged(self->_previewController, [(UIPrintActivity *)self isContentManaged]);
  [(QLPreviewController *)self->_previewController setDataSource:self];
  selfCopy = self;
  [(QLPreviewController *)self->_previewController setDelegate:self];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
LABEL_3:
    v11 = 0;
    v34 = v9;
    while (1)
    {
      if (*v39 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v38 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(UIImage *)v12 isFileURL])
        {
          break;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v10;
        v16 = v7;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        temporaryDirectory = [defaultManager temporaryDirectory];
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        v21 = [uUIDString stringByAppendingPathExtension:@".png"];
        v13 = [temporaryDirectory URLByAppendingPathComponent:v21];

        v22 = UIImagePNGRepresentation(v12);
        v23 = [v22 writeToURL:v13 atomically:1];

        if (v23)
        {
          v7 = v16;
          v10 = v15;
          v9 = v34;
          goto LABEL_14;
        }

        v14 = 0;
        v7 = v16;
        v10 = v15;
        v9 = v34;
LABEL_16:

        if (v14)
        {
          [(UICreatePDFActivity *)selfCopy _setupQuickLookWithURL:v14 activityItems:v7 isPreview:0];

          goto LABEL_21;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    v13 = v12;
    if ([MEMORY[0x1E69C5A18] canPrintURL:v13] && (-[objc_class canPreviewItem:](getQLPreviewControllerClass(), "canPreviewItem:", v13) & 1) != 0)
    {
LABEL_14:
      v13 = v13;
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_16;
  }

LABEL_19:

  v37.receiver = selfCopy;
  v37.super_class = UICreatePDFActivity;
  [(UIPrintActivity *)&v37 prepareWithActivityItems:v7];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v26 = v25;
  v28 = v27;

  printInteractionController = [(UIPrintActivity *)selfCopy printInteractionController];
  [printInteractionController _setupPrintPanel:0];

  printInteractionController2 = [(UIPrintActivity *)selfCopy printInteractionController];
  v31 = [[UICreatePDFActivityPrintPaper alloc] initWithPaperSize:v26 + -144.0, v28 + -72.0];
  [printInteractionController2 setPaper:v31];

  printInteractionController3 = [(UIPrintActivity *)selfCopy printInteractionController];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __48__UICreatePDFActivity_prepareWithActivityItems___block_invoke;
  v35[3] = &unk_1E71FA558;
  v35[4] = selfCopy;
  v36 = v7;
  [printInteractionController3 _generatePrintPreview:v35];

LABEL_21:
}

void __48__UICreatePDFActivity_prepareWithActivityItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__UICreatePDFActivity_prepareWithActivityItems___block_invoke_2;
  block[3] = &unk_1E71F9638;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __48__UICreatePDFActivity_prepareWithActivityItems___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setupQuickLookWithURL:*(a1 + 40) activityItems:*(a1 + 48) isPreview:1];
  [*(*(a1 + 32) + 176) reloadData];
  v2 = [*(a1 + 32) printInteractionController];
  [v2 _cleanPrintState];
}

- (void)_cleanup
{
  previewURLItem = self->_previewURLItem;
  self->_previewURLItem = 0;

  previewController = self->_previewController;
  self->_previewController = 0;

  v5.receiver = self;
  v5.super_class = UICreatePDFActivity;
  [(UIPrintActivity *)&v5 _cleanup];
}

- (id)excludedActivityTypesForPreviewController:(id)controller
{
  v6[1] = *MEMORY[0x1E69E9840];
  activityType = [(UICreatePDFActivity *)self activityType];
  v6[0] = activityType;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  previewURLItem = self->_previewURLItem;
  if (previewURLItem)
  {
    v5 = previewURLItem;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:&stru_1EFE999E0];
  }

  return v5;
}

- (id)dismissActionsForPreviewController:(id)controller
{
  controllerCopy = controller;
  array = [MEMORY[0x1E695DF70] array];
  previewItemURL = [(UICreatePDFActivityItem *)self->_previewURLItem previewItemURL];

  if (previewItemURL)
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.down"];
    QLDismissActionClass = getQLDismissActionClass();
    v9 = _ShareSheetBundle();
    v10 = [v9 localizedStringForKey:@"Save File to...[Markup]" value:@"Save File To…" table:@"Localizable"];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __58__UICreatePDFActivity_dismissActionsForPreviewController___block_invoke;
    v21 = &unk_1E71FA580;
    selfCopy = self;
    v23 = controllerCopy;
    v11 = [(objc_class *)QLDismissActionClass actionWithTitle:v10 image:v7 alertStyle:0 shouldDismissQuickLookAutomatically:0 handler:&v18];

    [array addObject:{v11, v18, v19, v20, v21, selfCopy}];
  }

  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  v13 = getQLDismissActionClass();
  v14 = _ShareSheetBundle();
  v15 = [v14 localizedStringForKey:@"Delete PDF[Markup]" value:@"Delete PDF" table:@"Localizable"];
  v16 = [(objc_class *)v13 actionWithTitle:v15 image:v12 alertStyle:2 shouldDismissQuickLookAutomatically:1 handler:&__block_literal_global_20];

  [array addObject:v16];

  return array;
}

void __58__UICreatePDFActivity_dismissActionsForPreviewController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [v7 firstObject];
    v5 = [v4 editedFileURL];

    if (v5)
    {
LABEL_3:
      v6 = [objc_alloc(MEMORY[0x1E69DC968]) initWithURL:v5 inMode:2];
      [v6 setDelegate:*(a1 + 32)];
      [*(a1 + 40) presentViewController:v6 animated:1 completion:0];

      goto LABEL_6;
    }
  }

  else
  {
    v5 = [*(*(a1 + 32) + 184) previewItemURL];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  [*(a1 + 32) activityDidFinish:0];
LABEL_6:
}

@end