@interface MRMarimbaView
- (BOOL)canInteract;
- (CGRect)cleanAperture;
- (MRMarimbaView)initWithCoder:(id)a3;
- (MRMarimbaView)initWithFrame:(CGRect)a3;
- (void)_marimbaViewCommonInit;
- (void)cleanup;
- (void)close:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)enterMarimbaWithDuration:(double)a3 andCompletionBlock:(id)a4;
- (void)exitMarimbaWithDuration:(double)a3 location:(CGPoint)a4 andScale:(double)a5;
- (void)hideHUD;
- (void)marimbaWasSingleTappedAtPoint:(CGPoint)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAspectRatio:(double)a3;
- (void)setDocument:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMarimbaContentsScale:(double)a3;
- (void)setUsesExitButton:(BOOL)a3;
- (void)showHUD;
- (void)stop;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)warmupAndPlay:(BOOL)a3 completionBlock:(id)a4;
@end

@implementation MRMarimbaView

- (MRMarimbaView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MRMarimbaView;
  v3 = [(MRMarimbaView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MRMarimbaView *)v3 _marimbaViewCommonInit];
  }

  return v4;
}

- (MRMarimbaView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MRMarimbaView;
  v3 = [(MRMarimbaView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(MRMarimbaView *)v3 _marimbaViewCommonInit];
  }

  return v4;
}

- (void)dealloc
{
  if (self->_marimbaLayer)
  {
    [(MRMarimbaView *)self cleanup];
  }

  objc_storeWeak(&self->_interactionDelegate, 0);
  v3.receiver = self;
  v3.super_class = MRMarimbaView;
  [(MRMarimbaView *)&v3 dealloc];
}

- (void)_marimbaViewCommonInit
{
  [(MRMarimbaView *)self bounds];
  v7 = [[MRMarimbaLayerView alloc] initWithFrame:v3, v4, v5, v6];
  self->_marimbaLayerView = v7;
  [(MRMarimbaLayerView *)v7 setAutoresizingMask:18];
  [(MRMarimbaView *)self addSubview:self->_marimbaLayerView];
  [(MRMarimbaLayerView *)self->_marimbaLayerView addObserver:self forKeyPath:@"frame" options:0 context:0];
  self->_marimbaLayer = [(MRMarimbaLayerView *)self->_marimbaLayerView marimbaLayer];
  [(MRMarimbaView *)self setMultipleTouchEnabled:1];
  marimbaLayerView = self->_marimbaLayerView;

  [(MRMarimbaLayerView *)marimbaLayerView setMultipleTouchEnabled:1];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:@"frame"])
  {
    [(MRMarimbaView *)self willChangeValueForKey:@"cleanAperture"];

    [(MRMarimbaView *)self didChangeValueForKey:@"cleanAperture"];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MRMarimbaView;
    [(MRMarimbaView *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
  }
}

- (void)didMoveToWindow
{
  if ([(MRMarimbaView *)self window])
  {
    [objc_msgSend(-[MRMarimbaView window](self "window")];
    [(MRMarimbaView *)self setMarimbaContentsScale:?];
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = kMRNotificationPlaybackOver;

    [(NSNotificationCenter *)v3 addObserver:self selector:"stop" name:v4 object:0];
  }

  else
  {
    [(MRMarimbaLayer *)self->_marimbaLayer pause];
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = kMRNotificationPlaybackOver;

    [(NSNotificationCenter *)v5 removeObserver:self name:v6 object:0];
  }
}

- (void)cleanup
{
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:kMRNotificationPlaybackOver object:0];
  [(MRMarimbaLayer *)self->_marimbaLayer pause];
  [(MRMarimbaLayer *)self->_marimbaLayer cleanup];

  self->_marimbaLayer = 0;
  [(MRMarimbaLayerView *)self->_marimbaLayerView removeObserver:self forKeyPath:@"frame"];

  self->_marimbaLayerView = 0;
  self->_orderedVideoPaths = 0;
}

- (void)setUsesExitButton:(BOOL)a3
{
  if (self->_usesExitButton != a3)
  {
    self->_usesExitButton = a3;
    if (a3)
    {
      v4 = +[UIImage imageWithContentsOfFile:](UIImage, "imageWithContentsOfFile:", [+[NSBundle pathForResource:"pathForResource:ofType:"];
      v5 = [UIButton buttonWithType:0];
      self->_exitButton = v5;
      [(UIButton *)v5 setBackgroundImage:v4 forState:0];
      [(UIButton *)self->_exitButton setFrame:0.0, 0.0, 32.0, 32.0];
      [(UIButton *)self->_exitButton addTarget:self action:"close:" forControlEvents:1];
      [(MRMarimbaView *)self insertSubview:self->_exitButton aboveSubview:self->_marimbaLayerView];
      [(UIButton *)self->_exitButton setHidden:1];
      exitButton = self->_exitButton;

      [(UIButton *)exitButton setAlpha:0.0];
    }

    else
    {
      [(UIButton *)self->_exitButton removeFromSuperview];
      self->_exitButton = 0;
    }
  }
}

- (void)warmupAndPlay:(BOOL)a3 completionBlock:(id)a4
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_75A3C;
  block[3] = &unk_1AAFF0;
  v9 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(global_queue, block);
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = MRMarimbaView;
  [(MRMarimbaView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MRMarimbaView *)self setAspectRatio:self->_aspectRatio];
}

- (void)setAspectRatio:(double)a3
{
  self->_aspectRatio = a3;
  [(MRMarimbaView *)self bounds];
  if (a3 > 0.0)
  {
    v5 = RectToFitInRect(v5, v6, v7, v8, self->_aspectRatio);
  }

  v9 = round(v5);
  v10 = round(v6);
  v11 = round(v7);
  marimbaLayerView = self->_marimbaLayerView;
  v13 = round(v8);

  [(MRMarimbaLayerView *)marimbaLayerView setFrame:v9, v10, v11, v13];
}

- (CGRect)cleanAperture
{
  [(MRMarimbaLayerView *)self->_marimbaLayerView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)enterMarimbaWithDuration:(double)a3 andCompletionBlock:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_75D60;
  v4[3] = &unk_1AB018;
  v4[4] = self;
  v4[5] = a4;
  sub_75D60(v4);
}

- (void)exitMarimbaWithDuration:(double)a3 location:(CGPoint)a4 andScale:(double)a5
{
  self->_isInMarimba = 0;
  self->_isEnteringExitingMarimba = 0;
  [(MRMarimbaView *)self close:self, a3, a4.x, a4.y, a5];
}

- (void)stop
{
  if (self->_isInMarimba && !self->_isEnteringExitingMarimba)
  {
    [(MRMarimbaView *)self bounds];
    v4 = v3 * 0.5;
    [(MRMarimbaView *)self bounds];

    [(MRMarimbaView *)self exitMarimbaWithDuration:0.5 location:v4 andScale:v5 * 0.5, 0.0];
  }
}

- (void)close:(id)a3
{
  v3 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v3 postNotificationName:@"MarimbaWallExit" object:0];
}

- (BOOL)canInteract
{
  [(MRMarimbaView *)self interactionDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v3 = [(MRMarimbaView *)self interactionDelegate];

  return [(MRMarimbaViewInteractionDelegate *)v3 marimbaViewCanInteract:self];
}

- (void)marimbaWasSingleTappedAtPoint:(CGPoint)a3
{
  x = a3.x;
  [(MRMarimbaView *)self bounds:a3.x];
  if (x <= v5 * 0.95)
  {
    [(MRMarimbaView *)self bounds];
    if (x >= v7 * 0.05)
    {
      if ([(MRMarimbaView *)self interactionDelegate])
      {
        [(MRMarimbaView *)self interactionDelegate];
        if (objc_opt_respondsToSelector())
        {
          v9 = [(MRMarimbaView *)self interactionDelegate];

          [(MRMarimbaViewInteractionDelegate *)v9 slideshowWasTapped];
        }
      }

      else
      {

        [(MRMarimbaView *)self showHUD];
      }
    }

    else
    {
      v8 = [(MRMarimbaLayer *)self->_marimbaLayer renderer];

      [(MRRenderer *)v8 jumpToPreviousMarker];
    }
  }

  else
  {
    v6 = [(MRMarimbaLayer *)self->_marimbaLayer renderer];

    [(MRRenderer *)v6 jumpToNextMarker];
  }
}

- (void)showHUD
{
  if (self->_isInMarimba)
  {
    v7[9] = v2;
    v7[10] = v3;
    ++self->_hudShowCount;
    if (self->_usesExitButton)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_76318;
      v7[3] = &unk_1AA700;
      v7[4] = self;
      [UIView animateWithDuration:v7 animations:0.5];
    }

    v5 = dispatch_time(0, 4000000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_7636C;
    v6[3] = &unk_1AA700;
    v6[4] = self;
    dispatch_after(v5, &_dispatch_main_q, v6);
  }
}

- (void)hideHUD
{
  if (self->_isInMarimba)
  {
    v4 = self->_hudShowCount - 1;
    self->_hudShowCount = v4;
    if (!v4 && self->_usesExitButton)
    {
      v6[5] = v2;
      v6[6] = v3;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_7647C;
      v6[3] = &unk_1AA700;
      v6[4] = self;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_76494;
      v5[3] = &unk_1AB040;
      v5[4] = self;
      [UIView animateWithDuration:v6 animations:v5 completion:0.5];
    }
  }
}

- (void)setDocument:(id)a3
{
  [(MRMarimbaLayer *)self->_marimbaLayer setDocument:?];
  [(MRRenderer *)[(MRMarimbaLayer *)self->_marimbaLayer renderer] setSlideFocusModeBackgroundColor:[(MPDocument *)[(MRMarimbaLayer *)self->_marimbaLayer document] backgroundCGColor]];
  orderedVideoPaths = self->_orderedVideoPaths;
  if (orderedVideoPaths)
  {
  }

  self->_orderedVideoPaths = [a3 orderedVideoPaths];
}

- (void)setMarimbaContentsScale:(double)a3
{
  [(MRMarimbaLayerView *)self->_marimbaLayerView setContentScaleFactor:?];
  marimbaLayer = self->_marimbaLayer;

  [(MRMarimbaLayer *)marimbaLayer setContentsScale:a3];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if (self->_isInMarimba)
  {
    [(MRMarimbaLayerView *)self->_marimbaLayerView touchesBegan:a3 withEvent:a4];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if (self->_isInMarimba)
  {
    [(MRMarimbaLayerView *)self->_marimbaLayerView touchesMoved:a3 withEvent:a4];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if (self->_isInMarimba)
  {
    [(MRMarimbaLayerView *)self->_marimbaLayerView touchesCancelled:a3 withEvent:a4];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if (self->_isInMarimba)
  {
    [(MRMarimbaLayerView *)self->_marimbaLayerView touchesEnded:a3 withEvent:a4];
  }
}

@end