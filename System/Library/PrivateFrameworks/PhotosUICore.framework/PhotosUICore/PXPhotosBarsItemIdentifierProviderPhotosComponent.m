@interface PXPhotosBarsItemIdentifierProviderPhotosComponent
+ (void)valuesForModel:(id)a3 title:(id *)a4 leadingIdentifiers:(id *)a5 trailingIdentifiers:(id *)a6 leadingToolbarIdentifiers:(id *)a7 centerToolbarIdentifiers:(id *)a8 trailingToolbarIdentifiers:(id *)a9 hasSharedLibraryOrPreview:(BOOL)a10 canShowSortAndFilterMenu:(BOOL)a11;
@end

@implementation PXPhotosBarsItemIdentifierProviderPhotosComponent

+ (void)valuesForModel:(id)a3 title:(id *)a4 leadingIdentifiers:(id *)a5 trailingIdentifiers:(id *)a6 leadingToolbarIdentifiers:(id *)a7 centerToolbarIdentifiers:(id *)a8 trailingToolbarIdentifiers:(id *)a9 hasSharedLibraryOrPreview:(BOOL)a10 canShowSortAndFilterMenu:(BOOL)a11
{
  v50[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  if (![v15 contentPrivacyState])
  {
    if ([v15 isInSelectMode])
    {
      if ([v15 canExitSelectMode])
      {
        v50[0] = *off_1E7721E30;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
        *a5 = v17;
      }

      else
      {
        *a5 = MEMORY[0x1E695E0F0];
      }

      if ([v15 allowsSelectAllAction])
      {
        v19 = [v15 selectionSnapshot];
        v20 = [v19 areAllItemsSelected];
        v21 = off_1E7721E50;
        if (!v20)
        {
          v21 = off_1E7721EF0;
        }

        v49 = *v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
        *a6 = v22;
      }

      else
      {
        *a6 = MEMORY[0x1E695E0F0];
      }

      v32 = MEMORY[0x1E695E0F0];
      *a7 = MEMORY[0x1E695E0F0];
      v48 = *off_1E7721EF8;
      *a8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
      if (([v15 allowsShareAction] & 1) == 0)
      {
        *a9 = v32;
        goto LABEL_3;
      }

      v47 = *off_1E7721F08;
      v33 = MEMORY[0x1E695DEC8];
      v34 = &v47;
LABEL_29:
      v36 = [v33 arrayWithObjects:v34 count:1];
      *a9 = v36;

      goto LABEL_3;
    }

    if ([v15 wantsSelectButton])
    {
      v46 = *off_1E7721EE8;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      *a5 = v18;
    }

    else
    {
      *a5 = MEMORY[0x1E695E0F0];
    }

    v45 = *off_1E7721E38;
    *a6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    v23 = MEMORY[0x1E695E0F0];
    *a8 = MEMORY[0x1E695E0F0];
    v24 = [v15 allowsSortAndFilterMenu] & a11;
    v25 = [v15 allowsShareAllAction];
    v26 = [v15 appViewModel];
    v27 = [v26 openInPhotosAppButtonNavigationDestination];

    if (v27)
    {
      if ((v24 & v25) == 1)
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
          if (!v25)
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
      *a7 = v37;
      v41 = *off_1E7721EB8;
      *a9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
      goto LABEL_3;
    }

    if (v24)
    {
      v40 = *off_1E7721F20;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      *a7 = v35;

      if ((v25 & 1) == 0)
      {
LABEL_24:
        *a9 = v23;
        goto LABEL_3;
      }
    }

    else
    {
      *a7 = v23;
      if ((v25 & 1) == 0)
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
  *a5 = MEMORY[0x1E695E0F0];
  v38 = *off_1E7721E38;
  *a6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  *a7 = v16;
  *a8 = v16;
  *a9 = v16;
LABEL_3:
}

@end