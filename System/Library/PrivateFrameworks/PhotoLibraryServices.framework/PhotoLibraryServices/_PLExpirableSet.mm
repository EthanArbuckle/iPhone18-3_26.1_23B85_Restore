@interface _PLExpirableSet
- (BOOL)_didExpireObject:(id)object;
- (BOOL)containsObject:(id)object;
- (_PLExpirableSet)initWithSecondsToExpire:(double)expire;
- (void)_touch:(id)_touch;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)removeObject:(id)object;
@end

@implementation _PLExpirableSet

- (void)removeObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_set removeObject:objectCopy];
  [(NSMutableDictionary *)selfCopy->_recentTouches removeObjectForKey:objectCopy];
  objc_sync_exit(selfCopy);
}

- (void)addObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_set addObject:objectCopy];
  [(_PLExpirableSet *)selfCopy _touch:objectCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(_PLExpirableSet *)selfCopy _didExpireObject:objectCopy])
  {
    [(_PLExpirableSet *)selfCopy removeObject:objectCopy];
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (![(NSMutableSet *)selfCopy->_set containsObject:objectCopy])
  {
    goto LABEL_5;
  }

  [(_PLExpirableSet *)selfCopy _touch:objectCopy];
  v6 = 1;
LABEL_6:
  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)_didExpireObject:(id)object
{
  v4 = [(NSMutableDictionary *)self->_recentTouches objectForKeyedSubscript:object];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 dateByAddingTimeInterval:self->_secondsToExpire];
    v7 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v8 = [v7 compare:v6] == 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_touch:(id)_touch
{
  v4 = MEMORY[0x1E695DF00];
  _touchCopy = _touch;
  v6 = objc_alloc_init(v4);
  [(NSMutableDictionary *)self->_recentTouches setObject:v6 forKeyedSubscript:_touchCopy];
}

- (_PLExpirableSet)initWithSecondsToExpire:(double)expire
{
  v11.receiver = self;
  v11.super_class = _PLExpirableSet;
  v4 = [(_PLExpirableSet *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_secondsToExpire = expire;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    recentTouches = v5->_recentTouches;
    v5->_recentTouches = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    set = v5->_set;
    v5->_set = v8;
  }

  return v5;
}

- (void)dealloc
{
  set = self->_set;
  self->_set = 0;

  recentTouches = self->_recentTouches;
  self->_recentTouches = 0;

  v5.receiver = self;
  v5.super_class = _PLExpirableSet;
  [(_PLExpirableSet *)&v5 dealloc];
}

@end