@interface UIKBDictationDisplayView
- (UIKBDictationDisplayView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5;
- (void)dealloc;
- (void)prepareForDisplay;
- (void)removeFromSuperview;
- (void)setRenderConfig:(id)a3;
- (void)updateDictationColor;
- (void)updateForKeyplane:(id)a3 key:(id)a4;
@end

@implementation UIKBDictationDisplayView

- (UIKBDictationDisplayView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5
{
  v8.receiver = self;
  v8.super_class = UIKBDictationDisplayView;
  v5 = [(UIKBKeyView *)&v8 initWithFrame:a4 keyplane:a5 key:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setUserInteractionEnabled:1];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(UIKBDictationDisplayView *)self dictationView];
  v4 = [v3 superview];

  if (v4 == self)
  {
    v5 = [(UIKBDictationDisplayView *)self dictationView];
    [v5 removeFromSuperview];
  }

  [(UIKBDictationDisplayView *)self setDictationView:0];
  v6.receiver = self;
  v6.super_class = UIKBDictationDisplayView;
  [(UIKBKeyView *)&v6 dealloc];
}

- (void)setRenderConfig:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIKBDictationDisplayView;
  [(UIKBKeyView *)&v4 setRenderConfig:a3];
  [(UIKBDictationDisplayView *)self updateDictationColor];
}

- (void)updateDictationColor
{
  v3 = [(UIKBDictationDisplayView *)self dictationView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(UIKBDictationDisplayView *)self dictationView];
    v5 = [(UIKBKeyView *)self renderConfig];
    [v6 setRenderConfig:v5];
  }
}

- (void)updateForKeyplane:(id)a3 key:(id)a4
{
  v4 = [UIDictationController sharedInstance:a3];
  [v4 startDictation];
}

- (void)prepareForDisplay
{
  v3 = [(UIKBDictationDisplayView *)self dictationView];

  if (!v3)
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
  v14 = [(UIKBDictationDisplayView *)self dictationView];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(UIKBDictationDisplayView *)self dictationView];
  v16 = [v15 superview];

  if (v16 != self)
  {
    v17 = [(UIKBDictationDisplayView *)self dictationView];
    [(UIView *)self addSubview:v17];
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

  v4 = [(UIKBDictationDisplayView *)self dictationView];
  v5 = [v4 superview];

  if (v5 == self)
  {
    v6 = [(UIKBDictationDisplayView *)self dictationView];
    [v6 removeFromSuperview];
  }
}

@end