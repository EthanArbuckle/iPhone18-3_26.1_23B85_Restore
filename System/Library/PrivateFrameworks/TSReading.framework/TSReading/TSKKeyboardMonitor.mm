@interface TSKKeyboardMonitor
+ (BOOL)keyboardIsAnimating;
+ (BOOL)keyboardIsAnimatingInOrDocking;
+ (BOOL)keyboardIsAnimatingOutOrUndocking;
+ (BOOL)keyboardIsVisibleAndDocked;
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedKeyboardMonitor;
+ (void)addKeyboardObserver:(id)observer;
+ (void)afterKeyboardAnimationPerformBlock:(id)block;
+ (void)removeKeyboardObserver:(id)observer;
+ (void)setKeyboardHiddenByModalObserver:(id)observer;
+ (void)setModalKeyboardObserver:(id)observer;
- (CGRect)keyboardFrame;
- (TSKKeyboardMonitor)init;
- (double)keyboardHeightInView:(id)view;
- (id)p_keyboardFrameView;
- (void)addKeyboardObserver:(id)observer;
- (void)afterKeyboardAnimationPerformBlock:(id)block;
- (void)dealloc;
- (void)p_KeyboardDidChangeFrame:(id)frame;
- (void)p_KeyboardWillChangeFrame:(id)frame;
- (void)p_enumerateObserversUsingBlock:(id)block;
- (void)p_installKeyboardNotifications;
- (void)p_keyboardDidHideOrUndock:(id)undock;
- (void)p_keyboardDidShowOrDock:(id)dock;
- (void)p_keyboardWillHideOrUndock:(id)undock;
- (void)p_keyboardWillShowOrDock:(id)dock;
- (void)p_performAnimationCompletionBlocksWithVisible:(BOOL)visible;
- (void)p_removeKeyboardNotifications;
- (void)p_updateKeyboardInfoFromNotification:(id)notification;
- (void)removeKeyboardObserver:(id)observer;
- (void)setKeyboardHiddenByModalObserver:(id)observer;
- (void)setModalKeyboardObserver:(id)observer;
@end

@implementation TSKKeyboardMonitor

- (TSKKeyboardMonitor)init
{
  v5.receiver = self;
  v5.super_class = TSKKeyboardMonitor;
  v2 = [(TSKKeyboardMonitor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_keyboardIsVisibleAndDocked = 0;
    [(TSKKeyboardMonitor *)v2 p_installKeyboardNotifications];
  }

  return v3;
}

- (void)dealloc
{
  [(TSKKeyboardMonitor *)self p_removeKeyboardNotifications];
  keyboardObservers = self->_keyboardObservers;
  if (keyboardObservers)
  {
    CFRelease(keyboardObservers);
    self->_keyboardObservers = 0;
  }

  self->_completionBlocks = 0;
  if (self->_exclusiveKeyboardObserver)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKKeyboardMonitor dealloc]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKKeyboardMonitor.m"), 123, @"expected nil value for '%s'", "_exclusiveKeyboardObserver"}];
  }

  v6.receiver = self;
  v6.super_class = TSKKeyboardMonitor;
  [(TSKKeyboardMonitor *)&v6 dealloc];
}

- (void)addKeyboardObserver:(id)observer
{
  keyboardObservers = self->_keyboardObservers;
  if (!keyboardObservers)
  {
    keyboardObservers = CFArrayCreateMutable(0, 0, 0);
    self->_keyboardObservers = keyboardObservers;
  }

  if (([(__CFArray *)keyboardObservers containsObject:observer]& 1) == 0)
  {
    v6 = self->_keyboardObservers;

    [(__CFArray *)v6 addObject:observer];
  }
}

- (void)removeKeyboardObserver:(id)observer
{
  keyboardObservers = self->_keyboardObservers;
  if (keyboardObservers)
  {
    [(__CFArray *)self->_keyboardObservers removeObject:observer];
    if (![(__CFArray *)keyboardObservers count])
    {
      CFRelease(self->_keyboardObservers);
      self->_keyboardObservers = 0;
    }
  }
}

- (void)setModalKeyboardObserver:(id)observer
{
  if (observer && self->_exclusiveKeyboardObserver)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKKeyboardMonitor setModalKeyboardObserver:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKKeyboardMonitor.m"), 163, @"setModalKeyboardObserver is in a bad state."}];
  }

  self->_exclusiveKeyboardObserver = observer;
}

- (void)setKeyboardHiddenByModalObserver:(id)observer
{
  if (self->_exclusiveKeyboardObserver != observer)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKKeyboardMonitor setKeyboardHiddenByModalObserver:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKKeyboardMonitor.m"), 170, @"setKeyboardHiddenByModalObserver - called by a non exclusive observer."}];
  }

  *&self->_keyboardIsVisibleAndDocked = 0;
  self->_keyboardIsAnimatingOutOrUndocking = 0;
}

- (void)afterKeyboardAnimationPerformBlock:(id)block
{
  completionBlocks = self->_completionBlocks;
  if (!completionBlocks)
  {
    completionBlocks = objc_opt_new();
    self->_completionBlocks = completionBlocks;
  }

  v6 = [block copy];

  [(NSMutableArray *)completionBlocks addObject:v6];
}

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSKKeyboardMonitor;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedKeyboardMonitor
{
  result = sharedKeyboardMonitor_sSingletonInstance;
  if (!sharedKeyboardMonitor_sSingletonInstance)
  {
    objc_sync_enter(self);
    if (!sharedKeyboardMonitor_sSingletonInstance)
    {
      v4 = [objc_msgSend(self "_singletonAlloc")];
      __dmb(0xBu);
      sharedKeyboardMonitor_sSingletonInstance = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKKeyboardMonitor sharedKeyboardMonitor]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKKeyboardMonitor.m"), 188, @"Couldn't create singleton instance of %@", self}];
      }
    }

    objc_sync_exit(self);
    return sharedKeyboardMonitor_sSingletonInstance;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKKeyboardMonitor allocWithZone:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKKeyboardMonitor.m"), 188, @"Don't alloc a singleton"}];
  return 0;
}

+ (void)addKeyboardObserver:(id)observer
{
  sharedKeyboardMonitor = [self sharedKeyboardMonitor];

  [sharedKeyboardMonitor addKeyboardObserver:observer];
}

+ (void)removeKeyboardObserver:(id)observer
{
  sharedKeyboardMonitor = [self sharedKeyboardMonitor];

  [sharedKeyboardMonitor removeKeyboardObserver:observer];
}

+ (void)setModalKeyboardObserver:(id)observer
{
  sharedKeyboardMonitor = [self sharedKeyboardMonitor];

  [sharedKeyboardMonitor setModalKeyboardObserver:observer];
}

+ (void)setKeyboardHiddenByModalObserver:(id)observer
{
  sharedKeyboardMonitor = [self sharedKeyboardMonitor];

  [sharedKeyboardMonitor setKeyboardHiddenByModalObserver:observer];
}

+ (BOOL)keyboardIsVisibleAndDocked
{
  sharedKeyboardMonitor = [self sharedKeyboardMonitor];

  return [sharedKeyboardMonitor keyboardIsVisibleAndDocked];
}

+ (BOOL)keyboardIsAnimating
{
  sharedKeyboardMonitor = [self sharedKeyboardMonitor];

  return [sharedKeyboardMonitor keyboardIsAnimating];
}

+ (BOOL)keyboardIsAnimatingInOrDocking
{
  sharedKeyboardMonitor = [self sharedKeyboardMonitor];

  return [sharedKeyboardMonitor keyboardIsAnimatingInOrDocking];
}

+ (BOOL)keyboardIsAnimatingOutOrUndocking
{
  sharedKeyboardMonitor = [self sharedKeyboardMonitor];

  return [sharedKeyboardMonitor keyboardIsAnimatingOutOrUndocking];
}

+ (void)afterKeyboardAnimationPerformBlock:(id)block
{
  sharedKeyboardMonitor = [self sharedKeyboardMonitor];

  [sharedKeyboardMonitor afterKeyboardAnimationPerformBlock:block];
}

- (double)keyboardHeightInView:(id)view
{
  p_keyboardFrameView = [(TSKKeyboardMonitor *)self p_keyboardFrameView];
  [(TSKKeyboardMonitor *)self keyboardFrame];
  if (v9 <= 0.0)
  {
    return 0.0;
  }

  [objc_msgSend(view "superview")];
  v11 = v10;
  [view frame];
  return fmax(v12 - v11, 0.0);
}

- (id)p_keyboardFrameView
{
  if (![-[UIWindow subviews](self->_rootWindow "subviews")] || (result = objc_msgSend(-[UIWindow subviews](self->_rootWindow, "subviews"), "objectAtIndex:", 0)) == 0)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];

    return [mEMORY[0x277D75128] keyWindow];
  }

  return result;
}

- (void)p_updateKeyboardInfoFromNotification:(id)notification
{
  objc_opt_class();
  userInfo = [notification userInfo];
  [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  v6 = TSUDynamicCast();
  if (v6)
  {
    v7 = v6;
    p_keyboardFrameView = [(TSKKeyboardMonitor *)self p_keyboardFrameView];
    if (!p_keyboardFrameView)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKKeyboardMonitor p_updateKeyboardInfoFromNotification:]"];
      [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKKeyboardMonitor.m"), 289, @"Can't calculate keyboard bounds without a root view."}];
    }

    [v7 CGRectValue];
    [p_keyboardFrameView convertRect:0 fromView:?];
    self->_keyboardFrame.origin.x = v11;
    self->_keyboardFrame.origin.y = v12;
    self->_keyboardFrame.size.width = v13;
    self->_keyboardFrame.size.height = v14;
    [(UIWindow *)self->_rootWindow frame];
    [p_keyboardFrameView convertRect:0 fromView:?];
    self->_onScreenHeight = v15 - self->_keyboardFrame.origin.y;
  }

  userInfo2 = [notification userInfo];
  [objc_msgSend(userInfo2 objectForKey:{*MEMORY[0x277D76B78]), "doubleValue"}];
  self->_keyboardAnimationDuration = v17;
}

- (void)p_performAnimationCompletionBlocksWithVisible:(BOOL)visible
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  completionBlocks = self->_completionBlocks;
  v6 = [(NSMutableArray *)completionBlocks countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = MEMORY[0x277D85CD0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(completionBlocks);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __68__TSKKeyboardMonitor_p_performAnimationCompletionBlocksWithVisible___block_invoke;
        v12[3] = &unk_279D47A88;
        v12[4] = v11;
        visibleCopy = visible;
        dispatch_async(v9, v12);
      }

      v7 = [(NSMutableArray *)completionBlocks countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  self->_completionBlocks = 0;
}

- (void)p_installKeyboardNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_p_keyboardWillShowOrDock_ name:*MEMORY[0x277D76C60] object:0];
  [defaultCenter addObserver:self selector:sel_p_keyboardDidShowOrDock_ name:*MEMORY[0x277D76BA8] object:0];
  [defaultCenter addObserver:self selector:sel_p_keyboardWillHideOrUndock_ name:*MEMORY[0x277D76C50] object:0];
  [defaultCenter addObserver:self selector:sel_p_keyboardDidHideOrUndock_ name:*MEMORY[0x277D76BA0] object:0];
  [defaultCenter addObserver:self selector:sel_p_KeyboardWillChangeFrame_ name:*MEMORY[0x277D76C48] object:0];
  v4 = *MEMORY[0x277D76B98];

  [defaultCenter addObserver:self selector:sel_p_KeyboardDidChangeFrame_ name:v4 object:0];
}

- (void)p_removeKeyboardNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter removeObserver:self];
}

- (void)p_enumerateObserversUsingBlock:(id)block
{
  if (self->_exclusiveKeyboardObserver)
  {
    Copy = CFArrayCreate(0, &self->_exclusiveKeyboardObserver, 1, 0);
  }

  else
  {
    keyboardObservers = self->_keyboardObservers;
    if (!keyboardObservers)
    {
      return;
    }

    Copy = CFArrayCreateCopy(0, keyboardObservers);
  }

  v6 = Copy;
  [(__CFArray *)Copy enumerateObjectsUsingBlock:block];

  CFRelease(v6);
}

- (void)p_keyboardWillShowOrDock:(id)dock
{
  [(TSKKeyboardMonitor *)self p_updateKeyboardInfoFromNotification:?];
  if (fabs(self->_keyboardFrame.size.width) >= 0.00999999978 && fabs(self->_keyboardFrame.size.height) >= 0.00999999978)
  {
    if (self->_keyboardIsAnimatingOutOrUndocking)
    {
      self->_keyboardIsAnimatingOutOrUndocking = 0;
      [(TSKKeyboardMonitor *)self p_enumerateObserversUsingBlock:&__block_literal_global_13];
    }

    *&self->_keyboardIsVisibleAndDocked = 257;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__TSKKeyboardMonitor_p_keyboardWillShowOrDock___block_invoke_2;
    v5[3] = &unk_279D47AD0;
    v5[4] = dock;
    [(TSKKeyboardMonitor *)self p_enumerateObserversUsingBlock:v5];
  }

  else
  {
    self->_weAreFakingAHideEvent = 1;
    if (self->_keyboardIsVisibleAndDocked)
    {

      [(TSKKeyboardMonitor *)self p_keyboardWillHideOrUndock:dock];
    }

    else
    {
      self->_suppressDidHide = 1;
    }
  }
}

uint64_t __47__TSKKeyboardMonitor_p_keyboardWillShowOrDock___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a2 keyboardHideCanceled];
  }

  return result;
}

uint64_t __47__TSKKeyboardMonitor_p_keyboardWillShowOrDock___block_invoke_2(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 keyboardWillShowOrDock:v5];
  }

  return result;
}

- (void)p_keyboardDidShowOrDock:(id)dock
{
  if (self->_weAreFakingAHideEvent)
  {
    if (!self->_suppressDidHide)
    {
      [(TSKKeyboardMonitor *)self p_keyboardDidHideOrUndock:dock];
    }

    *&self->_weAreFakingAHideEvent = 256;
    self->_suppressDidHide = 0;
  }

  else if (self->_keyboardIsAnimatingInOrDocking)
  {
    [(TSKKeyboardMonitor *)self p_updateKeyboardInfoFromNotification:dock];
    self->_keyboardIsAnimatingInOrDocking = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__TSKKeyboardMonitor_p_keyboardDidShowOrDock___block_invoke;
    v5[3] = &unk_279D47AD0;
    v5[4] = dock;
    [(TSKKeyboardMonitor *)self p_enumerateObserversUsingBlock:v5];
    [(TSKKeyboardMonitor *)self p_performAnimationCompletionBlocksWithVisible:1];
  }
}

uint64_t __46__TSKKeyboardMonitor_p_keyboardDidShowOrDock___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 keyboardDidShowOrDock:v5];
  }

  return result;
}

- (void)p_keyboardWillHideOrUndock:(id)undock
{
  self->_suppressDidHide = 0;
  [(TSKKeyboardMonitor *)self p_updateKeyboardInfoFromNotification:?];
  if (self->_keyboardIsAnimatingInOrDocking)
  {
    self->_keyboardIsAnimatingInOrDocking = 0;
    [(TSKKeyboardMonitor *)self p_enumerateObserversUsingBlock:&__block_literal_global_52];
  }

  if (self->_keyboardIsVisibleAndDocked || !self->_lastHideWasFake)
  {
    self->_keyboardIsVisibleAndDocked = 0;
    self->_keyboardIsAnimatingOutOrUndocking = 1;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__TSKKeyboardMonitor_p_keyboardWillHideOrUndock___block_invoke_2;
    v5[3] = &unk_279D47AD0;
    v5[4] = undock;
    [(TSKKeyboardMonitor *)self p_enumerateObserversUsingBlock:v5];
  }
}

uint64_t __49__TSKKeyboardMonitor_p_keyboardWillHideOrUndock___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a2 keyboardShowCanceled];
  }

  return result;
}

uint64_t __49__TSKKeyboardMonitor_p_keyboardWillHideOrUndock___block_invoke_2(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 keyboardWillHideOrUndock:v5];
  }

  return result;
}

- (void)p_keyboardDidHideOrUndock:(id)undock
{
  if (self->_keyboardIsAnimatingOutOrUndocking)
  {
    v7[7] = v3;
    v7[8] = v4;
    [(TSKKeyboardMonitor *)self p_updateKeyboardInfoFromNotification:?];
    self->_keyboardIsAnimatingOutOrUndocking = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__TSKKeyboardMonitor_p_keyboardDidHideOrUndock___block_invoke;
    v7[3] = &unk_279D47AD0;
    v7[4] = undock;
    [(TSKKeyboardMonitor *)self p_enumerateObserversUsingBlock:v7];
    [(TSKKeyboardMonitor *)self p_performAnimationCompletionBlocksWithVisible:0];
    self->_lastHideWasFake = 0;
  }
}

uint64_t __48__TSKKeyboardMonitor_p_keyboardDidHideOrUndock___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 keyboardDidHideOrUndock:v5];
  }

  return result;
}

- (void)p_KeyboardWillChangeFrame:(id)frame
{
  [(TSKKeyboardMonitor *)self p_updateKeyboardInfoFromNotification:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__TSKKeyboardMonitor_p_KeyboardWillChangeFrame___block_invoke;
  v5[3] = &unk_279D47AD0;
  v5[4] = frame;
  [(TSKKeyboardMonitor *)self p_enumerateObserversUsingBlock:v5];
}

uint64_t __48__TSKKeyboardMonitor_p_KeyboardWillChangeFrame___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 keyboardWillChangeFrame:v5];
  }

  return result;
}

- (void)p_KeyboardDidChangeFrame:(id)frame
{
  [(TSKKeyboardMonitor *)self p_updateKeyboardInfoFromNotification:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__TSKKeyboardMonitor_p_KeyboardDidChangeFrame___block_invoke;
  v5[3] = &unk_279D47AD0;
  v5[4] = frame;
  [(TSKKeyboardMonitor *)self p_enumerateObserversUsingBlock:v5];
}

uint64_t __47__TSKKeyboardMonitor_p_KeyboardDidChangeFrame___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 keyboardDidChangeFrame:v5];
  }

  return result;
}

- (CGRect)keyboardFrame
{
  objc_copyStruct(v6, &self->_keyboardFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end