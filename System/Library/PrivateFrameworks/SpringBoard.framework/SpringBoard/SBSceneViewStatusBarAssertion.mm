@interface SBSceneViewStatusBarAssertion
- (BOOL)isStatusBarHidden;
- (SBSceneViewStatusBarAssertion)initWithStatusBarHidden:(BOOL)hidden nubViewHidden:(int64_t)viewHidden atLevel:(unint64_t)level;
- (SBSceneViewStatusBarAssertion)initWithStatusBarSettings:(id)settings nubViewHidden:(int64_t)hidden atLevel:(unint64_t)level;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_notifyObserversDidInvalidate;
- (void)_notifyObserversDidUpdate;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setNubViewHidden:(int64_t)hidden;
- (void)setSettings:(id)settings;
- (void)setStatusBarHidden:(BOOL)hidden;
@end

@implementation SBSceneViewStatusBarAssertion

- (BOOL)isStatusBarHidden
{
  alpha = [(SBStatusBarSettings *)self->_settings alpha];

  if (!alpha)
  {
    return 0;
  }

  alpha2 = [(SBStatusBarSettings *)self->_settings alpha];
  [alpha2 floatValue];
  IsZero = BSFloatIsZero();

  return IsZero;
}

- (void)_notifyObserversDidUpdate
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
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

        [*(*(&v8 + 1) + 8 * v7++) statusBarAssertionDidUpdate:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversDidInvalidate
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
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

        [*(*(&v8 + 1) + 8 * v7++) statusBarAssertionDidInvalidate:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  [(SBSceneViewStatusBarAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBSceneViewStatusBarAssertion;
  [(SBSceneViewStatusBarAssertion *)&v3 dealloc];
}

- (SBSceneViewStatusBarAssertion)initWithStatusBarHidden:(BOOL)hidden nubViewHidden:(int64_t)viewHidden atLevel:(unint64_t)level
{
  hiddenCopy = hidden;
  v9 = objc_alloc_init(SBMutableStatusBarSettings);
  v10 = 1.0;
  if (hiddenCopy)
  {
    v10 = 0.0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  [(SBMutableStatusBarSettings *)v9 setAlpha:v11];

  v12 = [(SBSceneViewStatusBarAssertion *)self initWithStatusBarSettings:v9 nubViewHidden:viewHidden atLevel:level];
  return v12;
}

- (SBSceneViewStatusBarAssertion)initWithStatusBarSettings:(id)settings nubViewHidden:(int64_t)hidden atLevel:(unint64_t)level
{
  settingsCopy = settings;
  v13.receiver = self;
  v13.super_class = SBSceneViewStatusBarAssertion;
  v9 = [(SBSceneViewStatusBarAssertion *)&v13 init];
  if (v9)
  {
    v10 = [settingsCopy copy];
    settings = v9->_settings;
    v9->_settings = v10;

    v9->_nubViewHidden = hidden;
    v9->_level = level;
  }

  return v9;
}

- (void)setStatusBarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(SBSceneViewStatusBarAssertion *)self isStatusBarHidden]!= hidden)
  {
    v6 = [(SBStatusBarSettings *)self->_settings mutableCopy];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:!hiddenCopy];
    [v6 setAlpha:v5];

    [(SBSceneViewStatusBarAssertion *)self setSettings:v6];
  }
}

- (void)setNubViewHidden:(int64_t)hidden
{
  if (self->_nubViewHidden != hidden)
  {
    self->_nubViewHidden = hidden;
    [(SBSceneViewStatusBarAssertion *)self _notifyObserversDidUpdate];
  }
}

- (void)setSettings:(id)settings
{
  settingsCopy = settings;
  if (![(SBStatusBarSettings *)self->_settings isEqual:?])
  {
    v4 = [settingsCopy copy];
    settings = self->_settings;
    self->_settings = v4;

    [(SBSceneViewStatusBarAssertion *)self _notifyObserversDidUpdate];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v9 = observerCopy;
  if (observerCopy)
  {
    if (![(NSHashTable *)self->_observers containsObject:observerCopy])
    {
      observers = self->_observers;
      v6 = v9;
      if (!observers)
      {
        weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v8 = self->_observers;
        self->_observers = weakObjectsHashTable;

        v6 = v9;
        observers = self->_observers;
      }

      [(NSHashTable *)observers addObject:v6];
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ cannot be observed by a nil object", objc_opt_class()}];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSceneViewStatusBarAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  level = self->_level;
  if (level >= 8)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown %lu)", self->_level];
  }

  else
  {
    v5 = off_2783AF450[level];
  }

  [v3 appendString:v5 withName:@"level"];

  v6 = [v3 appendBool:-[SBSceneViewStatusBarAssertion isStatusBarHidden](self withName:"isStatusBarHidden") ifEqualTo:{@"statusBarHidden", 1}];
  v7 = [v3 appendBool:BSSettingFlagIsYes() withName:@"nubHidden" ifEqualTo:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSceneViewStatusBarAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBSceneViewStatusBarAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SBSceneViewStatusBarAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

@end