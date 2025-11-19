@interface CACLabeledElementsOverlayViewController
- (void)loadView;
- (void)setLabeledElements:(id)a3;
@end

@implementation CACLabeledElementsOverlayViewController

- (void)loadView
{
  v3 = [CACLabeledElementsOverlayView alloc];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
  v4 = [(CACLabeledElementsOverlayView *)v3 initWithFrame:?];
  [(CACLabeledElementsOverlayViewController *)self setView:v4];
}

- (void)setLabeledElements:(id)a3
{
  v4 = a3;
  v5 = [(CACLabeledElementsOverlayViewController *)self view];
  [v5 clearLabeledElements];

  v6 = [(CACLabeledElementsOverlayViewController *)self view];
  [v6 addLabeledElements:v4];
}

@end