@interface CACDictationRecognizerModeOverlayViewController
- (void)loadView;
- (void)setDictationRecognizerMode:(int)mode;
- (void)setImageRect:(CGRect)rect;
@end

@implementation CACDictationRecognizerModeOverlayViewController

- (void)loadView
{
  v3 = objc_alloc_init(CACDictationRecognizerModeOverlayView);
  [(CACDictationRecognizerModeOverlayViewController *)self setView:v3];
}

- (void)setImageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  view = [(CACDictationRecognizerModeOverlayViewController *)self view];
  [view setImageRect:{x, y, width, height}];
}

- (void)setDictationRecognizerMode:(int)mode
{
  v3 = *&mode;
  view = [(CACDictationRecognizerModeOverlayViewController *)self view];
  [view setDictationRecognizerMode:v3];
}

@end