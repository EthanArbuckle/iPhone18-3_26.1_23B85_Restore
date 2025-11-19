@interface _UIRemoteView
+ (id)viewWithHostedWindowHostingHandle:(id)a3;
- (Class)_intelligenceBaseClass;
- (_UIRemoteView)initWithFrame:(CGRect)a3 pid:(int)a4 contextID:(unsigned int)a5;
- (_UIRemoteViewController)remoteViewController;
- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5;
- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4;
- (void)_intelligenceCollectRemoteContentIn:(CGRect)a3 remoteContextWrapper:(id)a4;
- (void)_setInheritsSecurity:(BOOL)a3;
- (void)applyTransformUndoingRemoteRootLayerTransform:(CGAffineTransform *)a3 frame:(CGRect)a4;
- (void)setHostedWindowHostingHandle:(id)a3;
- (void)tintColorDidChange;
@end

@implementation _UIRemoteView

- (Class)_intelligenceBaseClass
{
  sub_188F48D64();

  return swift_getObjCClassFromMetadata();
}

- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = self;
  _UIRemoteView._intelligenceCollectContent(in:collector:)(v9, x, y, width, height);
}

- (void)_intelligenceCollectRemoteContentIn:(CGRect)a3 remoteContextWrapper:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v12 = self;
  v10 = [(_UIRemoteView *)v12 remoteViewController];
  if (v10)
  {
    v11 = v10;
    [(_UIRemoteViewController *)v10 _intelligenceCollectRemoteContentInVisibleRect:v9 withRemoteContextWrapper:x, y, width, height];
  }
}

+ (id)viewWithHostedWindowHostingHandle:(id)a3
{
  v5 = a3;
  v6 = [a1 alloc];
  v7 = [v5 pid];
  v8 = [v5 contextID];
  v9 = [v6 initWithFrame:v7 pid:v8 contextID:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((v9 + 424), a3);
    if (v5)
    {
      [v5 rootLayerTransform];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    [v5 rootLayerFrame];
    [v10 applyTransformUndoingRemoteRootLayerTransform:&v13 frame:?];
    [v10 setUserInteractionEnabled:0];
    v11 = v10;
  }

  return v10;
}

- (_UIRemoteView)initWithFrame:(CGRect)a3 pid:(int)a4 contextID:(unsigned int)a5
{
  v9.receiver = self;
  v9.super_class = _UIRemoteView;
  v5 = [(_UILayerHostView *)&v9 initWithFrame:*&a4 pid:*&a5 contextID:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v7 = [(UIView *)v5 layer];
    [v7 setInheritsTiming:0];
  }

  return v6;
}

- (void)setHostedWindowHostingHandle:(id)a3
{
  v5 = a3;
  if (self->_hostedWindowHostingHandle != v5)
  {
    objc_storeStrong(&self->_hostedWindowHostingHandle, a3);
    [(_UILayerHostView *)self setPid:[(_UIHostedWindowHostingHandle *)self->_hostedWindowHostingHandle pid] contextID:[(_UIHostedWindowHostingHandle *)self->_hostedWindowHostingHandle contextID]];
    if (v5)
    {
      [(_UIHostedWindowHostingHandle *)v5 rootLayerTransform];
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
    }

    [(_UIHostedWindowHostingHandle *)v5 rootLayerFrame:v6];
    [(_UIRemoteView *)self applyTransformUndoingRemoteRootLayerTransform:&v6 frame:?];
  }
}

- (void)applyTransformUndoingRemoteRootLayerTransform:(CGAffineTransform *)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(UIView *)self frame];
  v11 = v10;
  v13 = v12;
  v14 = [(UIView *)self layer];
  v15 = *&a3->c;
  *&v16.a = *&a3->a;
  *&v16.c = v15;
  *&v16.tx = *&a3->tx;
  CGAffineTransformInvert(&v17, &v16);
  [v14 setAffineTransform:&v17];

  [(UIView *)self setBounds:x, y, width, height];
  [(UIView *)self frame];
  [(UIView *)self setFrame:v11, v13];
}

- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  if ([objc_opt_class() _requiresWindowTouches])
  {
    v11 = [(UIView *)self window];
    if (v11 == v10)
    {
      v12 = self;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = _UIRemoteView;
    v13 = [(UIView *)&v15 _hitTest:v9 withEvent:v10 windowServerHitTestWindow:x, y];
  }

  return v13;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = _UIRemoteView;
  [(UIView *)&v4 tintColorDidChange];
  WeakRetained = objc_loadWeakRetained(&self->_remoteViewController);
  [WeakRetained _updateTintColor];
}

- (void)_setInheritsSecurity:(BOOL)a3
{
  v3 = a3;
  [(_UILayerHostView *)self setInheritsSecurity:?];
  if (v3)
  {
    v5 = [(UIView *)self layer];
    [v5 setSecurityMode:*MEMORY[0x1E6979E68]];
  }
}

- (_UIRemoteViewController)remoteViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteViewController);

  return WeakRetained;
}

@end