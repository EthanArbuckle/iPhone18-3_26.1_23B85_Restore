@interface OKNavigatorScrollViewControllerProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (BOOL)prepareForDisplay;
- (BOOL)prepareForUnload;
- (BOOL)prepareForWarmup;
- (CGPoint)contentOffset;
- (CGRect)contentBounds;
- (CGRect)visiblePageRect;
- (CGSize)contentSize;
- (CGSize)layoutFactor;
- (_OKEventElement)createElementWithObject:(id)a3 atOffset:(CGPoint)a4 withProbability:(unint64_t)a5 withLimit:(unint64_t)a6;
- (_OKEventList)createList;
- (id)keyForOffset:(CGPoint)a3;
- (id)sectorKeysForRect:(CGRect)a3;
- (void)applySettings;
- (void)cancelCouchPotatoPlayback;
- (void)cleanupScrollEvents;
- (void)dealloc;
- (void)deleteElement:(_OKEventElement *)a3 inList:(_OKEventList *)a4;
- (void)doApplyMotion:(id)a3;
- (void)doMotionAction:(id)a3;
- (void)doPanAction:(id)a3;
- (void)doSwipeAction:(id)a3;
- (void)insertElement:(_OKEventElement *)a3 inList:(_OKEventList *)a4;
- (void)navigateToItemAtKeyPath:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)navigateToOffset:(CGPoint)a3 animated:(BOOL)a4 duration:(double)a5 timingFunctionName:(id)a6 completion:(id)a7;
- (void)navigateToWidgetWithName:(id)a3 animated:(BOOL)a4 duration:(double)a5 completion:(id)a6;
- (void)registerObject:(id)a3 forActionAtOffset:(CGPoint)a4 probability:(unint64_t)a5 andLimit:(unint64_t)a6;
- (void)registerObjectOnScrollingEvent:(id)a3;
- (void)removeRegisteredObject:(id)a3 forActionAtOffset:(CGPoint)a4 continuous:(BOOL)a5;
- (void)scrollViewDidScrollProxy;
- (void)setSettingViewDidScrollActionScript:(id)a3;
- (void)setTilt:(double)a3;
- (void)triggerAction;
- (void)updatePageViewController;
- (void)updateParallax;
- (void)viewDidLoad;
@end

@implementation OKNavigatorScrollViewControllerProxy

- (void)dealloc
{
  [(OKPageViewController *)self->_pageViewController setNavigatorViewController:0];
  pageViewController = self->_pageViewController;
  if (pageViewController)
  {

    self->_pageViewController = 0;
  }

  viewDidScrollActionScript = self->_viewDidScrollActionScript;
  if (viewDidScrollActionScript)
  {

    self->_viewDidScrollActionScript = 0;
  }

  scrollingAnimation = self->_scrollingAnimation;
  if (scrollingAnimation)
  {

    self->_scrollingAnimation = 0;
  }

  [(OKNavigatorScrollViewControllerProxy *)self cleanupScrollEvents];
  registeredActions = self->_registeredActions;
  if (registeredActions)
  {

    self->_registeredActions = 0;
  }

  registeredObjects = self->_registeredObjects;
  if (registeredObjects)
  {

    self->_registeredObjects = 0;
  }

  v8.receiver = self;
  v8.super_class = OKNavigatorScrollViewControllerProxy;
  [(OKNavigatorViewController *)&v8 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = OKNavigatorScrollViewControllerProxy;
  [(OKNavigatorViewController *)&v5 viewDidLoad];
  self->_lastOffset = *MEMORY[0x277CBF348];
  v3 = [(NSMutableArray *)[(OKPresentationNavigator *)[(OKNavigatorViewControllerProxy *)self navigator] pagesNames] firstObject];
  self->_registeredObjects = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->_registeredActions = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:v3 createIfNeeded:1];
  self->_pageViewController = v4;
  [(OKPageViewController *)v4 setNavigatorViewController:self];
  [(OKPageViewController *)self->_pageViewController setPrepareWidgetsManually:1];
  [(OKNavigatorScrollViewControllerProxy *)self addChildViewController:self->_pageViewController];
  [-[OKPageViewController view](self->_pageViewController "view")];
  [(OKNavigatorViewControllerProxy *)self setCurrentPageViewController:self->_pageViewController];
}

- (void)navigateToItemAtKeyPath:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = [a3 lastPathComponent];

  [(OKNavigatorScrollViewControllerProxy *)self navigateToWidgetWithName:v8 animated:v6 duration:a5 completion:1.0];
}

- (void)navigateToWidgetWithName:(id)a3 animated:(BOOL)a4 duration:(double)a5 completion:(id)a6
{
  v8 = a4;
  v11 = [(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] widgetViewForName:a3 recursively:1];
  if (v11)
  {
    v12 = v11;
    [v11 originalFrame];
    x = v13;
    y = v15;
    width = v17;
    height = v19;
    v21 = *(MEMORY[0x277CBF348] + 8);
    v46 = *MEMORY[0x277CBF348];
    v22 = [v12 parentWidgetView];
    if (v22)
    {
      v23 = v22;
      [v22 originalFrame];
      x = x + v24;
      [v23 originalFrame];
      y = y + v25;
      if ([objc_msgSend(v12 "pageViewController")])
      {
        if ([v23 parallaxEnabled])
        {
          [objc_msgSend(v23 "layer")];
          if (v26 != 0.0)
          {
            pageViewController = self->_pageViewController;
            [objc_msgSend(v23 "layer")];
            [(OKPageViewController *)pageViewController parallaxWithOffsetX:x offsetY:y zPosition:v28];
            CGAffineTransformMakeTranslation(&v47, v29, v30);
            v48.origin.x = x;
            v48.origin.y = y;
            v48.size.width = width;
            v48.size.height = height;
            v49 = CGRectApplyAffineTransform(v48, &v47);
            x = v49.origin.x;
            y = v49.origin.y;
            width = v49.size.width;
            height = v49.size.height;
          }
        }
      }
    }

    else if ([objc_msgSend(v12 "pageViewController")] && objc_msgSend(v12, "parallaxEnabled"))
    {
      [objc_msgSend(v12 "layer")];
      v32 = v31;
      [objc_msgSend(v12 "pageViewController")];
      x = x / (v32 * v33 + 1.0);
      [objc_msgSend(v12 "layer")];
      v35 = v34;
      [objc_msgSend(v12 "pageViewController")];
      y = y / (v35 * v36 + 1.0);
    }

    [(OKNavigatorScrollViewControllerProxy *)self contentSize];
    v38 = v37;
    [(UIScrollView *)self->_scrollView frame];
    v40 = v39;
    [(UIScrollView *)self->_scrollView frame];
    v43 = x + (v42 - width) * -0.5;
    if (v38 > v40)
    {
      v44 = v21;
    }

    else
    {
      v44 = y + (v41 - height) * -0.5;
    }

    v45 = v46;
    if (v38 > v40)
    {
      v45 = v43;
    }

    [(OKNavigatorScrollViewControllerProxy *)self navigateToOffset:v8 animated:@"easeInEaseOut" duration:a6 timingFunctionName:v45 completion:v44, a5];
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Navigators/OKNavigatorScrollViewController.m" line:237 andFormat:@"%s can't find widget named %@", "-[OKNavigatorScrollViewControllerProxy navigateToWidgetWithName:animated:duration:completion:]", a3];
  }
}

- (void)navigateToOffset:(CGPoint)a3 animated:(BOOL)a4 duration:(double)a5 timingFunctionName:(id)a6 completion:(id)a7
{
  v9 = a4;
  y = a3.y;
  v38[2] = *MEMORY[0x277D85DE8];
  if (a3.x >= 0.0)
  {
    x = a3.x;
  }

  else
  {
    x = 0.0;
  }

  [(UIScrollView *)self->_scrollView frame:a4];
  v14 = x + v13;
  [(OKNavigatorScrollViewControllerProxy *)self contentSize];
  if (v14 > v15)
  {
    [(OKNavigatorScrollViewControllerProxy *)self contentSize];
    v17 = v16;
    [(UIScrollView *)self->_scrollView frame];
    x = v17 - v18;
  }

  if (y < 0.0)
  {
    y = 0.0;
  }

  [(UIScrollView *)self->_scrollView frame];
  v20 = y + v19;
  [(OKNavigatorScrollViewControllerProxy *)self contentSize];
  if (v20 > v21)
  {
    [(OKNavigatorScrollViewControllerProxy *)self contentSize];
    v23 = v22;
    [(UIScrollView *)self->_scrollView frame];
    y = v23 - v24;
  }

  if (v9)
  {
    scrollingAnimation = self->_scrollingAnimation;
    if (scrollingAnimation)
    {
      [(OKTimerAnimation *)scrollingAnimation cancel];
      v26 = self->_scrollingAnimation;
      if (v26)
      {

        self->_scrollingAnimation = 0;
      }
    }

    [(OKNavigatorScrollViewControllerProxy *)self contentOffset];
    v28 = v27;
    v37[0] = @"x";
    v37[1] = @"y";
    v38[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v38[1] = [MEMORY[0x277CCABB0] numberWithDouble:v28];
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v35[0] = @"x";
    v35[1] = @"y";
    v36[0] = [MEMORY[0x277CCABB0] numberWithDouble:x];
    v36[1] = [MEMORY[0x277CCABB0] numberWithDouble:y];
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __105__OKNavigatorScrollViewControllerProxy_navigateToOffset_animated_duration_timingFunctionName_completion___block_invoke;
    v34[3] = &unk_279C90750;
    v34[4] = self;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __105__OKNavigatorScrollViewControllerProxy_navigateToOffset_animated_duration_timingFunctionName_completion___block_invoke_2;
    v33[3] = &unk_279C90700;
    v33[4] = a7;
    v31 = [OKTimerAnimation animationFromValues:v29 toValues:v30 withDuration:v34 progressBlock:v33 completionBlock:a5];
    self->_scrollingAnimation = v31;
    [(OKTimerAnimation *)v31 start];
  }

  else
  {
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setContentOffset:x, y];
  }
}

uint64_t __105__OKNavigatorScrollViewControllerProxy_navigateToOffset_animated_duration_timingFunctionName_completion___block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 objectForKeyedSubscript:{@"x", "doubleValue"}];
  v5 = v4;
  result = [objc_msgSend(a2 objectForKeyedSubscript:{@"y", "doubleValue"}];
  if (v5 != *MEMORY[0x277CBF348] || v7 != *(MEMORY[0x277CBF348] + 8))
  {
    v9 = *(*(a1 + 32) + 1184);

    return [v9 setContentOffset:{v5, v7}];
  }

  return result;
}

uint64_t __105__OKNavigatorScrollViewControllerProxy_navigateToOffset_animated_duration_timingFunctionName_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)cancelCouchPotatoPlayback
{
  v5.receiver = self;
  v5.super_class = OKNavigatorScrollViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v5 cancelCouchPotatoPlayback];
  scrollingAnimation = self->_scrollingAnimation;
  if (scrollingAnimation)
  {
    [(OKTimerAnimation *)scrollingAnimation cancel];
    v4 = self->_scrollingAnimation;
    if (v4)
    {

      self->_scrollingAnimation = 0;
    }
  }
}

- (void)insertElement:(_OKEventElement *)a3 inList:(_OKEventList *)a4
{
  var1 = a4->var1;
  ++a4->var0;
  if (var1)
  {
    while (a3->var3 >= var1->var3)
    {
      var1 = var1->var5;
      if (!var1)
      {
        var2 = a4->var2;
        p_var2 = &a4->var2;
        var2->var5 = a3;
        a3->var6 = var2;
        goto LABEL_9;
      }
    }

    a3->var6 = var1->var6;
    var1->var6 = a3;
    a3->var5 = var1;
    var6 = a3->var6;
    if (var6)
    {
      p_var2 = &var6->var5;
    }

    else
    {
      p_var2 = &a4->var1;
    }
  }

  else
  {
    a4->var1 = a3;
    p_var2 = &a4->var2;
  }

LABEL_9:
  *p_var2 = a3;
}

- (void)deleteElement:(_OKEventElement *)a3 inList:(_OKEventList *)a4
{
  p_var1 = &a4->var1;
  var1 = a4->var1;
  if (var1)
  {
    v6 = a4->var1;
    while (v6 != a3)
    {
      v6 = v6->var5;
      if (!v6)
      {
        return;
      }
    }

    --a4->var0;
    if (var1 == a3)
    {
      var2 = a4->var2;
      if (var2 == a3)
      {
        *p_var1 = 0;
        a4->var2 = 0;
LABEL_12:
        free(v6);
        return;
      }

      var5 = v6->var5;
      *p_var1 = var5;
    }

    else
    {
      var5 = v6->var5;
      v6->var6->var5 = var5;
      var2 = a4->var2;
    }

    if (var2 == a3)
    {
      a4->var2 = v6->var6;
    }

    else
    {
      var5->var6 = v6->var6;
    }

    goto LABEL_12;
  }
}

- (_OKEventElement)createElementWithObject:(id)a3 atOffset:(CGPoint)a4 withProbability:(unint64_t)a5 withLimit:(unint64_t)a6
{
  y = a4.y;
  x = a4.x;
  result = malloc_type_malloc(0x40uLL, 0x10A004079968BB1uLL);
  result->var0.x = x;
  result->var0.y = y;
  result->var1 = a5;
  result->var2 = a6;
  result->var5 = 0;
  result->var6 = 0;
  result->var3 = (x + y);
  result->var4 = a3;
  return result;
}

- (_OKEventList)createList
{
  result = malloc_type_malloc(0x18uLL, 0x102004023CB03E4uLL);
  result->var1 = 0;
  result->var2 = 0;
  result->var0 = 0;
  return result;
}

- (void)cleanupScrollEvents
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  registeredActions = self->_registeredActions;
  v4 = [(NSMutableDictionary *)registeredActions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(registeredActions);
        }

        v8 = [-[NSMutableDictionary objectForKey:](self->_registeredActions objectForKey:{*(*(&v12 + 1) + 8 * i)), "pointerValue"}];
        if (v8)
        {
          v9 = v8;
          v10 = *(v8 + 8);
          if (v10)
          {
            do
            {
              v11 = v10[6];
              free(v10);
              v10 = v11;
            }

            while (v11);
          }

          free(v9);
        }
      }

      v5 = [(NSMutableDictionary *)registeredActions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_registeredActions removeAllObjects];
  [(NSMutableArray *)self->_registeredObjects removeAllObjects];
}

- (void)scrollViewDidScrollProxy
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__OKNavigatorScrollViewControllerProxy_scrollViewDidScrollProxy__block_invoke;
  v9[3] = &unk_279C8E818;
  v9[4] = self;
  [(OKNavigatorScrollViewControllerProxy *)self performBlockWithoutAnimations:v9];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_pushWatchdog_ object:0];
  if (self->_viewDidScrollActionScript)
  {
    [(OKNavigatorScrollViewControllerProxy *)self contentBounds];
    v7 = [MEMORY[0x277CD4658] valueWithRect:-[OKPresentationViewControllerProxy jsContext](-[OKNavigatorViewControllerProxy presentationViewController](self inContext:{"presentationViewController"), "jsContext"), v3, v4, v5, v6}];
    if (v7)
    {
      viewDidScrollActionScript = self->_viewDidScrollActionScript;
      v10 = @"scroll";
      v11[0] = v7;
      -[OKNavigatorViewControllerProxy evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:", viewDidScrollActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1], 0, 0, 0);
    }
  }

  [(OKNavigatorScrollViewControllerProxy *)self triggerAction];
}

uint64_t __64__OKNavigatorScrollViewControllerProxy_scrollViewDidScrollProxy__block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "presentationViewController")];
  [*(a1 + 32) updateParallax];
  v2 = *(a1 + 32);
  v3 = v2[147];
  [v2 contentOffset];
  v5 = v4;
  [*(a1 + 32) contentOffset];
  v7 = v6;
  [*(a1 + 32) contentBounds];
  v9 = v8;
  [*(a1 + 32) contentBounds];

  return [v3 prepareWidgetsInRect:{v5, v7, v9}];
}

- (void)triggerAction
{
  v41 = *MEMORY[0x277D85DE8];
  [(OKNavigatorScrollViewControllerProxy *)self contentOffset];
  v4 = v3;
  [(OKNavigatorScrollViewControllerProxy *)self layoutFactor];
  v6 = v4 / v5;
  [(OKNavigatorScrollViewControllerProxy *)self contentOffset];
  v8 = v7;
  [(OKNavigatorScrollViewControllerProxy *)self layoutFactor];
  v10 = v8 / v9;
  x = self->_lastOffset.x;
  y = self->_lastOffset.y;
  v13 = v6 - x;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  registeredObjects = self->_registeredObjects;
  v15 = [(NSMutableArray *)registeredObjects countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(registeredObjects);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        if ([v19 conformsToProtocol:&unk_287AFD3F0])
        {
          [v19 sendAction:+[OKActionScroll scrollWith:](OKActionScroll toTarget:{"scrollWith:", v6, v10), 0}];
        }

        if (objc_opt_respondsToSelector())
        {
          [v19 OKNavigatorScrollView:self didScrollAtOffset:{v6, v10}];
        }
      }

      v16 = [(NSMutableArray *)registeredObjects countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v16);
  }

  v20 = v10 - y;
  if (v13 == 0.0)
  {
    [(UIScrollView *)self->_scrollView frame];
    v13 = v21;
  }

  if (v20 == 0.0)
  {
    [(UIScrollView *)self->_scrollView frame];
    v20 = v22;
  }

  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(OKNavigatorScrollViewControllerProxy *)self sectorKeysForRect:x, y, v13, v20];
  v23 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = [(NSMutableDictionary *)self->_registeredActions objectForKey:*(*(&v31 + 1) + 8 * j)];
        if (v27)
        {
          for (k = *([v27 pointerValue] + 8); k; k = *(k + 48))
          {
            v42.origin.x = x;
            v42.origin.y = y;
            v42.size.width = v13;
            v42.size.height = v20;
            if (CGRectContainsPoint(v42, *k) && *(k + 24) && *(k + 16) > (arc4random() % 0x65))
            {
              v29 = [OKActionScroll scrollWith:*k, *(k + 8)];
              if ([*(k + 40) conformsToProtocol:&unk_287AFD3F0])
              {
                [*(k + 40) sendAction:v29 toTarget:0];
              }

              else if (objc_opt_respondsToSelector())
              {
                [*(k + 40) OKNavigatorScrollView:self didTriggerActionAtOffset:{*k, *(k + 8)}];
              }

              --*(k + 24);
            }
          }
        }
      }

      v24 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v24);
  }

  self->_lastOffset.x = v6;
  self->_lastOffset.y = v10;
}

- (id)sectorKeysForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = vcvtpd_s64_f64((fabs(width) + (x & 0x1FF)) * 0.001953125);
  if (v9 >= 1)
  {
    v10 = x;
    v11 = vcvtpd_s64_f64((fabs(height) + (y & 0x1FF)) * 0.001953125);
    do
    {
      if (v11 >= 1)
      {
        v12 = v11 + 1;
        v13 = y;
        do
        {
          [v8 addObject:{-[OKNavigatorScrollViewControllerProxy keyForOffset:](self, "keyForOffset:", v10, v13)}];
          v13 += 512;
          --v12;
        }

        while (v12 > 1);
      }

      v10 += 512;
    }

    while (v9-- > 1);
  }

  return v8;
}

- (id)keyForOffset:(CGPoint)a3
{
  if (a3.x < 0.0)
  {
    a3.x = 0.0;
  }

  if (a3.y < 0.0)
  {
    a3.y = 0.0;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%d-%d", (a3.x * 0.001953125), (a3.y * 0.001953125)];
}

- (void)registerObjectOnScrollingEvent:(id)a3
{
  if (([(NSMutableArray *)self->_registeredObjects containsObject:?]& 1) == 0)
  {
    registeredObjects = self->_registeredObjects;

    [(NSMutableArray *)registeredObjects addObject:a3];
  }
}

- (void)registerObject:(id)a3 forActionAtOffset:(CGPoint)a4 probability:(unint64_t)a5 andLimit:(unint64_t)a6
{
  y = a4.y;
  x = a4.x;
  v12 = [(OKNavigatorScrollViewControllerProxy *)self keyForOffset:?];
  v13 = [(NSMutableDictionary *)self->_registeredActions objectForKey:v12];
  v14 = [(OKNavigatorScrollViewControllerProxy *)self createElementWithObject:a3 atOffset:a5 withProbability:a6 withLimit:x, y];
  if (v13)
  {
    v15 = [v13 pointerValue];
  }

  else
  {
    v15 = [(OKNavigatorScrollViewControllerProxy *)self createList];
    -[NSMutableDictionary setObject:forKey:](self->_registeredActions, "setObject:forKey:", [MEMORY[0x277CCAE60] valueWithPointer:v15], v12);
  }

  [(OKNavigatorScrollViewControllerProxy *)self insertElement:v14 inList:v15];
}

- (void)removeRegisteredObject:(id)a3 forActionAtOffset:(CGPoint)a4 continuous:(BOOL)a5
{
  if (a5)
  {
    registeredObjects = self->_registeredObjects;

    [(NSMutableArray *)registeredObjects removeObject:a4.x, a4.y];
  }

  else
  {
    v8 = [-[NSMutableDictionary objectForKey:](self->_registeredActions objectForKey:{-[OKNavigatorScrollViewControllerProxy keyForOffset:](self, "keyForOffset:", a4.x, a4.y)), "pointerValue"}];
    if (v8)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        while (*(v9 + 40) != a3)
        {
          v9 = *(v9 + 48);
          if (!v9)
          {
            return;
          }
        }

        [OKNavigatorScrollViewControllerProxy deleteElement:"deleteElement:inList:" inList:?];
      }
    }
  }
}

- (void)applySettings
{
  v5.receiver = self;
  v5.super_class = OKNavigatorScrollViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v5 applySettings];
  v3 = +[(OKActionBindingProxy *)OKActionBindingMotion];
  [v3 setTarget:self];
  [v3 setSelector:sel_doMotionAction_];
  [(OKNavigatorViewControllerProxy *)self addActionBinding:v3 scope:2];
  v4 = +[(OKActionBindingProxy *)OKActionBindingPan];
  [v4 setCanPanHorizontally:1];
  [v4 setTarget:self];
  [v4 setSelector:sel_doPanAction_];
  [(OKNavigatorViewControllerProxy *)self addActionBinding:v4 scope:2];
}

+ (id)supportedSettings
{
  v20[6] = *MEMORY[0x277D85DE8];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___OKNavigatorScrollViewControllerProxy;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v6, sel_supportedSettings)}];
  v19[0] = @"showsVerticalScrollIndicator";
  v17[0] = @"type";
  v17[1] = @"default";
  v3 = MEMORY[0x277CBEC38];
  v18[0] = &unk_287AF06E0;
  v18[1] = MEMORY[0x277CBEC38];
  v20[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v19[1] = @"showsHorizontalScrollIndicator";
  v15[0] = @"type";
  v15[1] = @"default";
  v16[0] = &unk_287AF06E0;
  v16[1] = v3;
  v20[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v19[2] = @"contentSize";
  v13[0] = @"type";
  v13[1] = @"defaultBlock";
  v14[0] = &unk_287AF06F8;
  v14[1] = &__block_literal_global_20;
  v20[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v19[3] = @"alwaysBounceVertical";
  v11[0] = @"type";
  v11[1] = @"default";
  v4 = MEMORY[0x277CBEC28];
  v12[0] = &unk_287AF06E0;
  v12[1] = MEMORY[0x277CBEC28];
  v20[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v19[4] = @"alwaysBounceHorizontal";
  v9[0] = @"type";
  v9[1] = @"default";
  v10[0] = &unk_287AF06E0;
  v10[1] = v4;
  v20[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v19[5] = @"viewDidScrollActionScript";
  v7 = @"type";
  v8 = &unk_287AF0710;
  v20[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v20, v19, 6)}];
  return v2;
}

uint64_t __57__OKNavigatorScrollViewControllerProxy_supportedSettings__block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "view")];

  return [a2 setSettingContentSize:{v3, v4}];
}

- (void)updateParallax
{
  pageViewController = self->_pageViewController;
  [(OKNavigatorScrollViewControllerProxy *)self contentOffset];
  v5 = v4;
  [(OKNavigatorScrollViewControllerProxy *)self contentOffset];

  [(OKPageViewController *)pageViewController updateParallaxWithOffsetX:v5 offsetY:?];
}

- (CGSize)layoutFactor
{
  [(OKNavigatorViewControllerProxy *)self parentLayoutFactor];
  v4 = v3;
  v6 = v5;
  [(OKNavigatorScrollViewControllerProxy *)self contentSize];
  v8 = v7;
  [(UIScrollView *)self->_scrollView frame];
  if (v8 <= v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)updatePageViewController
{
  if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 1)
  {
    [(OKPageViewController *)self->_pageViewController prepareForDisplay];
LABEL_5:
    [(OKPresentationViewController *)[(OKNavigatorViewControllerProxy *)self presentationViewController] updateMotion];
    [(OKNavigatorScrollViewControllerProxy *)self updateParallax];
    pageViewController = self->_pageViewController;
    [(OKNavigatorScrollViewControllerProxy *)self contentOffset];
    v7 = v6;
    [(OKNavigatorScrollViewControllerProxy *)self contentOffset];
    v9 = v8;
    [(OKNavigatorScrollViewControllerProxy *)self contentBounds];
    v11 = v10;
    [(OKNavigatorScrollViewControllerProxy *)self contentBounds];

    [(OKPageViewController *)pageViewController prepareWidgetsInRect:v7, v9, v11];
    return;
  }

  v3 = [(OKNavigatorViewControllerProxy *)self prepareMode];
  v4 = self->_pageViewController;
  if (v3 == 2)
  {
    [(OKPageViewController *)v4 prepareForWarmup];
    goto LABEL_5;
  }

  [(OKPageViewController *)v4 prepareForUnload];
}

- (CGRect)visiblePageRect
{
  [(OKNavigatorScrollViewControllerProxy *)self contentOffset];
  v4 = v3;
  [(OKNavigatorScrollViewControllerProxy *)self contentOffset];
  v6 = v5;
  [(OKNavigatorScrollViewControllerProxy *)self contentBounds];
  v8 = v7;
  [(OKNavigatorScrollViewControllerProxy *)self contentBounds];
  v10 = v4;
  v11 = v6;
  v12 = v8;
  result.size.height = v9;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (BOOL)prepareForDisplay
{
  v5.receiver = self;
  v5.super_class = OKNavigatorScrollViewControllerProxy;
  v3 = [(OKNavigatorViewControllerProxy *)&v5 prepareForDisplay];
  if (v3)
  {
    [(OKNavigatorScrollViewControllerProxy *)self updatePageViewController];
  }

  return v3;
}

- (BOOL)prepareForWarmup
{
  v5.receiver = self;
  v5.super_class = OKNavigatorScrollViewControllerProxy;
  v3 = [(OKNavigatorViewControllerProxy *)&v5 prepareForWarmup];
  if (v3)
  {
    [(OKNavigatorScrollViewControllerProxy *)self updatePageViewController];
  }

  return v3;
}

- (BOOL)prepareForUnload
{
  v5.receiver = self;
  v5.super_class = OKNavigatorScrollViewControllerProxy;
  v3 = [(OKNavigatorViewControllerProxy *)&v5 prepareForUnload];
  if (v3)
  {
    [(OKNavigatorScrollViewControllerProxy *)self updatePageViewController];
  }

  return v3;
}

- (CGPoint)contentOffset
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)contentBounds
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)contentSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setSettingViewDidScrollActionScript:(id)a3
{
  viewDidScrollActionScript = self->_viewDidScrollActionScript;
  if (viewDidScrollActionScript)
  {

    self->_viewDidScrollActionScript = 0;
  }

  self->_viewDidScrollActionScript = [a3 copy];
}

+ (void)setupJavascriptContext:(id)a3
{
  v26[3] = *MEMORY[0x277D85DE8];
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKNavigatorScrollViewController"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:a3];
  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorScrollViewController", "objectForKeyedSubscript:", @"prototype"}];
  v6 = *MEMORY[0x277CD4618];
  v24[0] = *MEMORY[0x277CD4620];
  v5 = v24[0];
  v24[1] = v6;
  v26[0] = &__block_literal_global_151;
  v26[1] = MEMORY[0x277CBEC28];
  v7 = MEMORY[0x277CBEC28];
  v25 = *MEMORY[0x277CD4610];
  v8 = v25;
  v9 = MEMORY[0x277CBEC38];
  v26[2] = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"contentOffset" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v26, v24, 3)}];
  v10 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorScrollViewController", "objectForKeyedSubscript:", @"prototype"}];
  v22[0] = v5;
  v22[1] = v6;
  v23[0] = &__block_literal_global_158;
  v23[1] = v7;
  v22[2] = v8;
  v23[2] = v9;
  [v10 defineProperty:@"contentBounds" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v23, v22, 3)}];
  v11 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorScrollViewController", "objectForKeyedSubscript:", @"prototype"}];
  v20[0] = v5;
  v20[1] = v6;
  v21[0] = &__block_literal_global_161;
  v21[1] = v7;
  v20[2] = v8;
  v21[2] = v9;
  [v11 defineProperty:@"contentSize" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v21, v20, 3)}];
  v12 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorScrollViewController", "objectForKeyedSubscript:", @"prototype"}];
  v14 = *MEMORY[0x277CD4638];
  v18[0] = *MEMORY[0x277CD4630];
  v13 = v18[0];
  v18[1] = v14;
  v19[0] = &__block_literal_global_167_0;
  v19[1] = v9;
  v18[2] = v6;
  v18[3] = v8;
  v19[2] = MEMORY[0x277CBEC28];
  v19[3] = v9;
  [v12 defineProperty:@"navigateToWidget" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v19, v18, 4)}];
  v15 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorScrollViewController", "objectForKeyedSubscript:", @"prototype"}];
  v16[0] = v13;
  v16[1] = v14;
  v17[0] = &__block_literal_global_175_0;
  v17[1] = v9;
  v16[2] = v6;
  v16[3] = v8;
  v17[2] = MEMORY[0x277CBEC28];
  v17[3] = v9;
  [v15 defineProperty:@"navigateToOffset" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v17, v16, 4)}];
}

uint64_t __63__OKNavigatorScrollViewControllerProxy_setupJavascriptContext___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 contentOffset];
}

uint64_t __63__OKNavigatorScrollViewControllerProxy_setupJavascriptContext___block_invoke_2()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 contentBounds];
}

uint64_t __63__OKNavigatorScrollViewControllerProxy_setupJavascriptContext___block_invoke_3()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 contentSize];
}

uint64_t __63__OKNavigatorScrollViewControllerProxy_setupJavascriptContext___block_invoke_4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__OKNavigatorScrollViewControllerProxy_setupJavascriptContext___block_invoke_5;
  v11[3] = &unk_279C8FA38;
  v11[4] = a5;
  return [v9 navigateToWidgetWithName:a3 animated:a4 duration:v11 completion:a1];
}

uint64_t __63__OKNavigatorScrollViewControllerProxy_setupJavascriptContext___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4[0] = [MEMORY[0x277CCABB0] numberWithBool:a2];
  return [v2 callWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)}];
}

uint64_t __63__OKNavigatorScrollViewControllerProxy_setupJavascriptContext___block_invoke_6(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__OKNavigatorScrollViewControllerProxy_setupJavascriptContext___block_invoke_7;
  v15[3] = &unk_279C8FA38;
  v15[4] = a7;
  return [v13 navigateToOffset:a5 animated:a6 duration:v15 timingFunctionName:a1 completion:{a2, a3}];
}

uint64_t __63__OKNavigatorScrollViewControllerProxy_setupJavascriptContext___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4[0] = [MEMORY[0x277CCABB0] numberWithBool:a2];
  return [v2 callWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)}];
}

- (void)setTilt:(double)a3
{
  v3 = fmin(a3, 1.0);
  v4 = fmax(a3, -1.0);
  if (a3 >= 0.0)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  self->_tilt = (((v5 + 1.0) * 0.5 * ((v5 + 1.0) * 0.5 * ((v5 + 1.0) * 0.5 * -2.0)) + (v5 + 1.0) * 0.5 * 3.0 * ((v5 + 1.0) * 0.5)) * 2.0 + -1.0) * 0.3;
}

- (void)doApplyMotion:(id)a3
{
  [(UIScrollView *)self->_scrollView contentOffset];
  v5 = v4;
  v6 = self->_currentVelocity + (self->_velocity - self->_currentVelocity) * 0.5;
  self->_currentVelocity = v6;
  v8 = v7 + v6 * 0.0333333333;
  v9 = 0.0;
  if (v8 >= 0.0)
  {
    [(UIScrollView *)self->_scrollView contentSize];
    v11 = v10;
    [(UIScrollView *)self->_scrollView bounds];
    v9 = v8;
    if (v8 > v11 - v12)
    {
      [(UIScrollView *)self->_scrollView contentSize];
      v14 = v13;
      [(UIScrollView *)self->_scrollView bounds];
      v9 = v14 - v15;
    }
  }

  [(UIScrollView *)self->_scrollView setContentOffset:0 animated:v9, v5];
  self->_currentTilt = self->_currentTilt + (self->_tilt - self->_currentTilt) * 0.5;
  self->_currentRotationZ = self->_currentRotationZ + (self->_rotationZ - self->_currentRotationZ) * 0.5;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__OKNavigatorScrollViewControllerProxy_doApplyMotion___block_invoke;
  v16[3] = &unk_279C8E818;
  v16[4] = self;
  [(OKNavigatorScrollViewControllerProxy *)self performBlockWithoutAnimations:v16];
}

- (void)doMotionAction:(id)a3
{
  if ([a3 state] == 1)
  {
    self->_autopanningTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_doApplyMotion_ selector:0 userInfo:1 repeats:0.0333333333];
  }

  else if ([a3 state] == 3)
  {
    [(OKNavigatorScrollViewControllerProxy *)self setVelocity:0.0];
    [(OKNavigatorScrollViewControllerProxy *)self setTilt:0.0];
    [(OKNavigatorScrollViewControllerProxy *)self setRotationZ:0.0];
    autopanningTimer = self->_autopanningTimer;
    self->_autopanningTimer = 0;
    v6 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__OKNavigatorScrollViewControllerProxy_doMotionAction___block_invoke;
    block[3] = &unk_279C8E818;
    block[4] = autopanningTimer;
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
  }

  else
  {
    [a3 rotationZ];
    v8 = v7;
    [a3 rotationZ];
    v10 = v8 * v9;
    [a3 rotationZ];
    if (v11 >= 0.0)
    {
      v12 = v10 * 300.0;
    }

    else
    {
      v12 = -(v10 * 300.0);
    }

    [(OKNavigatorScrollViewControllerProxy *)self setVelocity:v12];
    [a3 rotationY];
    [(OKNavigatorScrollViewControllerProxy *)self setTilt:?];
    [a3 rotationZ];
    v14 = v13 * 0.05;

    [(OKNavigatorScrollViewControllerProxy *)self setRotationZ:v14];
  }
}

- (void)doSwipeAction:(id)a3
{
  [(OKNavigatorScrollViewControllerProxy *)self contentOffset];
  v6 = v5;
  v8 = v7;
  v9 = __ROR8__([a3 direction] - 2, 1);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      [(OKNavigatorScrollViewControllerProxy *)self contentBounds];
      v8 = v8 + v13;
    }

    else if (v9 == 7)
    {
      [(OKNavigatorScrollViewControllerProxy *)self contentBounds];
      v8 = v8 - v11;
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      [(OKNavigatorScrollViewControllerProxy *)self contentBounds];
      v6 = v6 - v10;
    }
  }

  else
  {
    [(OKNavigatorScrollViewControllerProxy *)self contentBounds];
    v6 = v6 + v12;
  }

  v14 = *MEMORY[0x277CDA7C8];

  [(OKNavigatorScrollViewControllerProxy *)self navigateToOffset:1 animated:v14 duration:0 timingFunctionName:v6 completion:v8, 0.25];
}

- (void)doPanAction:(id)a3
{
  [(OKNavigatorScrollViewControllerProxy *)self contentOffset];
  v6 = v5;
  v8 = v7;
  [a3 translation];
  v10 = v6 + v9;
  [a3 translation];
  v12 = v8 + v11;
  v13 = *MEMORY[0x277CDA7C8];

  [(OKNavigatorScrollViewControllerProxy *)self navigateToOffset:0 animated:v13 duration:0 timingFunctionName:v10 completion:v12, 0.0];
}

@end