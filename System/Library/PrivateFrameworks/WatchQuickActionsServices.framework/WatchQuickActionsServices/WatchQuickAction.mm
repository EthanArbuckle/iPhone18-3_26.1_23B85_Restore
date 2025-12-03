@interface WatchQuickAction
+ (id)quickActionFromSerializedData:(id)data error:(id *)error;
+ (id)serializedDataFromQuickAction:(id)action error:(id *)error;
- (BOOL)canShowOverlays;
- (BOOL)isEqual:(id)equal;
- (CGPoint)overlayInset;
- (NSString)description;
- (UIView)hostingView;
- (UIView)viewToOverlay;
- (WQAHostLifecycleObserver)hostLifecycleObserver;
- (WatchQuickAction)initWithCoder:(id)coder;
- (WatchQuickAction)initWithLocalizedTitle:(id)title activationCallback:(id)callback;
- (WatchQuickAction)initWithLocalizedTitle:(id)title targetView:(id)view activationCallback:(id)callback;
- (WatchQuickAction)initWithLocalizedTitle:(id)title targetView:(id)view hostingView:(id)hostingView activationCallback:(id)callback;
- (WatchQuickActionAnimationHandler)animationHandler;
- (void)_applyOverlayFromView:(id)view withHostingView:(id)hostingView;
- (void)_commonInitLocalizedTitle:(id)title quickActionType:(int64_t)type targetView:(id)view hostingView:(id)hostingView withQuickActivationCallback:(id)callback withQuickActivationEndCallback:(id)endCallback;
- (void)_updateOverlaysIfNecessary;
- (void)applyBezierPath:(id)path withHostingView:(id)view;
- (void)cancel;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)quickActionHostDidInvalidate;
- (void)setOverlayCornerRadius:(double)radius;
- (void)setOverlayInset:(CGPoint)inset;
- (void)setOverlayTintColor:(id)color;
- (void)startWithCallback:(id)callback;
- (void)updateLocalizedTitle:(id)title;
@end

@implementation WatchQuickAction

- (WatchQuickAction)initWithLocalizedTitle:(id)title activationCallback:(id)callback
{
  titleCopy = title;
  callbackCopy = callback;
  v11.receiver = self;
  v11.super_class = WatchQuickAction;
  v8 = [(WatchQuickAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(WatchQuickAction *)v8 _commonInitLocalizedTitle:titleCopy quickActionType:1 targetView:0 hostingView:0 withQuickActivationCallback:callbackCopy withQuickActivationEndCallback:0];
  }

  return v9;
}

- (WatchQuickAction)initWithLocalizedTitle:(id)title targetView:(id)view activationCallback:(id)callback
{
  titleCopy = title;
  viewCopy = view;
  callbackCopy = callback;
  v14.receiver = self;
  v14.super_class = WatchQuickAction;
  v11 = [(WatchQuickAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(WatchQuickAction *)v11 _commonInitLocalizedTitle:titleCopy quickActionType:1 targetView:viewCopy hostingView:0 withQuickActivationCallback:callbackCopy withQuickActivationEndCallback:0];
  }

  return v12;
}

- (WatchQuickAction)initWithLocalizedTitle:(id)title targetView:(id)view hostingView:(id)hostingView activationCallback:(id)callback
{
  titleCopy = title;
  viewCopy = view;
  hostingViewCopy = hostingView;
  callbackCopy = callback;
  v17.receiver = self;
  v17.super_class = WatchQuickAction;
  v14 = [(WatchQuickAction *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(WatchQuickAction *)v14 _commonInitLocalizedTitle:titleCopy quickActionType:1 targetView:viewCopy hostingView:hostingViewCopy withQuickActivationCallback:callbackCopy withQuickActivationEndCallback:0];
  }

  return v15;
}

- (void)startWithCallback:(id)callback
{
  v15[2] = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v14[0] = @"id";
  identifier = [(WatchQuickAction *)self identifier];
  v14[1] = @"started";
  v15[0] = identifier;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[WatchQuickAction started](self, "started")}];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  wqa_dump_call_stack(@"quick action start", v7);

  [(WatchQuickAction *)self _updateOverlaysIfNecessary];
  if ([(WatchQuickAction *)self started])
  {
    if (callbackCopy)
    {
      callbackCopy[2](callbackCopy, 1, 0);
    }
  }

  else
  {
    [(WatchQuickAction *)self setStarted:1];
    v8 = +[WatchQuickActionsServices sharedInstance];
    selfCopy = self;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
    [v8 registerQuickActions:v9 startupCallback:callbackCopy];

    viewToOverlay = [(WatchQuickAction *)self viewToOverlay];

    if (viewToOverlay)
    {
      viewToOverlay2 = [(WatchQuickAction *)self viewToOverlay];
      [viewToOverlay2 _wqa_registerQuickActionForBoundingPathChanges:self];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = @"id";
  identifier = [(WatchQuickAction *)self identifier];
  v16[1] = @"started";
  v17[0] = identifier;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[WatchQuickAction started](self, "started")}];
  v17[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  wqa_dump_call_stack(@"quick action cancel", v5);

  if ([(WatchQuickAction *)self started])
  {
    [(WatchQuickAction *)self setStarted:0];
    selfCopy = self;
    identifier2 = [(WatchQuickAction *)selfCopy identifier];
    if (identifier2)
    {
      v8 = +[WatchQuickActionsServices sharedInstance];
      v15 = identifier2;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
      [v8 unregisterQuickActionIdentifiers:v9 startupCallback:0];
    }

    animationHandler = [(WatchQuickAction *)selfCopy animationHandler];
    v11 = animationHandler;
    if (animationHandler)
    {
      [animationHandler quickActionDidBecomeInactive:selfCopy];
    }

    viewToOverlay = [(WatchQuickAction *)selfCopy viewToOverlay];

    if (viewToOverlay)
    {
      viewToOverlay2 = [(WatchQuickAction *)selfCopy viewToOverlay];
      [viewToOverlay2 _wqa_unregisterExistingQuickActionForBoundingPathChanges];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateLocalizedTitle:(id)title
{
  objc_storeStrong(&self->_localizedTitle, title);

  [(WatchQuickAction *)self _updateOverlaysIfNecessary];
}

- (void)dealloc
{
  viewToOverlay = [(WatchQuickAction *)self viewToOverlay];
  [viewToOverlay _wqa_unregisterExistingQuickActionForBoundingPathChanges];

  [(WatchQuickAction *)self cancel];
  v4.receiver = self;
  v4.super_class = WatchQuickAction;
  [(WatchQuickAction *)&v4 dealloc];
}

- (void)_commonInitLocalizedTitle:(id)title quickActionType:(int64_t)type targetView:(id)view hostingView:(id)hostingView withQuickActivationCallback:(id)callback withQuickActivationEndCallback:(id)endCallback
{
  v28[1] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  viewCopy = view;
  hostingViewCopy = hostingView;
  v17 = MEMORY[0x277CCAD78];
  callbackCopy = callback;
  uUID = [v17 UUID];
  uUIDString = [uUID UUIDString];
  identifier = self->_identifier;
  self->_identifier = uUIDString;

  objc_storeStrong(&self->_localizedTitle, title);
  v22 = MEMORY[0x2743D34B0](callbackCopy);

  activationCallback = self->_activationCallback;
  self->_activationCallback = v22;

  *&self->_overlayCornerRadius = xmmword_272ABB230;
  self->_overlayInset.y = 2.0;
  [(WatchQuickAction *)self setInternalQuickActionType:type];
  [(WatchQuickAction *)self setAllowsResizingAnimations:1];
  if (viewCopy)
  {
    [(WatchQuickAction *)self _applyOverlayFromView:viewCopy withHostingView:hostingViewCopy];
    [viewCopy setQuickActionHostObserver:self];
  }

  v24 = self->_identifier;
  v27 = @"id";
  v28[0] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  wqa_dump_call_stack(@"quick action init", v25);

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(WatchQuickAction *)equalCopy identifier];
      identifier2 = [(WatchQuickAction *)self identifier];
      v7 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)description
{
  hostingView = [(WatchQuickAction *)self hostingView];

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  localizedTitle = [(WatchQuickAction *)self localizedTitle];
  if (hostingView)
  {
    hostingView2 = [(WatchQuickAction *)self hostingView];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    hostingView3 = [(WatchQuickAction *)self hostingView];
    identifier = [(WatchQuickAction *)self identifier];
    v13 = [v4 stringWithFormat:@"[%@<%p>] title=%@, hostingView=[%@<%p>], id=%@", v6, self, localizedTitle, v10, hostingView3, identifier];
  }

  else
  {
    hostingView2 = [(WatchQuickAction *)self identifier];
    v13 = [v4 stringWithFormat:@"[%@<%p>] title=%@, id=%@", v6, self, localizedTitle, hostingView2];
  }

  return v13;
}

- (void)setOverlayTintColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_overlayTintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_overlayTintColor, color);
    [(WatchQuickAction *)self _updateOverlaysIfNecessary];
  }
}

- (void)setOverlayCornerRadius:(double)radius
{
  if (self->_overlayCornerRadius != radius)
  {
    self->_overlayCornerRadius = radius;
    [(WatchQuickAction *)self _updateOverlaysIfNecessary];
  }
}

- (void)setOverlayInset:(CGPoint)inset
{
  if (self->_overlayInset.x != inset.x || self->_overlayInset.y != inset.y)
  {
    self->_overlayInset = inset;
    [(WatchQuickAction *)self _updateOverlaysIfNecessary];
  }
}

- (void)_updateOverlaysIfNecessary
{
  viewToOverlay = [(WatchQuickAction *)self viewToOverlay];

  if (viewToOverlay)
  {
    viewToOverlay2 = [(WatchQuickAction *)self viewToOverlay];
    hostingView = [(WatchQuickAction *)self hostingView];
    [(WatchQuickAction *)self _applyOverlayFromView:viewToOverlay2 withHostingView:hostingView];
  }
}

- (void)_applyOverlayFromView:(id)view withHostingView:(id)hostingView
{
  viewCopy = view;
  hostingViewCopy = hostingView;
  [(WatchQuickAction *)self setViewToOverlay:viewCopy];
  if (hostingViewCopy)
  {
    v7 = hostingViewCopy;
  }

  else
  {
    v7 = viewCopy;
  }

  v8 = v7;
  parentFocusEnvironment = [viewCopy parentFocusEnvironment];
  focusItemContainer = [parentFocusEnvironment focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];

  [viewCopy frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  coordinateSpace2 = [v8 coordinateSpace];
  [coordinateSpace convertRect:coordinateSpace2 toCoordinateSpace:{v13, v15, v17, v19}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [(WatchQuickAction *)self overlayInset];
  v30 = v29;
  [(WatchQuickAction *)self overlayInset];
  v32 = v31;
  v49.origin.x = v22;
  v49.origin.y = v24;
  v49.size.width = v26;
  v49.size.height = v28;
  v50 = CGRectInset(v49, v30, v32);
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  layer = [viewCopy layer];
  [(WatchQuickAction *)self overlayCornerRadius];
  if (v38 >= 0.0)
  {
    [(WatchQuickAction *)self overlayCornerRadius];
    goto LABEL_8;
  }

  [layer cornerRadius];
  v39 = 8.0;
  if (v40 > 0.0)
  {
    [layer cornerRadius];
LABEL_8:
    v39 = v41;
  }

  [layer cornerRadius];
  if (v42 > 0.0 && ([layer cornerCurve], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "isEqualToString:", *MEMORY[0x277CDA138]), v43, v44))
  {
    v45 = [MEMORY[0x277D75208] _bezierPathWithPillRect:x cornerRadius:{y, width, height, v39}];
  }

  else
  {
    v45 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v39}];
  }

  v46 = v45;
  [(WatchQuickAction *)self applyBezierPath:v45 withHostingView:v8];
}

- (void)applyBezierPath:(id)path withHostingView:(id)view
{
  viewCopy = view;
  pathCopy = path;
  [(WatchQuickAction *)self setVisualsToken:[(WatchQuickAction *)self visualsToken]+ 1];
  [(WatchQuickAction *)self setHostingView:viewCopy];

  [(WatchQuickAction *)self setPath:pathCopy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WatchQuickAction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[WatchQuickAction internalQuickActionType](self forKey:{"internalQuickActionType"), @"quickActionType"}];
  localizedTitle = [(WatchQuickAction *)self localizedTitle];
  [coderCopy encodeObject:localizedTitle forKey:@"localizedTitle"];
}

- (WatchQuickAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WatchQuickAction;
  v5 = [(WatchQuickAction *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_internalQuickActionType = [coderCopy decodeIntegerForKey:@"quickActionType"];
    v8 = [coderCopy decodeObjectForKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v8;
  }

  return v5;
}

- (WatchQuickActionAnimationHandler)animationHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_animationHandler);

  return WeakRetained;
}

- (UIView)viewToOverlay
{
  WeakRetained = objc_loadWeakRetained(&self->_viewToOverlay);

  return WeakRetained;
}

- (UIView)hostingView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingView);

  return WeakRetained;
}

- (WQAHostLifecycleObserver)hostLifecycleObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_hostLifecycleObserver);

  return WeakRetained;
}

- (CGPoint)overlayInset
{
  x = self->_overlayInset.x;
  y = self->_overlayInset.y;
  result.y = y;
  result.x = x;
  return result;
}

+ (id)serializedDataFromQuickAction:(id)action error:(id *)error
{
  v8 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:action requiringSecureCoding:1 error:&v8];
  v6 = v8;
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return v5;
}

+ (id)quickActionFromSerializedData:(id)data error:(id *)error
{
  v17[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [dataCopy length])
  {
    v6 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v8 = [v6 setWithArray:v7];

    v16 = 0;
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:dataCopy error:&v16];
    v10 = v16;
    v11 = v10;
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)quickActionHostDidInvalidate
{
  hostLifecycleObserver = [(WatchQuickAction *)self hostLifecycleObserver];
  [hostLifecycleObserver quickActionHostInvalidated:self];
}

- (BOOL)canShowOverlays
{
  quickActionHostingView = [(WatchQuickAction *)self quickActionHostingView];
  if (quickActionHostingView)
  {
    quickActionPrimaryView = [(WatchQuickAction *)self quickActionPrimaryView];
    if (quickActionPrimaryView)
    {
      quickActionPath = [(WatchQuickAction *)self quickActionPath];
      v6 = quickActionPath != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end