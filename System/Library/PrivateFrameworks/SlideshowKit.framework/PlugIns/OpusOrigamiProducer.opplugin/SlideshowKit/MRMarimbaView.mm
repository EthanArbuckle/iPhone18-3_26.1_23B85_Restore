@interface MRMarimbaView
- (BOOL)canInteract;
- (CGRect)cleanAperture;
- (MRMarimbaView)initWithCoder:(id)coder;
- (MRMarimbaView)initWithFrame:(CGRect)frame;
- (void)_marimbaViewCommonInit;
- (void)cleanup;
- (void)close:(id)close;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)enterMarimbaWithDuration:(double)duration andCompletionBlock:(id)block;
- (void)exitMarimbaWithDuration:(double)duration location:(CGPoint)location andScale:(double)scale;
- (void)hideHUD;
- (void)marimbaWasSingleTappedAtPoint:(CGPoint)point;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAspectRatio:(double)ratio;
- (void)setDocument:(id)document;
- (void)setFrame:(CGRect)frame;
- (void)setMarimbaContentsScale:(double)scale;
- (void)setUsesExitButton:(BOOL)button;
- (void)showHUD;
- (void)stop;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)warmupAndPlay:(BOOL)play completionBlock:(id)block;
@end

@implementation MRMarimbaView

- (MRMarimbaView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MRMarimbaView;
  v3 = [(MRMarimbaView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MRMarimbaView *)v3 _marimbaViewCommonInit];
  }

  return v4;
}

- (MRMarimbaView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MRMarimbaView;
  v3 = [(MRMarimbaView *)&v6 initWithCoder:coder];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:@"frame"])
  {
    [(MRMarimbaView *)self willChangeValueForKey:@"cleanAperture"];

    [(MRMarimbaView *)self didChangeValueForKey:@"cleanAperture"];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MRMarimbaView;
    [(MRMarimbaView *)&v11 observeValueForKeyPath:path ofObject:object change:change context:context];
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

- (void)setUsesExitButton:(BOOL)button
{
  if (self->_usesExitButton != button)
  {
    self->_usesExitButton = button;
    if (button)
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

- (void)warmupAndPlay:(BOOL)play completionBlock:(id)block
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_75A3C;
  block[3] = &unk_1AAFF0;
  playCopy = play;
  block[4] = self;
  block[5] = block;
  dispatch_async(global_queue, block);
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = MRMarimbaView;
  [(MRMarimbaView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(MRMarimbaView *)self setAspectRatio:self->_aspectRatio];
}

- (void)setAspectRatio:(double)ratio
{
  self->_aspectRatio = ratio;
  [(MRMarimbaView *)self bounds];
  if (ratio > 0.0)
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

- (void)enterMarimbaWithDuration:(double)duration andCompletionBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_75D60;
  v4[3] = &unk_1AB018;
  v4[4] = self;
  v4[5] = block;
  sub_75D60(v4);
}

- (void)exitMarimbaWithDuration:(double)duration location:(CGPoint)location andScale:(double)scale
{
  self->_isInMarimba = 0;
  self->_isEnteringExitingMarimba = 0;
  [(MRMarimbaView *)self close:self, duration, location.x, location.y, scale];
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

- (void)close:(id)close
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

  interactionDelegate = [(MRMarimbaView *)self interactionDelegate];

  return [(MRMarimbaViewInteractionDelegate *)interactionDelegate marimbaViewCanInteract:self];
}

- (void)marimbaWasSingleTappedAtPoint:(CGPoint)point
{
  x = point.x;
  [(MRMarimbaView *)self bounds:point.x];
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
          interactionDelegate = [(MRMarimbaView *)self interactionDelegate];

          [(MRMarimbaViewInteractionDelegate *)interactionDelegate slideshowWasTapped];
        }
      }

      else
      {

        [(MRMarimbaView *)self showHUD];
      }
    }

    else
    {
      renderer = [(MRMarimbaLayer *)self->_marimbaLayer renderer];

      [(MRRenderer *)renderer jumpToPreviousMarker];
    }
  }

  else
  {
    renderer2 = [(MRMarimbaLayer *)self->_marimbaLayer renderer];

    [(MRRenderer *)renderer2 jumpToNextMarker];
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

- (void)setDocument:(id)document
{
  [(MRMarimbaLayer *)self->_marimbaLayer setDocument:?];
  [(MRRenderer *)[(MRMarimbaLayer *)self->_marimbaLayer renderer] setSlideFocusModeBackgroundColor:[(MPDocument *)[(MRMarimbaLayer *)self->_marimbaLayer document] backgroundCGColor]];
  orderedVideoPaths = self->_orderedVideoPaths;
  if (orderedVideoPaths)
  {
  }

  self->_orderedVideoPaths = [document orderedVideoPaths];
}

- (void)setMarimbaContentsScale:(double)scale
{
  [(MRMarimbaLayerView *)self->_marimbaLayerView setContentScaleFactor:?];
  marimbaLayer = self->_marimbaLayer;

  [(MRMarimbaLayer *)marimbaLayer setContentsScale:scale];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if (self->_isInMarimba)
  {
    [(MRMarimbaLayerView *)self->_marimbaLayerView touchesBegan:began withEvent:event];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if (self->_isInMarimba)
  {
    [(MRMarimbaLayerView *)self->_marimbaLayerView touchesMoved:moved withEvent:event];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if (self->_isInMarimba)
  {
    [(MRMarimbaLayerView *)self->_marimbaLayerView touchesCancelled:cancelled withEvent:event];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if (self->_isInMarimba)
  {
    [(MRMarimbaLayerView *)self->_marimbaLayerView touchesEnded:ended withEvent:event];
  }
}

@end