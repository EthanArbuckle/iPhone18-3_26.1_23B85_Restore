@interface PRXPasscodeEntryViewController
- (PRXPasscodeEntryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_scrollToWells;
- (void)_textDidChange:(id)change;
- (void)_updatePasscodeEntryView;
- (void)passcodeEntryViewDidBecomeFirstResponder:(id)responder;
- (void)setImage:(id)image;
- (void)setNumberOfDigits:(int64_t)digits;
- (void)setUseMonospacedFont:(BOOL)font;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PRXPasscodeEntryViewController

- (PRXPasscodeEntryViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PRXPasscodeEntryViewController;
  [(PRXPasscodeEntryViewController *)&v4 viewDidAppear:appear];
  [(PRXPasscodeEntryView *)self->_passcodeEntryView becomeFirstResponder];
}

- (void)setNumberOfDigits:(int64_t)digits
{
  if (self->_numberOfDigits != digits)
  {
    self->_numberOfDigits = digits;
    [(PRXPasscodeEntryViewController *)self _updatePasscodeEntryView];
  }
}

- (void)setUseMonospacedFont:(BOOL)font
{
  if (self->_useMonospacedFont != font)
  {
    self->_useMonospacedFont = font;
    [(PRXPasscodeEntryViewController *)self _updatePasscodeEntryView];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (([(UIImage *)self->_image isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_image, image);
    [(PRXPasscodeEntryViewController *)self _updatePasscodeEntryView];
  }
}

- (void)_updatePasscodeEntryView
{
  v48[3] = *MEMORY[0x277D85DE8];
  if ([(PRXPasscodeEntryViewController *)self isViewLoaded])
  {
    contentView = [(PRXCardContentViewController *)self contentView];
    mainContentGuide = [contentView mainContentGuide];

    [(PRXImageView *)self->_imageView removeFromSuperview];
    v5 = 0x277CBE000;
    if (self->_image)
    {
      v6 = [PRXImageView imageViewWithStyle:0];
      imageView = self->_imageView;
      self->_imageView = v6;

      [(PRXImageView *)self->_imageView setImage:self->_image];
      [(PRXImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView2 = [(PRXCardContentViewController *)self contentView];
      [contentView2 addSubview:self->_imageView];

      v40 = MEMORY[0x277CCAAD0];
      centerXAnchor = [(PRXImageView *)self->_imageView centerXAnchor];
      centerXAnchor2 = [mainContentGuide centerXAnchor];
      v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v48[0] = v10;
      topAnchor = [(PRXImageView *)self->_imageView topAnchor];
      topAnchor2 = [mainContentGuide topAnchor];
      v13 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
      v48[1] = v13;
      heightAnchor = [(PRXImageView *)self->_imageView heightAnchor];
      v15 = [heightAnchor constraintEqualToConstant:50.0];
      v48[2] = v15;
      [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
      v17 = v16 = mainContentGuide;
      [v40 activateConstraints:v17];

      mainContentGuide = v16;
      v5 = 0x277CBE000uLL;
    }

    v44 = mainContentGuide;
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
    contentView3 = [(PRXCardContentViewController *)self contentView];
    [contentView3 addSubview:self->_passcodeEntryView];

    v39 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(PRXPasscodeEntryView *)self->_passcodeEntryView leadingAnchor];
    leadingAnchor2 = [mainContentGuide leadingAnchor];
    v23 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v47[0] = v23;
    centerXAnchor3 = [(PRXPasscodeEntryView *)self->_passcodeEntryView centerXAnchor];
    centerXAnchor4 = [mainContentGuide centerXAnchor];
    v26 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v47[1] = v26;
    bottomAnchor = [(PRXPasscodeEntryView *)self->_passcodeEntryView bottomAnchor];
    bottomAnchor2 = [mainContentGuide bottomAnchor];
    v29 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v47[2] = v29;
    v30 = [*(v5 + 2656) arrayWithObjects:v47 count:3];
    [v39 activateConstraints:v30];

    v31 = self->_imageView;
    v32 = MEMORY[0x277CCAAD0];
    topAnchor3 = [(PRXPasscodeEntryView *)self->_passcodeEntryView topAnchor];
    if (v31)
    {
      bottomAnchor3 = [(PRXImageView *)self->_imageView bottomAnchor];
      v35 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:20.0];
      v46 = v35;
      v36 = &v46;
      v37 = v44;
    }

    else
    {
      v37 = v44;
      bottomAnchor3 = [v44 topAnchor];
      v35 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
      v45 = v35;
      v36 = &v45;
    }

    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    [v32 activateConstraints:v38];
  }
}

- (void)_textDidChange:(id)change
{
  changeCopy = change;
  [(PRXPasscodeEntryViewController *)self textDidChange:?];
  textChangeHandler = self->_textChangeHandler;
  if (textChangeHandler)
  {
    text = [changeCopy text];
    textChangeHandler[2](textChangeHandler, text);
  }

  text2 = [changeCopy text];
  v7 = [text2 length];
  numberOfDigits = [changeCopy numberOfDigits];

  if (v7 == numberOfDigits)
  {
    [(PRXPasscodeEntryViewController *)self didCompleteTextEntry:changeCopy];
    textEntryCompletionHandler = self->_textEntryCompletionHandler;
    if (textEntryCompletionHandler)
    {
      text3 = [changeCopy text];
      textEntryCompletionHandler[2](textEntryCompletionHandler, text3);
    }
  }
}

- (void)_scrollToWells
{
  if ([(PRXPasscodeEntryView *)self->_passcodeEntryView isFirstResponder])
  {
    contentView = [(PRXCardContentViewController *)self contentView];
    superview = [contentView superview];
    [superview frame];
    v6 = v5;
    contentView2 = [(PRXCardContentViewController *)self contentView];
    [contentView2 frame];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PRXPasscodeEntryViewController;
  coordinatorCopy = coordinator;
  [(PRXCardContentViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__PRXPasscodeEntryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_279ACC2E0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (void)passcodeEntryViewDidBecomeFirstResponder:(id)responder
{
  if (self->_passcodeEntryView == responder)
  {
    [(PRXPasscodeEntryViewController *)self _scrollToWells];
  }
}

@end