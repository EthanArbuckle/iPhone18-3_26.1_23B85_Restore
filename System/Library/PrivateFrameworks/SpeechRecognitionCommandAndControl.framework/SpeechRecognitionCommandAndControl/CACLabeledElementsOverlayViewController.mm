@interface CACLabeledElementsOverlayViewController
- (void)loadView;
- (void)setLabeledElements:(id)elements;
@end

@implementation CACLabeledElementsOverlayViewController

- (void)loadView
{
  v3 = [CACLabeledElementsOverlayView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = [(CACLabeledElementsOverlayView *)v3 initWithFrame:?];
  [(CACLabeledElementsOverlayViewController *)self setView:v4];
}

- (void)setLabeledElements:(id)elements
{
  elementsCopy = elements;
  view = [(CACLabeledElementsOverlayViewController *)self view];
  [view clearLabeledElements];

  view2 = [(CACLabeledElementsOverlayViewController *)self view];
  [view2 addLabeledElements:elementsCopy];
}

@end