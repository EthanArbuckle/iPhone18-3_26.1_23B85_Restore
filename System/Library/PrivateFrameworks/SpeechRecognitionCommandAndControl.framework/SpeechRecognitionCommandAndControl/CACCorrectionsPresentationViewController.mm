@interface CACCorrectionsPresentationViewController
- (CACCorrectionsPresentationDelegate)delegate;
- (CACCorrectionsPresentationViewController)init;
- (CGRect)portraitUpSourceRect;
- (NSArray)alternatives;
- (NSArray)emojis;
- (void)correctionsCandidatesViewController:(id)controller didSelectItemWithText:(id)text;
- (void)dismissCorrectionsCandidatesViewController:(id)controller;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setAlternatives:(id)alternatives;
- (void)setEmojis:(id)emojis;
- (void)setPortraitUpSourceRect:(CGRect)rect;
- (void)setText:(id)text;
- (void)viewDidAppear:(BOOL)appear;
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

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CACCorrectionsPresentationViewController;
  [(CACCorrectionsPresentationViewController *)&v8 viewDidAppear:appear];
  view = [(CACCorrectionsPresentationViewController *)self view];
  popoverPresentingViewController = [(CACCorrectionsPresentationViewController *)self popoverPresentingViewController];
  view2 = [popoverPresentingViewController view];
  [view addSubview:view2];

  popoverPresentingViewController2 = [(CACCorrectionsPresentationViewController *)self popoverPresentingViewController];
  [popoverPresentingViewController2 didMoveToParentViewController:self];
}

- (void)setText:(id)text
{
  textCopy = text;
  correctionViewController = [(CACCorrectionsPresentationViewController *)self correctionViewController];
  [correctionViewController setText:textCopy];
}

- (NSArray)alternatives
{
  correctionViewController = [(CACCorrectionsPresentationViewController *)self correctionViewController];
  alternatives = [correctionViewController alternatives];

  return alternatives;
}

- (void)setAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  correctionViewController = [(CACCorrectionsPresentationViewController *)self correctionViewController];
  [correctionViewController setAlternatives:alternativesCopy];
}

- (NSArray)emojis
{
  correctionViewController = [(CACCorrectionsPresentationViewController *)self correctionViewController];
  emojis = [correctionViewController emojis];

  return emojis;
}

- (void)setEmojis:(id)emojis
{
  emojisCopy = emojis;
  correctionViewController = [(CACCorrectionsPresentationViewController *)self correctionViewController];
  [correctionViewController setEmojis:emojisCopy];
}

- (void)setPortraitUpSourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  popoverPresentingViewController = [(CACCorrectionsPresentationViewController *)self popoverPresentingViewController];
  [popoverPresentingViewController setPortraitUpSourceRect:{x, y, width, height}];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  NSLog(&cfstr_TigerPopoverDi.isa, a2, dismiss);
  delegate = [(CACCorrectionsPresentationViewController *)self delegate];
  [delegate dismissCorrectionsPresentationViewController:self];
}

- (void)correctionsCandidatesViewController:(id)controller didSelectItemWithText:(id)text
{
  textCopy = text;
  delegate = [(CACCorrectionsPresentationViewController *)self delegate];
  [delegate correctionsPresentationViewController:self didSelectItemWithText:textCopy];
}

- (void)dismissCorrectionsCandidatesViewController:(id)controller
{
  popoverPresentingViewController = [(CACCorrectionsPresentationViewController *)self popoverPresentingViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__CACCorrectionsPresentationViewController_dismissCorrectionsCandidatesViewController___block_invoke;
  v5[3] = &unk_279CEB2D0;
  v5[4] = self;
  [popoverPresentingViewController dismissViewControllerAnimated:1 completion:v5];
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