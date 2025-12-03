@interface UIKBDictationDisplayView
- (UIKBDictationDisplayView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key;
- (void)dealloc;
- (void)prepareForDisplay;
- (void)removeFromSuperview;
- (void)setRenderConfig:(id)config;
- (void)updateDictationColor;
- (void)updateForKeyplane:(id)keyplane key:(id)key;
@end

@implementation UIKBDictationDisplayView

- (UIKBDictationDisplayView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key
{
  v8.receiver = self;
  v8.super_class = UIKBDictationDisplayView;
  v5 = [(UIKBKeyView *)&v8 initWithFrame:keyplane keyplane:key key:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setUserInteractionEnabled:1];
  }

  return v6;
}

- (void)dealloc
{
  dictationView = [(UIKBDictationDisplayView *)self dictationView];
  superview = [dictationView superview];

  if (superview == self)
  {
    dictationView2 = [(UIKBDictationDisplayView *)self dictationView];
    [dictationView2 removeFromSuperview];
  }

  [(UIKBDictationDisplayView *)self setDictationView:0];
  v6.receiver = self;
  v6.super_class = UIKBDictationDisplayView;
  [(UIKBKeyView *)&v6 dealloc];
}

- (void)setRenderConfig:(id)config
{
  v4.receiver = self;
  v4.super_class = UIKBDictationDisplayView;
  [(UIKBKeyView *)&v4 setRenderConfig:config];
  [(UIKBDictationDisplayView *)self updateDictationColor];
}

- (void)updateDictationColor
{
  dictationView = [(UIKBDictationDisplayView *)self dictationView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dictationView2 = [(UIKBDictationDisplayView *)self dictationView];
    renderConfig = [(UIKBKeyView *)self renderConfig];
    [dictationView2 setRenderConfig:renderConfig];
  }
}

- (void)updateForKeyplane:(id)keyplane key:(id)key
{
  v4 = [UIDictationController sharedInstance:keyplane];
  [v4 startDictation];
}

- (void)prepareForDisplay
{
  dictationView = [(UIKBDictationDisplayView *)self dictationView];

  if (!dictationView)
  {
    v4 = +[UIDictationView sharedInstance];
    [v4 setDisplayDelegate:0];

    v5 = +[UIDictationView sharedInstance];
    [(UIKBDictationDisplayView *)self setDictationView:v5];
  }

  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  dictationView2 = [(UIKBDictationDisplayView *)self dictationView];
  [dictationView2 setFrame:{v7, v9, v11, v13}];

  dictationView3 = [(UIKBDictationDisplayView *)self dictationView];
  superview = [dictationView3 superview];

  if (superview != self)
  {
    dictationView4 = [(UIKBDictationDisplayView *)self dictationView];
    [(UIView *)self addSubview:dictationView4];
  }

  [(UIKBDictationDisplayView *)self updateDictationColor];
}

- (void)removeFromSuperview
{
  v7.receiver = self;
  v7.super_class = UIKBDictationDisplayView;
  [(UIKBKeyView *)&v7 removeFromSuperview];
  if (+[UIDictationController isRunning])
  {
    v3 = +[UIDictationController sharedInstance];
    [v3 stopDictation];
  }

  dictationView = [(UIKBDictationDisplayView *)self dictationView];
  superview = [dictationView superview];

  if (superview == self)
  {
    dictationView2 = [(UIKBDictationDisplayView *)self dictationView];
    [dictationView2 removeFromSuperview];
  }
}

@end