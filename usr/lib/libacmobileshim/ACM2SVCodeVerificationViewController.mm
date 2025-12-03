@interface ACM2SVCodeVerificationViewController
- (ACM2SVCodeVerificationViewController)initWithDelegate:(id)delegate;
- (float)navigationBarHeight;
- (unint64_t)supportedInterfaceOrientations;
- (void)buildConstraints;
- (void)buildDigitViews;
- (void)buildHorizontalConstraints;
- (void)buildVerticalConstraints;
- (void)cancelAction:(id)action;
- (void)dealloc;
- (void)disableControls:(BOOL)controls;
- (void)focus;
- (void)hideAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)loadView;
- (void)presentWithParentViewController:(id)controller completion:(id)completion;
- (void)reset;
- (void)sendAnotherCode:(id)code;
- (void)setCanResendTheCode:(BOOL)code;
- (void)setPasscodeLength:(unint64_t)length;
- (void)verificationCodeDidChange:(id)change;
- (void)verifyCode:(id)code;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ACM2SVCodeVerificationViewController

- (ACM2SVCodeVerificationViewController)initWithDelegate:(id)delegate
{
  v11.receiver = self;
  v11.super_class = ACM2SVCodeVerificationViewController;
  v4 = [(ACM2SVCodeVerificationViewController *)&v11 init];
  v5 = v4;
  if (v4)
  {
    [(ACM2SVCodeVerificationViewController *)v4 setDelegate:delegate];
    [(ACM2SVCodeVerificationViewController *)v5 setPasscodeLength:4];
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    v7 = *MEMORY[0x29EDC8010];
    mainQueue = [MEMORY[0x29EDBA088] mainQueue];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __57__ACM2SVCodeVerificationViewController_initWithDelegate___block_invoke;
    v10[3] = &unk_29EE91B70;
    v10[4] = v5;
    -[ACM2SVCodeVerificationViewController setApplicationActivationObserver:](v5, "setApplicationActivationObserver:", [defaultCenter addObserverForName:v7 object:0 queue:mainQueue usingBlock:v10]);
  }

  return v5;
}

- (void)dealloc
{
  [(ACM2SVCodeVerificationViewController *)self setContentView:0];
  [(ACM2SVCodeVerificationViewController *)self setDigitPanel:0];
  [(ACM2SVCodeVerificationViewController *)self setVerificationCodeTextField:0];
  [(ACM2SVCodeVerificationViewController *)self setPromptLabel:0];
  [(ACM2SVCodeVerificationViewController *)self setSendAnotherCodeButton:0];
  [(ACM2SVCodeVerificationViewController *)self setDigitViews:0];
  [(ACM2SVCodeVerificationViewController *)self setTextColor:0];
  [(ACM2SVCodeVerificationViewController *)self setBackgroundColor:0];
  [(ACM2SVCodeVerificationViewController *)self setCompletionBlock:0];
  [(ACM2SVCodeVerificationViewController *)self setDigitPanelWidthConstraint:0];
  [(UINavigationController *)[(ACM2SVCodeVerificationViewController *)self navigationController] setDelegate:0];
  [(ACM2SVCodeVerificationViewController *)self setNavigationController:0];
  [objc_msgSend(MEMORY[0x29EDBA068] "defaultCenter")];
  [(ACM2SVCodeVerificationViewController *)self setApplicationActivationObserver:0];
  v3.receiver = self;
  v3.super_class = ACM2SVCodeVerificationViewController;
  [(ACM2SVCodeVerificationViewController *)&v3 dealloc];
}

- (void)setCanResendTheCode:(BOOL)code
{
  codeCopy = code;
  sendAnotherCodeButton = [(ACM2SVCodeVerificationViewController *)self sendAnotherCodeButton];

  [(UIButton *)sendAnotherCodeButton setHidden:!codeCopy];
}

- (void)setPasscodeLength:(unint64_t)length
{
  if (self->_passcodeLength != length)
  {
    self->_passcodeLength = length;
    [(ACM2SVCodeVerificationViewController *)self buildDigitViews];
  }
}

- (void)presentWithParentViewController:(id)controller completion:(id)completion
{
  if ([(ACM2SVCodeVerificationViewController *)self completionBlock])
  {
    if (completion)
    {
      v7 = *(completion + 2);

      v7(completion, 0);
    }
  }

  else
  {
    [(ACM2SVCodeVerificationViewController *)self setCompletionBlock:completion];
    -[ACM2SVCodeVerificationViewController setNavigationController:](self, "setNavigationController:", [objc_alloc(MEMORY[0x29EDC7B80]) initWithRootViewController:self]);
    [(UINavigationController *)[(ACM2SVCodeVerificationViewController *)self navigationController] setDelegate:self];
    [(UINavigationBar *)[(UINavigationController *)[(ACM2SVCodeVerificationViewController *)self navigationController] navigationBar] setTranslucent:0];
    navigationController = [(ACM2SVCodeVerificationViewController *)self navigationController];

    [controller presentViewController:navigationController animated:1 completion:0];
  }
}

- (void)hideAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  [(ACM2SVCodeVerificationViewController *)self setCompletionBlock:0];
  presentingViewController = [(ACM2SVCodeVerificationViewController *)self presentingViewController];

  [presentingViewController dismissViewControllerAnimated:animatedCopy completion:completion];
}

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = ACM2SVCodeVerificationViewController;
  [(ACM2SVCodeVerificationViewController *)&v14 loadView];
  [MEMORY[0x29EDC7A58] currentDevice];
  v3 = (objc_opt_respondsToSelector() & 1) == 0 || [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")] == 0;
  [(ACM2SVCodeVerificationViewController *)self setTitle:[ACMBaseLocale localizedString:@"Verification Code"]];
  [(ACM2SVCodeVerificationViewController *)self setEdgesForExtendedLayout:0];
  [-[ACM2SVCodeVerificationViewController navigationItem](self "navigationItem")];
  v4 = objc_alloc_init(MEMORY[0x29EDC7DA0]);
  [v4 setBackgroundColor:{-[ACM2SVCodeVerificationViewController backgroundColor](self, "backgroundColor")}];
  [(ACM2SVCodeVerificationViewController *)self setContentView:v4];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  v5 = objc_alloc_init(MEMORY[0x29EDC7B38]);
  [v5 setText:{+[ACMBaseLocale localizedString:](ACMBaseLocale, "localizedString:", @"Enter verification code"}];
  [v5 setTextAlignment:1];
  v6 = MEMORY[0x29EDC76B0];
  v7 = 17.0;
  if (v3)
  {
    [MEMORY[0x29EDC76B0] systemFontSize];
  }

  [v5 setFont:{objc_msgSend(v6, "boldSystemFontOfSize:", v7)}];
  [v5 setTextColor:{-[ACM2SVCodeVerificationViewController textColor](self, "textColor")}];
  [v5 setBackgroundColor:{objc_msgSend(MEMORY[0x29EDC7A00], "clearColor")}];
  [v5 setAdjustsFontSizeToFitWidth:1];
  [(ACM2SVCodeVerificationViewController *)self setPromptLabel:v5];
  [v4 addSubview:v5];
  v8 = MEMORY[0x29EDB9EA0];
  v9 = [MEMORY[0x29EDC7958] buttonWithType:floor(*MEMORY[0x29EDB9EA0]) > 993.0];
  if (floor(*v8) <= 993.0)
  {
    [v9 setTitleColor:objc_msgSend(MEMORY[0x29EDC7A00] forState:{"colorWithRed:green:blue:alpha:", 0.09, 0.52, 1.0, 1.0), 0}];
    [v9 setTitleColor:objc_msgSend(MEMORY[0x29EDC7A00] forState:{"colorWithRed:green:blue:alpha:", 0.5, 0.5, 0.5, 1.0), 1}];
  }

  [v9 addTarget:self action:sel_sendAnotherCode_ forControlEvents:64];
  [v9 setTitle:+[ACMBaseLocale localizedString:](ACMBaseLocale forState:{"localizedString:", @"Send a new code", 0}];
  [v9 setBackgroundColor:{objc_msgSend(MEMORY[0x29EDC7A00], "clearColor")}];
  [objc_msgSend(v9 "titleLabel")];
  v10 = MEMORY[0x29EDC76B0];
  v11 = 17.0;
  if (v3)
  {
    [MEMORY[0x29EDC76B0] systemFontSize];
  }

  [objc_msgSend(v9 "titleLabel")];
  [(ACM2SVCodeVerificationViewController *)self setSendAnotherCodeButton:v9];
  [v4 addSubview:v9];
  v12 = objc_alloc_init(MEMORY[0x29EDC7D48]);
  [v12 setHidden:1];
  [v12 setBorderStyle:0];
  [v12 setSecureTextEntry:1];
  [v12 setKeyboardType:4];
  [v12 setKeyboardAppearance:{-[ACM2SVCodeVerificationViewController keyboardAppearance](self, "keyboardAppearance")}];
  [v12 setDelegate:self];
  [v12 addTarget:self action:sel_verificationCodeDidChange_ forControlEvents:0x20000];
  [(ACM2SVCodeVerificationViewController *)self setVerificationCodeTextField:v12];
  [v4 addSubview:v12];
  v13 = objc_alloc_init(MEMORY[0x29EDC7DA0]);
  [v13 setBackgroundColor:{objc_msgSend(MEMORY[0x29EDC7A00], "clearColor")}];
  [(ACM2SVCodeVerificationViewController *)self setDigitPanel:v13];
  [v4 addSubview:v13];
  [(ACM2SVCodeVerificationViewController *)self buildDigitViews];
  [(ACM2SVCodeVerificationViewController *)self buildConstraints];
}

- (void)buildDigitViews
{
  if ([(ACM2SVCodeVerificationViewController *)self digitPanel])
  {
    v3 = [(NSArray *)[(ACM2SVCodeVerificationViewController *)self digitViews] count];
    if (v3 != [(ACM2SVCodeVerificationViewController *)self passcodeLength])
    {
      [(NSArray *)[(ACM2SVCodeVerificationViewController *)self digitViews] makeObjectsPerformSelector:sel_removeFromSuperview];
      array = [MEMORY[0x29EDB8DE8] array];
      if ([(ACM2SVCodeVerificationViewController *)self passcodeLength])
      {
        v5 = 0;
        MaxX = 0.0;
        do
        {
          v7 = [ACM2SVDigitCodeView alloc];
          if (([(ACM2SVCodeVerificationViewController *)self interfaceOrientation]- 1) >= 2)
          {
            v8 = 30.0;
          }

          else
          {
            v8 = 40.0;
          }

          v9 = [(ACM2SVDigitCodeView *)v7 initWithFrame:MaxX, 0.0, 30.0, v8];
          -[ACM2SVDigitCodeView setBackgroundColor:](v9, "setBackgroundColor:", [MEMORY[0x29EDC7A00] clearColor]);
          [(ACM2SVDigitCodeView *)v9 setFillType:0];
          [(ACM2SVDigitCodeView *)v9 setFillColor:[(ACM2SVCodeVerificationViewController *)self textColor]];
          [(UIView *)[(ACM2SVCodeVerificationViewController *)self digitPanel] addSubview:v9];
          [array addObject:v9];
          [(ACM2SVDigitCodeView *)v9 frame];
          MaxX = CGRectGetMaxX(v12);
          ++v5;
        }

        while (v5 < [(ACM2SVCodeVerificationViewController *)self passcodeLength]);
      }

      if ([(ACM2SVCodeVerificationViewController *)self digitPanelWidthConstraint])
      {
        [(NSLayoutConstraint *)[(ACM2SVCodeVerificationViewController *)self digitPanelWidthConstraint] setConstant:(30 * [(ACM2SVCodeVerificationViewController *)self passcodeLength])];
      }

      v10 = [array copy];

      [(ACM2SVCodeVerificationViewController *)self setDigitViews:v10];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ACM2SVCodeVerificationViewController;
  [(ACM2SVCodeVerificationViewController *)&v4 viewWillAppear:appear];
  [(ACM2SVCodeVerificationViewController *)self reset];
}

- (float)navigationBarHeight
{
  v2 = &kACMNavigationBarHeightPortrait;
  if (floor(*MEMORY[0x29EDB9EA0]) <= 993.0)
  {
    v2 = &kACMNavigationBarHeightLegacyOS;
  }

  return *v2;
}

- (void)buildConstraints
{
  [(UIView *)[(ACM2SVCodeVerificationViewController *)self contentView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)[(ACM2SVCodeVerificationViewController *)self promptLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)[(ACM2SVCodeVerificationViewController *)self verificationCodeTextField] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)[(ACM2SVCodeVerificationViewController *)self sendAnotherCodeButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)[(ACM2SVCodeVerificationViewController *)self digitPanel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ACM2SVCodeVerificationViewController *)self buildHorizontalConstraints];

  [(ACM2SVCodeVerificationViewController *)self buildVerticalConstraints];
}

- (void)buildHorizontalConstraints
{
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  v3 = (30 * [(ACM2SVCodeVerificationViewController *)self passcodeLength]);
  -[ACM2SVCodeVerificationViewController setDigitPanelWidthConstraint:](self, "setDigitPanelWidthConstraint:", [MEMORY[0x29EDBA008] constraintWithItem:-[ACM2SVCodeVerificationViewController digitPanel](self attribute:"digitPanel") relatedBy:7 toItem:0 attribute:0 multiplier:7 constant:{0.0, v3}]);
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  v4 = [MEMORY[0x29EDBA008] constraintWithItem:-[ACM2SVCodeVerificationViewController sendAnotherCodeButton](self attribute:"sendAnotherCodeButton") relatedBy:9 toItem:0 attribute:-[ACM2SVCodeVerificationViewController contentView](self multiplier:"contentView") constant:{9, 1.0, 0.0}];
  view = [(ACM2SVCodeVerificationViewController *)self view];

  [view addConstraint:v4];
}

- (void)buildVerticalConstraints
{
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  [-[ACM2SVCodeVerificationViewController view](self "view")];
  v3 = [MEMORY[0x29EDBA008] constraintWithItem:-[ACM2SVCodeVerificationViewController sendAnotherCodeButton](self attribute:"sendAnotherCodeButton") relatedBy:3 toItem:0 attribute:-[ACM2SVCodeVerificationViewController digitPanel](self multiplier:"digitPanel") constant:{4, 1.0, 20.0}];
  view = [(ACM2SVCodeVerificationViewController *)self view];

  [view addConstraint:v3];
}

- (unint64_t)supportedInterfaceOrientations
{
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)reset
{
  [(UITextField *)[(ACM2SVCodeVerificationViewController *)self verificationCodeTextField] setText:&stru_2A1EB91A0];
  [(ACM2SVCodeVerificationViewController *)self disableControls:0];
  verificationCodeTextField = [(ACM2SVCodeVerificationViewController *)self verificationCodeTextField];

  [(ACM2SVCodeVerificationViewController *)self verificationCodeDidChange:verificationCodeTextField];
}

- (void)disableControls:(BOOL)controls
{
  controlsCopy = controls;
  [(UITextField *)[(ACM2SVCodeVerificationViewController *)self verificationCodeTextField] setEnabled:!controls];
  [(UIButton *)[(ACM2SVCodeVerificationViewController *)self sendAnotherCodeButton] setEnabled:!controlsCopy];
  [objc_msgSend(-[ACM2SVCodeVerificationViewController navigationItem](self "navigationItem")];
  if (!controlsCopy)
  {

    [(ACM2SVCodeVerificationViewController *)self focus];
  }
}

- (void)focus
{
  verificationCodeTextField = [(ACM2SVCodeVerificationViewController *)self verificationCodeTextField];

  [(UITextField *)verificationCodeTextField becomeFirstResponder];
}

- (void)verificationCodeDidChange:(id)change
{
  v4 = [(NSString *)[(UITextField *)[(ACM2SVCodeVerificationViewController *)self verificationCodeTextField] text] length];
  if (v4 > [(ACM2SVCodeVerificationViewController *)self passcodeLength])
  {
    [(UITextField *)[(ACM2SVCodeVerificationViewController *)self verificationCodeTextField] setText:[(NSString *)[(UITextField *)[(ACM2SVCodeVerificationViewController *)self verificationCodeTextField] text] substringToIndex:[(ACM2SVCodeVerificationViewController *)self passcodeLength]]];
  }

  text = [(UITextField *)[(ACM2SVCodeVerificationViewController *)self verificationCodeTextField] text];
  v6 = [(NSString *)text length];
  digitViews = [(ACM2SVCodeVerificationViewController *)self digitViews];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __66__ACM2SVCodeVerificationViewController_verificationCodeDidChange___block_invoke;
  v8[3] = &__block_descriptor_40_e36_v32__0__ACM2SVDigitCodeView_8Q16_B24l;
  v8[4] = v6;
  [(NSArray *)digitViews enumerateObjectsUsingBlock:v8];
  if (v6 == [(ACM2SVCodeVerificationViewController *)self passcodeLength])
  {
    [(ACM2SVCodeVerificationViewController *)self verifyCode:text];
  }
}

uint64_t __66__ACM2SVCodeVerificationViewController_verificationCodeDidChange___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = v3 != 0;
  v5 = v3 - 1;
  v6 = v4;
  if (v5 >= a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return [a2 setFillType:v7];
}

- (void)sendAnotherCode:(id)code
{
  [(ACM2SVCodeVerificationViewController *)self disableControls:1];
  delegate = [(ACM2SVCodeVerificationViewController *)self delegate];

  [(ACM2SVCodeVerificationViewControllerDelegate *)delegate codeVerificationViewControllerNeedsResendCode:self];
}

- (void)verifyCode:(id)code
{
  [(ACM2SVCodeVerificationViewController *)self disableControls:1];
  if ([(ACM2SVCodeVerificationViewController *)self completionBlock])
  {
    v4 = *([(ACM2SVCodeVerificationViewController *)self completionBlock]+ 16);

    v4();
  }
}

- (void)cancelAction:(id)action
{
  if ([(ACM2SVCodeVerificationViewController *)self completionBlock])
  {
    completionBlock = [(ACM2SVCodeVerificationViewController *)self completionBlock];
    completionBlock[2](completionBlock, 0);

    [(ACM2SVCodeVerificationViewController *)self setCompletionBlock:0];
  }
}

@end