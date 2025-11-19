@interface STEyeReliefIntroHowItWorksViewController
- (STEyeReliefIntroHowItWorksViewController)initWithIntroductionModel:(id)a3 completionHandler:(id)a4;
- (id)initForChecklistFlow:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)_enable;
- (void)_notNow:(id)a3;
- (void)viewDidLoad;
@end

@implementation STEyeReliefIntroHowItWorksViewController

- (id)initForChecklistFlow:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = v7;
  if (v4)
  {
    v9 = @"ChecklistScreenDistanceTitle";
  }

  else
  {
    v9 = @"ScreenDistanceEDUFeatureHowItWorksTitle";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];
  v11 = [v8 localizedStringForKey:@"ScreenDistanceEDUFeatureHowItWorksDetailText" value:&stru_28766E5A8 table:0];
  v16.receiver = self;
  v16.super_class = STEyeReliefIntroHowItWorksViewController;
  v12 = [(STEyeReliefIntroHowItWorksViewController *)&v16 initWithTitle:v10 detailText:v11 symbolName:@"chevron.3.up.perspective.and.rectangle" contentLayout:2];
  v13 = _Block_copy(v6);

  completionHandler = v12->_completionHandler;
  v12->_completionHandler = v13;

  v12->_forChecklistFlow = v4;
  return v12;
}

- (STEyeReliefIntroHowItWorksViewController)initWithIntroductionModel:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = [(STEyeReliefIntroHowItWorksViewController *)self initForChecklistFlow:1 withCompletionHandler:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 155, a3);
  }

  return v9;
}

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = STEyeReliefIntroHowItWorksViewController;
  [(OBBaseWelcomeController *)&v41 viewDidLoad];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureHowItWorksFirstListItemTitle" value:&stru_28766E5A8 table:0];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v5 usesMetricSystem];

  v7 = objc_alloc(MEMORY[0x277CCAB10]);
  if (v6)
  {
    v8 = [MEMORY[0x277CCAE20] centimeters];
    v9 = 30.0;
  }

  else
  {
    v8 = [MEMORY[0x277CCAE20] inches];
    v9 = 12.0;
  }

  v10 = [v7 initWithDoubleValue:v8 unit:v9];

  v11 = objc_alloc_init(MEMORY[0x277CCAB18]);
  [v11 setUnitOptions:1];
  [v11 setUnitStyle:3];
  v37 = v11;
  v38 = v10;
  v12 = [v11 stringFromMeasurement:v10];
  v13 = MEMORY[0x277CCACA8];
  v14 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureHowItWorksFirstListItemDetailText" value:&stru_28766E5A8 table:0];
  v36 = v12;
  v15 = [v13 localizedStringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v12];

  [MEMORY[0x277D755B8] systemImageNamed:@"eye.fill"];
  v34 = v39 = v4;
  v35 = v15;
  [(STEyeReliefIntroHowItWorksViewController *)self addBulletedListItemWithTitle:v4 description:v15 image:?];
  v16 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureHowItWorksSecondListItemTitle" value:&stru_28766E5A8 table:0];
  v17 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureHowItWorksSecondListItemDetailText" value:&stru_28766E5A8 table:0];
  [MEMORY[0x277D755B8] systemImageNamed:@"lock.shield.fill"];
  v32 = v33 = v16;
  [(STEyeReliefIntroHowItWorksViewController *)self addBulletedListItemWithTitle:v16 description:v17 image:?];
  v18 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureHowItWorksThirdListItemTitle" value:&stru_28766E5A8 table:0];
  v19 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureHowItWorksThirdListItemDetailText" value:&stru_28766E5A8 table:0];
  v20 = [MEMORY[0x277D755B8] systemImageNamed:@"ruler.fill"];
  v31 = v18;
  [(STEyeReliefIntroHowItWorksViewController *)self addBulletedListItemWithTitle:v18 description:v19 image:v20];
  v21 = [(STIntroductionViewModel *)self->_model screenDistanceEnabled];
  v22 = [v21 BOOLValue];

  if (v22)
  {
    v23 = @"ScreenDistanceEDUFeatureHowItWorksContinueButton";
  }

  else
  {
    v23 = @"ScreenDistanceEDUFeatureHowItWorksEnablementButton";
  }

  if (v22)
  {
    v24 = @"ScreenDistanceEDUFeatureHowItWorksTurnOffButton";
  }

  else
  {
    v24 = @"ScreenDistanceEDUFeatureHowItWorksNotNowButton";
  }

  v25 = [v3 localizedStringForKey:v23 value:&stru_28766E5A8 table:0];
  v26 = [v3 localizedStringForKey:v24 value:&stru_28766E5A8 table:0];
  v27 = [MEMORY[0x277D37618] boldButton];
  [v27 setAccessibilityIdentifier:@"ScreenDistanceEDUFeatureHowItWorksEnablementButton"];
  [v27 setTitle:v25 forState:0];
  [v27 addTarget:self action:sel__enable forControlEvents:64];
  v28 = [(STEyeReliefIntroHowItWorksViewController *)self buttonTray];
  [v28 addButton:v27];

  v29 = [MEMORY[0x277D37650] linkButton];
  [v29 setAccessibilityIdentifier:@"ScreenDistanceEDUFeatureHowItWorksNotNowButton"];
  [v29 setTitle:v26 forState:0];
  [v29 addTarget:self action:sel__notNow_ forControlEvents:0x2000];
  v30 = [(STEyeReliefIntroHowItWorksViewController *)self buttonTray];
  [v30 addButton:v29];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STEyeReliefIntroHowItWorksViewController.viewDidLoad", buf, 2u);
  }
}

- (void)_enable
{
  v3 = [(STEyeReliefIntroHowItWorksViewController *)self completionHandler];

  if (v3)
  {
    v4 = [(STEyeReliefIntroHowItWorksViewController *)self completionHandler];
    v4[2](v4, &unk_28769D040);
  }
}

- (void)_notNow:(id)a3
{
  v4 = [(STEyeReliefIntroHowItWorksViewController *)self completionHandler];

  if (v4)
  {
    v5 = [(STEyeReliefIntroHowItWorksViewController *)self completionHandler];
    v5[2](v5, &unk_28769D058);
  }
}

@end