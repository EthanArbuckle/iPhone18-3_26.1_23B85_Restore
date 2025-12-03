@interface PKPassPersonalizationTermsViewController
- (PKPassPersonalizationTermsViewController)initWithTermsAndConditions:(id)conditions;
- (PKPassPersonalizationTermsViewControllerDelegate)delegate;
- (void)_acceptButtonPressed:(id)pressed;
- (void)_applyTermsAndConditions;
- (void)_declineButtonPressed:(id)pressed;
- (void)dealloc;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPassPersonalizationTermsViewController

- (PKPassPersonalizationTermsViewController)initWithTermsAndConditions:(id)conditions
{
  conditionsCopy = conditions;
  v9.receiver = self;
  v9.super_class = PKPassPersonalizationTermsViewController;
  v5 = [(PKPassPersonalizationTermsViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [conditionsCopy copy];
    termsAndConditions = v5->_termsAndConditions;
    v5->_termsAndConditions = v6;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPassPersonalizationTermsViewController;
  [(PKPassPersonalizationTermsViewController *)&v2 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD168]);
  textView = self->_textView;
  self->_textView = v3;

  v5 = self->_textView;

  [(PKPassPersonalizationTermsViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PKPassPersonalizationTermsViewController;
  [(PKPassPersonalizationTermsViewController *)&v12 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = PKLocalizedString(&cfstr_Personalizatio_11.isa);
  v5 = [v3 initWithTitle:v4 style:0 target:self action:sel__declineButtonPressed_];

  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v7 = objc_alloc(MEMORY[0x1E69DC708]);
  v8 = PKLocalizedString(&cfstr_Personalizatio_12.isa);
  v9 = [v7 initWithTitle:v8 style:2 target:self action:sel__acceptButtonPressed_];

  v10 = PKLocalizedString(&cfstr_Personalizatio_13.isa);
  [(PKPassPersonalizationTermsViewController *)self setTitle:v10];

  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  [(PKPassPersonalizationTermsViewController *)self setToolbarItems:v11];

  [(UITextView *)self->_textView setEditable:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKPassPersonalizationTermsViewController;
  [(PKPassPersonalizationTermsViewController *)&v5 viewWillAppear:appear];
  [(PKPassPersonalizationTermsViewController *)self _applyTermsAndConditions];
  navigationController = [(PKPassPersonalizationTermsViewController *)self navigationController];
  [navigationController setToolbarHidden:0 animated:0];
}

- (void)_applyTermsAndConditions
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v7[0] = labelColor;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v5 = PKAttributedStringByParsingLinksInString();
  [(UITextView *)self->_textView setAttributedText:v5];
}

- (void)_declineButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passPersonalizationTermsViewControllerDidDeclineTerms:self];
}

- (void)_acceptButtonPressed:(id)pressed
{
  v4 = MEMORY[0x1E69DC650];
  v5 = PKLocalizedString(&cfstr_Personalizatio_14.isa);
  v6 = PKLocalizedString(&cfstr_Personalizatio_15.isa);
  v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = MEMORY[0x1E69DC648];
  v9 = PKLocalizedString(&cfstr_Personalizatio_16.isa);
  v10 = [v8 actionWithTitle:v9 style:1 handler:0];
  [v7 addAction:v10];

  v11 = MEMORY[0x1E69DC648];
  v12 = PKLocalizedString(&cfstr_Personalizatio_17.isa);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PKPassPersonalizationTermsViewController__acceptButtonPressed___block_invoke;
  v14[3] = &unk_1E80112E8;
  v14[4] = self;
  v13 = [v11 actionWithTitle:v12 style:0 handler:v14];
  [v7 addAction:v13];

  [(PKPassPersonalizationTermsViewController *)self presentViewController:v7 animated:1 completion:0];
}

void __65__PKPassPersonalizationTermsViewController__acceptButtonPressed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1008));
  [WeakRetained passPersonalizationTermsViewControllerDidAcceptTerms:*(a1 + 32)];
}

- (PKPassPersonalizationTermsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end