@interface OKWidgetGroupView
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)prepareForDisplay:(BOOL)display;
- (BOOL)prepareForUnload:(BOOL)unload;
- (BOOL)prepareForWarmup:(BOOL)warmup;
- (CGRect)itemContainerRect;
- (OKWidgetGroupView)initWithWidget:(id)widget;
- (UIEdgeInsets)settingItemEdgeInsets;
- (id)_nextWidgetView;
- (id)_previousWidgetView;
- (id)_widgetViewForIndex:(int64_t)index;
- (id)collectionItemAtIndexPath:(id)path;
- (id)collectionItemForName:(id)name;
- (id)layoutSettingsKeys;
- (id)valueForUndefinedKey:(id)key;
- (int64_t)rotatedIndexForIndex:(int64_t)index;
- (void)_gotoIndex:(int64_t)index;
- (void)_gotoNextIndex;
- (void)_jsGotoIndex:(int64_t)index;
- (void)_jsTransitionToIndex:(int64_t)index forward:(BOOL)forward andLocation:(CGPoint)location completionHandler:(id)handler;
- (void)_jsTransitionToIndex:(int64_t)index withTransition:(id)transition completionHandler:(id)handler;
- (void)_play;
- (void)_prepareAllForUnload:(BOOL)unload except:(id)except;
- (void)_reloadWidgetViews;
- (void)_stop;
- (void)_transitionToIndex:(int64_t)index forward:(BOOL)forward andLocation:(CGPoint)location completionHandler:(id)handler;
- (void)_transitionToIndex:(int64_t)index withTransition:(id)transition completionHandler:(id)handler;
- (void)_updateDisplayedWidgetViews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForRefresh;
- (void)prepareForReload;
- (void)setAntialiasing:(BOOL)antialiasing;
- (void)setSettingIndex:(int64_t)index;
- (void)setSettingItemEdgeInsets:(UIEdgeInsets)insets;
- (void)setSettingItems:(id)items;
- (void)setSettingSwitchActionScript:(id)script;
@end

@implementation OKWidgetGroupView

- (OKWidgetGroupView)initWithWidget:(id)widget
{
  v8.receiver = self;
  v8.super_class = OKWidgetGroupView;
  v3 = [(OKWidgetViewProxy *)&v8 initWithWidget:widget];
  v4 = v3;
  if (v3)
  {
    v3->_index = 0;
    v3->_items = 0;
    v3->_itemWidgetViews = 0;
    v3->_currentWidgetView = 0;
    v3->_switchActionScript = 0;
    v3->_transition = objc_alloc_init(OKTransitionParallaxPush);
    v4->_isInTransition = 0;
    v5 = objc_alloc(MEMORY[0x277D627F8]);
    [(OFUIView *)[(OKWidgetViewProxy *)v4 contentView] frame];
    v6 = [v5 initWithFrame:?];
    v4->_itemContainerView = v6;
    [-[OFUIView layer](v6 "layer")];
    [-[OFUIView layer](v4->_itemContainerView "layer")];
    [(OFUIView *)v4->_itemContainerView setAutoresizingMask:18];
    [(OFUIView *)[(OKWidgetViewProxy *)v4 contentView] addSubview:v4->_itemContainerView];
  }

  return v4;
}

- (void)dealloc
{
  items = self->_items;
  if (items)
  {

    self->_items = 0;
  }

  itemWidgetViews = self->_itemWidgetViews;
  if (itemWidgetViews)
  {

    self->_itemWidgetViews = 0;
  }

  if (self->_currentWidgetView)
  {
    self->_currentWidgetView = 0;
  }

  switchActionScript = self->_switchActionScript;
  if (switchActionScript)
  {

    self->_switchActionScript = 0;
  }

  transition = self->_transition;
  if (transition)
  {

    self->_transition = 0;
  }

  itemContainerView = self->_itemContainerView;
  if (itemContainerView)
  {

    self->_itemContainerView = 0;
  }

  v8.receiver = self;
  v8.super_class = OKWidgetGroupView;
  [(OKWidgetView *)&v8 dealloc];
}

- (CGRect)itemContainerRect
{
  [(OFUIView *)[(OKWidgetViewProxy *)self contentView] bounds];
  v4 = v3 + self->_itemEdgeInsets.left;
  [(OFUIView *)[(OKWidgetViewProxy *)self contentView] bounds];
  v6 = self->_itemEdgeInsets.top + v5;
  [(OFUIView *)[(OKWidgetViewProxy *)self contentView] bounds];
  v8 = v7;
  [(OFUIView *)[(OKWidgetViewProxy *)self contentView] bounds];
  v10 = v8 - v9 - self->_itemEdgeInsets.left - self->_itemEdgeInsets.right;
  [(OFUIView *)[(OKWidgetViewProxy *)self contentView] bounds];
  v12 = v11;
  [(OFUIView *)[(OKWidgetViewProxy *)self contentView] bounds];
  v14 = v12 - v13 - self->_itemEdgeInsets.top - self->_itemEdgeInsets.bottom;
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
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = OKWidgetGroupView;
  [(OKWidgetViewProxy *)&v13 layoutSubviews];
  [(OKWidgetGroupView *)self itemContainerRect];
  [(OFUIView *)self->_itemContainerView setFrame:?];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_itemWidgetViews objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        [(OFUIView *)self->_itemContainerView bounds];
        [v8 setFrame:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

+ (id)supportedSettings
{
  v24[8] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___OKWidgetGroupView;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v6, sel_supportedSettings)}];
  v23[0] = @"transition";
  v22[0] = &unk_287AF14D8;
  v21[0] = @"type";
  v21[1] = @"class";
  v22[1] = objc_opt_class();
  v21[2] = @"default";
  v3 = objc_alloc_init(OKTransitionParallaxPush);
  v21[3] = @"jsExport";
  v22[2] = v3;
  v22[3] = @"readonly";
  v24[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v23[1] = @"items";
  v20[0] = &unk_287AF14F0;
  v19[0] = @"type";
  v19[1] = @"default";
  null = [MEMORY[0x277CBEB68] null];
  v19[2] = @"priority";
  v20[1] = null;
  v20[2] = &unk_287AF1508;
  v24[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v23[2] = @"index";
  v17[0] = @"type";
  v17[1] = @"default";
  v18[0] = &unk_287AF1520;
  v18[1] = &unk_287AF1538;
  v17[2] = @"jsExport";
  v17[3] = @"priority";
  v18[2] = @"readonly";
  v18[3] = &unk_287AF1550;
  v24[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v23[3] = @"autoplay";
  v15[0] = @"type";
  v15[1] = @"default";
  v16[0] = &unk_287AF1568;
  v16[1] = MEMORY[0x277CBEC28];
  v24[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v23[4] = @"loop";
  v13[0] = @"type";
  v13[1] = @"default";
  v14[0] = &unk_287AF1568;
  v14[1] = MEMORY[0x277CBEC38];
  v24[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v23[5] = @"itemDuration";
  v11[0] = @"type";
  v11[1] = @"default";
  v12[0] = &unk_287AF1580;
  v12[1] = &unk_287AF2378;
  v24[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v23[6] = @"switchActionScript";
  v9[1] = @"default";
  v10[0] = &unk_287AF1598;
  v9[0] = @"type";
  v10[1] = [MEMORY[0x277CBEB68] null];
  v24[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v23[7] = @"itemEdgeInsets";
  v7[1] = @"default";
  v8[0] = &unk_287AF15B0;
  v7[0] = @"type";
  v8[1] = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v24[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v24, v23, 8)}];
  return v2;
}

- (void)setSettingItems:(id)items
{
  items = self->_items;
  if (items)
  {

    self->_items = 0;
  }

  self->_items = [MEMORY[0x277CBEA60] arrayWithArray:items];
}

- (void)setSettingIndex:(int64_t)index
{
  v4 = [(OKWidgetGroupView *)self rotatedIndexForIndex:index];
  if (v4 != self->_index)
  {
    self->_index = v4;
  }
}

- (void)setSettingSwitchActionScript:(id)script
{
  switchActionScript = self->_switchActionScript;
  if (switchActionScript)
  {

    self->_switchActionScript = 0;
  }

  self->_switchActionScript = [script copy];
}

- (UIEdgeInsets)settingItemEdgeInsets
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = self->_itemEdgeInsets.top / v3;
  v5 = self->_itemEdgeInsets.bottom / v3;
  v7 = self->_itemEdgeInsets.left / v6;
  v8 = self->_itemEdgeInsets.right / v6;
  v9 = v4;
  result.right = v8;
  result.bottom = v5;
  result.left = v7;
  result.top = v9;
  return result;
}

- (void)setSettingItemEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(OKWidgetViewProxy *)self layoutFactor];
  self->_itemEdgeInsets.top = top * v8;
  self->_itemEdgeInsets.left = left * v9;
  self->_itemEdgeInsets.bottom = bottom * v8;
  self->_itemEdgeInsets.right = right * v9;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__OKWidgetGroupView_setSettingItemEdgeInsets___block_invoke;
  v10[3] = &unk_279C8E818;
  v10[4] = self;
  [OKSettings applyUpdateBlockOnce:v10 forKey:@"updateLayout"];
}

- (id)layoutSettingsKeys
{
  v3.receiver = self;
  v3.super_class = OKWidgetGroupView;
  return [-[OKWidgetViewProxy layoutSettingsKeys](&v3 layoutSettingsKeys)];
}

- (id)valueForUndefinedKey:(id)key
{
  v4.receiver = self;
  v4.super_class = OKWidgetGroupView;
  return [(OKWidgetViewProxy *)&v4 valueForUndefinedKey:key];
}

- (void)setAntialiasing:(BOOL)antialiasing
{
  antialiasingCopy = antialiasing;
  v5.receiver = self;
  v5.super_class = OKWidgetGroupView;
  [(OKWidgetViewProxy *)&v5 setAntialiasing:?];
  [(OKWidgetViewProxy *)self->_currentWidgetView setAntialiasing:antialiasingCopy];
}

- (int64_t)rotatedIndexForIndex:(int64_t)index
{
  if ([(NSArray *)self->_items count]< 2)
  {
    return 0;
  }

  v5 = [(NSArray *)self->_items count];
  if (index < 0)
  {
    return index % [(NSArray *)self->_items count]+ v5;
  }

  else
  {
    return index % v5;
  }
}

- (void)_updateDisplayedWidgetViews
{
  [(OKWidgetView *)self->_currentWidgetView removeFromSuperview];
  if ([(NSArray *)self->_items count])
  {
    v3 = [(OKWidgetGroupView *)self _widgetViewForIndex:[(OKWidgetGroupView *)self rotatedIndexForIndex:self->_index]];
    self->_currentWidgetView = v3;
    itemContainerView = self->_itemContainerView;

    [(OFUIView *)itemContainerView addSubview:v3];
  }

  else if (self->_currentWidgetView)
  {
    self->_currentWidgetView = 0;
  }
}

- (void)_prepareAllForUnload:(BOOL)unload except:(id)except
{
  unloadCopy = unload;
  v16 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:{-[NSMutableDictionary allValues](self->_itemWidgetViews, "allValues")}];
  [v6 removeObjectsInArray:except];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) prepareForUnload:unloadCopy];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)_previousWidgetView
{
  v3 = [(OKWidgetGroupView *)self rotatedIndexForIndex:self->_index - 1];

  return [(OKWidgetGroupView *)self _widgetViewForIndex:v3];
}

- (id)_nextWidgetView
{
  v3 = [(OKWidgetGroupView *)self rotatedIndexForIndex:self->_index + 1];

  return [(OKWidgetGroupView *)self _widgetViewForIndex:v3];
}

- (id)_widgetViewForIndex:(int64_t)index
{
  itemWidgetViews = self->_itemWidgetViews;
  if (!itemWidgetViews)
  {
    itemWidgetViews = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_itemWidgetViews = itemWidgetViews;
  }

  v6 = -[NSMutableDictionary objectForKeyedSubscript:](itemWidgetViews, "objectForKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithInteger:index]);
  if (!v6)
  {
    v7 = [(NSArray *)self->_items objectAtIndexedSubscript:index];
    [v7 setParent:{-[OKWidgetViewProxy widget](self, "widget")}];
    [v7 setPresentation:{-[OKPresentationCanvas presentation](-[OKWidgetViewProxy widget](self, "widget"), "presentation")}];
    [v7 resolveIfNeeded];
    v6 = [(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] widgetViewFromWidget:v7];
    [(OFUIView *)self->_itemContainerView bounds];
    [v6 setFrame:?];
    [v6 setParentWidgetView:self];
    [v6 applySettingsIfNeeded];
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_itemWidgetViews, "setObject:forKeyedSubscript:", v6, [MEMORY[0x277CCABB0] numberWithInteger:index]);
  }

  return v6;
}

- (BOOL)prepareForDisplay:(BOOL)display
{
  displayCopy = display;
  v10[3] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = OKWidgetGroupView;
  v5 = [(OKWidgetViewProxy *)&v9 prepareForDisplay:?];
  if (v5)
  {
    [(OKWidgetGroupView *)self _updateDisplayedWidgetViews];
    if (self->_currentWidgetView)
    {
      _previousWidgetView = [(OKWidgetGroupView *)self _previousWidgetView];
      _nextWidgetView = [(OKWidgetGroupView *)self _nextWidgetView];
      [(OKWidgetViewProxy *)self->_currentWidgetView prepareForDisplay:displayCopy];
      if (_previousWidgetView != self->_currentWidgetView)
      {
        [(OKWidgetViewProxy *)_previousWidgetView prepareForWarmup:displayCopy];
        if (_nextWidgetView != _previousWidgetView)
        {
          [(OKWidgetViewProxy *)_nextWidgetView prepareForWarmup:displayCopy];
        }
      }

      v10[0] = self->_currentWidgetView;
      v10[1] = _previousWidgetView;
      v10[2] = _nextWidgetView;
      -[OKWidgetGroupView _prepareAllForUnload:except:](self, "_prepareAllForUnload:except:", displayCopy, [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3]);
    }

    if (self->_autoplay)
    {
      [(OKWidgetGroupView *)self _play];
    }
  }

  return v5;
}

- (BOOL)prepareForWarmup:(BOOL)warmup
{
  warmupCopy = warmup;
  v12[3] = *MEMORY[0x277D85DE8];
  prepareMode = [(OKWidgetViewProxy *)self prepareMode];
  v11.receiver = self;
  v11.super_class = OKWidgetGroupView;
  v6 = [(OKWidgetViewProxy *)&v11 prepareForWarmup:warmupCopy];
  if (v6)
  {
    v7 = [(OKWidgetGroupView *)self _widgetViewForIndex:[(OKWidgetGroupView *)self rotatedIndexForIndex:self->_index]];
    self->_currentWidgetView = v7;
    if (v7)
    {
      _previousWidgetView = [(OKWidgetGroupView *)self _previousWidgetView];
      _nextWidgetView = [(OKWidgetGroupView *)self _nextWidgetView];
      [(OKWidgetViewProxy *)self->_currentWidgetView prepareForWarmup:warmupCopy];
      if (_previousWidgetView != self->_currentWidgetView)
      {
        [(OKWidgetViewProxy *)_previousWidgetView prepareForWarmup:warmupCopy];
        if (_nextWidgetView != _previousWidgetView)
        {
          [(OKWidgetViewProxy *)_nextWidgetView prepareForWarmup:warmupCopy];
        }
      }

      v12[0] = self->_currentWidgetView;
      v12[1] = _previousWidgetView;
      v12[2] = _nextWidgetView;
      -[OKWidgetGroupView _prepareAllForUnload:except:](self, "_prepareAllForUnload:except:", warmupCopy, [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3]);
    }

    if (prepareMode == 1)
    {
      [(OKWidgetGroupView *)self _stop];
    }
  }

  return v6;
}

- (BOOL)prepareForUnload:(BOOL)unload
{
  unloadCopy = unload;
  v7.receiver = self;
  v7.super_class = OKWidgetGroupView;
  v5 = [(OKWidgetViewProxy *)&v7 prepareForUnload:?];
  if (v5)
  {
    [(OKWidgetViewProxy *)self->_currentWidgetView prepareForUnload:unloadCopy];
    [(OKWidgetGroupView *)self _stop];
  }

  return v5;
}

- (void)_reloadWidgetViews
{
  v8[3] = *MEMORY[0x277D85DE8];
  if ([(OKWidgetViewProxy *)self prepareMode]== 1)
  {
    _previousWidgetView = [(OKWidgetGroupView *)self _previousWidgetView];
    _nextWidgetView = [(OKWidgetGroupView *)self _nextWidgetView];
    [(OKWidgetViewProxy *)self->_currentWidgetView prepareForDisplay:1];
    if (_previousWidgetView != self->_currentWidgetView)
    {
      [(OKWidgetViewProxy *)_previousWidgetView prepareForWarmup:1];
      if (_nextWidgetView != _previousWidgetView)
      {
        [(OKWidgetViewProxy *)_nextWidgetView prepareForWarmup:1];
      }
    }

    v8[0] = self->_currentWidgetView;
    p_currentWidgetView = v8;
  }

  else if ([(OKWidgetViewProxy *)self prepareMode]== 2)
  {
    _previousWidgetView = [(OKWidgetGroupView *)self _previousWidgetView];
    _nextWidgetView = [(OKWidgetGroupView *)self _nextWidgetView];
    [(OKWidgetViewProxy *)self->_currentWidgetView prepareForWarmup:1];
    if (_previousWidgetView != self->_currentWidgetView)
    {
      [(OKWidgetViewProxy *)_previousWidgetView prepareForWarmup:1];
      if (_nextWidgetView != _previousWidgetView)
      {
        [(OKWidgetViewProxy *)_nextWidgetView prepareForWarmup:1];
      }
    }

    currentWidgetView = self->_currentWidgetView;
    p_currentWidgetView = &currentWidgetView;
  }

  else
  {
    if ([(OKWidgetViewProxy *)self prepareMode]!= 3)
    {
      return;
    }

    _previousWidgetView = [(OKWidgetGroupView *)self _previousWidgetView];
    _nextWidgetView = [(OKWidgetGroupView *)self _nextWidgetView];
    [(OKWidgetViewProxy *)self->_currentWidgetView prepareForUnload:1];
    if (_previousWidgetView != self->_currentWidgetView)
    {
      [(OKWidgetViewProxy *)_previousWidgetView prepareForUnload:1];
      if (_nextWidgetView != _previousWidgetView)
      {
        [(OKWidgetViewProxy *)_nextWidgetView prepareForUnload:1];
      }
    }

    v6 = self->_currentWidgetView;
    p_currentWidgetView = &v6;
  }

  p_currentWidgetView[1] = _previousWidgetView;
  p_currentWidgetView[2] = _nextWidgetView;
  -[OKWidgetGroupView _prepareAllForUnload:except:](self, "_prepareAllForUnload:except:", 1, [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:?]);
}

- (void)prepareForReload
{
  v5.receiver = self;
  v5.super_class = OKWidgetGroupView;
  [(OKWidgetViewProxy *)&v5 prepareForReload];
  if ([(OKWidgetViewProxy *)self prepareMode])
  {
    _previousWidgetView = [(OKWidgetGroupView *)self _previousWidgetView];
    _nextWidgetView = [(OKWidgetGroupView *)self _nextWidgetView];
    [(OKWidgetViewProxy *)self->_currentWidgetView prepareForReload];
    if (_previousWidgetView != self->_currentWidgetView)
    {
      [(OKWidgetViewProxy *)_previousWidgetView prepareForReload];
      if (_nextWidgetView != _previousWidgetView)
      {
        [(OKWidgetViewProxy *)_nextWidgetView prepareForReload];
      }
    }
  }
}

- (void)prepareForRefresh
{
  v5.receiver = self;
  v5.super_class = OKWidgetGroupView;
  [(OKWidgetViewProxy *)&v5 prepareForRefresh];
  if ([(OKWidgetViewProxy *)self prepareMode])
  {
    _previousWidgetView = [(OKWidgetGroupView *)self _previousWidgetView];
    _nextWidgetView = [(OKWidgetGroupView *)self _nextWidgetView];
    [(OKWidgetViewProxy *)self->_currentWidgetView prepareForRefresh];
    if (self->_currentWidgetView != _previousWidgetView)
    {
      [(OKWidgetViewProxy *)_previousWidgetView prepareForRefresh];
      if (_nextWidgetView != _previousWidgetView)
      {
        [(OKWidgetViewProxy *)_nextWidgetView prepareForRefresh];
      }
    }
  }
}

- (id)collectionItemForName:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  items = self->_items;
  result = [(NSArray *)items countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if ([objc_msgSend(v10 "name")])
        {
          return [(OKWidgetGroupView *)self _widgetViewForIndex:[(NSArray *)self->_items indexOfObject:v10]];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [(NSArray *)items countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)collectionItemAtIndexPath:(id)path
{
  if ([path section])
  {
    return 0;
  }

  v6 = [(NSArray *)self->_items count];
  if (v6 < 1 || [path row] >= v6)
  {
    return 0;
  }

  v7 = [path row];

  return [(OKWidgetGroupView *)self _widgetViewForIndex:v7];
}

- (void)_transitionToIndex:(int64_t)index forward:(BOOL)forward andLocation:(CGPoint)location completionHandler:(id)handler
{
  forwardCopy = forward;
  if ([(OKWidgetGroupView *)self rotatedIndexForIndex:location.x, location.y]== self->_index || self->_isInTransition)
  {
    v10 = *(handler + 2);

    v10(handler, 1);
  }

  else
  {
    [(OKTransition *)self->_transition setIsForward:forwardCopy];
    transition = self->_transition;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__OKWidgetGroupView__transitionToIndex_forward_andLocation_completionHandler___block_invoke;
    v12[3] = &unk_279C8E770;
    v12[4] = handler;
    [(OKWidgetGroupView *)self _transitionToIndex:index withTransition:transition completionHandler:v12];
  }
}

- (void)_transitionToIndex:(int64_t)index withTransition:(id)transition completionHandler:(id)handler
{
  v22[2] = *MEMORY[0x277D85DE8];
  v8 = [(OKWidgetGroupView *)self rotatedIndexForIndex:index];
  index = self->_index;
  if (v8 == index || self->_isInTransition)
  {
    v10 = *(handler + 2);

    v10(handler, 1);
  }

  else
  {
    v11 = v8;
    v12 = [(OKWidgetGroupView *)self _widgetViewForIndex:v8];
    _previousWidgetView = [(OKWidgetGroupView *)self _previousWidgetView];
    _nextWidgetView = [(OKWidgetGroupView *)self _nextWidgetView];
    [(OKWidgetGroupView *)self setAntialiasing:1];
    [v12 prepareForDisplay:0];
    self->_index = v11;
    self->_isInTransition = 1;
    if (self->_switchActionScript)
    {
      delegate = [(OKWidgetViewProxy *)self delegate];
      switchActionScript = self->_switchActionScript;
      v21[0] = @"oldIndex";
      v21[1] = @"newIndex";
      v22[0] = [MEMORY[0x277CCABB0] numberWithDouble:index];
      v22[1] = [MEMORY[0x277CCABB0] numberWithDouble:self->_index];
      -[OKWidgetViewDelegate evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](delegate, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", switchActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2], &__block_literal_global_33, self);
    }

    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3052000000;
    v20[3] = __Block_byref_object_copy__8;
    v20[4] = __Block_byref_object_dispose__8;
    v20[5] = transition;
    itemContainerView = self->_itemContainerView;
    currentWidgetView = self->_currentWidgetView;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__OKWidgetGroupView__transitionToIndex_withTransition_completionHandler___block_invoke_91;
    v19[3] = &unk_279C911B0;
    v19[4] = self;
    v19[5] = v12;
    v19[6] = _previousWidgetView;
    v19[7] = _nextWidgetView;
    v19[8] = handler;
    v19[9] = v20;
    [transition transitionInView:itemContainerView fromSubview:currentWidgetView toSubview:v12 completionHandler:v19];
    _Block_object_dispose(v20, 8);
  }
}

uint64_t __73__OKWidgetGroupView__transitionToIndex_withTransition_completionHandler___block_invoke_91(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[189];
  v4 = [v2 _previousWidgetView];
  v5 = [*(a1 + 32) _nextWidgetView];
  *(*(a1 + 32) + 1512) = *(a1 + 40);
  *(*(a1 + 32) + 1552) = 0;
  if (v4 != *(*(a1 + 32) + 1512))
  {
    [v4 prepareForWarmup:0];
    if (v5 != v4)
    {
      [v5 prepareForWarmup:0];
    }
  }

  v6 = v3 == v4 || v3 == v5;
  if (!v6 && v3 != *(a1 + 40))
  {
    [v3 prepareForUnload:0];
  }

  v7 = *(a1 + 48);
  if (v7 != v4 && v7 != v5 && v7 != *(a1 + 40))
  {
    [v7 prepareForUnload:0];
  }

  v8 = *(a1 + 56);
  if (v8 != v4 && v8 != v5 && v8 != *(a1 + 40))
  {
    [v8 prepareForUnload:0];
  }

  [*(a1 + 32) setAntialiasing:{objc_msgSend(*(a1 + 32), "needsAntialiasing")}];

  v9 = *(*(a1 + 64) + 16);

  return v9();
}

- (void)_gotoIndex:(int64_t)index
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = [(OKWidgetGroupView *)self rotatedIndexForIndex:index];
  index = self->_index;
  if (v4 != index)
  {
    self->_index = v4;
    [(OKWidgetGroupView *)self _updateDisplayedWidgetViews];
    [(OKWidgetGroupView *)self _reloadWidgetViews];
    if (self->_switchActionScript)
    {
      delegate = [(OKWidgetViewProxy *)self delegate];
      switchActionScript = self->_switchActionScript;
      v8[0] = @"oldIndex";
      v8[1] = @"newIndex";
      v9[0] = [MEMORY[0x277CCABB0] numberWithDouble:index];
      v9[1] = [MEMORY[0x277CCABB0] numberWithDouble:self->_index];
      -[OKWidgetViewDelegate evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](delegate, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", switchActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2], &__block_literal_global_93, self);
    }
  }
}

- (void)_jsGotoIndex:(int64_t)index
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __34__OKWidgetGroupView__jsGotoIndex___block_invoke;
  v3[3] = &unk_279C903C0;
  v3[4] = self;
  v3[5] = index;
  [(OKWidgetGroupView *)self performBlockOnMainThread:v3];
}

- (void)_jsTransitionToIndex:(int64_t)index forward:(BOOL)forward andLocation:(CGPoint)location completionHandler:(id)handler
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__OKWidgetGroupView__jsTransitionToIndex_forward_andLocation_completionHandler___block_invoke;
  v6[3] = &unk_279C91200;
  v6[5] = handler;
  v6[6] = index;
  forwardCopy = forward;
  locationCopy = location;
  v6[4] = self;
  [(OKWidgetGroupView *)self performBlockOnMainThread:v6];
}

uint64_t __80__OKWidgetGroupView__jsTransitionToIndex_forward_andLocation_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1538];
  if (v3 == 1)
  {
    [v2 _stop];
    v2 = *(a1 + 32);
  }

  v4 = *(a1 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__OKWidgetGroupView__jsTransitionToIndex_forward_andLocation_completionHandler___block_invoke_2;
  v8[3] = &unk_279C911D8;
  v9 = v3;
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8[4] = v2;
  v8[5] = v6;
  return [v2 _transitionToIndex:v5 forward:v4 andLocation:v8 completionHandler:{*(a1 + 56), *(a1 + 64)}];
}

uint64_t __80__OKWidgetGroupView__jsTransitionToIndex_forward_andLocation_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _play];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_jsTransitionToIndex:(int64_t)index withTransition:(id)transition completionHandler:(id)handler
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__OKWidgetGroupView__jsTransitionToIndex_withTransition_completionHandler___block_invoke;
  v5[3] = &unk_279C91228;
  v5[4] = self;
  v5[5] = transition;
  v5[6] = handler;
  v5[7] = index;
  [(OKWidgetGroupView *)self performBlockOnMainThread:v5];
}

uint64_t __75__OKWidgetGroupView__jsTransitionToIndex_withTransition_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1538];
  if (v3 == 1)
  {
    [v2 _stop];
  }

  [*(a1 + 40) setIsForward:1];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__OKWidgetGroupView__jsTransitionToIndex_withTransition_completionHandler___block_invoke_2;
  v9[3] = &unk_279C911D8;
  v10 = v3;
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9[4] = v4;
  v9[5] = v7;
  return [v4 _transitionToIndex:v6 withTransition:v5 completionHandler:v9];
}

uint64_t __75__OKWidgetGroupView__jsTransitionToIndex_withTransition_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _play];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_play
{
  if (!self->_isPlaying)
  {
    self->_isPlaying = 1;
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __26__OKWidgetGroupView__play__block_invoke;
    v2[3] = &unk_279C8E818;
    v2[4] = self;
    [(OKWidgetGroupView *)self performBlockOnMainThread:v2];
  }
}

uint64_t __26__OKWidgetGroupView__play__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 1538) == 1)
  {
    return [result performSelector:sel__gotoNextIndex withObject:0 afterDelay:*(result + 1544)];
  }

  return result;
}

- (void)_stop
{
  if (self->_isPlaying)
  {
    self->_isPlaying = 0;
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__gotoNextIndex object:0];
  }
}

- (void)_gotoNextIndex
{
  index = self->_index;
  if (index == [(NSArray *)self->_items count]- 1 && !self->_loop)
  {
    self->_isPlaying = 0;
  }

  else if (self->_isPlaying)
  {
    v4 = self->_index;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __35__OKWidgetGroupView__gotoNextIndex__block_invoke;
    v5[3] = &unk_279C8FA38;
    v5[4] = self;
    [(OKWidgetGroupView *)self _transitionToIndex:v4 + 1 forward:1 andLocation:v5 completionHandler:0.0, 0.0];
  }
}

uint64_t __35__OKWidgetGroupView__gotoNextIndex__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 1538) == 1)
  {
    return [result performSelector:sel__gotoNextIndex withObject:0 afterDelay:*(result + 1544)];
  }

  return result;
}

+ (void)setupJavascriptContext:(id)context
{
  v26[4] = *MEMORY[0x277D85DE8];
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetGroupView"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:context];
  v4 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetGroupView", "objectForKeyedSubscript:", @"prototype"}];
  v6 = *MEMORY[0x277CD4638];
  v23[0] = *MEMORY[0x277CD4630];
  v5 = v23[0];
  v23[1] = v6;
  v7 = MEMORY[0x277CBEC38];
  v26[0] = &__block_literal_global_109;
  v26[1] = MEMORY[0x277CBEC38];
  v9 = MEMORY[0x277CBEC28];
  v10 = *MEMORY[0x277CD4610];
  v24 = *MEMORY[0x277CD4618];
  v8 = v24;
  v25 = v10;
  v26[2] = MEMORY[0x277CBEC28];
  v26[3] = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"transitionToIndex" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v26, v23, 4)}];
  v11 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetGroupView", "objectForKeyedSubscript:", @"prototype"}];
  v21[0] = v5;
  v21[1] = v6;
  v22[0] = &__block_literal_global_116;
  v22[1] = v7;
  v21[2] = v8;
  v21[3] = v10;
  v22[2] = v9;
  v22[3] = v7;
  [v11 defineProperty:@"transitionToIndexWithTransition" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v22, v21, 4)}];
  v12 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetGroupView", "objectForKeyedSubscript:", @"prototype"}];
  v19[0] = v5;
  v19[1] = v6;
  v20[0] = &__block_literal_global_122;
  v20[1] = v7;
  v19[2] = v8;
  v19[3] = v10;
  v20[2] = v9;
  v20[3] = v7;
  [v12 defineProperty:@"gotoIndex" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v20, v19, 4)}];
  v13 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetGroupView", "objectForKeyedSubscript:", @"prototype"}];
  v17[0] = v5;
  v17[1] = v6;
  v18[0] = &__block_literal_global_127;
  v18[1] = v7;
  v17[2] = v8;
  v17[3] = v10;
  v18[2] = v9;
  v18[3] = v7;
  [v13 defineProperty:@"play" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v18, v17, 4)}];
  v14 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetGroupView", "objectForKeyedSubscript:", @"prototype"}];
  v15[0] = v5;
  v15[1] = v6;
  v16[0] = &__block_literal_global_132;
  v16[1] = v7;
  v15[2] = v8;
  v15[3] = v10;
  v16[2] = v9;
  v16[3] = v7;
  [v14 defineProperty:@"pause" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v16, v15, 4)}];
}

uint64_t __44__OKWidgetGroupView_setupJavascriptContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__OKWidgetGroupView_setupJavascriptContext___block_invoke_2;
  v9[3] = &unk_279C8FA38;
  v9[4] = a4;
  return [v7 _jsTransitionToIndex:a2 forward:a3 andLocation:v9 completionHandler:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

uint64_t __44__OKWidgetGroupView_setupJavascriptContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4[0] = [MEMORY[0x277CCABB0] numberWithBool:a2];
  return [v2 callWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)}];
}

uint64_t __44__OKWidgetGroupView_setupJavascriptContext___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__OKWidgetGroupView_setupJavascriptContext___block_invoke_4;
  v9[3] = &unk_279C8FA38;
  v9[4] = a4;
  return [v7 _jsTransitionToIndex:a2 withTransition:a3 completionHandler:v9];
}

uint64_t __44__OKWidgetGroupView_setupJavascriptContext___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4[0] = [MEMORY[0x277CCABB0] numberWithBool:a2];
  return [v2 callWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)}];
}

uint64_t __44__OKWidgetGroupView_setupJavascriptContext___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v3 _jsGotoIndex:a2];
}

uint64_t __44__OKWidgetGroupView_setupJavascriptContext___block_invoke_6()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 _play];
}

uint64_t __44__OKWidgetGroupView_setupJavascriptContext___block_invoke_7()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 _stop];
}

@end