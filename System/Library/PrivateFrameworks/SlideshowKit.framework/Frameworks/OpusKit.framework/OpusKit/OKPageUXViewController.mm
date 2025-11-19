@interface OKPageUXViewController
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (BOOL)hasWidgetFocused;
- (BOOL)prepareForDisplay;
- (BOOL)prepareForUnload;
- (BOOL)prepareForWarmup;
- (CGPoint)convertPointWithMotionAndParallax:(CGPoint)a3 andZPosition:(double)a4;
- (CGPoint)lastParallaxOffset;
- (CGPoint)parallaxWithOffsetX:(double)a3 offsetY:(double)a4 zPosition:(double)a5;
- (CGRect)calculateVisibleRectForWidget:(id)a3;
- (CGRect)calculateVisibleRectForWidgetRect:(CGRect)a3 withParallax:(double)a4;
- (id)_preparseLayoutString:(id)a3 targetView:(id *)a4 anchorView:(id *)a5;
- (id)_remoteWidgetsForWidgetView:(id)a3 keyPath:(id)a4;
- (id)addWidgetViewWithTemplateName:(id)a3 name:(id)a4 andSettings:(id)a5;
- (id)allKeysForDictionaryProxy:(id)a3;
- (id)currentRemoteWidgets;
- (id)dictionaryProxy:(id)a3 objectForKey:(id)a4;
- (id)mediaURLs;
- (id)newWidgetViewWithTemplateName:(id)a3 name:(id)a4 andSettings:(id)a5;
- (id)pageViewZonesInRect:(CGRect)a3;
- (id)settingObjectForKey:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (id)visibleWidgets;
- (id)widgetViewForName:(id)a3 recursively:(BOOL)a4;
- (id)widgetViewResolution:(id)a3;
- (id)widgetViewsInRect:(CGRect)a3;
- (unint64_t)countOfDictionaryProxy:(id)a3;
- (void)addWidgetViewInPageViewZones:(id)a3;
- (void)applySettings;
- (void)collisionBehavior:(id)a3 beganContactForItem:(id)a4 withItem:(id)a5 atPoint:(CGPoint)a6;
- (void)commonInit;
- (void)dealloc;
- (void)instantPause;
- (void)instantResume;
- (void)layoutDidChange;
- (void)networkStatusDidChange:(int64_t)a3;
- (void)prepareAllWidgets;
- (void)prepareForRefresh;
- (void)prepareForReload;
- (void)prepareWidgetsInRect:(CGRect)a3;
- (void)reloadDynamics;
- (void)reloadPageViewZones;
- (void)reloadPageViewZonesForSubwidgets:(id)a3 withParallax:(double)a4;
- (void)reloadPageViewZonesWithSize:(CGSize)a3;
- (void)removeWidgetView:(id)a3;
- (void)removeWidgetViewInPageViewZones:(id)a3;
- (void)resetDynamics;
- (void)resolutionDidChange;
- (void)setSettingDynamicsCollisionConfinementEnabled:(BOOL)a3;
- (void)setSettingDynamicsEnabled:(BOOL)a3;
- (void)setSettingDynamicsGravityAngle:(float)a3;
- (void)setSettingDynamicsGravityEnabled:(BOOL)a3;
- (void)setSettingDynamicsGravityMagnitude:(float)a3;
- (void)setSettingDynamicsGravityMotionDriven:(BOOL)a3;
- (void)setSettingDynamicsPushBehaviors:(id)a3;
- (void)setSettingParallaxEnabled:(BOOL)a3;
- (void)setSettingParallaxRatioX:(double)a3;
- (void)setSettingParallaxRatioY:(double)a3;
- (void)updateDynamics;
- (void)updateLayoutSteps;
- (void)updateMotion;
- (void)updateMotionForWidgetView:(id)a3;
- (void)updateParallax;
- (void)updateParallaxForWidgetView:(id)a3;
- (void)updateParallaxWithOffsetX:(double)a3 offsetY:(double)a4;
- (void)updateWidgetViewInPageViewZones:(id)a3;
- (void)updateWithMotionTiltRotationX:(double)a3 tiltRotationY:(double)a4 tiltRotationZ:(double)a5;
- (void)viewDidLoad;
- (void)widgetView:(id)a3 addHighSpeedOperations:(id)a4 andConsumingOperations:(id)a5;
- (void)widgetViewCancelAllOperations:(id)a3;
- (void)widgetViewCancelAllOperations:(id)a3 withIdentifier:(id)a4;
- (void)widgetViewsInDisplayRect:(CGRect)a3 displaySet:(id)a4 andWarmupRect:(CGRect)a5 warmupSet:(id)a6;
@end

@implementation OKPageUXViewController

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = OKPageUXViewController;
  [(OKPageViewController *)&v3 commonInit];
  self->_widgetViews = 0;
  self->_pageViewZones = 0;
  self->_newWidgetViews = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->_parallaxEnabled = 0;
  self->_parallaxRatioX = 0.00166666671;
  self->_parallaxRatioY = 0.00166666671;
  self->_lastParallaxOffset = *MEMORY[0x277CBF348];
  self->_dynamicsEnabled = 0;
  self->_dynamicsAnimator = 0;
  self->_dynamicsGravityBehavior = 0;
  self->_dynamicsGravityBehaviorMotionDriven = 0;
  self->_dynamicsPageCollisionBehavior = 0;
}

- (void)dealloc
{
  widgetViews = self->_widgetViews;
  if (widgetViews)
  {

    self->_widgetViews = 0;
  }

  newWidgetViews = self->_newWidgetViews;
  if (newWidgetViews)
  {

    self->_newWidgetViews = 0;
  }

  pageViewZones = self->_pageViewZones;
  if (pageViewZones)
  {

    self->_pageViewZones = 0;
  }

  pageView = self->_pageView;
  if (pageView)
  {

    self->_pageView = 0;
  }

  dynamicsAnimator = self->_dynamicsAnimator;
  if (dynamicsAnimator)
  {
    [(UIDynamicAnimator *)dynamicsAnimator removeAllBehaviors];

    self->_dynamicsAnimator = 0;
  }

  dynamicsGravityBehavior = self->_dynamicsGravityBehavior;
  if (dynamicsGravityBehavior)
  {
    [-[UIGravityBehavior dynamicAnimator](dynamicsGravityBehavior "dynamicAnimator")];

    self->_dynamicsGravityBehavior = 0;
  }

  dynamicsPageCollisionBehavior = self->_dynamicsPageCollisionBehavior;
  if (dynamicsPageCollisionBehavior)
  {
    [-[UICollisionBehavior dynamicAnimator](dynamicsPageCollisionBehavior "dynamicAnimator")];

    self->_dynamicsPageCollisionBehavior = 0;
  }

  dynamicsWidgetCollisionBehaviors = self->_dynamicsWidgetCollisionBehaviors;
  if (dynamicsWidgetCollisionBehaviors)
  {

    self->_dynamicsWidgetCollisionBehaviors = 0;
  }

  dynamicsPushBehaviors = self->_dynamicsPushBehaviors;
  if (dynamicsPushBehaviors)
  {

    self->_dynamicsPushBehaviors = 0;
  }

  v12.receiver = self;
  v12.super_class = OKPageUXViewController;
  [(OKPageViewController *)&v12 dealloc];
}

- (void)viewDidLoad
{
  v31 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = OKPageUXViewController;
  [(OFUIViewController *)&v28 viewDidLoad];
  if ([[(OKPresentationCanvas *)[(OKPageViewController *)self page] presentation] enableDisplayDebugging])
  {
    [objc_msgSend(-[OKPageUXViewController view](self "view")];
    [objc_msgSend(-[OKPageUXViewController view](self "view")];
    v3 = [-[OKPageUXViewController view](self "view")];
    LODWORD(v4) = *"33s?";
    [v3 setOpacity:v4];
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [(OKPresentationPage *)[(OKPageViewController *)self page] widgets];
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] widgetViewFromWidget:*(*(&v24 + 1) + 8 * i)];
        if (v11)
        {
          v12 = v11;
          [v11 setPage:{-[OKPageViewController page](self, "page")}];
          [(NSMutableArray *)v5 addObject:v12];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
  }

  widgetViews = self->_widgetViews;
  if (widgetViews)
  {
  }

  self->_widgetViews = v5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [(NSArray *)[(OKPageUXViewController *)self widgetViews] reverseObjectEnumerator];
  v15 = [(NSEnumerator *)v14 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v20 + 1) + 8 * j);
        [v19 setDelegate:self];
        [-[OKPageUXViewController view](self "view")];
      }

      v16 = [(NSEnumerator *)v14 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v16);
  }

  if ([(OKPresentationPage *)[(OKPageViewController *)self page] navigator])
  {
    -[OKPageViewController setSubNavigatorViewController:](self, "setSubNavigatorViewController:", -[OKPresentationViewControllerProxy navigatorViewControllerForNavigatorWithName:](-[OKPageViewController presentationViewController](self, "presentationViewController"), "navigatorViewControllerForNavigatorWithName:", [-[OKPresentationPage navigator](-[OKPageViewController page](self "page")]));
    if ([(OKPageViewController *)self subNavigatorViewController])
    {
      [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] setParentPageViewController:self];
      [(OKPageUXViewController *)self addChildViewControllerInstantly:[(OKPageViewController *)self subNavigatorViewController]];
    }
  }
}

- (void)networkStatusDidChange:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  widgetViews = self->_widgetViews;
  v6 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(widgetViews);
        }

        [*(*(&v10 + 1) + 8 * i) networkStatusDidChange:a3];
      }

      v7 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] networkStatusDidChange:a3];
}

- (void)resolutionDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  [(OKPageViewController *)self setNeedsApplySettings];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  widgetViews = self->_widgetViews;
  v4 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(widgetViews);
        }

        [*(*(&v8 + 1) + 8 * i) setNeedsApplySettings];
      }

      v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  if ([(OKPageViewController *)self prepareMode]== 1 || [(OKPageViewController *)self prepareMode]== 2)
  {
    [(OKPageViewController *)self applySettingsIfNeeded];
  }

  [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] resolutionDidChange];
}

- (void)layoutDidChange
{
  v24 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = OKPageUXViewController;
  [(OKPageViewController *)&v21 layoutDidChange];
  if ([(OKPageViewController *)self hasSettingsApplied])
  {
    [(OKPageViewController *)self setNeedsApplySettings];
    if ([(OKPageViewController *)self prepareMode]== 1 || [(OKPageViewController *)self prepareMode]== 2)
    {
      [(OKPageViewController *)self applyLayoutSettings];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      widgetViews = self->_widgetViews;
      v4 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v18;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v18 != v6)
            {
              objc_enumerationMutation(widgetViews);
            }

            [*(*(&v17 + 1) + 8 * i) applyLayoutSettings];
          }

          v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v5);
      }
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = self->_widgetViews;
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          for (j = 0; j != v10; ++j)
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v13 + 1) + 8 * j) setNeedsApplySettings];
          }

          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v22 count:16];
        }

        while (v10);
      }
    }
  }

  [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] layoutDidChange];
}

- (void)applySettings
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  [(OKPageViewController *)self removeAllActionBindings];
  [OKSettings resetAndApplySettings:[(OKPresentationCanvas *)[(OKPageViewController *)self page] settings] toObject:self withResolution:[(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] resolution]];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  widgetViews = self->_widgetViews;
  v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(widgetViews);
        }

        [*(*(&v9 + 1) + 8 * i) applySettingsIfNeeded];
      }

      v6 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(OKPageUXViewController *)self reloadPageViewZones];
  [(OKPageViewController *)self setNeedsApplySettings:0];
  [(OKPageViewController *)self setHasSettingsApplied:1];
  objc_autoreleasePoolPop(v3);
}

+ (id)supportedSettings
{
  v28[10] = *MEMORY[0x277D85DE8];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___OKPageUXViewController;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v6, sel_supportedSettings)}];
  v27[0] = @"parallaxEnabled";
  v3 = MEMORY[0x277CBEC28];
  v25[0] = @"type";
  v25[1] = @"default";
  v26[0] = &unk_287AF0128;
  v26[1] = MEMORY[0x277CBEC28];
  v25[2] = @"priority";
  v26[2] = &unk_287AF0140;
  v28[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v27[1] = @"parallaxRatioX";
  v23[0] = @"type";
  v23[1] = @"default";
  v24[0] = &unk_287AF0158;
  v24[1] = &unk_287AF2248;
  v23[2] = @"priority";
  v24[2] = &unk_287AF0170;
  v28[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v27[2] = @"parallaxRatioY";
  v21[0] = @"type";
  v21[1] = @"default";
  v22[0] = &unk_287AF0158;
  v22[1] = &unk_287AF2248;
  v21[2] = @"priority";
  v22[2] = &unk_287AF0170;
  v28[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v27[3] = @"dynamicsEnabled";
  v19[0] = @"type";
  v19[1] = @"default";
  v20[0] = &unk_287AF0128;
  v20[1] = v3;
  v19[2] = @"priority";
  v20[2] = &unk_287AF0188;
  v28[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v27[4] = @"dynamicsGravityEnabled";
  v17[0] = @"type";
  v17[1] = @"default";
  v18[0] = &unk_287AF0128;
  v18[1] = MEMORY[0x277CBEC38];
  v17[2] = @"priority";
  v18[2] = &unk_287AF0140;
  v28[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v27[5] = @"dynamicsGravityAngle";
  v15[0] = @"type";
  v15[1] = @"priority";
  v16[0] = &unk_287AF01A0;
  v16[1] = &unk_287AF0170;
  v28[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v27[6] = @"dynamicsGravityMagnitude";
  v13[0] = @"type";
  v13[1] = @"priority";
  v14[0] = &unk_287AF01A0;
  v14[1] = &unk_287AF0170;
  v28[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v27[7] = @"dynamicsGravityMotionDriven";
  v11[0] = @"type";
  v11[1] = @"default";
  v12[0] = &unk_287AF0128;
  v12[1] = v3;
  v11[2] = @"priority";
  v12[2] = &unk_287AF0170;
  v28[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v27[8] = @"dynamicsCollisionConfinementEnabled";
  v9[0] = @"type";
  v9[1] = @"default";
  v10[0] = &unk_287AF0128;
  v10[1] = v3;
  v9[2] = @"priority";
  v10[2] = &unk_287AF0140;
  v28[8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v27[9] = @"dynamicsPushBehaviors";
  v8[0] = &unk_287AF01B8;
  v7[0] = @"type";
  v7[1] = @"class";
  v8[1] = objc_opt_class();
  v7[2] = @"default";
  v4 = [MEMORY[0x277CBEB68] null];
  v7[3] = @"priority";
  v8[2] = v4;
  v8[3] = &unk_287AF0140;
  v28[9] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v28, v27, 10)}];
  return v2;
}

- (id)settingObjectForKey:(id)a3
{
  if ([(OKPageViewController *)self subNavigatorViewController]&& [(NSString *)[(OKPresentationCanvas *)[(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] navigator] name] isEqualToString:a3])
  {

    return [(OKPageViewController *)self subNavigatorViewController];
  }

  else
  {

    return [(OKPageUXViewController *)self widgetViewForName:a3 recursively:0];
  }
}

- (CGRect)calculateVisibleRectForWidget:(id)a3
{
  [a3 originalFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(OKPageUXViewController *)self parallaxEnabled])
  {
    if ([a3 parallaxEnabled])
    {
      [objc_msgSend(a3 "layer")];
      if (v13 != 0.0)
      {
        [objc_msgSend(a3 "layer")];
        [(OKPageUXViewController *)self calculateVisibleRectForWidgetRect:v6 withParallax:v8, v10, v12, v14];
        v6 = v15;
        v8 = v16;
        v10 = v17;
        v12 = v18;
      }
    }
  }

  v19 = v6;
  v20 = v8;
  v21 = v10;
  v22 = v12;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)calculateVisibleRectForWidgetRect:(CGRect)a3 withParallax:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [[(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] presentationView] frame];
  v11 = v10;
  v13 = v12;
  if ([(OKPageUXViewController *)self parallaxEnabled])
  {
    v14 = a4 * self->_parallaxRatioX + 1.0;
    v15 = x + width;
    x = (x - v11) / v14;
    v16 = a4 * self->_parallaxRatioY + 1.0;
    v17 = y + height;
    y = (y - v13) / v16;
    width = v15 / v14 - x;
    height = v17 / v16 - y;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)reloadPageViewZones
{
  [-[OKPageUXViewController view](self "view")];
  v4 = v3;
  [(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] displaySize];
  if (v4 == v5 && ([-[OKPageUXViewController view](self "view")], v7 = v6, -[OKPresentationViewControllerProxy displaySize](-[OKPageViewController presentationViewController](self, "presentationViewController"), "displaySize"), v7 == v8))
  {
    [-[OKPageUXViewController view](self "view")];
    v13 = v22;
    v15 = v23;
  }

  else
  {
    [-[OKPageUXViewController view](self "view")];
    v10 = v9;
    [(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] displaySize];
    if (v10 == v11)
    {
      [(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] displaySize];
      v13 = ceil(v12 * 0.5);
      [(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] displaySize];
      v15 = ceil(v14);
    }

    else
    {
      [-[OKPageUXViewController view](self "view")];
      v17 = v16;
      [(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] displaySize];
      v19 = v18;
      [(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] displaySize];
      if (v17 == v19)
      {
        v13 = ceil(v20);
      }

      else
      {
        v13 = ceil(v20 * 0.5);
      }

      [(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] displaySize];
      v15 = ceil(v21 * 0.5);
    }
  }

  [(OKPageUXViewController *)self reloadPageViewZonesWithSize:v13, v15];
}

- (void)reloadPageViewZonesWithSize:(CGSize)a3
{
  v35 = *MEMORY[0x277D85DE8];
  if (a3.width > 0.0)
  {
    height = a3.height;
    if (a3.height > 0.0)
    {
      width = a3.width;
      objc_sync_enter(self);
      pageViewZones = self->_pageViewZones;
      if (pageViewZones)
      {

        self->_pageViewZones = 0;
      }

      self->_pageViewZones = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_pageViewZoneSize.width = width;
      self->_pageViewZoneSize.height = height;
      for (i = 0.0; ; i = width + i)
      {
        [-[OKPageUXViewController view](self "view")];
        if (i >= v8)
        {
          break;
        }

        v9 = [MEMORY[0x277CBEB18] array];
        for (j = 0.0; ; j = height + j)
        {
          [-[OKPageUXViewController view](self "view")];
          if (j >= v11)
          {
            break;
          }

          v12 = [[OKPageViewZone alloc] initWithFrame:i, j, width, height];
          [v9 addObject:v12];
        }

        [(NSMutableArray *)self->_pageViewZones addObject:v9];
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      widgetViews = self->_widgetViews;
      v14 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v14)
      {
        v15 = *v30;
        do
        {
          for (k = 0; k != v14; ++k)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(widgetViews);
            }

            v17 = *(*(&v29 + 1) + 8 * k);
            [(OKPageUXViewController *)self calculateVisibleRectForWidget:v17];
            v18 = [(OKPageUXViewController *)self pageViewZonesInRect:?];
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v19)
            {
              v20 = *v26;
              do
              {
                for (m = 0; m != v19; ++m)
                {
                  if (*v26 != v20)
                  {
                    objc_enumerationMutation(v18);
                  }

                  [objc_msgSend(*(*(&v25 + 1) + 8 * m) "widgetViews")];
                }

                v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
              }

              while (v19);
            }

            if ([v17 needsZoning])
            {
              v22 = [v17 subWidgetViews];
              v23 = [v17 parallaxEnabled];
              v24 = 0.0;
              if (v23)
              {
                [objc_msgSend(v17 layer];
              }

              [(OKPageUXViewController *)self reloadPageViewZonesForSubwidgets:v22 withParallax:v24];
            }
          }

          v14 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v14);
      }

      objc_sync_exit(self);
    }
  }
}

- (void)reloadPageViewZonesForSubwidgets:(id)a3 withParallax:(double)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        [objc_msgSend(v11 "parentWidgetView")];
        v13 = v12;
        v15 = v14;
        [v11 frame];
        v17 = v13 + v16;
        [v11 frame];
        v19 = v15 + v18;
        [v11 frame];
        [(OKPageUXViewController *)self calculateVisibleRectForWidgetRect:v17 withParallax:v19];
        v20 = [(OKPageUXViewController *)self pageViewZonesInRect:?];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v21 = [v20 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v26;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v26 != v23)
              {
                objc_enumerationMutation(v20);
              }

              [objc_msgSend(*(*(&v25 + 1) + 8 * j) "widgetViews")];
            }

            v22 = [v20 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v22);
        }

        if ([v11 needsZoning])
        {
          -[OKPageUXViewController reloadPageViewZonesForSubwidgets:withParallax:](self, "reloadPageViewZonesForSubwidgets:withParallax:", [v11 subWidgetViews], a4);
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }
}

- (id)pageViewZonesInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_sync_enter(self);
  v8 = [MEMORY[0x277CBEB58] set];
  if (width <= 0.0 || height <= 0.0)
  {
    if (*MEMORY[0x277D62808] <= 3)
    {
      goto LABEL_13;
    }

    v13 = @"Viewable rect is empty!!!";
    v14 = 491;
LABEL_12:
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageUXViewController.m" line:v14 andFormat:v13];
    goto LABEL_13;
  }

  pageViewZones = self->_pageViewZones;
  if (!pageViewZones || ![(NSMutableArray *)pageViewZones count])
  {
    if (*MEMORY[0x277D62808] < 4)
    {
      goto LABEL_13;
    }

    v13 = @"No zones available, looks like we had a problem in reloadPageViewZonesWithSize";
    v14 = 496;
    goto LABEL_12;
  }

  p_pageViewZoneSize = &self->_pageViewZoneSize;
  if (fmax(floor(x / self->_pageViewZoneSize.width), 0.0) >= ([(NSMutableArray *)self->_pageViewZones count]- 1))
  {
    v12 = ([(NSMutableArray *)self->_pageViewZones count]- 1);
    v11 = p_pageViewZoneSize->width;
  }

  else
  {
    v11 = p_pageViewZoneSize->width;
    v12 = floor(x / p_pageViewZoneSize->width);
    if (v12 <= 0.0)
    {
      v12 = 0.0;
    }
  }

  v16 = [(NSMutableArray *)self->_pageViewZones count];
  v17 = x + width;
  v18 = floor((x + width) / v11);
  v19 = 0.0;
  if (fmax(v18, 0.0) >= (v16 - 1))
  {
    v19 = ([(NSMutableArray *)self->_pageViewZones count]- 1);
  }

  else
  {
    v20 = floor(v17 / p_pageViewZoneSize->width);
    if (v20 > 0.0)
    {
      v19 = v20;
    }
  }

  v21 = v19;
  if ([(NSMutableArray *)self->_pageViewZones count]<= v19)
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageUXViewController.m" line:508 andFormat:@"About to read an invalid column index, %d out of %d, troubles ahead", v19, -[NSMutableArray count](self->_pageViewZones, "count")];
    }
  }

  else
  {
    v22 = v12;
    if (v12 <= v21)
    {
      v23 = y + height;
      v24 = MEMORY[0x277D62808];
      do
      {
        v25 = [(NSMutableArray *)self->_pageViewZones objectAtIndex:v22];
        if ([v25 count])
        {
          if (fmax(floor(y / self->_pageViewZoneSize.height), 0.0) >= ([v25 count] - 1))
          {
            v27 = ([v25 count] - 1);
            v26 = self->_pageViewZoneSize.height;
          }

          else
          {
            v26 = self->_pageViewZoneSize.height;
            v27 = floor(y / v26);
            if (v27 <= 0.0)
            {
              v27 = 0.0;
            }
          }

          if (fmax(floor(v23 / v26), 0.0) >= ([v25 count] - 1))
          {
            v29 = ([v25 count] - 1);
          }

          else
          {
            v28 = floor(v23 / self->_pageViewZoneSize.height);
            v29 = 0.0;
            if (v28 > 0.0)
            {
              v29 = v28;
            }
          }

          v30 = v27;
          v31 = v29;
          while (v30 <= v31)
          {
            [v8 addObject:{objc_msgSend(v25, "objectAtIndex:", v30++)}];
          }
        }

        else if (*v24 >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageUXViewController.m" line:530 andFormat:@"No column available for the row zone"];
        }

        ++v22;
      }

      while (v22 <= v21);
    }
  }

LABEL_13:
  objc_sync_exit(self);
  return v8;
}

- (void)addWidgetViewInPageViewZones:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  [(OKPageUXViewController *)self calculateVisibleRectForWidget:a3];
  v5 = [(OKPageUXViewController *)self pageViewZonesInRect:?];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [objc_msgSend(*(*(&v9 + 1) + 8 * v8++) "widgetViews")];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  objc_sync_exit(self);
}

- (void)removeWidgetViewInPageViewZones:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  pageViewZones = self->_pageViewZones;
  v6 = [(NSMutableArray *)pageViewZones countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(pageViewZones);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v10)
        {
          v11 = *v14;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v9);
              }

              [objc_msgSend(*(*(&v13 + 1) + 8 * j) "widgetViews")];
            }

            v10 = [v9 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }
      }

      v6 = [(NSMutableArray *)pageViewZones countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

  objc_sync_exit(self);
}

- (void)updateWidgetViewInPageViewZones:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_pageViewZones;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        [(OKPageUXViewController *)self calculateVisibleRectForWidget:a3];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v17 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v17)
        {
          v18 = *v23;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v23 != v18)
              {
                objc_enumerationMutation(v8);
              }

              v20 = *(*(&v22 + 1) + 8 * j);
              [v20 frame];
              v34.origin.x = v10;
              v34.origin.y = v12;
              v34.size.width = v14;
              v34.size.height = v16;
              if (CGRectIntersectsRect(v33, v34))
              {
                [objc_msgSend(v20 "widgetViews")];
              }

              else
              {
                [objc_msgSend(v20 "widgetViews")];
              }
            }

            v17 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v17);
        }
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  objc_sync_exit(self);
}

- (id)widgetViewsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  obj = self;
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [(OKPageUXViewController *)self pageViewZonesInRect:x, y, width, height];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v14 = [v13 widgetViews];
        v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v15)
        {
          v16 = *v22;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v22 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v21 + 1) + 8 * j);
              [objc_msgSend(v18 "layer")];
              v33.origin.x = x;
              v33.origin.y = y;
              v33.size.width = width;
              v33.size.height = height;
              if (CGRectIntersectsRect(v32, v33))
              {
                [v8 addObject:v18];
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v15);
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  objc_sync_exit(obj);
  return v8;
}

- (void)widgetViewsInDisplayRect:(CGRect)a3 displaySet:(id)a4 andWarmupRect:(CGRect)a5 warmupSet:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v60 = a3;
  v74 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v13 = [(OKPageUXViewController *)self pageViewZonesInRect:x, y, width, height];
  v14 = [MEMORY[0x277CBEB58] set];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v15)
  {
    v16 = *v69;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v69 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v14 unionSet:{objc_msgSend(*(*(&v68 + 1) + 8 * i), "widgetViews", *&v60.origin.x, *&v60.origin.y, *&v60.size.width, *&v60.size.height)}];
      }

      v15 = [v13 countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v15);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v18 = [v14 countByEnumeratingWithState:&v64 objects:v72 count:{16, *&v60.origin.x, *&v60.origin.y, *&v60.size.width, *&v60.size.height}];
  if (v18)
  {
    v19 = *v65;
    v20 = *MEMORY[0x277CBF348];
    v21 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      v22 = 0;
      do
      {
        if (*v65 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v23 = *(*(&v64 + 1) + 8 * v22);
        [objc_msgSend(v23 "layer")];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        if (-[OKPageUXViewController parallaxEnabled](self, "parallaxEnabled") && [v23 parallaxEnabled] && !objc_msgSend(v23, "parentWidgetView"))
        {
          [(OKPageUXViewController *)self lastParallaxOffset];
          v45 = v44;
          [(OKPageUXViewController *)self lastParallaxOffset];
          v47 = v46;
          [objc_msgSend(v23 "layer")];
          [(OKPageUXViewController *)self parallaxWithOffsetX:v45 offsetY:v47 zPosition:v48];
          v42 = v49;
          v41 = v50;
          [v23 originalFrame];
          v52 = v51;
          v54 = v53;
          v56 = v55;
          v58 = v57;
          CGAffineTransformMakeTranslation(&v63, v42, v41);
          v77.origin.x = v52;
          v77.origin.y = v54;
          v77.size.width = v56;
          v77.size.height = v58;
          v78 = CGRectApplyAffineTransform(v77, &v63);
          v25 = v78.origin.x;
          v27 = v78.origin.y;
          v29 = v78.size.width;
          v31 = v78.size.height;
        }

        else
        {
          if ([v23 parentWidgetView])
          {
            v32 = [objc_msgSend(v23 "parentWidgetView")];
            [v23 originalFrame];
            [v32 convertRect:objc_msgSend(-[OKPageUXViewController view](self toLayer:{"view"), "layer"), v33, v34, v35, v36}];
            v25 = v37;
            v27 = v38;
            v29 = v39;
            v31 = v40;
          }

          v41 = v21;
          v42 = v20;
        }

        v75.origin.x = v25;
        v75.origin.y = v27;
        v75.size.width = v29;
        v75.size.height = v31;
        if (CGRectIntersectsRect(v75, v62))
        {
          v76.origin.x = v25;
          v76.origin.y = v27;
          v76.size.width = v29;
          v76.size.height = v31;
          if (CGRectIntersectsRect(v76, v61))
          {
            v43 = a4;
          }

          else
          {
            v43 = a6;
          }

          [v43 addObject:v23];
          if (![v23 parentWidgetView] && objc_msgSend(v23, "parallaxEnabled"))
          {
            [v23 updateWithParallaxTranslationX:v42 translationY:v41];
          }
        }

        ++v22;
      }

      while (v18 != v22);
      v59 = [v14 countByEnumeratingWithState:&v64 objects:v72 count:16];
      v18 = v59;
    }

    while (v59);
  }

  objc_sync_exit(self);
}

- (void)removeWidgetView:(id)a3
{
  objc_sync_enter(self);
  if (![a3 parentWidgetView])
  {
    [(OKPageUXViewController *)self removeWidgetViewInPageViewZones:a3];
    [(NSMutableArray *)self->_newWidgetViews removeObject:a3];
    [(NSMutableArray *)self->_widgetViews removeObject:a3];
    [a3 removeFromSuperview];
  }

  objc_sync_exit(self);
}

- (id)newWidgetViewWithTemplateName:(id)a3 name:(id)a4 andSettings:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = [-[OKPresentation widgetTemplateWithName:](-[OKPresentationCanvas presentation](-[OKPageViewController page](self "page")];
  [v8 resolveIfNeeded];
  [v8 setName:a4];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [a5 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 setSettingsObject:objc_msgSend(a5 forKeyPath:{"objectForKey:", *(*(&v16 + 1) + 8 * v13)), *(*(&v16 + 1) + 8 * v13)}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] widgetViewFromWidget:v8];

  [v14 setDelegate:self];
  return v14;
}

- (id)addWidgetViewWithTemplateName:(id)a3 name:(id)a4 andSettings:(id)a5
{
  v6 = [(OKPageUXViewController *)self newWidgetViewWithTemplateName:a3 name:a4 andSettings:a5];
  if (v6)
  {
    [v6 setPage:{-[OKPageViewController page](self, "page")}];
    [(NSMutableArray *)self->_widgetViews addObject:v6];
    [(NSMutableArray *)self->_newWidgetViews addObject:v6];
    [-[OKPageUXViewController view](self "view")];
    [v6 applySettingsIfNeeded];
    [(OKPageUXViewController *)self addWidgetViewInPageViewZones:v6];
    [v6 prepareForMode:-[OKPageViewController prepareMode](self force:{"prepareMode"), 1}];
  }

  return v6;
}

- (id)mediaURLs
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  widgetViews = self->_widgetViews;
  v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(widgetViews);
        }

        [v3 addObjectsFromArray:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "mediaURLs")}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)widgetViewForName:(id)a3 recursively:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  widgetViews = self->_widgetViews;
  result = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(widgetViews);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if ([objc_msgSend(v11 "widget")] && !objc_msgSend(objc_msgSend(objc_msgSend(v11, "widget"), "name"), "caseInsensitiveCompare:", a3))
        {
          return v11;
        }

        if (v4)
        {
          result = [v11 subWidgetViewForName:a3 recursively:1];
          if (result)
          {
            return result;
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v12 objects:v16 count:16];
      v8 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)prepareWidgetsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v39 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] setWithArray:self->_widgetViews];
  if ([(OKPageViewController *)self prepareMode]== 1)
  {
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v41 = CGRectInset(v40, -width, -height);
    [(OKPageUXViewController *)self widgetViewsInDisplayRect:v8 displaySet:v9 andWarmupRect:x - width * 0.25 warmupSet:y - height * 0.25, width + width * 0.25 * 2.0, height + height * 0.25 * 2.0, v41.origin.x, v41.origin.y, v41.size.width, v41.size.height];
    [v10 minusSet:v9];
    v11 = v8;
  }

  else
  {
    if ([(OKPageViewController *)self prepareMode]!= 2)
    {
      goto LABEL_6;
    }

    [v9 unionSet:{-[OKPageUXViewController widgetViewsInRect:](self, "widgetViewsInRect:", x - width * 0.5, y - height * 0.5, width + width * 0.5 * 2.0, height + height * 0.5 * 2.0)}];
    v11 = v9;
  }

  [v10 minusSet:v11];
LABEL_6:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      v15 = 0;
      do
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v32 + 1) + 8 * v15++) prepareForDisplay:0];
      }

      while (v13 != v15);
      v13 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v13);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [v9 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      v19 = 0;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v28 + 1) + 8 * v19++) prepareForWarmup:0];
      }

      while (v17 != v19);
      v17 = [v9 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v17);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v20 = [v10 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v24 + 1) + 8 * v23++) prepareForUnload:0];
      }

      while (v21 != v23);
      v21 = [v10 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v21);
  }
}

- (BOOL)prepareForDisplay
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = OKPageUXViewController;
  v3 = [(OKPageViewController *)&v14 prepareForDisplay];
  if (v3)
  {
    [-[OKPageUXViewController view](self "view")];
    [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] prepareForDisplay];
    if (![(OKPageViewController *)self prepareWidgetsManually])
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      widgetViews = self->_widgetViews;
      v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(widgetViews);
            }

            [*(*(&v10 + 1) + 8 * i) prepareForDisplay:0];
          }

          v6 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v10 objects:v15 count:16];
        }

        while (v6);
      }
    }

    [(OKPageUXViewController *)self updateMotion];
    [(OKPageUXViewController *)self updateParallax];
    [(OKPageUXViewController *)self updateDynamics];
  }

  return v3;
}

- (BOOL)prepareForWarmup
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = OKPageUXViewController;
  v3 = [(OKPageViewController *)&v14 prepareForWarmup];
  if (v3)
  {
    [-[OKPageUXViewController view](self "view")];
    [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] prepareForWarmup];
    if (![(OKPageViewController *)self prepareWidgetsManually])
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      widgetViews = self->_widgetViews;
      v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(widgetViews);
            }

            [*(*(&v10 + 1) + 8 * i) prepareForWarmup:0];
          }

          v6 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v10 objects:v15 count:16];
        }

        while (v6);
      }
    }

    [(OKPageUXViewController *)self updateMotion];
    [(OKPageUXViewController *)self updateParallax];
    [(OKPageUXViewController *)self updateDynamics];
  }

  return v3;
}

- (BOOL)prepareForUnload
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = OKPageUXViewController;
  v3 = [(OKPageViewController *)&v14 prepareForUnload];
  if (v3)
  {
    [-[OKPageUXViewController view](self "view")];
    [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] prepareForUnload];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    widgetViews = self->_widgetViews;
    v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(widgetViews);
          }

          [*(*(&v10 + 1) + 8 * i) prepareForUnload:0];
        }

        v6 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }

    [(OKPageUXViewController *)self updateMotion];
    [(OKPageUXViewController *)self updateParallax];
    [(OKPageUXViewController *)self updateDynamics];
  }

  return v3;
}

- (void)prepareForReload
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(OKPageViewController *)self prepareMode];
  [(OKPageViewController *)self setNeedsApplySettings];
  [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] setNeedsApplySettings];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  widgetViews = self->_widgetViews;
  v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(widgetViews);
        }

        [*(*(&v18 + 1) + 8 * i) setNeedsApplySettings];
      }

      v6 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  if (v3 - 1 <= 1)
  {
    [(OKPageViewController *)self setNeedsPrepare];
    [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] setNeedsPrepare];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = self->_widgetViews;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * j) setNeedsPrepare];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v11);
    }

    [(OKPageViewController *)self prepareForMode:v3];
  }
}

- (void)prepareForRefresh
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(OKPageViewController *)self prepareMode]== 1 || [(OKPageViewController *)self prepareMode]== 2)
  {
    [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] prepareForRefresh];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    widgetViews = self->_widgetViews;
    v4 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(widgetViews);
          }

          [*(*(&v8 + 1) + 8 * v7++) prepareForRefresh];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)prepareAllWidgets
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(OKPageViewController *)self prepareMode]== 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    widgetViews = self->_widgetViews;
    v4 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(widgetViews);
          }

          [*(*(&v26 + 1) + 8 * i) prepareForDisplay:0];
        }

        v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v5);
    }
  }

  else if ([(OKPageViewController *)self prepareMode]== 2)
  {
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v8 = self->_widgetViews;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v22 + 1) + 8 * j) prepareForWarmup:0];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v13 = self->_widgetViews;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        for (k = 0; k != v15; ++k)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v18 + 1) + 8 * k) prepareForUnload:0];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v30 count:16];
      }

      while (v15);
    }
  }
}

- (void)instantPause
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  widgetViews = self->_widgetViews;
  v3 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(widgetViews);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 prepareMode] == 1)
        {
          [v7 instantPause];
        }
      }

      v4 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)instantResume
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  widgetViews = self->_widgetViews;
  v3 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(widgetViews);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 prepareMode] == 1)
        {
          [v7 instantResume];
        }
      }

      v4 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)updateMotion
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(OKPageViewController *)self prepareMode]== 1 || [(OKPageViewController *)self prepareMode]== 2)
  {
    if ([(OKPageViewController *)self motionEnabled])
    {
      v3 = [(OKPageViewController *)self presentationViewController];

      [(OKPresentationViewController *)v3 updateMotion];
    }

    else
    {
      self->super._lastMotionRotationX = 0.0;
      self->super._lastMotionRotationY = 0.0;
      self->super._lastMotionRotationZ = 0.0;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      widgetViews = self->_widgetViews;
      v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(widgetViews);
            }

            [*(*(&v9 + 1) + 8 * i) updateWithMotionTiltRotationX:0.0 tiltRotationY:0.0 tiltRotationZ:0.0];
          }

          v6 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }

      if ([(OKPageViewController *)self subNavigatorViewController])
      {
        [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] updateWithMotionTiltRotationX:0.0 tiltRotationY:0.0 tiltRotationZ:0.0];
      }
    }
  }

  else if ([(OKPageViewController *)self prepareMode]== 3)
  {
    self->super._lastMotionRotationX = 0.0;
    self->super._lastMotionRotationY = 0.0;
    self->super._lastMotionRotationZ = 0.0;
  }
}

- (void)updateWithMotionTiltRotationX:(double)a3 tiltRotationY:(double)a4 tiltRotationZ:(double)a5
{
  if ([(OKPageViewController *)self prepareMode]== 1 || [(OKPageViewController *)self prepareMode]== 2)
  {
    if (self->super._motionEnabled && (self->super._lastMotionRotationX != a3 || self->super._lastMotionRotationY != a4 || self->super._lastMotionRotationZ != a5))
    {
      [-[OKPageUXViewController view](self "view")];
      v39 = v9 * 0.5;
      [-[OKPageUXViewController view](self "view")];
      v11 = v10 * 0.5;
      [-[OKPageUXViewController view](self "view")];
      v13 = v12;
      [-[OKPageUXViewController view](self "view")];
      v15 = v14;
      [-[OKPageUXViewController view](self "view")];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        [objc_msgSend(-[OKPageUXViewController view](self "view")];
        v18 = v17;
        [objc_msgSend(-[OKPageUXViewController view](self "view")];
        v20 = v18 + v19 * 0.5;
        [objc_msgSend(-[OKPageUXViewController view](self "view")];
        v22 = v21;
        [objc_msgSend(-[OKPageUXViewController view](self "view")];
        v24 = v22 + v23 * 0.5;
      }

      else
      {
        v20 = v13 * 0.5;
        v24 = v15 * 0.5;
      }

      v25 = MEMORY[0x277CD9DE8];
      v26 = *(MEMORY[0x277CD9DE8] + 80);
      v36 = *(MEMORY[0x277CD9DE8] + 64);
      *&v49.m31 = v36;
      *&v49.m33 = v26;
      v37 = *(MEMORY[0x277CD9DE8] + 112);
      v38 = *(MEMORY[0x277CD9DE8] + 96);
      *&v49.m41 = v38;
      *&v49.m43 = v37;
      v34 = *(MEMORY[0x277CD9DE8] + 16);
      v35 = *MEMORY[0x277CD9DE8];
      *&v49.m11 = *MEMORY[0x277CD9DE8];
      *&v49.m13 = v34;
      v32 = *(MEMORY[0x277CD9DE8] + 48);
      v33 = *(MEMORY[0x277CD9DE8] + 32);
      *&v49.m21 = v33;
      *&v49.m23 = v32;
      v27 = v20 - v39;
      if (self->super._motionTiltXEnabled)
      {
        *&v48.m31 = v36;
        *&v48.m33 = v26;
        *&v48.m41 = v38;
        *&v48.m43 = v37;
        *&v48.m11 = v35;
        *&v48.m13 = v34;
        *&v48.m21 = v33;
        *&v48.m23 = v32;
        CATransform3DTranslate(&v49, &v48, v20 - v39, v24 - v11, 0.0);
        height = self->super._motionXMinMax.height;
        if (height > a3)
        {
          height = a3;
        }

        if (height <= self->super._motionXMinMax.width)
        {
          height = self->super._motionXMinMax.width;
        }

        a = v49;
        CATransform3DRotate(&v48, &a, height, 1.0, 0.0, 0.0);
        v49 = v48;
        a = v48;
        CATransform3DTranslate(&v48, &a, v39 - v20, v11 - v24, 0.0);
        v49 = v48;
      }

      if (self->super._motionTiltYEnabled)
      {
        a = v49;
        CATransform3DTranslate(&v48, &a, v27, v24 - v11, 0.0);
        v49 = v48;
        width = self->super._motionYMinMax.height;
        if (width > a4)
        {
          width = a4;
        }

        if (width <= self->super._motionYMinMax.width)
        {
          width = self->super._motionYMinMax.width;
        }

        a = v49;
        CATransform3DRotate(&v48, &a, width, 0.0, 1.0, 0.0);
        v49 = v48;
        a = v48;
        CATransform3DTranslate(&v48, &a, v39 - v20, v11 - v24, 0.0);
        v49 = v48;
      }

      if (self->super._motionTiltZEnabled)
      {
        a = v49;
        CATransform3DTranslate(&v48, &a, v27, v24 - v11, 0.0);
        v49 = v48;
        v30 = self->super._motionZMinMax.height;
        if (v30 > a5)
        {
          v30 = a5;
        }

        if (v30 <= self->super._motionZMinMax.width)
        {
          v30 = self->super._motionZMinMax.width;
        }

        a = v49;
        CATransform3DRotate(&v48, &a, v30, 0.0, 0.0, 1.0);
        v49 = v48;
        a = v48;
        CATransform3DTranslate(&v48, &a, v39 - v20, v11 - v24, 0.0);
        v49 = v48;
      }

      *&b.m21 = v33;
      *&b.m23 = v32;
      *&b.m31 = v36;
      b.m33 = *(v25 + 80);
      *&b.m11 = v35;
      *&b.m13 = v34;
      perspective = self->super._perspective;
      *&b.m41 = v38;
      *&b.m43 = v37;
      a = v49;
      b.m34 = perspective;
      CATransform3DConcat(&v48, &a, &b);
      v49 = v48;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v41 = v48;
      v40[2] = __84__OKPageUXViewController_updateWithMotionTiltRotationX_tiltRotationY_tiltRotationZ___block_invoke;
      v40[3] = &unk_279C8F958;
      v40[4] = self;
      v45 = isKindOfClass & 1;
      v42 = a3;
      v43 = a4;
      v44 = a5;
      [(OKPageUXViewController *)self performBlockWithoutAnimations:v40];
      self->super._lastMotionRotationX = a3;
      self->super._lastMotionRotationY = a4;
      self->super._lastMotionRotationZ = a5;
    }

    [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController:v32] updateWithMotionTiltRotationX:a3 tiltRotationY:a4 tiltRotationZ:a5];
  }
}

uint64_t __84__OKPageUXViewController_updateWithMotionTiltRotationX_tiltRotationY_tiltRotationZ___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 120);
  v31[4] = *(a1 + 104);
  v31[5] = v2;
  v3 = *(a1 + 152);
  v31[6] = *(a1 + 136);
  v31[7] = v3;
  v4 = *(a1 + 56);
  v31[0] = *(a1 + 40);
  v31[1] = v4;
  v5 = *(a1 + 88);
  v31[2] = *(a1 + 72);
  v31[3] = v5;
  [objc_msgSend(objc_msgSend(*(a1 + 32) "view")];
  v6 = [*(a1 + 32) widgetViews];
  if (*(a1 + 192) == 1)
  {
    v7 = [objc_msgSend(*(a1 + 32) "view")];
    v8 = *(a1 + 32);
    [v7 contentOffset];
    v10 = v9;
    [v7 contentOffset];
    v12 = v11;
    [v7 bounds];
    v14 = v13;
    [v7 bounds];
    v16 = v15;
    [v7 bounds];
    v18 = -v17;
    [v7 bounds];
    v20 = -v19;
    v34.origin.x = v10;
    v34.origin.y = v12;
    v34.size.width = v14;
    v34.size.height = v16;
    v35 = CGRectInset(v34, v18, v20);
    v6 = [v8 widgetViewsInRect:{v35.origin.x, v35.origin.y, v35.size.width, v35.size.height}];
  }

  v21 = v6;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      v25 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v27 + 1) + 8 * v25++) updateWithMotionTiltRotationX:*(a1 + 168) tiltRotationY:*(a1 + 176) tiltRotationZ:*(a1 + 184)];
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v23);
  }

  result = [*(a1 + 32) subNavigatorViewController];
  if (result)
  {
    return [objc_msgSend(*(a1 + 32) "subNavigatorViewController")];
  }

  return result;
}

- (void)updateMotionForWidgetView:(id)a3
{
  if ([(OKPageViewController *)self motionEnabled])
  {
    lastMotionRotationX = self->super._lastMotionRotationX;
    lastMotionRotationY = self->super._lastMotionRotationY;
    lastMotionRotationZ = self->super._lastMotionRotationZ;
  }

  else
  {
    lastMotionRotationX = 0.0;
    lastMotionRotationY = 0.0;
    lastMotionRotationZ = 0.0;
  }

  [a3 updateWithMotionTiltRotationX:lastMotionRotationX tiltRotationY:lastMotionRotationY tiltRotationZ:lastMotionRotationZ];
}

- (void)updateParallax
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(OKPageViewController *)self prepareMode]== 1 || [(OKPageViewController *)self prepareMode]== 2)
  {
    if ([(OKPageUXViewController *)self parallaxEnabled])
    {
      if ([-[OKPageUXViewController parentViewController](self "parentViewController")])
      {
        v3 = [(OKPageViewController *)self navigatorViewController];

        [(OKNavigatorViewController *)v3 updateParallax];
      }
    }

    else
    {
      [(OKPageUXViewController *)self setLastParallaxOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      widgetViews = self->_widgetViews;
      v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(widgetViews);
            }

            [*(*(&v11 + 1) + 8 * i) updateWithParallaxTranslationX:0.0 translationY:0.0];
          }

          v6 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }
  }

  else
  {
    [(OKPageViewController *)self prepareMode];
    v9 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);

    [(OKPageUXViewController *)self setLastParallaxOffset:v9, v10];
  }
}

- (CGPoint)parallaxWithOffsetX:(double)a3 offsetY:(double)a4 zPosition:(double)a5
{
  v8 = -(a3 * a5);
  [(OKPageUXViewController *)self parallaxRatioX];
  v10 = v8 * v9;
  [(OKPageUXViewController *)self parallaxRatioY];
  v12 = -(a4 * a5) * v11;
  v13 = v10;
  result.y = v12;
  result.x = v13;
  return result;
}

- (void)updateParallaxWithOffsetX:(double)a3 offsetY:(double)a4
{
  if (([(OKPageViewController *)self prepareMode]== 1 || [(OKPageViewController *)self prepareMode]== 2) && [(OKPageUXViewController *)self parallaxEnabled])
  {

    [(OKPageUXViewController *)self setLastParallaxOffset:a3, a4];
  }
}

- (void)updateParallaxForWidgetView:(id)a3
{
  if ([(OKPageUXViewController *)self parallaxEnabled])
  {
    [(OKPageUXViewController *)self lastParallaxOffset];
    v6 = v5;
    [(OKPageUXViewController *)self lastParallaxOffset];
    v8 = v7;
    [objc_msgSend(a3 "layer")];
    [(OKPageUXViewController *)self parallaxWithOffsetX:v6 offsetY:v8 zPosition:v9];
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  [a3 updateWithParallaxTranslationX:v10 translationY:v11];
}

- (CGPoint)convertPointWithMotionAndParallax:(CGPoint)a3 andZPosition:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(OKPageViewController *)self layoutFactor];
  v9 = v8;
  v11 = v10;
  if ([(OKPageViewController *)self motionEnabled])
  {
    v12 = __geometryCalculationLayer;
    if (!__geometryCalculationLayer)
    {
      __geometryCalculationLayer = objc_alloc_init(MEMORY[0x277CD9ED0]);
      [__geometryCalculationLayer setHidden:1];
      [__geometryCalculationLayer setZPosition:a4];
      v12 = __geometryCalculationLayer;
    }

    [v12 setPosition:{x, y}];
    [__geometryCalculationLayer setZPosition:a4];
    v13 = [-[OKPageUXViewController view](self "view")];
    [v13 addSublayer:__geometryCalculationLayer];
    [__geometryCalculationLayer convertPoint:objc_msgSend(-[OKPageUXViewController view](self toLayer:{"view"), "layer"), 0.0, 0.0}];
    x = x + x - v14;
    y = y + y - v15;
  }

  if ([(OKPageUXViewController *)self parallaxEnabled])
  {
    [(OKPageUXViewController *)self lastParallaxOffset];
    v17 = v16;
    [(OKPageUXViewController *)self lastParallaxOffset];
    [OKPageUXViewController parallaxWithOffsetX:"parallaxWithOffsetX:offsetY:zPosition:" offsetY:v17 zPosition:?];
    x = x - v18 / v9;
    y = y - v19 / v11;
  }

  v20 = x;
  v21 = y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)updateLayoutSteps
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(OKPageViewController *)self layoutSteps];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(OKPageUXViewController *)self _preparseLayoutString:*(*(&v10 + 1) + 8 * v7) targetView:&v15 anchorView:&v14];
        if (v8)
        {
          v9 = v15 == 0;
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          [-[OKPageUXViewController view](self "view")];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)_preparseLayoutString:(id)a3 targetView:(id *)a4 anchorView:(id *)a5
{
  *a4 = 0;
  *a5 = 0;
  v9 = [MEMORY[0x277CCAC80] scannerWithString:?];
  v18 = 0;
  if (([v9 scanUpToString:@"." intoString:&v18] & 1) == 0)
  {
    NSLog(&cfstr_CouldnTReadTar.isa, a3);
    return 0;
  }

  if (([v9 scanUpToString:@"=" intoString:0] & 1) == 0)
  {
    NSLog(&cfstr_ExpectedInLayo.isa, a3);
    return 0;
  }

  [v9 scanString:@"=" intoString:0];
  v17 = 0;
  v10 = [v9 scanLocation];
  [v9 scanUpToString:@"." intoString:&v17];
  if ([v9 isAtEnd])
  {
    [v9 setScanLocation:v10];
    v17 = 0;
  }

  else
  {
    if ([v17 isEqualToString:@"superview"])
    {
      v12 = [(OKPageUXViewController *)self view];
    }

    else
    {
      v12 = [(OKPageUXViewController *)self widgetViewForName:v17 recursively:0];
    }

    *a5 = v12;
  }

  *a4 = [(OKPageUXViewController *)self widgetViewForName:v18 recursively:0];
  v13 = [a3 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(v18, "length"), @"t"}];
  v14 = v13;
  if (v17)
  {
    v15 = [v13 rangeOfString:?];
    v14 = [v14 stringByReplacingCharactersInRange:v15 withString:{v16, @"a"}];
  }

  return [objc_msgSend(v14 stringByReplacingOccurrencesOfString:@"{" withString:{@"<", "stringByReplacingOccurrencesOfString:withString:", @"}", @">"}];
}

- (unint64_t)countOfDictionaryProxy:(id)a3
{
  if ([a3 tag] == 1)
  {
    widgetViews = self->_widgetViews;

    return [(NSMutableArray *)widgetViews count];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = OKPageUXViewController;
    return [(OKPageViewController *)&v7 countOfDictionaryProxy:a3];
  }
}

- (id)allKeysForDictionaryProxy:(id)a3
{
  if ([a3 tag] == 1)
  {

    return [(OKPageUXViewController *)self widgetViewNames];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = OKPageUXViewController;
    return [(OKPageViewController *)&v6 allKeysForDictionaryProxy:a3];
  }
}

- (id)dictionaryProxy:(id)a3 objectForKey:(id)a4
{
  if ([a3 tag] == 1)
  {

    return [(OKPageUXViewController *)self widgetViewForName:a4 recursively:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = OKPageUXViewController;
    return [(OKPageViewController *)&v8 dictionaryProxy:a3 objectForKey:a4];
  }
}

- (id)widgetViewResolution:(id)a3
{
  v3 = [(OKPageViewController *)self presentationViewController];

  return [(OKPresentationViewControllerProxy *)v3 resolution];
}

- (void)widgetViewCancelAllOperations:(id)a3
{
  [(OFNSOperationQueue *)[(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] highSpeedOperationQueue] cancelAllOperationsWithContext:a3];
  v5 = [(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] consumingOperationQueue];

  [(OFNSOperationQueue *)v5 cancelAllOperationsWithContext:a3];
}

- (void)widgetViewCancelAllOperations:(id)a3 withIdentifier:(id)a4
{
  [(OFNSOperationQueue *)[(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] highSpeedOperationQueue] cancelAllOperationsWithContext:a3 andIdentifier:a4];
  v7 = [(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] consumingOperationQueue];

  [(OFNSOperationQueue *)v7 cancelAllOperationsWithContext:a3 andIdentifier:a4];
}

- (void)widgetView:(id)a3 addHighSpeedOperations:(id)a4 andConsumingOperations:(id)a5
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__OKPageUXViewController_widgetView_addHighSpeedOperations_andConsumingOperations___block_invoke;
  v10[3] = &unk_279C8F980;
  v10[4] = self;
  v10[5] = a3;
  [a4 enumerateObjectsUsingBlock:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__OKPageUXViewController_widgetView_addHighSpeedOperations_andConsumingOperations___block_invoke_2;
  v9[3] = &unk_279C8F980;
  v9[4] = self;
  v9[5] = a3;
  [a5 enumerateObjectsUsingBlock:v9];
  if ([a4 count])
  {
    [(OFNSOperationQueue *)[(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] highSpeedOperationQueue] addOperations:a4 waitUntilFinished:0];
  }

  if ([a5 count])
  {
    [(OFNSOperationQueue *)[(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] consumingOperationQueue] addOperations:a5 waitUntilFinished:0];
  }
}

uint64_t __83__OKPageUXViewController_widgetView_addHighSpeedOperations_andConsumingOperations___block_invoke(uint64_t a1, void *a2)
{
  [a2 setQualityOfService:{objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "presentationViewController"), "highSpeedOperationQueue"), "qualityOfService")}];
  v4 = *(a1 + 40);

  return [a2 setContext:v4];
}

uint64_t __83__OKPageUXViewController_widgetView_addHighSpeedOperations_andConsumingOperations___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 setQualityOfService:{objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "presentationViewController"), "consumingOperationQueue"), "qualityOfService")}];
  v4 = *(a1 + 40);

  return [a2 setContext:v4];
}

- (id)_remoteWidgetsForWidgetView:(id)a3 keyPath:(id)a4
{
  v45[4] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [objc_msgSend(a3 "widget")];
  v9 = v8;
  if (a4)
  {
    v9 = [a4 stringByAppendingFormat:@".%@", v8];
  }

  if (([&unk_287AF2440 containsObject:{objc_msgSend(objc_msgSend(a3, "widget"), "name")}] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(a3, "widget"), "name"), "hasPrefix:", @"media"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44[0] = @"class";
      v44[1] = @"target";
      v45[0] = @"OKWidgetMapView";
      v45[1] = v9;
      v44[2] = @"settings";
      v44[3] = @"info";
      v45[2] = [objc_msgSend(a3 "widget")];
      v45[3] = MEMORY[0x277CBEC10];
      v10 = MEMORY[0x277CBEAC0];
      v11 = v45;
      v12 = v44;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = -[OKPresentation mediaItemForURL:](-[OKPresentationViewControllerProxy presentation](-[OKPageViewController presentationViewController](self, "presentationViewController"), "presentation"), "mediaItemForURL:", [objc_msgSend(a3 "mediaURLs")]);
        v42[0] = @"class";
        v42[1] = @"target";
        v43[0] = @"OKWidgetMediaView";
        v43[1] = v9;
        v42[2] = @"settings";
        v43[2] = [objc_msgSend(a3 "widget")];
        v42[3] = @"info";
        v40[0] = @"mediaItemMetadata";
        v40[1] = @"thumbnails";
        v41[0] = [objc_msgSend(v13 "metadata")];
        v41[1] = UIImageJPEGRepresentation([MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v13, "thumbnailImageForResolution:aspectRatio:scale:quality:colorSpace:", 1, 0, 1.0, 1.0, 1.0)}], 0.3);
        v43[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
        v10 = MEMORY[0x277CBEAC0];
        v11 = v43;
        v12 = v42;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        v38[0] = @"class";
        v38[1] = @"target";
        v39[0] = @"OKWidgetWebView";
        v39[1] = v9;
        v38[2] = @"settings";
        v38[3] = @"info";
        v39[2] = [objc_msgSend(a3 "widget")];
        v39[3] = MEMORY[0x277CBEC10];
        v10 = MEMORY[0x277CBEAC0];
        v11 = v39;
        v12 = v38;
      }
    }

    [v7 setObject:objc_msgSend(v10 forKey:{"dictionaryWithObjects:forKeys:count:", v11, v12, 4), objc_msgSend(objc_msgSend(a3, "widget"), "name")}];
  }

LABEL_12:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = [a3 allActionBindings];
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      v18 = 0;
      do
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (([&unk_287AF2458 containsObject:{objc_msgSend(objc_msgSend(a3, "widget"), "name")}] & 1) != 0 || (objc_msgSend(objc_msgSend(objc_msgSend(a3, "widget"), "name"), "hasPrefix:", @"cloud") & 1) != 0 || (objc_msgSend(objc_msgSend(objc_msgSend(a3, "widget"), "name"), "hasPrefix:", @"hill") & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(a3, "widget"), "name"), "hasPrefix:", @"groundFront"))
        {
          v35[0] = @"class";
          v19 = objc_opt_class();
          v36[0] = NSStringFromClass(v19);
          v36[1] = v9;
          v35[1] = @"target";
          v35[2] = @"info";
          v36[2] = MEMORY[0x277CBEC10];
          [v7 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKey:{"dictionaryWithObjects:forKeys:count:", v36, v35, 3), objc_msgSend(objc_msgSend(a3, "widget"), "name")}];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v16);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = [a3 subWidgetViews];
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      v24 = 0;
      do
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [v7 addEntriesFromDictionary:{-[OKPageUXViewController _remoteWidgetsForWidgetView:keyPath:](self, "_remoteWidgetsForWidgetView:keyPath:", *(*(&v26 + 1) + 8 * v24++), v9)}];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v22);
  }

  return v7;
}

- (id)currentRemoteWidgets
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  widgetViews = self->_widgetViews;
  v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(widgetViews);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 prepareMode] == 1)
        {
          [v3 addEntriesFromDictionary:{-[OKPageUXViewController _remoteWidgetsForWidgetView:keyPath:](self, "_remoteWidgetsForWidgetView:keyPath:", v9, @"deepestDisplayedPage.widgets"}];
        }
      }

      v6 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 isEqualToString:@"widgets"])
  {
    v5 = objc_opt_new();
    [v5 setTag:1];
    [v5 setDataSource:self];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = OKPageUXViewController;
    return [(OKPageViewController *)&v7 valueForUndefinedKey:a3];
  }
}

- (void)setSettingParallaxEnabled:(BOOL)a3
{
  if (self->_parallaxEnabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_parallaxEnabled = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__OKPageUXViewController_setSettingParallaxEnabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateParallax"];
  }
}

- (void)setSettingParallaxRatioX:(double)a3
{
  if (self->_parallaxRatioX != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_parallaxRatioX = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__OKPageUXViewController_setSettingParallaxRatioX___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateParallax"];
  }
}

- (void)setSettingParallaxRatioY:(double)a3
{
  if (self->_parallaxRatioY != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_parallaxRatioY = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__OKPageUXViewController_setSettingParallaxRatioY___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateParallax"];
  }
}

- (void)setSettingDynamicsEnabled:(BOOL)a3
{
  if (self->_dynamicsEnabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_dynamicsEnabled = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__OKPageUXViewController_setSettingDynamicsEnabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateDynamics"];
  }
}

- (void)setSettingDynamicsGravityEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(OKPageUXViewController *)self settingDynamicsGravityEnabled]!= a3)
  {
    dynamicsGravityBehavior = self->_dynamicsGravityBehavior;
    if (dynamicsGravityBehavior)
    {
      [-[UIGravityBehavior dynamicAnimator](dynamicsGravityBehavior "dynamicAnimator")];

      self->_dynamicsGravityBehavior = 0;
    }

    if (v3)
    {
      self->_dynamicsGravityBehavior = objc_alloc_init(MEMORY[0x277D75578]);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__OKPageUXViewController_setSettingDynamicsGravityEnabled___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateDynamics"];
  }
}

- (void)setSettingDynamicsGravityAngle:(float)a3
{
  [(UIGravityBehavior *)self->_dynamicsGravityBehavior angle];
  if (v5 != a3)
  {
    [(UIGravityBehavior *)self->_dynamicsGravityBehavior setAngle:?];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__OKPageUXViewController_setSettingDynamicsGravityAngle___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateDynamics"];
  }
}

- (void)setSettingDynamicsGravityMagnitude:(float)a3
{
  [(UIGravityBehavior *)self->_dynamicsGravityBehavior magnitude];
  if (v5 != a3)
  {
    [(UIGravityBehavior *)self->_dynamicsGravityBehavior setMagnitude:?];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__OKPageUXViewController_setSettingDynamicsGravityMagnitude___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateDynamics"];
  }
}

- (void)setSettingDynamicsGravityMotionDriven:(BOOL)a3
{
  if (self->_dynamicsGravityBehaviorMotionDriven != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_dynamicsGravityBehaviorMotionDriven = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__OKPageUXViewController_setSettingDynamicsGravityMotionDriven___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateDynamics"];
  }
}

- (void)setSettingDynamicsCollisionConfinementEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(OKPageUXViewController *)self settingDynamicsCollisionConfinementEnabled]!= a3)
  {
    dynamicsPageCollisionBehavior = self->_dynamicsPageCollisionBehavior;
    if (dynamicsPageCollisionBehavior)
    {
      [-[UICollisionBehavior dynamicAnimator](dynamicsPageCollisionBehavior "dynamicAnimator")];

      self->_dynamicsPageCollisionBehavior = 0;
    }

    if (v3)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75338]);
      self->_dynamicsPageCollisionBehavior = v6;
      [(UICollisionBehavior *)v6 setCollisionMode:2];
      [(UICollisionBehavior *)self->_dynamicsPageCollisionBehavior setTranslatesReferenceBoundsIntoBoundary:1];
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__OKPageUXViewController_setSettingDynamicsCollisionConfinementEnabled___block_invoke;
    v7[3] = &unk_279C8E818;
    v7[4] = self;
    [OKSettings applyUpdateBlockOnce:v7 forKey:@"updateDynamics"];
  }
}

- (void)setSettingDynamicsPushBehaviors:(id)a3
{
  dynamicsPushBehaviors = self->_dynamicsPushBehaviors;
  if (a3)
  {
    if (!dynamicsPushBehaviors)
    {
      goto LABEL_6;
    }
  }

  else if (!dynamicsPushBehaviors)
  {
    return;
  }

  self->_dynamicsPushBehaviors = 0;
LABEL_6:
  self->_dynamicsPushBehaviors = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__OKPageUXViewController_setSettingDynamicsPushBehaviors___block_invoke;
  v6[3] = &unk_279C8E818;
  v6[4] = self;
  [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateDynamics"];
}

- (void)updateDynamics
{
  if ([(OKPageViewController *)self prepareMode]== 1 || [(OKPageViewController *)self prepareMode]== 2)
  {

    [(OKPageUXViewController *)self reloadDynamics];
  }

  else if ([(OKPageViewController *)self prepareMode]== 3)
  {

    [(OKPageUXViewController *)self resetDynamics];
  }
}

- (void)resetDynamics
{
  v66 = *MEMORY[0x277D85DE8];
  dynamicsAnimator = self->_dynamicsAnimator;
  if (dynamicsAnimator)
  {
    [(UIDynamicAnimator *)dynamicsAnimator removeAllBehaviors];

    self->_dynamicsAnimator = 0;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v4 = [(UIGravityBehavior *)self->_dynamicsGravityBehavior items];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v57;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(UIGravityBehavior *)self->_dynamicsGravityBehavior removeItem:*(*(&v56 + 1) + 8 * i)];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v6);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = [(UICollisionBehavior *)self->_dynamicsPageCollisionBehavior items];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v53;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(UICollisionBehavior *)self->_dynamicsPageCollisionBehavior removeItem:*(*(&v52 + 1) + 8 * j)];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v11);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = [(NSMutableDictionary *)self->_dynamicsWidgetCollisionBehaviors objectEnumerator];
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v48 + 1) + 8 * k);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v20 = [v19 items];
        v21 = [v20 countByEnumeratingWithState:&v44 objects:v62 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v45;
          do
          {
            for (m = 0; m != v22; ++m)
            {
              if (*v45 != v23)
              {
                objc_enumerationMutation(v20);
              }

              [v19 removeItem:*(*(&v44 + 1) + 8 * m)];
            }

            v22 = [v20 countByEnumeratingWithState:&v44 objects:v62 count:16];
          }

          while (v22);
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v48 objects:v63 count:16];
    }

    while (v16);
  }

  [(NSMutableDictionary *)self->_dynamicsWidgetCollisionBehaviors removeAllObjects];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = [(NSMutableDictionary *)self->_dynamicsPushBehaviors objectEnumerator];
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v61 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v40 + 1) + 8 * n);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v31 = [v30 items];
        v32 = [v31 countByEnumeratingWithState:&v36 objects:v60 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v37;
          do
          {
            for (ii = 0; ii != v33; ++ii)
            {
              if (*v37 != v34)
              {
                objc_enumerationMutation(v31);
              }

              [v30 removeItem:*(*(&v36 + 1) + 8 * ii)];
            }

            v33 = [v31 countByEnumeratingWithState:&v36 objects:v60 count:16];
          }

          while (v33);
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v61 count:16];
    }

    while (v27);
  }
}

- (void)reloadDynamics
{
  v83 = *MEMORY[0x277D85DE8];
  [(OKPageUXViewController *)self resetDynamics];
  if (self->_dynamicsEnabled)
  {
    if (!self->_dynamicsAnimator)
    {
      v3 = [objc_alloc(MEMORY[0x277D754B0]) initWithReferenceView:{-[OKPageUXViewController view](self, "view")}];
      self->_dynamicsAnimator = v3;
      [(UIDynamicAnimator *)v3 setDelegate:self];
    }

    v4 = [MEMORY[0x277CBEB38] dictionary];
    [v4 addEntriesFromDictionary:{-[OKPresentationViewControllerProxy dynamicsPushBehaviors](-[OKPageViewController presentationViewController](self, "presentationViewController"), "dynamicsPushBehaviors")}];
    [v4 addEntriesFromDictionary:{-[OKNavigatorViewControllerProxy dynamicsPushBehaviors](-[OKPageViewController navigatorViewController](self, "navigatorViewController"), "dynamicsPushBehaviors")}];
    v48 = v4;
    [v4 addEntriesFromDictionary:self->_dynamicsPushBehaviors];
    obj = objc_alloc_init(MEMORY[0x277CBEB18]);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    widgetViews = self->_widgetViews;
    v6 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v72 objects:v82 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v73;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v73 != v8)
          {
            objc_enumerationMutation(widgetViews);
          }

          v10 = *(*(&v72 + 1) + 8 * i);
          v11 = [v10 dynamicProxy];
          if (v11)
          {
            v12 = v11;
            if ([v11 enabled])
            {
              [v12 resetInitialValues];
              [obj addObject:v12];
            }
          }

          [obj addObjectsFromArray:{objc_msgSend(v10, "subDynamicProxies")}];
        }

        v7 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v72 objects:v82 count:16];
      }

      while (v7);
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v13 = v48;
    v49 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (v49)
    {
      v47 = *v69;
      do
      {
        v14 = 0;
        do
        {
          if (*v69 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v68 + 1) + 8 * v14);
          if (-[OKPageUXViewController settingDynamicsGravityEnabled](self, "settingDynamicsGravityEnabled") && ([v15 gravityDisabled] & 1) == 0)
          {
            [(UIGravityBehavior *)self->_dynamicsGravityBehavior addItem:v15];
          }

          if ([(OKPageUXViewController *)self settingDynamicsCollisionConfinementEnabled])
          {
            [(UICollisionBehavior *)self->_dynamicsPageCollisionBehavior addItem:v15];
          }

          if ([v15 bodyBehavior])
          {
            -[UIDynamicAnimator addBehavior:](self->_dynamicsAnimator, "addBehavior:", [v15 bodyBehavior]);
          }

          v51 = v14;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v16 = [v15 attachmentBehaviors];
          v17 = [v16 countByEnumeratingWithState:&v64 objects:v80 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v65;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v65 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v64 + 1) + 8 * j);
                [v21 updateForOwningDynamicProxy:v15];
                -[UIDynamicAnimator addBehavior:](self->_dynamicsAnimator, "addBehavior:", [v21 behavior]);
              }

              v18 = [v16 countByEnumeratingWithState:&v64 objects:v80 count:16];
            }

            while (v18);
          }

          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v22 = [v15 collisionGroups];
          v23 = [v22 countByEnumeratingWithState:&v60 objects:v79 count:16];
          v24 = 0x280361000uLL;
          if (v23)
          {
            v25 = v23;
            v26 = *v61;
            do
            {
              for (k = 0; k != v25; ++k)
              {
                if (*v61 != v26)
                {
                  objc_enumerationMutation(v22);
                }

                v28 = *(*(&v60 + 1) + 8 * k);
                v29 = *(v24 + 3648);
                v30 = *(&self->super.super.super.super.super.isa + v29);
                if (!v30)
                {
                  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  *(&self->super.super.super.super.super.isa + v29) = v30;
                }

                v31 = [(objc_class *)v30 objectForKeyedSubscript:v28];
                if (v31)
                {
                  [v31 addItem:v15];
                }

                else
                {
                  v32 = objc_alloc(MEMORY[0x277D75338]);
                  v78 = v15;
                  v33 = [v32 initWithItems:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v78, 1)}];
                  [v33 setCollisionDelegate:self];
                  [v33 setCollisionMode:1];
                  [*(&self->super.super.super.super.super.isa + v29) setObject:v33 forKeyedSubscript:v28];
                  [(UIDynamicAnimator *)self->_dynamicsAnimator addBehavior:v33];

                  v24 = 0x280361000;
                }
              }

              v25 = [v22 countByEnumeratingWithState:&v60 objects:v79 count:16];
            }

            while (v25);
          }

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v34 = [v15 pushGroups];
          v35 = [v34 countByEnumeratingWithState:&v56 objects:v77 count:16];
          v13 = v48;
          v36 = MEMORY[0x277D62808];
          if (v35)
          {
            v37 = v35;
            v38 = *v57;
            do
            {
              for (m = 0; m != v37; ++m)
              {
                if (*v57 != v38)
                {
                  objc_enumerationMutation(v34);
                }

                v40 = *(*(&v56 + 1) + 8 * m);
                v41 = [v48 objectForKeyedSubscript:v40];
                if (v41)
                {
                  [v41 addItem:v15];
                }

                else if (*v36 >= 4)
                {
                  [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageUXViewController.m" line:1813 andFormat:@"Dynamics group %@ does not exist", v40];
                }
              }

              v37 = [v34 countByEnumeratingWithState:&v56 objects:v77 count:16];
            }

            while (v37);
          }

          v14 = v51 + 1;
        }

        while (v51 + 1 != v49);
        v49 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
      }

      while (v49);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v42 = [v13 allValues];
    v43 = [v42 countByEnumeratingWithState:&v52 objects:v76 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v53;
      do
      {
        for (n = 0; n != v44; ++n)
        {
          if (*v53 != v45)
          {
            objc_enumerationMutation(v42);
          }

          [(UIDynamicAnimator *)self->_dynamicsAnimator addBehavior:*(*(&v52 + 1) + 8 * n)];
        }

        v44 = [v42 countByEnumeratingWithState:&v52 objects:v76 count:16];
      }

      while (v44);
    }

    if ([(OKPageUXViewController *)self settingDynamicsGravityEnabled])
    {
      [(UIDynamicAnimator *)self->_dynamicsAnimator addBehavior:self->_dynamicsGravityBehavior];
    }

    if ([(OKPageUXViewController *)self settingDynamicsCollisionConfinementEnabled])
    {
      [(UIDynamicAnimator *)self->_dynamicsAnimator addBehavior:self->_dynamicsPageCollisionBehavior];
    }
  }
}

- (void)collisionBehavior:(id)a3 beganContactForItem:(id)a4 withItem:(id)a5 atPoint:(CGPoint)a6
{
  v23 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(NSMutableDictionary *)self->_dynamicsWidgetCollisionBehaviors allKeys];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_dynamicsWidgetCollisionBehaviors objectForKeyedSubscript:{v15), "isEqual:", a3}])
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          v15 = 0;
          break;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = [a4 proxiedObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [a5 proxiedObject];
    }

    else
    {
      v17 = 0;
    }

    [v16 beganCollisionWithWidgetView:v17 fromGroup:v15];
  }
}

+ (void)setupJavascriptContext:(id)a3
{
  v17[4] = *MEMORY[0x277D85DE8];
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKPageUXViewController"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:a3];
  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageUXViewController", "objectForKeyedSubscript:", @"prototype"}];
  v6 = *MEMORY[0x277CD4638];
  v14[0] = *MEMORY[0x277CD4630];
  v5 = v14[0];
  v14[1] = v6;
  v7 = MEMORY[0x277CBEC38];
  v17[0] = &__block_literal_global_8;
  v17[1] = MEMORY[0x277CBEC38];
  v9 = MEMORY[0x277CBEC28];
  v10 = *MEMORY[0x277CD4610];
  v15 = *MEMORY[0x277CD4618];
  v8 = v15;
  v16 = v10;
  v17[2] = MEMORY[0x277CBEC28];
  v17[3] = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"removeWidget" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v17, v14, 4)}];
  v11 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageUXViewController", "objectForKeyedSubscript:", @"prototype"}];
  v12[0] = v5;
  v12[1] = v6;
  v13[0] = &__block_literal_global_293;
  v13[1] = v7;
  v12[2] = v8;
  v12[3] = v10;
  v13[2] = v9;
  v13[3] = v7;
  [v11 defineProperty:@"widgetViewsInRect" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v13, v12, 4)}];
}

uint64_t __49__OKPageUXViewController_setupJavascriptContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v3 removeWidgetView:a2];
}

uint64_t __49__OKPageUXViewController_setupJavascriptContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  [a2 toRect];
  v4 = [v3 widgetViewsInRect:?];

  return [v4 allObjects];
}

- (id)visibleWidgets
{
  v3 = [[(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] currentPageViewController] visibleWidgets];
  v4 = [MEMORY[0x277CBEB18] arrayWithArray:v3];
  [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self navigatorViewController] visiblePageRect];
  [v4 addObjectsFromArray:{objc_msgSend(-[OKPageUXViewController widgetViewsInRect:](self, "widgetViewsInRect:"), "allObjects")}];
  return v4;
}

- (BOOL)hasWidgetFocused
{
  v14 = *MEMORY[0x277D85DE8];
  if (![[(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self subNavigatorViewController] currentPageViewController] hasWidgetFocused])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    widgetViews = self->_widgetViews;
    v3 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (!v3)
    {
      return v3;
    }

    v5 = v3;
    v6 = *v10;
LABEL_6:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(widgetViews);
      }

      if ([*(*(&v9 + 1) + 8 * v7) isFocused])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableArray *)widgetViews countByEnumeratingWithState:&v9 objects:v13 count:16];
        LOBYTE(v3) = 0;
        if (v5)
        {
          goto LABEL_6;
        }

        return v3;
      }
    }
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (CGPoint)lastParallaxOffset
{
  x = self->_lastParallaxOffset.x;
  y = self->_lastParallaxOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end