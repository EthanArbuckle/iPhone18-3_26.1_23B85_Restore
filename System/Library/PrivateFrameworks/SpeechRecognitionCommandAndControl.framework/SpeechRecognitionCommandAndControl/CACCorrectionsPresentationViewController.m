@interface CACCorrectionsPresentationViewController
- (CACCorrectionsPresentationDelegate)delegate;
- (CACCorrectionsPresentationViewController)init;
- (CGRect)portraitUpSourceRect;
- (NSArray)alternatives;
- (NSArray)emojis;
- (void)correctionsCandidatesViewController:(id)a3 didSelectItemWithText:(id)a4;
- (void)dismissCorrectionsCandidatesViewController:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setAlternatives:(id)a3;
- (void)setEmojis:(id)a3;
- (void)setPortraitUpSourceRect:(CGRect)a3;
- (void)setText:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CACCorrectionsPresentationViewController

- (CACCorrectionsPresentationViewController)init
{
  v11.receiver = self;
  v11.super_class = CACCorrectionsPresentationViewController;
  v2 = [(CACCorrectionsPresentationViewController *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(CACCorrectionsCandidatesViewController *)v3 setDelegate:v2];
    v4 = objc_opt_new();
    [(CACPopoverPresentingViewController *)v4 setPopoverPresentationDelegate:v2];
    v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
    [v5 setNavigationBarHidden:1];
    [(CACPopoverPresentingViewController *)v4 setViewControllerInPopover:v5];
    [(CACPopoverPresentingViewController *)v4 setPermittedArrowDirections:3];
    correctionViewController = v2->_correctionViewController;
    v2->_correctionViewController = v3;
    v7 = v3;

    popoverPresentingViewController = v2->_popoverPresentingViewController;
    v2->_popoverPresentingViewController = v4;
    v9 = v4;

    [(CACCorrectionsPresentationViewController *)v2 addChildViewController:v9];
  }

  return v2;
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CACCorrectionsPresentationViewController;
  [(CACCorrectionsPresentationViewController *)&v8 viewDidAppear:a3];
  v4 = [(CACCorrectionsPresentationViewController *)self view];
  v5 = [(CACCorrectionsPresentationViewController *)self popoverPresentingViewController];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(CACCorrectionsPresentationViewController *)self popoverPresentingViewController];
  [v7 didMoveToParentViewController:self];
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(CACCorrectionsPresentationViewController *)self correctionViewController];
  [v5 setText:v4];
}

- (NSArray)alternatives
{
  v2 = [(CACCorrectionsPresentationViewController *)self correctionViewController];
  v3 = [v2 alternatives];

  return v3;
}

- (void)setAlternatives:(id)a3
{
  v4 = a3;
  v5 = [(CACCorrectionsPresentationViewController *)self correctionViewController];
  [v5 setAlternatives:v4];
}

- (NSArray)emojis
{
  v2 = [(CACCorrectionsPresentationViewController *)self correctionViewController];
  v3 = [v2 emojis];

  return v3;
}

- (void)setEmojis:(id)a3
{
  v4 = a3;
  v5 = [(CACCorrectionsPresentationViewController *)self correctionViewController];
  [v5 setEmojis:v4];
}

- (void)setPortraitUpSourceRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CACCorrectionsPresentationViewController *)self popoverPresentingViewController];
  [v7 setPortraitUpSourceRect:{x, y, width, height}];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  NSLog(&cfstr_TigerPopoverDi.isa, a2, a3);
  v4 = [(CACCorrectionsPresentationViewController *)self delegate];
  [v4 dismissCorrectionsPresentationViewController:self];
}

- (void)correctionsCandidatesViewController:(id)a3 didSelectItemWithText:(id)a4
{
  v5 = a4;
  v6 = [(CACCorrectionsPresentationViewController *)self delegate];
  [v6 correctionsPresentationViewController:self didSelectItemWithText:v5];
}

- (void)dismissCorrectionsCandidatesViewController:(id)a3
{
  v4 = [(CACCorrectionsPresentationViewController *)self popoverPresentingViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__CACCorrectionsPresentationViewController_dismissCorrectionsCandidatesViewController___block_invoke;
  v5[3] = &unk_279CEB2D0;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

void __87__CACCorrectionsPresentationViewController_dismissCorrectionsCandidatesViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dismissCorrectionsPresentationViewController:*(a1 + 32)];
}

- (CACCorrectionsPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)portraitUpSourceRect
{
  x = self->_portraitUpSourceRect.origin.x;
  y = self->_portraitUpSourceRect.origin.y;
  width = self->_portraitUpSourceRect.size.width;
  height = self->_portraitUpSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end