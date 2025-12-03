@interface SBAppClipOverlayView
- (SBAppClipOverlayView)initWithCoder:(id)coder;
- (SBAppClipOverlayView)initWithFrame:(CGRect)frame;
- (SBAppClipOverlayView)initWithFrame:(CGRect)frame delegate:(id)delegate;
- (SBAppClipOverlayViewDelegate)delegate;
- (void)invalidate;
@end

@implementation SBAppClipOverlayView

- (SBAppClipOverlayView)initWithFrame:(CGRect)frame delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = SBAppClipOverlayView;
  height = [(SBAppClipOverlayView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_delegate, delegateCopy);
  }

  return v11;
}

- (SBAppClipOverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBAppClipOverlayViewController.m" lineNumber:186 description:@"Use -initWithFrame:delegate:"];

  return [(SBAppClipOverlayView *)self initWithFrame:0 delegate:x, y, width, height];
}

- (SBAppClipOverlayView)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBAppClipOverlayViewController.m" lineNumber:191 description:@"Use -initWithFrame:delegate:"];

  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);

  return [(SBAppClipOverlayView *)self initWithFrame:0 delegate:v6, v7, v8, v9];
}

- (void)invalidate
{
  delegate = [(SBAppClipOverlayView *)self delegate];
  [delegate appClipPlaceholderViewDidInvalidate:self];
}

- (SBAppClipOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end