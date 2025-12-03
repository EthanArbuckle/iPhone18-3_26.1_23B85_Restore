@interface _UICalendarViewDecorationSystem
- (_UICalendarViewDecorationSystem)init;
- (void)_prepareDecorationFeedForKey:(id)key;
- (void)configureDecoration:(id)decoration;
- (void)invalidateDecoration:(id)decoration;
@end

@implementation _UICalendarViewDecorationSystem

- (_UICalendarViewDecorationSystem)init
{
  v6.receiver = self;
  v6.super_class = _UICalendarViewDecorationSystem;
  v2 = [(_UICalendarViewDecorationSystem *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    decorationViewFeed = v2->_decorationViewFeed;
    v2->_decorationViewFeed = dictionary;
  }

  return v2;
}

- (void)configureDecoration:(id)decoration
{
  decorationCopy = decoration;
  _decorationViewReusableKey = [decorationCopy _decorationViewReusableKey];
  _decorationView = [decorationCopy _decorationView];
  if (!_decorationView && _decorationViewReusableKey)
  {
    v6 = [(NSMutableDictionary *)self->_decorationViewFeed objectForKeyedSubscript:_decorationViewReusableKey];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_decorationViewFeed objectForKey:_decorationViewReusableKey];
      _decorationView = [v8 lastObject];

      v9 = [(NSMutableDictionary *)self->_decorationViewFeed objectForKey:_decorationViewReusableKey];
      [v9 removeLastObject];
    }

    else
    {
      _decorationView = 0;
    }
  }

  v10 = [decorationCopy _decorationViewForReuseView:_decorationView];
  [decorationCopy _setDecorationView:v10];
}

- (void)invalidateDecoration:(id)decoration
{
  decorationCopy = decoration;
  _decorationView = [decorationCopy _decorationView];
  [_decorationView removeFromSuperview];
  _decorationViewReusableKey = [decorationCopy _decorationViewReusableKey];
  if (_decorationViewReusableKey)
  {
    [(_UICalendarViewDecorationSystem *)self _prepareDecorationFeedForKey:_decorationViewReusableKey];
    decorationViewFeed = [(_UICalendarViewDecorationSystem *)self decorationViewFeed];
    v7 = [decorationViewFeed objectForKey:_decorationViewReusableKey];
    [v7 addObject:_decorationView];
  }

  [decorationCopy _setDecorationView:0];
}

- (void)_prepareDecorationFeedForKey:(id)key
{
  keyCopy = key;
  v4 = [(NSMutableDictionary *)self->_decorationViewFeed objectForKeyedSubscript:?];

  if (!v4)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(NSMutableDictionary *)self->_decorationViewFeed setObject:array forKeyedSubscript:keyCopy];
  }
}

@end