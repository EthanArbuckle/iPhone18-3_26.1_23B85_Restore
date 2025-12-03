@interface _UIHostedWindow
- (BOOL)_allowsLinkPreviewInteractionInViewServices;
- (BOOL)_shouldPropagateTraitCollectionChanges;
- (CGRect)_usableBounds;
- (_UIHostedWindow)initWithFrame:(CGRect)frame;
- (_UIHostedWindowDelegate)_hostedWindowDelegate;
- (double)_systemReferenceAngle;
- (id)_normalInheritedTintColor;
- (id)_remoteContentParent;
- (id)_systemReferenceAngleProvider;
- (id)_traitCollectionForSize:(CGSize)size parentCollection:(id)collection;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)_defaultTintAdjustmentMode;
- (unint64_t)_systemReferenceAngleMode;
- (unsigned)contextID;
- (void)_configureContextOptions:(id)options;
- (void)_didCreateRootPresentationController;
- (void)_registerScrollToTopView:(id)view;
- (void)_setFirstResponder:(id)responder;
- (void)_setHostBundleIdentifier:(uint64_t)identifier;
- (void)_setHostTintAdjustmentMode:(int64_t)mode;
- (void)_setHostTintColor:(id)color;
- (void)_setHostTraitCollection:(id)collection;
- (void)_unregisterScrollToTopView:(id)view;
- (void)_updateStrictTouchVerificationIfNecessary;
- (void)_updateWindowTraitsAndNotify:(BOOL)notify;
- (void)dealloc;
@end

@implementation _UIHostedWindow

- (_UIHostedWindow)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UIHostedWindow;
  v3 = [(UIWindow *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  hostingHandle = [(_UIHostedWindow *)self hostingHandle];
  contextID = [hostingHandle contextID];

  return contextID;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = +[UIKeyShortcutHUDService _existingHUDService];
  [v8 handleTouchEvent:eventCopy];

  v11.receiver = self;
  v11.super_class = _UIHostedWindow;
  v9 = [(UIView *)&v11 hitTest:eventCopy withEvent:x, y];

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
  rootViewController = [(UIWindow *)self rootViewController];
  v4 = [rootViewController conformsToProtocol:&unk_1F00EBE08];

  if (v4)
  {
    rootViewController2 = [(UIWindow *)self rootViewController];
    _rootPresentationController = [(UIWindow *)self _rootPresentationController];
    [_rootPresentationController _setClientRemotePresentationDelegate:rootViewController2];
  }
}

- (void)_registerScrollToTopView:(id)view
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIHostedWindow;
  viewCopy = view;
  [(UIWindow *)&v7 _registerScrollToTopView:viewCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"_UIHostedWindowScrollToTopNotificationView";
  v9[0] = viewCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"_UIHostedWindowDidRegisterScrollToTopViewNotification" object:self userInfo:v6];
}

- (void)_unregisterScrollToTopView:(id)view
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIHostedWindow;
  viewCopy = view;
  [(UIWindow *)&v7 _unregisterScrollToTopView:viewCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"_UIHostedWindowScrollToTopNotificationView";
  v9[0] = viewCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"_UIHostedWindowDidUnregisterScrollToTopViewNotification" object:self userInfo:v6];
}

- (void)_setHostTintAdjustmentMode:(int64_t)mode
{
  if (self->_hostTintAdjustmentMode != mode)
  {
    self->_hostTintAdjustmentMode = mode;
    [(UIView *)self _dispatchTintColorVisitorWithReasons:0 installTrackingVisitor:?];
  }
}

- (void)_setHostTintColor:(id)color
{
  colorCopy = color;
  _hostTintColor = [(_UIHostedWindow *)self _hostTintColor];
  if (_hostTintColor == colorCopy)
  {
  }

  else
  {
    _hostTintColor2 = [(_UIHostedWindow *)self _hostTintColor];
    v7 = [_hostTintColor2 isEqual:colorCopy];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->__hostTintColor, color);
      [(UIView *)self _dispatchTintColorVisitorWithReasons:0 installTrackingVisitor:?];
    }
  }
}

- (id)_normalInheritedTintColor
{
  v8.receiver = self;
  v8.super_class = _UIHostedWindow;
  _normalInheritedTintColor = [(UIWindow *)&v8 _normalInheritedTintColor];
  v4 = _normalInheritedTintColor;
  if (_normalInheritedTintColor)
  {
    _hostTintColor = _normalInheritedTintColor;
  }

  else
  {
    _hostTintColor = [(_UIHostedWindow *)self _hostTintColor];
  }

  v6 = _hostTintColor;

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

- (void)_configureContextOptions:(id)options
{
  optionsCopy = options;
  v5.receiver = self;
  v5.super_class = _UIHostedWindow;
  [(UIWindow *)&v5 _configureContextOptions:optionsCopy];
  [optionsCopy setObject:*MEMORY[0x1E695E4C0] forKey:*MEMORY[0x1E69796A8]];
  if (_UITouchAuthenticationIsEnabledForCurrentProcess())
  {
    [optionsCopy setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E69796D8]];
  }
}

- (void)_setFirstResponder:(id)responder
{
  responderCopy = responder;
  v6.receiver = self;
  v6.super_class = _UIHostedWindow;
  [(UIWindow *)&v6 _setFirstResponder:responderCopy];
  if (responderCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->__hostedWindowDelegate);
    [WeakRetained hostedWindow:self didSetFirstResponder:responderCopy];
  }
}

- (id)_systemReferenceAngleProvider
{
  rootViewController = [(UIWindow *)self rootViewController];
  v4 = [rootViewController conformsToProtocol:&unk_1F00EBBF0];

  if (v4)
  {
    rootViewController2 = [(UIWindow *)self rootViewController];
  }

  else
  {
    rootViewController2 = 0;
  }

  return rootViewController2;
}

- (unint64_t)_systemReferenceAngleMode
{
  _systemReferenceAngleProvider = [(_UIHostedWindow *)self _systemReferenceAngleProvider];
  v4 = _systemReferenceAngleProvider;
  if (_systemReferenceAngleProvider)
  {
    _systemReferenceAngleModeFromHost = [_systemReferenceAngleProvider _systemReferenceAngleModeFromHost];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UIHostedWindow;
    _systemReferenceAngleModeFromHost = [(UIWindow *)&v8 _systemReferenceAngleMode];
  }

  v6 = _systemReferenceAngleModeFromHost;

  return v6;
}

- (double)_systemReferenceAngle
{
  _systemReferenceAngleProvider = [(_UIHostedWindow *)self _systemReferenceAngleProvider];
  v4 = _systemReferenceAngleProvider;
  if (_systemReferenceAngleProvider)
  {
    [_systemReferenceAngleProvider _systemReferenceAngleFromHost];
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
    sDKVersion = [v4 SDKVersion];
    hostSDKVersion = self->_hostSDKVersion;
    self->_hostSDKVersion = sDKVersion;

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
  screen = [(UIWindow *)self screen];
  [screen bounds];
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

- (void)_setHostTraitCollection:(id)collection
{
  v4 = [_UISceneHostingTraitCollectionPropagationClientComponent modifiedTraitCollectionForHostTraitCollection:collection];
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

- (void)_updateWindowTraitsAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  if ([(_UIHostedWindow *)self _shouldPropagateTraitCollectionChanges])
  {
    v5.receiver = self;
    v5.super_class = _UIHostedWindow;
    [(UIWindow *)&v5 _updateWindowTraitsAndNotify:notifyCopy];
  }
}

- (id)_traitCollectionForSize:(CGSize)size parentCollection:(id)collection
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
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

      height = self->_hostTraitCollection;

LABEL_19:
      goto LABEL_20;
    }

    v14 = 1;
  }

LABEL_16:
  v21.receiver = self;
  v21.super_class = _UIHostedWindow;
  height = [(UIWindow *)&v21 _traitCollectionForSize:collectionCopy parentCollection:width, height];
  if (v14)
  {
  }

  if (hostTraitCollection)
  {
    goto LABEL_19;
  }

LABEL_20:

  return height;
}

- (id)_remoteContentParent
{
  rootViewController = [(UIWindow *)self rootViewController];
  v3 = objc_opt_class();
  v4 = rootViewController;
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

- (void)_setHostBundleIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    objc_storeStrong((identifier + 968), a2);
  }
}

@end