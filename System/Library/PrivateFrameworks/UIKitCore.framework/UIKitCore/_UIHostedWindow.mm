@interface _UIHostedWindow
- (BOOL)_allowsLinkPreviewInteractionInViewServices;
- (BOOL)_shouldPropagateTraitCollectionChanges;
- (CGRect)_usableBounds;
- (_UIHostedWindow)initWithFrame:(CGRect)a3;
- (_UIHostedWindowDelegate)_hostedWindowDelegate;
- (double)_systemReferenceAngle;
- (id)_normalInheritedTintColor;
- (id)_remoteContentParent;
- (id)_systemReferenceAngleProvider;
- (id)_traitCollectionForSize:(CGSize)a3 parentCollection:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)_defaultTintAdjustmentMode;
- (unint64_t)_systemReferenceAngleMode;
- (unsigned)contextID;
- (void)_configureContextOptions:(id)a3;
- (void)_didCreateRootPresentationController;
- (void)_registerScrollToTopView:(id)a3;
- (void)_setFirstResponder:(id)a3;
- (void)_setHostBundleIdentifier:(uint64_t)a1;
- (void)_setHostTintAdjustmentMode:(int64_t)a3;
- (void)_setHostTintColor:(id)a3;
- (void)_setHostTraitCollection:(id)a3;
- (void)_unregisterScrollToTopView:(id)a3;
- (void)_updateStrictTouchVerificationIfNecessary;
- (void)_updateWindowTraitsAndNotify:(BOOL)a3;
- (void)dealloc;
@end

@implementation _UIHostedWindow

- (_UIHostedWindow)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UIHostedWindow;
  v3 = [(UIWindow *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_wantsTraitPropagation = 0;
    [(UIWindow *)v3 setKeepContextInBackground:1];
    [(UIWindow *)v4 setWindowLevel:-1.79769313e308];
    [(UIWindow *)v4 beginDisablingInterfaceAutorotation];
    if (_UITouchAuthenticationIsEnabledForCurrentProcess())
    {
      [(UIView *)v4 setClipsToBounds:1];
    }

    v5 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _UIHostedWindow;
  [(UIWindow *)&v2 dealloc];
}

- (unsigned)contextID
{
  v2 = [(_UIHostedWindow *)self hostingHandle];
  v3 = [v2 contextID];

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = +[UIKeyShortcutHUDService _existingHUDService];
  [v8 handleTouchEvent:v7];

  v11.receiver = self;
  v11.super_class = _UIHostedWindow;
  v9 = [(UIView *)&v11 hitTest:v7 withEvent:x, y];

  return v9;
}

- (CGRect)_usableBounds
{
  v6.receiver = self;
  v6.super_class = _UIHostedWindow;
  [(UIWindow *)&v6 _usableBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_didCreateRootPresentationController
{
  v7.receiver = self;
  v7.super_class = _UIHostedWindow;
  [(UIWindow *)&v7 _didCreateRootPresentationController];
  v3 = [(UIWindow *)self rootViewController];
  v4 = [v3 conformsToProtocol:&unk_1F00EBE08];

  if (v4)
  {
    v5 = [(UIWindow *)self rootViewController];
    v6 = [(UIWindow *)self _rootPresentationController];
    [v6 _setClientRemotePresentationDelegate:v5];
  }
}

- (void)_registerScrollToTopView:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIHostedWindow;
  v4 = a3;
  [(UIWindow *)&v7 _registerScrollToTopView:v4];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"_UIHostedWindowScrollToTopNotificationView";
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v5 postNotificationName:@"_UIHostedWindowDidRegisterScrollToTopViewNotification" object:self userInfo:v6];
}

- (void)_unregisterScrollToTopView:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIHostedWindow;
  v4 = a3;
  [(UIWindow *)&v7 _unregisterScrollToTopView:v4];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"_UIHostedWindowScrollToTopNotificationView";
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v5 postNotificationName:@"_UIHostedWindowDidUnregisterScrollToTopViewNotification" object:self userInfo:v6];
}

- (void)_setHostTintAdjustmentMode:(int64_t)a3
{
  if (self->_hostTintAdjustmentMode != a3)
  {
    self->_hostTintAdjustmentMode = a3;
    [(UIView *)self _dispatchTintColorVisitorWithReasons:0 installTrackingVisitor:?];
  }
}

- (void)_setHostTintColor:(id)a3
{
  v8 = a3;
  v5 = [(_UIHostedWindow *)self _hostTintColor];
  if (v5 == v8)
  {
  }

  else
  {
    v6 = [(_UIHostedWindow *)self _hostTintColor];
    v7 = [v6 isEqual:v8];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->__hostTintColor, a3);
      [(UIView *)self _dispatchTintColorVisitorWithReasons:0 installTrackingVisitor:?];
    }
  }
}

- (id)_normalInheritedTintColor
{
  v8.receiver = self;
  v8.super_class = _UIHostedWindow;
  v3 = [(UIWindow *)&v8 _normalInheritedTintColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_UIHostedWindow *)self _hostTintColor];
  }

  v6 = v5;

  return v6;
}

- (int64_t)_defaultTintAdjustmentMode
{
  if ([(_UIHostedWindow *)self _hostTintAdjustmentMode])
  {

    return [(_UIHostedWindow *)self _hostTintAdjustmentMode];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = _UIHostedWindow;
    return [(UIView *)&v4 _defaultTintAdjustmentMode];
  }
}

- (void)_configureContextOptions:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _UIHostedWindow;
  [(UIWindow *)&v5 _configureContextOptions:v4];
  [v4 setObject:*MEMORY[0x1E695E4C0] forKey:*MEMORY[0x1E69796A8]];
  if (_UITouchAuthenticationIsEnabledForCurrentProcess())
  {
    [v4 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E69796D8]];
  }
}

- (void)_setFirstResponder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _UIHostedWindow;
  [(UIWindow *)&v6 _setFirstResponder:v4];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->__hostedWindowDelegate);
    [WeakRetained hostedWindow:self didSetFirstResponder:v4];
  }
}

- (id)_systemReferenceAngleProvider
{
  v3 = [(UIWindow *)self rootViewController];
  v4 = [v3 conformsToProtocol:&unk_1F00EBBF0];

  if (v4)
  {
    v5 = [(UIWindow *)self rootViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_systemReferenceAngleMode
{
  v3 = [(_UIHostedWindow *)self _systemReferenceAngleProvider];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _systemReferenceAngleModeFromHost];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UIHostedWindow;
    v5 = [(UIWindow *)&v8 _systemReferenceAngleMode];
  }

  v6 = v5;

  return v6;
}

- (double)_systemReferenceAngle
{
  v3 = [(_UIHostedWindow *)self _systemReferenceAngleProvider];
  v4 = v3;
  if (v3)
  {
    [v3 _systemReferenceAngleFromHost];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UIHostedWindow;
    [(UIWindow *)&v8 _systemReferenceAngle];
  }

  v6 = v5;

  return v6;
}

- (void)_updateStrictTouchVerificationIfNecessary
{
  if (_UITouchAuthenticationIsEnabledForCurrentProcess())
  {
    if (self)
    {
      v3 = *&self->_hostAuditToken.val[4];
      v8 = *self->_hostAuditToken.val;
      v9 = v3;
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v4 = UITouchAuthenticationBundleRecordForAuditToken(&v8);
    v5 = [v4 SDKVersion];
    hostSDKVersion = self->_hostSDKVersion;
    self->_hostSDKVersion = v5;

    v7 = *&self->_hostAuditToken.val[4];
    v8 = *self->_hostAuditToken.val;
    v9 = v7;
    self->_hostIsInternal = UITouchAuthenticationAuditTokenIsPlatformBinary(&v8);
  }
}

- (BOOL)_allowsLinkPreviewInteractionInViewServices
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIWindow *)self screen];
  [v11 bounds];
  v19.origin.x = v12;
  v19.origin.y = v13;
  v19.size.width = v14;
  v19.size.height = v15;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v16 = CGRectContainsRect(v18, v19);

  return v16;
}

- (BOOL)_shouldPropagateTraitCollectionChanges
{
  if (self->_wantsTraitPropagation)
  {
    return 1;
  }

  hostTraitCollection = self->_hostTraitCollection;
  if (!hostTraitCollection)
  {
    return 1;
  }

  v4 = +[UITraitCollection _emptyTraitCollection];
  if ([(UITraitCollection *)hostTraitCollection isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = self->_hostTraitCollection;
    v7 = +[UITraitCollection _defaultTraitCollection];
    v5 = [(UITraitCollection *)v6 isEqual:v7];
  }

  return v5;
}

- (void)_setHostTraitCollection:(id)a3
{
  v4 = [_UISceneHostingTraitCollectionPropagationClientComponent modifiedTraitCollectionForHostTraitCollection:a3];
  v5 = v4;
  if (v4 != self->_hostTraitCollection)
  {
    obj = v4;
    v6 = [(UITraitCollection *)v4 isEqual:?];
    v5 = obj;
    if (!v6)
    {
      objc_storeStrong(&self->_hostTraitCollection, obj);
      [(_UIHostedWindow *)self _setWantsTraitPropagation:1];
      [(UIWindow *)self _updateWindowTraits];
      [(_UIHostedWindow *)self _setWantsTraitPropagation:0];
      v5 = obj;
    }
  }
}

- (void)_updateWindowTraitsAndNotify:(BOOL)a3
{
  v3 = a3;
  if ([(_UIHostedWindow *)self _shouldPropagateTraitCollectionChanges])
  {
    v5.receiver = self;
    v5.super_class = _UIHostedWindow;
    [(UIWindow *)&v5 _updateWindowTraitsAndNotify:v3];
  }
}

- (id)_traitCollectionForSize:(CGSize)a3 parentCollection:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  hostTraitCollection = self->_hostTraitCollection;
  if (!hostTraitCollection)
  {
    v14 = 0;
    goto LABEL_16;
  }

  v11 = +[UITraitCollection _emptyTraitCollection];
  v12 = hostTraitCollection;
  v13 = v11;
  v4 = v13;
  if (v12 == v13)
  {
    v14 = 0;
    v5 = v13;
  }

  else
  {
    if (v13)
    {
      v5 = [(UITraitCollection *)v12 isEqual:v13];

      if (v5)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v15 = self->_hostTraitCollection;
    v16 = +[UITraitCollection _defaultTraitCollection];
    v12 = v15;
    v17 = v16;
    v5 = v17;
    if (v12 != v17)
    {
      if (v12 && v17)
      {
        v18 = [(UITraitCollection *)v12 isEqual:v17];

        if (v18)
        {
          v14 = 1;
          goto LABEL_16;
        }
      }

      else
      {
      }

      v19 = self->_hostTraitCollection;

LABEL_19:
      goto LABEL_20;
    }

    v14 = 1;
  }

LABEL_16:
  v21.receiver = self;
  v21.super_class = _UIHostedWindow;
  v19 = [(UIWindow *)&v21 _traitCollectionForSize:v9 parentCollection:width, height];
  if (v14)
  {
  }

  if (hostTraitCollection)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v19;
}

- (id)_remoteContentParent
{
  v2 = [(UIWindow *)self rootViewController];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (_UIHostedWindowDelegate)_hostedWindowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__hostedWindowDelegate);

  return WeakRetained;
}

- (void)_setHostBundleIdentifier:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 968), a2);
  }
}

@end