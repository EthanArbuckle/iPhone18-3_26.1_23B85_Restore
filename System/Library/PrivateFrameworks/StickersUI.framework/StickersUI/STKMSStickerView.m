@interface STKMSStickerView
- (STKMSStickerView)init;
- (STKMSStickerViewDelegate)delegate;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (void)_prepareForReuse;
- (void)handleLongPress:(id)a3;
- (void)handleTap:(id)a3;
- (void)startAnimatingWithOffset:(double)a3;
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
    v4 = [(STKMSStickerView *)v3 layer];
    [v4 setMasksToBounds:0];

    v5 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v3 action:sel_handleLongPress_];
    longPressGestureRecognizer = v3->_longPressGestureRecognizer;
    v3->_longPressGestureRecognizer = v5;

    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setDelegate:v3];
    [(STKMSStickerView *)v3 addGestureRecognizer:v3->_longPressGestureRecognizer];
  }

  return v3;
}

- (void)startAnimatingWithOffset:(double)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(MSStickerView *)self setAnimationOffset:a3];
  }

  [(MSStickerView *)self startAnimating];
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STKMSStickerView *)self delegate];
  [v8 handleWillDrag:self];

  v11.receiver = self;
  v11.super_class = STKMSStickerView;
  v9 = [(MSStickerView *)&v11 dragInteraction:v7 itemsForBeginningSession:v6];

  return v9;
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = [(STKMSStickerView *)self delegate];

  if (v5)
  {
    v6 = [(STKMSStickerView *)self delegate];
    v7 = [v6 canHandleTap];

    if (v7)
    {
      v8 = [(STKMSStickerView *)self delegate];
      [v8 handleWillTap:self];

      v11.receiver = self;
      v11.super_class = STKMSStickerView;
      [(MSStickerView *)&v11 handleTap:v4];
      v9 = [(STKMSStickerView *)self delegate];
      [v9 handleTap:self recognizer:v4];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = STKMSStickerView;
    [(MSStickerView *)&v10 handleTap:v4];
  }
}

- (void)handleLongPress:(id)a3
{
  v4 = a3;
  v5 = [(STKMSStickerView *)self delegate];
  [v5 handleLongPress:self recognizer:v4];
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