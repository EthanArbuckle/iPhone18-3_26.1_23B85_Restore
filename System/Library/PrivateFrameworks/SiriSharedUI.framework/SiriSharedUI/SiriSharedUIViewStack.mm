@interface SiriSharedUIViewStack
- (SiriSharedUIViewStack)initWithContentViews:(id)views;
- (id)copyWithZone:(_NSZone *)zone;
- (id)nextViewAfterContentView:(id)view;
- (id)previousViewBeforeContentView:(id)view;
- (id)viewAtIndex:(int64_t)index;
- (void)addContentView:(id)view;
- (void)removeContentView:(id)view;
- (void)reset;
- (void)setContentViews:(id)views;
@end

@implementation SiriSharedUIViewStack

- (SiriSharedUIViewStack)initWithContentViews:(id)views
{
  viewsCopy = views;
  v9.receiver = self;
  v9.super_class = SiriSharedUIViewStack;
  v5 = [(SiriSharedUIViewStack *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
    mutableViews = v5->_mutableViews;
    v5->_mutableViews = v6;

    [(SiriSharedUIViewStack *)v5 setContentViews:viewsCopy];
  }

  return v5;
}

- (void)setContentViews:(id)views
{
  v4 = MEMORY[0x277CBEB40];
  viewsCopy = views;
  v6 = [[v4 alloc] initWithArray:viewsCopy];

  mutableViews = self->_mutableViews;
  self->_mutableViews = v6;
}

- (void)addContentView:(id)view
{
  viewCopy = view;
  if ([(SiriSharedUIViewStack *)self containsContentView:viewCopy])
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SiriSharedUIViewStack addContentView:];
    }
  }

  else
  {
    [(NSMutableOrderedSet *)self->_mutableViews addObject:viewCopy];
  }
}

- (void)removeContentView:(id)view
{
  viewCopy = view;
  if ([(SiriSharedUIViewStack *)self containsContentView:viewCopy])
  {
    [(NSMutableOrderedSet *)self->_mutableViews removeObject:viewCopy];
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SiriSharedUIViewStack removeContentView:];
  }
}

- (id)nextViewAfterContentView:(id)view
{
  v4 = [(NSMutableOrderedSet *)self->_mutableViews indexOfObject:view];
  if (v4 > 0x7FFFFFFFFFFFFFFELL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SiriSharedUIViewStack *)self viewAtIndex:v4 + 1];
  }

  return v5;
}

- (id)viewAtIndex:(int64_t)index
{
  if (index < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([(NSMutableOrderedSet *)self->_mutableViews count]<= index)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSMutableOrderedSet *)self->_mutableViews objectAtIndex:index];
    }
  }

  return v6;
}

- (id)previousViewBeforeContentView:(id)view
{
  if (([(NSMutableOrderedSet *)self->_mutableViews indexOfObject:view]- 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SiriSharedUIViewStack *)self viewAtIndex:?];
  }

  return v4;
}

- (void)reset
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SiriSharedUIViewStack reset]";
    _os_log_impl(&dword_21E3EB000, v3, OS_LOG_TYPE_DEFAULT, "%s #viewStack Resetting items in SiriSharedUIViewStack", &v4, 0xCu);
  }

  [(NSMutableOrderedSet *)self->_mutableViews removeAllObjects];
}

- (id)copyWithZone:(_NSZone *)zone
{
  contentViews = [(SiriSharedUIViewStack *)self contentViews];
  v5 = [[SiriSharedUIViewStack allocWithZone:?], "initWithContentViews:", contentViews];

  return v5;
}

- (void)addContentView:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_21E3EB000, v0, v1, "%s #viewStack Attempting to add view (%@) that already exists in %@", v2);
}

- (void)removeContentView:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_21E3EB000, v0, v1, "%s #viewStack Attempting to remove view (%@) that doesn't even exist in %@", v2);
}

@end