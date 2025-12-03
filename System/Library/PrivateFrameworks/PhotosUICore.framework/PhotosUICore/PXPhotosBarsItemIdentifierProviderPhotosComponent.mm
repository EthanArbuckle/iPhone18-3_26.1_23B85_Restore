@interface PXPhotosBarsItemIdentifierProviderPhotosComponent
+ (void)valuesForModel:(id)model title:(id *)title leadingIdentifiers:(id *)identifiers trailingIdentifiers:(id *)trailingIdentifiers leadingToolbarIdentifiers:(id *)toolbarIdentifiers centerToolbarIdentifiers:(id *)centerToolbarIdentifiers trailingToolbarIdentifiers:(id *)trailingToolbarIdentifiers hasSharedLibraryOrPreview:(BOOL)self0 canShowSortAndFilterMenu:(BOOL)self1;
@end

@implementation PXPhotosBarsItemIdentifierProviderPhotosComponent

+ (void)valuesForModel:(id)model title:(id *)title leadingIdentifiers:(id *)identifiers trailingIdentifiers:(id *)trailingIdentifiers leadingToolbarIdentifiers:(id *)toolbarIdentifiers centerToolbarIdentifiers:(id *)centerToolbarIdentifiers trailingToolbarIdentifiers:(id *)trailingToolbarIdentifiers hasSharedLibraryOrPreview:(BOOL)self0 canShowSortAndFilterMenu:(BOOL)self1
{
  v50[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  if (![modelCopy contentPrivacyState])
  {
    if ([modelCopy isInSelectMode])
    {
      if ([modelCopy canExitSelectMode])
      {
        v50[0] = *off_1E7721E30;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
        *identifiers = v17;
      }

      else
      {
        *identifiers = MEMORY[0x1E695E0F0];
      }

      if ([modelCopy allowsSelectAllAction])
      {
        selectionSnapshot = [modelCopy selectionSnapshot];
        areAllItemsSelected = [selectionSnapshot areAllItemsSelected];
        v21 = off_1E7721E50;
        if (!areAllItemsSelected)
        {
          v21 = off_1E7721EF0;
        }

        v49 = *v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
        *trailingIdentifiers = v22;
      }

      else
      {
        *trailingIdentifiers = MEMORY[0x1E695E0F0];
      }

      v32 = MEMORY[0x1E695E0F0];
      *toolbarIdentifiers = MEMORY[0x1E695E0F0];
      v48 = *off_1E7721EF8;
      *centerToolbarIdentifiers = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
      if (([modelCopy allowsShareAction] & 1) == 0)
      {
        *trailingToolbarIdentifiers = v32;
        goto LABEL_3;
      }

      v47 = *off_1E7721F08;
      v33 = MEMORY[0x1E695DEC8];
      v34 = &v47;
LABEL_29:
      v36 = [v33 arrayWithObjects:v34 count:1];
      *trailingToolbarIdentifiers = v36;

      goto LABEL_3;
    }

    if ([modelCopy wantsSelectButton])
    {
      v46 = *off_1E7721EE8;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      *identifiers = v18;
    }

    else
    {
      *identifiers = MEMORY[0x1E695E0F0];
    }

    v45 = *off_1E7721E38;
    *trailingIdentifiers = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    v23 = MEMORY[0x1E695E0F0];
    *centerToolbarIdentifiers = MEMORY[0x1E695E0F0];
    v24 = [modelCopy allowsSortAndFilterMenu] & menu;
    allowsShareAllAction = [modelCopy allowsShareAllAction];
    appViewModel = [modelCopy appViewModel];
    openInPhotosAppButtonNavigationDestination = [appViewModel openInPhotosAppButtonNavigationDestination];

    if (openInPhotosAppButtonNavigationDestination)
    {
      if ((v24 & allowsShareAllAction) == 1)
      {
        v28 = *off_1E7721F08;
        v44[0] = *off_1E7721F20;
        v44[1] = v28;
        v29 = MEMORY[0x1E695DEC8];
        v30 = v44;
        v31 = 2;
      }

      else
      {
        if (v24)
        {
          v43 = *off_1E7721F20;
          v29 = MEMORY[0x1E695DEC8];
          v30 = &v43;
        }

        else
        {
          if (!allowsShareAllAction)
          {
            v37 = MEMORY[0x1E695E0F0];
            goto LABEL_34;
          }

          v42 = *off_1E7721F08;
          v29 = MEMORY[0x1E695DEC8];
          v30 = &v42;
        }

        v31 = 1;
      }

      v37 = [v29 arrayWithObjects:v30 count:v31];
LABEL_34:
      *toolbarIdentifiers = v37;
      v41 = *off_1E7721EB8;
      *trailingToolbarIdentifiers = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
      goto LABEL_3;
    }

    if (v24)
    {
      v40 = *off_1E7721F20;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      *toolbarIdentifiers = v35;

      if ((allowsShareAllAction & 1) == 0)
      {
LABEL_24:
        *trailingToolbarIdentifiers = v23;
        goto LABEL_3;
      }
    }

    else
    {
      *toolbarIdentifiers = v23;
      if ((allowsShareAllAction & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v39 = *off_1E7721F08;
    v33 = MEMORY[0x1E695DEC8];
    v34 = &v39;
    goto LABEL_29;
  }

  v16 = MEMORY[0x1E695E0F0];
  *identifiers = MEMORY[0x1E695E0F0];
  v38 = *off_1E7721E38;
  *trailingIdentifiers = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  *toolbarIdentifiers = v16;
  *centerToolbarIdentifiers = v16;
  *trailingToolbarIdentifiers = v16;
LABEL_3:
}

@end