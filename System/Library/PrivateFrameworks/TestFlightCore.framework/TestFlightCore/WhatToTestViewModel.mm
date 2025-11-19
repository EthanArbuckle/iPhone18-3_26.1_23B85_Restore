@interface WhatToTestViewModel
- (void)showAppLockup:(id)a3 subtitles:(id)a4 imageTemplateURL:(id)a5 iconNeedsMask:(BOOL)a6;
- (void)showHowToScreenWithTitle:(id)a3 subtitle:(id)a4 deviceImage:(id)a5 primaryButtonTitle:(id)a6 secondaryButtonTitle:(id)a7;
- (void)showTestNotesWithTitle:(id)a3 testNotesTitle:(id)a4 testNotesText:(id)a5 primaryButtonTitle:(id)a6;
@end

@implementation WhatToTestViewModel

- (void)showHowToScreenWithTitle:(id)a3 subtitle:(id)a4 deviceImage:(id)a5 primaryButtonTitle:(id)a6 secondaryButtonTitle:(id)a7
{
  v8 = sub_26D3100C8();
  v10 = v9;
  v11 = sub_26D3100C8();
  v13 = v12;
  v14 = sub_26D3100C8();
  v16 = v15;
  v17 = sub_26D3100C8();
  v19 = v18;
  v20 = a5;

  sub_26D30763C(v8, v10, v11, v13, v20, v14, v16, v17, v19);
}

- (void)showTestNotesWithTitle:(id)a3 testNotesTitle:(id)a4 testNotesText:(id)a5 primaryButtonTitle:(id)a6
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

- (void)showAppLockup:(id)a3 subtitles:(id)a4 imageTemplateURL:(id)a5 iconNeedsMask:(BOOL)a6
{
  v6 = a6;
  v7 = sub_26D3100C8();
  v9 = v8;
  v10 = sub_26D310118();
  v11 = sub_26D3100C8();
  v13 = v12;

  sub_26D307F3C(v7, v9, v10, v11, v13, v6);
}

@end