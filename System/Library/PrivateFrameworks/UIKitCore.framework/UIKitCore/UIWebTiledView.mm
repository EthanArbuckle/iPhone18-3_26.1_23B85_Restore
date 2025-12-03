@interface UIWebTiledView
- (CGRect)visibleRect;
- (CGSize)tileSize;
- (UIWebTiledView)initWithFrame:(CGRect)frame;
- (void)_didScroll;
- (void)_screenChanged:(id)changed;
- (void)_updateForScreen:(id)screen;
- (void)dealloc;
- (void)drawImageIntoTiles:(CGImage *)tiles;
- (void)layoutSubviews;
- (void)layoutTilesNow;
- (void)layoutTilesNowForRect:(CGRect)rect;
- (void)setAllowsPaintingAndScriptsWhilePanning:(BOOL)panning;
- (void)setEditingTilingModeEnabled:(BOOL)enabled;
- (void)setInGesture:(int)gesture;
- (void)setNeedsLayout;
- (void)setTileDrawingEnabled:(BOOL)enabled;
- (void)setTilingArea:(int)area;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)setWAKWindow:(id)window;
- (void)updateTilingMode;
- (void)willMoveToWindow:(id)window;
@end

@implementation UIWebTiledView

- (void)_updateForScreen:(id)screen
{
  if (screen)
  {
    wakWindow = self->_wakWindow;
    [screen _referenceBounds];
    [(WAKWindow *)wakWindow setScreenSize:v6, v7];
    if ([UIApp _appAdoptsUISceneLifecycle])
    {
      window = [(UIView *)self window];
      if (window)
      {
        v9 = window;
        if ([__UIStatusBarManagerForWindow(window) isStatusBarHidden])
        {
          v10 = 1;
        }

        else
        {
          [__UIStatusBarManagerForWindow(v9) defaultStatusBarHeightInOrientation:{-[UIWindowScene _interfaceOrientation](-[UIWindow windowScene](v9, "windowScene"), "_interfaceOrientation")}];
          v10 = v13 == 0.0;
        }

        [(UIWindow *)v9 _referenceFrameFromSceneUsingScreenBounds:v10];
      }

      else
      {
        [screen _mainSceneFrame];
      }
    }

    else
    {
      [screen _applicationFrame];
    }

    [(WAKWindow *)self->_wakWindow setAvailableScreenSize:v11, v12];
    [(WAKWindow *)self->_wakWindow screenScale];
    v15 = v14;
    [screen scale];
    v17 = v16;
    [(WAKWindow *)self->_wakWindow setScreenScale:?];
    if (v17 != v15)
    {
      [(UIWebTiledView *)self removeAllTiles];

      [(UIWebTiledView *)self layoutTilesNow];
    }
  }
}

- (UIWebTiledView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  objc_opt_self();
  v8 = __invalidatesViewUponCreation;
  objc_opt_self();
  __invalidatesViewUponCreation = 0;
  v11.receiver = self;
  v11.super_class = UIWebTiledView;
  height = [(UIView *)&v11 initWithFrame:x, y, width, height];
  objc_opt_self();
  __invalidatesViewUponCreation = v8;
  if (height)
  {
    height->_wakWindow = [objc_alloc(MEMORY[0x1E69E2F28]) initWithLayer:{-[UIView layer](height, "layer")}];
    [(UIWebTiledView *)height _updateForScreen:[(UIView *)height _screen]];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  return height;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = UIWebTiledView;
  [(UIView *)&v3 dealloc];
}

- (void)setWAKWindow:(id)window
{
  windowCopy = window;

  self->_wakWindow = window;
}

- (CGRect)visibleRect
{
  [(WAKWindow *)self->_wakWindow visibleRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)layoutTilesNow
{
  WebThreadLock();
  wakWindow = self->_wakWindow;

  [(WAKWindow *)wakWindow layoutTilesNow];
}

- (void)layoutTilesNowForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  WebThreadLock();
  wakWindow = self->_wakWindow;

  [(WAKWindow *)wakWindow layoutTilesNowForRect:x, y, width, height];
}

- (void)drawImageIntoTiles:(CGImage *)tiles
{
  WebThreadLock();
  [(WAKWindow *)self->_wakWindow setContentReplacementImage:tiles];
  [(WAKWindow *)self->_wakWindow removeAllTiles];
  [(WAKWindow *)self->_wakWindow layoutTilesNow];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__UIWebTiledView_drawImageIntoTiles___block_invoke;
  v5[3] = &unk_1E70F5CA0;
  v5[4] = self;
  [UIApp _performBlockAfterCATransactionCommits:v5];
}

- (void)layoutSubviews
{
  if (self->_didFirstTileLayout && !self->_layoutTilesInMainThread)
  {
    wakWindow = self->_wakWindow;

    [(WAKWindow *)wakWindow layoutTiles];
  }

  else
  {
    WebThreadLock();
    [(WAKWindow *)self->_wakWindow layoutTilesNow];
    self->_didFirstTileLayout = 1;
  }
}

- (void)_screenChanged:(id)changed
{
  if ([objc_msgSend(changed "object")])
  {
    v5 = [objc_msgSend(changed "userInfo")];

    [(UIWebTiledView *)self _updateForScreen:v5];
  }
}

- (void)willMoveToWindow:(id)window
{
  rootLayer = [(WAKWindow *)self->_wakWindow rootLayer];
  if (window && !rootLayer)
  {
    [(UIWebTiledView *)self setNeedsLayout];
  }

  -[UIWebTiledView _updateForScreen:](self, "_updateForScreen:", [window screen]);
  wakWindow = self->_wakWindow;

  [(WAKWindow *)wakWindow setVisible:window != 0];
}

- (void)updateTilingMode
{
  tilingArea = self->_tilingArea;
  if (tilingArea == 2)
  {
    v3 = 4;
  }

  else if (tilingArea == 3)
  {
    v3 = 5;
  }

  else
  {
    inGestureType = self->_inGestureType;
    v3 = tilingArea == 1;
    if (inGestureType == 8)
    {
      v3 = 2;
    }

    if (inGestureType == 2)
    {
      v3 = 3;
    }
  }

  if (v3 != 1 && v3 != 4 && self->_allowsPaintingAndScriptsWhilePanning)
  {
    v3 = 0;
  }

  if (self->_editingTilingModeEnabled && v3 == 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  [(WAKWindow *)self->_wakWindow setTilingMode:v5];
}

- (void)setInGesture:(int)gesture
{
  if (self->_inGestureType != gesture)
  {
    self->_inGestureType = gesture;
    [(UIWebTiledView *)self updateTilingMode];
  }
}

- (void)setTilingArea:(int)area
{
  if (self->_tilingArea != area)
  {
    self->_tilingArea = area;
    if (!self->_tilingModeIsLocked)
    {
      [(UIWebTiledView *)self updateTilingMode];
    }
  }
}

- (void)setAllowsPaintingAndScriptsWhilePanning:(BOOL)panning
{
  if (self->_allowsPaintingAndScriptsWhilePanning != panning)
  {
    self->_allowsPaintingAndScriptsWhilePanning = panning;
    [(UIWebTiledView *)self updateTilingMode];
  }
}

- (void)setNeedsLayout
{
  v2.receiver = self;
  v2.super_class = UIWebTiledView;
  [(UIView *)&v2 setNeedsLayout];
}

- (void)_didScroll
{
  v2.receiver = self;
  v2.super_class = UIWebTiledView;
  [(UIView *)&v2 setNeedsLayout];
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v5.receiver = self;
  v5.super_class = UIWebTiledView;
  v3 = *&transform->c;
  v4[0] = *&transform->a;
  v4[1] = v3;
  v4[2] = *&transform->tx;
  [(UIView *)&v5 setTransform:v4];
}

- (CGSize)tileSize
{
  v2 = 512.0;
  v3 = 512.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setTileDrawingEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4;
  }

  [(WAKWindow *)self->_wakWindow setTilingMode:v3];
}

- (void)setEditingTilingModeEnabled:(BOOL)enabled
{
  if (self->_editingTilingModeEnabled != enabled)
  {
    self->_editingTilingModeEnabled = enabled;
    [(UIWebTiledView *)self updateTilingMode];
  }
}

@end