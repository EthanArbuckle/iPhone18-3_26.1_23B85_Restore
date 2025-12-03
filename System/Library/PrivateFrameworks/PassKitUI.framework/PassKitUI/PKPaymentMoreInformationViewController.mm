@interface PKPaymentMoreInformationViewController
- (BOOL)_shouldShowBusinessChatButton;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (PKPaymentMoreInformationViewController)initWithContext:(int64_t)context;
- (PKPaymentMoreInformationViewControllerDelegate)delegate;
- (void)_businessChatButtonTapped;
- (void)doneButtonTapped;
- (void)loadView;
- (void)setupBusinessChatButton;
- (void)setupDetailTextView;
- (void)setupSubtitleLabel;
- (void)setupTitleLabel;
- (void)setupViewAndScrollView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKPaymentMoreInformationViewController

- (PKPaymentMoreInformationViewController)initWithContext:(int64_t)context
{
  v5.receiver = self;
  v5.super_class = PKPaymentMoreInformationViewController;
  result = [(PKPaymentMoreInformationViewController *)&v5 init];
  if (result)
  {
    result->_context = context;
  }

  return result;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PKPaymentMoreInformationViewController;
  [(PKPaymentMoreInformationViewController *)&v3 loadView];
  [(PKPaymentMoreInformationViewController *)self setupViewAndScrollView];
  [(PKPaymentMoreInformationViewController *)self setupTitleLabel];
  [(PKPaymentMoreInformationViewController *)self setupSubtitleLabel];
  [(PKPaymentMoreInformationViewController *)self setupBusinessChatButton];
  [(PKPaymentMoreInformationViewController *)self setupDetailTextView];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKPaymentMoreInformationViewController;
  [(PKPaymentMoreInformationViewController *)&v8 viewDidLoad];
  navigationController = [(PKPaymentMoreInformationViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v5 = [viewControllers count];

  if (v5 == 1)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped];
    navigationItem = [(PKPaymentMoreInformationViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v6];
  }
}

- (void)setupViewAndScrollView
{
  view = [(PKPaymentMoreInformationViewController *)self view];
  v3 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v3];

  v4 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  [view addSubview:self->_scrollView];
}

- (void)setupTitleLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  v6 = self->_titleLabel;
  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD58], *MEMORY[0x1E69DDC90], 2, 0);
  [(UILabel *)v6 setFont:v7];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setText:self->_detailTitle];
  [(UIScrollView *)self->_scrollView addSubview:self->_titleLabel];
  v8 = self->_titleLabel;
  v9 = *MEMORY[0x1E69B9D20];

  [(UILabel *)v8 setAccessibilityIdentifier:v9];
}

- (void)setupSubtitleLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v4;

  v6 = self->_subtitleLabel;
  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC8], *MEMORY[0x1E69DDC90]);
  [(UILabel *)v6 setFont:v7];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setText:self->_detailSubtitle];
  [(UIScrollView *)self->_scrollView addSubview:self->_subtitleLabel];
  v8 = self->_subtitleLabel;
  v9 = *MEMORY[0x1E69B9CC8];

  [(UILabel *)v8 setAccessibilityIdentifier:v9];
}

- (void)setupBusinessChatButton
{
  if ([(PKPaymentMoreInformationViewController *)self _shouldShowBusinessChatButton])
  {
    v3 = MEMORY[0x1E69DC740];
    businessChatButtonTitle = self->_businessChatButtonTitle;
    v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
    v6 = [v3 pkui_plainConfigurationWithTitle:businessChatButtonTitle font:v5];

    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E69DC628];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __65__PKPaymentMoreInformationViewController_setupBusinessChatButton__block_invoke;
    v14 = &unk_1E8010A60;
    objc_copyWeak(&v15, &location);
    v8 = [v7 actionWithHandler:&v11];
    v9 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v6 primaryAction:{v8, v11, v12, v13, v14}];
    businessChatButton = self->_businessChatButton;
    self->_businessChatButton = v9;

    [(UIButton *)self->_businessChatButton setConfigurationUpdateHandler:&__block_literal_global_173];
    [(UIScrollView *)self->_scrollView addSubview:self->_businessChatButton];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __65__PKPaymentMoreInformationViewController_setupBusinessChatButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _businessChatButtonTapped];
}

void __65__PKPaymentMoreInformationViewController_setupBusinessChatButton__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setExclusiveTouch:1];
  v3 = [v2 titleLabel];

  [v3 setTextAlignment:1];
}

- (void)setupDetailTextView
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD168]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  detailTextView = self->_detailTextView;
  self->_detailTextView = v4;

  v6 = self->_detailTextView;
  v7 = PKAttributedStringCreateProvisioningBulletedParagraph(self->_detailBody, *MEMORY[0x1E69DDC90]);
  [(UITextView *)v6 setAttributedText:v7];

  [(UITextView *)self->_detailTextView setDataDetectorTypes:3];
  [(UITextView *)self->_detailTextView setDelegate:self];
  [(UITextView *)self->_detailTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(UITextView *)self->_detailTextView setEditable:0];
  [(UITextView *)self->_detailTextView setSelectable:1];
  [(UITextView *)self->_detailTextView _setInteractiveTextSelectionDisabled:1];
  v8 = self->_detailTextView;
  v11 = *MEMORY[0x1E69DB650];
  if (PKPaymentSetupContextIsBridge())
  {
    BPSBridgeTintColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v9 = ;
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [(UITextView *)v8 setLinkTextAttributes:v10];

  [(UIScrollView *)self->_scrollView addSubview:self->_detailTextView];
  [(UITextView *)self->_detailTextView setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
}

- (void)viewDidLayoutSubviews
{
  view = [(PKPaymentMoreInformationViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  [(UILabel *)self->_titleLabel pkui_sizeThatFits:1 forceWordWrap:v5 + -48.0, 1.79769313e308];
  v9 = v8;
  [(UILabel *)self->_titleLabel setFrame:24.0, 30.0, v5 + -48.0, v8];
  v25.origin.x = 24.0;
  v25.origin.y = 30.0;
  v25.size.width = v5 + -48.0;
  v25.size.height = v9;
  v10 = CGRectGetMaxY(v25) + 20.0;
  [(UILabel *)self->_subtitleLabel pkui_sizeThatFits:1 forceWordWrap:v5 + -48.0, 1.79769313e308];
  v12 = v11;
  [(UILabel *)self->_subtitleLabel setFrame:24.0, v10, v5 + -48.0, v11];
  v26.origin.x = 24.0;
  v26.origin.y = v10;
  v26.size.width = v5 + -48.0;
  v26.size.height = v12;
  v13 = CGRectGetMaxY(v26) + 30.0;
  [(UITextView *)self->_detailTextView sizeThatFits:v5 + -48.0, 1.79769313e308];
  v15 = v14;
  [(UITextView *)self->_detailTextView setFrame:24.0, v13, v5 + -48.0, v14];
  v27.origin.x = 24.0;
  v27.origin.y = v13;
  v27.size.width = v5 + -48.0;
  v27.size.height = v15;
  MaxY = CGRectGetMaxY(v27);
  if (self->_businessChatButton)
  {
    v28.origin.x = 24.0;
    v28.origin.y = v13;
    v28.size.width = v5 + -48.0;
    v28.size.height = v15;
    v17 = CGRectGetMaxY(v28) + 20.0;
    [(UIButton *)self->_businessChatButton sizeThatFits:v5 + -20.0, 1.79769313e308];
    v19.n128_u64[0] = v18.n128_u64[0];
    PKFloatCeilToPixel(v19, v18);
    v21 = v20;
    [(UIButton *)self->_businessChatButton setFrame:10.0, v17, v5 + -20.0, v20];
    v29.origin.x = 10.0;
    v29.origin.y = v17;
    v29.size.width = v5 + -20.0;
    v29.size.height = v21;
    MaxY = CGRectGetMaxY(v29);
  }

  v22 = MaxY + 20.0;
  [(UIScrollView *)self->_scrollView setFrame:0.0, 0.0, v5, v7];
  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setContentSize:v5, v22];
}

- (void)doneButtonTapped
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {

    [(PKPaymentMoreInformationViewController *)self dismissViewControllerWithTransition:9 completion:0];
  }

  else
  {

    [(PKPaymentMoreInformationViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_businessChatButtonTapped
{
  if (!self->_businessChatController)
  {
    v3 = objc_alloc_init(PKBusinessChatController);
    businessChatController = self->_businessChatController;
    self->_businessChatController = v3;
  }

  v5 = [[PKBuinessChatApplyContext alloc] initWithIdentifier:self->_businessChatIdentifier intent:PKBusinessChatApplyIntentFromString(self->_businessChatIntentName)];
  objc_initWeak(&location, self);
  v6 = self->_businessChatController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PKPaymentMoreInformationViewController__businessChatButtonTapped__block_invoke;
  v7[3] = &unk_1E8011338;
  objc_copyWeak(&v8, &location);
  [(PKBusinessChatController *)v6 openBusinessChatWithContext:v5 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __67__PKPaymentMoreInformationViewController__businessChatButtonTapped__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__PKPaymentMoreInformationViewController__businessChatButtonTapped__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __67__PKPaymentMoreInformationViewController__businessChatButtonTapped__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = WeakRetained;
      v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
      [v5 presentViewController:v4 animated:1 completion:0];

      WeakRetained = v5;
    }
  }
}

- (BOOL)_shouldShowBusinessChatButton
{
  if (![(NSString *)self->_businessChatIdentifier length]|| ![(NSString *)self->_businessChatButtonTitle length]|| ![(NSString *)self->_businessChatIntentName length])
  {
    return 0;
  }

  return +[PKBusinessChatController deviceSupportsBusinessChat];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  if ((IsSetupAssistant & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 moreInformationViewController:self didInteractWithURL:lCopy];
    }
  }

  return IsSetupAssistant ^ 1;
}

- (PKPaymentMoreInformationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end