@interface UIWebTiledView
- (CGRect)visibleRect;
- (CGSize)tileSize;
- (UIWebTiledView)initWithFrame:(CGRect)a3;
- (void)_didScroll;
- (void)_screenChanged:(id)a3;
- (void)_updateForScreen:(id)a3;
- (void)dealloc;
- (void)drawImageIntoTiles:(CGImage *)a3;
- (void)layoutSubviews;
- (void)layoutTilesNow;
- (void)layoutTilesNowForRect:(CGRect)a3;
- (void)setAllowsPaintingAndScriptsWhilePanning:(BOOL)a3;
- (void)setEditingTilingModeEnabled:(BOOL)a3;
- (void)setInGesture:(int)a3;
- (void)setNeedsLayout;
- (void)setTileDrawingEnabled:(BOOL)a3;
- (void)setTilingArea:(int)a3;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)setWAKWindow:(id)a3;
- (void)updateTilingMode;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UIWebTiledView

- (void)_updateForScreen:(id)a3
{
  if (a3)
  {
    wakWindow = self->_wakWindow;
    [a3 _referenceBounds];
    [(WAKWindow *)wakWindow setScreenSize:v6, v7];
    if ([UIApp _appAdoptsUISceneLifecycle])
    {
      v8 = [(UIView *)self window];
      if (v8)
      {
        v9 = v8;
        if ([__UIStatusBarManagerForWindow(v8) isStatusBarHidden])
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
        [a3 _mainSceneFrame];
      }
    }

    else
    {
      [a3 _applicationFrame];
    }

    [(WAKWindow *)self->_wakWindow setAvailableScreenSize:v11, v12];
    [(WAKWindow *)self->_wakWindow screenScale];
    v15 = v14;
    [a3 scale];
    v17 = v16;
    [(WAKWindow *)self->_wakWindow setScreenScale:?];
    if (v17 != v15)
    {
      [(UIWebTiledView *)self removeAllTiles];

      [(UIWebTiledView *)self layoutTilesNow];
    }
  }
}

- (UIWebTiledView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_opt_self();
  v8 = __invalidatesViewUponCreation;
  objc_opt_self();
  __invalidatesViewUponCreation = 0;
  v11.receiver = self;
  v11.super_class = UIWebTiledView;
  v9 = [(UIView *)&v11 initWithFrame:x, y, width, height];
  objc_opt_self();
  __invalidatesViewUponCreation = v8;
  if (v9)
  {
    v9->_wakWindow = [objc_alloc(MEMORY[0x1E69E2F28]) initWithLayer:{-[UIView layer](v9, "layer")}];
    [(UIWebTiledView *)v9 _updateForScreen:[(UIView *)v9 _screen]];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  return v9;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = UIWebTiledView;
  [(UIView *)&v3 dealloc];
}

- (void)setWAKWindow:(id)a3
{
  v5 = a3;

  self->_wakWindow = a3;
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

- (void)layoutTilesNowForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  WebThreadLock();
  wakWindow = self->_wakWindow;

  [(WAKWindow *)wakWindow layoutTilesNowForRect:x, y, width, height];
}

- (void)drawImageIntoTiles:(CGImage *)a3
{
  WebThreadLock();
  [(WAKWindow *)self->_wakWindow setContentReplacementImage:a3];
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

- (void)_screenChanged:(id)a3
{
  if ([objc_msgSend(a3 "object")])
  {
    v5 = [objc_msgSend(a3 "userInfo")];

    [(UIWebTiledView *)self _updateForScreen:v5];
  }
}

- (void)willMoveToWindow:(id)a3
{
  v5 = [(WAKWindow *)self->_wakWindow rootLayer];
  if (a3 && !v5)
  {
    [(UIWebTiledView *)self setNeedsLayout];
  }

  -[UIWebTiledView _updateForScreen:](self, "_updateForScreen:", [a3 screen]);
  wakWindow = self->_wakWindow;

  [(WAKWindow *)wakWindow setVisible:a3 != 0];
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

- (void)setInGesture:(int)a3
{
  if (self->_inGestureType != a3)
  {
    self->_inGestureType = a3;
    [(UIWebTiledView *)self updateTilingMode];
  }
}

- (void)setTilingArea:(int)a3
{
  if (self->_tilingArea != a3)
  {
    self->_tilingArea = a3;
    if (!self->_tilingModeIsLocked)
    {
      [(UIWebTiledView *)self updateTilingMode];
    }
  }
}

- (void)setAllowsPaintingAndScriptsWhilePanning:(BOOL)a3
{
  if (self->_allowsPaintingAndScriptsWhilePanning != a3)
  {
    self->_allowsPaintingAndScriptsWhilePanning = a3;
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

- (void)setTransform:(CGAffineTransform *)a3
{
  v5.receiver = self;
  v5.super_class = UIWebTiledView;
  v3 = *&a3->c;
  v4[0] = *&a3->a;
  v4[1] = v3;
  v4[2] = *&a3->tx;
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

- (void)setTileDrawingEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4;
  }

  [(WAKWindow *)self->_wakWindow setTilingMode:v3];
}

- (void)setEditingTilingModeEnabled:(BOOL)a3
{
  if (self->_editingTilingModeEnabled != a3)
  {
    self->_editingTilingModeEnabled = a3;
    [(UIWebTiledView *)self updateTilingMode];
  }
}

@end