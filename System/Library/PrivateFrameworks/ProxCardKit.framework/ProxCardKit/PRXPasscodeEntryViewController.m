@interface PRXPasscodeEntryViewController
- (PRXPasscodeEntryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_scrollToWells;
- (void)_textDidChange:(id)a3;
- (void)_updatePasscodeEntryView;
- (void)passcodeEntryViewDidBecomeFirstResponder:(id)a3;
- (void)setImage:(id)a3;
- (void)setNumberOfDigits:(int64_t)a3;
- (void)setUseMonospacedFont:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PRXPasscodeEntryViewController

- (PRXPasscodeEntryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = [[PRXCardContentView alloc] initWithCardStyle:0];
  v6 = [(PRXCardContentViewController *)self initWithContentView:v5];

  return v6;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PRXPasscodeEntryViewController;
  [(PRXCardContentViewController *)&v3 viewDidLoad];
  [(PRXPasscodeEntryViewController *)self _updatePasscodeEntryView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRXPasscodeEntryViewController;
  [(PRXPasscodeEntryViewController *)&v4 viewDidAppear:a3];
  [(PRXPasscodeEntryView *)self->_passcodeEntryView becomeFirstResponder];
}

- (void)setNumberOfDigits:(int64_t)a3
{
  if (self->_numberOfDigits != a3)
  {
    self->_numberOfDigits = a3;
    [(PRXPasscodeEntryViewController *)self _updatePasscodeEntryView];
  }
}

- (void)setUseMonospacedFont:(BOOL)a3
{
  if (self->_useMonospacedFont != a3)
  {
    self->_useMonospacedFont = a3;
    [(PRXPasscodeEntryViewController *)self _updatePasscodeEntryView];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (([(UIImage *)self->_image isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_image, a3);
    [(PRXPasscodeEntryViewController *)self _updatePasscodeEntryView];
  }
}

- (void)_updatePasscodeEntryView
{
  v48[3] = *MEMORY[0x277D85DE8];
  if ([(PRXPasscodeEntryViewController *)self isViewLoaded])
  {
    v3 = [(PRXCardContentViewController *)self contentView];
    v4 = [v3 mainContentGuide];

    [(PRXImageView *)self->_imageView removeFromSuperview];
    v5 = 0x277CBE000;
    if (self->_image)
    {
      v6 = [PRXImageView imageViewWithStyle:0];
      imageView = self->_imageView;
      self->_imageView = v6;

      [(PRXImageView *)self->_imageView setImage:self->_image];
      [(PRXImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = [(PRXCardContentViewController *)self contentView];
      [v8 addSubview:self->_imageView];

      v40 = MEMORY[0x277CCAAD0];
      v42 = [(PRXImageView *)self->_imageView centerXAnchor];
      v9 = [v4 centerXAnchor];
      v10 = [v42 constraintEqualToAnchor:v9];
      v48[0] = v10;
      v11 = [(PRXImageView *)self->_imageView topAnchor];
      v12 = [v4 topAnchor];
      v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12];
      v48[1] = v13;
      v14 = [(PRXImageView *)self->_imageView heightAnchor];
      v15 = [v14 constraintEqualToConstant:50.0];
      v48[2] = v15;
      [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
      v17 = v16 = v4;
      [v40 activateConstraints:v17];

      v4 = v16;
      v5 = 0x277CBE000uLL;
    }

    v44 = v4;
    [(PRXPasscodeEntryView *)self->_passcodeEntryView removeFromSuperview];
    v18 = [PRXPasscodeEntryView alloc];
    if (self->_numberOfDigits)
    {
      numberOfDigits = self->_numberOfDigits;
    }

    else
    {
      numberOfDigits = 4;
    }

    v20 = [(PRXPasscodeEntryView *)v18 initWithNumberOfDigits:numberOfDigits useMonospacedFont:self->_useMonospacedFont delegate:self];
    passcodeEntryView = self->_passcodeEntryView;
    self->_passcodeEntryView = v20;

    [(PRXPasscodeEntryView *)self->_passcodeEntryView setSemanticContentAttribute:3];
    [(PRXPasscodeEntryView *)self->_passcodeEntryView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXPasscodeEntryView *)self->_passcodeEntryView addTarget:self action:sel__textDidChange_ forControlEvents:4096];
    v22 = [(PRXCardContentViewController *)self contentView];
    [v22 addSubview:self->_passcodeEntryView];

    v39 = MEMORY[0x277CCAAD0];
    v43 = [(PRXPasscodeEntryView *)self->_passcodeEntryView leadingAnchor];
    v41 = [v4 leadingAnchor];
    v23 = [v43 constraintGreaterThanOrEqualToAnchor:v41];
    v47[0] = v23;
    v24 = [(PRXPasscodeEntryView *)self->_passcodeEntryView centerXAnchor];
    v25 = [v4 centerXAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v47[1] = v26;
    v27 = [(PRXPasscodeEntryView *)self->_passcodeEntryView bottomAnchor];
    v28 = [v4 bottomAnchor];
    v29 = [v27 constraintLessThanOrEqualToAnchor:v28];
    v47[2] = v29;
    v30 = [*(v5 + 2656) arrayWithObjects:v47 count:3];
    [v39 activateConstraints:v30];

    v31 = self->_imageView;
    v32 = MEMORY[0x277CCAAD0];
    v33 = [(PRXPasscodeEntryView *)self->_passcodeEntryView topAnchor];
    if (v31)
    {
      v34 = [(PRXImageView *)self->_imageView bottomAnchor];
      v35 = [v33 constraintEqualToAnchor:v34 constant:20.0];
      v46 = v35;
      v36 = &v46;
      v37 = v44;
    }

    else
    {
      v37 = v44;
      v34 = [v44 topAnchor];
      v35 = [v33 constraintEqualToAnchor:v34];
      v45 = v35;
      v36 = &v45;
    }

    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    [v32 activateConstraints:v38];
  }
}

- (void)_textDidChange:(id)a3
{
  v11 = a3;
  [(PRXPasscodeEntryViewController *)self textDidChange:?];
  textChangeHandler = self->_textChangeHandler;
  if (textChangeHandler)
  {
    v5 = [v11 text];
    textChangeHandler[2](textChangeHandler, v5);
  }

  v6 = [v11 text];
  v7 = [v6 length];
  v8 = [v11 numberOfDigits];

  if (v7 == v8)
  {
    [(PRXPasscodeEntryViewController *)self didCompleteTextEntry:v11];
    textEntryCompletionHandler = self->_textEntryCompletionHandler;
    if (textEntryCompletionHandler)
    {
      v10 = [v11 text];
      textEntryCompletionHandler[2](textEntryCompletionHandler, v10);
    }
  }
}

- (void)_scrollToWells
{
  if ([(PRXPasscodeEntryView *)self->_passcodeEntryView isFirstResponder])
  {
    v3 = [(PRXCardContentViewController *)self contentView];
    v4 = [v3 superview];
    [v4 frame];
    v6 = v5;
    v7 = [(PRXCardContentViewController *)self contentView];
    [v7 frame];
    v9 = v6 - v8;
    [(PRXPasscodeEntryView *)self->_passcodeEntryView frame];
    v11 = v10;

    [(PRXPasscodeEntryView *)self->_passcodeEntryView frame];
    if (v11 - v9 + v12 + 4.0 > 0.0)
    {

      [(PRXCardContentViewController *)self setContentOffset:1 animated:0.0];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PRXPasscodeEntryViewController;
  v7 = a4;
  [(PRXCardContentViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__PRXPasscodeEntryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_279ACC2E0;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

- (void)passcodeEntryViewDidBecomeFirstResponder:(id)a3
{
  if (self->_passcodeEntryView == a3)
  {
    [(PRXPasscodeEntryViewController *)self _scrollToWells];
  }
}

@end