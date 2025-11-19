@interface WatchQuickAction
+ (id)quickActionFromSerializedData:(id)a3 error:(id *)a4;
+ (id)serializedDataFromQuickAction:(id)a3 error:(id *)a4;
- (BOOL)canShowOverlays;
- (BOOL)isEqual:(id)a3;
- (CGPoint)overlayInset;
- (NSString)description;
- (UIView)hostingView;
- (UIView)viewToOverlay;
- (WQAHostLifecycleObserver)hostLifecycleObserver;
- (WatchQuickAction)initWithCoder:(id)a3;
- (WatchQuickAction)initWithLocalizedTitle:(id)a3 activationCallback:(id)a4;
- (WatchQuickAction)initWithLocalizedTitle:(id)a3 targetView:(id)a4 activationCallback:(id)a5;
- (WatchQuickAction)initWithLocalizedTitle:(id)a3 targetView:(id)a4 hostingView:(id)a5 activationCallback:(id)a6;
- (WatchQuickActionAnimationHandler)animationHandler;
- (void)_applyOverlayFromView:(id)a3 withHostingView:(id)a4;
- (void)_commonInitLocalizedTitle:(id)a3 quickActionType:(int64_t)a4 targetView:(id)a5 hostingView:(id)a6 withQuickActivationCallback:(id)a7 withQuickActivationEndCallback:(id)a8;
- (void)_updateOverlaysIfNecessary;
- (void)applyBezierPath:(id)a3 withHostingView:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)quickActionHostDidInvalidate;
- (void)setOverlayCornerRadius:(double)a3;
- (void)setOverlayInset:(CGPoint)a3;
- (void)setOverlayTintColor:(id)a3;
- (void)startWithCallback:(id)a3;
- (void)updateLocalizedTitle:(id)a3;
@end

@implementation WatchQuickAction

- (WatchQuickAction)initWithLocalizedTitle:(id)a3 activationCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = WatchQuickAction;
  v8 = [(WatchQuickAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(WatchQuickAction *)v8 _commonInitLocalizedTitle:v6 quickActionType:1 targetView:0 hostingView:0 withQuickActivationCallback:v7 withQuickActivationEndCallback:0];
  }

  return v9;
}

- (WatchQuickAction)initWithLocalizedTitle:(id)a3 targetView:(id)a4 activationCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = WatchQuickAction;
  v11 = [(WatchQuickAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(WatchQuickAction *)v11 _commonInitLocalizedTitle:v8 quickActionType:1 targetView:v9 hostingView:0 withQuickActivationCallback:v10 withQuickActivationEndCallback:0];
  }

  return v12;
}

- (WatchQuickAction)initWithLocalizedTitle:(id)a3 targetView:(id)a4 hostingView:(id)a5 activationCallback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = WatchQuickAction;
  v14 = [(WatchQuickAction *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(WatchQuickAction *)v14 _commonInitLocalizedTitle:v10 quickActionType:1 targetView:v11 hostingView:v12 withQuickActivationCallback:v13 withQuickActivationEndCallback:0];
  }

  return v15;
}

- (void)startWithCallback:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14[0] = @"id";
  v5 = [(WatchQuickAction *)self identifier];
  v14[1] = @"started";
  v15[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[WatchQuickAction started](self, "started")}];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  wqa_dump_call_stack(@"quick action start", v7);

  [(WatchQuickAction *)self _updateOverlaysIfNecessary];
  if ([(WatchQuickAction *)self started])
  {
    if (v4)
    {
      v4[2](v4, 1, 0);
    }
  }

  else
  {
    [(WatchQuickAction *)self setStarted:1];
    v8 = +[WatchQuickActionsServices sharedInstance];
    v13 = self;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [v8 registerQuickActions:v9 startupCallback:v4];

    v10 = [(WatchQuickAction *)self viewToOverlay];

    if (v10)
    {
      v11 = [(WatchQuickAction *)self viewToOverlay];
      [v11 _wqa_registerQuickActionForBoundingPathChanges:self];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = @"id";
  v3 = [(WatchQuickAction *)self identifier];
  v16[1] = @"started";
  v17[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[WatchQuickAction started](self, "started")}];
  v17[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  wqa_dump_call_stack(@"quick action cancel", v5);

  if ([(WatchQuickAction *)self started])
  {
    [(WatchQuickAction *)self setStarted:0];
    v6 = self;
    v7 = [(WatchQuickAction *)v6 identifier];
    if (v7)
    {
      v8 = +[WatchQuickActionsServices sharedInstance];
      v15 = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
      [v8 unregisterQuickActionIdentifiers:v9 startupCallback:0];
    }

    v10 = [(WatchQuickAction *)v6 animationHandler];
    v11 = v10;
    if (v10)
    {
      [v10 quickActionDidBecomeInactive:v6];
    }

    v12 = [(WatchQuickAction *)v6 viewToOverlay];

    if (v12)
    {
      v13 = [(WatchQuickAction *)v6 viewToOverlay];
      [v13 _wqa_unregisterExistingQuickActionForBoundingPathChanges];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateLocalizedTitle:(id)a3
{
  objc_storeStrong(&self->_localizedTitle, a3);

  [(WatchQuickAction *)self _updateOverlaysIfNecessary];
}

- (void)dealloc
{
  v3 = [(WatchQuickAction *)self viewToOverlay];
  [v3 _wqa_unregisterExistingQuickActionForBoundingPathChanges];

  [(WatchQuickAction *)self cancel];
  v4.receiver = self;
  v4.super_class = WatchQuickAction;
  [(WatchQuickAction *)&v4 dealloc];
}

- (void)_commonInitLocalizedTitle:(id)a3 quickActionType:(int64_t)a4 targetView:(id)a5 hostingView:(id)a6 withQuickActivationCallback:(id)a7 withQuickActivationEndCallback:(id)a8
{
  v28[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = MEMORY[0x277CCAD78];
  v18 = a7;
  v19 = [v17 UUID];
  v20 = [v19 UUIDString];
  identifier = self->_identifier;
  self->_identifier = v20;

  objc_storeStrong(&self->_localizedTitle, a3);
  v22 = MEMORY[0x2743D34B0](v18);

  activationCallback = self->_activationCallback;
  self->_activationCallback = v22;

  *&self->_overlayCornerRadius = xmmword_272ABB230;
  self->_overlayInset.y = 2.0;
  [(WatchQuickAction *)self setInternalQuickActionType:a4];
  [(WatchQuickAction *)self setAllowsResizingAnimations:1];
  if (v15)
  {
    [(WatchQuickAction *)self _applyOverlayFromView:v15 withHostingView:v16];
    [v15 setQuickActionHostObserver:self];
  }

  v24 = self->_identifier;
  v27 = @"id";
  v28[0] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  wqa_dump_call_stack(@"quick action init", v25);

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WatchQuickAction *)v4 identifier];
      v6 = [(WatchQuickAction *)self identifier];
      v7 = [v5 isEqualToString:v6];
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
  v3 = [(WatchQuickAction *)self hostingView];

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(WatchQuickAction *)self localizedTitle];
  if (v3)
  {
    v8 = [(WatchQuickAction *)self hostingView];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(WatchQuickAction *)self hostingView];
    v12 = [(WatchQuickAction *)self identifier];
    v13 = [v4 stringWithFormat:@"[%@<%p>] title=%@, hostingView=[%@<%p>], id=%@", v6, self, v7, v10, v11, v12];
  }

  else
  {
    v8 = [(WatchQuickAction *)self identifier];
    v13 = [v4 stringWithFormat:@"[%@<%p>] title=%@, id=%@", v6, self, v7, v8];
  }

  return v13;
}

- (void)setOverlayTintColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_overlayTintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_overlayTintColor, a3);
    [(WatchQuickAction *)self _updateOverlaysIfNecessary];
  }
}

- (void)setOverlayCornerRadius:(double)a3
{
  if (self->_overlayCornerRadius != a3)
  {
    self->_overlayCornerRadius = a3;
    [(WatchQuickAction *)self _updateOverlaysIfNecessary];
  }
}

- (void)setOverlayInset:(CGPoint)a3
{
  if (self->_overlayInset.x != a3.x || self->_overlayInset.y != a3.y)
  {
    self->_overlayInset = a3;
    [(WatchQuickAction *)self _updateOverlaysIfNecessary];
  }
}

- (void)_updateOverlaysIfNecessary
{
  v3 = [(WatchQuickAction *)self viewToOverlay];

  if (v3)
  {
    v5 = [(WatchQuickAction *)self viewToOverlay];
    v4 = [(WatchQuickAction *)self hostingView];
    [(WatchQuickAction *)self _applyOverlayFromView:v5 withHostingView:v4];
  }
}

- (void)_applyOverlayFromView:(id)a3 withHostingView:(id)a4
{
  v47 = a3;
  v6 = a4;
  [(WatchQuickAction *)self setViewToOverlay:v47];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v47;
  }

  v8 = v7;
  v9 = [v47 parentFocusEnvironment];
  v10 = [v9 focusItemContainer];
  v11 = [v10 coordinateSpace];

  [v47 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v8 coordinateSpace];
  [v11 convertRect:v20 toCoordinateSpace:{v13, v15, v17, v19}];
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
  v37 = [v47 layer];
  [(WatchQuickAction *)self overlayCornerRadius];
  if (v38 >= 0.0)
  {
    [(WatchQuickAction *)self overlayCornerRadius];
    goto LABEL_8;
  }

  [v37 cornerRadius];
  v39 = 8.0;
  if (v40 > 0.0)
  {
    [v37 cornerRadius];
LABEL_8:
    v39 = v41;
  }

  [v37 cornerRadius];
  if (v42 > 0.0 && ([v37 cornerCurve], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "isEqualToString:", *MEMORY[0x277CDA138]), v43, v44))
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

- (void)applyBezierPath:(id)a3 withHostingView:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WatchQuickAction *)self setVisualsToken:[(WatchQuickAction *)self visualsToken]+ 1];
  [(WatchQuickAction *)self setHostingView:v6];

  [(WatchQuickAction *)self setPath:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WatchQuickAction *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  [v4 encodeInteger:-[WatchQuickAction internalQuickActionType](self forKey:{"internalQuickActionType"), @"quickActionType"}];
  v6 = [(WatchQuickAction *)self localizedTitle];
  [v4 encodeObject:v6 forKey:@"localizedTitle"];
}

- (WatchQuickAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WatchQuickAction;
  v5 = [(WatchQuickAction *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_internalQuickActionType = [v4 decodeIntegerForKey:@"quickActionType"];
    v8 = [v4 decodeObjectForKey:@"localizedTitle"];
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

+ (id)serializedDataFromQuickAction:(id)a3 error:(id *)a4
{
  v8 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v8];
  v6 = v8;
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return v5;
}

+ (id)quickActionFromSerializedData:(id)a3 error:(id *)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
  {
    v6 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v8 = [v6 setWithArray:v7];

    v16 = 0;
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v5 error:&v16];
    v10 = v16;
    v11 = v10;
    if (a4)
    {
      v12 = v10;
      *a4 = v11;
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
  v3 = [(WatchQuickAction *)self hostLifecycleObserver];
  [v3 quickActionHostInvalidated:self];
}

- (BOOL)canShowOverlays
{
  v3 = [(WatchQuickAction *)self quickActionHostingView];
  if (v3)
  {
    v4 = [(WatchQuickAction *)self quickActionPrimaryView];
    if (v4)
    {
      v5 = [(WatchQuickAction *)self quickActionPath];
      v6 = v5 != 0;
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