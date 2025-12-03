@interface WhatToTestViewModel
- (void)showAppLockup:(id)lockup subtitles:(id)subtitles imageTemplateURL:(id)l iconNeedsMask:(BOOL)mask;
- (void)showHowToScreenWithTitle:(id)title subtitle:(id)subtitle deviceImage:(id)image primaryButtonTitle:(id)buttonTitle secondaryButtonTitle:(id)secondaryButtonTitle;
- (void)showTestNotesWithTitle:(id)title testNotesTitle:(id)notesTitle testNotesText:(id)text primaryButtonTitle:(id)buttonTitle;
@end

@implementation WhatToTestViewModel

- (void)showHowToScreenWithTitle:(id)title subtitle:(id)subtitle deviceImage:(id)image primaryButtonTitle:(id)buttonTitle secondaryButtonTitle:(id)secondaryButtonTitle
{
  v8 = sub_26D3100C8();
  v10 = v9;
  v11 = sub_26D3100C8();
  v13 = v12;
  v14 = sub_26D3100C8();
  v16 = v15;
  v17 = sub_26D3100C8();
  v19 = v18;
  imageCopy = image;

  sub_26D30763C(v8, v10, v11, v13, imageCopy, v14, v16, v17, v19);
}

- (void)showTestNotesWithTitle:(id)title testNotesTitle:(id)notesTitle testNotesText:(id)text primaryButtonTitle:(id)buttonTitle
{
  v6 = sub_26D3100C8();
  v8 = v7;
  v9 = sub_26D3100C8();
  v11 = v10;
  v12 = sub_26D3100C8();
  v14 = v13;
  v15 = sub_26D3100C8();
  v17 = v16;

  sub_26D307B18(v6, v8, v9, v11, v12, v14, v15, v17);
}

- (void)showAppLockup:(id)lockup subtitles:(id)subtitles imageTemplateURL:(id)l iconNeedsMask:(BOOL)mask
{
  maskCopy = mask;
  v7 = sub_26D3100C8();
  v9 = v8;
  v10 = sub_26D310118();
  v11 = sub_26D3100C8();
  v13 = v12;

  sub_26D307F3C(v7, v9, v10, v11, v13, maskCopy);
}

@end