@interface DBSListControllerAppearanceProvider
- (void)listController:(id)a3 updateSectionContentInsetAnimated:(BOOL)a4 isRegularWidth:(BOOL)a5 contentInsetInitialized:(BOOL)a6 contentInsetInitializedApplicator:(id)a7;
@end

@implementation DBSListControllerAppearanceProvider

- (void)listController:(id)a3 updateSectionContentInsetAnimated:(BOOL)a4 isRegularWidth:(BOOL)a5 contentInsetInitialized:(BOOL)a6 contentInsetInitializedApplicator:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v12 = a7;
  v13 = MEMORY[0x277D75418];
  v14 = a3;
  v15 = [v13 currentDevice];
  v16 = [v15 sf_isiPad];

  if ((v16 & 1) != 0 || v8)
  {
    v26.receiver = self;
    v26.super_class = DBSListControllerAppearanceProvider;
    [(PSListControllerDefaultAppearanceProvider *)&v26 listController:v14 updateSectionContentInsetAnimated:v9 isRegularWidth:v8 contentInsetInitialized:v7 contentInsetInitializedApplicator:v12];
  }

  else
  {
    v17 = *MEMORY[0x277D76F30];
    v18 = [v14 table];

    if (v9 && v7)
    {
      [v18 _setSectionContentInset:{v17, v17, v17, v17}];
      v14 = v18;
    }

    else
    {
      v19 = MEMORY[0x277D75D18];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __161__DBSListControllerAppearanceProvider_listController_updateSectionContentInsetAnimated_isRegularWidth_contentInsetInitialized_contentInsetInitializedApplicator___block_invoke;
      v20[3] = &unk_278459580;
      v14 = v18;
      v21 = v14;
      v22 = v17;
      v23 = v17;
      v24 = v17;
      v25 = v17;
      [v19 performWithoutAnimation:v20];
      v12[2](v12);
    }
  }
}

@end