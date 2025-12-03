@interface STKMSStickerView
- (STKMSStickerView)init;
- (STKMSStickerViewDelegate)delegate;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (void)_prepareForReuse;
- (void)handleLongPress:(id)press;
- (void)handleTap:(id)tap;
- (void)startAnimatingWithOffset:(double)offset;
@end

@implementation STKMSStickerView

- (STKMSStickerView)init
{
  v8.receiver = self;
  v8.super_class = STKMSStickerView;
  v2 = [(STKMSStickerView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(STKMSStickerView *)v2 setClipsToBounds:0];
    layer = [(STKMSStickerView *)v3 layer];
    [layer setMasksToBounds:0];

    v5 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v3 action:sel_handleLongPress_];
    longPressGestureRecognizer = v3->_longPressGestureRecognizer;
    v3->_longPressGestureRecognizer = v5;

    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setDelegate:v3];
    [(STKMSStickerView *)v3 addGestureRecognizer:v3->_longPressGestureRecognizer];
  }

  return v3;
}

- (void)startAnimatingWithOffset:(double)offset
{
  if (objc_opt_respondsToSelector())
  {
    [(MSStickerView *)self setAnimationOffset:offset];
  }

  [(MSStickerView *)self startAnimating];
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  sessionCopy = session;
  interactionCopy = interaction;
  delegate = [(STKMSStickerView *)self delegate];
  [delegate handleWillDrag:self];

  v11.receiver = self;
  v11.super_class = STKMSStickerView;
  v9 = [(MSStickerView *)&v11 dragInteraction:interactionCopy itemsForBeginningSession:sessionCopy];

  return v9;
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  delegate = [(STKMSStickerView *)self delegate];

  if (delegate)
  {
    delegate2 = [(STKMSStickerView *)self delegate];
    canHandleTap = [delegate2 canHandleTap];

    if (canHandleTap)
    {
      delegate3 = [(STKMSStickerView *)self delegate];
      [delegate3 handleWillTap:self];

      v11.receiver = self;
      v11.super_class = STKMSStickerView;
      [(MSStickerView *)&v11 handleTap:tapCopy];
      delegate4 = [(STKMSStickerView *)self delegate];
      [delegate4 handleTap:self recognizer:tapCopy];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = STKMSStickerView;
    [(MSStickerView *)&v10 handleTap:tapCopy];
  }
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  delegate = [(STKMSStickerView *)self delegate];
  [delegate handleLongPress:self recognizer:pressCopy];
}

- (void)_prepareForReuse
{
  v3.receiver = self;
  v3.super_class = STKMSStickerView;
  [(MSStickerView *)&v3 _prepareForReuse];
  [(MSStickerView *)self setImageData:0];
}

- (STKMSStickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end