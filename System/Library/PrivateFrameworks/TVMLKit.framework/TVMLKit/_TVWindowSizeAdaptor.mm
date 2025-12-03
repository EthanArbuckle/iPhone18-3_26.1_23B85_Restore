@interface _TVWindowSizeAdaptor
- (BOOL)_shouldSwapDimensions;
- (BOOL)update;
- (CGSize)adjustedWindowSize;
- (UIWindow)window;
- (_TVWindowSizeAdaptor)initWithWindow:(id)window;
- (unint64_t)_supportedOrientations;
@end

@implementation _TVWindowSizeAdaptor

- (_TVWindowSizeAdaptor)initWithWindow:(id)window
{
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = _TVWindowSizeAdaptor;
  v5 = [(_TVWindowSizeAdaptor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_window, windowCopy);
    v6->_allowedInterfaceOrientations = [(_TVWindowSizeAdaptor *)v6 _supportedOrientations];
  }

  return v6;
}

- (CGSize)adjustedWindowSize
{
  window = [(_TVWindowSizeAdaptor *)self window];
  if (window)
  {
    [(_TVWindowSizeAdaptor *)self window];
  }

  else
  {
    [MEMORY[0x277D759A0] mainScreen];
  }
  v4 = ;
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  _shouldSwapDimensions = [(_TVWindowSizeAdaptor *)self _shouldSwapDimensions];
  if (_shouldSwapDimensions)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (_shouldSwapDimensions)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)update
{
  _supportedOrientations = [(_TVWindowSizeAdaptor *)self _supportedOrientations];
  allowedInterfaceOrientations = self->_allowedInterfaceOrientations;
  if (_supportedOrientations != allowedInterfaceOrientations)
  {
    self->_allowedInterfaceOrientations = _supportedOrientations;
  }

  return _supportedOrientations != allowedInterfaceOrientations;
}

- (BOOL)_shouldSwapDimensions
{
  WeakRetained = objc_loadWeakRetained(&self->_window);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 0;
  }

  statusBarOrientation = [*MEMORY[0x277D76620] statusBarOrientation];
  if ((statusBarOrientation - 1) > 3)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = dword_26CE88090[statusBarOrientation - 1];
  }

  return (self->_allowedInterfaceOrientations & (1 << statusBarOrientation) | self->_allowedInterfaceOrientations & (1 << v8)) == 0;
}

- (unint64_t)_supportedOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_window);
  rootViewController = [WeakRetained rootViewController];

  presentedViewController = [rootViewController presentedViewController];
  v5 = presentedViewController;
  if (!presentedViewController)
  {
    presentedViewController = rootViewController;
  }

  supportedInterfaceOrientations = [presentedViewController supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end