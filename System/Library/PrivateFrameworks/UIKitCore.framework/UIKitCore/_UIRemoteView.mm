@interface _UIRemoteView
+ (id)viewWithHostedWindowHostingHandle:(id)handle;
- (Class)_intelligenceBaseClass;
- (_UIRemoteView)initWithFrame:(CGRect)frame pid:(int)pid contextID:(unsigned int)d;
- (_UIRemoteViewController)remoteViewController;
- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window;
- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector;
- (void)_intelligenceCollectRemoteContentIn:(CGRect)in remoteContextWrapper:(id)wrapper;
- (void)_setInheritsSecurity:(BOOL)security;
- (void)applyTransformUndoingRemoteRootLayerTransform:(CGAffineTransform *)transform frame:(CGRect)frame;
- (void)setHostedWindowHostingHandle:(id)handle;
- (void)tintColorDidChange;
@end

@implementation _UIRemoteView

- (Class)_intelligenceBaseClass
{
  sub_188F48D64();

  return swift_getObjCClassFromMetadata();
}

- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  collectorCopy = collector;
  selfCopy = self;
  _UIRemoteView._intelligenceCollectContent(in:collector:)(collectorCopy, x, y, width, height);
}

- (void)_intelligenceCollectRemoteContentIn:(CGRect)in remoteContextWrapper:(id)wrapper
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  wrapperCopy = wrapper;
  selfCopy = self;
  remoteViewController = [(_UIRemoteView *)selfCopy remoteViewController];
  if (remoteViewController)
  {
    v11 = remoteViewController;
    [(_UIRemoteViewController *)remoteViewController _intelligenceCollectRemoteContentInVisibleRect:wrapperCopy withRemoteContextWrapper:x, y, width, height];
  }
}

+ (id)viewWithHostedWindowHostingHandle:(id)handle
{
  handleCopy = handle;
  v6 = [self alloc];
  v7 = [handleCopy pid];
  contextID = [handleCopy contextID];
  v9 = [v6 initWithFrame:v7 pid:contextID contextID:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((v9 + 424), handle);
    if (handleCopy)
    {
      [handleCopy rootLayerTransform];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    [handleCopy rootLayerFrame];
    [v10 applyTransformUndoingRemoteRootLayerTransform:&v13 frame:?];
    [v10 setUserInteractionEnabled:0];
    v11 = v10;
  }

  return v10;
}

- (_UIRemoteView)initWithFrame:(CGRect)frame pid:(int)pid contextID:(unsigned int)d
{
  v9.receiver = self;
  v9.super_class = _UIRemoteView;
  v5 = [(_UILayerHostView *)&v9 initWithFrame:*&pid pid:*&d contextID:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    layer = [(UIView *)v5 layer];
    [layer setInheritsTiming:0];
  }

  return v6;
}

- (void)setHostedWindowHostingHandle:(id)handle
{
  handleCopy = handle;
  if (self->_hostedWindowHostingHandle != handleCopy)
  {
    objc_storeStrong(&self->_hostedWindowHostingHandle, handle);
    [(_UILayerHostView *)self setPid:[(_UIHostedWindowHostingHandle *)self->_hostedWindowHostingHandle pid] contextID:[(_UIHostedWindowHostingHandle *)self->_hostedWindowHostingHandle contextID]];
    if (handleCopy)
    {
      [(_UIHostedWindowHostingHandle *)handleCopy rootLayerTransform];
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
    }

    [(_UIHostedWindowHostingHandle *)handleCopy rootLayerFrame:v6];
    [(_UIRemoteView *)self applyTransformUndoingRemoteRootLayerTransform:&v6 frame:?];
  }
}

- (void)applyTransformUndoingRemoteRootLayerTransform:(CGAffineTransform *)transform frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v11 = v10;
  v13 = v12;
  layer = [(UIView *)self layer];
  v15 = *&transform->c;
  *&v16.a = *&transform->a;
  *&v16.c = v15;
  *&v16.tx = *&transform->tx;
  CGAffineTransformInvert(&v17, &v16);
  [layer setAffineTransform:&v17];

  [(UIView *)self setBounds:x, y, width, height];
  [(UIView *)self frame];
  [(UIView *)self setFrame:v11, v13];
}

- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  windowCopy = window;
  if ([objc_opt_class() _requiresWindowTouches])
  {
    window = [(UIView *)self window];
    if (window == windowCopy)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v13 = selfCopy;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = _UIRemoteView;
    v13 = [(UIView *)&v15 _hitTest:eventCopy withEvent:windowCopy windowServerHitTestWindow:x, y];
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

- (void)_setInheritsSecurity:(BOOL)security
{
  securityCopy = security;
  [(_UILayerHostView *)self setInheritsSecurity:?];
  if (securityCopy)
  {
    layer = [(UIView *)self layer];
    [layer setSecurityMode:*MEMORY[0x1E6979E68]];
  }
}

- (_UIRemoteViewController)remoteViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteViewController);

  return WeakRetained;
}

@end