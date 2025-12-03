@interface OKNavigatorScrollViewController
+ (id)supportedSettings;
- (CGPoint)contentOffset;
- (CGRect)contentBounds;
- (CGSize)contentSize;
- (CGSize)settingContentSize;
- (id)dynamicsPushBehaviors;
- (void)commonInit;
- (void)dealloc;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setSettingContentSize:(CGSize)size;
- (void)viewDidLoad;
@end

@implementation OKNavigatorScrollViewController

- (void)commonInit
{
  v2.receiver = self;
  v2.super_class = OKNavigatorScrollViewController;
  [(OKNavigatorViewController *)&v2 commonInit];
}

- (void)dealloc
{
  scrollView = self->super._scrollView;
  if (scrollView)
  {
    [(UIScrollView *)scrollView setDelegate:0];

    self->super._scrollView = 0;
  }

  velocityPushBehavior = self->_velocityPushBehavior;
  if (velocityPushBehavior)
  {
    [-[UIPushBehavior dynamicAnimator](velocityPushBehavior "dynamicAnimator")];

    self->_velocityPushBehavior = 0;
  }

  v5.receiver = self;
  v5.super_class = OKNavigatorScrollViewController;
  [(OKNavigatorScrollViewControllerProxy *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = OKNavigatorScrollViewController;
  [(OKNavigatorScrollViewControllerProxy *)&v7 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D759D8]);
  [-[OKNavigatorScrollViewController view](self "view")];
  v4 = [v3 initWithFrame:?];
  self->super._scrollView = v4;
  [(UIScrollView *)v4 setAutoresizingMask:18];
  [(UIScrollView *)self->super._scrollView setCanCancelContentTouches:0];
  [(UIScrollView *)self->super._scrollView setClipsToBounds:1];
  [(UIScrollView *)self->super._scrollView setScrollEnabled:1];
  [(UIScrollView *)self->super._scrollView setDelegate:self];
  [(UIScrollView *)self->super._scrollView addSubview:[(OKPageViewController *)self->super._pageViewController view]];
  [(OKPageViewController *)self->super._pageViewController didMoveToParentViewController:self];
  [-[OKNavigatorScrollViewController view](self "view")];
  v5 = objc_alloc(MEMORY[0x277D75900]);
  v6 = [v5 initWithItems:MEMORY[0x277CBEBF8] mode:0];
  self->_velocityPushBehavior = v6;
  [(UIPushBehavior *)v6 setMagnitude:0.0];
  [(UIPushBehavior *)self->_velocityPushBehavior setActive:0];
}

- (CGPoint)contentOffset
{
  [(UIScrollView *)self->super._scrollView contentOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)contentBounds
{
  [(UIScrollView *)self->super._scrollView bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)contentSize
{
  [(UIScrollView *)self->super._scrollView contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKNavigatorScrollViewController;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"indicatorStyle";
  v5[0] = @"type";
  v5[1] = @"mapping";
  v6[0] = &unk_287AF0728;
  v6[1] = &unk_287AF2018;
  v5[2] = @"default";
  v6[2] = @"default";
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (CGSize)settingContentSize
{
  [(OKNavigatorScrollViewControllerProxy *)self layoutFactor];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->super._scrollView contentSize];
  v8 = v7 / v4;
  [(UIScrollView *)self->super._scrollView contentSize];
  v10 = v9 / v6;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)setSettingContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(OKNavigatorScrollViewControllerProxy *)self layoutFactor];
  v7 = width * v6;
  v9 = height * v8;
  [(UIScrollView *)self->super._scrollView contentSize];
  if (v11 != v7 || v10 != v9)
  {
    [(UIScrollView *)self->super._scrollView setContentSize:v7, v9];
    [(UIScrollView *)self->super._scrollView contentSize];
    v14 = v13;
    [(UIScrollView *)self->super._scrollView contentSize];
    [-[OKPageViewController view](self->super._pageViewController "view")];

    [(OKNavigatorScrollViewControllerProxy *)self updatePageViewController];
  }
}

- (id)dynamicsPushBehaviors
{
  v5[1] = *MEMORY[0x277D85DE8];
  velocityPushBehavior = self->_velocityPushBehavior;
  v4 = @"scrollView";
  v5[0] = velocityPushBehavior;
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(UIPushBehavior *)self->_velocityPushBehavior setActive:1];
  self->super._velocity2 = 0.0;
  self->super._velocityTimestamp = CFAbsoluteTimeGetCurrent();
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_pushWatchdog_ object:0];
  velocityPushBehavior = self->_velocityPushBehavior;

  [(UIPushBehavior *)velocityPushBehavior setActive:0];
}

@end