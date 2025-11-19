@interface SBAppClipOverlayView
- (SBAppClipOverlayView)initWithCoder:(id)a3;
- (SBAppClipOverlayView)initWithFrame:(CGRect)a3;
- (SBAppClipOverlayView)initWithFrame:(CGRect)a3 delegate:(id)a4;
- (SBAppClipOverlayViewDelegate)delegate;
- (void)invalidate;
@end

@implementation SBAppClipOverlayView

- (SBAppClipOverlayView)initWithFrame:(CGRect)a3 delegate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = SBAppClipOverlayView;
  v10 = [(SBAppClipOverlayView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v9);
  }

  return v11;
}

- (SBAppClipOverlayView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [MEMORY[0x277CCA890] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"SBAppClipOverlayViewController.m" lineNumber:186 description:@"Use -initWithFrame:delegate:"];

  return [(SBAppClipOverlayView *)self initWithFrame:0 delegate:x, y, width, height];
}

- (SBAppClipOverlayView)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBAppClipOverlayViewController.m" lineNumber:191 description:@"Use -initWithFrame:delegate:"];

  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);

  return [(SBAppClipOverlayView *)self initWithFrame:0 delegate:v6, v7, v8, v9];
}

- (void)invalidate
{
  v3 = [(SBAppClipOverlayView *)self delegate];
  [v3 appClipPlaceholderViewDidInvalidate:self];
}

- (SBAppClipOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end