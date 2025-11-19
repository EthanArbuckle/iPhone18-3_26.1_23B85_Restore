@interface _UICalendarViewDecorationSystem
- (_UICalendarViewDecorationSystem)init;
- (void)_prepareDecorationFeedForKey:(id)a3;
- (void)configureDecoration:(id)a3;
- (void)invalidateDecoration:(id)a3;
@end

@implementation _UICalendarViewDecorationSystem

- (_UICalendarViewDecorationSystem)init
{
  v6.receiver = self;
  v6.super_class = _UICalendarViewDecorationSystem;
  v2 = [(_UICalendarViewDecorationSystem *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    decorationViewFeed = v2->_decorationViewFeed;
    v2->_decorationViewFeed = v3;
  }

  return v2;
}

- (void)configureDecoration:(id)a3
{
  v11 = a3;
  v4 = [v11 _decorationViewReusableKey];
  v5 = [v11 _decorationView];
  if (!v5 && v4)
  {
    v6 = [(NSMutableDictionary *)self->_decorationViewFeed objectForKeyedSubscript:v4];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_decorationViewFeed objectForKey:v4];
      v5 = [v8 lastObject];

      v9 = [(NSMutableDictionary *)self->_decorationViewFeed objectForKey:v4];
      [v9 removeLastObject];
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = [v11 _decorationViewForReuseView:v5];
  [v11 _setDecorationView:v10];
}

- (void)invalidateDecoration:(id)a3
{
  v8 = a3;
  v4 = [v8 _decorationView];
  [v4 removeFromSuperview];
  v5 = [v8 _decorationViewReusableKey];
  if (v5)
  {
    [(_UICalendarViewDecorationSystem *)self _prepareDecorationFeedForKey:v5];
    v6 = [(_UICalendarViewDecorationSystem *)self decorationViewFeed];
    v7 = [v6 objectForKey:v5];
    [v7 addObject:v4];
  }

  [v8 _setDecorationView:0];
}

- (void)_prepareDecorationFeedForKey:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_decorationViewFeed objectForKeyedSubscript:?];

  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    [(NSMutableDictionary *)self->_decorationViewFeed setObject:v5 forKeyedSubscript:v6];
  }
}

@end