@interface TUIReportDetailsViewController
- (TUIReportDetailsViewController)initWithReportManager:(id)a3;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TUIReportDetailsViewController

- (TUIReportDetailsViewController)initWithReportManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUIReportDetailsViewController;
  v6 = [(TUIReportDetailsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportManager, a3);
  }

  return v7;
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(TUIReportDetailsViewController *)self setView:v3];

  v5 = [(TUIReportDetailsViewController *)self view];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v5 setBackgroundColor:v4];
}

- (void)viewDidLoad
{
  v40[4] = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = TUIReportDetailsViewController;
  [(TUIReportDetailsViewController *)&v39 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DETAILS_TITLE" value:&stru_287F92480 table:@"Localizable"];
  [(TUIReportDetailsViewController *)self setTitle:v4];

  v5 = objc_alloc(MEMORY[0x277D75C40]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  reportDetailsTextView = self->_reportDetailsTextView;
  self->_reportDetailsTextView = v6;

  [(UITextView *)self->_reportDetailsTextView setEditable:0];
  [(UITextView *)self->_reportDetailsTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = self->_reportDetailsTextView;
  v9 = [MEMORY[0x277D75348] labelColor];
  [(UITextView *)v8 setTextColor:v9];

  v10 = self->_reportDetailsTextView;
  v11 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] systemFontSize];
  v12 = *MEMORY[0x277D74418];
  v13 = [v11 monospacedSystemFontOfSize:? weight:?];
  [(UITextView *)v10 setFont:v13];

  v14 = self->_reportDetailsTextView;
  v15 = [(TUIReportManager *)self->_reportManager reportDetails];
  [(UITextView *)v14 setText:v15];

  [(UITextView *)self->_reportDetailsTextView setTextContainerInset:0.0, 8.0, 0.0, 8.0];
  v16 = [(TUIReportDetailsViewController *)self view];
  [v16 addSubview:self->_reportDetailsTextView];

  v30 = MEMORY[0x277CCAAD0];
  v37 = [(UITextView *)self->_reportDetailsTextView topAnchor];
  v38 = [(TUIReportDetailsViewController *)self view];
  v36 = [v38 safeAreaLayoutGuide];
  v35 = [v36 topAnchor];
  v34 = [v37 constraintEqualToAnchor:v35];
  v40[0] = v34;
  v32 = [(UITextView *)self->_reportDetailsTextView leadingAnchor];
  v33 = [(TUIReportDetailsViewController *)self view];
  v31 = [v33 safeAreaLayoutGuide];
  v29 = [v31 leadingAnchor];
  v28 = [v32 constraintEqualToAnchor:v29];
  v40[1] = v28;
  v17 = [(UITextView *)self->_reportDetailsTextView trailingAnchor];
  v18 = [(TUIReportDetailsViewController *)self view];
  v19 = [v18 safeAreaLayoutGuide];
  v20 = [v19 trailingAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];
  v40[2] = v21;
  v22 = [(UITextView *)self->_reportDetailsTextView bottomAnchor];
  v23 = [(TUIReportDetailsViewController *)self view];
  v24 = [v23 bottomAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v40[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  [v30 activateConstraints:v26];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIReportDetailsViewController;
  [(TUIReportDetailsViewController *)&v3 viewDidLayoutSubviews];
  [(UITextView *)self->_reportDetailsTextView setContentOffset:0 animated:0.0, 0.0];
}

@end