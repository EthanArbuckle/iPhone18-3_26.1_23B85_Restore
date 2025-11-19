@interface UIDocumentUnavailableTitlePageView
@end

@implementation UIDocumentUnavailableTitlePageView

id __77___UIDocumentUnavailableTitlePageView__updateContentUnavailableConfiguration__block_invoke(uint64_t a1, void *a2, void *a3, char a4, int a5)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = v9[54];
  }

  v10 = v9;
  v11 = _UISolariumEnabled();
  if (v10)
  {
    v12 = a4;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    if (v12)
    {
      v13 = +[UIButtonConfiguration prominentGlassButtonConfiguration];
LABEL_11:
      v14 = v13;
      v15 = 0;
      goto LABEL_15;
    }

    v16 = +[UIButtonConfiguration glassButtonConfiguration];
  }

  else
  {
    if (v12)
    {
      v13 = +[UIButtonConfiguration filledButtonConfiguration];
      goto LABEL_11;
    }

    v16 = +[UIButtonConfiguration plainButtonConfiguration];
  }

  v14 = v16;
  v15 = 1;
LABEL_15:
  [v14 setButtonSize:3];
  if (_UISolariumEnabled())
  {
    v17 = 4;
  }

  else
  {
    v17 = 3;
  }

  [v14 setCornerStyle:v17];
  [v14 setTitleAlignment:2];
  [v14 _setAlwaysApplyTitleAlignment:1];
  if (v15)
  {
    if ((a4 & 1) == 0 && (_UISolariumEnabled() & 1) == 0)
    {
      if (v10)
      {
        [v14 setBaseForegroundColor:v10];
      }

      else
      {
        v26 = +[UIColor labelColor];
        [v14 setBaseForegroundColor:v26];
      }
    }
  }

  else
  {
    [v14 setBaseBackgroundColor:v10];
  }

  v27 = *off_1E70EC918;
  v18 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" weight:*off_1E70ECD30];
  v28[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];

  if (a5)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"​" attributes:v19];
    [v14 setAttributedTitle:v20];

    [v14 setShowsActivityIndicator:1];
    goto LABEL_31;
  }

  if (a2)
  {
    v21 = objc_alloc(MEMORY[0x1E696AAB0]);
    v22 = [a2 title];
    v23 = [v21 initWithString:v22 attributes:v19];
    [v14 setAttributedTitle:v23];

    v24 = [a2 image];
    [v14 setImage:v24];
  }

  else
  {
    if (![a3 length])
    {
      goto LABEL_31;
    }

    v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a3 attributes:v19];
    [v14 setAttributedTitle:v24];
  }

LABEL_31:

  return v14;
}

void __77___UIDocumentUnavailableTitlePageView__updateContentUnavailableConfiguration__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  if (a3 | a4)
  {
    v10 = a4;
    v11 = [v10 title];
    v12 = [v11 length];

    if (v12)
    {
      v22 = [v10 title];
      v13 = [v10 identifier];
      v14 = [v10 options];
      v15 = [v10 children];
      v16 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:v13 options:v14 children:v15];

      v17 = v22;
      v10 = v16;
    }

    else
    {
      v17 = _UILocalizedString(@"com.apple.documents.moreAction.title", @"The title of the button that presents additional actions.", @"More…");
    }

    v23 = v17;
    v18 = (*(*(a1 + 32) + 16))();
    if (a5)
    {
      [a2 setButton:v18];
      [a2 buttonProperties];
    }

    else
    {
      [a2 setSecondaryButton:v18];
      [a2 secondaryButtonProperties];
    }
    v19 = ;
    [v19 setPrimaryAction:a3];
    [v19 setMenu:v10];
    v20 = _UISolariumEnabled();
    v21 = 250.0;
    if (v20)
    {
      v21 = 280.0;
    }

    [v19 setMinimumSize:{v21, 0.0}];
    [v19 setRole:a5];
    [v19 setEnabled:*(a1 + 40)];
  }
}

@end