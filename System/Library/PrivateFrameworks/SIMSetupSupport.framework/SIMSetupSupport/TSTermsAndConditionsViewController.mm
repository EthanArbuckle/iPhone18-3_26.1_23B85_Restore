@interface TSTermsAndConditionsViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTermsAndConditionsViewController)initWithSourceIccid:(id)a3 mainText:(id)a4;
- (void)_acceptClicked:(id)a3;
- (void)_cancelTransfer:(id)a3;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation TSTermsAndConditionsViewController

- (TSTermsAndConditionsViewController)initWithSourceIccid:(id)a3 mainText:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = TSTermsAndConditionsViewController;
  v9 = [(TSTermsAndConditionsViewController *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mainText, a4);
    objc_storeStrong(&v10->_sourceIccid, a3);
    v11 = objc_alloc(MEMORY[0x277CC37B0]);
    v12 = [v11 initWithQueue:MEMORY[0x277D85CD0]];
    client = v10->_client;
    v10->_client = v12;
  }

  return v10;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  textView = self->_textView;
  self->_textView = v3;

  v5 = self->_textView;

  [(TSTermsAndConditionsViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v26[3] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = TSTermsAndConditionsViewController;
  [(SSUIViewController *)&v23 viewDidLoad];
  [(TSTermsAndConditionsViewController *)self setModalInPresentation:1];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DISAGREE" value:&stru_28753DF48 table:@"Localizable"];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:sel__cancelTransfer_];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  v8 = objc_alloc(MEMORY[0x277D751E0]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"AGREE" value:&stru_28753DF48 table:@"Localizable"];
  v11 = [v8 initWithTitle:v10 style:2 target:self action:sel__acceptClicked_];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"TERMS_AND_CONDITIONS_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  [(TSTermsAndConditionsViewController *)self setTitle:v13];

  v26[0] = v6;
  v26[1] = v7;
  v26[2] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  [(TSTermsAndConditionsViewController *)self setToolbarItems:v14];

  v15 = [(TSTermsAndConditionsViewController *)self navigationController];
  [v15 setToolbarHidden:0 animated:0];

  [(UITextView *)self->_textView setEditable:0];
  v24 = *MEMORY[0x277D740C0];
  v16 = [MEMORY[0x277D75348] labelColor];
  v25 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

  textView = self->_textView;
  v19 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:self->_mainText attributes:v17];
  [(UITextView *)textView setAttributedText:v19];

  v20 = self->_textView;
  v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UITextView *)v20 setFont:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_acceptClicked:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startTimer:1];

  [(CoreTelephonyClient *)self->_client handleTermsAndConditionsCompleted:self->_sourceIccid consented:1 completion:&__block_literal_global];
  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 viewControllerDidComplete:self];
}

void __53__TSTermsAndConditionsViewController__acceptClicked___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__TSTermsAndConditionsViewController__acceptClicked___block_invoke_cold_1();
    }
  }
}

- (void)_cancelTransfer:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TSTermsAndConditionsViewController _cancelTransfer:]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "T&C cancelled @%s", &v8, 0xCu);
  }

  [(TSTermsAndConditionsViewController *)self dismissViewControllerAnimated:1 completion:0];
  [(CoreTelephonyClient *)self->_client handleTermsAndConditionsCompleted:self->_sourceIccid consented:0 completion:&__block_literal_global_53];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"user.disagreed.terms.and.conditions" object:0 userInfo:0];

  v7 = *MEMORY[0x277D85DE8];
}

void __54__TSTermsAndConditionsViewController__cancelTransfer___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__TSTermsAndConditionsViewController__cancelTransfer___block_invoke_cold_1();
    }
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __53__TSTermsAndConditionsViewController__acceptClicked___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSTermsAndConditionsViewController _acceptClicked:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]handleTermsAndConditionsCompleted failed : %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __54__TSTermsAndConditionsViewController__cancelTransfer___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSTermsAndConditionsViewController _cancelTransfer:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]handleTermsAndConditionsCompleted failed : %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end