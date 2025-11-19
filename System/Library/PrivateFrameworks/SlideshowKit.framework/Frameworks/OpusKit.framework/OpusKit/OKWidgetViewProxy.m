@interface OKWidgetViewProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)canPerformAction:(id)a3;
- (BOOL)interactivityEnabled;
- (BOOL)isFocused;
- (BOOL)isReady:(BOOL)a3;
- (BOOL)needsAntialiasing;
- (BOOL)performActionScript:(id)a3 withAction:(id)a4;
- (BOOL)prepareForDisplay:(BOOL)a3;
- (BOOL)prepareForUnload:(BOOL)a3;
- (BOOL)prepareForWarmup:(BOOL)a3;
- (BOOL)sendAction:(id)a3 toTarget:(id)a4;
- (BOOL)settingDynamicsBodyAllowsRotation;
- (CATransform3D)_jsOriginalTransform;
- (CATransform3D)_jsTransform;
- (CGAffineTransform)dynamicsTransform;
- (CGPoint)settingCenter;
- (CGPoint)settingMotionXTiltAnchorPoint;
- (CGPoint)settingMotionYTiltAnchorPoint;
- (CGPoint)settingMotionZTiltAnchorPoint;
- (CGPoint)settingPosition;
- (CGPoint)settingXyTranslation;
- (CGPoint)settingZRotationAnchorPoint;
- (CGRect)borderRect;
- (CGRect)calculateFrame:(CGRect)a3;
- (CGRect)originalFrame;
- (CGRect)settingFrame;
- (CGSize)_focusSize;
- (CGSize)parentLayoutFactor;
- (CGSize)settingMotionXMinMax;
- (CGSize)settingMotionYMinMax;
- (CGSize)settingMotionZMinMax;
- (CGSize)settingShadowOffset;
- (CGSize)settingSize;
- (CGSize)settingXyScale;
- (NSString)description;
- (OKPresentationPage)page;
- (OKPresentationViewController)presentationViewController;
- (OKWidgetViewDelegate)delegate;
- (OKWidgetViewProxy)initWithWidget:(id)a3;
- (UIEdgeInsets)settingBorderEdgeOutsets;
- (UIEdgeInsets)settingBorderImageCapEdgeInsets;
- (UIEdgeInsets)settingEventsInset;
- (double)_localReadyProgress;
- (double)readyProgress:(BOOL)a3;
- (double)remainingPlayDuration;
- (double)settingBorderWidth;
- (double)settingCornerRadius;
- (double)settingDynamicsBodyAngularResistance;
- (double)settingDynamicsBodyDensity;
- (double)settingDynamicsBodyElasticity;
- (double)settingDynamicsBodyFriction;
- (double)settingDynamicsBodyResistance;
- (double)settingShadowRadius;
- (double)settingZPosition;
- (float)contentAspectRatio;
- (id)_preparseLayoutString:(id)a3 targetView:(id *)a4 anchorView:(id *)a5;
- (id)actionBindingForAction:(id)a3 isTouchCountAgnostic:(BOOL)a4;
- (id)addSubWidgetViewWithTemplateName:(id)a3 name:(id)a4 andSettings:(id)a5;
- (id)allActionBindings;
- (id)allKeysForDictionaryProxy:(id)a3;
- (id)dictionaryProxy:(id)a3 objectAtIndexPath:(id)a4;
- (id)dictionaryProxy:(id)a3 objectForKey:(id)a4;
- (id)pageViewController;
- (id)settingActionBindings;
- (id)settingBorderColor;
- (id)settingContentFilters;
- (id)settingObjectForKey:(id)a3;
- (id)settingShadowColor;
- (id)subDynamicProxies;
- (id)subWidgetViewForName:(id)a3 recursively:(BOOL)a4;
- (id)subWidgetViewsInRect:(CGRect)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)countOfDictionaryProxy:(id)a3;
- (void)_animateToFocus:(double)a3 completion:(id)a4;
- (void)_animateToUnfocus:(double)a3 completion:(id)a4;
- (void)_animationToFocus;
- (void)_animationToUnfocus;
- (void)_cancelAllOperations;
- (void)_cancelBorderOperations;
- (void)_completionToFocus:(BOOL)a3;
- (void)_completionToUnfocus:(BOOL)a3;
- (void)_prepareToFocus;
- (void)_prepareToUnfocus;
- (void)_reloadBorderContent;
- (void)_reloadBorderContentInHighQuality:(BOOL)a3;
- (void)addActionBinding:(id)a3 scope:(unint64_t)a4;
- (void)applyLayoutSettings;
- (void)applySettings;
- (void)applySettingsIfNeeded;
- (void)becomeReady;
- (void)beganCollisionWithWidgetView:(id)a3 fromGroup:(id)a4;
- (void)commonInit;
- (void)dealloc;
- (void)dynamicsRemoveSnapping;
- (void)dynamicsSnapToPoint:(CGPoint)a3 withDamping:(double)a4;
- (void)focus:(id)a3;
- (void)focus:(unint64_t)a3 duration:(double)a4 completion:(id)a5;
- (void)instantPause;
- (void)instantResume;
- (void)layoutSubviews;
- (void)networkStatusDidChange:(int64_t)a3;
- (void)notifyWhenBecomesReady:(id)a3;
- (void)pauseContentEffects;
- (void)prefetchMediaURL:(id)a3 identifier:(id)a4;
- (void)prepareContentEffects;
- (void)prepareForMode:(unint64_t)a3 force:(BOOL)a4;
- (void)prepareForRefresh;
- (void)prepareForReload;
- (void)prepareIfNeeded:(BOOL)a3;
- (void)readinessDidChange:(BOOL)a3;
- (void)reloadMediaURL:(id)a3 size:(CGSize)a4 mode:(int64_t)a5 lowQuality:(BOOL)a6 highQuality:(BOOL)a7 identifier:(id)a8 progressHandler:(id)a9 completionHandler:(id)a10;
- (void)removeActionBinding:(id)a3;
- (void)removeAllActionBindings;
- (void)removeAllReadyNotifications;
- (void)resignReady;
- (void)restartContentEffects;
- (void)resumeContentEffects:(BOOL)a3;
- (void)setAntialiasing:(BOOL)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCenterX:(double)a3;
- (void)setCenterY:(double)a3;
- (void)setDynamicsTransform:(CGAffineTransform *)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSettingActionBindings:(id)a3;
- (void)setSettingAlpha:(double)a3;
- (void)setSettingAntialiasing:(BOOL)a3;
- (void)setSettingBorderColor:(id)a3;
- (void)setSettingBorderEdgeOutsets:(UIEdgeInsets)a3;
- (void)setSettingBorderImageCapEdgeInsets:(UIEdgeInsets)a3;
- (void)setSettingBorderImageURL:(id)a3;
- (void)setSettingBorderWidth:(double)a3;
- (void)setSettingCanPerformActionScript:(id)a3;
- (void)setSettingCenter:(CGPoint)a3;
- (void)setSettingContentEffects:(id)a3;
- (void)setSettingContentFilters:(id)a3;
- (void)setSettingCornerRadius:(double)a3;
- (void)setSettingDynamicsAttachments:(id)a3;
- (void)setSettingDynamicsBodyAllowsRotation:(BOOL)a3;
- (void)setSettingDynamicsBodyAngularResistance:(double)a3;
- (void)setSettingDynamicsBodyDensity:(double)a3;
- (void)setSettingDynamicsBodyElasticity:(double)a3;
- (void)setSettingDynamicsBodyFriction:(double)a3;
- (void)setSettingDynamicsBodyResistance:(double)a3;
- (void)setSettingDynamicsCollisionActionScript:(id)a3;
- (void)setSettingDynamicsCollisionGroups:(id)a3;
- (void)setSettingDynamicsEnabled:(BOOL)a3;
- (void)setSettingDynamicsGravityDisabled:(BOOL)a3;
- (void)setSettingDynamicsPushGroups:(id)a3;
- (void)setSettingEventsInset:(UIEdgeInsets)a3;
- (void)setSettingFrame:(CGRect)a3;
- (void)setSettingLayoutSteps:(id)a3;
- (void)setSettingMotionEnabled:(BOOL)a3;
- (void)setSettingMotionTiltXEnabled:(BOOL)a3;
- (void)setSettingMotionTiltYEnabled:(BOOL)a3;
- (void)setSettingMotionTiltZEnabled:(BOOL)a3;
- (void)setSettingMotionXMinMax:(CGSize)a3;
- (void)setSettingMotionXTiltAnchorPoint:(CGPoint)a3;
- (void)setSettingMotionXTiltReversed:(BOOL)a3;
- (void)setSettingMotionYMinMax:(CGSize)a3;
- (void)setSettingMotionYTiltAnchorPoint:(CGPoint)a3;
- (void)setSettingMotionYTiltReversed:(BOOL)a3;
- (void)setSettingMotionZMinMax:(CGSize)a3;
- (void)setSettingMotionZTiltAnchorPoint:(CGPoint)a3;
- (void)setSettingMotionZTiltReversed:(BOOL)a3;
- (void)setSettingParallaxEnabled:(BOOL)a3;
- (void)setSettingPosition:(CGPoint)a3;
- (void)setSettingPrepareActionScript:(id)a3;
- (void)setSettingShadowColor:(id)a3;
- (void)setSettingShadowOffset:(CGSize)a3;
- (void)setSettingShadowOpacity:(double)a3;
- (void)setSettingShadowOptimization:(BOOL)a3;
- (void)setSettingShadowRadius:(double)a3;
- (void)setSettingSize:(CGSize)a3;
- (void)setSettingXFlipped:(BOOL)a3;
- (void)setSettingXyScale:(CGSize)a3;
- (void)setSettingXyTranslation:(CGPoint)a3;
- (void)setSettingYFlipped:(BOOL)a3;
- (void)setSettingZPosition:(double)a3;
- (void)setSettingZRotation:(double)a3;
- (void)setSettingZRotationAnchorPoint:(CGPoint)a3;
- (void)setUserSettingObject:(id)a3 forKey:(id)a4;
- (void)sizeToFit;
- (void)startContentEffects;
- (void)startShowingProgressIndicator;
- (void)stopContentEffects;
- (void)stopShowingProgressIndicator;
- (void)unfocus:(double)a3 completion:(id)a4;
- (void)updateAntialiasing;
- (void)updateContentEffects;
- (void)updateDynamics;
- (void)updateLayoutSteps;
- (void)updateMotion;
- (void)updateParallax;
- (void)updateShadowPath;
- (void)updateTransforms;
- (void)updateWidgetTransforms;
- (void)updateWithMotionTiltRotationX:(double)a3 tiltRotationY:(double)a4 tiltRotationZ:(double)a5;
- (void)updateWithParallaxTranslationX:(double)a3 translationY:(double)a4;
- (void)wobble;
@end

@implementation OKWidgetViewProxy

- (void)commonInit
{
  v21.receiver = self;
  v21.super_class = OKWidgetViewProxy;
  [(OFUIView *)&v21 commonInit];
  self->_needsApplySettings = 1;
  self->_hasSettingsApplied = 0;
  self->_needsZoning = 0;
  self->_prepareMode = 0;
  self->_subWidgetViews = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->_newSubWidgetViews = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->_mediaURLs = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->_shadowOptimization = 1;
  v3 = MEMORY[0x277CD9DE8];
  v4 = *MEMORY[0x277CD9DE8];
  v5 = *(MEMORY[0x277CD9DE8] + 16);
  *&self->_widgetTransform.m11 = *MEMORY[0x277CD9DE8];
  *&self->_widgetTransform.m13 = v5;
  v6 = v3[2];
  v7 = v3[3];
  *&self->_widgetTransform.m21 = v6;
  *&self->_widgetTransform.m23 = v7;
  v9 = v3[6];
  v8 = v3[7];
  *&self->_widgetTransform.m41 = v9;
  *&self->_widgetTransform.m43 = v8;
  v11 = v3[4];
  v10 = v3[5];
  *&self->_widgetTransform.m31 = v11;
  *&self->_widgetTransform.m33 = v10;
  *&self->_motionTransform.m31 = v11;
  *&self->_motionTransform.m33 = v10;
  *&self->_motionTransform.m41 = v9;
  *&self->_motionTransform.m43 = v8;
  *&self->_motionTransform.m11 = v4;
  *&self->_motionTransform.m13 = v5;
  *&self->_motionTransform.m21 = v6;
  *&self->_motionTransform.m23 = v7;
  *&self->_parallaxTransform.m21 = v6;
  *&self->_parallaxTransform.m23 = v7;
  *&self->_parallaxTransform.m11 = v4;
  *&self->_parallaxTransform.m13 = v5;
  *&self->_parallaxTransform.m41 = v9;
  *&self->_parallaxTransform.m43 = v8;
  *&self->_parallaxTransform.m31 = v11;
  *&self->_parallaxTransform.m33 = v10;
  v12 = MEMORY[0x277CBF2C0];
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  *&self->_dynamicsTransform.a = *MEMORY[0x277CBF2C0];
  *&self->_dynamicsTransform.c = v13;
  *&self->_dynamicsTransform.tx = *(v12 + 32);
  __asm { FMOV            V0.2D, #0.5 }

  self->_zRotationAnchorPoint = _Q0;
  __asm { FMOV            V1.2D, #1.0 }

  self->_xyScale = _Q1;
  self->_xyTranslation = *MEMORY[0x277CBF348];
  self->_motionXMinMax = xmmword_269F6AFF0;
  self->_motionYMinMax = xmmword_269F6AFF0;
  self->_motionZMinMax = xmmword_269F6AFF0;
  self->_motionXTiltAnchorPoint = _Q0;
  self->_motionYTiltAnchorPoint = _Q0;
  self->_motionZTiltAnchorPoint = _Q0;
  self->_parallaxEnabled = 1;
  self->_presentationMode = 1;
  self->_focusGestureMode = 1;
  self->_focusGestureHelper = 0;
  __asm { FMOV            V0.2D, #25.0 }

  *&self->_focusGestureInsets.top = _Q0;
  *&self->_focusGestureInsets.bottom = _Q0;
  self->_layoutSteps = 0;
  self->_isReady = 0;
  self->_readyNotificationBlocks = objc_opt_new();
  self->_readyRecursiveLock = objc_alloc_init(MEMORY[0x277CCAC60]);
  self->_actionBindings = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_lastBoundsSize = *MEMORY[0x277CBF3A8];
  [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
}

- (OKWidgetViewProxy)initWithWidget:(id)a3
{
  v4 = [(OFViewProxy *)self initWithFrame:0.0, 0.0, 256.0, 256.0];
  if (v4)
  {
    v4->_widget = a3;
    [a3 parent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_page = [a3 parent];
    }

    [-[OKWidgetViewProxy layer](v4 "layer")];
    [-[OKWidgetViewProxy layer](v4 "layer")];
    [(OKWidgetViewProxy *)v4 setAutoresizingMask:0];
    v5 = [OKWidgetContainerView alloc];
    [(OKWidgetViewProxy *)v4 bounds];
    v6 = [(OFViewProxy *)v5 initWithFrame:?];
    v4->_contentContainerView = v6;
    [(OKWidgetContainerView *)v6 setWidgetView:v4];
    [-[OKWidgetContainerView layer](v4->_contentContainerView "layer")];
    [-[OKWidgetContainerView layer](v4->_contentContainerView "layer")];
    [(OKWidgetContainerView *)v4->_contentContainerView setAutoresizingMask:18];
    [(OKWidgetViewProxy *)v4 addSubview:v4->_contentContainerView];
    v7 = [OKWidgetContainerView alloc];
    [(OKWidgetViewProxy *)v4 bounds];
    v8 = [(OFViewProxy *)v7 initWithFrame:?];
    v4->_contentView = v8;
    [(OKWidgetContainerView *)v8 setWidgetView:v4];
    [-[OKWidgetContainerView layer](v4->_contentView "layer")];
    [-[OKWidgetContainerView layer](v4->_contentView "layer")];
    [(OKWidgetContainerView *)v4->_contentView setAutoresizingMask:18];
    [(OKWidgetContainerView *)v4->_contentContainerView addSubview:v4->_contentView];
    v9 = objc_alloc(MEMORY[0x277D755E8]);
    [(OKWidgetViewProxy *)v4 bounds];
    v10 = [v9 initWithFrame:?];
    v4->_borderView = v10;
    [(UIImageView *)v10 setAutoresizingMask:18];
    [(UIImageView *)v4->_borderView setContentMode:0];
    [(UIImageView *)v4->_borderView setClipsToBounds:0];
    [(UIImageView *)v4->_borderView setUserInteractionEnabled:0];
    [-[UIImageView layer](v4->_borderView "layer")];
    [(OKWidgetViewProxy *)v4 addSubview:v4->_borderView];
    [(OKWidgetViewProxy *)v4 frame];
    v4->_originalFrame.origin.x = v11;
    v4->_originalFrame.origin.y = v12;
    v4->_originalFrame.size.width = v13;
    v4->_originalFrame.size.height = v14;
    if ([[(OKPresentationCanvas *)v4->_widget presentation] enableDisplayDebugging])
    {
      [-[OKWidgetViewProxy layer](v4 "layer")];
      [-[OKWidgetViewProxy layer](v4 "layer")];
      v15 = [(OKWidgetViewProxy *)v4 layer];
      LODWORD(v16) = *"33s?";
      [v15 setOpacity:v16];
      [-[OKWidgetContainerView layer](v4->_contentContainerView "layer")];
      [-[OKWidgetContainerView layer](v4->_contentContainerView "layer")];
      v17 = [(OKWidgetContainerView *)v4->_contentContainerView layer];
      LODWORD(v18) = *"33s?";
      [v17 setOpacity:v18];
      [-[OKWidgetContainerView layer](v4->_contentView "layer")];
      [-[OKWidgetContainerView layer](v4->_contentView "layer")];
      v19 = [(OKWidgetContainerView *)v4->_contentView layer];
      LODWORD(v20) = *"33s?";
      [v19 setOpacity:v20];
      [-[UIImageView layer](v4->_borderView "layer")];
      [-[UIImageView layer](v4->_borderView "layer")];
      v21 = [(UIImageView *)v4->_borderView layer];
      LODWORD(v22) = *"33s?";
      [v21 setOpacity:v22];
    }
  }

  return v4;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  objc_storeWeak(&self->_parentWidgetView, 0);
  objc_storeWeak(&self->_delegate, 0);
  page = self->_page;
  if (page)
  {

    self->_page = 0;
  }

  widget = self->_widget;
  if (widget)
  {

    self->_widget = 0;
  }

  subWidgetViews = self->_subWidgetViews;
  if (subWidgetViews)
  {

    self->_subWidgetViews = 0;
  }

  newSubWidgetViews = self->_newSubWidgetViews;
  if (newSubWidgetViews)
  {

    self->_newSubWidgetViews = 0;
  }

  mediaURLs = self->_mediaURLs;
  if (mediaURLs)
  {

    self->_mediaURLs = 0;
  }

  contentEffects = self->_contentEffects;
  if (contentEffects)
  {

    self->_contentEffects = 0;
  }

  contentContainerView = self->_contentContainerView;
  if (contentContainerView)
  {

    self->_contentContainerView = 0;
  }

  contentView = self->_contentView;
  if (contentView)
  {

    self->_contentView = 0;
  }

  borderView = self->_borderView;
  if (borderView)
  {

    self->_borderView = 0;
  }

  dimmerView = self->_dimmerView;
  if (dimmerView)
  {

    self->_dimmerView = 0;
  }

  focusGestureHelper = self->_focusGestureHelper;
  if (focusGestureHelper)
  {
    if (focusGestureHelper->var0)
    {

      focusGestureHelper = self->_focusGestureHelper;
      focusGestureHelper->var0 = 0;
    }

    var1 = focusGestureHelper->var1;
    if (var1)
    {

      focusGestureHelper = self->_focusGestureHelper;
      focusGestureHelper->var1 = 0;
    }

    free(focusGestureHelper);
    self->_focusGestureHelper = 0;
  }

  prepareActionScript = self->_prepareActionScript;
  if (prepareActionScript)
  {

    self->_prepareActionScript = 0;
  }

  canPerformActionScript = self->_canPerformActionScript;
  if (canPerformActionScript)
  {

    self->_canPerformActionScript = 0;
  }

  dynamicProxy = self->_dynamicProxy;
  if (dynamicProxy)
  {

    self->_dynamicProxy = 0;
  }

  dynamicSnapBehavior = self->_dynamicSnapBehavior;
  if (dynamicSnapBehavior)
  {
    [-[UISnapBehavior dynamicAnimator](dynamicSnapBehavior "dynamicAnimator")];

    self->_dynamicSnapBehavior = 0;
  }

  layoutSteps = self->_layoutSteps;
  if (layoutSteps)
  {

    self->_layoutSteps = 0;
  }

  [(OKWidgetViewProxy *)self removeAllActionBindings];
  actionBindings = self->_actionBindings;
  if (actionBindings)
  {

    self->_actionBindings = 0;
  }

  readyNotificationBlocks = self->_readyNotificationBlocks;
  if (readyNotificationBlocks)
  {

    self->_readyNotificationBlocks = 0;
  }

  readyRecursiveLock = self->_readyRecursiveLock;
  if (readyRecursiveLock)
  {

    self->_readyRecursiveLock = 0;
  }

  [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  v23.receiver = self;
  v23.super_class = OKWidgetViewProxy;
  [(OFUIView *)&v23 dealloc];
}

- (OKWidgetViewDelegate)delegate
{
  if ([(OKWidgetViewProxy *)self parentWidgetView])
  {
    v3 = [(OKWidgetViewProxy *)self parentWidgetView];

    return [(OKWidgetViewProxy *)v3 delegate];
  }

  else
  {

    return objc_loadWeak(&self->_delegate);
  }
}

- (OKPresentationPage)page
{
  if (![(OKWidgetViewProxy *)self parentWidgetView])
  {
    return self->_page;
  }

  v3 = [(OKWidgetViewProxy *)self parentWidgetView];

  return [(OKWidgetViewProxy *)v3 page];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(OKPresentationCanvas *)self->_widget name];
  v8.receiver = self;
  v8.super_class = OKWidgetViewProxy;
  return [v3 stringWithFormat:@"WIDGET VIEW %@ %@: %@", v5, v6, -[OKWidgetViewProxy description](&v8, sel_description)];
}

- (OKPresentationViewController)presentationViewController
{
  v2 = [-[OKWidgetViewDelegate pageViewForWidgetView:](-[OKWidgetViewProxy delegate](self "delegate")];

  return [v2 presentationViewController];
}

- (id)pageViewController
{
  v2 = [(OKWidgetViewDelegate *)[(OKWidgetViewProxy *)self delegate] pageViewForWidgetView:self];

  return [v2 pageViewController];
}

- (id)subWidgetViewForName:(id)a3 recursively:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subWidgetViews = self->_subWidgetViews;
  result = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(subWidgetViews);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if ([objc_msgSend(objc_msgSend(v11 "widget")])
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
      result = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)subWidgetViewsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subWidgetViews = self->_subWidgetViews;
  v10 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(subWidgetViews);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        [v14 frame];
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = height;
        if (CGRectIntersectsRect(v22, v23))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(OKWidgetViewProxy *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = OKWidgetViewProxy;
  [(OKWidgetViewProxy *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(OKWidgetViewProxy *)self updateShadowPath];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(OKWidgetViewProxy *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = OKWidgetViewProxy;
  [(OKWidgetViewProxy *)&v13 setFrame:x, y, width, height];
  [(OFViewProxy *)self->_contentView setAnchorPoint:0.5, 0.5];
  [(OFViewProxy *)self setAnchorPoint:0.5, 0.5];
  if (v9 != width || v11 != height)
  {
    [(OKWidgetViewProxy *)self updateShadowPath];
  }
}

- (void)sizeToFit
{
  [(OKWidgetViewProxy *)self center];
  v4 = v3;
  v6 = v5;
  v7.receiver = self;
  v7.super_class = OKWidgetViewProxy;
  [(OKWidgetViewProxy *)&v7 sizeToFit];
  [(OKWidgetViewProxy *)self setCenter:v4, v6];
}

- (CGRect)borderRect
{
  [(OKWidgetViewProxy *)self bounds];
  v4 = v3 - self->_borderEdgeOutsets.left;
  [(OKWidgetViewProxy *)self bounds];
  v6 = v5 - self->_borderEdgeOutsets.top;
  [(OKWidgetViewProxy *)self bounds];
  v8 = v7;
  [(OKWidgetViewProxy *)self bounds];
  v10 = self->_borderEdgeOutsets.right + self->_borderEdgeOutsets.left + v8 - v9;
  [(OKWidgetViewProxy *)self bounds];
  v12 = v11;
  [(OKWidgetViewProxy *)self bounds];
  v14 = self->_borderEdgeOutsets.bottom + self->_borderEdgeOutsets.top + v12 - v13;
  v15 = v4;
  v16 = v6;
  v17 = v10;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)layoutSubviews
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = OKWidgetViewProxy;
  [(OFViewProxy *)&v18 layoutSubviews];
  [(OKWidgetViewProxy *)self bounds];
  height = self->_lastBoundsSize.height;
  if (self->_lastBoundsSize.width != v5 || height != v3)
  {
    if (self->_hasSettingsApplied)
    {
      [(OKWidgetViewProxy *)self borderRect:self->_lastBoundsSize.width];
      [(UIImageView *)self->_borderView setFrame:?];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      subWidgetViews = self->_subWidgetViews;
      v8 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(subWidgetViews);
            }

            [*(*(&v14 + 1) + 8 * i) applyLayoutSettings];
          }

          v9 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v9);
      }
    }

    [(OKWidgetViewProxy *)self bounds];
    self->_lastBoundsSize.width = v12;
    self->_lastBoundsSize.height = v13;
  }
}

- (CGSize)parentLayoutFactor
{
  if ([(OKWidgetViewProxy *)self parentWidgetView])
  {
    v3 = [(OKWidgetViewProxy *)self parentWidgetView];
  }

  else
  {
    v3 = [(OKWidgetViewProxy *)self pageViewController];
  }

  [(OKWidgetViewProxy *)v3 layoutFactor];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setCenterX:(double)a3
{
  [(OKWidgetViewProxy *)self center];

  [(OKWidgetViewProxy *)self setCenter:a3];
}

- (void)setCenterY:(double)a3
{
  [(OKWidgetViewProxy *)self center];

  [(OKWidgetViewProxy *)self setCenter:?];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if ([a3 isEqualToString:@"shadowPath"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"shadowOffset") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"shadowRadius") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"shadowOpacity") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"shadowColor"))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = OKWidgetViewProxy;
  return [(OKWidgetViewProxy *)&v6 _shouldAnimatePropertyWithKey:a3];
}

- (void)applySettingsIfNeeded
{
  if (self->_needsApplySettings || !self->_hasSettingsApplied)
  {
    [(OKWidgetViewProxy *)self layoutIfNeeded];

    [(OKWidgetViewProxy *)self applySettings];
  }
}

- (void)applySettings
{
  [(OKWidgetViewProxy *)self removeAllActionBindings];
  [-[OFUIView layer](-[OKWidgetViewProxy contentView](self "contentView")];
  [OKSettings resetAndApplySettings:[(OKPresentationCanvas *)self->_widget settings] toObject:self withResolution:[(OKWidgetViewDelegate *)[(OKWidgetViewProxy *)self delegate] widgetViewResolution:self]];
  [(NSMutableArray *)self->_subWidgetViews makeObjectsPerformSelector:sel_applySettings];
  self->_needsApplySettings = 0;
  self->_hasSettingsApplied = 1;
}

- (void)applyLayoutSettings
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(OKWidgetViewProxy *)self layoutSettingsKeys];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [(OKPresentationCanvas *)self->_widget mergedSettings];
        v10 = [v9 objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"@%@", v8)}];
        if (v10)
        {
          v11 = v10;
          v12 = @"@%@";
        }

        else
        {
          v13 = [(OKPresentationCanvas *)self->_widget mergedSettings];
          v14 = [v13 objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@", v8)}];
          if (!v14)
          {
            goto LABEL_11;
          }

          v11 = v14;
          v12 = @"%@";
        }

        [v3 setObject:v11 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", v12, v8)}];
LABEL_11:
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  +[OKSettings beginApplyingSettings];
  [OKSettings applySettings:v3 toObject:self withResolution:[(OKWidgetViewDelegate *)[(OKWidgetViewProxy *)self delegate] widgetViewResolution:self]];
  +[OKSettings commitApplyingSettings];
}

+ (id)supportedSettings
{
  v139[63] = *MEMORY[0x277D85DE8];
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v138[0] = @"frame";
  v136[0] = @"type";
  v136[1] = @"priority";
  v137[0] = &unk_287AF0920;
  v137[1] = &unk_287AF0938;
  v136[2] = @"jsExport";
  v137[2] = @"readonly";
  v139[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:3];
  v138[1] = @"center";
  v134[0] = @"type";
  v134[1] = @"priority";
  v135[0] = &unk_287AF0950;
  v135[1] = &unk_287AF0968;
  v134[2] = @"jsExport";
  v135[2] = @"readwrite";
  v139[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:3];
  v138[2] = @"size";
  v132[0] = @"type";
  v132[1] = @"priority";
  v133[0] = &unk_287AF0980;
  v133[1] = &unk_287AF0998;
  v132[2] = @"jsExport";
  v133[2] = @"readwrite";
  v139[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:3];
  v138[3] = @"position";
  v130[0] = @"type";
  v130[1] = @"priority";
  v131[0] = &unk_287AF0950;
  v131[1] = &unk_287AF0968;
  v130[2] = @"jsExport";
  v131[2] = @"readwrite";
  v139[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:3];
  v138[4] = @"zPosition";
  v128[0] = @"type";
  v128[1] = @"default";
  v129[0] = &unk_287AF09B0;
  v129[1] = &unk_287AF09C8;
  v128[2] = @"jsExport";
  v129[2] = @"readwrite";
  v139[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:3];
  v138[5] = @"alpha";
  v126[0] = @"type";
  v126[1] = @"default";
  v127[0] = &unk_287AF09B0;
  v127[1] = &unk_287AF22F8;
  v126[2] = @"jsExport";
  v127[2] = @"readwrite";
  v139[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:3];
  v138[6] = @"hidden";
  v124[0] = @"type";
  v124[1] = @"jsExport";
  v125[0] = &unk_287AF09E0;
  v125[1] = @"writeonly";
  v139[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:2];
  v138[7] = @"needsZoning";
  v122[0] = @"type";
  v122[1] = @"default";
  v123[0] = &unk_287AF09E0;
  v123[1] = MEMORY[0x277CBEC28];
  v2 = MEMORY[0x277CBEC28];
  v139[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];
  v138[8] = @"backgroundColor";
  v121[0] = &unk_287AF09F8;
  v120[0] = @"type";
  v120[1] = @"default";
  v120[2] = @"jsExport";
  v121[1] = [MEMORY[0x277D75348] clearColor];
  v121[2] = @"readwrite";
  v139[8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:3];
  v138[9] = @"cornerRadius";
  v118[0] = @"type";
  v118[1] = @"default";
  v119[0] = &unk_287AF09B0;
  v119[1] = &unk_287AF2308;
  v139[9] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:2];
  v138[10] = @"clipsToBounds";
  v116[0] = @"type";
  v116[1] = @"default";
  v117[0] = &unk_287AF09E0;
  v117[1] = MEMORY[0x277CBEC38];
  v3 = MEMORY[0x277CBEC38];
  v139[10] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:2];
  v138[11] = @"userInteractionEnabled";
  v114[0] = @"type";
  v114[1] = @"default";
  v115[0] = &unk_287AF09E0;
  v115[1] = v3;
  v114[2] = @"jsExport";
  v115[2] = @"readwrite";
  v139[11] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:3];
  v138[12] = @"antialiasing";
  v112[0] = @"type";
  v112[1] = @"default";
  v113[0] = &unk_287AF09E0;
  v113[1] = v2;
  v139[12] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:2];
  v138[13] = @"prepareActionScript";
  v111[0] = &unk_287AF0A10;
  v110[0] = @"type";
  v110[1] = @"default";
  v111[1] = [MEMORY[0x277CBEB68] null];
  v139[13] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];
  v138[14] = @"canPerformActionScript";
  v109[0] = &unk_287AF0A10;
  v108[0] = @"type";
  v108[1] = @"default";
  v109[1] = [MEMORY[0x277CBEB68] null];
  v139[14] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
  v138[15] = @"eventsInset";
  v107[0] = &unk_287AF0A28;
  v106[0] = @"type";
  v106[1] = @"default";
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v107[1] = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{*MEMORY[0x277D768C8], v5, v6, v7}];
  v139[15] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
  v138[16] = @"ignoreEventsOnTransparentPixels";
  v104[0] = @"type";
  v104[1] = @"default";
  v105[0] = &unk_287AF09E0;
  v105[1] = v2;
  v139[16] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
  v138[17] = @"actionBindings";
  v103[0] = &unk_287AF0A40;
  v102[0] = @"type";
  v102[1] = @"class";
  v103[1] = objc_opt_class();
  v102[2] = @"default";
  v103[2] = [MEMORY[0x277CBEB68] null];
  v139[17] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:3];
  v138[18] = @"shadowColor";
  v101[0] = &unk_287AF09F8;
  v100[0] = @"type";
  v100[1] = @"default";
  v100[2] = @"jsExport";
  v101[1] = [MEMORY[0x277D75348] clearColor];
  v101[2] = @"readwrite";
  v139[18] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:3];
  v138[19] = @"shadowRadius";
  v98[0] = @"type";
  v98[1] = @"default";
  v99[0] = &unk_287AF09B0;
  v99[1] = &unk_287AF2308;
  v98[2] = @"jsExport";
  v99[2] = @"readwrite";
  v139[19] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:3];
  v138[20] = @"shadowOpacity";
  v96[0] = @"type";
  v96[1] = @"default";
  v97[0] = &unk_287AF09B0;
  v97[1] = &unk_287AF2308;
  v96[2] = @"jsExport";
  v97[2] = @"readwrite";
  v139[20] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:3];
  v138[21] = @"shadowOffset";
  v95[0] = &unk_287AF0980;
  v94[0] = @"type";
  v94[1] = @"default";
  v94[2] = @"jsExport";
  v95[1] = [MEMORY[0x277CCAE60] valueWithCGSize:{0.0, -3.0}];
  v95[2] = @"readwrite";
  v139[21] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:3];
  v138[22] = @"shadowOptimization";
  v92[0] = @"type";
  v92[1] = @"default";
  v93[0] = &unk_287AF09E0;
  v93[1] = MEMORY[0x277CBEC38];
  v139[22] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
  v138[23] = @"borderColor";
  v91[0] = &unk_287AF09F8;
  v90[0] = @"type";
  v90[1] = @"default";
  v90[2] = @"jsExport";
  v91[1] = [MEMORY[0x277D75348] blackColor];
  v91[2] = @"readwrite";
  v139[23] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:3];
  v138[24] = @"borderWidth";
  v88[0] = @"type";
  v88[1] = @"default";
  v89[0] = &unk_287AF09B0;
  v89[1] = &unk_287AF2308;
  v139[24] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v138[25] = @"borderEdgeOutsets";
  v87[0] = &unk_287AF0A28;
  v86[0] = @"type";
  v86[1] = @"default";
  v87[1] = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v4, v5, v6, v7}];
  v139[25] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
  v138[26] = @"borderImageURL";
  v85[0] = &unk_287AF0A58;
  v84[0] = @"type";
  v84[1] = @"default";
  v85[1] = [MEMORY[0x277CBEB68] null];
  v139[26] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
  v138[27] = @"borderImageCapEdgeInsets";
  v83[0] = &unk_287AF0A28;
  v82[0] = @"type";
  v82[1] = @"default";
  v83[1] = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v4, v5, v6, v7}];
  v139[27] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
  v138[28] = @"contentFilters";
  v80[0] = @"type";
  v80[1] = @"jsExport";
  v81[0] = &unk_287AF0A70;
  v81[1] = @"readwrite";
  v80[2] = @"default";
  v81[2] = [MEMORY[0x277CBEB68] null];
  v139[28] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
  v138[29] = @"contentEffects";
  v79[0] = &unk_287AF0A70;
  v78[0] = @"type";
  v78[1] = @"class";
  v79[1] = objc_opt_class();
  v78[2] = @"default";
  v79[2] = [MEMORY[0x277CBEB68] null];
  v139[29] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:3];
  v138[30] = @"zRotation";
  v76[0] = @"type";
  v76[1] = @"default";
  v77[0] = &unk_287AF0A88;
  v77[1] = &unk_287AF2308;
  v76[2] = @"jsExport";
  v77[2] = @"readwrite";
  v139[30] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v138[31] = @"zRotationAnchorPoint";
  v75[0] = &unk_287AF0950;
  v74[0] = @"type";
  v74[1] = @"default";
  v74[2] = @"jsExport";
  v75[1] = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.5, 0.5}];
  v75[2] = @"readwrite";
  v139[31] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:3];
  v138[32] = @"xFlipped";
  v72[0] = @"type";
  v72[1] = @"default";
  v73[0] = &unk_287AF09E0;
  v8 = MEMORY[0x277CBEC28];
  v73[1] = MEMORY[0x277CBEC28];
  v72[2] = @"jsExport";
  v73[2] = @"readwrite";
  v139[32] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:3];
  v138[33] = @"yFlipped";
  v70[0] = @"type";
  v70[1] = @"default";
  v71[0] = &unk_287AF09E0;
  v71[1] = v8;
  v70[2] = @"jsExport";
  v71[2] = @"readwrite";
  v139[33] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:3];
  v138[34] = @"xyScale";
  v69[0] = &unk_287AF0980;
  v68[0] = @"type";
  v68[1] = @"default";
  v68[2] = @"jsExport";
  v69[1] = [MEMORY[0x277CCAE60] valueWithCGSize:{1.0, 1.0}];
  v69[2] = @"readwrite";
  v139[34] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:3];
  v138[35] = @"xyTranslation";
  v67[0] = &unk_287AF0950;
  v66[0] = @"type";
  v66[1] = @"default";
  v66[2] = @"jsExport";
  v67[1] = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 0.0}];
  v67[2] = @"readwrite";
  v139[35] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
  v138[36] = @"motionEnabled";
  v64[0] = @"type";
  v64[1] = @"default";
  v65[0] = &unk_287AF09E0;
  v65[1] = v8;
  v139[36] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
  v138[37] = @"motionTiltXEnabled";
  v62[0] = @"type";
  v62[1] = @"default";
  v63[0] = &unk_287AF09E0;
  v63[1] = v8;
  v139[37] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
  v138[38] = @"motionTiltYEnabled";
  v60[0] = @"type";
  v60[1] = @"default";
  v61[0] = &unk_287AF09E0;
  v61[1] = v8;
  v139[38] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
  v138[39] = @"motionTiltZEnabled";
  v58[0] = @"type";
  v58[1] = @"default";
  v59[0] = &unk_287AF09E0;
  v59[1] = v8;
  v139[39] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
  v138[40] = @"motionXMinMax";
  v57[0] = &unk_287AF0980;
  v56[0] = @"type";
  v56[1] = @"default";
  v57[1] = [MEMORY[0x277CCAE60] valueWithCGSize:{-0.392699082, 0.392699082}];
  v139[40] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
  v138[41] = @"motionYMinMax";
  v55[0] = &unk_287AF0980;
  v54[0] = @"type";
  v54[1] = @"default";
  v55[1] = [MEMORY[0x277CCAE60] valueWithCGSize:{-0.392699082, 0.392699082}];
  v139[41] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
  v138[42] = @"motionZMinMax";
  v53[0] = &unk_287AF0980;
  v52[0] = @"type";
  v52[1] = @"default";
  v53[1] = [MEMORY[0x277CCAE60] valueWithCGSize:{-0.392699082, 0.392699082}];
  v139[42] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  v138[43] = @"motionXTiltAnchorPoint";
  v51[0] = &unk_287AF0950;
  v50[0] = @"type";
  v50[1] = @"default";
  v51[1] = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.5, 0.5}];
  v139[43] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  v138[44] = @"motionYTiltAnchorPoint";
  v49[0] = &unk_287AF0950;
  v48[0] = @"type";
  v48[1] = @"default";
  v49[1] = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.5, 0.5}];
  v139[44] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v138[45] = @"motionZTiltAnchorPoint";
  v47[0] = &unk_287AF0950;
  v46[0] = @"type";
  v46[1] = @"default";
  v47[1] = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.5, 0.5}];
  v139[45] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v138[46] = @"motionXTiltReversed";
  v44[0] = @"type";
  v44[1] = @"default";
  v45[0] = &unk_287AF09E0;
  v45[1] = v8;
  v139[46] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v138[47] = @"motionYTiltReversed";
  v42[0] = @"type";
  v42[1] = @"default";
  v43[0] = &unk_287AF09E0;
  v43[1] = v8;
  v139[47] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v138[48] = @"motionZTiltReversed";
  v40[0] = @"type";
  v40[1] = @"default";
  v41[0] = &unk_287AF09E0;
  v41[1] = v8;
  v139[48] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v138[49] = @"parallaxEnabled";
  v38[0] = @"type";
  v38[1] = @"default";
  v39[0] = &unk_287AF09E0;
  v9 = MEMORY[0x277CBEC38];
  v39[1] = MEMORY[0x277CBEC38];
  v139[49] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v138[50] = @"dynamicsEnabled";
  v36[0] = @"type";
  v36[1] = @"default";
  v37[0] = &unk_287AF09E0;
  v37[1] = v8;
  v139[50] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v138[51] = @"dynamicsGravityDisabled";
  v34[0] = @"type";
  v34[1] = @"default";
  v35[0] = &unk_287AF09E0;
  v35[1] = v8;
  v139[51] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v138[52] = @"dynamicsBodyElasticity";
  v32[0] = @"type";
  v32[1] = @"default";
  v33[0] = &unk_287AF09B0;
  v33[1] = &unk_287AF2308;
  v139[52] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v138[53] = @"dynamicsBodyFriction";
  v30[0] = @"type";
  v30[1] = @"default";
  v31[0] = &unk_287AF09B0;
  v31[1] = &unk_287AF2308;
  v139[53] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v138[54] = @"dynamicsBodyDensity";
  v28[0] = @"type";
  v28[1] = @"default";
  v29[0] = &unk_287AF09B0;
  v29[1] = &unk_287AF2308;
  v139[54] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v138[55] = @"dynamicsBodyResistance";
  v26[0] = @"type";
  v26[1] = @"default";
  v27[0] = &unk_287AF09B0;
  v27[1] = &unk_287AF2308;
  v139[55] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v138[56] = @"dynamicsBodyAngularResistance";
  v24[0] = @"type";
  v24[1] = @"default";
  v25[0] = &unk_287AF09B0;
  v25[1] = &unk_287AF2308;
  v139[56] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v138[57] = @"dynamicsBodyAllowsRotation";
  v22[0] = @"type";
  v22[1] = @"default";
  v23[0] = &unk_287AF09E0;
  v23[1] = v9;
  v139[57] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v138[58] = @"dynamicsCollisionGroups";
  v20[1] = @"default";
  v21[0] = &unk_287AF0AA0;
  v20[0] = @"type";
  v21[1] = [MEMORY[0x277CBEB68] null];
  v139[58] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v138[59] = @"dynamicsCollisionActionScript";
  v18[1] = @"default";
  v19[0] = &unk_287AF0A10;
  v18[0] = @"type";
  v19[1] = [MEMORY[0x277CBEB68] null];
  v139[59] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v138[60] = @"dynamicsPushGroups";
  v16[1] = @"default";
  v17[0] = &unk_287AF0AA0;
  v16[0] = @"type";
  v17[1] = [MEMORY[0x277CBEB68] null];
  v139[60] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v138[61] = @"dynamicsAttachments";
  v15[0] = &unk_287AF0AB8;
  v14[0] = @"type";
  v14[1] = @"class";
  v15[1] = objc_opt_class();
  v14[2] = @"default";
  v15[2] = [MEMORY[0x277CBEB68] null];
  v139[61] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v138[62] = @"layoutSteps";
  v12[1] = @"default";
  v13[0] = &unk_287AF0AA0;
  v12[0] = @"type";
  v13[1] = [MEMORY[0x277CBEB68] null];
  v139[62] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v11 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v139, v138, 63)}];
  return v11;
}

- (id)settingObjectForKey:(id)a3
{
  result = [(OKWidgetViewProxy *)self subWidgetViewForName:a3 recursively:0];
  if (!result)
  {
    v6 = objc_opt_class();
    if (class_conformsToProtocol(v6, &unk_287B3DF80))
    {

      return [(OKWidgetViewProxy *)self collectionItemForName:a3];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setUserSettingObject:(id)a3 forKey:(id)a4
{
  v6 = [(OKPresentationCanvas *)self->_widget userSettings];

  [(NSMutableDictionary *)v6 setObject:a3 forKey:a4];
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 isEqualToString:@"widgets"])
  {
    v5 = objc_opt_new();
    v6 = v5;
    v7 = 1;
LABEL_7:
    [v5 setTag:v7];
    [v6 setDataSource:self];

    return v6;
  }

  if ([a3 isEqualToString:@"items"])
  {
    v5 = objc_opt_new();
    v6 = v5;
    v7 = 2;
    goto LABEL_7;
  }

  if ([a3 isEqualToString:@"userData"])
  {
    v5 = objc_opt_new();
    v6 = v5;
    v7 = 3;
    goto LABEL_7;
  }

  if ([a3 isEqualToString:@"parentPage"])
  {

    return [(OKWidgetViewProxy *)self pageViewController];
  }

  else if ([a3 isEqualToString:@"parentWidget"])
  {

    return [(OKWidgetViewProxy *)self parentWidgetView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = OKWidgetViewProxy;
    return [(OKWidgetViewProxy *)&v9 valueForUndefinedKey:a3];
  }
}

- (CGRect)originalFrame
{
  x = self->_originalFrame.origin.x;
  y = self->_originalFrame.origin.y;
  width = self->_originalFrame.size.width;
  height = self->_originalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)settingFrame
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = v3;
  v6 = v5;
  [(OKWidgetViewProxy *)self frame];
  v8 = v7 / v4;
  [(OKWidgetViewProxy *)self frame];
  v10 = v9 / v6;
  [(OKWidgetViewProxy *)self frame];
  v12 = v11 / v4;
  [(OKWidgetViewProxy *)self frame];
  v14 = v13 / v6;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)calculateFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(OKWidgetViewProxy *)self layoutFactor];
  v9 = x * v8;
  v11 = y * v10;
  v12 = width * v8;
  v13 = height * v10;
  [(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentationViewScale];
  if (v14 == 1.0)
  {
    v19.origin.x = v9;
    v19.origin.y = v11;
    v19.size.width = v12;
    v19.size.height = v13;
    v20 = CGRectIntegral(v19);
    v9 = v20.origin.x;
    v11 = v20.origin.y;
    v12 = v20.size.width;
    v13 = v20.size.height;
  }

  v15 = v9;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)setSettingFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(OKWidgetViewProxy *)self layer];
  v9 = *(MEMORY[0x277CD9DE8] + 80);
  v18[4] = *(MEMORY[0x277CD9DE8] + 64);
  v18[5] = v9;
  v10 = *(MEMORY[0x277CD9DE8] + 112);
  v18[6] = *(MEMORY[0x277CD9DE8] + 96);
  v18[7] = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 16);
  v18[0] = *MEMORY[0x277CD9DE8];
  v18[1] = v11;
  v12 = *(MEMORY[0x277CD9DE8] + 48);
  v18[2] = *(MEMORY[0x277CD9DE8] + 32);
  v18[3] = v12;
  [v8 setTransform:v18];
  [(OKWidgetViewProxy *)self calculateFrame:x, y, width, height];
  [(OKWidgetViewProxy *)self setFrame:?];
  [(OKWidgetViewProxy *)self frame];
  self->_originalFrame.origin.x = v13;
  self->_originalFrame.origin.y = v14;
  self->_originalFrame.size.width = v15;
  self->_originalFrame.size.height = v16;
  if (![(OKWidgetViewProxy *)self parentWidgetView])
  {
    [-[OKWidgetViewProxy pageViewController](self "pageViewController")];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__OKWidgetViewProxy_setSettingFrame___block_invoke;
  v17[3] = &unk_279C8E818;
  v17[4] = self;
  [OKSettings applyUpdateBlockOnce:v17 forKey:@"updateTransforms"];
}

- (CGPoint)settingCenter
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = v3;
  v6 = v5;
  [(OKWidgetViewProxy *)self center];
  v8 = v7 / v4;
  [(OKWidgetViewProxy *)self center];
  v10 = v9 / v6;
  v11 = v8;
  result.y = v10;
  result.x = v11;
  return result;
}

- (void)setSettingCenter:(CGPoint)a3
{
  x = a3.x;
  y = a3.y;
  [(OKWidgetViewProxy *)self layoutFactor];
  v4.f64[0] = x;
  v4.f64[1] = y;
  v6.f64[1] = v5;
  v7 = vrndmq_f64(vmulq_f64(v4, v6));
  __asm { FMOV            V2.2D, #-0.5 }

  self->_originalFrame.origin = vaddq_f64(v7, vmulq_f64(self->_originalFrame.size, _Q2));
  [(OKWidgetViewProxy *)self setCenter:*&v7];
  if (![(OKWidgetViewProxy *)self parentWidgetView])
  {
    [-[OKWidgetViewProxy pageViewController](self "pageViewController")];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__OKWidgetViewProxy_setSettingCenter___block_invoke;
  v15[3] = &unk_279C8E818;
  v15[4] = self;
  [OKSettings applyUpdateBlockOnce:v15 forKey:@"updateTransforms"];
}

- (CGSize)settingSize
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = v3;
  v6 = v5;
  [(OKWidgetViewProxy *)self bounds];
  v8 = v7 / v4;
  [(OKWidgetViewProxy *)self bounds];
  v10 = v9 / v6;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)setSettingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(OKWidgetViewProxy *)self layoutFactor];
  v7 = v6;
  v9 = v8;
  [(OKWidgetViewProxy *)self frame];
  v11 = v10;
  [(OKWidgetViewProxy *)self frame];
  self->_originalFrame.origin.x = v11;
  self->_originalFrame.origin.y = v12;
  self->_originalFrame.size.width = ceil(width * v7);
  self->_originalFrame.size.height = ceil(height * v9);
  [(OKWidgetViewProxy *)self setBounds:0.0, 0.0];
  if (![(OKWidgetViewProxy *)self parentWidgetView])
  {
    [-[OKWidgetViewProxy pageViewController](self "pageViewController")];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__OKWidgetViewProxy_setSettingSize___block_invoke;
  v13[3] = &unk_279C8E818;
  v13[4] = self;
  [OKSettings applyUpdateBlockOnce:v13 forKey:@"updateTransforms"];
}

- (CGPoint)settingPosition
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = v3;
  v6 = v5;
  [(OKWidgetViewProxy *)self frame];
  v8 = v7 / v4;
  [(OKWidgetViewProxy *)self frame];
  v10 = v9 / v6;
  v11 = v8;
  result.y = v10;
  result.x = v11;
  return result;
}

- (void)setSettingPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(OKWidgetViewProxy *)self layoutFactor];
  v7 = floor(x * v6);
  v9 = floor(y * v8);
  [(OKWidgetViewProxy *)self frame];
  v11 = v10;
  [(OKWidgetViewProxy *)self frame];
  self->_originalFrame.origin.x = v7;
  self->_originalFrame.origin.y = v9;
  self->_originalFrame.size.width = v11;
  self->_originalFrame.size.height = v12;
  [(OKWidgetViewProxy *)self bounds];
  v14 = v7 + floor(v13 * 0.5);
  v15 = self->_originalFrame.origin.y;
  [(OKWidgetViewProxy *)self bounds];
  [(OKWidgetViewProxy *)self setCenter:v14, v15 + floor(v16 * 0.5)];
  if (![(OKWidgetViewProxy *)self parentWidgetView])
  {
    [-[OKWidgetViewProxy pageViewController](self "pageViewController")];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__OKWidgetViewProxy_setSettingPosition___block_invoke;
  v17[3] = &unk_279C8E818;
  v17[4] = self;
  [OKSettings applyUpdateBlockOnce:v17 forKey:@"updateTransforms"];
}

- (double)settingZPosition
{
  v2 = [(OKWidgetViewProxy *)self layer];

  [v2 zPosition];
  return result;
}

- (void)setSettingZPosition:(double)a3
{
  [-[OKWidgetViewProxy layer](self "layer")];
  if (v5 != a3)
  {
    [-[OKWidgetViewProxy layer](self "layer")];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__OKWidgetViewProxy_setSettingZPosition___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateParallax"];
    if (![(OKWidgetViewProxy *)self parentWidgetView])
    {
      if ([-[OKWidgetViewProxy pageViewController](self "pageViewController")])
      {
        if ([(OKWidgetViewProxy *)self parallaxEnabled])
        {
          [-[OKWidgetViewProxy pageViewController](self "pageViewController")];
        }
      }
    }
  }
}

- (void)setSettingAlpha:(double)a3
{
  v3 = a3;
  v4 = [(OKWidgetViewProxy *)self layer];
  *&v5 = v3;

  [v4 setOpacity:v5];
}

- (double)settingCornerRadius
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = v3;
  v6 = v5;
  [-[OKWidgetContainerView layer](self->_contentContainerView "layer")];
  if (v4 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  return v7 / v8;
}

- (void)setSettingCornerRadius:(double)a3
{
  [(OKWidgetViewProxy *)self layoutFactor];
  if (v5 >= v6)
  {
    v5 = v6;
  }

  v7 = v5 * a3;
  [-[OKWidgetContainerView layer](self->_contentContainerView "layer")];
  [-[OKWidgetContainerView layer](self->_contentView "layer")];
  v8 = [(UIImageView *)self->_borderView layer];

  [v8 setCornerRadius:v7];
}

- (void)setSettingAntialiasing:(BOOL)a3
{
  if (self->_antialiasing != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_antialiasing = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__OKWidgetViewProxy_setSettingAntialiasing___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateAntialiasing"];
  }
}

- (void)setSettingPrepareActionScript:(id)a3
{
  prepareActionScript = self->_prepareActionScript;
  if (prepareActionScript)
  {

    self->_prepareActionScript = 0;
  }

  self->_prepareActionScript = [a3 copy];
}

- (void)setSettingCanPerformActionScript:(id)a3
{
  canPerformActionScript = self->_canPerformActionScript;
  if (canPerformActionScript)
  {

    self->_canPerformActionScript = 0;
  }

  self->_canPerformActionScript = [a3 copy];
}

- (UIEdgeInsets)settingEventsInset
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = self->_eventsInset.top / v3;
  v5 = self->_eventsInset.bottom / v3;
  v7 = self->_eventsInset.left / v6;
  v8 = self->_eventsInset.right / v6;
  v9 = v4;
  result.right = v8;
  result.bottom = v5;
  result.left = v7;
  result.top = v9;
  return result;
}

- (void)setSettingEventsInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(OKWidgetViewProxy *)self layoutFactor];
  self->_eventsInset.top = top * v8;
  self->_eventsInset.left = left * v9;
  self->_eventsInset.bottom = bottom * v8;
  self->_eventsInset.right = right * v9;
}

- (id)settingActionBindings
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_actionBindings allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_actionBindings objectForKey:v9];
        if ([v10 tag] == 1)
        {
          [v3 setObject:v10 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setSettingActionBindings:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [-[OKWidgetViewProxy settingActionBindings](self "settingActionBindings")];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(OKWidgetViewProxy *)self removeActionBinding:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [a3 allKeys];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * j);
        v16 = [a3 objectForKey:v15];
        if (-[OKPresentationViewControllerProxy interactivityEnabled](-[OKWidgetViewProxy presentationViewController](self, "presentationViewController"), "interactivityEnabled") || [v16 canBeTriggeredWithoutInteractivity])
        {
          [v16 setName:v15];
          [v16 setTag:1];
          [(OKWidgetViewProxy *)self addActionBinding:v16 scope:3];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }
}

- (id)settingShadowColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [-[OKWidgetViewProxy layer](self "layer")];

  return [v2 colorWithCGColor:v3];
}

- (void)setSettingShadowColor:(id)a3
{
  v4 = [a3 CGColor];
  v5 = [(OKWidgetViewProxy *)self layer];

  [v5 setShadowColor:v4];
}

- (double)settingShadowRadius
{
  v2 = [(OKWidgetViewProxy *)self layer];

  [v2 shadowRadius];
  return result;
}

- (void)setSettingShadowRadius:(double)a3
{
  v4 = [(OKWidgetViewProxy *)self layer];

  [v4 setShadowRadius:a3];
}

- (void)setSettingShadowOpacity:(double)a3
{
  v3 = a3;
  v4 = [(OKWidgetViewProxy *)self layer];
  *&v5 = v3;

  [v4 setShadowOpacity:v5];
}

- (CGSize)settingShadowOffset
{
  v2 = [(OKWidgetViewProxy *)self layer];

  [v2 shadowOffset];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setSettingShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(OKWidgetViewProxy *)self layer];

  [v5 setShadowOffset:{width, height}];
}

- (void)setSettingShadowOptimization:(BOOL)a3
{
  if (self->_shadowOptimization != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_shadowOptimization = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__OKWidgetViewProxy_setSettingShadowOptimization___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateShadowPath"];
  }
}

- (id)settingBorderColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [-[UIImageView layer](self->_borderView "layer")];

  return [v2 colorWithCGColor:v3];
}

- (void)setSettingBorderColor:(id)a3
{
  v4 = [a3 CGColor];
  v5 = [(UIImageView *)self->_borderView layer];

  [v5 setBorderColor:v4];
}

- (double)settingBorderWidth
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = v3;
  v6 = v5;
  [-[UIImageView layer](self->_borderView "layer")];
  if (v4 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  return v7 / v8;
}

- (void)setSettingBorderWidth:(double)a3
{
  [(OKWidgetViewProxy *)self layoutFactor];
  if (v5 >= v6)
  {
    v5 = v6;
  }

  v7 = v5 * a3;
  v8 = [(UIImageView *)self->_borderView layer];

  [v8 setBorderWidth:v7];
}

- (UIEdgeInsets)settingBorderEdgeOutsets
{
  top = self->_borderEdgeOutsets.top;
  left = self->_borderEdgeOutsets.left;
  bottom = self->_borderEdgeOutsets.bottom;
  right = self->_borderEdgeOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setSettingBorderEdgeOutsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_borderEdgeOutsets.top, v3), vceqq_f64(*&self->_borderEdgeOutsets.bottom, v4)))) & 1) == 0)
  {
    self->_borderEdgeOutsets = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__OKWidgetViewProxy_setSettingBorderEdgeOutsets___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateLayout"];
  }
}

- (void)setSettingBorderImageURL:(id)a3
{
  if (([(NSURL *)self->_borderImageURL isEqual:?]& 1) == 0)
  {
    borderImageURL = self->_borderImageURL;
    if (borderImageURL)
    {

      self->_borderImageURL = 0;
    }

    self->_borderImageURL = [a3 copy];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__OKWidgetViewProxy_setSettingBorderImageURL___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateBorder"];
  }
}

- (UIEdgeInsets)settingBorderImageCapEdgeInsets
{
  top = self->_borderImageCapEdgeInsets.top;
  left = self->_borderImageCapEdgeInsets.left;
  bottom = self->_borderImageCapEdgeInsets.bottom;
  right = self->_borderImageCapEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setSettingBorderImageCapEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_borderImageCapEdgeInsets.top, v3), vceqq_f64(*&self->_borderImageCapEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_borderImageCapEdgeInsets = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__OKWidgetViewProxy_setSettingBorderImageCapEdgeInsets___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateBorder"];
  }
}

- (id)settingContentFilters
{
  v2 = [(OFUIView *)[(OKWidgetViewProxy *)self contentView] layer];

  return [v2 filters];
}

- (void)setSettingContentFilters:(id)a3
{
  if (([objc_msgSend(-[OFUIView layer](-[OKWidgetViewProxy contentView](self "contentView")] & 1) == 0)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __46__OKWidgetViewProxy_setSettingContentFilters___block_invoke;
    v4[3] = &unk_279C8E818;
    v4[4] = self;
    [OKSettings applyUpdateBlockOnce:v4 forKey:@"updateContentFilters"];
  }
}

- (void)setSettingContentEffects:(id)a3
{
  if (![(NSArray *)self->_contentEffects isEqualToArray:?])
  {
    [(OKWidgetViewProxy *)self stopContentEffects];
    contentEffects = self->_contentEffects;
    if (contentEffects)
    {

      self->_contentEffects = 0;
    }

    self->_contentEffects = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__OKWidgetViewProxy_setSettingContentEffects___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateContentEffects"];
  }
}

- (void)setSettingZRotation:(double)a3
{
  v5 = a3 * 3.14159265 / 180.0;
  if (self->_zRotation != v5)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_zRotation = v5;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__OKWidgetViewProxy_setSettingZRotation___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateWidgetTransforms"];
  }
}

- (CGPoint)settingZRotationAnchorPoint
{
  x = self->_zRotationAnchorPoint.x;
  y = self->_zRotationAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setSettingZRotationAnchorPoint:(CGPoint)a3
{
  if (self->_zRotationAnchorPoint.x != a3.x || self->_zRotationAnchorPoint.y != a3.y)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_zRotationAnchorPoint = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__OKWidgetViewProxy_setSettingZRotationAnchorPoint___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateWidgetTransforms"];
  }
}

- (void)setSettingXFlipped:(BOOL)a3
{
  if (self->_xFlipped != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_xFlipped = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__OKWidgetViewProxy_setSettingXFlipped___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateWidgetTransforms"];
  }
}

- (void)setSettingYFlipped:(BOOL)a3
{
  if (self->_yFlipped != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_yFlipped = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__OKWidgetViewProxy_setSettingYFlipped___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateWidgetTransforms"];
  }
}

- (CGSize)settingXyScale
{
  width = self->_xyScale.width;
  height = self->_xyScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setSettingXyScale:(CGSize)a3
{
  if (self->_xyScale.width != a3.width || self->_xyScale.height != a3.height)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_xyScale = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__OKWidgetViewProxy_setSettingXyScale___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateWidgetTransforms"];
  }
}

- (CGPoint)settingXyTranslation
{
  x = self->_xyTranslation.x;
  y = self->_xyTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setSettingXyTranslation:(CGPoint)a3
{
  if (self->_xyTranslation.x != a3.x || self->_xyTranslation.y != a3.y)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_xyTranslation = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__OKWidgetViewProxy_setSettingXyTranslation___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateWidgetTransforms"];
  }
}

- (void)setSettingMotionEnabled:(BOOL)a3
{
  if (self->_motionEnabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_motionEnabled = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__OKWidgetViewProxy_setSettingMotionEnabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionTiltXEnabled:(BOOL)a3
{
  if (self->_motionTiltXEnabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_motionTiltXEnabled = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__OKWidgetViewProxy_setSettingMotionTiltXEnabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionTiltYEnabled:(BOOL)a3
{
  if (self->_motionTiltYEnabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_motionTiltYEnabled = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__OKWidgetViewProxy_setSettingMotionTiltYEnabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionTiltZEnabled:(BOOL)a3
{
  if (self->_motionTiltZEnabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_motionTiltZEnabled = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__OKWidgetViewProxy_setSettingMotionTiltZEnabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateMotion"];
  }
}

- (CGSize)settingMotionXMinMax
{
  width = self->_motionXMinMax.width;
  height = self->_motionXMinMax.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setSettingMotionXMinMax:(CGSize)a3
{
  if (self->_motionXMinMax.width != a3.width || self->_motionXMinMax.height != a3.height)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_motionXMinMax = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__OKWidgetViewProxy_setSettingMotionXMinMax___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateMotion"];
  }
}

- (CGSize)settingMotionYMinMax
{
  width = self->_motionYMinMax.width;
  height = self->_motionYMinMax.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setSettingMotionYMinMax:(CGSize)a3
{
  if (self->_motionYMinMax.width != a3.width || self->_motionYMinMax.height != a3.height)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_motionYMinMax = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__OKWidgetViewProxy_setSettingMotionYMinMax___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateMotion"];
  }
}

- (CGSize)settingMotionZMinMax
{
  width = self->_motionZMinMax.width;
  height = self->_motionZMinMax.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setSettingMotionZMinMax:(CGSize)a3
{
  if (self->_motionZMinMax.width != a3.width || self->_motionZMinMax.height != a3.height)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_motionZMinMax = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__OKWidgetViewProxy_setSettingMotionZMinMax___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateMotion"];
  }
}

- (CGPoint)settingMotionXTiltAnchorPoint
{
  x = self->_motionXTiltAnchorPoint.x;
  y = self->_motionXTiltAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setSettingMotionXTiltAnchorPoint:(CGPoint)a3
{
  if (self->_motionXTiltAnchorPoint.x != a3.x || self->_motionXTiltAnchorPoint.y != a3.y)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_motionXTiltAnchorPoint = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__OKWidgetViewProxy_setSettingMotionXTiltAnchorPoint___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateMotion"];
  }
}

- (CGPoint)settingMotionYTiltAnchorPoint
{
  x = self->_motionYTiltAnchorPoint.x;
  y = self->_motionYTiltAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setSettingMotionYTiltAnchorPoint:(CGPoint)a3
{
  if (self->_motionYTiltAnchorPoint.x != a3.x || self->_motionYTiltAnchorPoint.y != a3.y)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_motionYTiltAnchorPoint = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__OKWidgetViewProxy_setSettingMotionYTiltAnchorPoint___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateMotion"];
  }
}

- (CGPoint)settingMotionZTiltAnchorPoint
{
  x = self->_motionZTiltAnchorPoint.x;
  y = self->_motionZTiltAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setSettingMotionZTiltAnchorPoint:(CGPoint)a3
{
  if (self->_motionZTiltAnchorPoint.x != a3.x || self->_motionZTiltAnchorPoint.y != a3.y)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_motionZTiltAnchorPoint = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__OKWidgetViewProxy_setSettingMotionZTiltAnchorPoint___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionXTiltReversed:(BOOL)a3
{
  if (self->_motionXTiltReversed != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_motionXTiltReversed = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__OKWidgetViewProxy_setSettingMotionXTiltReversed___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionYTiltReversed:(BOOL)a3
{
  if (self->_motionYTiltReversed != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_motionYTiltReversed = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__OKWidgetViewProxy_setSettingMotionYTiltReversed___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionZTiltReversed:(BOOL)a3
{
  if (self->_motionZTiltReversed != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_motionZTiltReversed = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__OKWidgetViewProxy_setSettingMotionZTiltReversed___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateMotion"];
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
    v5[2] = __47__OKWidgetViewProxy_setSettingParallaxEnabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateParallax"];
  }
}

- (void)setSettingDynamicsEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(OKDynamicItemProxy *)self->_dynamicProxy enabled]!= a3)
  {
    [(OKDynamicItemProxy *)self->_dynamicProxy setEnabled:v3];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__OKWidgetViewProxy_setSettingDynamicsEnabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateDynamics"];
  }
}

- (void)setSettingDynamicsGravityDisabled:(BOOL)a3
{
  v3 = a3;
  if ([(OKDynamicItemProxy *)self->_dynamicProxy gravityDisabled]!= a3)
  {
    [(OKDynamicItemProxy *)self->_dynamicProxy setGravityDisabled:v3];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__OKWidgetViewProxy_setSettingDynamicsGravityDisabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateDynamics"];
  }
}

- (double)settingDynamicsBodyElasticity
{
  v2 = [(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior];

  [(UIDynamicItemBehavior *)v2 elasticity];
  return result;
}

- (void)setSettingDynamicsBodyElasticity:(double)a3
{
  [(UIDynamicItemBehavior *)[(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior] elasticity];
  if (v5 != a3)
  {
    [(UIDynamicItemBehavior *)[(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior] setElasticity:a3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__OKWidgetViewProxy_setSettingDynamicsBodyElasticity___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateDynamics"];
  }
}

- (double)settingDynamicsBodyFriction
{
  v2 = [(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior];

  [(UIDynamicItemBehavior *)v2 friction];
  return result;
}

- (void)setSettingDynamicsBodyFriction:(double)a3
{
  [(UIDynamicItemBehavior *)[(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior] friction];
  if (v5 != a3)
  {
    [(UIDynamicItemBehavior *)[(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior] setFriction:a3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__OKWidgetViewProxy_setSettingDynamicsBodyFriction___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateDynamics"];
  }
}

- (double)settingDynamicsBodyDensity
{
  v2 = [(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior];

  [(UIDynamicItemBehavior *)v2 density];
  return result;
}

- (void)setSettingDynamicsBodyDensity:(double)a3
{
  [(UIDynamicItemBehavior *)[(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior] density];
  if (v5 != a3)
  {
    [(UIDynamicItemBehavior *)[(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior] setDensity:a3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__OKWidgetViewProxy_setSettingDynamicsBodyDensity___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateDynamics"];
  }
}

- (double)settingDynamicsBodyResistance
{
  v2 = [(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior];

  [(UIDynamicItemBehavior *)v2 resistance];
  return result;
}

- (void)setSettingDynamicsBodyResistance:(double)a3
{
  [(UIDynamicItemBehavior *)[(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior] resistance];
  if (v5 != a3)
  {
    [(UIDynamicItemBehavior *)[(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior] setResistance:a3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__OKWidgetViewProxy_setSettingDynamicsBodyResistance___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateDynamics"];
  }
}

- (double)settingDynamicsBodyAngularResistance
{
  v2 = [(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior];

  [(UIDynamicItemBehavior *)v2 angularResistance];
  return result;
}

- (void)setSettingDynamicsBodyAngularResistance:(double)a3
{
  [(UIDynamicItemBehavior *)[(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior] angularResistance];
  if (v5 != a3)
  {
    [(UIDynamicItemBehavior *)[(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior] setAngularResistance:a3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__OKWidgetViewProxy_setSettingDynamicsBodyAngularResistance___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateDynamics"];
  }
}

- (BOOL)settingDynamicsBodyAllowsRotation
{
  v2 = [(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior];

  return [(UIDynamicItemBehavior *)v2 allowsRotation];
}

- (void)setSettingDynamicsBodyAllowsRotation:(BOOL)a3
{
  v3 = a3;
  if ([(UIDynamicItemBehavior *)[(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior] allowsRotation]!= a3)
  {
    [(UIDynamicItemBehavior *)[(OKDynamicItemProxy *)self->_dynamicProxy bodyBehavior] setAllowsRotation:v3];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__OKWidgetViewProxy_setSettingDynamicsBodyAllowsRotation___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateDynamics"];
  }
}

- (void)setSettingDynamicsCollisionGroups:(id)a3
{
  if ([(OKDynamicItemProxy *)self->_dynamicProxy collisionGroups]!= a3 && ![(NSArray *)[(OKDynamicItemProxy *)self->_dynamicProxy collisionGroups] isEqualToArray:a3])
  {
    [(OKDynamicItemProxy *)self->_dynamicProxy setCollisionGroups:a3];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__OKWidgetViewProxy_setSettingDynamicsCollisionGroups___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateDynamics"];
  }
}

- (void)setSettingDynamicsCollisionActionScript:(id)a3
{
  dynamicsCollisionActionScript = self->_dynamicsCollisionActionScript;
  if (dynamicsCollisionActionScript)
  {

    self->_dynamicsCollisionActionScript = 0;
  }

  self->_dynamicsCollisionActionScript = [a3 copy];
}

- (void)setSettingDynamicsAttachments:(id)a3
{
  if ([(OKDynamicItemProxy *)self->_dynamicProxy attachmentBehaviors]!= a3 && ![(NSArray *)[(OKDynamicItemProxy *)self->_dynamicProxy attachmentBehaviors] isEqualToArray:a3])
  {
    [(OKDynamicItemProxy *)self->_dynamicProxy setAttachmentBehaviors:a3];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__OKWidgetViewProxy_setSettingDynamicsAttachments___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateDynamics"];
  }
}

- (void)setSettingDynamicsPushGroups:(id)a3
{
  if ([(OKDynamicItemProxy *)self->_dynamicProxy pushGroups]!= a3 && ![(NSArray *)[(OKDynamicItemProxy *)self->_dynamicProxy pushGroups] isEqualToArray:a3])
  {
    [(OKDynamicItemProxy *)self->_dynamicProxy setPushGroups:a3];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__OKWidgetViewProxy_setSettingDynamicsPushGroups___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateDynamics"];
  }
}

- (void)setSettingLayoutSteps:(id)a3
{
  if (![(NSArray *)self->_layoutSteps isEqualToArray:?])
  {
    layoutSteps = self->_layoutSteps;
    if (layoutSteps)
    {

      self->_layoutSteps = 0;
    }

    self->_layoutSteps = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:a3 copyItems:1];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__OKWidgetViewProxy_setSettingLayoutSteps___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateLayoutSteps"];
  }
}

- (BOOL)sendAction:(id)a3 toTarget:(id)a4
{
  [(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] cancelCouchPotatoIfNeededWithAction:a3];
  if (!a4 || (v7 = [(OKWidgetViewProxy *)self valueForKeyPath:a4]) == 0)
  {
    v10 = [(OKWidgetViewProxy *)self actionBindingForAction:a3 isTouchCountAgnostic:0];
    if (v10)
    {
      v11 = v10;
      [a3 shouldPropagate];
    }

    else
    {
      v11 = [(OKWidgetViewProxy *)self actionBindingForAction:a3 isTouchCountAgnostic:1];
      v12 = [a3 shouldPropagate];
      if (!v11)
      {
        if (!v12)
        {
          return v12;
        }

LABEL_12:
        [a3 setShouldPropagate:1];
        if ([(OKWidgetViewProxy *)self parentWidgetView])
        {
          [a3 convertFromResponder:self toResponder:{-[OKWidgetViewProxy parentWidgetView](self, "parentWidgetView")}];
          v9 = [(OKWidgetViewProxy *)self parentWidgetView];
        }

        else
        {
          [a3 convertFromResponder:self toResponder:{-[OKWidgetViewProxy pageViewController](self, "pageViewController")}];
          v9 = [(OKWidgetViewProxy *)self pageViewController];
        }

        goto LABEL_16;
      }
    }

    if ([v11 performAction:a3])
    {
      [a3 setShouldPropagate:0];
      LOBYTE(v12) = 1;
      return v12;
    }

    if (([a3 shouldPropagate] & 1) == 0)
    {
      LOBYTE(v12) = 0;
      return v12;
    }

    goto LABEL_12;
  }

  v8 = v7;
  [a3 convertFromResponder:self toResponder:v7];
  v9 = v8;
LABEL_16:

  LOBYTE(v12) = [(OKWidgetViewProxy *)v9 sendAction:a3 toTarget:0];
  return v12;
}

- (BOOL)canPerformAction:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = 1;
  if (self->_canPerformActionScript)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    v6 = [(OKWidgetViewProxy *)self delegate];
    canPerformActionScript = self->_canPerformActionScript;
    v15 = @"action";
    v16[0] = a3;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__OKWidgetViewProxy_canPerformAction___block_invoke;
    v10[3] = &unk_279C90818;
    v10[4] = &v11;
    [(OKWidgetViewDelegate *)v6 evaluateScript:canPerformActionScript withInfoDictionary:v8 andCompletionBlock:v10 forWidgetView:self];
    v3 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  return v3 & 1;
}

uint64_t __38__OKWidgetViewProxy_canPerformAction___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 intValue];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

- (BOOL)interactivityEnabled
{
  v2 = [(OKWidgetViewProxy *)self presentationViewController];

  return [(OKPresentationViewControllerProxy *)v2 interactivityEnabled];
}

- (BOOL)performActionScript:(id)a3 withAction:(id)a4
{
  v10[1] = *MEMORY[0x277D85DE8];
  v7 = [(OKWidgetViewProxy *)self delegate];
  v9 = @"action";
  v10[0] = a4;
  -[OKWidgetViewDelegate evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](v7, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", a3, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1], 0, self);
  return 1;
}

- (void)addActionBinding:(id)a3 scope:(unint64_t)a4
{
  [a3 loadForResponder:self scope:a4];
  actionBindings = self->_actionBindings;
  v7 = [a3 name];

  [(NSMutableDictionary *)actionBindings setObject:a3 forKey:v7];
}

- (void)removeActionBinding:(id)a3
{
  [a3 unload];
  actionBindings = self->_actionBindings;
  v6 = [a3 name];

  [(NSMutableDictionary *)actionBindings removeObjectForKey:v6];
}

- (void)removeAllActionBindings
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(OKWidgetViewProxy *)self allActionBindings];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(OKWidgetViewProxy *)self removeActionBinding:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)allActionBindings
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableDictionary *)self->_actionBindings allValues];

  return [v2 setWithArray:v3];
}

- (id)actionBindingForAction:(id)a3 isTouchCountAgnostic:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableDictionary *)self->_actionBindings allValues];
  result = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if ([v11 respondsToAction:a3 isTouchCountAgnostic:v4])
        {
          return v11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (CATransform3D)_jsOriginalTransform
{
  v5 = *&self->_widgetTransform.m33;
  *&a.m31 = *&self->_widgetTransform.m31;
  *&a.m33 = v5;
  v6 = *&self->_widgetTransform.m43;
  *&a.m41 = *&self->_widgetTransform.m41;
  *&a.m43 = v6;
  v7 = *&self->_widgetTransform.m13;
  *&a.m11 = *&self->_widgetTransform.m11;
  *&a.m13 = v7;
  v8 = *&self->_widgetTransform.m23;
  *&a.m21 = *&self->_widgetTransform.m21;
  *&a.m23 = v8;
  v9 = *&self->_motionTransform.m33;
  *&v18.m31 = *&self->_motionTransform.m31;
  *&v18.m33 = v9;
  v10 = *&self->_motionTransform.m43;
  *&v18.m41 = *&self->_motionTransform.m41;
  *&v18.m43 = v10;
  v11 = *&self->_motionTransform.m13;
  *&v18.m11 = *&self->_motionTransform.m11;
  *&v18.m13 = v11;
  v12 = *&self->_motionTransform.m23;
  *&v18.m21 = *&self->_motionTransform.m21;
  *&v18.m23 = v12;
  CATransform3DConcat(&v20, &a, &v18);
  v13 = *&self->_parallaxTransform.m33;
  *&a.m31 = *&self->_parallaxTransform.m31;
  *&a.m33 = v13;
  v14 = *&self->_parallaxTransform.m43;
  *&a.m41 = *&self->_parallaxTransform.m41;
  *&a.m43 = v14;
  v15 = *&self->_parallaxTransform.m13;
  *&a.m11 = *&self->_parallaxTransform.m11;
  *&a.m13 = v15;
  v16 = *&self->_parallaxTransform.m23;
  *&a.m21 = *&self->_parallaxTransform.m21;
  *&a.m23 = v16;
  return CATransform3DConcat(retstr, &v20, &a);
}

- (CATransform3D)_jsTransform
{
  result = [(OKWidgetViewProxy *)self layer];
  if (result)
  {

    return [(CATransform3D *)result transform];
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  return result;
}

- (void)updateTransforms
{
  memset(&v20, 0, sizeof(v20));
  v3 = *&self->_widgetTransform.m33;
  *&a.m31 = *&self->_widgetTransform.m31;
  *&a.m33 = v3;
  v4 = *&self->_widgetTransform.m43;
  *&a.m41 = *&self->_widgetTransform.m41;
  *&a.m43 = v4;
  v5 = *&self->_widgetTransform.m13;
  *&a.m11 = *&self->_widgetTransform.m11;
  *&a.m13 = v5;
  v6 = *&self->_widgetTransform.m23;
  *&a.m21 = *&self->_widgetTransform.m21;
  *&a.m23 = v6;
  v7 = *&self->_motionTransform.m33;
  *&b.m31 = *&self->_motionTransform.m31;
  *&b.m33 = v7;
  v8 = *&self->_motionTransform.m43;
  *&b.m41 = *&self->_motionTransform.m41;
  *&b.m43 = v8;
  v9 = *&self->_motionTransform.m13;
  *&b.m11 = *&self->_motionTransform.m11;
  *&b.m13 = v9;
  v10 = *&self->_motionTransform.m23;
  *&b.m21 = *&self->_motionTransform.m21;
  *&b.m23 = v10;
  CATransform3DConcat(&v19, &a, &b);
  v11 = *&self->_parallaxTransform.m33;
  *&a.m31 = *&self->_parallaxTransform.m31;
  *&a.m33 = v11;
  v12 = *&self->_parallaxTransform.m43;
  *&a.m41 = *&self->_parallaxTransform.m41;
  *&a.m43 = v12;
  v13 = *&self->_parallaxTransform.m13;
  *&a.m11 = *&self->_parallaxTransform.m11;
  *&a.m13 = v13;
  v14 = *&self->_parallaxTransform.m23;
  *&a.m21 = *&self->_parallaxTransform.m21;
  *&a.m23 = v14;
  CATransform3DConcat(&v20, &v19, &a);
  v16 = v20;
  v15 = [(OKWidgetViewProxy *)self layer];
  v19 = v16;
  [v15 setTransform:&v19];
}

- (BOOL)needsAntialiasing
{
  v3 = [(OKWidgetViewDelegate *)[(OKWidgetViewProxy *)self delegate] pageViewForWidgetView:self];
  if (!self->_antialiasing)
  {
    return 0;
  }

  if (self->_motionEnabled)
  {
    return 1;
  }

  v4 = v3;
  if (-[OKDynamicItemProxy enabled](self->_dynamicProxy, "enabled") || ([objc_msgSend(v4 "pageViewController")] & 1) != 0)
  {
    return 1;
  }

  v6 = [v4 pageViewController];

  return [v6 dynamicsEnabled];
}

- (void)setAntialiasing:(BOOL)a3
{
  if (a3)
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  [-[OKWidgetViewProxy layer](self "layer")];
  [-[OKWidgetContainerView layer](self->_contentContainerView "layer")];
  [-[OKWidgetContainerView layer](self->_contentView "layer")];
  v5 = [(UIImageView *)self->_borderView layer];

  [v5 setEdgeAntialiasingMask:v4];
}

- (void)updateAntialiasing
{
  v3 = [(OKWidgetViewProxy *)self needsAntialiasing];

  [(OKWidgetViewProxy *)self setAntialiasing:v3];
}

- (void)updateShadowPath
{
  if (self->_shadowOptimization)
  {
    [(OKWidgetViewProxy *)self bounds];
    v3 = CGPathCreateWithRect(v6, 0);
    [-[OKWidgetViewProxy layer](self "layer")];

    CGPathRelease(v3);
  }

  else
  {
    v4 = [(OKWidgetViewProxy *)self layer];

    [v4 setShadowPath:0];
  }
}

- (void)prepareContentEffects
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  contentEffects = self->_contentEffects;
  v4 = [(NSArray *)contentEffects countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(contentEffects);
        }

        [*(*(&v8 + 1) + 8 * i) prepareContentEffectWithView:{-[OKWidgetViewProxy contentView](self, "contentView")}];
      }

      v5 = [(NSArray *)contentEffects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)startContentEffects
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  contentEffects = self->_contentEffects;
  v4 = [(NSArray *)contentEffects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(contentEffects);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (![v8 animatedView])
        {
          [v8 prepareContentEffectWithView:{-[OKWidgetViewProxy contentView](self, "contentView")}];
        }

        [(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] couchModeDefaultStepDuration];
        [v8 setDefaultDuration:?];
        if (![(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] isPaused])
        {
          v9[0] = MEMORY[0x277D85DD0];
          v9[1] = 3221225472;
          v9[2] = __40__OKWidgetViewProxy_startContentEffects__block_invoke;
          v9[3] = &unk_279C8E818;
          v9[4] = v8;
          [(OKWidgetViewProxy *)self notifyWhenBecomesReady:v9];
        }
      }

      v5 = [(NSArray *)contentEffects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)stopContentEffects
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__OKWidgetViewProxy_stopContentEffects__block_invoke;
  v2[3] = &unk_279C8E818;
  v2[4] = self;
  [(OKWidgetViewProxy *)self notifyWhenBecomesReady:v2];
}

uint64_t __39__OKWidgetViewProxy_stopContentEffects__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 656);
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) stopAnimation];
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)restartContentEffects
{
  [(OKWidgetViewProxy *)self stopContentEffects];
  [(OKWidgetViewProxy *)self prepareContentEffects];

  [(OKWidgetViewProxy *)self startContentEffects];
}

- (void)updateContentEffects
{
  contentEffects = self->_contentEffects;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__OKWidgetViewProxy_updateContentEffects__block_invoke;
  v4[3] = &unk_279C90840;
  v4[4] = self;
  [(NSArray *)contentEffects enumerateObjectsUsingBlock:v4];
  if ([(OKWidgetViewProxy *)self prepareMode]== 1)
  {
    [(OKWidgetViewProxy *)self restartContentEffects];
  }

  else if ([(OKWidgetViewProxy *)self prepareMode]== 2 || [(OKWidgetViewProxy *)self prepareMode]== 3)
  {
    [(OKWidgetViewProxy *)self stopContentEffects];
  }
}

uint64_t __41__OKWidgetViewProxy_updateContentEffects__block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(*(a1 + 32) "presentationViewController")];

  return [a2 setDefaultDuration:?];
}

- (void)pauseContentEffects
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__OKWidgetViewProxy_pauseContentEffects__block_invoke;
  v2[3] = &unk_279C8E818;
  v2[4] = self;
  [(OKWidgetViewProxy *)self notifyWhenBecomesReady:v2];
}

uint64_t __40__OKWidgetViewProxy_pauseContentEffects__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 656);
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) pauseAnimation];
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)resumeContentEffects:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__OKWidgetViewProxy_resumeContentEffects___block_invoke;
  v3[3] = &unk_279C90868;
  v3[4] = self;
  v4 = a3;
  [(OKWidgetViewProxy *)self notifyWhenBecomesReady:v3];
}

uint64_t __42__OKWidgetViewProxy_resumeContentEffects___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 656);
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        [objc_msgSend(*(a1 + 32) "presentationViewController")];
        [v7 setDefaultDuration:?];
        if (!*(a1 + 40) || [v7 autoplay])
        {
          [v7 resumeAnimation];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)updateWidgetTransforms
{
  v3 = *(MEMORY[0x277CD9DE8] + 64);
  v4 = *(MEMORY[0x277CD9DE8] + 80);
  *&v32.m31 = v3;
  *&v32.m33 = v4;
  v5 = *(MEMORY[0x277CD9DE8] + 96);
  v6 = *(MEMORY[0x277CD9DE8] + 112);
  *&v32.m41 = v5;
  *&v32.m43 = v6;
  v7 = *MEMORY[0x277CD9DE8];
  v8 = *(MEMORY[0x277CD9DE8] + 16);
  *&v32.m11 = *MEMORY[0x277CD9DE8];
  *&v32.m13 = v8;
  v9 = *(MEMORY[0x277CD9DE8] + 32);
  v10 = *(MEMORY[0x277CD9DE8] + 48);
  *&v32.m21 = v9;
  *&v32.m23 = v10;
  if (self->_xFlipped)
  {
    *&v31.m31 = v3;
    *&v31.m33 = v4;
    *&v31.m41 = v5;
    *&v31.m43 = v6;
    *&v31.m11 = v7;
    *&v31.m13 = v8;
    *&v31.m21 = v9;
    *&v31.m23 = v10;
    CATransform3DScale(&v32, &v31, -1.0, 1.0, 1.0);
  }

  if (self->_yFlipped)
  {
    b = v32;
    CATransform3DScale(&v31, &b, 1.0, -1.0, 1.0);
    v32 = v31;
  }

  [(OKWidgetViewProxy *)self bounds];
  v12 = v11 * self->_zRotationAnchorPoint.x;
  [(OKWidgetViewProxy *)self bounds];
  v14 = self->_zRotationAnchorPoint.y * v13;
  [(OKWidgetViewProxy *)self bounds];
  v16 = v15 * 0.5;
  [(OKWidgetViewProxy *)self bounds];
  v18 = v17 * 0.5;
  b = v32;
  CATransform3DTranslate(&v31, &b, v12 - v16, v14 - v17 * 0.5, 0.0);
  v32 = v31;
  zRotation = self->_zRotation;
  b = v31;
  CATransform3DRotate(&v31, &b, zRotation, 0.0, 0.0, 1.0);
  v32 = v31;
  b = v31;
  CATransform3DTranslate(&v31, &b, v16 - v12, v18 - v14, 0.0);
  v32 = v31;
  width = self->_xyScale.width;
  height = self->_xyScale.height;
  b = v31;
  CATransform3DScale(&v31, &b, width, height, 1.0);
  v32 = v31;
  x = self->_xyTranslation.x;
  y = self->_xyTranslation.y;
  b = v31;
  CATransform3DTranslate(&v31, &b, x, y, 0.0);
  v32 = v31;
  v24 = *&self->_dynamicsTransform.c;
  *&v31.m11 = *&self->_dynamicsTransform.a;
  *&v31.m13 = v24;
  *&v31.m21 = *&self->_dynamicsTransform.tx;
  CATransform3DMakeAffineTransform(&b, &v31);
  v29 = v32;
  CATransform3DConcat(&v31, &v29, &b);
  v32 = v31;
  v25 = *&v31.m33;
  *&self->_widgetTransform.m31 = *&v31.m31;
  *&self->_widgetTransform.m33 = v25;
  v26 = *&v32.m43;
  *&self->_widgetTransform.m41 = *&v32.m41;
  *&self->_widgetTransform.m43 = v26;
  v27 = *&v32.m13;
  *&self->_widgetTransform.m11 = *&v32.m11;
  *&self->_widgetTransform.m13 = v27;
  v28 = *&v32.m23;
  *&self->_widgetTransform.m21 = *&v32.m21;
  *&self->_widgetTransform.m23 = v28;
  [(OKWidgetViewProxy *)self updateTransforms];
}

- (void)updateWithMotionTiltRotationX:(double)a3 tiltRotationY:(double)a4 tiltRotationZ:(double)a5
{
  if (self->_motionEnabled)
  {
    v45 = *(MEMORY[0x277CD9DE8] + 80);
    v46 = *(MEMORY[0x277CD9DE8] + 64);
    *&v50.m31 = v46;
    *&v50.m33 = v45;
    v43 = *(MEMORY[0x277CD9DE8] + 112);
    v44 = *(MEMORY[0x277CD9DE8] + 96);
    *&v50.m41 = v44;
    *&v50.m43 = v43;
    v41 = *(MEMORY[0x277CD9DE8] + 16);
    v42 = *MEMORY[0x277CD9DE8];
    *&v50.m11 = *MEMORY[0x277CD9DE8];
    *&v50.m13 = v41;
    v39 = *(MEMORY[0x277CD9DE8] + 48);
    v40 = *(MEMORY[0x277CD9DE8] + 32);
    *&v50.m21 = v40;
    *&v50.m23 = v39;
    [(OKWidgetViewProxy *)self bounds];
    v10 = v9 * 0.5;
    [(OKWidgetViewProxy *)self bounds];
    v12 = v11 * 0.5;
    if (self->_motionTiltXEnabled)
    {
      [(OKWidgetViewProxy *)self bounds];
      v14 = v13 * self->_motionXTiltAnchorPoint.x;
      [(OKWidgetViewProxy *)self bounds];
      v16 = self->_motionXTiltAnchorPoint.y * v15;
      *&v49.m31 = v46;
      *&v49.m33 = v45;
      *&v49.m41 = v44;
      *&v49.m43 = v43;
      *&v49.m11 = v42;
      *&v49.m13 = v41;
      *&v49.m21 = v40;
      *&v49.m23 = v39;
      CATransform3DTranslate(&v50, &v49, v14 - v10, v16 - v12, 0.0);
      height = -a3;
      if (!self->_motionXTiltReversed)
      {
        height = a3;
      }

      if (height >= self->_motionXMinMax.height)
      {
        height = self->_motionXMinMax.height;
      }

      if (height <= self->_motionXMinMax.width)
      {
        height = self->_motionXMinMax.width;
      }

      v48 = v50;
      CATransform3DRotate(&v49, &v48, height, 1.0, 0.0, 0.0);
      v50 = v49;
      v48 = v49;
      CATransform3DTranslate(&v49, &v48, v10 - v14, v12 - v16, 0.0);
      v50 = v49;
    }

    if (self->_motionTiltYEnabled)
    {
      [(OKWidgetViewProxy *)self bounds];
      v19 = v18 * self->_motionYTiltAnchorPoint.x;
      [(OKWidgetViewProxy *)self bounds];
      v21 = self->_motionYTiltAnchorPoint.y * v20;
      v48 = v50;
      CATransform3DTranslate(&v49, &v48, v19 - v10, v21 - v12, 0.0);
      v50 = v49;
      width = -a4;
      if (!self->_motionYTiltReversed)
      {
        width = a4;
      }

      if (width >= self->_motionYMinMax.height)
      {
        width = self->_motionYMinMax.height;
      }

      if (width <= self->_motionYMinMax.width)
      {
        width = self->_motionYMinMax.width;
      }

      v48 = v50;
      CATransform3DRotate(&v49, &v48, width, 0.0, 1.0, 0.0);
      v50 = v49;
      v48 = v49;
      CATransform3DTranslate(&v49, &v48, v10 - v19, v12 - v21, 0.0);
      v50 = v49;
    }

    if (self->_motionTiltZEnabled)
    {
      [(OKWidgetViewProxy *)self bounds];
      v24 = v23 * self->_motionZTiltAnchorPoint.x;
      [(OKWidgetViewProxy *)self bounds];
      v26 = self->_motionZTiltAnchorPoint.y * v25;
      v48 = v50;
      CATransform3DTranslate(&v49, &v48, v24 - v10, v26 - v12, 0.0);
      v50 = v49;
      v27 = -a5;
      if (!self->_motionZTiltReversed)
      {
        v27 = a5;
      }

      if (v27 >= self->_motionZMinMax.height)
      {
        v27 = self->_motionZMinMax.height;
      }

      if (v27 <= self->_motionZMinMax.width)
      {
        v27 = self->_motionZMinMax.width;
      }

      v48 = v50;
      CATransform3DRotate(&v49, &v48, v27, 0.0, 0.0, 1.0);
      v50 = v49;
      v48 = v49;
      CATransform3DTranslate(&v49, &v48, v10 - v24, v12 - v26, 0.0);
      v50 = v49;
    }

    p_motionTransform = &self->_motionTransform;
    v29 = *&v50.m33;
    *&self->_motionTransform.m31 = *&v50.m31;
    *&self->_motionTransform.m33 = v29;
    v30 = *&v50.m43;
    *&self->_motionTransform.m41 = *&v50.m41;
    *&self->_motionTransform.m43 = v30;
    v31 = *&v50.m13;
    *&self->_motionTransform.m11 = *&v50.m11;
    *&self->_motionTransform.m13 = v31;
    v32 = *&v50.m21;
    v33 = *&v50.m23;
  }

  else
  {
    p_motionTransform = &self->_motionTransform;
    v34 = MEMORY[0x277CD9DE8];
    v35 = *(MEMORY[0x277CD9DE8] + 80);
    *&self->_motionTransform.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&self->_motionTransform.m33 = v35;
    v36 = v34[7];
    *&self->_motionTransform.m41 = v34[6];
    *&self->_motionTransform.m43 = v36;
    v37 = v34[1];
    *&self->_motionTransform.m11 = *v34;
    *&self->_motionTransform.m13 = v37;
    v32 = v34[2];
    v33 = v34[3];
  }

  *&p_motionTransform->m21 = v32;
  *&p_motionTransform->m23 = v33;
  [(OKWidgetViewProxy *)self updateTransforms];
  subWidgetViews = self->_subWidgetViews;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __79__OKWidgetViewProxy_updateWithMotionTiltRotationX_tiltRotationY_tiltRotationZ___block_invoke;
  v47[3] = &__block_descriptor_56_e29_v32__0__OKWidgetView_8Q16_B24l;
  *&v47[4] = a3;
  *&v47[5] = a4;
  *&v47[6] = a5;
  [(NSMutableArray *)subWidgetViews enumerateObjectsUsingBlock:v47];
}

- (void)updateMotion
{
  v3 = [-[OKWidgetViewDelegate pageViewForWidgetView:](-[OKWidgetViewProxy delegate](self "delegate")];

  [v3 updateMotionForWidgetView:self];
}

- (void)updateWithParallaxTranslationX:(double)a3 translationY:(double)a4
{
  p_parallaxTransform = &self->_parallaxTransform;
  if (self->_parallaxEnabled)
  {
    CATransform3DMakeTranslation(&v15, a3, a4, 0.0);
    v6 = *&v15.m33;
    *&p_parallaxTransform->m31 = *&v15.m31;
    *&p_parallaxTransform->m33 = v6;
    v7 = *&v15.m43;
    *&p_parallaxTransform->m41 = *&v15.m41;
    *&p_parallaxTransform->m43 = v7;
    v8 = *&v15.m13;
    *&p_parallaxTransform->m11 = *&v15.m11;
    *&p_parallaxTransform->m13 = v8;
    v9 = *&v15.m21;
    v10 = *&v15.m23;
  }

  else
  {
    v11 = MEMORY[0x277CD9DE8];
    v12 = *(MEMORY[0x277CD9DE8] + 80);
    *&self->_parallaxTransform.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&self->_parallaxTransform.m33 = v12;
    v13 = v11[7];
    *&self->_parallaxTransform.m41 = v11[6];
    *&self->_parallaxTransform.m43 = v13;
    v14 = v11[1];
    *&p_parallaxTransform->m11 = *v11;
    *&self->_parallaxTransform.m13 = v14;
    v9 = v11[2];
    v10 = v11[3];
  }

  *&p_parallaxTransform->m21 = v9;
  *&p_parallaxTransform->m23 = v10;
  [(OKWidgetViewProxy *)self updateTransforms];
}

- (void)updateParallax
{
  v3 = [-[OKWidgetViewDelegate pageViewForWidgetView:](-[OKWidgetViewProxy delegate](self "delegate")];

  [v3 updateParallaxForWidgetView:self];
}

- (void)updateDynamics
{
  v2 = [-[OKWidgetViewDelegate pageViewForWidgetView:](-[OKWidgetViewProxy delegate](self "delegate")];

  [v2 updateDynamics];
}

- (CGAffineTransform)dynamicsTransform
{
  v3 = *&self[22].c;
  *&retstr->a = *&self[22].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[22].tx;
  return self;
}

- (void)setDynamicsTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_dynamicsTransform.a = *&a3->a;
  *&self->_dynamicsTransform.c = v4;
  *&self->_dynamicsTransform.tx = v3;
  [(OKWidgetViewProxy *)self updateWidgetTransforms];
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
  layoutSteps = self->_layoutSteps;
  v4 = [(NSArray *)layoutSteps countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(layoutSteps);
        }

        v8 = -[OKWidgetViewProxy _preparseLayoutString:targetView:anchorView:](self, "_preparseLayoutString:targetView:anchorView:", [objc_msgSend(*(*(&v10 + 1) + 8 * i) "lowercaseString")], &v15, &v14);
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
          -[OFViewProxy addLayoutSteps:](self, "addLayoutSteps:", [MEMORY[0x277D627A8] stepsFromString:v8 targetView:? anchorView:?]);
        }
      }

      v5 = [(NSArray *)layoutSteps countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)_preparseLayoutString:(id)a3 targetView:(id *)a4 anchorView:(id *)a5
{
  *a4 = 0;
  *a5 = 0;
  v9 = [MEMORY[0x277CCAC80] scannerWithString:?];
  v17 = 0;
  if (([v9 scanUpToString:@"." intoString:&v17] & 1) == 0)
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
  v16 = 0;
  v10 = [v9 scanLocation];
  [v9 scanUpToString:@"." intoString:&v16];
  if ([v9 isAtEnd])
  {
    [v9 setScanLocation:v10];
    v16 = 0;
  }

  else if ([v16 isEqualToString:@"superview"])
  {
    *a5 = self;
  }

  else
  {
    *a5 = [(OKWidgetViewProxy *)self subWidgetViewForName:v16 recursively:0];
  }

  *a4 = [(OKWidgetViewProxy *)self subWidgetViewForName:v17 recursively:0];
  v12 = [a3 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(v17, "length"), @"t"}];
  v13 = v12;
  if (v16)
  {
    v14 = [v12 rangeOfString:?];
    v13 = [v13 stringByReplacingCharactersInRange:v14 withString:{v15, @"a"}];
  }

  return [objc_msgSend(v13 stringByReplacingOccurrencesOfString:@"{" withString:{@"<", "stringByReplacingOccurrencesOfString:withString:", @"}", @">"}];
}

- (void)_cancelBorderOperations
{
  v3 = [(OKWidgetViewProxy *)self delegate];

  [(OKWidgetViewDelegate *)v3 widgetViewCancelAllOperations:self withIdentifier:@"border"];
}

- (void)_cancelAllOperations
{
  v3 = [(OKWidgetViewProxy *)self delegate];

  [(OKWidgetViewDelegate *)v3 widgetViewCancelAllOperations:self];
}

- (void)_reloadBorderContentInHighQuality:(BOOL)a3
{
  if (self->_borderImageURL)
  {
    v3 = a3;
    v5 = !a3 || [(UIImageView *)self->_borderView image]== 0;
    [(OKWidgetViewProxy *)self borderRect];
    v7 = v6;
    v9 = v8;
    v10 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:self];
    borderImageURL = self->_borderImageURL;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__OKWidgetViewProxy__reloadBorderContentInHighQuality___block_invoke_2;
    v12[3] = &unk_279C908D0;
    v12[4] = self;
    v12[5] = v10;
    [(OKWidgetViewProxy *)self reloadMediaURL:borderImageURL size:0 mode:v5 lowQuality:v3 highQuality:@"border" identifier:&__block_literal_global_22 progressHandler:v7 completionHandler:v9, v12];
  }
}

uint64_t __55__OKWidgetViewProxy__reloadBorderContentInHighQuality___block_invoke_2(uint64_t result, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    v6 = a3;
    v7 = result;
    v8 = *(result + 32);
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v8 + 616), *MEMORY[0x277D768C8]), vceqq_f64(*(v8 + 632), *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
    {
      [a3 size];
      v11 = v10;
      v13 = v12;
      [objc_msgSend(a2 "metadata")];
      if (v11 != v15 || v13 != v14)
      {
        [objc_msgSend(a2 "metadata")];
        v6 = [v6 imageWithSize:objc_msgSend(objc_msgSend(a2 opaque:"metadata") scale:{"opaque"), v17, v18, 1.0}];
      }

      v6 = [v6 resizableImageWithCapInsets:{*(*(v7 + 32) + 616), *(*(v7 + 32) + 624), *(*(v7 + 32) + 632), *(*(v7 + 32) + 640)}];
      v8 = *(v7 + 32);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__OKWidgetViewProxy__reloadBorderContentInHighQuality___block_invoke_3;
    v19[3] = &unk_279C90078;
    v19[4] = *(v7 + 40);
    v19[5] = v6;
    return [v8 performBlockOnMainThread:v19];
  }

  return result;
}

uint64_t __55__OKWidgetViewProxy__reloadBorderContentInHighQuality___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) object];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(result + 504);

    return [v4 setImage:v3];
  }

  return result;
}

- (void)_reloadBorderContent
{
  if ([(OKWidgetViewProxy *)self prepareMode]== 1)
  {
    v3 = self;
    v4 = 1;
LABEL_5:

    [(OKWidgetViewProxy *)v3 _reloadBorderContentInHighQuality:v4];
    return;
  }

  if ([(OKWidgetViewProxy *)self prepareMode]== 2)
  {
    v3 = self;
    v4 = 0;
    goto LABEL_5;
  }

  if ([(OKWidgetViewProxy *)self prepareMode]== 3)
  {

    [(OKWidgetViewProxy *)self _unloadBorderContent];
  }
}

- (float)contentAspectRatio
{
  [(OKWidgetContainerView *)self->_contentView bounds];
  v4 = v3;
  [(OKWidgetContainerView *)self->_contentView bounds];
  return v4 / v5;
}

- (void)wobble
{
  if (![(OKWidgetViewProxy *)self parentWidgetView])
  {
    v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.rotation.z"];
    [v3 setDuration:0.800000012];
    [v3 setCumulative:1];
    LODWORD(v4) = 1.0;
    [v3 setRepeatCount:v4];
    v36 = MEMORY[0x277CBEA60];
    v35 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    LODWORD(v5) = -1123091915;
    v34 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    v33 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    LODWORD(v6) = 1024391733;
    v32 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    v31 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    LODWORD(v7) = -1114703307;
    v30 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v29 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    LODWORD(v8) = 1032780341;
    v28 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    v27 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    LODWORD(v9) = -1106314699;
    v26 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    LODWORD(v10) = 1041168949;
    v24 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    LODWORD(v11) = -1114703307;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    LODWORD(v14) = 1032780341;
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    LODWORD(v17) = -1123091915;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    LODWORD(v20) = 1024391733;
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    [v3 setValues:{objc_msgSend(v36, "arrayWithObjects:", v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v12, v13, v15, v16, v18, v19, v21, objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", 0.0), 0)}];
    [v3 setFillMode:*MEMORY[0x277CDA238]];
    [v3 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7B0])}];
    [v3 setRemovedOnCompletion:1];
    v22 = [(OKWidgetViewProxy *)self layer];

    [v22 addAnimation:v3 forKey:@"wobble"];
  }
}

- (id)subDynamicProxies
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subWidgetViews = self->_subWidgetViews;
  v5 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(subWidgetViews);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 dynamicProxy];
        if (v10)
        {
          v11 = v10;
          if ([v10 enabled])
          {
            [v11 resetInitialValues];
            [v3 addObject:v11];
          }
        }

        [v3 addObjectsFromArray:{objc_msgSend(v9, "subDynamicProxies")}];
      }

      v6 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)beganCollisionWithWidgetView:(id)a3 fromGroup:(id)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (self->_dynamicsCollisionActionScript)
  {
    v7 = [(OKWidgetViewProxy *)self delegate];
    dynamicsCollisionActionScript = self->_dynamicsCollisionActionScript;
    v9[0] = @"collisionGroup";
    v9[1] = @"collisionWidget";
    v10[0] = a4;
    v10[1] = a3;
    -[OKWidgetViewDelegate evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](v7, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", dynamicsCollisionActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2], 0, self);
  }
}

- (BOOL)prepareForDisplay:(BOOL)a3
{
  v3 = a3;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [(OKWidgetViewProxy *)self prepareMode]!= 1 || v3;
  if (v5)
  {
    [(OKWidgetViewProxy *)self setPrepareMode:1];
    [(OKWidgetViewProxy *)self setHidden:0];
    [(OKWidgetViewProxy *)self setAntialiasing:[(OKWidgetViewProxy *)self needsAntialiasing]];
    [(OKWidgetViewProxy *)self _cancelAllOperations];
    if (v3)
    {
      [(OKWidgetViewProxy *)self resignReady];
    }

    [(OKWidgetViewProxy *)self _reloadBorderContentInHighQuality:1];
    [(OKWidgetViewProxy *)self startContentEffects];
    if (!self->_needsZoning)
    {
      subWidgetViews = self->_subWidgetViews;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __39__OKWidgetViewProxy_prepareForDisplay___block_invoke;
      v10[3] = &__block_descriptor_33_e15_v32__0_8Q16_B24l;
      v11 = v3;
      [(NSMutableArray *)subWidgetViews enumerateObjectsUsingBlock:v10];
    }

    if (self->_prepareActionScript)
    {
      v7 = [(OKWidgetViewProxy *)self delegate];
      prepareActionScript = self->_prepareActionScript;
      v12 = @"prepareMode";
      v13[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      -[OKWidgetViewDelegate evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](v7, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", prepareActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1], 0, self);
    }
  }

  return v5;
}

- (BOOL)prepareForWarmup:(BOOL)a3
{
  v3 = a3;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [(OKWidgetViewProxy *)self prepareMode]!= 2 || v3;
  if (v5)
  {
    [(OKWidgetViewProxy *)self setPrepareMode:2];
    [(OKWidgetViewProxy *)self setHidden:0];
    [(OKWidgetViewProxy *)self setAntialiasing:0];
    [(OKWidgetViewProxy *)self _cancelAllOperations];
    if (v3)
    {
      [(OKWidgetViewProxy *)self resignReady];
    }

    [(OKWidgetViewProxy *)self _reloadBorderContentInHighQuality:0];
    [(OKWidgetViewProxy *)self stopContentEffects];
    [(OKWidgetViewProxy *)self prepareContentEffects];
    if (!self->_needsZoning)
    {
      subWidgetViews = self->_subWidgetViews;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __38__OKWidgetViewProxy_prepareForWarmup___block_invoke;
      v10[3] = &__block_descriptor_33_e15_v32__0_8Q16_B24l;
      v11 = v3;
      [(NSMutableArray *)subWidgetViews enumerateObjectsUsingBlock:v10];
    }

    if (self->_prepareActionScript)
    {
      v7 = [(OKWidgetViewProxy *)self delegate];
      prepareActionScript = self->_prepareActionScript;
      v12 = @"prepareMode";
      v13[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
      -[OKWidgetViewDelegate evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](v7, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", prepareActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1], 0, self);
    }
  }

  return v5;
}

- (BOOL)prepareForUnload:(BOOL)a3
{
  v3 = a3;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [(OKWidgetViewProxy *)self prepareMode]!= 3 || v3;
  if (v5)
  {
    [(OKWidgetViewProxy *)self setPrepareMode:3];
    [(OKWidgetViewProxy *)self setHidden:1];
    [(OKWidgetViewProxy *)self setAntialiasing:0];
    [(OKWidgetViewProxy *)self _cancelAllOperations];
    [(OKWidgetViewProxy *)self resignReady];
    [(OKWidgetViewProxy *)self _unloadBorderContent];
    [(OKWidgetViewProxy *)self stopContentEffects];
    subWidgetViews = self->_subWidgetViews;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__OKWidgetViewProxy_prepareForUnload___block_invoke;
    v10[3] = &__block_descriptor_33_e15_v32__0_8Q16_B24l;
    v11 = v3;
    [(NSMutableArray *)subWidgetViews enumerateObjectsUsingBlock:v10];
    if (self->_prepareActionScript)
    {
      v7 = [(OKWidgetViewProxy *)self delegate];
      prepareActionScript = self->_prepareActionScript;
      v12 = @"prepareMode";
      v13[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
      -[OKWidgetViewDelegate evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](v7, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", prepareActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1], 0, self);
    }
  }

  return v5;
}

- (void)prepareForReload
{
  [(OKWidgetViewProxy *)self _cancelAllOperations];
  [(OKWidgetViewProxy *)self resignReady];
  [(OKWidgetViewProxy *)self _reloadBorderContent];
  subWidgetViews = self->_subWidgetViews;

  [(NSMutableArray *)subWidgetViews enumerateObjectsUsingBlock:&__block_literal_global_467];
}

- (void)prepareForRefresh
{
  [(OKWidgetViewProxy *)self _cancelAllOperations];
  [(OKWidgetViewProxy *)self resignReady];
  [(OKWidgetViewProxy *)self _reloadBorderContent];
  subWidgetViews = self->_subWidgetViews;

  [(NSMutableArray *)subWidgetViews enumerateObjectsUsingBlock:&__block_literal_global_469];
}

- (void)prepareForMode:(unint64_t)a3 force:(BOOL)a4
{
  switch(a3)
  {
    case 3uLL:
      [(OKWidgetViewProxy *)self prepareForUnload:a4];
      break;
    case 2uLL:
      [(OKWidgetViewProxy *)self prepareForWarmup:a4];
      break;
    case 1uLL:
      [(OKWidgetViewProxy *)self prepareForDisplay:a4];
      break;
  }
}

- (void)prepareIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(OKWidgetViewProxy *)self prepareMode];

  [(OKWidgetViewProxy *)self prepareForMode:v5 force:v3];
}

- (void)startShowingProgressIndicator
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__stopShowingProgressIndicator object:0];
  if (![(OKWidgetViewProxy *)self isActivityIndicatorVisible])
  {

    [(OKWidgetViewProxy *)self performSelector:sel__startShowingProgressIndicator withObject:0 afterDelay:1.0];
  }
}

- (void)stopShowingProgressIndicator
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__startShowingProgressIndicator object:0];
  if ([(OKWidgetViewProxy *)self isActivityIndicatorVisible])
  {

    [(OKWidgetViewProxy *)self performSelector:sel__stopShowingProgressIndicator withObject:0 afterDelay:0.3];
  }
}

- (void)reloadMediaURL:(id)a3 size:(CGSize)a4 mode:(int64_t)a5 lowQuality:(BOOL)a6 highQuality:(BOOL)a7 identifier:(id)a8 progressHandler:(id)a9 completionHandler:(id)a10
{
  v12 = a7;
  v13 = a6;
  height = a4.height;
  width = a4.width;
  v39 = [MEMORY[0x277CBEB18] array];
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [[(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentation] mediaItemForURL:a3];
  [(OKWidgetViewDelegate *)[(OKWidgetViewProxy *)self delegate] widgetViewCancelAllOperations:self withIdentifier:a8];
  if (v20)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    if (a9)
    {
      (*(a9 + 2))(a9, 0.0);
    }

    v21 = v19;
    if (v13)
    {
      v22 = [v20 memoryCachedThumbnailImageForResolution:1];
      if (!v22)
      {
        v29 = [(OKPresentationViewController *)[(OKWidgetViewProxy *)self presentationViewController] colorSpace];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __114__OKWidgetViewProxy_reloadMediaURL_size_mode_lowQuality_highQuality_identifier_progressHandler_completionHandler___block_invoke;
        v45[3] = &unk_279C90938;
        v45[4] = v20;
        v45[5] = a10;
        v46 = v12;
        v24 = [v20 thumbnailImageForResolution:1 aspectRatio:v29 scale:v45 quality:0 colorSpace:1 completionHandler:1.0 force:1.0 cache:1.0];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __114__OKWidgetViewProxy_reloadMediaURL_size_mode_lowQuality_highQuality_identifier_progressHandler_completionHandler___block_invoke_2;
        v43[3] = &unk_279C90960;
        v43[4] = a9;
        v43[5] = &v47;
        v44 = v12;
        [v24 setProgressBlock:v43];
        v30 = [(OKWidgetViewProxy *)self prepareMode];
        v31 = -4;
        if (v12)
        {
          v31 = 0;
        }

        v32 = 4;
        if (v12)
        {
          v32 = 8;
        }

        if (v30 == 1)
        {
          v33 = v32;
        }

        else
        {
          v33 = v31;
        }

        [v24 setQueuePriority:v33];
        [v24 setIdentifier:a8];
LABEL_12:
        if (!v12)
        {
          v28 = 0;
LABEL_41:
          if (v24)
          {
            [v39 addObject:v24];
          }

          if (v28)
          {
            [v21 addObject:v28];
          }

          [(OKWidgetViewDelegate *)[(OKWidgetViewProxy *)self delegate] widgetView:self addHighSpeedOperations:v39 andConsumingOperations:v21];
          _Block_object_dispose(&v47, 8);
          return;
        }

        [objc_msgSend(v20 "metadata")];
        v26 = v25;
        if (a5)
        {
          if (a5 == 1)
          {
            v27 = height * v25;
            if (width > height * v26)
            {
LABEL_32:
              if (v27 <= height)
              {
                v34 = height;
              }

              else
              {
                v34 = v27;
              }

              [(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentationViewScale];
              v36 = v35;
              v37 = [(OKPresentationViewController *)[(OKWidgetViewProxy *)self presentationViewController] colorSpace];
              v42[0] = MEMORY[0x277D85DD0];
              v42[1] = 3221225472;
              v42[2] = __114__OKWidgetViewProxy_reloadMediaURL_size_mode_lowQuality_highQuality_identifier_progressHandler_completionHandler___block_invoke_3;
              v42[3] = &unk_279C90988;
              v42[4] = v20;
              v42[5] = a10;
              v28 = [v20 thumbnailImageForResolution:v34 aspectRatio:v37 scale:v42 quality:0 colorSpace:1 completionHandler:v26 force:v36 cache:0.850000024];
              v40[0] = MEMORY[0x277D85DD0];
              v40[1] = 3221225472;
              v40[2] = __114__OKWidgetViewProxy_reloadMediaURL_size_mode_lowQuality_highQuality_identifier_progressHandler_completionHandler___block_invoke_4;
              v40[3] = &unk_279C909B0;
              v40[4] = a9;
              v40[5] = &v47;
              v41 = v13;
              [v28 setProgressBlock:v40];
              if (v24)
              {
                [v28 addDependency:v24];
              }

              if ([(OKWidgetViewProxy *)self prepareMode]== 1)
              {
                v38 = 0;
              }

              else
              {
                v38 = -8;
              }

              [v28 setQueuePriority:v38];
              [v28 setIdentifier:a8];
              goto LABEL_41;
            }

LABEL_30:
            v27 = width;
            height = width / v26;
            goto LABEL_32;
          }

          if (a5 != 2)
          {
            v27 = width;
            goto LABEL_32;
          }
        }

        v27 = height * v25;
        if (width <= height * v26)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      v48[3] = 0x3FF0000000000000;
      if (a9)
      {
        v23.n128_u32[0] = 1.0;
        if (v12)
        {
          v23.n128_f32[0] = 0.5;
        }

        (*(a9 + 2))(a9, v23);
      }

      (*(a10 + 2))(a10, v20, [MEMORY[0x277D755B8] imageWithCGImage:v22], 0, !v12, 0);
    }

    v24 = 0;
    goto LABEL_12;
  }

  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetView.m" line:3497 andFormat:@"Failed to get media item for media url %@", a3];
  }
}

uint64_t __114__OKWidgetViewProxy_reloadMediaURL_size_mode_lowQuality_highQuality_identifier_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [a2 shouldContinue];
  v7 = 0;
  if (a3 && v6)
  {
    v7 = [MEMORY[0x277D755B8] imageWithCGImage:a3];
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = [a2 isCancelled];
  v12 = *(v8 + 16);

  return v12(v8, v9, v7, 0, (v10 & 1) == 0, v11);
}

uint64_t __114__OKWidgetViewProxy_reloadMediaURL_size_mode_lowQuality_highQuality_identifier_progressHandler_completionHandler___block_invoke_2(uint64_t a1, float a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v3;
  result = *(a1 + 32);
  if (result)
  {
    v5 = 1.0;
    if (*(a1 + 48))
    {
      v5 = 2.0;
    }

    v6 = v3 / v5;
    return (*(result + 16))(v6);
  }

  return result;
}

uint64_t __114__OKWidgetViewProxy_reloadMediaURL_size_mode_lowQuality_highQuality_identifier_progressHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [a2 shouldContinue];
  v7 = 0;
  if (a3 && v6)
  {
    v7 = [MEMORY[0x277D755B8] imageWithCGImage:a3];
  }

  v10 = a1 + 32;
  v8 = *(a1 + 32);
  v9 = *(v10 + 8);
  v11 = [a2 isCancelled];
  v12 = *(v9 + 16);

  return v12(v9, v8, v7, 1, 1, v11);
}

uint64_t __114__OKWidgetViewProxy_reloadMediaURL_size_mode_lowQuality_highQuality_identifier_progressHandler_completionHandler___block_invoke_4(uint64_t a1, float a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(*(*(a1 + 40) + 8) + 24) + a2;
    v5 = 1.0;
    if (*(a1 + 48))
    {
      v5 = 2.0;
    }

    v6 = v4 / v5;
    return (*(result + 16))(v6);
  }

  return result;
}

- (void)prefetchMediaURL:(id)a3 identifier:(id)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = [[(OKPresentationCanvas *)[(OKWidgetViewProxy *)self page] presentation] mediaItemForURL:a3];
  if (v6)
  {
    v7 = [v6 thumbnailImageForResolution:1 aspectRatio:-[OKPresentationViewController colorSpace](-[OKWidgetViewProxy presentationViewController](self scale:"presentationViewController") quality:"colorSpace") colorSpace:0 completionHandler:0 force:1 cache:{1.0, 1.0, 1.0}];
    [v7 setQueuePriority:-8];
    [v7 setIdentifier:a4];
    v8 = [(OKWidgetViewProxy *)self delegate];
    v9[0] = v7;
    -[OKWidgetViewDelegate widgetView:addHighSpeedOperations:andConsumingOperations:](v8, "widgetView:addHighSpeedOperations:andConsumingOperations:", self, [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1], 0);
  }
}

- (void)removeAllReadyNotifications
{
  [(NSRecursiveLock *)self->_readyRecursiveLock lock];
  [(NSMutableArray *)self->_readyNotificationBlocks removeAllObjects];
  readyRecursiveLock = self->_readyRecursiveLock;

  [(NSRecursiveLock *)readyRecursiveLock unlock];
}

- (void)notifyWhenBecomesReady:(id)a3
{
  if (a3)
  {
    [(NSRecursiveLock *)self->_readyRecursiveLock lock];
    if ([(OKWidgetViewProxy *)self isReady:1])
    {
      (*(a3 + 2))(a3);
    }

    else
    {
      -[NSMutableArray addObject:](self->_readyNotificationBlocks, "addObject:", [a3 copy]);
    }

    readyRecursiveLock = self->_readyRecursiveLock;

    [(NSRecursiveLock *)readyRecursiveLock unlock];
  }
}

- (BOOL)isReady:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_readyRecursiveLock lock];
  if (self->_isReady || ![(OKWidgetViewProxy *)self supportsReadiness]|| [(OKWidgetViewProxy *)self needsZoning]|| [(OKWidgetViewProxy *)self isHidden])
  {
    if (!v3 || ([(OKWidgetViewProxy *)self isHidden]& 1) != 0 || (v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, v5 = [(OKWidgetViewProxy *)self subWidgetViews], (v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16]) == 0))
    {
LABEL_15:
      [(NSRecursiveLock *)self->_readyRecursiveLock unlock];
      return 1;
    }

    v7 = v6;
    v8 = *v12;
LABEL_9:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if (![*(*(&v11 + 1) + 8 * v9) isReady:1])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }
  }

  [(NSRecursiveLock *)self->_readyRecursiveLock unlock];
  return 0;
}

- (double)_localReadyProgress
{
  result = 1.0;
  if (!self->_isReady)
  {
    v3 = [(OKWidgetViewProxy *)self supportsReadiness];
    result = 1.0;
    if (v3)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)readyProgress:(BOOL)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = 1.0;
  if (([(OKWidgetViewProxy *)self isHidden]& 1) == 0)
  {
    [(NSRecursiveLock *)self->_readyRecursiveLock lock];
    if (a3)
    {
      v6 = [(OKWidgetViewProxy *)self supportsReadiness];
      v7 = [(NSMutableArray *)[(OKWidgetViewProxy *)self subWidgetViews] count]+ v6;
      if (v7)
      {
        v8 = v7;
        v5 = 0.0;
        if ([(OKWidgetViewProxy *)self supportsReadiness])
        {
          [(OKWidgetViewProxy *)self _localReadyProgress];
          v5 = v9 / v8 + 0.0;
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [(OKWidgetViewProxy *)self subWidgetViews];
        v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v18 + 1) + 8 * i) readyProgress:1];
              v5 = v5 + v15 / v8;
            }

            v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v12);
        }
      }
    }

    else
    {
      [(OKWidgetViewProxy *)self _localReadyProgress];
      v5 = v16;
    }

    [(NSRecursiveLock *)self->_readyRecursiveLock unlock];
  }

  return v5;
}

- (void)becomeReady
{
  [(NSRecursiveLock *)self->_readyRecursiveLock lock];
  if (!self->_isReady)
  {
    self->_isReady = 1;
    [(OKWidgetViewProxy *)self readinessDidChange:1];
  }

  readyRecursiveLock = self->_readyRecursiveLock;

  [(NSRecursiveLock *)readyRecursiveLock unlock];
}

- (void)resignReady
{
  [(NSRecursiveLock *)self->_readyRecursiveLock lock];
  if (self->_isReady)
  {
    self->_isReady = 0;
    [(OKWidgetViewProxy *)self readinessDidChange:0];
  }

  readyRecursiveLock = self->_readyRecursiveLock;

  [(NSRecursiveLock *)readyRecursiveLock unlock];
}

- (void)readinessDidChange:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_readyRecursiveLock lock];
  if ([(OKWidgetViewProxy *)self isReady:1]== v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    readyNotificationBlocks = self->_readyNotificationBlocks;
    v6 = [(NSMutableArray *)readyNotificationBlocks countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(readyNotificationBlocks);
          }

          (*(*(*(&v11 + 1) + 8 * i) + 16))();
        }

        v7 = [(NSMutableArray *)readyNotificationBlocks countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_readyNotificationBlocks removeAllObjects];
    if ([(OKWidgetViewProxy *)self parentWidgetView])
    {
      v10 = [(OKWidgetViewProxy *)self parentWidgetView];
    }

    else
    {
      v10 = [(OKWidgetViewProxy *)self pageViewController];
    }

    [(OKWidgetViewProxy *)v10 readinessDidChange:v3];
  }

  [(NSRecursiveLock *)self->_readyRecursiveLock unlock];
}

- (void)networkStatusDidChange:(int64_t)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetView.m" line:3696 andFormat:@"networkStatusDidChange must be implemented by subclass"];
  }
}

- (void)instantPause
{
  v13 = *MEMORY[0x277D85DE8];
  [(OKWidgetViewProxy *)self pauseContentEffects];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  subWidgetViews = self->_subWidgetViews;
  v4 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(subWidgetViews);
        }

        [*(*(&v8 + 1) + 8 * v7++) instantPause];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)instantResume
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  subWidgetViews = self->_subWidgetViews;
  v4 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(subWidgetViews);
        }

        [*(*(&v8 + 1) + 8 * i) instantResume];
      }

      v5 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(OKWidgetViewProxy *)self resumeContentEffects:1];
}

- (double)remainingPlayDuration
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  contentEffects = self->_contentEffects;
  v3 = [(NSArray *)contentEffects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = *v11;
  v6 = 0.0;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(contentEffects);
      }

      [*(*(&v10 + 1) + 8 * i) remainingPlayDuration];
      if (v6 <= v8)
      {
        v6 = v8;
      }
    }

    v4 = [(NSArray *)contentEffects countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v6;
}

- (void)_prepareToFocus
{
  v41 = *MEMORY[0x277D85DE8];
  self->_presentationMode = 0;
  v3 = [(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentationView];
  [(OKWidgetViewProxy *)self setAntialiasing:1];
  [-[OKWidgetViewProxy superview](self "superview")];
  focusGestureHelper = self->_focusGestureHelper;
  if (focusGestureHelper)
  {
    free(focusGestureHelper);
    self->_focusGestureHelper = 0;
  }

  v5 = malloc_type_calloc(1uLL, 0xC8uLL, 0x108004034612A4DuLL);
  self->_focusGestureHelper = v5;
  [(OKWidgetViewProxy *)self center];
  v5->var3.x = v6;
  v5->var3.y = v7;
  v8 = self->_focusGestureHelper;
  [(OKWidgetViewProxy *)self bounds];
  v8->var4.width = v9;
  v8->var4.height = v10;
  [-[OKWidgetViewProxy layer](self "layer")];
  v11 = self->_focusGestureHelper;
  v11->var5 = v12;
  [(OKWidgetViewProxy *)self _focusSize];
  v11->var10.width = v13;
  v11->var10.height = v14;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [-[OKWidgetViewProxy superview](self "superview")];
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v37;
LABEL_5:
    v20 = 0;
    v21 = v18;
    while (1)
    {
      if (*v37 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v18 = *(*(&v36 + 1) + 8 * v20);
      if (v18 == self)
      {
        break;
      }

      ++v20;
      v21 = v18;
      if (v17 == v20)
      {
        v17 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
        v21 = v18;
        if (v17)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = self->_focusGestureHelper;
  var1 = v22->var1;
  if (var1)
  {

    v22 = self->_focusGestureHelper;
    v22->var1 = 0;
  }

  if (v21)
  {
    v24 = v21;
    v22 = self->_focusGestureHelper;
  }

  else
  {
    v24 = 0;
  }

  v22->var1 = v24;
  var0 = v22->var0;
  if (var0)
  {

    self->_focusGestureHelper->var0 = 0;
  }

  v26 = [(OKWidgetViewProxy *)self superview];
  v27 = self->_focusGestureHelper;
  v27->var0 = v26;
  [(OKWidgetViewProxy *)self transform];
  *&v27->var6.a = v33;
  *&v27->var6.c = v34;
  *&v27->var6.tx = v35;
  [(OKWidgetViewProxy *)self center];
  [(OKPresentationView *)v3 convertPoint:[(OKWidgetViewProxy *)self superview] fromView:v28, v29];
  [(OKWidgetViewProxy *)self setCenter:?];
  [(OKPresentationView *)v3 addSubview:self];
  [-[OKWidgetViewProxy layer](self "layer")];
  self->_focusGestureHelper->var2 = v30;
  [-[OKWidgetViewProxy layer](self "layer")];
  if (!self->_dimmerView)
  {
    v31 = [OKDimmerView alloc];
    [(OKPresentationView *)v3 bounds];
    v32 = [(OKDimmerView *)v31 initWithFrame:?];
    self->_dimmerView = v32;
    [-[OFUIView layer](v32 "layer")];
    [(OFUIView *)self->_dimmerView setAlpha:0.0];
    [(OKPresentationView *)v3 addSubview:self->_dimmerView];
    [(OKPresentationView *)v3 bringSubviewToFront:self];
  }
}

- (void)_animateToFocus:(double)a3 completion:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__OKWidgetViewProxy__animateToFocus_completion___block_invoke;
  v5[3] = &unk_279C8E818;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__OKWidgetViewProxy__animateToFocus_completion___block_invoke_2;
  v4[3] = &unk_279C8E798;
  v4[4] = self;
  v4[5] = a4;
  [MEMORY[0x277D627F8] animateWithDuration:v5 animations:v4 completion:a3];
}

uint64_t __48__OKWidgetViewProxy__animateToFocus_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _completionToFocus:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (CGSize)_focusSize
{
  v3 = [(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentationView];
  v4 = self;
  if (self->_focusGestureMode != 1)
  {
    v4 = [(OKWidgetViewProxy *)self _contentViewToFocus];
  }

  [(OKWidgetViewProxy *)v4 bounds];
  v6 = v5;
  v8 = v7;
  [(OKPresentationView *)v3 bounds];
  v10 = v9 - (self->_focusGestureInsets.left + self->_focusGestureInsets.right);
  [(OKPresentationView *)v3 bounds];
  v12 = v11 - (self->_focusGestureInsets.top + self->_focusGestureInsets.bottom);
  focusGestureMode = self->_focusGestureMode;
  if (focusGestureMode == 1)
  {
    v10 = v10 - (self->_borderEdgeOutsets.left + self->_borderEdgeOutsets.right);
    v12 = v12 - (self->_borderEdgeOutsets.top + self->_borderEdgeOutsets.bottom);
  }

  v14 = v6 / v8;
  if (v6 <= v8 || v14 < v10 / v12)
  {
    v10 = v14 * v12;
  }

  else
  {
    v12 = v10 / v14;
  }

  if (focusGestureMode != 1)
  {
    [(OKWidgetViewProxy *)self bounds];
    v10 = v10 + v15 - v6;
    [(OKWidgetViewProxy *)self bounds];
    v12 = v12 + v16 - v8;
  }

  v17 = v10;
  v18 = v12;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)_animationToFocus
{
  v3 = [(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentationView];
  v4 = self;
  if (self->_focusGestureMode != 1)
  {
    v4 = [(OKWidgetViewProxy *)self _contentViewToFocus];
  }

  [(OKWidgetViewProxy *)self _focusSize];
  v6 = v5;
  v8 = v7;
  if (self->_focusGestureMode == 1)
  {
    [(OKPresentationView *)v3 center];
    p_focusGestureInsets = &self->_focusGestureInsets;
    v11 = v10 + self->_focusGestureInsets.left - self->_focusGestureInsets.right;
    [(OKPresentationView *)v3 center];
  }

  else
  {
    [(OKWidgetContainerView *)self->_contentView center];
    [(OKWidgetViewProxy *)self convertPoint:[(OKWidgetContainerView *)self->_contentView superview] fromView:v13, v14];
    v16 = v15;
    v18 = v17;
    [(OKWidgetViewProxy *)v4 center];
    [(OKWidgetViewProxy *)self convertPoint:[(OKWidgetViewProxy *)v4 superview] fromView:v19, v20];
    v22 = v21;
    v24 = v23;
    [(OKPresentationView *)v3 center];
    p_focusGestureInsets = &self->_focusGestureInsets;
    v11 = v25 + v16 - v22 + self->_focusGestureInsets.left - self->_focusGestureInsets.right;
    [(OKPresentationView *)v3 center];
    v12 = v18 - v24 + v26;
  }

  v27 = v12 + p_focusGestureInsets->top - p_focusGestureInsets->bottom;
  v28 = *(MEMORY[0x277CBF2C0] + 16);
  v29[0] = *MEMORY[0x277CBF2C0];
  v29[1] = v28;
  v29[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(OKWidgetViewProxy *)self setTransform:v29];
  [(OKWidgetViewProxy *)self setCenter:v11, v27];
  [(OKWidgetViewProxy *)self setBounds:0.0, 0.0, v6, v8];
  [(OFUIView *)self->_dimmerView setAlpha:0.899999976];
  if (self->_focusGestureMode != 1)
  {
    [(UIImageView *)self->_borderView setAlpha:0.0];
    [-[OKWidgetViewProxy layer](self "layer")];
  }
}

- (void)_completionToFocus:(BOOL)a3
{
  self->_presentationMode = 2;
  [(OKWidgetViewProxy *)self setAntialiasing:[(OKWidgetViewProxy *)self needsAntialiasing]];

  [(OKWidgetViewProxy *)self prepareForRefresh];
}

- (void)_prepareToUnfocus
{
  self->_presentationMode = 0;
  [(OKWidgetViewProxy *)self setAntialiasing:1];
  focusGestureHelper = self->_focusGestureHelper;
  [(OKWidgetViewProxy *)self _focusSize];
  focusGestureHelper->var10.width = v4;
  focusGestureHelper->var10.height = v5;
}

- (void)_animateToUnfocus:(double)a3 completion:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__OKWidgetViewProxy__animateToUnfocus_completion___block_invoke;
  v5[3] = &unk_279C8E818;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__OKWidgetViewProxy__animateToUnfocus_completion___block_invoke_2;
  v4[3] = &unk_279C8E798;
  v4[4] = self;
  v4[5] = a4;
  [MEMORY[0x277D627F8] animateWithDuration:v5 animations:v4 completion:a3];
}

uint64_t __50__OKWidgetViewProxy__animateToUnfocus_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _completionToUnfocus:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_animationToUnfocus
{
  v3 = [(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentationView];
  focusGestureHelper = self->_focusGestureHelper;
  x = focusGestureHelper->var3.x;
  y = focusGestureHelper->var3.y;
  width = focusGestureHelper->var4.width;
  height = focusGestureHelper->var4.height;
  if (focusGestureHelper->var0)
  {
    [(OKPresentationView *)v3 convertPoint:focusGestureHelper->var3.x fromView:focusGestureHelper->var3.y];
    x = v9;
    y = v10;
    focusGestureHelper = self->_focusGestureHelper;
  }

  v11 = *&focusGestureHelper->var6.c;
  v15[0] = *&focusGestureHelper->var6.a;
  v15[1] = v11;
  v15[2] = *&focusGestureHelper->var6.tx;
  [(OKWidgetViewProxy *)self setTransform:v15];
  [(OKWidgetViewProxy *)self setCenter:x, y];
  [(OKWidgetViewProxy *)self setBounds:0.0, 0.0, width, height];
  var5 = self->_focusGestureHelper->var5;
  v13 = [(OKWidgetViewProxy *)self layer];
  *&v14 = var5;
  [v13 setShadowOpacity:v14];
  [(UIImageView *)self->_borderView setAlpha:1.0];
  [(OFUIView *)self->_dimmerView setAlpha:0.0];
}

- (void)_completionToUnfocus:(BOOL)a3
{
  [(UIImageView *)self->_borderView setAlpha:a3, 1.0];
  [(OFUIView *)self->_dimmerView setAlpha:0.0];
  [(OFUIView *)self->_dimmerView removeFromSuperview];
  dimmerView = self->_dimmerView;
  if (dimmerView)
  {

    self->_dimmerView = 0;
  }

  [(OKWidgetViewProxy *)self setAntialiasing:[(OKWidgetViewProxy *)self needsAntialiasing]];
  focusGestureHelper = self->_focusGestureHelper;
  var0 = focusGestureHelper->var0;
  if (focusGestureHelper->var0)
  {
    [(OKWidgetViewProxy *)self center];
    [var0 convertPoint:-[OKWidgetViewProxy superview](self fromView:{"superview"), v7, v8}];
    v10 = v9;
    v12 = v11;
    v13 = self->_focusGestureHelper;
    v14 = v13->var0;
    if (v13->var1)
    {
      [v14 insertSubview:self aboveSubview:?];
      var1 = self->_focusGestureHelper->var1;
      if (var1)
      {

        self->_focusGestureHelper->var1 = 0;
      }
    }

    else
    {
      [v14 addSubview:self];
    }

    [(OKWidgetViewProxy *)self setCenter:v10, v12];
    [(OKWidgetViewProxy *)self updateTransforms];
    focusGestureHelper = self->_focusGestureHelper;
    if (focusGestureHelper->var0)
    {

      focusGestureHelper = self->_focusGestureHelper;
      focusGestureHelper->var0 = 0;
    }
  }

  [-[OKWidgetViewProxy layer](self "layer")];
  [-[OKWidgetViewProxy superview](self "superview")];
  [(OKWidgetViewProxy *)self prepareForRefresh];
  v16 = self->_focusGestureHelper;
  if (v16)
  {
    free(v16);
    self->_focusGestureHelper = 0;
  }

  self->_presentationMode = 1;
  v17 = [-[OKWidgetViewProxy pageViewController](self "pageViewController")];

  [v17 prepareCouchPotatoPlayback];
}

- (void)focus:(unint64_t)a3 duration:(double)a4 completion:(id)a5
{
  if (self->_presentationMode == 1)
  {
    self->_focusGestureMode = a3;
    [objc_msgSend(-[OKWidgetViewProxy pageViewController](self "pageViewController")];
    [(OKWidgetViewProxy *)self _prepareToFocus];

    [(OKWidgetViewProxy *)self _animateToFocus:a5 completion:a4];
  }
}

- (void)focus:(id)a3
{
  presentationMode = self->_presentationMode;
  if (presentationMode == 2)
  {
    [(OKWidgetViewProxy *)self unfocus:0 completion:0.3];
  }

  else if (presentationMode == 1)
  {
    [(OKWidgetViewProxy *)self focus:1 duration:0 completion:0.3];
  }
}

- (void)unfocus:(double)a3 completion:(id)a4
{
  if (self->_presentationMode == 2)
  {
    [(OKWidgetViewProxy *)self _prepareToUnfocus];

    [(OKWidgetViewProxy *)self _animateToUnfocus:a4 completion:a3];
  }
}

- (void)dynamicsRemoveSnapping
{
  dynamicSnapBehavior = self->_dynamicSnapBehavior;
  if (dynamicSnapBehavior)
  {
    [-[UISnapBehavior dynamicAnimator](dynamicSnapBehavior "dynamicAnimator")];

    self->_dynamicSnapBehavior = 0;
  }
}

- (void)dynamicsSnapToPoint:(CGPoint)a3 withDamping:(double)a4
{
  y = a3.y;
  x = a3.x;
  dynamicSnapBehavior = self->_dynamicSnapBehavior;
  if (dynamicSnapBehavior)
  {
    [-[UISnapBehavior dynamicAnimator](dynamicSnapBehavior "dynamicAnimator")];

    self->_dynamicSnapBehavior = 0;
  }

  v9 = [objc_alloc(MEMORY[0x277D75A40]) initWithItem:self->_dynamicProxy snapToPoint:{x, y}];
  self->_dynamicSnapBehavior = v9;
  [(UISnapBehavior *)v9 setDamping:a4];
  v10 = [-[OKWidgetViewProxy pageViewController](self "pageViewController")];
  v11 = self->_dynamicSnapBehavior;

  [v10 addBehavior:v11];
}

+ (void)setupJavascriptContext:(id)a3
{
  v80[3] = *MEMORY[0x277D85DE8];
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetView"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:a3];
  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v5 = *MEMORY[0x277CD4618];
  v78[0] = *MEMORY[0x277CD4620];
  v78[1] = v5;
  v6 = v78[0];
  v80[0] = &__block_literal_global_502;
  v80[1] = MEMORY[0x277CBEC28];
  v7 = MEMORY[0x277CBEC28];
  v79 = *MEMORY[0x277CD4610];
  v8 = v79;
  v9 = MEMORY[0x277CBEC38];
  v80[2] = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"name" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v80, v78, 3)}];
  v10 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v76[0] = v6;
  v76[1] = v5;
  v77[0] = &__block_literal_global_506;
  v77[1] = v7;
  v76[2] = v8;
  v77[2] = v9;
  [v10 defineProperty:@"widgets" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v77, v76, 3)}];
  v11 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v74[0] = v6;
  v74[1] = v5;
  v75[0] = &__block_literal_global_508;
  v75[1] = v7;
  v74[2] = v8;
  v75[2] = v9;
  [v11 defineProperty:@"items" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v75, v74, 3)}];
  v12 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v72[0] = v6;
  v72[1] = v5;
  v73[0] = &__block_literal_global_510;
  v73[1] = v7;
  v72[2] = v8;
  v73[2] = v9;
  [v12 defineProperty:@"userData" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v73, v72, 3)}];
  v13 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v70[0] = v6;
  v70[1] = v5;
  v71[0] = &__block_literal_global_513;
  v71[1] = v7;
  v70[2] = v8;
  v71[2] = v9;
  [v13 defineProperty:@"parentPage" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v71, v70, 3)}];
  v14 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v68[0] = v6;
  v68[1] = v5;
  v69[0] = &__block_literal_global_516;
  v69[1] = v7;
  v68[2] = v8;
  v69[2] = v9;
  [v14 defineProperty:@"parentWidget" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v69, v68, 3)}];
  v15 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v66[0] = v6;
  v38 = v6;
  v66[1] = v5;
  v67[0] = &__block_literal_global_522;
  v67[1] = v7;
  v66[2] = v8;
  v67[2] = v9;
  [v15 defineProperty:@"prepareMode" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v67, v66, 3)}];
  v16 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v64[0] = v6;
  v64[1] = v5;
  v65[0] = &__block_literal_global_528;
  v65[1] = v7;
  v64[2] = v8;
  v65[2] = v9;
  [v16 defineProperty:@"layoutFactor" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v65, v64, 3)}];
  v17 = [a3 objectForKeyedSubscript:@"OKWidgetView"];
  v19 = *MEMORY[0x277CD4638];
  v62[0] = *MEMORY[0x277CD4630];
  v18 = v62[0];
  v62[1] = v19;
  v20 = v19;
  v63[0] = &__block_literal_global_534;
  v63[1] = v9;
  v62[2] = v5;
  v62[3] = v8;
  v21 = MEMORY[0x277CBEC28];
  v63[2] = MEMORY[0x277CBEC28];
  v63[3] = v9;
  [v17 defineProperty:@"animate" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v63, v62, 4)}];
  v22 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v60[0] = v18;
  v39 = v18;
  v60[1] = v20;
  v61[0] = &__block_literal_global_541;
  v61[1] = v9;
  v60[2] = v5;
  v60[3] = v8;
  v61[2] = v21;
  v61[3] = v9;
  [v22 defineProperty:@"focus" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v61, v60, 4)}];
  v23 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v58[0] = v18;
  v58[1] = v20;
  v59[0] = &__block_literal_global_547;
  v59[1] = v9;
  v58[2] = v5;
  v58[3] = v8;
  v59[2] = v21;
  v59[3] = v9;
  v24 = v9;
  [v23 defineProperty:@"unfocus" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v59, v58, 4)}];
  [a3 setObject:&unk_287AF0AD0 forKeyedSubscript:@"kOKGestureFocusModeObject"];
  [a3 setObject:&unk_287AF0AE8 forKeyedSubscript:@"kOKGestureFocusModeContent"];
  [a3 setObject:&unk_287AF0B00 forKeyedSubscript:@"kOKGestureFocusModeContentAll"];
  v25 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v56[0] = v38;
  v56[1] = v5;
  v57[0] = &__block_literal_global_568;
  v26 = MEMORY[0x277CBEC28];
  v57[1] = MEMORY[0x277CBEC28];
  v56[2] = v8;
  v57[2] = v24;
  [v25 defineProperty:@"presentationMode" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v57, v56, 3)}];
  [a3 setObject:&unk_287AF0AD0 forKeyedSubscript:@"kOKPresentationModeNormal"];
  [a3 setObject:&unk_287AF0AE8 forKeyedSubscript:@"kOKPresentationModeFocus"];
  v27 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v54[0] = v38;
  v54[1] = v5;
  v55[0] = &__block_literal_global_581;
  v55[1] = v26;
  v54[2] = v8;
  v55[2] = MEMORY[0x277CBEC38];
  [v27 defineProperty:@"originalTransform" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v55, v54, 3)}];
  v28 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v29 = *MEMORY[0x277CD4628];
  v52[0] = v38;
  v52[1] = v29;
  v53[0] = &__block_literal_global_587;
  v53[1] = &__block_literal_global_591;
  v52[2] = v5;
  v52[3] = v8;
  v53[2] = v26;
  v30 = MEMORY[0x277CBEC38];
  v53[3] = MEMORY[0x277CBEC38];
  [v28 defineProperty:@"transform" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v53, v52, 4)}];
  v31 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v50[0] = v39;
  v50[1] = v5;
  v51[0] = &__block_literal_global_597;
  v51[1] = v26;
  v50[2] = v8;
  v51[2] = v30;
  [v31 defineProperty:@"pauseContentEffects" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v51, v50, 3)}];
  v32 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v48[0] = v39;
  v48[1] = v5;
  v49[0] = &__block_literal_global_603;
  v49[1] = v26;
  v48[2] = v8;
  v49[2] = v30;
  [v32 defineProperty:@"resumeContentEffects" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v49, v48, 3)}];
  v33 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v46[0] = v39;
  v46[1] = v5;
  v47[0] = &__block_literal_global_609;
  v47[1] = v26;
  v46[2] = v8;
  v47[2] = v30;
  [v33 defineProperty:@"restartContentEffects" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v47, v46, 3)}];
  v34 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v44[0] = v39;
  v44[1] = v20;
  v45[0] = &__block_literal_global_616;
  v45[1] = v30;
  v44[2] = v5;
  v44[3] = v8;
  v35 = MEMORY[0x277CBEC28];
  v45[2] = MEMORY[0x277CBEC28];
  v45[3] = v30;
  [v34 defineProperty:@"animateWithKeyPath" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v45, v44, 4)}];
  v36 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v42[0] = v39;
  v42[1] = v20;
  v43[0] = &__block_literal_global_624;
  v43[1] = v30;
  v42[2] = v5;
  v42[3] = v8;
  v43[2] = v35;
  v43[3] = v30;
  [v36 defineProperty:@"removeAnimationWithKey" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v43, v42, 4)}];
  v37 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetView", "objectForKeyedSubscript:", @"prototype"}];
  v40[0] = v39;
  v40[1] = v20;
  v41[0] = &__block_literal_global_631;
  v41[1] = v30;
  v40[2] = v5;
  v40[3] = v8;
  v41[2] = v35;
  v41[3] = v30;
  [v37 defineProperty:@"convertPointFromWindow" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v41, v40, 4)}];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 name];
}

id __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_2()
{
  v0 = objc_opt_new();
  [v0 setTag:1];
  [v0 setDataSource:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentThis"), "toObject")}];

  return v0;
}

id __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_3()
{
  v0 = objc_opt_new();
  [v0 setTag:2];
  [v0 setDataSource:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentThis"), "toObject")}];

  return v0;
}

id __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_4()
{
  v0 = objc_opt_new();
  [v0 setTag:3];
  [v0 setDataSource:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentThis"), "toObject")}];

  return v0;
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_5()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 pageViewController];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_6()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 parentWidgetView];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_7()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 prepareMode];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_8()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 layoutFactor];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_9(double a1, double a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = 66150;
  if ([a4 isEqualToString:*MEMORY[0x277CDA7C8]])
  {
    v11 = 197222;
  }

  else if (([a4 isEqualToString:*MEMORY[0x277CDA7B0]] & 1) == 0)
  {
    if ([a4 isEqualToString:*MEMORY[0x277CDA7C0]])
    {
      v11 = 131686;
    }

    else
    {
      [a4 isEqualToString:*MEMORY[0x277CDA7B8]];
      v11 = 614;
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_10;
  v14[3] = &unk_279C8E818;
  v14[4] = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_11;
  v13[3] = &unk_279C8FA38;
  v13[4] = a6;
  return [MEMORY[0x277D75D18] animateWithDuration:v11 delay:v14 options:v13 animations:a1 completion:a2];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_11(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4[0] = [MEMORY[0x277CCABB0] numberWithBool:a2];
  return [v2 callWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)}];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_12(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_13;
  v9[3] = &unk_279C8FA38;
  v9[4] = a4;
  return [v7 focus:a3 duration:v9 completion:a1];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4[0] = [MEMORY[0x277CCABB0] numberWithBool:a2];
  return [v2 callWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)}];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_14(double a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_15;
  v7[3] = &unk_279C8FA38;
  v7[4] = a3;
  return [v5 unfocus:v7 completion:a1];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_15(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4[0] = [MEMORY[0x277CCABB0] numberWithBool:a2];
  return [v2 callWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)}];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_566()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 presentationMode];
}

double __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_2_578@<D0>(_OWORD *a1@<X8>)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  if (v2)
  {

    [v2 _jsOriginalTransform];
  }

  else
  {
    result = 0.0;
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_3_585@<D0>(_OWORD *a1@<X8>)
{
  v2 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  if (v2)
  {

    [v2 _jsTransform];
  }

  else
  {
    result = 0.0;
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_4_588(uint64_t a1, _OWORD *a2)
{
  v3 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v5 = a2[7];
  v9[6] = a2[6];
  v9[7] = v5;
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v7 = a2[3];
  v9[2] = a2[2];
  v9[3] = v7;
  return [v3 _jsSetTransform:v9];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_5_595()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 pauseContentEffects];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_6_601()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 resumeContentEffects:0];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_7_607()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 restartContentEffects];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_8_613(double a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6, int a7)
{
  v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:a3];
  [v13 setDuration:a1];
  v14 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  if (([a5 isEqualToString:*MEMORY[0x277CDA7C8]] & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", *MEMORY[0x277CDA7B0]) & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", *MEMORY[0x277CDA7C0]) & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", *MEMORY[0x277CDA7B8]) & 1) != 0 || objc_msgSend(a5, "isEqualToString:", *MEMORY[0x277CDA7A8]))
  {
    [v13 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", a5)}];
  }

  [v13 setByValue:{objc_msgSend(a4, "toNumber")}];
  if (a6)
  {
    LODWORD(v15) = 2139095039;
    [v13 setRepeatCount:v15];
  }

  if (a7)
  {
    [v13 setAutoreverses:1];
  }

  v16 = [v14 layer];

  return [v16 addAnimation:v13 forKey:a3];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_9_621(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v3 removeAnimationForKey:a2];
}

uint64_t __44__OKWidgetViewProxy_setupJavascriptContext___block_invoke_10_628(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  [a2 toPoint];

  return [v3 convertPoint:0 fromView:?];
}

- (id)addSubWidgetViewWithTemplateName:(id)a3 name:(id)a4 andSettings:(id)a5
{
  v6 = [-[OKWidgetViewProxy pageViewController](self "pageViewController")];
  [v6 setParentWidgetView:self];
  [(NSMutableArray *)self->_subWidgetViews addObject:v6];
  [(NSMutableArray *)self->_newSubWidgetViews addObject:v6];
  [(OKWidgetViewProxy *)self addSubview:v6];
  [v6 applySettingsIfNeeded];
  [v6 prepareForMode:-[OKWidgetViewProxy prepareMode](self force:{"prepareMode"), 1}];
  return v6;
}

- (unint64_t)countOfDictionaryProxy:(id)a3
{
  if ([a3 tag] == 1)
  {
    v5 = [(OKWidgetViewProxy *)self subWidgetViews];
LABEL_3:

    return [(NSMutableArray *)v5 count];
  }

  if ([a3 tag] != 2)
  {
    if ([a3 tag] == 3)
    {
      v5 = [(OKPresentationCanvas *)[(OKWidgetViewProxy *)self widget] userData];
      goto LABEL_3;
    }

    return 0;
  }

  v7 = objc_opt_class();
  if (!class_conformsToProtocol(v7, &unk_287B3DF80))
  {
    return 0;
  }

  return [(OKWidgetViewProxy *)self collectionItemsCount];
}

- (id)allKeysForDictionaryProxy:(id)a3
{
  if ([a3 tag] == 1)
  {
    v5 = [(OKWidgetViewProxy *)self subWidgetViews];

    return [(NSMutableArray *)v5 valueForKeyPath:@"widget.name"];
  }

  if ([a3 tag] == 2)
  {
    v7 = objc_opt_class();
    if (class_conformsToProtocol(v7, &unk_287B3DF80))
    {

      return [(OKWidgetViewProxy *)self collectionItemsNames];
    }

    return 0;
  }

  if ([a3 tag] != 3)
  {
    return 0;
  }

  v8 = [(OKPresentationCanvas *)[(OKWidgetViewProxy *)self widget] userData];

  return [(NSMutableDictionary *)v8 allKeys];
}

- (id)dictionaryProxy:(id)a3 objectForKey:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  if ([a3 tag] == 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(OKWidgetViewProxy *)self subWidgetViews];
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if ([objc_msgSend(objc_msgSend(v12 "widget")])
        {
          return v12;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          v12 = 0;
          if (v9)
          {
            goto LABEL_4;
          }

          return v12;
        }
      }
    }

    return 0;
  }

  if ([a3 tag] == 2)
  {
    v13 = objc_opt_class();
    if (!class_conformsToProtocol(v13, &unk_287B3DF80))
    {
      return 0;
    }

    return [(OKWidgetViewProxy *)self collectionItemForName:a4];
  }

  else
  {
    if ([a3 tag] != 3)
    {
      return 0;
    }

    v15 = [(OKPresentationCanvas *)[(OKWidgetViewProxy *)self widget] userData];

    return [(NSMutableDictionary *)v15 objectForKey:a4];
  }
}

- (id)dictionaryProxy:(id)a3 objectAtIndexPath:(id)a4
{
  if ([a3 tag] != 2)
  {
    return 0;
  }

  v6 = objc_opt_class();
  if (!class_conformsToProtocol(v6, &unk_287B3DF80))
  {
    return 0;
  }

  return [(OKWidgetViewProxy *)self collectionItemAtIndexPath:a4];
}

- (BOOL)isFocused
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  subWidgetViews = self->_subWidgetViews;
  v4 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(subWidgetViews);
        }

        if ([*(*(&v9 + 1) + 8 * i) isFocused])
        {
          return 1;
        }
      }

      v5 = [(NSMutableArray *)subWidgetViews countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return self->_presentationMode != 1;
}

@end