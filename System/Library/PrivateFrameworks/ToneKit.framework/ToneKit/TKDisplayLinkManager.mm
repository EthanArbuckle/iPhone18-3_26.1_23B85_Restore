@interface TKDisplayLinkManager
+ (TKDisplayLinkManager)currentDisplayLinkManager;
+ (void)_releaseCurrentDisplayLinkManager;
- (TKDisplayLinkManager)init;
- (id)_displayLink;
- (id)_prepareUpdatedObserversForModification;
- (id)addObserverForFrameInterval:(unint64_t)interval handler:(id)handler;
- (void)_didAddFirstObserver;
- (void)_didRemoveLastObserver;
- (void)_displayDidRefresh:(id)refresh;
- (void)_setDisplayLink:(id)link;
- (void)beginRequiringWarmUpMode;
- (void)dealloc;
- (void)endRequiringWarmUpMode;
- (void)removeObserverWithToken:(id)token;
@end

@implementation TKDisplayLinkManager

+ (TKDisplayLinkManager)currentDisplayLinkManager
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  if (v3)
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v6 = [threadDictionary objectForKey:v3];
    if (!v6)
    {
      v6 = objc_alloc_init(TKDisplayLinkManager);
      if (v6)
      {
        [threadDictionary setObject:v6 forKey:v3];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_releaseCurrentDisplayLinkManager
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  if (v3)
  {
    v6 = v3;
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];

    [threadDictionary removeObjectForKey:v6];
    v3 = v6;
  }
}

- (TKDisplayLinkManager)init
{
  v8.receiver = self;
  v8.super_class = TKDisplayLinkManager;
  v2 = [(TKDisplayLinkManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeObservers = v2->_activeObservers;
    v2->_activeObservers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    updatedObservers = v2->_updatedObservers;
    v2->_updatedObservers = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = TKDisplayLinkManager;
  [(TKDisplayLinkManager *)&v3 dealloc];
}

- (id)_displayLink
{
  displayLink = self->_displayLink;
  if (!displayLink)
  {
    v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayDidRefresh_];
    v5 = self->_displayLink;
    self->_displayLink = v4;

    v6 = self->_displayLink;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];

    [(CADisplayLink *)self->_displayLink setPaused:1];
    displayLink = self->_displayLink;
  }

  return displayLink;
}

- (void)_setDisplayLink:(id)link
{
  linkCopy = link;
  displayLink = self->_displayLink;
  p_displayLink = &self->_displayLink;
  v6 = displayLink;
  if (displayLink != linkCopy)
  {
    v9 = linkCopy;
    [(CADisplayLink *)v6 invalidate];
    objc_storeStrong(p_displayLink, link);
    linkCopy = v9;
  }

  MEMORY[0x2821F96F8](v6, linkCopy);
}

- (id)addObserverForFrameInterval:(unint64_t)interval handler:(id)handler
{
  v6 = MEMORY[0x277CCAD78];
  handlerCopy = handler;
  uUID = [v6 UUID];
  v9 = [[TKDisplayLinkManagerObserver alloc] initWithBlock:handlerCopy frameInterval:interval];

  if (self->_isHandlingDisplayRefresh)
  {
    _prepareUpdatedObserversForModification = [(TKDisplayLinkManager *)self _prepareUpdatedObserversForModification];
    [_prepareUpdatedObserversForModification setObject:v9 forKey:uUID];
  }

  else
  {
    v11 = [(NSMutableDictionary *)self->_activeObservers count];
    [(NSMutableDictionary *)self->_activeObservers setObject:v9 forKey:uUID];
    if (!v11)
    {
      [(TKDisplayLinkManager *)self _didAddFirstObserver];
    }
  }

  return uUID;
}

- (void)removeObserverWithToken:(id)token
{
  tokenCopy = token;
  if (self->_isHandlingDisplayRefresh)
  {
    _prepareUpdatedObserversForModification = [(TKDisplayLinkManager *)self _prepareUpdatedObserversForModification];
    [_prepareUpdatedObserversForModification removeObjectForKey:tokenCopy];
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_activeObservers count];
    [(NSMutableDictionary *)self->_activeObservers removeObjectForKey:tokenCopy];
    if (v5 && ![(NSMutableDictionary *)self->_activeObservers count])
    {
      [(TKDisplayLinkManager *)self _didRemoveLastObserver];
    }
  }
}

- (id)_prepareUpdatedObserversForModification
{
  if (!self->_hasUpdatedObservers)
  {
    [(NSMutableDictionary *)self->_updatedObservers addEntriesFromDictionary:self->_activeObservers];
    self->_hasUpdatedObservers = 1;
  }

  updatedObservers = self->_updatedObservers;

  return updatedObservers;
}

- (void)_didAddFirstObserver
{
  _displayLink = [(TKDisplayLinkManager *)self _displayLink];
  [_displayLink setPaused:0];
}

- (void)_didRemoveLastObserver
{
  [(CADisplayLink *)self->_displayLink setPaused:1];
  if (![(TKDisplayLinkManager *)self _isWarmUpModeEnabled])
  {
    [(TKDisplayLinkManager *)self _setDisplayLink:0];
    v3 = objc_opt_class();

    [v3 _releaseCurrentDisplayLinkManager];
  }
}

- (void)beginRequiringWarmUpMode
{
  v21 = *MEMORY[0x277D85DE8];
  warmUpModeRequirementsCount = self->_warmUpModeRequirementsCount;
  self->_warmUpModeRequirementsCount = warmUpModeRequirementsCount + 1;
  if (!warmUpModeRequirementsCount && !self->_isHandlingDisplayRefresh)
  {
    if (self->_hasUpdatedObservers)
    {
      v4 = TLLogGeneral();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

      if (v5)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Shared/Embedded/DisplayLink/TKDisplayLinkManager.m"];
        v7 = TLLogGeneral();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v6 lastPathComponent];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v13 = 136381443;
          v14 = "[TKDisplayLinkManager beginRequiringWarmUpMode]";
          v15 = 2113;
          v16 = lastPathComponent;
          v17 = 2049;
          v18 = 177;
          v19 = 2113;
          v20 = callStackSymbols;
          _os_log_impl(&dword_21C599000, v7, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v13, 0x2Au);
        }
      }

      else
      {
        v6 = TLLogGeneral();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
        }
      }

      v10 = TLLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [TKDisplayLinkManager beginRequiringWarmUpMode];
      }
    }

    if (![(NSMutableDictionary *)self->_activeObservers count])
    {
      _displayLink = [(TKDisplayLinkManager *)self _displayLink];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)endRequiringWarmUpMode
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = self->_warmUpModeRequirementsCount - 1;
  self->_warmUpModeRequirementsCount = v2;
  if (!v2 && !self->_isHandlingDisplayRefresh)
  {
    if (self->_hasUpdatedObservers)
    {
      v4 = TLLogGeneral();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

      if (v5)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Shared/Embedded/DisplayLink/TKDisplayLinkManager.m"];
        v7 = TLLogGeneral();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v6 lastPathComponent];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v12 = 136381443;
          v13 = "[TKDisplayLinkManager endRequiringWarmUpMode]";
          v14 = 2113;
          v15 = lastPathComponent;
          v16 = 2049;
          v17 = 187;
          v18 = 2113;
          v19 = callStackSymbols;
          _os_log_impl(&dword_21C599000, v7, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v12, 0x2Au);
        }
      }

      else
      {
        v6 = TLLogGeneral();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
        }
      }

      v10 = TLLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [TKDisplayLinkManager beginRequiringWarmUpMode];
      }
    }

    if (![(NSMutableDictionary *)self->_activeObservers count])
    {
      [(TKDisplayLinkManager *)self _didRemoveLastObserver];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_displayDidRefresh:(id)refresh
{
  isHandlingDisplayRefresh = self->_isHandlingDisplayRefresh;
  self->_isHandlingDisplayRefresh = 1;
  p_activeObservers = &self->_activeObservers;
  activeObservers = self->_activeObservers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__TKDisplayLinkManager__displayDidRefresh___block_invoke;
  v9[3] = &unk_2783166E0;
  v9[4] = self;
  [(NSMutableDictionary *)activeObservers enumerateKeysAndObjectsUsingBlock:v9];
  self->_isHandlingDisplayRefresh = isHandlingDisplayRefresh;
  if (!isHandlingDisplayRefresh && self->_hasUpdatedObservers)
  {
    [(NSMutableDictionary *)self->_activeObservers removeAllObjects];
    updatedObservers = self->_updatedObservers;
    v8 = updatedObservers;
    objc_storeStrong(&self->_updatedObservers, self->_activeObservers);
    objc_storeStrong(p_activeObservers, updatedObservers);
    self->_hasUpdatedObservers = 0;
    if (![(NSMutableDictionary *)self->_activeObservers count])
    {
      [(TKDisplayLinkManager *)self _didRemoveLastObserver];
    }
  }
}

@end