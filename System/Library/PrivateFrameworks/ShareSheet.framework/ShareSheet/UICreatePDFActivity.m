@interface UICreatePDFActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)activityTitle;
- (id)dismissActionsForPreviewController:(id)a3;
- (id)excludedActivityTypesForPreviewController:(id)a3;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (void)_cleanup;
- (void)_setupQuickLookWithURL:(id)a3 activityItems:(id)a4 isPreview:(BOOL)a5;
- (void)prepareWithActivityItems:(id)a3;
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

- (void)_setupQuickLookWithURL:(id)a3 activityItems:(id)a4 isPreview:(BOOL)a5
{
  v5 = a5;
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(UICreatePDFActivityItem);
  previewURLItem = self->_previewURLItem;
  self->_previewURLItem = v10;

  [(UICreatePDFActivityItem *)self->_previewURLItem setPreviewItemURL:v8];
  if (v5)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = v9;
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

      v18 = [v17 jobName];

      if (v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_10:
    }

    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AAE8] mainBundle];
    v21 = [v20 localizedInfoDictionary];
    v22 = [v21 objectForKey:@"CFBundleDisplayName"];

    if (!v22)
    {
      v23 = [MEMORY[0x1E696AAE8] mainBundle];
      v24 = [v23 infoDictionary];
      v22 = [v24 objectForKey:@"CFBundleDisplayName"];

      if (!v22)
      {
        v25 = [MEMORY[0x1E696AAE8] mainBundle];
        v26 = [v25 infoDictionary];
        v22 = [v26 objectForKey:@"CFBundleName"];

        if (!v22)
        {
          v27 = _ShareSheetBundle();
          v22 = [v27 localizedStringForKey:@"Untitled[Markup]" value:@"Untitled" table:@"Localizable"];
        }
      }
    }

    v28 = MEMORY[0x1E696AB78];
    v29 = [MEMORY[0x1E695DF00] date];
    v30 = [v28 localizedStringFromDate:v29 dateStyle:2 timeStyle:1];
    v18 = [v19 stringWithFormat:@"%@ - %@", v22, v30, v45];

LABEL_17:
    if ([v18 length] >= 0x81)
    {
      v31 = [v18 rangeOfComposedCharacterSequenceAtIndex:128];
      v33 = [v18 substringToIndex:v31 + v32];

      v18 = v33;
    }

    v34 = SanitizeStringForUseAsFileName_onceToken;
    v35 = v18;
    if (v34 != -1)
    {
      [UICreatePDFActivity _setupQuickLookWithURL:activityItems:isPreview:];
    }

    v36 = [v35 componentsSeparatedByCharactersInSet:SanitizeStringForUseAsFileName___illegalFileNameCharacters];

    v37 = [v36 componentsJoinedByString:@" | "];

    v38 = [v8 pathExtension];
    v39 = [v37 stringByAppendingPathExtension:v38];

    v40 = [v8 URLByDeletingLastPathComponent];
    v41 = [v40 URLByAppendingPathComponent:v39];

    v42 = [MEMORY[0x1E696AC08] defaultManager];
    [v42 removeItemAtURL:v41 error:0];

    v43 = [MEMORY[0x1E696AC08] defaultManager];
    v44 = [v43 moveItemAtURL:v8 toURL:v41 error:0];

    if (v44)
    {
      [(UICreatePDFActivityItem *)self->_previewURLItem setPreviewItemURL:v41];
    }
  }
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UICreatePDFActivity;
  if ([(UIPrintActivity *)&v7 canPerformWithActivityItems:v4]&& ![(UIPrintActivity *)self isContentManaged]&& (_UIActivityItemTypes() & 0xA0) != 0)
  {
    v5 = !_UIActivityHasAtMoreThan(v4, 128, 1);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)prepareWithActivityItems:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(getQLPreviewControllerClass());
  previewController = self->_previewController;
  self->_previewController = v5;

  [(QLPreviewController *)self->_previewController setAppearanceActions:4];
  _UIShimSetIsContentManaged(self->_previewController, [(UIPrintActivity *)self isContentManaged]);
  [(QLPreviewController *)self->_previewController setDataSource:self];
  v33 = self;
  [(QLPreviewController *)self->_previewController setDelegate:self];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = v4;
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
        v17 = [MEMORY[0x1E696AC08] defaultManager];
        v18 = [v17 temporaryDirectory];
        v19 = [MEMORY[0x1E696AFB0] UUID];
        v20 = [v19 UUIDString];
        v21 = [v20 stringByAppendingPathExtension:@".png"];
        v13 = [v18 URLByAppendingPathComponent:v21];

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
          [(UICreatePDFActivity *)v33 _setupQuickLookWithURL:v14 activityItems:v7 isPreview:0];

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

  v37.receiver = v33;
  v37.super_class = UICreatePDFActivity;
  [(UIPrintActivity *)&v37 prepareWithActivityItems:v7];
  v24 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v24 bounds];
  v26 = v25;
  v28 = v27;

  v29 = [(UIPrintActivity *)v33 printInteractionController];
  [v29 _setupPrintPanel:0];

  v30 = [(UIPrintActivity *)v33 printInteractionController];
  v31 = [[UICreatePDFActivityPrintPaper alloc] initWithPaperSize:v26 + -144.0, v28 + -72.0];
  [v30 setPaper:v31];

  v32 = [(UIPrintActivity *)v33 printInteractionController];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __48__UICreatePDFActivity_prepareWithActivityItems___block_invoke;
  v35[3] = &unk_1E71FA558;
  v35[4] = v33;
  v36 = v7;
  [v32 _generatePrintPreview:v35];

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

- (id)excludedActivityTypesForPreviewController:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(UICreatePDFActivity *)self activityType];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
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

- (id)dismissActionsForPreviewController:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(UICreatePDFActivityItem *)self->_previewURLItem previewItemURL];

  if (v6)
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.down"];
    QLDismissActionClass = getQLDismissActionClass();
    v9 = _ShareSheetBundle();
    v10 = [v9 localizedStringForKey:@"Save File to...[Markup]" value:@"Save File To…" table:@"Localizable"];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __58__UICreatePDFActivity_dismissActionsForPreviewController___block_invoke;
    v21 = &unk_1E71FA580;
    v22 = self;
    v23 = v4;
    v11 = [(objc_class *)QLDismissActionClass actionWithTitle:v10 image:v7 alertStyle:0 shouldDismissQuickLookAutomatically:0 handler:&v18];

    [v5 addObject:{v11, v18, v19, v20, v21, v22}];
  }

  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  v13 = getQLDismissActionClass();
  v14 = _ShareSheetBundle();
  v15 = [v14 localizedStringForKey:@"Delete PDF[Markup]" value:@"Delete PDF" table:@"Localizable"];
  v16 = [(objc_class *)v13 actionWithTitle:v15 image:v12 alertStyle:2 shouldDismissQuickLookAutomatically:1 handler:&__block_literal_global_20];

  [v5 addObject:v16];

  return v5;
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