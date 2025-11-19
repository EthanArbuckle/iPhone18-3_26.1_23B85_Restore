@interface _TVWindowSizeAdaptor
- (BOOL)_shouldSwapDimensions;
- (BOOL)update;
- (CGSize)adjustedWindowSize;
- (UIWindow)window;
- (_TVWindowSizeAdaptor)initWithWindow:(id)a3;
- (unint64_t)_supportedOrientations;
@end

@implementation _TVWindowSizeAdaptor

- (_TVWindowSizeAdaptor)initWithWindow:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _TVWindowSizeAdaptor;
  v5 = [(_TVWindowSizeAdaptor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_window, v4);
    v6->_allowedInterfaceOrientations = [(_TVWindowSizeAdaptor *)v6 _supportedOrientations];
  }

  return v6;
}

- (CGSize)adjustedWindowSize
{
  v3 = [(_TVWindowSizeAdaptor *)self window];
  if (v3)
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

  v9 = [(_TVWindowSizeAdaptor *)self _shouldSwapDimensions];
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v9)
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
  v3 = [(_TVWindowSizeAdaptor *)self _supportedOrientations];
  allowedInterfaceOrientations = self->_allowedInterfaceOrientations;
  if (v3 != allowedInterfaceOrientations)
  {
    self->_allowedInterfaceOrientations = v3;
  }

  return v3 != allowedInterfaceOrientations;
}

- (BOOL)_shouldSwapDimensions
{
  WeakRetained = objc_loadWeakRetained(&self->_window);
  v4 = [WeakRetained traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    return 0;
  }

  v7 = [*MEMORY[0x277D76620] statusBarOrientation];
  if ((v7 - 1) > 3)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = dword_26CE88090[v7 - 1];
  }

  return (self->_allowedInterfaceOrientations & (1 << v7) | self->_allowedInterfaceOrientations & (1 << v8)) == 0;
}

- (unint64_t)_supportedOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_window);
  v3 = [WeakRetained rootViewController];

  v4 = [v3 presentedViewController];
  v5 = v4;
  if (!v4)
  {
    v4 = v3;
  }

  v6 = [v4 supportedInterfaceOrientations];

  return v6;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end