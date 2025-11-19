@interface CACDictationRecognizerModeOverlayViewController
- (void)loadView;
- (void)setDictationRecognizerMode:(int)a3;
- (void)setImageRect:(CGRect)a3;
@end

@implementation CACDictationRecognizerModeOverlayViewController

- (void)loadView
{
  v3 = objc_alloc_init(CACDictationRecognizerModeOverlayView);
  [(CACDictationRecognizerModeOverlayViewController *)self setView:v3];
}

- (void)setImageRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CACDictationRecognizerModeOverlayViewController *)self view];
  [v7 setImageRect:{x, y, width, height}];
}

- (void)setDictationRecognizerMode:(int)a3
{
  v3 = *&a3;
  v4 = [(CACDictationRecognizerModeOverlayViewController *)self view];
  [v4 setDictationRecognizerMode:v3];
}

@end