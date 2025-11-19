@interface PSWatchOnlyAppCellularUsageSpecifier
+ (id)getGenericRoundIcon;
+ (void)setIconForSpecifier:(id)a3 bundleID:(id)a4;
@end

@implementation PSWatchOnlyAppCellularUsageSpecifier

+ (void)setIconForSpecifier:(id)a3 bundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy_;
  v18[4] = __Block_byref_object_dispose_;
  v19 = 0;
  v7 = [MEMORY[0x277D759A0] mainScreen];
  v8 = [v7 traitCollection];
  [v8 displayScale];
  if (v9 <= 2.0)
  {
    v10 = 47;
  }

  else
  {
    v10 = 48;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v11 = qword_280F75D38;
  v24 = qword_280F75D38;
  if (!qword_280F75D38)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __getNanoResourceGrabberClass_block_invoke;
    v20[3] = &unk_279BA8580;
    v20[4] = &v21;
    __getNanoResourceGrabberClass_block_invoke(v20);
    v11 = v22[3];
  }

  v12 = v11;
  _Block_object_dispose(&v21, 8);
  v13 = [v11 sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__PSWatchOnlyAppCellularUsageSpecifier_setIconForSpecifier_bundleID___block_invoke;
  v15[3] = &unk_279BA8558;
  v17 = v18;
  v14 = v5;
  v16 = v14;
  [v13 getIconForBundleID:v6 iconVariant:v10 block:v15 timeout:-1.0];

  _Block_object_dispose(v18, 8);
}

void __69__PSWatchOnlyAppCellularUsageSpecifier_setIconForSpecifier_bundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = v3;
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    v7 = +[PSWatchOnlyAppCellularUsageSpecifier getGenericRoundIcon];
    v8 = *(*(a1 + 40) + 8);
    v6 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (v9)
  {
    [*(a1 + 32) setProperty:v9 forKey:*MEMORY[0x277D3FFC0]];
  }
}

+ (id)getGenericRoundIcon
{
  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_2);
  }

  v3 = qword_280F75D30;

  return v3;
}

void __59__PSWatchOnlyAppCellularUsageSpecifier_getGenericRoundIcon__block_invoke()
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v0 = qword_280F75D48;
  v21 = qword_280F75D48;
  if (!qword_280F75D48)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getISIconClass_block_invoke;
    v16 = &unk_279BA8580;
    v17 = &v18;
    __getISIconClass_block_invoke(&v13);
    v0 = v19[3];
  }

  v1 = v0;
  _Block_object_dispose(&v18, 8);
  v2 = [v0 genericApplicationIcon];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v3 = qword_280F75D50;
  v21 = qword_280F75D50;
  if (!qword_280F75D50)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getISImageDescriptorClass_block_invoke;
    v16 = &unk_279BA8580;
    v17 = &v18;
    __getISImageDescriptorClass_block_invoke(&v13);
    v3 = v19[3];
  }

  v4 = v3;
  _Block_object_dispose(&v18, 8);
  v5 = [v3 alloc];
  ScreenScale();
  v7 = [v5 initWithSize:29.0 scale:{29.0, v6}];
  [v7 setShape:2];
  v8 = [v2 imageForDescriptor:v7];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x277D755B8];
    v11 = [v8 CGImage];
    [v9 scale];
    v8 = [v10 imageWithCGImage:v11 scale:0 orientation:?];
  }

  v12 = qword_280F75D30;
  qword_280F75D30 = v8;
}

@end